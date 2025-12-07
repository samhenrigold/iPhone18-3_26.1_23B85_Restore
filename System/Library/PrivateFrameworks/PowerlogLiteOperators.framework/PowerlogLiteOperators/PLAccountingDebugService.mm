@interface PLAccountingDebugService
+ (void)load;
+ (void)printError:(id)error;
- (BOOL)verifyAggregateQualificationEnergyWithQualificationID:(int)d withRootNodeID:(int)iD withNodeName:(id)name withQualificationEnergy:(double)energy withDate:(id)date;
- (BOOL)verifyAggregateRootNodeEnergyWithNodeName:(id)name withRootNodeID:(int)d withEnergy:(double)energy withDate:(id)date;
- (BOOL)verifyLastDistributionEventWithDistributionID:(int)d withNodeName:(id)name withWeight:(double)weight;
- (BOOL)verifyLastPowerEventWithRootNodeID:(int)d withPower:(double)power;
- (BOOL)verifyLastQualificationEventWithQualificationID:(int)d withNodeName:(id)name;
- (BOOL)verifyTotalCorrectionEnergyWithNodeName:(id)name withTotalCorrectionEnergy:(double)energy withRootNodeID:(int)d;
- (BOOL)verifyTotalEnergyWithNodeName:(id)name withTotalEnergy:(double)energy withRootNodeID:(int)d withEpsilon:(double)epsilon;
- (NSArray)testNames;
- (PLAccountingDebugService)init;
- (void)blockingClearQueues;
- (void)blockingLogGasGaugeWithTotalPower:(double)power withStartDate:(id)date withEndDate:(id)endDate;
- (void)testAddRemoveDistributionEventForward;
- (void)testChunk;
- (void)testCorrection1;
- (void)testCorrection2;
- (void)testCorrection3;
- (void)testCorrection4;
- (void)testCorrectionInMemory;
- (void)testCurrentDistributionEventForward;
- (void)testDistribution1;
- (void)testDistribution2;
- (void)testDistribution3;
- (void)testDistribution4;
- (void)testDistribution5;
- (void)testPerformance;
- (void)testPowerEventIntervalOverlap;
- (void)testQualification1;
- (void)testQualification2;
- (void)testQualification3;
- (void)testReloadAfter1;
- (void)testReloadAfter2;
- (void)testReloadBefore1;
- (void)testReloadBefore2;
- (void)testShortDistributionEventDuration;
- (void)testShortQualificationEventDuration;
@end

@implementation PLAccountingDebugService

- (NSArray)testNames
{
  testNames = self->_testNames;
  if (!testNames)
  {
    self->_testNames = &unk_282C144C0;
    testNames = self->_testNames;
  }

  return testNames;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingDebugService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAccountingDebugService)init
{
  v20 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "BOOLForKey:ifNotSet:", @"PLAccountingDebugService_Debug", 0))
  {
    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PLAccountingDebugService;
    v3 = [(PLOperator *)&v18 init];
    v4 = v3;
    if (v3)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      testNames = [(PLAccountingDebugService *)v3 testNames];
      v6 = [testNames countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          v9 = 0;
          do
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(testNames);
            }

            v10 = [@"com.apple.powerlogd.accounting." stringByAppendingString:*(*(&v14 + 1) + 8 * v9)];
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, NotificationCallback_0, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

            ++v9;
          }

          while (v7 != v9);
          v7 = [testNames countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v7);
      }
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)testDistribution1
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution1]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:148];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v25, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C17E00 withStartDate:v11];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance2 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C17E28 withStartDate:v13];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];
  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v15 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance3 createPowerEventForwardWithRootNodeID:10 withPower:v15 withStartDate:3.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:3.0];
  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [monotonicDate dateByAddingTimeInterval:2.0];
  [debugInstance4 createPowerEventForwardWithRootNodeID:10 withPower:v17 withStartDate:4.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:4.0];
  v18 = [&unk_282C144D8 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v18 withTotalEnergy:10 withRootNodeID:0.000833333333 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:0.000416666667 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:0.000416666667 withEpsilon:0.001];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v20 = MEMORY[0x277D3F178];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v21 lastPathComponent];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution1]"];
  [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:197];

  v24 = PLLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = 138412290;
    v26 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", &v25, 0xCu);
  }
}

- (void)testDistribution2
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution2]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:202];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:1.0];
  v12 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance createPowerEventIntervalWithRootNodeID:2 withPower:v11 withStartDate:v12 withEndDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:5.0];
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance2 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17E50 withEndDate:v14];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:1.0];
  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [monotonicDate dateByAddingTimeInterval:4.0];
  [debugInstance3 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17E78 withEndDate:v16];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.75];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App2" withWeight:0.25];
  v17 = [&unk_282C144F0 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v17 withTotalEnergy:2 withRootNodeID:0.00277777778 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:2 withRootNodeID:0.00208333333 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:2 withRootNodeID:0.000694444444 withEpsilon:0.001];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution2]"];
  [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:247];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }
}

- (void)testDistribution3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution3]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:252];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  v12 = [monotonicDate dateByAddingTimeInterval:5.0];
  [debugInstance createPowerEventIntervalWithRootNodeID:2 withPower:v11 withStartDate:v12 withEndDate:8.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:8.0];
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance2 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17EA0 withEndDate:v14];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:1.0];
  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [monotonicDate dateByAddingTimeInterval:10.0];
  [debugInstance3 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17EC8 withEndDate:v16];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v17 = [&unk_282C14508 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v17 withTotalEnergy:2 withRootNodeID:0.0111111111 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"kernel_task" withTotalEnergy:2 withRootNodeID:0.00444444444 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:2 withRootNodeID:0.00666666667 withEpsilon:0.001];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution3]"];
  [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:296];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", &v24, 0xCu);
  }
}

- (void)testDistribution4
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution4]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:301];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v23, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = 0.0;
  for (i = 1; i != 12; ++i)
  {
    debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
    v13 = [monotonicDate dateByAddingTimeInterval:v10];
    [debugInstance createPowerEventForwardWithRootNodeID:10 withPower:v13 withStartDate:i];

    [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:i];
    debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
    v15 = [monotonicDate dateByAddingTimeInterval:v10 + 0.5];
    [debugInstance2 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C17EF0 withStartDate:v15];

    [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.75];
    [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.25];
    v10 = v10 + 1.0;
  }

  v16 = [&unk_282C14520 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v16 withTotalEnergy:10 withRootNodeID:0.0152777778 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:0.0113541667 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:0.00378472222 withEpsilon:0.001];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution4]"];
  [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:341];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", &v23, 0xCu);
  }
}

- (void)testDistribution5
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution5]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:346];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v31 = 138412290;
    v32 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &v31, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance createPowerEventBackwardWithRootNodeID:11 withPower:v11 withEndDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:11 withPower:5.0];
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [monotonicDate dateByAddingTimeInterval:5.0];
  [debugInstance2 createPowerEventBackwardWithRootNodeID:11 withPower:v13 withEndDate:10.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:11 withPower:10.0];
  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v15 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance3 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F18 withStartDate:v15];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App1" withWeight:1.0];
  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [monotonicDate dateByAddingTimeInterval:2.0];
  [debugInstance4 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F40 withStartDate:v17];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App1" withWeight:1.0];
  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [monotonicDate dateByAddingTimeInterval:4.0];
  [debugInstance5 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F68 withStartDate:v19];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App2" withWeight:1.0];
  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v21 = [monotonicDate dateByAddingTimeInterval:6.0];
  [debugInstance6 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C17F90 withStartDate:v21];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:4 withNodeName:@"App2" withWeight:1.0];
  debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance7 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C17FB8 withStartDate:v23];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:3 withNodeName:@"apsd" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:3 withNodeName:@"App1" withWeight:0.5];
  v24 = [&unk_282C14538 objectAtIndexedSubscript:11];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v24 withTotalEnergy:11 withRootNodeID:0.0138888889 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"apsd" withTotalEnergy:11 withRootNodeID:0.00694444444 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:11 withRootNodeID:0.0115740741 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:11 withRootNodeID:0.00231481481 withEpsilon:0.001];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v26 = MEMORY[0x277D3F178];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v27 lastPathComponent];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testDistribution5]"];
  [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:421];

  v30 = PLLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = 138412290;
    v32 = v25;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", &v31, 0xCu);
  }
}

- (void)testCorrection1
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection1]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:426];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  v12 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v14 = [deviceRootNodeIDs mutableCopy];

  [v14 removeObject:&unk_282C11820];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v59 count:16];
  v49 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v55;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(v15);
        }

        intValue = [*(*(&v54 + 1) + 8 * i) intValue];
        v21 = [&unk_282C14550 objectAtIndexedSubscript:intValue];
        intValue2 = [v21 intValue];

        switch(intValue2)
        {
          case 3:
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [monotonicDate dateByAddingTimeInterval:0.0];
            v27 = 1.0;
            v30 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance2 createPowerEventIntervalWithRootNodeID:intValue withPower:v26 withStartDate:v30 withEndDate:1.0];

            v15 = v49;
            break;
          case 2:
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance3 createPowerEventBackwardWithRootNodeID:intValue withPower:v29 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:0.0];
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v27 = 1.0;
            v26 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance2 createPowerEventBackwardWithRootNodeID:intValue withPower:v26 withEndDate:1.0];
            break;
          case 1:
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v24 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance4 createPowerEventForwardWithRootNodeID:intValue withPower:v24 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [monotonicDate dateByAddingTimeInterval:1.0];
            v27 = 2.0;
            [debugInstance2 createPowerEventForwardWithRootNodeID:intValue withPower:v26 withStartDate:2.0];
            break;
          default:
            v43 = v15;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:v27];
      }

      v17 = [v15 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  v32 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance5 createPowerEventForwardWithRootNodeID:10 withPower:v32 withStartDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:1.0];
  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v34 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance6 createPowerEventForwardWithRootNodeID:10 withPower:v34 withStartDate:2.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:2.0];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v35 = v15;
  v36 = [v35 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(v35);
        }

        intValue3 = [*(*(&v50 + 1) + 8 * j) intValue];
        v41 = [&unk_282C14568 objectAtIndexedSubscript:intValue3];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v41, intValue3, (5.0 / ([v35 count] + 1) + -1.0) / 3600.0);
      }

      v37 = [v35 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v37);
  }

  v42 = [&unk_282C14580 objectAtIndexedSubscript:10];
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v42, 10, (5.0 / ([v35 count] + 1) + -1.0) / 3600.0);

  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v44 = MEMORY[0x277D3F178];
  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v45 lastPathComponent];
  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection1]"];
  [v44 logMessage:v43 fromFile:lastPathComponent2 fromFunction:v47 fromLineNumber:518];

  v48 = PLLogCommon();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v43;
    _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v15 = v49;
LABEL_27:
}

- (void)testCorrection2
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection2]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:522];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  v12 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v14 = [deviceRootNodeIDs mutableCopy];

  [v14 removeObject:&unk_282C11880];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
  v56 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v62;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v15);
        }

        intValue = [*(*(&v61 + 1) + 8 * i) intValue];
        v21 = [&unk_282C14598 objectAtIndexedSubscript:intValue];
        intValue2 = [v21 intValue];

        switch(intValue2)
        {
          case 3:
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v35 = [monotonicDate dateByAddingTimeInterval:0.0];
            v36 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance2 createPowerEventIntervalWithRootNodeID:intValue withPower:v35 withStartDate:v36 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [monotonicDate dateByAddingTimeInterval:1.0];
            v29 = 2.0;
            v37 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance3 createPowerEventIntervalWithRootNodeID:intValue withPower:v28 withStartDate:v37 withEndDate:2.0];

            v15 = v56;
            break;
          case 2:
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance4 createPowerEventBackwardWithRootNodeID:intValue withPower:v31 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:0.0];
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v33 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance5 createPowerEventBackwardWithRootNodeID:intValue withPower:v33 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = 2.0;
            v28 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance3 createPowerEventBackwardWithRootNodeID:intValue withPower:v28 withEndDate:2.0];
            break;
          case 1:
            debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
            v24 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance6 createPowerEventForwardWithRootNodeID:intValue withPower:v24 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance7 createPowerEventForwardWithRootNodeID:intValue withPower:v26 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:2.0];
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [monotonicDate dateByAddingTimeInterval:2.0];
            v29 = 3.0;
            [debugInstance3 createPowerEventForwardWithRootNodeID:intValue withPower:v28 withStartDate:3.0];
            break;
          default:
            v50 = v15;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:v29];
      }

      v17 = [v15 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
  v39 = [monotonicDate dateByAddingTimeInterval:0.0];
  v40 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance8 createPowerEventIntervalWithRootNodeID:2 withPower:v39 withStartDate:v40 withEndDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:1.0];
  v41 = [v15 count];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = v15;
  v43 = [v42 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v58;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(v42);
        }

        intValue3 = [*(*(&v57 + 1) + 8 * j) intValue];
        v48 = [&unk_282C145B0 objectAtIndexedSubscript:intValue3];
        [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v48 withTotalCorrectionEnergy:intValue3 withRootNodeID:(5.0 / (v41 + 1) + -1.0) / 3600.0];
      }

      v44 = [v42 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v44);
  }

  v49 = [&unk_282C145C8 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v49 withTotalCorrectionEnergy:2 withRootNodeID:0.0];

  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v51 = MEMORY[0x277D3F178];
  v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v52 lastPathComponent];
  v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection2]"];
  [v51 logMessage:v50 fromFile:lastPathComponent2 fromFunction:v54 fromLineNumber:629];

  v55 = PLLogCommon();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v50;
    _os_log_debug_impl(&dword_21A4C6000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v15 = v56;
LABEL_27:
}

- (void)testCorrection3
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection3]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:633];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v75 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  v12 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [monotonicDate dateByAddingTimeInterval:1.0];
  v15 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance2 addPowerMeasurementEventIntervalWithPower:v14 withStartDate:v15 withEndDate:5.0];

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v17 = [deviceRootNodeIDs mutableCopy];

  [v17 removeObject:&unk_282C11880];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v68 objects:v73 count:16];
  v63 = v18;
  if (v19)
  {
    v20 = v19;
    v21 = *v69;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(v18);
        }

        intValue = [*(*(&v68 + 1) + 8 * i) intValue];
        v24 = [&unk_282C145E0 objectAtIndexedSubscript:intValue];
        intValue2 = [v24 intValue];

        switch(intValue2)
        {
          case 3:
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v38 = [monotonicDate dateByAddingTimeInterval:0.0];
            v39 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance3 createPowerEventIntervalWithRootNodeID:intValue withPower:v38 withStartDate:v39 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [monotonicDate dateByAddingTimeInterval:1.0];
            v32 = 2.0;
            v40 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance4 createPowerEventIntervalWithRootNodeID:intValue withPower:v31 withStartDate:v40 withEndDate:2.0];

            v18 = v63;
            break;
          case 2:
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v34 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance5 createPowerEventBackwardWithRootNodeID:intValue withPower:v34 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:0.0];
            debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
            v36 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance6 createPowerEventBackwardWithRootNodeID:intValue withPower:v36 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v32 = 2.0;
            v31 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance4 createPowerEventBackwardWithRootNodeID:intValue withPower:v31 withEndDate:2.0];
            break;
          case 1:
            debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
            v27 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance7 createPowerEventForwardWithRootNodeID:intValue withPower:v27 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance8 createPowerEventForwardWithRootNodeID:intValue withPower:v29 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:2.0];
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [monotonicDate dateByAddingTimeInterval:2.0];
            v32 = 3.0;
            [debugInstance4 createPowerEventForwardWithRootNodeID:intValue withPower:v31 withStartDate:3.0];
            break;
          default:
            v57 = v18;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:v32];
      }

      v20 = [v18 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
  v42 = [monotonicDate dateByAddingTimeInterval:0.0];
  v43 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance9 createPowerEventIntervalWithRootNodeID:2 withPower:v42 withStartDate:v43 withEndDate:2.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:2.0];
  debugInstance10 = [MEMORY[0x277D3F0C0] debugInstance];
  v45 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance10 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C17FE0 withEndDate:v45];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  debugInstance11 = [MEMORY[0x277D3F0C0] debugInstance];
  v47 = [monotonicDate dateByAddingTimeInterval:4.0];
  [debugInstance11 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C18008 withEndDate:v47];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v48 = v18;
  v49 = [v48 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v65;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v65 != v51)
        {
          objc_enumerationMutation(v48);
        }

        intValue3 = [*(*(&v64 + 1) + 8 * j) intValue];
        v54 = [&unk_282C145F8 objectAtIndexedSubscript:intValue3];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v54, intValue3, (5.0 / ([v48 count] + 2) + -1.0) / 3600.0);
      }

      v50 = [v48 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v50);
  }

  v55 = [&unk_282C14610 objectAtIndexedSubscript:2];
  v56 = [v48 count];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v55 withTotalCorrectionEnergy:2 withRootNodeID:(5.0 / (v56 + 2) + -1.0 + 5.0 / (v56 + 2) + -1.0) / 3600.0];

  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"kernel_task", 2, (5.0 / ([v48 count] + 2) + -1.0) / 3600.0);
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App1", 2, (5.0 / ([v48 count] + 2) + -1.0) * 3.0 * 0.5 / 3600.0);
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v58 = MEMORY[0x277D3F178];
  v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v59 lastPathComponent];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection3]"];
  [v58 logMessage:v57 fromFile:lastPathComponent2 fromFunction:v61 fromLineNumber:780];

  v62 = PLLogCommon();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v75 = v57;
    _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v18 = v63;
LABEL_27:
}

- (void)testCorrection4
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection4]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:785];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v67 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:0.0];
  v12 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance addPowerMeasurementEventIntervalWithPower:v11 withStartDate:v12 withEndDate:5.0];

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v14 = [deviceRootNodeIDs mutableCopy];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
  v55 = v15;
  if (v16)
  {
    v17 = v16;
    v18 = *v61;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v61 != v18)
        {
          objc_enumerationMutation(v15);
        }

        intValue = [*(*(&v60 + 1) + 8 * i) intValue];
        v21 = [&unk_282C14628 objectAtIndexedSubscript:intValue];
        intValue2 = [v21 intValue];

        switch(intValue2)
        {
          case 3:
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v35 = [monotonicDate dateByAddingTimeInterval:0.0];
            v29 = 1.0;
            v36 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance2 createPowerEventIntervalWithRootNodeID:intValue withPower:v35 withStartDate:v36 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [monotonicDate dateByAddingTimeInterval:1.0];
            v37 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance3 createPowerEventIntervalWithRootNodeID:intValue withPower:v28 withStartDate:v37 withEndDate:1.0];

            v15 = v55;
            break;
          case 2:
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v31 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance4 createPowerEventBackwardWithRootNodeID:intValue withPower:v31 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:0.0];
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v33 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance5 createPowerEventBackwardWithRootNodeID:intValue withPower:v33 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v29 = 2.0;
            v28 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance3 createPowerEventBackwardWithRootNodeID:intValue withPower:v28 withEndDate:2.0];
            break;
          case 1:
            debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
            v24 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance6 createPowerEventForwardWithRootNodeID:intValue withPower:v24 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
            v26 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance7 createPowerEventForwardWithRootNodeID:intValue withPower:v26 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:2.0];
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v28 = [monotonicDate dateByAddingTimeInterval:2.0];
            v29 = 3.0;
            [debugInstance3 createPowerEventForwardWithRootNodeID:intValue withPower:v28 withStartDate:3.0];
            break;
          default:
            v49 = v15;
            goto LABEL_27;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:v29];
      }

      v17 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
  v39 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance8 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18030 withStartDate:v39];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
  v41 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance9 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18058 withStartDate:v41];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v42 = v15;
  v43 = [v42 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v57;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(v42);
        }

        intValue3 = [*(*(&v56 + 1) + 8 * j) intValue];
        v48 = [&unk_282C14640 objectAtIndexedSubscript:intValue3];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v48, intValue3, (5.0 / [v42 count] + -1.0) / 3600.0);
      }

      v44 = [v42 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v44);
  }

  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App1", 10, (5.0 / [v42 count] + -1.0) * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App2", 10, (5.0 / [v42 count] + -1.0) * 0.5 / 3600.0);
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v50 = MEMORY[0x277D3F178];
  v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v51 lastPathComponent];
  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrection4]"];
  [v50 logMessage:v49 fromFile:lastPathComponent2 fromFunction:v53 fromLineNumber:911];

  v54 = PLLogCommon();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v67 = v49;
    _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v15 = v55;
LABEL_27:
}

- (void)testQualification1
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification1]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:916];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v77 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  allQualificationIDs = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v10 = [allQualificationIDs mutableCopy];

  [v10 removeObject:&unk_282C11880];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v70 objects:v75 count:16];
  v63 = v11;
  selfCopy = self;
  if (v12)
  {
    v13 = v12;
    v14 = *v71;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v71 != v14)
        {
          objc_enumerationMutation(v11);
        }

        intValue = [*(*(&v70 + 1) + 8 * i) intValue];
        v17 = [&unk_282C14658 objectAtIndexedSubscript:intValue];
        intValue2 = [v17 intValue];

        if (intValue2 > 2)
        {
          if (intValue2 == 3)
          {
            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v22 = [monotonicDate dateByAddingTimeInterval:0.0];
            v25 = [monotonicDate dateByAddingTimeInterval:5.0];
            [debugInstance createQualificationEventIntervalWithQualificationID:intValue withChildNodeNames:&unk_282C146D0 withStartDate:v22 withEndDate:v25];

            v11 = v63;
          }

          else
          {
            if (intValue2 != 4)
            {
LABEL_35:
              v29 = v11;
              goto LABEL_38;
            }

            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v22 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance createQualificationEventPointWithQualificationID:intValue withChildNodeNames:&unk_282C146E8 withStartDate:v22];
          }
        }

        else if (intValue2 == 1)
        {
          debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
          v24 = [monotonicDate dateByAddingTimeInterval:0.0];
          [debugInstance2 createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:&unk_282C14670 withStartDate:v24];

          [(PLAccountingDebugService *)selfCopy verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
          self = selfCopy;
          debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
          v22 = [monotonicDate dateByAddingTimeInterval:5.0];
          [debugInstance createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:&unk_282C14688 withStartDate:v22];
        }

        else
        {
          if (intValue2 != 2)
          {
            goto LABEL_35;
          }

          debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
          v20 = [monotonicDate dateByAddingTimeInterval:0.0];
          [debugInstance3 createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:&unk_282C146A0 withEndDate:v20];

          [(PLAccountingDebugService *)selfCopy verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
          self = selfCopy;
          debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
          v22 = [monotonicDate dateByAddingTimeInterval:5.0];
          [debugInstance createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:&unk_282C146B8 withEndDate:v22];
        }

        [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
      }

      v13 = [v11 countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v27 = [monotonicDate dateByAddingTimeInterval:0.0];
  v28 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance4 addPowerMeasurementEventIntervalWithPower:v27 withStartDate:v28 withEndDate:5.0];

  [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v29 = v69 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v29);
        }

        intValue3 = [*(*(&v66 + 1) + 8 * j) intValue];
        v35 = [&unk_282C14700 objectAtIndexedSubscript:intValue3];
        intValue4 = [v35 intValue];

        switch(intValue4)
        {
          case 3:
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v42 = [monotonicDate dateByAddingTimeInterval:0.0];
            v43 = 1.0;
            [monotonicDate dateByAddingTimeInterval:1.0];
            v49 = v48 = v29;
            [debugInstance5 createPowerEventIntervalWithRootNodeID:intValue3 withPower:v42 withStartDate:v49 withEndDate:1.0];

            v29 = v48;
            break;
          case 2:
            debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
            v45 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance6 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v45 withEndDate:0.0];

            [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:0.0];
            debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
            v47 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance7 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v47 withEndDate:1.0];

            [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v43 = 2.0;
            v42 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance5 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v42 withEndDate:2.0];
            break;
          case 1:
            debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
            v38 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance8 createPowerEventForwardWithRootNodeID:intValue3 withPower:v38 withStartDate:1.0];

            [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
            v40 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance9 createPowerEventForwardWithRootNodeID:intValue3 withPower:v40 withStartDate:2.0];

            [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:2.0];
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v42 = [monotonicDate dateByAddingTimeInterval:2.0];
            v43 = 3.0;
            [debugInstance5 createPowerEventForwardWithRootNodeID:intValue3 withPower:v42 withStartDate:3.0];
            break;
          default:
            v57 = v29;
            goto LABEL_37;
        }

        [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:v43];
      }

      v31 = [v29 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  debugInstance10 = [MEMORY[0x277D3F0C0] debugInstance];
  v51 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance10 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18080 withStartDate:v51];

  [(PLAccountingDebugService *)selfCopy verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)selfCopy verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance11 = [MEMORY[0x277D3F0C0] debugInstance];
  v53 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance11 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C180A8 withStartDate:v53];

  [(PLAccountingDebugService *)selfCopy verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)selfCopy verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance12 = [MEMORY[0x277D3F0C0] debugInstance];
  v55 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance12 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14718 withStartDate:v55];

  v56 = [&unk_282C14730 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)selfCopy verifyAggregateRootNodeEnergyWithNodeName:v56 withRootNodeID:10 withEnergy:monotonicDate withDate:0.0];

  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](selfCopy, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 10, monotonicDate, 5.0 / [v29 count] * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:](selfCopy, "verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:", 2, 10, @"App1", monotonicDate, 5.0 / [v29 count] * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](selfCopy, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App2", 10, monotonicDate, 5.0 / [v29 count] * 0.5 / 3600.0);
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v58 = MEMORY[0x277D3F178];
  v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v59 lastPathComponent];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification1]"];
  [v58 logMessage:v57 fromFile:lastPathComponent2 fromFunction:v61 fromLineNumber:1093];

  v62 = PLLogCommon();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v77 = v57;
    _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_37:
  v11 = v63;

LABEL_38:
}

- (void)testQualification2
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification2]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1097];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v86 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  allQualificationIDs = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v11 = [allQualificationIDs mutableCopy];

  [v11 removeObject:&unk_282C11880];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v79 objects:v84 count:16];
  v73 = v12;
  selfCopy = self;
  if (v13)
  {
    v14 = v13;
    v15 = *v80;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v80 != v15)
        {
          objc_enumerationMutation(v12);
        }

        intValue = [*(*(&v79 + 1) + 8 * v16) intValue];
        v18 = [&unk_282C14748 objectAtIndexedSubscript:intValue];
        intValue2 = [v18 intValue];

        if (intValue2 > 2)
        {
          if (intValue2 == 3)
          {
            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [monotonicDate dateByAddingTimeInterval:0.0];
            v26 = [monotonicDate dateByAddingTimeInterval:5.0];
            [debugInstance createQualificationEventIntervalWithQualificationID:intValue withChildNodeNames:&unk_282C147C0 withStartDate:v23 withEndDate:v26];

            v12 = v73;
          }

          else
          {
            if (intValue2 != 4)
            {
LABEL_35:
              v38 = v12;
              goto LABEL_38;
            }

            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance createQualificationEventPointWithQualificationID:intValue withChildNodeNames:&unk_282C147D8 withStartDate:v23];
          }
        }

        else if (intValue2 == 1)
        {
          debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
          v25 = [monotonicDate dateByAddingTimeInterval:0.0];
          [debugInstance2 createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:&unk_282C14760 withStartDate:v25];

          [(PLAccountingDebugService *)selfCopy verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
          self = selfCopy;
          debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [monotonicDate dateByAddingTimeInterval:5.0];
          [debugInstance createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:&unk_282C14778 withStartDate:v23];
        }

        else
        {
          if (intValue2 != 2)
          {
            goto LABEL_35;
          }

          debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
          v21 = [monotonicDate dateByAddingTimeInterval:0.0];
          [debugInstance3 createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:&unk_282C14790 withEndDate:v21];

          [(PLAccountingDebugService *)selfCopy verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
          self = selfCopy;
          debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [monotonicDate dateByAddingTimeInterval:5.0];
          [debugInstance createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:&unk_282C147A8 withEndDate:v23];
        }

        [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v28 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance4 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C147F0 withStartDate:v28];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"locationd"];
  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  v30 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance5 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14808 withStartDate:v30];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"locationd"];
  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"App1"];
  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v32 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance6 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14820 withStartDate:v32];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:2 withNodeName:@"locationd"];
  debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
  v34 = [monotonicDate dateByAddingTimeInterval:0.0];
  v35 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance7 addPowerMeasurementEventIntervalWithPower:v34 withStartDate:v35 withEndDate:5.0];

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v37 = [deviceRootNodeIDs mutableCopy];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v38 = v37;
  v39 = [v38 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v76;
    while (2)
    {
      v42 = 0;
      do
      {
        if (*v76 != v41)
        {
          objc_enumerationMutation(v38);
        }

        intValue3 = [*(*(&v75 + 1) + 8 * v42) intValue];
        v44 = [&unk_282C14838 objectAtIndexedSubscript:intValue3];
        intValue4 = [v44 intValue];

        switch(intValue4)
        {
          case 3:
            debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
            v57 = [monotonicDate dateByAddingTimeInterval:0.0];
            [monotonicDate dateByAddingTimeInterval:1.0];
            v59 = v58 = v38;
            [debugInstance8 createPowerEventIntervalWithRootNodeID:intValue3 withPower:v57 withStartDate:v59 withEndDate:1.0];

            [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            self = selfCopy;
            debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [monotonicDate dateByAddingTimeInterval:1.0];
            v60 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance9 createPowerEventIntervalWithRootNodeID:intValue3 withPower:v51 withStartDate:v60 withEndDate:1.0];

            v38 = v58;
            break;
          case 2:
            debugInstance10 = [MEMORY[0x277D3F0C0] debugInstance];
            v53 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance10 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v53 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance11 = [MEMORY[0x277D3F0C0] debugInstance];
            v55 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance11 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v55 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance9 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v51 withEndDate:1.0];
            break;
          case 1:
            debugInstance12 = [MEMORY[0x277D3F0C0] debugInstance];
            v47 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance12 createPowerEventForwardWithRootNodeID:intValue3 withPower:v47 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance13 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance13 createPowerEventForwardWithRootNodeID:intValue3 withPower:v49 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance9 createPowerEventForwardWithRootNodeID:intValue3 withPower:v51 withStartDate:1.0];
            break;
          default:
            v67 = v38;
            goto LABEL_37;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
        ++v42;
      }

      while (v40 != v42);
      v40 = [v38 countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  debugInstance14 = [MEMORY[0x277D3F0C0] debugInstance];
  v62 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance14 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C180D0 withStartDate:v62];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance15 = [MEMORY[0x277D3F0C0] debugInstance];
  v64 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance15 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C180F8 withStartDate:v64];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  v65 = [&unk_282C14850 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:v65 withRootNodeID:10 withEnergy:monotonicDate withDate:0.0];

  v66 = [&unk_282C14868 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:2 withRootNodeID:10 withNodeName:v66 withQualificationEnergy:monotonicDate withDate:0.0];

  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 10, monotonicDate, 5.0 / [v38 count] / 3600.0);
  -[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:](self, "verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:", 2, 10, @"App1", monotonicDate, 5.0 / [v38 count] * 0.25 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App2", 10, monotonicDate, 5.0 / [v38 count] / 3600.0);
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:2 withRootNodeID:10 withNodeName:@"App2" withQualificationEnergy:monotonicDate withDate:0.0];
  v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v68 = MEMORY[0x277D3F178];
  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v69 lastPathComponent];
  v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification2]"];
  [v68 logMessage:v67 fromFile:lastPathComponent2 fromFunction:v71 fromLineNumber:1307];

  v72 = PLLogCommon();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v86 = v67;
    _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_37:
  v12 = v73;

LABEL_38:
}

- (void)testQualification3
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification3]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1311];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v82 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  allQualificationIDs = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v11 = [allQualificationIDs mutableCopy];

  [v11 removeObject:&unk_282C118B0];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v75 objects:v80 count:16];
  v69 = v12;
  selfCopy = self;
  if (v13)
  {
    v14 = v13;
    v15 = *v76;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v76 != v15)
        {
          objc_enumerationMutation(v12);
        }

        intValue = [*(*(&v75 + 1) + 8 * v16) intValue];
        v18 = [&unk_282C14880 objectAtIndexedSubscript:intValue];
        intValue2 = [v18 intValue];

        if (intValue2 > 2)
        {
          if (intValue2 == 3)
          {
            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [monotonicDate dateByAddingTimeInterval:0.0];
            v26 = [monotonicDate dateByAddingTimeInterval:5.0];
            [debugInstance createQualificationEventIntervalWithQualificationID:intValue withChildNodeNames:&unk_282C148F8 withStartDate:v23 withEndDate:v26];

            v12 = v69;
          }

          else
          {
            if (intValue2 != 4)
            {
LABEL_35:
              v36 = v12;
              goto LABEL_38;
            }

            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v23 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance createQualificationEventPointWithQualificationID:intValue withChildNodeNames:&unk_282C14910 withStartDate:v23];
          }
        }

        else if (intValue2 == 1)
        {
          debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
          v25 = [monotonicDate dateByAddingTimeInterval:0.0];
          [debugInstance2 createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:&unk_282C14898 withStartDate:v25];

          [(PLAccountingDebugService *)selfCopy verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
          self = selfCopy;
          debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [monotonicDate dateByAddingTimeInterval:5.0];
          [debugInstance createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:&unk_282C148B0 withStartDate:v23];
        }

        else
        {
          if (intValue2 != 2)
          {
            goto LABEL_35;
          }

          debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
          v21 = [monotonicDate dateByAddingTimeInterval:0.0];
          [debugInstance3 createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:&unk_282C148C8 withEndDate:v21];

          [(PLAccountingDebugService *)selfCopy verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
          self = selfCopy;
          debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
          v23 = [monotonicDate dateByAddingTimeInterval:5.0];
          [debugInstance createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:&unk_282C148E0 withEndDate:v23];
        }

        [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:intValue withNodeName:@"__GLOBAL__"];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v75 objects:v80 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v28 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance4 createQualificationEventPointWithQualificationID:11 withChildNodeNames:&unk_282C14928 withStartDate:v28];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:11 withNodeName:@"App1"];
  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  v30 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance5 createQualificationEventPointWithQualificationID:11 withChildNodeNames:&unk_282C14940 withStartDate:v30];

  [(PLAccountingDebugService *)self verifyLastQualificationEventWithQualificationID:11 withNodeName:@"App2"];
  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v32 = [monotonicDate dateByAddingTimeInterval:0.0];
  v33 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance6 addPowerMeasurementEventIntervalWithPower:v32 withStartDate:v33 withEndDate:5.0];

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v35 = [deviceRootNodeIDs mutableCopy];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v72;
    while (2)
    {
      v40 = 0;
      do
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v36);
        }

        intValue3 = [*(*(&v71 + 1) + 8 * v40) intValue];
        v42 = [&unk_282C14958 objectAtIndexedSubscript:intValue3];
        intValue4 = [v42 intValue];

        switch(intValue4)
        {
          case 3:
            debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
            v55 = [monotonicDate dateByAddingTimeInterval:0.0];
            [monotonicDate dateByAddingTimeInterval:1.0];
            v57 = v56 = v36;
            [debugInstance7 createPowerEventIntervalWithRootNodeID:intValue3 withPower:v55 withStartDate:v57 withEndDate:1.0];

            [(PLAccountingDebugService *)selfCopy verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            self = selfCopy;
            debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [monotonicDate dateByAddingTimeInterval:1.0];
            v58 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance8 createPowerEventIntervalWithRootNodeID:intValue3 withPower:v49 withStartDate:v58 withEndDate:1.0];

            v36 = v56;
            break;
          case 2:
            debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
            v51 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance9 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v51 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance10 = [MEMORY[0x277D3F0C0] debugInstance];
            v53 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance10 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v53 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance8 createPowerEventBackwardWithRootNodeID:intValue3 withPower:v49 withEndDate:1.0];
            break;
          case 1:
            debugInstance11 = [MEMORY[0x277D3F0C0] debugInstance];
            v45 = [monotonicDate dateByAddingTimeInterval:0.0];
            [debugInstance11 createPowerEventForwardWithRootNodeID:intValue3 withPower:v45 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance12 = [MEMORY[0x277D3F0C0] debugInstance];
            v47 = [monotonicDate dateByAddingTimeInterval:1.0];
            [debugInstance12 createPowerEventForwardWithRootNodeID:intValue3 withPower:v47 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
            debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
            v49 = [monotonicDate dateByAddingTimeInterval:2.0];
            [debugInstance8 createPowerEventForwardWithRootNodeID:intValue3 withPower:v49 withStartDate:1.0];
            break;
          default:
            v63 = v36;
            goto LABEL_37;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue3 withPower:1.0];
        ++v40;
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  debugInstance13 = [MEMORY[0x277D3F0C0] debugInstance];
  v60 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance13 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C18120 withEndDate:v60];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App2" withWeight:0.5];
  v61 = [&unk_282C14970 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:v61 withRootNodeID:2 withEnergy:monotonicDate withDate:0.0];

  v62 = [&unk_282C14988 objectAtIndexedSubscript:2];
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:11 withRootNodeID:2 withNodeName:v62 withQualificationEnergy:monotonicDate withDate:0.0];

  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 2, monotonicDate, 5.0 / [v36 count] / 3600.0);
  -[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:](self, "verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:", 11, 2, @"App1", monotonicDate, 5.0 / [v36 count] * 0.25 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App2", 2, monotonicDate, 5.0 / [v36 count] / 3600.0);
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:11 withRootNodeID:2 withNodeName:@"App2" withQualificationEnergy:monotonicDate withDate:0.0];
  v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v64 = MEMORY[0x277D3F178];
  v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v65 lastPathComponent];
  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testQualification3]"];
  [v64 logMessage:v63 fromFile:lastPathComponent2 fromFunction:v67 fromLineNumber:1503];

  v68 = PLLogCommon();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v82 = v63;
    _os_log_debug_impl(&dword_21A4C6000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_37:
  v12 = v69;

LABEL_38:
}

- (void)testReloadBefore1
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore1]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1509];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", monotonicDate];
  v11 = MEMORY[0x277D3F178];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v12 lastPathComponent];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore1]"];
  [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:1512];

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18148 withStartDate:v17];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [monotonicDate dateByAddingTimeInterval:4.0];
  [debugInstance2 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18170 withStartDate:v19];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.75];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.25];
  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v21 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance3 createPowerEventForwardWithRootNodeID:10 withPower:v21 withStartDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:5.0];
  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [monotonicDate dateByAddingTimeInterval:5.0];
  [debugInstance4 createPowerEventForwardWithRootNodeID:10 withPower:v23 withStartDate:10.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:10.0];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v25 = MEMORY[0x277D3F178];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent3 = [v26 lastPathComponent];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore1]"];
  [v25 logMessage:v24 fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:1548];

  v29 = PLLogCommon();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v24;
    _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (void)testReloadAfter1
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter1]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1552];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v10 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  entryKey = [MEMORY[0x277D3F0E0] entryKey];
  v12 = [v10 entriesForKey:entryKey];

  firstObject = [v12 firstObject];
  range = [firstObject range];
  startDate = [range startDate];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", startDate];
  v17 = MEMORY[0x277D3F178];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v18 lastPathComponent];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter1]"];
  [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:1558];

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v16;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [startDate dateByAddingTimeInterval:6.0];
  [debugInstance createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18198 withStartDate:v23];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:1.0];
  v24 = [&unk_282C149A0 objectAtIndexedSubscript:10];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v24 withTotalEnergy:10 withRootNodeID:0.00694444444 withEpsilon:0.001];

  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:0.00381944444 withEpsilon:0.001];
  [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:0.003125 withEpsilon:0.001];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v26 = MEMORY[0x277D3F178];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent3 = [v27 lastPathComponent];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter1]"];
  [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:1582];

  v30 = PLLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v25;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (void)testReloadBefore2
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore2]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1586];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", monotonicDate];
  v11 = MEMORY[0x277D3F178];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v12 lastPathComponent];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore2]"];
  [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:1589];

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [monotonicDate dateByAddingTimeInterval:0.0];
  v18 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance addPowerMeasurementEventIntervalWithPower:v17 withStartDate:v18 withEndDate:5.0];

  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v20 = [monotonicDate dateByAddingTimeInterval:1.0];
  v21 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance2 addPowerMeasurementEventIntervalWithPower:v20 withStartDate:v21 withEndDate:5.0];

  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v23 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance3 createPowerEventBackwardWithRootNodeID:2 withPower:v23 withEndDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:1.0];
  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v25 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance4 createPowerEventBackwardWithRootNodeID:2 withPower:v25 withEndDate:1.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:2 withPower:1.0];
  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  v27 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance5 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C181C0 withEndDate:v27];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v29 = [monotonicDate dateByAddingTimeInterval:4.0];
  [debugInstance6 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:&unk_282C181E8 withEndDate:v29];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"kernel_task" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:33 withNodeName:@"App1" withWeight:0.5];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v31 = MEMORY[0x277D3F178];
  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent3 = [v32 lastPathComponent];
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadBefore2]"];
  [v31 logMessage:v30 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:1634];

  v35 = PLLogCommon();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = v30;
    _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (void)testReloadAfter2
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter2]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1637];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v79 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v10 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  entryKey = [MEMORY[0x277D3F0B8] entryKey];
  v12 = [v10 entriesForKey:entryKey];

  v65 = v12;
  firstObject = [v12 firstObject];
  range = [firstObject range];
  startDate = [range startDate];

  v67 = startDate;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", startDate];
  v16 = MEMORY[0x277D3F178];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v17 lastPathComponent];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter2]"];
  [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:1643];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v79 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v22 = [deviceRootNodeIDs mutableCopy];

  [v22 removeObject:&unk_282C11880];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v72 objects:v77 count:16];
  v66 = v23;
  if (v24)
  {
    v25 = v24;
    v26 = *v73;
    while (2)
    {
      v27 = 0;
      do
      {
        if (*v73 != v26)
        {
          objc_enumerationMutation(v23);
        }

        intValue = [*(*(&v72 + 1) + 8 * v27) intValue];
        v29 = [&unk_282C149B8 objectAtIndexedSubscript:intValue];
        intValue2 = [v29 intValue];

        switch(intValue2)
        {
          case 3:
            debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
            v43 = [v67 dateByAddingTimeInterval:0.0];
            v44 = [v67 dateByAddingTimeInterval:1.0];
            [debugInstance createPowerEventIntervalWithRootNodeID:intValue withPower:v43 withStartDate:v44 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v36 = [v67 dateByAddingTimeInterval:1.0];
            v37 = 2.0;
            v23 = v66;
            v45 = [v67 dateByAddingTimeInterval:2.0];
            [debugInstance2 createPowerEventIntervalWithRootNodeID:intValue withPower:v36 withStartDate:v45 withEndDate:2.0];

            break;
          case 2:
            debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
            v39 = [v67 dateByAddingTimeInterval:0.0];
            [debugInstance3 createPowerEventBackwardWithRootNodeID:intValue withPower:v39 withEndDate:0.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:0.0];
            debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
            v41 = [v67 dateByAddingTimeInterval:1.0];
            [debugInstance4 createPowerEventBackwardWithRootNodeID:intValue withPower:v41 withEndDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v37 = 2.0;
            v36 = [v67 dateByAddingTimeInterval:2.0];
            [debugInstance2 createPowerEventBackwardWithRootNodeID:intValue withPower:v36 withEndDate:2.0];
            break;
          case 1:
            debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
            v32 = [v67 dateByAddingTimeInterval:0.0];
            [debugInstance5 createPowerEventForwardWithRootNodeID:intValue withPower:v32 withStartDate:1.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:1.0];
            debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
            v34 = [v67 dateByAddingTimeInterval:1.0];
            [debugInstance6 createPowerEventForwardWithRootNodeID:intValue withPower:v34 withStartDate:2.0];

            [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:2.0];
            debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
            v36 = [v67 dateByAddingTimeInterval:2.0];
            v37 = 3.0;
            [debugInstance2 createPowerEventForwardWithRootNodeID:intValue withPower:v36 withStartDate:3.0];
            break;
          default:
            v56 = v23;
            v62 = firstObject;
            v63 = v65;
            goto LABEL_29;
        }

        [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:intValue withPower:v37];
        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v46 = v23;
  v47 = [v46 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v69;
    do
    {
      v50 = 0;
      do
      {
        if (*v69 != v49)
        {
          objc_enumerationMutation(v46);
        }

        intValue3 = [*(*(&v68 + 1) + 8 * v50) intValue];
        v52 = [&unk_282C149D0 objectAtIndexedSubscript:intValue3];
        -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v52, intValue3, (5.0 / ([v46 count] + 1) + -1.0) / 3600.0);

        v53 = [&unk_282C149E8 objectAtIndexedSubscript:intValue3];
        -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", v53, intValue3, v67, 5.0 / ([v46 count] + 1) / 3600.0);

        ++v50;
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v48);
  }

  v54 = [&unk_282C14A00 objectAtIndexedSubscript:2];
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", v54, 2, (5.0 / ([v46 count] + 1) + -1.0) / 3600.0);

  v55 = [&unk_282C14A18 objectAtIndexedSubscript:2];
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", v55, 2, v67, 5.0 / ([v46 count] + 1) / 3600.0);

  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"kernel_task", 2, (5.0 / ([v46 count] + 1) + -1.0) * 0.5 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"kernel_task", 2, v67, ((5.0 / ([v46 count] + 1) + -1.0) * 0.5 + 0.5) / 3600.0);
  -[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:](self, "verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:", @"App1", 2, (5.0 / ([v46 count] + 1) + -1.0) * 3.0 * 0.25 / 3600.0);
  -[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:](self, "verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:", @"App1", 2, v67, ((5.0 / ([v46 count] + 1) + -1.0) * 3.0 * 0.25 + 0.5 + 0.25) / 3600.0);
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v57 = MEMORY[0x277D3F178];
  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent3 = [v58 lastPathComponent];
  v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testReloadAfter2]"];
  [v57 logMessage:v56 fromFile:lastPathComponent3 fromFunction:v60 fromLineNumber:1750];

  v61 = PLLogCommon();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v79 = v56;
    _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v62 = firstObject;
  v63 = v65;
  v23 = v66;
LABEL_29:
}

- (void)testChunk
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testChunk]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1756];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = 0.0;
  v12 = [monotonicDate dateByAddingTimeInterval:0.0];
  [debugInstance createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18210 withStartDate:v12];

  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App1" withWeight:0.5];
  [(PLAccountingDebugService *)self verifyLastDistributionEventWithDistributionID:1 withNodeName:@"App2" withWeight:0.5];
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v40 = monotonicDate;
  v14 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance2 createPowerEventForwardWithRootNodeID:10 withPower:v14 withStartDate:5.0];

  [(PLAccountingDebugService *)self verifyLastPowerEventWithRootNodeID:10 withPower:5.0];
  [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
  sleep((v15 * 0.5));
  v16 = 0;
  do
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"i=%i", v16];
    v18 = MEMORY[0x277D3F178];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
    lastPathComponent2 = [v19 lastPathComponent];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testChunk]"];
    [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:1782];

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v42 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v23 = [&unk_282C14A30 objectAtIndexedSubscript:10];
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    v25 = v24 * v11 * 5.0 / 3600.0;
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:v23 withTotalEnergy:10 withRootNodeID:v25 withEpsilon:v26 * 5.0 * 0.5];

    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    v28 = v27 * v11 * 5.0 * 0.5 / 3600.0;
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App1" withTotalEnergy:10 withRootNodeID:v28 withEpsilon:v29 * 5.0 * 0.25];
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    v31 = v30 * v11 * 5.0 * 0.5 / 3600.0;
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    [(PLAccountingDebugService *)self verifyTotalEnergyWithNodeName:@"App2" withTotalEnergy:10 withRootNodeID:v31 withEpsilon:v32 * 5.0 * 0.25];
    [MEMORY[0x277D3F0C0] maxPowerEventChunkInterval];
    sleep(v33);
    v11 = v11 + 1.0;
    v16 = (v16 + 1);
  }

  while (v16 != 3);
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v35 = MEMORY[0x277D3F178];
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent3 = [v36 lastPathComponent];
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testChunk]"];
  [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:1798];

  v39 = PLLogCommon();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v34;
    _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

- (void)testPerformance
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]"];
  [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:1802];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__9;
  v61 = __Block_byref_object_dispose__9;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = dispatch_group_create();
  v10 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance1"];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PLAccountingDebugService_testPerformance__block_invoke;
  block[3] = &unk_27825DC18;
  block[4] = &buf;
  v35 = xmmword_21AA21CD0;
  v54 = xmmword_21AA21CD0;
  dispatch_async(v10, block);

  v11 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance1"];
  dispatch_group_async(v9, v11, &__block_literal_global_33);

  v12 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance2"];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __43__PLAccountingDebugService_testPerformance__block_invoke_649;
  v51[3] = &unk_27825DC18;
  v51[4] = &buf;
  v52 = xmmword_21AA21CE0;
  dispatch_async(v12, v51);

  v13 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance2"];
  dispatch_group_async(v9, v13, &__block_literal_global_662);

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__9;
  v49 = __Block_byref_object_dispose__9;
  deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
  v50 = [deviceRootNodeIDs mutableCopy];

  v15 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance3"];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __43__PLAccountingDebugService_testPerformance__block_invoke_669;
  v42[3] = &unk_27825DC40;
  v43 = xmmword_21AA21CF0;
  v44 = 0x4000000000000000;
  v42[4] = &buf;
  v42[5] = &v45;
  dispatch_async(v15, v42);

  v16 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance3"];
  dispatch_group_async(v9, v16, &__block_literal_global_681);

  v17 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance4"];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __43__PLAccountingDebugService_testPerformance__block_invoke_688;
  v40[3] = &unk_27825DC18;
  v40[4] = &buf;
  v41 = xmmword_21AA21CD0;
  dispatch_async(v17, v40);

  v18 = [MEMORY[0x277D3F258] workQueueForKey:@"testPerformance4"];
  dispatch_group_async(v9, v18, &__block_literal_global_715);

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v19 = [v46[5] count];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v46[5];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v57 count:16];
  v22 = 20.0 / v19 + -4.0;
  if (v21)
  {
    v23 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        intValue = [*(*(&v36 + 1) + 8 * i) intValue];
        v26 = [&unk_282C14AF0 objectAtIndexedSubscript:intValue];
        [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:v26 withTotalCorrectionEnergy:intValue withRootNodeID:v22 / 3600.0];
      }

      v21 = [v20 countByEnumeratingWithState:&v36 objects:v57 count:16];
    }

    while (v21);
  }

  v27 = v22 * 0.5 / 3600.0;
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:@"apsd" withTotalCorrectionEnergy:11 withRootNodeID:v27];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:@"apsd" withRootNodeID:11 withEnergy:*(*(&buf + 1) + 40) withDate:0.0];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:@"App1" withTotalCorrectionEnergy:11 withRootNodeID:v27];
  v28 = (v22 + 4.0) * 0.5 / 3600.0;
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:@"App1" withRootNodeID:11 withEnergy:*(*(&buf + 1) + 40) withDate:v28];
  [(PLAccountingDebugService *)self verifyTotalCorrectionEnergyWithNodeName:@"App2" withTotalCorrectionEnergy:11 withRootNodeID:v27];
  [(PLAccountingDebugService *)self verifyAggregateRootNodeEnergyWithNodeName:@"App2" withRootNodeID:11 withEnergy:*(*(&buf + 1) + 40) withDate:v28];
  [(PLAccountingDebugService *)self verifyAggregateQualificationEnergyWithQualificationID:2 withRootNodeID:11 withNodeName:@"App2" withQualificationEnergy:*(*(&buf + 1) + 40) withDate:v28];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v30 = MEMORY[0x277D3F178];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v31 lastPathComponent];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]"];
  [v30 logMessage:v29 fromFile:lastPathComponent2 fromFunction:v33 fromLineNumber:2019];

  v34 = PLLogCommon();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *v55 = 138412290;
    v56 = v29;
    _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", v55, 0xCu);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&buf, 8);
}

void __43__PLAccountingDebugService_testPerformance__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance1"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:1812];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v17, 0xCu);
  }

  for (i = *(a1 + 40); i <= 5.0; i = i + *(a1 + 48))
  {
    v9 = [MEMORY[0x277D3F0C0] debugInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:i];
    [v9 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18238 withStartDate:v10];

    sleep(*(a1 + 48));
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testPerformance1"];
  v12 = MEMORY[0x277D3F178];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1825];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &v17, 0xCu);
  }
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_642()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance1"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1828];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v6, 0xCu);
  }
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_649(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance2"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v5 = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:1835];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v17, 0xCu);
  }

  for (i = *(a1 + 40); i <= 5.0; i = i + *(a1 + 48))
  {
    v9 = [MEMORY[0x277D3F0C0] debugInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:i];
    [v9 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C18260 withStartDate:v10];

    sleep(*(a1 + 48));
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"end testPerformance2"];
  v12 = MEMORY[0x277D3F178];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1848];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &v17, 0xCu);
  }
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_660()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance2"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1851];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v6, 0xCu);
  }
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_669(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = 0x277CCA000uLL;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance3"];
  v4 = 0x277D3F000uLL;
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v5 logMessage:v3 fromFile:v7 fromFunction:v8 fromLineNumber:1861];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = *(a1 + 48);
  if (v10 <= 5.0)
  {
    v17 = 0x277D3F000uLL;
    v18 = &unk_282C14A48;
    do
    {
      v19 = [*(v17 + 192) debugInstance];
      v20 = *(a1 + 56);
      v21 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
      v22 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10 + *(a1 + 64)];
      [v19 addPowerMeasurementEventIntervalWithPower:v21 withStartDate:v22 withEndDate:v20];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = *(*(*(a1 + 40) + 8) + 40);
      v23 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      v24 = v17;
      if (v23)
      {
        v25 = v23;
        v26 = *v38;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = [*(*(&v37 + 1) + 8 * i) intValue];
            v29 = [v18 objectAtIndexedSubscript:v28];
            v30 = [v29 intValue];

            switch(v30)
            {
              case 3:
                v31 = [*(v24 + 192) debugInstance];
                v32 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
                [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10 + *(a1 + 64)];
                v33 = v18;
                v35 = v34 = v24;
                [v31 createPowerEventIntervalWithRootNodeID:v28 withPower:v32 withStartDate:v35 withEndDate:1.0];

                v24 = v34;
                v18 = v33;
                break;
              case 2:
                v31 = [*(v24 + 192) debugInstance];
                v32 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
                [v31 createPowerEventBackwardWithRootNodeID:v28 withPower:v32 withEndDate:1.0];
                break;
              case 1:
                v31 = [*(v24 + 192) debugInstance];
                v32 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v10];
                [v31 createPowerEventForwardWithRootNodeID:v28 withPower:v32 withStartDate:1.0];
                break;
              default:
                goto LABEL_7;
            }
          }

          v25 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v25);
      }

      sleep(*(a1 + 64));
      v10 = v10 + *(a1 + 64);
      v2 = 0x277CCA000;
      v17 = v24;
      v4 = 0x277D3F000;
    }

    while (v10 <= 5.0);
  }

  v11 = [*(v2 + 3240) stringWithFormat:@"end testPerformance3"];
  v12 = *(v4 + 376);
  v13 = [*(v2 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v14 = [v13 lastPathComponent];
  v15 = [*(v2 + 3240) stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  obj = v11;
  [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1907];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_7:
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_679()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance3"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1910];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v6, 0xCu);
  }
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_688(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = 0x277CCA000uLL;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin testPerformance4"];
  v4 = 0x277D3F000uLL;
  v5 = MEMORY[0x277D3F178];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v5 logMessage:v3 fromFile:v7 fromFunction:v8 fromLineNumber:1917];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v10 = [MEMORY[0x277D3F0C0] allQualificationIDs];
  v11 = [v10 mutableCopy];

  [v11 removeObject:&unk_282C11880];
  v12 = *(a1 + 40);
  if (v12 <= 5.0)
  {
    v19 = 0uLL;
    v32 = v11;
    do
    {
      v35 = v19;
      v36 = v19;
      v33 = v19;
      v34 = v19;
      v13 = v11;
      v20 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        while (2)
        {
          v23 = 0;
          do
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v13);
            }

            v24 = [*(*(&v33 + 1) + 8 * v23) intValue];
            v25 = [&unk_282C14A60 objectAtIndexedSubscript:v24];
            v26 = [v25 intValue];

            if (v26 > 2)
            {
              if (v26 == 3)
              {
                v27 = [MEMORY[0x277D3F0C0] debugInstance];
                v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
                v29 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12 + *(a1 + 48)];
                [v27 createQualificationEventIntervalWithQualificationID:v24 withChildNodeNames:&unk_282C14AA8 withStartDate:v28 withEndDate:v29];
              }

              else
              {
                if (v26 != 4)
                {
LABEL_26:
                  v11 = v32;
                  goto LABEL_27;
                }

                v27 = [MEMORY[0x277D3F0C0] debugInstance];
                v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
                [v27 createQualificationEventPointWithQualificationID:v24 withChildNodeNames:&unk_282C14AC0 withStartDate:v28];
              }
            }

            else if (v26 == 1)
            {
              v27 = [MEMORY[0x277D3F0C0] debugInstance];
              v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
              [v27 createQualificationEventForwardWithQualificationID:v24 withChildNodeNames:&unk_282C14A78 withStartDate:v28];
            }

            else
            {
              if (v26 != 2)
              {
                goto LABEL_26;
              }

              v27 = [MEMORY[0x277D3F0C0] debugInstance];
              v28 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
              [v27 createQualificationEventBackwardWithQualificationID:v24 withChildNodeNames:&unk_282C14A90 withEndDate:v28];
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v30 = [MEMORY[0x277D3F0C0] debugInstance];
      v31 = [*(*(*(a1 + 32) + 8) + 40) dateByAddingTimeInterval:v12];
      [v30 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14AD8 withStartDate:v31];

      sleep(*(a1 + 48));
      v12 = v12 + *(a1 + 48);
      v2 = 0x277CCA000;
      v4 = 0x277D3F000;
      v11 = v32;
      v19 = 0uLL;
    }

    while (v12 <= 5.0);
  }

  v13 = [*(v2 + 3240) stringWithFormat:@"end testPerformance4"];
  v14 = *(v4 + 376);
  v15 = [*(v2 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v16 = [v15 lastPathComponent];
  v17 = [*(v2 + 3240) stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:1971];

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_27:
}

void __43__PLAccountingDebugService_testPerformance__block_invoke_713()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"join testPerformance4"];
  v1 = MEMORY[0x277D3F178];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  v3 = [v2 lastPathComponent];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPerformance]_block_invoke"];
  [v1 logMessage:v0 fromFile:v3 fromFunction:v4 fromLineNumber:1974];

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v0;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "%@", &v6, 0xCu);
  }
}

- (void)testShortDistributionEventDuration
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortDistributionEventDuration]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2023];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v23, 0xCu);
  }

  v8 = 0.0;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  do
  {
    debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
    v11 = [v9 dateByAddingTimeInterval:v8];
    [debugInstance createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C18288 withStartDate:v11];

    v8 = v8 + 0.001;
  }

  while (v8 < 0.01);
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v9 dateByAddingTimeInterval:0.01];
  [debugInstance2 createDistributionEventForwardWithDistributionID:1 withChildNodeNameToWeight:&unk_282C182B0 withStartDate:v13];

  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance3 createPowerEventForwardWithRootNodeID:10 withPower:v9 withStartDate:10.0];

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v9 dateByAddingTimeInterval:0.01];
  [debugInstance4 createPowerEventForwardWithRootNodeID:10 withPower:v16 withStartDate:10.0];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortDistributionEventDuration]"];
  [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:2046];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", &v23, 0xCu);
  }
}

- (void)testShortQualificationEventDuration
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortQualificationEventDuration]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2050];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v23, 0xCu);
  }

  v8 = 0.0;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  do
  {
    debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
    v11 = [v9 dateByAddingTimeInterval:v8];
    [debugInstance createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14B08 withStartDate:v11];

    v8 = v8 + 0.001;
  }

  while (v8 < 1.0);
  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [v9 dateByAddingTimeInterval:1.0];
  [debugInstance2 createQualificationEventForwardWithQualificationID:2 withChildNodeNames:&unk_282C14B20 withStartDate:v13];

  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance3 createPowerEventForwardWithRootNodeID:10 withPower:v9 withStartDate:10.0];

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [v9 dateByAddingTimeInterval:1.0];
  [debugInstance4 createPowerEventForwardWithRootNodeID:10 withPower:v16 withStartDate:10.0];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v18 = MEMORY[0x277D3F178];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v19 lastPathComponent];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testShortQualificationEventDuration]"];
  [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:2073];

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = 138412290;
    v24 = v17;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", &v23, 0xCu);
  }
}

- (void)testAddRemoveDistributionEventForward
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testAddRemoveDistributionEventForward]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2077];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v31 = 138412290;
    v32 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v31, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App1" withStartDate:monotonicDate];

  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v11 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance2 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:@"App2" withStartDate:v11];

  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [monotonicDate dateByAddingTimeInterval:2.0];
  [debugInstance3 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:@"App1" withStartDate:v13];

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v15 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance4 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:@"App2" withStartDate:v15];

  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance5 createDistributionEventForwardWithDistributionID:7 withChildNodeNameToWeight:&unk_282C182D8 withStartDate:monotonicDate];

  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v18 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance6 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:@"App1" withStartDate:v18];

  debugInstance7 = [MEMORY[0x277D3F0C0] debugInstance];
  v20 = [monotonicDate dateByAddingTimeInterval:2.0];
  [debugInstance7 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:@"App2" withStartDate:v20];

  debugInstance8 = [MEMORY[0x277D3F0C0] debugInstance];
  v22 = [monotonicDate dateByAddingTimeInterval:3.0];
  [debugInstance8 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:@"App2" withStartDate:v22];

  debugInstance9 = [MEMORY[0x277D3F0C0] debugInstance];
  v24 = [monotonicDate dateByAddingTimeInterval:4.0];
  [debugInstance9 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:@"App1" withStartDate:v24];

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v26 = MEMORY[0x277D3F178];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v27 lastPathComponent];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testAddRemoveDistributionEventForward]"];
  [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:2109];

  v30 = PLLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = 138412290;
    v32 = v25;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", &v31, 0xCu);
  }
}

- (void)testCorrectionInMemory
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrectionInMemory]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2113];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v20, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance createPowerEventForwardWithRootNodeID:10 withPower:monotonicDate withStartDate:5.0];

  sleep(2u);
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];

  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v12 = [monotonicDate2 dateByAddingTimeInterval:-10.0];
  [debugInstance2 createPowerEventIntervalWithRootNodeID:2 withPower:v12 withStartDate:monotonicDate2 withEndDate:10.0];

  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance3 createPowerEventForwardWithRootNodeID:10 withPower:monotonicDate2 withStartDate:0.0];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v15 = MEMORY[0x277D3F178];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v16 lastPathComponent];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCorrectionInMemory]"];
  [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:2131];

  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", &v20, 0xCu);
  }
}

- (void)testPowerEventIntervalOverlap
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPowerEventIntervalOverlap]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2135];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412290;
    v27 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v26, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  v10 = [monotonicDate dateByAddingTimeInterval:-10.0];
  [debugInstance createPowerEventIntervalWithRootNodeID:6 withPower:v10 withStartDate:monotonicDate withEndDate:10.0];

  sleep(2u);
  monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];

  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  v13 = [monotonicDate2 dateByAddingTimeInterval:-4.0];
  [debugInstance2 createPowerEventIntervalWithRootNodeID:6 withPower:v13 withStartDate:monotonicDate2 withEndDate:10.0];

  sleep(2u);
  monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];

  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v16 = [monotonicDate3 dateByAddingTimeInterval:-2.0];
  [debugInstance3 createPowerEventIntervalWithRootNodeID:6 withPower:v16 withStartDate:monotonicDate3 withEndDate:10.0];

  sleep(2u);
  monotonicDate4 = [MEMORY[0x277CBEAA8] monotonicDate];

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [monotonicDate4 dateByAddingTimeInterval:-0.5];
  [debugInstance4 createPowerEventIntervalWithRootNodeID:6 withPower:v19 withStartDate:monotonicDate4 withEndDate:10.0];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v21 = MEMORY[0x277D3F178];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v22 lastPathComponent];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testPowerEventIntervalOverlap]"];
  [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:2164];

  v25 = PLLogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412290;
    v27 = v20;
    _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", &v26, 0xCu);
  }
}

- (void)testCurrentDistributionEventForward
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
  v3 = MEMORY[0x277D3F178];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCurrentDistributionEventForward]"];
  [v3 logMessage:v2 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:2168];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = 138412290;
    v28 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v27, 0xCu);
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  debugInstance = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C18300 withStartDate:monotonicDate];

  debugInstance2 = [MEMORY[0x277D3F0C0] debugInstance];
  [debugInstance2 createDistributionEventPointWithDistributionID:4 withChildNodeNameToWeight:&unk_282C18328 withStartDate:monotonicDate];

  sleep(1u);
  debugInstance3 = [MEMORY[0x277D3F0C0] debugInstance];
  v12 = [monotonicDate dateByAddingTimeInterval:1.0];
  [debugInstance3 createDistributionEventForwardWithDistributionID:3 withAddingChildNodeName:@"App3" withStartDate:v12];

  debugInstance4 = [MEMORY[0x277D3F0C0] debugInstance];
  v14 = [debugInstance4 currentDistributionEventForwardWithDistributionID:3];
  v15 = [&unk_282C18350 isEqualToDictionary:v14];

  if ((v15 & 1) == 0)
  {
    [objc_opt_class() printError:@"testCurrentDistributionEventForward:: currentDistributionEventForwardWithDistributionID does not match"];
  }

  sleep(1u);
  debugInstance5 = [MEMORY[0x277D3F0C0] debugInstance];
  v17 = [monotonicDate dateByAddingTimeInterval:2.0];
  [debugInstance5 createDistributionEventForwardWithDistributionID:3 withRemovingChildNodeName:@"App3" withStartDate:v17];

  debugInstance6 = [MEMORY[0x277D3F0C0] debugInstance];
  v19 = [debugInstance6 currentDistributionEventForwardWithDistributionID:3];
  v20 = [&unk_282C18378 isEqualToDictionary:v19];

  if ((v20 & 1) == 0)
  {
    [objc_opt_class() printError:@"testCurrentDistributionEventForward:: currentDistributionEventForwardWithDistributionID does not match"];
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
  v22 = MEMORY[0x277D3F178];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent2 = [v23 lastPathComponent];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService testCurrentDistributionEventForward]"];
  [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:2198];

  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = 138412290;
    v28 = v21;
    _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", &v27, 0xCu);
  }
}

- (BOOL)verifyLastDistributionEventWithDistributionID:(int)d withNodeName:(id)name withWeight:(double)weight
{
  v6 = *&d;
  v51[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (v6 < 1 || !nameCopy)
  {
    v37 = objc_opt_class();
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastDistributionEventWithDistributionID:withNodeName:withWeight:]"];
    [v37 printError:v38];

    v39 = 2210;
LABEL_13:
    NSLog(&cfstr_FailReturnedFr.isa, v39);
    v34 = 0;
    goto LABEL_20;
  }

  v9 = [&unk_282C14B38 objectAtIndexedSubscript:v6];
  intValue = [v9 intValue];

  if ((intValue - 1) >= 4)
  {
    v39 = 2235;
    goto LABEL_13;
  }

  entryKey = [**(&unk_27825DCB0 + (intValue - 1)) entryKey];
  v12 = objc_alloc(MEMORY[0x277D3F260]);
  v13 = *MEMORY[0x277D3F410];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v15 = [v12 initWithKey:v13 withValue:v14 withComparisonOperation:0];

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v17 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  v51[0] = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v49 = entryKey;
  v19 = [v17 entriesForKey:entryKey withComparisons:v18];

  if (v19)
  {
    lastObject = [v19 lastObject];
    childNodeIDToWeight = [lastObject childNodeIDToWeight];
    if (childNodeIDToWeight)
    {
      v48 = lastObject;
      v22 = objc_alloc(MEMORY[0x277D3F260]);
      v23 = [v22 initWithKey:*MEMORY[0x277D3F3E0] withValue:nameCopy withComparisonOperation:0];
      mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
      v25 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
      entryKey2 = [MEMORY[0x277D3F0C8] entryKey];
      v47 = v23;
      v50 = v23;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      v28 = [v25 entriesForKey:entryKey2 withComparisons:v27];

      if (v28 && [v28 count])
      {
        firstObject = [v28 firstObject];
        v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
        v31 = [childNodeIDToWeight objectForKeyedSubscript:v30];

        [v31 doubleValue];
        v33 = vabdd_f64(v32, weight);
        v34 = v33 <= 0.001;
        if (v33 > 0.001)
        {
          v35 = objc_opt_class();
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastDistributionEventWithDistributionID:withNodeName:withWeight:]"];
          [v35 printError:v36];

          NSLog(&cfstr_FailReturnedFr.isa, 2273);
        }
      }

      else
      {
        v42 = objc_opt_class();
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastDistributionEventWithDistributionID:withNodeName:withWeight:]"];
        [v42 printError:v43];

        NSLog(&cfstr_FailReturnedFr.isa, 2265);
        v34 = 0;
      }

      lastObject = v48;
    }

    else
    {
      v44 = objc_opt_class();
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastDistributionEventWithDistributionID:withNodeName:withWeight:]"];
      [v44 printError:v45];

      NSLog(&cfstr_FailReturnedFr.isa, 2254);
      v34 = 0;
    }
  }

  else
  {
    v40 = objc_opt_class();
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastDistributionEventWithDistributionID:withNodeName:withWeight:]"];
    [v40 printError:v41];

    NSLog(&cfstr_FailReturnedFr.isa, 2246);
    v34 = 0;
  }

LABEL_20:
  return v34;
}

- (BOOL)verifyLastQualificationEventWithQualificationID:(int)d withNodeName:(id)name
{
  v4 = *&d;
  v52[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (v4 <= 0)
  {
    v22 = objc_opt_class();
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastQualificationEventWithQualificationID:withNodeName:]"];
    [v22 printError:v23];

    v24 = 2286;
  }

  else
  {
    v7 = [&unk_282C14B50 objectAtIndexedSubscript:v4];
    intValue = [v7 intValue];

    if ((intValue - 1) < 4)
    {
      entryKey = [**(&unk_27825DCD0 + (intValue - 1)) entryKey];
      v10 = objc_alloc(MEMORY[0x277D3F260]);
      v11 = *MEMORY[0x277D3F458];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:v4];
      v13 = [v10 initWithKey:v11 withValue:v12 withComparisonOperation:0];

      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      v15 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
      v52[0] = v13;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v50 = entryKey;
      v17 = [v15 entriesForKey:entryKey withComparisons:v16];

      if (!v17)
      {
        v26 = objc_opt_class();
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastQualificationEventWithQualificationID:withNodeName:]"];
        [v26 printError:v27];

        NSLog(&cfstr_FailReturnedFr.isa, 2322);
        v25 = 0;
LABEL_23:

        goto LABEL_24;
      }

      lastObject = [v17 lastObject];
      childNodeIDs = [lastObject childNodeIDs];
      v20 = childNodeIDs;
      if (childNodeIDs)
      {
        if (nameCopy || ![childNodeIDs count])
        {
          if ([nameCopy isEqualToString:@"__GLOBAL__"])
          {
            entryID = 1;
          }

          else
          {
            v49 = lastObject;
            v31 = objc_alloc(MEMORY[0x277D3F260]);
            v32 = [v31 initWithKey:*MEMORY[0x277D3F3E0] withValue:nameCopy withComparisonOperation:0];
            mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
            v34 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
            entryKey2 = [MEMORY[0x277D3F0C8] entryKey];
            v48 = v32;
            v51 = v32;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
            v37 = [v34 entriesForKey:entryKey2 withComparisons:v36];

            if (!v37 || ![v37 count])
            {
              v46 = objc_opt_class();
              v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastQualificationEventWithQualificationID:withNodeName:]"];
              [v46 printError:v47];

              NSLog(&cfstr_FailReturnedFr.isa, 2355);
              v25 = 0;
              lastObject = v49;
              goto LABEL_22;
            }

            firstObject = [v37 firstObject];
            entryID = [firstObject entryID];

            lastObject = v49;
          }

          v39 = [MEMORY[0x277CCABB0] numberWithInt:entryID];
          v40 = [v20 containsObject:v39];

          if (v40)
          {
            v25 = 1;
LABEL_22:

            goto LABEL_23;
          }

          v43 = objc_opt_class();
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastQualificationEventWithQualificationID:withNodeName:]"];
          [v43 printError:v44];

          v30 = 2364;
        }

        else
        {
          v41 = objc_opt_class();
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastQualificationEventWithQualificationID:withNodeName:]"];
          [v41 printError:v42];

          v30 = 2338;
        }
      }

      else
      {
        v28 = objc_opt_class();
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastQualificationEventWithQualificationID:withNodeName:]"];
        [v28 printError:v29];

        v30 = 2330;
      }

      NSLog(&cfstr_FailReturnedFr.isa, v30);
      v25 = 0;
      goto LABEL_22;
    }

    v24 = 2311;
  }

  NSLog(&cfstr_FailReturnedFr.isa, v24);
  v25 = 0;
LABEL_24:

  return v25;
}

- (BOOL)verifyLastPowerEventWithRootNodeID:(int)d withPower:(double)power
{
  v44[1] = *MEMORY[0x277D85DE8];
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (d <= 0)
  {
    v35 = objc_opt_class();
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
    [v35 printError:v36];

    v37 = 2377;
LABEL_11:
    NSLog(&cfstr_FailReturnedFr.isa, v37);
    return 0;
  }

  dCopy = d;
  v7 = [&unk_282C14B68 objectAtIndexedSubscript:d];
  intValue = [v7 intValue];

  if ((intValue - 1) >= 3)
  {
    v37 = 2398;
    goto LABEL_11;
  }

  entryKey = [**(&unk_27825DCF0 + (intValue - 1)) entryKey];
  v10 = objc_alloc(MEMORY[0x277D3F260]);
  v11 = *MEMORY[0x277D3F3E0];
  v12 = [&unk_282C14B80 objectAtIndexedSubscript:dCopy];
  v13 = [v10 initWithKey:v11 withValue:v12 withComparisonOperation:0];

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v15 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  entryKey2 = [MEMORY[0x277D3F0C8] entryKey];
  v44[0] = v13;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  v18 = [v15 entriesForKey:entryKey2 withComparisons:v17];

  if (v18)
  {
    firstObject = [v18 firstObject];
    v20 = objc_alloc(MEMORY[0x277D3F260]);
    v21 = *MEMORY[0x277D3F438];
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
    v23 = [v20 initWithKey:v21 withValue:v22 withComparisonOperation:0];

    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    v25 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
    v43 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v27 = [v25 entriesForKey:entryKey withComparisons:v26];

    if (v27 && [v27 count])
    {
      lastObject = [v27 lastObject];
      v29 = [lastObject objectForKeyedSubscript:*MEMORY[0x277D3F430]];
      [v29 doubleValue];
      v31 = vabdd_f64(v30 / 1000.0, power);

      v32 = v31 <= 0.001;
      if (v31 > 0.001)
      {
        v33 = objc_opt_class();
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
        [v33 printError:v34];

        NSLog(&cfstr_FailReturnedFr.isa, 2428);
      }
    }

    else
    {
      v38 = objc_opt_class();
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
      [v38 printError:v39];

      NSLog(&cfstr_FailReturnedFr.isa, 2421);
      v32 = 0;
    }
  }

  else
  {
    v40 = objc_opt_class();
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyLastPowerEventWithRootNodeID:withPower:]"];
    [v40 printError:v41];

    NSLog(&cfstr_FailReturnedFr.isa, 2409);
    v32 = 0;
  }

  return v32;
}

- (BOOL)verifyTotalEnergyWithNodeName:(id)name withTotalEnergy:(double)energy withRootNodeID:(int)d withEpsilon:(double)epsilon
{
  v7 = *&d;
  v66[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (nameCopy)
  {
    v11 = objc_alloc(MEMORY[0x277D3F260]);
    v12 = [v11 initWithKey:*MEMORY[0x277D3F3E0] withValue:nameCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v14 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    entryKey = [MEMORY[0x277D3F0C8] entryKey];
    v59 = v12;
    v66[0] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    v17 = [v14 entriesForKey:entryKey withComparisons:v16];

    if (!v17)
    {
      v40 = objc_opt_class();
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyTotalEnergyWithNodeName:withTotalEnergy:withRootNodeID:withEpsilon:]"];
      [v40 printError:v41];

      NSLog(&cfstr_FailReturnedFr.isa, 2454);
      v39 = 0;
      v42 = v59;
LABEL_24:

      goto LABEL_25;
    }

    firstObject = [v17 firstObject];
    v19 = objc_alloc(MEMORY[0x277D3F260]);
    v20 = *MEMORY[0x277D3F370];
    v58 = firstObject;
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
    v22 = [v19 initWithKey:v20 withValue:v21 withComparisonOperation:0];

    v23 = objc_alloc(MEMORY[0x277D3F260]);
    v24 = *MEMORY[0x277D3F398];
    v25 = v7;
    v26 = v22;
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v25];
    v28 = [v23 initWithKey:v24 withValue:v27 withComparisonOperation:0];

    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    v30 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
    entryKey2 = [MEMORY[0x277D3F0B8] entryKey];
    v65[0] = v22;
    v65[1] = v28;
    v57 = v28;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
    v33 = [v30 entriesForKey:entryKey2 withComparisons:v32];

    if (v33)
    {
      v34 = [v33 count];
      if (energy != 0.0 && !v34)
      {
        goto LABEL_6;
      }
    }

    else if (energy != 0.0)
    {
LABEL_6:
      v35 = 2470;
      v36 = v58;
      goto LABEL_22;
    }

    v56 = v26;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v43 = v33;
    v44 = [v43 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v61;
      v47 = *MEMORY[0x277D3F368];
      v48 = 0.0;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v61 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v50 = [*(*(&v60 + 1) + 8 * i) objectForKeyedSubscript:v47];
          [v50 doubleValue];
          v48 = v48 + v51 / 1000.0;
        }

        v45 = [v43 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v45);
    }

    else
    {
      v48 = 0.0;
    }

    if (vabdd_f64(v48, energy) <= epsilon)
    {
      v39 = 1;
      v36 = v58;
      v42 = v59;
      v26 = v56;
      v52 = v57;
LABEL_23:

      goto LABEL_24;
    }

    v35 = 2482;
    v36 = v58;
    v26 = v56;
LABEL_22:
    v52 = v57;
    v53 = objc_opt_class();
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyTotalEnergyWithNodeName:withTotalEnergy:withRootNodeID:withEpsilon:]"];
    [v53 printError:v54];

    NSLog(&cfstr_FailReturnedFr.isa, v35);
    v39 = 0;
    v42 = v59;
    goto LABEL_23;
  }

  v37 = objc_opt_class();
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyTotalEnergyWithNodeName:withTotalEnergy:withRootNodeID:withEpsilon:]"];
  [v37 printError:v38];

  NSLog(&cfstr_FailReturnedFr.isa, 2443);
  v39 = 0;
LABEL_25:

  return v39;
}

- (BOOL)verifyTotalCorrectionEnergyWithNodeName:(id)name withTotalCorrectionEnergy:(double)energy withRootNodeID:(int)d
{
  v5 = *&d;
  v62[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (nameCopy)
  {
    v9 = objc_alloc(MEMORY[0x277D3F260]);
    v10 = [v9 initWithKey:*MEMORY[0x277D3F3E0] withValue:nameCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v12 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    entryKey = [MEMORY[0x277D3F0C8] entryKey];
    v55 = v10;
    v62[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
    v15 = [v12 entriesForKey:entryKey withComparisons:v14];

    if (!v15)
    {
      v43 = objc_opt_class();
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:]"];
      [v43 printError:v44];

      NSLog(&cfstr_FailReturnedFr.isa, 2506);
      v41 = 0;
      v45 = v55;
LABEL_22:

      goto LABEL_23;
    }

    firstObject = [v15 firstObject];
    v17 = objc_alloc(MEMORY[0x277D3F260]);
    v18 = *MEMORY[0x277D3F370];
    v54 = firstObject;
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
    v20 = [v17 initWithKey:v18 withValue:v19 withComparisonOperation:0];

    v21 = objc_alloc(MEMORY[0x277D3F260]);
    v22 = *MEMORY[0x277D3F398];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v24 = [v21 initWithKey:v22 withValue:v23 withComparisonOperation:0];

    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    v26 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
    entryKey2 = [MEMORY[0x277D3F0B8] entryKey];
    v52 = v24;
    v53 = v20;
    v61[0] = v20;
    v61[1] = v24;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v29 = [v26 entriesForKey:entryKey2 withComparisons:v28];

    if (v29 && [v29 count])
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v57;
        v34 = *MEMORY[0x277D3F348];
        v35 = 0.0;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v57 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v37 = [*(*(&v56 + 1) + 8 * i) objectForKeyedSubscript:v34];
            [v37 doubleValue];
            v35 = v35 + v38 / 1000.0;
          }

          v32 = [v30 countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v32);
      }

      else
      {
        v35 = 0.0;
      }

      if (vabdd_f64(v35, energy) <= 0.001)
      {
        v41 = 1;
        v46 = v54;
        v45 = v55;
        v48 = v52;
        v47 = v53;
LABEL_21:

        goto LABEL_22;
      }

      v42 = 2532;
    }

    else
    {
      v42 = 2521;
    }

    v46 = v54;
    v45 = v55;
    v48 = v52;
    v47 = v53;
    v49 = objc_opt_class();
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:]"];
    [v49 printError:v50];

    NSLog(&cfstr_FailReturnedFr.isa, v42);
    v41 = 0;
    goto LABEL_21;
  }

  v39 = objc_opt_class();
  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyTotalCorrectionEnergyWithNodeName:withTotalCorrectionEnergy:withRootNodeID:]"];
  [v39 printError:v40];

  NSLog(&cfstr_FailReturnedFr.isa, 2495);
  v41 = 0;
LABEL_23:

  return v41;
}

- (BOOL)verifyAggregateRootNodeEnergyWithNodeName:(id)name withRootNodeID:(int)d withEnergy:(double)energy withDate:(id)date
{
  v8 = *&d;
  v56[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dateCopy = date;
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (nameCopy && v8 > 0)
  {
    v11 = objc_alloc(MEMORY[0x277D3F260]);
    v12 = [v11 initWithKey:*MEMORY[0x277D3F3E0] withValue:nameCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v14 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    entryKey = [MEMORY[0x277D3F0C8] entryKey];
    v53 = v12;
    v56[0] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    v17 = [v14 entriesForKey:entryKey withComparisons:v16];

    if (!v17)
    {
      v42 = objc_opt_class();
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:]"];
      [v42 printError:v43];

      NSLog(&cfstr_FailReturnedFr.isa, 2557);
      v41 = 0;
LABEL_14:

      goto LABEL_15;
    }

    firstObject = [v17 firstObject];
    v19 = objc_alloc(MEMORY[0x277D3F260]);
    v20 = *MEMORY[0x277D3F328];
    v51 = firstObject;
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
    v52 = [v19 initWithKey:v20 withValue:v21 withComparisonOperation:0];

    v22 = objc_alloc(MEMORY[0x277D3F260]);
    v23 = *MEMORY[0x277D3F330];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    v25 = [v22 initWithKey:v23 withValue:v24 withComparisonOperation:0];

    [dateCopy timeIntervalSince1970];
    v27 = floor(v26 / 3600.0) * 3600.0;
    v28 = objc_alloc(MEMORY[0x277D3F260]);
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    v30 = [v28 initWithKey:@"timestamp" withValue:v29 withComparisonOperation:0];

    v31 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timeInterval" withValue:&unk_282C1C438 withComparisonOperation:0];
    v32 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    v34 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
    v55[0] = v52;
    v55[1] = v25;
    v50 = v25;
    v35 = v30;
    v55[2] = v30;
    v55[3] = v31;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    v37 = [v34 lastEntryForKey:v32 withComparisons:v36 isSingleton:1];

    if (energy == 0.0 || v37)
    {
      v44 = [v37 objectForKeyedSubscript:*MEMORY[0x277D3F320]];
      [v44 doubleValue];
      v46 = v45 / 1000.0;

      if (vabdd_f64(v46, energy) <= 0.001)
      {
        v41 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v38 = 2597;
    }

    else
    {
      v38 = 2589;
    }

    v47 = objc_opt_class();
    v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:]"];
    [v47 printError:v48];

    NSLog(&cfstr_FailReturnedFr.isa, v38);
    v41 = 0;
    goto LABEL_13;
  }

  v39 = objc_opt_class();
  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyAggregateRootNodeEnergyWithNodeName:withRootNodeID:withEnergy:withDate:]"];
  [v39 printError:v40];

  NSLog(&cfstr_FailReturnedFr.isa, 2546);
  v41 = 0;
LABEL_15:

  return v41;
}

- (BOOL)verifyAggregateQualificationEnergyWithQualificationID:(int)d withRootNodeID:(int)iD withNodeName:(id)name withQualificationEnergy:(double)energy withDate:(id)date
{
  v9 = *&iD;
  v10 = *&d;
  v67[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dateCopy = date;
  [(PLAccountingDebugService *)self blockingClearQueues];
  if (v10 >= 1 && v9 >= 1 && nameCopy)
  {
    v65 = dateCopy;
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v63 = nameCopy;
    v15 = [v14 initWithKey:*MEMORY[0x277D3F3E0] withValue:nameCopy withComparisonOperation:0];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    v17 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
    entryKey = [MEMORY[0x277D3F0C8] entryKey];
    v64 = v15;
    v67[0] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
    v20 = [v17 entriesForKey:entryKey withComparisons:v19];

    if (!v20)
    {
      v50 = objc_opt_class();
      v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:]"];
      [v50 printError:v51];

      NSLog(&cfstr_FailReturnedFr.isa, 2623);
      v49 = 0;
      v46 = v64;
LABEL_15:

      nameCopy = v63;
      goto LABEL_16;
    }

    v61 = v20;
    firstObject = [v20 firstObject];
    v22 = objc_alloc(MEMORY[0x277D3F260]);
    v23 = *MEMORY[0x277D3F300];
    v62 = firstObject;
    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(firstObject, "entryID")}];
    v58 = [v22 initWithKey:v23 withValue:v24 withComparisonOperation:0];

    v25 = objc_alloc(MEMORY[0x277D3F260]);
    v26 = *MEMORY[0x277D3F310];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v28 = [v25 initWithKey:v26 withValue:v27 withComparisonOperation:0];

    v29 = objc_alloc(MEMORY[0x277D3F260]);
    v30 = *MEMORY[0x277D3F308];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v32 = [v29 initWithKey:v30 withValue:v31 withComparisonOperation:0];

    [v65 timeIntervalSince1970];
    v34 = floor(v33 / 3600.0) * 3600.0;
    v35 = objc_alloc(MEMORY[0x277D3F260]);
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
    v37 = [v35 initWithKey:@"timestamp" withValue:v36 withComparisonOperation:0];

    v38 = v37;
    v39 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timeInterval" withValue:&unk_282C1C438 withComparisonOperation:0];
    v40 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    v42 = objc_msgSend_storage(mEMORY[0x277D3F2A0]2);
    v66[0] = v58;
    v66[1] = v28;
    v59 = v32;
    v60 = v28;
    v66[2] = v32;
    v66[3] = v37;
    v66[4] = v39;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];
    v44 = [v42 lastEntryForKey:v40 withComparisons:v43 isSingleton:1];

    if (energy == 0.0 || v44)
    {
      v52 = [v44 objectForKeyedSubscript:*MEMORY[0x277D3F2F8]];
      [v52 doubleValue];
      v54 = v53 / 1000.0;

      v46 = v64;
      if (vabdd_f64(v54, energy) <= 0.001)
      {
        v49 = 1;
        v20 = v61;
LABEL_14:

        dateCopy = v65;
        goto LABEL_15;
      }

      v45 = 2667;
    }

    else
    {
      v45 = 2659;
      v46 = v64;
    }

    v20 = v61;
    v55 = objc_opt_class();
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:]"];
    [v55 printError:v56];

    NSLog(&cfstr_FailReturnedFr.isa, v45);
    v49 = 0;
    goto LABEL_14;
  }

  v47 = objc_opt_class();
  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService verifyAggregateQualificationEnergyWithQualificationID:withRootNodeID:withNodeName:withQualificationEnergy:withDate:]"];
  [v47 printError:v48];

  NSLog(&cfstr_FailReturnedFr.isa, 2612);
  v49 = 0;
LABEL_16:

  return v49;
}

- (void)blockingLogGasGaugeWithTotalPower:(double)power withStartDate:(id)date withEndDate:(id)endDate
{
  v28[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v10 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"GasGauge"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withDate:dateCopy];
  [v22[5] setObject:endDateCopy forKeyedSubscript:@"timestampEnd"];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:power];
  [v22[5] setObject:v11 forKeyedSubscript:@"TotalPower"];

  v12 = dispatch_semaphore_create(0);
  v13 = objc_alloc(MEMORY[0x277D3F1A8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__PLAccountingDebugService_blockingLogGasGaugeWithTotalPower_withStartDate_withEndDate___block_invoke;
  v18[3] = &unk_27825DC68;
  v20 = &v21;
  v14 = v12;
  v19 = v14;
  v15 = [v13 initWithOperator:self forEntryKey:v10 withBlock:v18];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v27 = @"entry";
  v28[0] = v22[5];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  [defaultCenter postNotificationName:@"PLBatteryAgent.fakeLogEntry" object:0 userInfo:v17];

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  _Block_object_dispose(&v21, 8);
}

void __88__PLAccountingDebugService_blockingLogGasGaugeWithTotalPower_withStartDate_withEndDate___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v6 objectForKeyedSubscript:@"timestampEnd"];
  v4 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:@"timestampEnd"];
  v5 = [v3 isEqualToDate:v4];

  if (v5)
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (void)blockingClearQueues
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_826;
  v27[3] = &unk_2782591D0;
  v27[4] = self;
  dispatch_sync(v4, v27);

  v5 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_832;
  v26[3] = &unk_2782591D0;
  v26[4] = self;
  dispatch_sync(v5, v26);

  v6 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_838;
  v25[3] = &unk_2782591D0;
  v25[4] = self;
  dispatch_sync(v6, v25);

  v7 = MEMORY[0x277D3F258];
  v8 = [MEMORY[0x277D3F178] storageQueueNameForClass:objc_opt_class()];
  v9 = [v7 workQueueForKey:v8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_843;
  v24[3] = &unk_2782591D0;
  v24[4] = self;
  dispatch_sync(v9, v24);

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  v11 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
  [v11 blockingFlushCachesWithReason:@"PLAccountingDebugService"];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_851;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v12;
    if (qword_2811F7BD0 != -1)
    {
      dispatch_once(&qword_2811F7BD0, &v19);
    }

    if (byte_2811F7BA5 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"flushes cleared", v19, v20, v21, v22, v23];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:2715];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (qword_2811F7BA8 != -1)
    {
      dispatch_once(&qword_2811F7BA8, block);
    }

    if (_MergedGlobals_99 == 1)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingEngine work queue cleared"];
      v3 = MEMORY[0x277D3F178];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2700];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__47__PLAccountingDebugService_blockingClearQueues__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_99 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_826(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_827;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (qword_2811F7BB0 != -1)
    {
      dispatch_once(&qword_2811F7BB0, block);
    }

    if (byte_2811F7BA1 == 1)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingDistributionManager work queue cleared"];
      v3 = MEMORY[0x277D3F178];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2703];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_827(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA1 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_832(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_833;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (qword_2811F7BB8 != -1)
    {
      dispatch_once(&qword_2811F7BB8, block);
    }

    if (byte_2811F7BA2 == 1)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingCorrectionManager work queue cleared"];
      v3 = MEMORY[0x277D3F178];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2706];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_833(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA2 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_838(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_839;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (qword_2811F7BC0 != -1)
    {
      dispatch_once(&qword_2811F7BC0, block);
    }

    if (byte_2811F7BA3 == 1)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingQualificationManager work queue cleared"];
      v3 = MEMORY[0x277D3F178];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2709];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_839(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA3 = result;
  return result;
}

void __47__PLAccountingDebugService_blockingClearQueues__block_invoke_843(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v1 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_844;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v1;
    if (qword_2811F7BC8 != -1)
    {
      dispatch_once(&qword_2811F7BC8, block);
    }

    if (byte_2811F7BA4 == 1)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAccountingOperator storage queue cleared"];
      v3 = MEMORY[0x277D3F178];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDebugService blockingClearQueues]_block_invoke"];
      [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2712];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }
}

void *__47__PLAccountingDebugService_blockingClearQueues__block_invoke_2_844(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA4 = result;
  return result;
}

void *__47__PLAccountingDebugService_blockingClearQueues__block_invoke_851(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BA5 = result;
  return result;
}

+ (void)printError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  error = [MEMORY[0x277CCACA8] stringWithFormat:@"&&&&&&&&&&&&&&&&&&%@&&&&&&&&&&&&&&&&&&", error];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAccountingDebugService.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingDebugService printError:]"];
  [v4 logMessage:error fromFile:lastPathComponent fromFunction:v7 fromLineNumber:2719];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v10 = error;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }
}

@end