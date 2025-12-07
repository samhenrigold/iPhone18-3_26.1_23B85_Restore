@interface PLAccountingEngine
+ (BOOL)accountingDebugEnabled;
+ (double)maxPowerEventChunkInterval;
+ (double)minDistributionEnergy;
+ (double)minEnergy;
+ (id)allBBRootNodeIDs;
+ (id)allDistributionIDs;
+ (id)allQualificationIDs;
+ (id)allSoCRootNodeIDs;
+ (id)debugInstance;
+ (id)deviceBBRootNodeIDs;
+ (id)deviceRootNodeIDs;
+ (id)deviceSoCRootNodeIDs;
+ (id)distributionIDForDistributionName:(id)name;
+ (id)gasGaugeEntryKey;
+ (id)normalizeWeights:(id)weights;
+ (id)qualificationIDForQualificationName:(id)name;
+ (id)sharedInstance;
+ (id)workQueue;
+ (void)clearWithEntryKey:(id)key;
- (PLAccountingCorrectionManager)correctionManager;
- (PLAccountingDistributionManager)distributionManager;
- (PLAccountingEngine)init;
- (PLAccountingQualificationManager)qualificationManager;
- (id)currentDistributionEventForwardWithDistributionID:(int)d;
- (id)getLastQualifiedEnergyEventDate;
- (void)addDistributionEventInterval:(id)interval;
- (void)addDistributionEventIntervalWithLastDistributionEventBackward:(id)backward withDistributionEventBackward:(id)eventBackward;
- (void)addDistributionEventIntervalWithLastDistributionEventForward:(id)forward withDistributionEventForward:(id)eventForward;
- (void)addDistributionEventPoint:(id)point;
- (void)addEnergyMeasurementWithRootNodeID:(int)d withEnergy:(double)energy withRange:(id)range;
- (void)addPowerMeasurementEventIntervalWithPower:(double)power withStartDate:(id)date withEndDate:(id)endDate;
- (void)addQualificationEventInterval:(id)interval;
- (void)addQualificationEventIntervalWithLastQualificationEventBackward:(id)backward withQualificationEventBackward:(id)eventBackward;
- (void)addQualificationEventIntervalWithLastQualificationEventForward:(id)forward withQualificationEventForward:(id)eventForward;
- (void)addQualificationEventPoint:(id)point;
- (void)chunkWithLastChunkDate:(id)date withNow:(id)now;
- (void)createAggregateRootNodeEnergyEntryWithEnergyEstimate:(id)estimate;
- (void)createDistributionEventBackwardWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withEndDate:(id)date;
- (void)createDistributionEventForwardWithDistributionID:(int)d withAddingChildNodeName:(id)name withStartDate:(id)date;
- (void)createDistributionEventForwardWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date;
- (void)createDistributionEventForwardWithDistributionID:(int)d withRemovingChildNodeName:(id)name withStartDate:(id)date;
- (void)createDistributionEventIntervalWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date withEndDate:(id)endDate;
- (void)createDistributionEventPointWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date;
- (void)createEventWithEvent:(id)event withActionBlock:(id)block;
- (void)createPowerEventBackwardWithRootNodeID:(int)d withPower:(double)power withEndDate:(id)date;
- (void)createPowerEventForwardWithRootNodeID:(int)d withPower:(double)power withStartDate:(id)date;
- (void)createPowerEventIntervalWithRootNodeID:(int)d withPower:(double)power withStartDate:(id)date withEndDate:(id)endDate;
- (void)createQualificationEventBackwardWithQualificationID:(int)d withChildNodeNames:(id)names withEndDate:(id)date;
- (void)createQualificationEventForwardWithQualificationID:(int)d withAddingChildNodeName:(id)name withStartDate:(id)date;
- (void)createQualificationEventForwardWithQualificationID:(int)d withChildNodeNames:(id)names withStartDate:(id)date;
- (void)createQualificationEventForwardWithQualificationID:(int)d withRemovingChildNodeName:(id)name withStartDate:(id)date;
- (void)createQualificationEventIntervalWithQualificationID:(int)d withChildNodeNames:(id)names withStartDate:(id)date withEndDate:(id)endDate;
- (void)createQualificationEventPointWithQualificationID:(int)d withChildNodeNames:(id)names withStartDate:(id)date;
- (void)didCorrectEnergyEstimate:(id)estimate;
- (void)didCreateChildEnergyEstimate:(id)estimate withParentEnergyEstimate:(id)energyEstimate;
- (void)didDistributeEnergyEstimate:(id)estimate;
- (void)didQualifyEnergyEvent:(id)event withRootNodeID:(id)d withQualificationID:(id)iD;
- (void)reload;
- (void)reloadLastDistributionEventsWithLastDeviceBootDate:(id)date;
- (void)reloadLastPowerEventsWithLastDeviceBootDate:(id)date;
- (void)reloadLastQualificationEventsWithLastDeviceBootDate:(id)date;
- (void)reset;
@end

@implementation PLAccountingEngine

+ (id)sharedInstance
{
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  if ([storage storageLocked] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd"))
  {

LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  isPerfPowerMetricd = [MEMORY[0x277D3F258] isPerfPowerMetricd];

  if (isPerfPowerMetricd)
  {
    goto LABEL_4;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PLAccountingEngine_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v5 = sharedInstance_sharedInstance;
LABEL_5:

  return v5;
}

+ (id)allDistributionIDs
{
  if (allDistributionIDs_onceToken != -1)
  {
    +[PLAccountingEngine allDistributionIDs];
  }

  v3 = allDistributionIDs_allDistributionIDs;

  return v3;
}

- (PLAccountingDistributionManager)distributionManager
{
  distributionManager = self->_distributionManager;
  if (!distributionManager)
  {
    v4 = objc_alloc_init(PLAccountingDistributionManager);
    v5 = self->_distributionManager;
    self->_distributionManager = v4;

    [(PLAccountingDistributionManager *)self->_distributionManager setDelegate:self];
    distributionManager = self->_distributionManager;
  }

  return distributionManager;
}

- (PLAccountingQualificationManager)qualificationManager
{
  qualificationManager = self->_qualificationManager;
  if (!qualificationManager)
  {
    v4 = objc_alloc_init(PLAccountingQualificationManager);
    v5 = self->_qualificationManager;
    self->_qualificationManager = v4;

    [(PLAccountingQualificationManager *)self->_qualificationManager setDelegate:self];
    qualificationManager = self->_qualificationManager;
  }

  return qualificationManager;
}

+ (id)deviceRootNodeIDs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLAccountingEngine_deviceRootNodeIDs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceRootNodeIDs_onceToken != -1)
  {
    dispatch_once(&deviceRootNodeIDs_onceToken, block);
  }

  v2 = deviceRootNodeIDs_deviceRootNodeIDs;

  return v2;
}

+ (id)allQualificationIDs
{
  if (allQualificationIDs_onceToken != -1)
  {
    +[PLAccountingEngine allQualificationIDs];
  }

  v3 = allQualificationIDs_allQualificationIDs;

  return v3;
}

+ (double)minDistributionEnergy
{
  if (minDistributionEnergy_onceToken != -1)
  {
    +[PLAccountingEngine minDistributionEnergy];
  }

  return *&minDistributionEnergy_minDistributionEnergy;
}

+ (double)minEnergy
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLAccountingEngine_minEnergy__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (minEnergy_onceToken != -1)
  {
    dispatch_once(&minEnergy_onceToken, block);
  }

  return *&minEnergy_minEnergy;
}

- (PLAccountingCorrectionManager)correctionManager
{
  correctionManager = self->_correctionManager;
  if (!correctionManager)
  {
    v4 = objc_alloc_init(PLAccountingCorrectionManager);
    v5 = self->_correctionManager;
    self->_correctionManager = v4;

    [(PLAccountingCorrectionManager *)self->_correctionManager setDelegate:self];
    correctionManager = self->_correctionManager;
  }

  return correctionManager;
}

- (PLAccountingEngine)init
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = PLAccountingEngine;
  v2 = [(PLAccountingEngine *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    if (([objc_opt_class() accountingDebugEnabled] & 1) == 0)
    {
      [(PLAccountingEngine *)v2 reload];
      mEMORY[0x277D3F140] = [MEMORY[0x277D3F140] sharedInstance];
      v6 = MEMORY[0x277D3F138];
      [objc_opt_class() maxPowerEventChunkInterval];
      v7 = [v6 timeCriterionWithInterval:?];
      v22[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      v9 = v2->_workQueue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __26__PLAccountingEngine_init__block_invoke;
      v19[3] = &unk_279A55DE8;
      v10 = v2;
      v20 = v10;
      [mEMORY[0x277D3F140] scheduleActivityWithIdentifier:@"com.apple.powerlogd.accounting.chunking" withCriteria:v8 withMustRunCriterion:0 withQueue:v9 withInterruptBlock:0 withActivityBlock:v19];

      if (([MEMORY[0x277D3F258] gasGaugeEnabled] & 1) == 0)
      {
        v10->_pluggedIn = 0;
        v11 = objc_alloc(MEMORY[0x277D3F1A8]);
        v12 = v2->_workQueue;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __26__PLAccountingEngine_init__block_invoke_2;
        v17[3] = &unk_279A55E10;
        v13 = v10;
        v18 = v13;
        v14 = [v11 initWithWorkQueue:v12 forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withBlock:v17];
        batteryListener = v13->_batteryListener;
        v13->_batteryListener = v14;
      }
    }
  }

  return v2;
}

void __26__PLAccountingEngine_init__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"entry"];
  v3 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
  [*(a1 + 32) setPluggedIn:{objc_msgSend(v3, "BOOLValue")}];
}

uint64_t __36__PLAccountingEngine_sharedInstance__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() accountingDebugEnabled];
  if ((result & 1) == 0)
  {
    sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (id)debugInstance
{
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  if ([storage storageLocked] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd"))
  {

LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  isPerfPowerMetricd = [MEMORY[0x277D3F258] isPerfPowerMetricd];

  if (isPerfPowerMetricd)
  {
    goto LABEL_4;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PLAccountingEngine_debugInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (debugInstance_onceToken != -1)
  {
    dispatch_once(&debugInstance_onceToken, block);
  }

  v5 = debugInstance_debugInstance;
LABEL_5:

  return v5;
}

void *__35__PLAccountingEngine_debugInstance__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() accountingDebugEnabled];
  if (result)
  {
    debugInstance_debugInstance = objc_alloc_init(objc_opt_class());

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (BOOL)accountingDebugEnabled
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__PLAccountingEngine_accountingDebugEnabled__block_invoke;
  v4[3] = &unk_279A55E58;
  v5 = @"PLAccountingDebugService_Debug";
  v6 = 0;
  if (accountingDebugEnabled_defaultOnce != -1)
  {
    dispatch_once(&accountingDebugEnabled_defaultOnce, v4);
  }

  v2 = accountingDebugEnabled_objectForKey;

  return v2;
}

void *__44__PLAccountingEngine_accountingDebugEnabled__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  accountingDebugEnabled_objectForKey = result;
  return result;
}

- (void)reset
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__PLAccountingEngine_reset__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (reset_defaultOnce != -1)
    {
      dispatch_once(&reset_defaultOnce, block);
    }

    if (reset_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reset]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:115];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reset]"];
  [storage blockingFlushCachesWithReason:v12];

  mEMORY[0x277D3F228] = [MEMORY[0x277D3F228] sharedStorageCache];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [mEMORY[0x277D3F228] lastEntryCachePruneToDate:distantFuture];

  workQueue = [(PLAccountingEngine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__PLAccountingEngine_reset__block_invoke_40;
  v16[3] = &unk_279A55E80;
  v16[4] = self;
  dispatch_async_and_wait(workQueue, v16);
}

void *__27__PLAccountingEngine_reset__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reset_classDebugEnabled = result;
  return result;
}

void __27__PLAccountingEngine_reset__block_invoke_40(uint64_t a1)
{
  [*(a1 + 32) setDistributionManager:0];
  [*(a1 + 32) setCorrectionManager:0];
  [*(a1 + 32) setQualificationManager:0];
  v2 = objc_opt_class();
  v3 = +[PLAccountingDistributionEventForwardEntry entryKey];
  [v2 clearWithEntryKey:v3];

  v4 = objc_opt_class();
  v5 = +[PLAccountingDistributionEventBackwardEntry entryKey];
  [v4 clearWithEntryKey:v5];

  v6 = objc_opt_class();
  v7 = +[PLAccountingDistributionEventIntervalEntry entryKey];
  [v6 clearWithEntryKey:v7];

  v8 = objc_opt_class();
  v9 = +[PLAccountingDistributionEventPointEntry entryKey];
  [v8 clearWithEntryKey:v9];

  v10 = objc_opt_class();
  v11 = +[PLAccountingQualificationEventForwardEntry entryKey];
  [v10 clearWithEntryKey:v11];

  v12 = objc_opt_class();
  v13 = +[PLAccountingQualificationEventBackwardEntry entryKey];
  [v12 clearWithEntryKey:v13];

  v14 = objc_opt_class();
  v15 = +[PLAccountingQualificationEventIntervalEntry entryKey];
  [v14 clearWithEntryKey:v15];

  v16 = objc_opt_class();
  v17 = +[PLAccountingQualificationEventPointEntry entryKey];
  [v16 clearWithEntryKey:v17];

  v18 = objc_opt_class();
  v19 = +[PLAccountingPowerEventForwardEntry entryKey];
  [v18 clearWithEntryKey:v19];

  v20 = objc_opt_class();
  v21 = +[PLAccountingPowerEventBackwardEntry entryKey];
  [v20 clearWithEntryKey:v21];

  v22 = objc_opt_class();
  v23 = +[PLAccountingPowerEventIntervalEntry entryKey];
  [v22 clearWithEntryKey:v23];

  v24 = objc_opt_class();
  v25 = +[PLAccountingEnergyEstimateEventEntry entryKey];
  [v24 clearWithEntryKey:v25];

  v26 = objc_opt_class();
  v27 = *MEMORY[0x277D3F5B8];
  v28 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  [v26 clearWithEntryKey:v28];

  v29 = objc_opt_class();
  v30 = [MEMORY[0x277D3F128] entryKeyForType:v27 andName:*MEMORY[0x277D3F2F0]];
  [v29 clearWithEntryKey:v30];

  v31 = objc_opt_class();
  v32 = [objc_opt_class() gasGaugeEntryKey];
  [v31 clearWithEntryKey:v32];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v33 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__PLAccountingEngine_reset__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v33;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"done"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reset]_block_invoke"];
      [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:154];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__27__PLAccountingEngine_reset__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled = result;
  return result;
}

void *__31__PLAccountingEngine_minEnergy__block_invoke(uint64_t a1)
{
  result = [objc_opt_class() accountingDebugEnabled];
  v2 = 0.001;
  if (result)
  {
    v2 = 1.0e-10;
  }

  minEnergy_minEnergy = *&v2;
  return result;
}

void *__43__PLAccountingEngine_minDistributionEnergy__block_invoke()
{
  result = [MEMORY[0x277D3F180] doubleForKey:@"PLAccountingEngine_minDistributionEnergy" ifNotSet:0.01];
  minDistributionEnergy_minDistributionEnergy = v1;
  return result;
}

+ (double)maxPowerEventChunkInterval
{
  if (maxPowerEventChunkInterval_onceToken != -1)
  {
    +[PLAccountingEngine maxPowerEventChunkInterval];
  }

  return *&maxPowerEventChunkInterval_maxPowerEventChunkInterval;
}

void *__48__PLAccountingEngine_maxPowerEventChunkInterval__block_invoke()
{
  result = [MEMORY[0x277D3F180] doubleForKey:@"PLAccountingEngine_maxPowerEventChunkInterval" ifNotSet:300.0];
  maxPowerEventChunkInterval_maxPowerEventChunkInterval = v1;
  return result;
}

void __39__PLAccountingEngine_deviceRootNodeIDs__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB58] set];
  v2 = deviceRootNodeIDs_deviceRootNodeIDs;
  deviceRootNodeIDs_deviceRootNodeIDs = v1;

  v3 = 2;
  do
  {
    v4 = [objc_opt_class() allSoCRootNodeIDs];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    if ([v4 containsObject:v5])
    {
      v6 = [objc_opt_class() deviceSoCRootNodeIDs];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      v8 = [v6 containsObject:v7];

      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v9 = [objc_opt_class() allBBRootNodeIDs];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    if ([v9 containsObject:v10])
    {
      v11 = [objc_opt_class() deviceBBRootNodeIDs];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      v13 = [v11 containsObject:v12];

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (v3 == 58)
    {
      if ([MEMORY[0x277D3F208] isiPhone])
      {
        goto LABEL_13;
      }
    }

    else if (v3 != 56 || ([MEMORY[0x277D3F208] hasCapability:5] & 1) != 0)
    {
LABEL_13:
      v14 = deviceRootNodeIDs_deviceRootNodeIDs;
      v15 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      [v14 addObject:v15];
    }

LABEL_14:
    v3 = (v3 + 1);
  }

  while (v3 != 63);
}

+ (id)allSoCRootNodeIDs
{
  if (allSoCRootNodeIDs_onceToken != -1)
  {
    +[PLAccountingEngine allSoCRootNodeIDs];
  }

  v3 = allSoCRootNodeIDs_allSoCRootNodeIDs;

  return v3;
}

uint64_t __39__PLAccountingEngine_allSoCRootNodeIDs__block_invoke()
{
  allSoCRootNodeIDs_allSoCRootNodeIDs = [MEMORY[0x277CBEB98] setWithArray:&unk_2870F8828];

  return MEMORY[0x2821F96F8]();
}

+ (id)deviceSoCRootNodeIDs
{
  if (deviceSoCRootNodeIDs_onceToken != -1)
  {
    +[PLAccountingEngine deviceSoCRootNodeIDs];
  }

  v3 = deviceSoCRootNodeIDs_deviceSoCRootNodeIDs;

  return v3;
}

void *__42__PLAccountingEngine_deviceSoCRootNodeIDs__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = deviceSoCRootNodeIDs_deviceSoCRootNodeIDs;
  deviceSoCRootNodeIDs_deviceSoCRootNodeIDs = v0;

  [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F8228];
  [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F82B8];
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if ((result - 1001001) >= 2)
  {
    v4 = result;
    if (result <= 1001002)
    {
      return result;
    }

    [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F8258];
    [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F8270];
    [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F8288];
    [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F82A0];
    [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs removeObject:&unk_2870F82B8];
    [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F82D0];
    result = [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F82E8];
    if (v4 <= 0xF4637)
    {
      if (v4 == 1001003)
      {
        return result;
      }
    }

    else
    {
      [deviceSoCRootNodeIDs_deviceSoCRootNodeIDs addObject:&unk_2870F8300];
    }

    v3 = &unk_2870F8318;
  }

  else
  {
    v3 = &unk_2870F82A0;
  }

  v5 = deviceSoCRootNodeIDs_deviceSoCRootNodeIDs;

  return [v5 addObject:v3];
}

+ (id)allBBRootNodeIDs
{
  if (allBBRootNodeIDs_onceToken != -1)
  {
    +[PLAccountingEngine allBBRootNodeIDs];
  }

  v3 = allBBRootNodeIDs_allBBRootNodeIDs;

  return v3;
}

uint64_t __38__PLAccountingEngine_allBBRootNodeIDs__block_invoke()
{
  allBBRootNodeIDs_allBBRootNodeIDs = [MEMORY[0x277CBEB98] setWithArray:&unk_2870F8840];

  return MEMORY[0x2821F96F8]();
}

+ (id)deviceBBRootNodeIDs
{
  if (deviceBBRootNodeIDs_onceToken != -1)
  {
    +[PLAccountingEngine deviceBBRootNodeIDs];
  }

  v3 = deviceBBRootNodeIDs_deviceBBRootNodeIDs;

  return v3;
}

void *__41__PLAccountingEngine_deviceBBRootNodeIDs__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = deviceBBRootNodeIDs_deviceBBRootNodeIDs;
  deviceBBRootNodeIDs_deviceBBRootNodeIDs = v0;

  if ([MEMORY[0x277D3F208] kPLBasebandClassIsOneOf:{1003003, 1003004, 1003005, 1003007, 1003006, 1003008, 1003010, 1003011, 1003012, 1003013, 1003014, 1003015, 1003016, 1003017, 1003020, 1003018, 0}])
  {
    v2 = &unk_2870F84C8;
    v3 = &unk_2870F85A0;
    v4 = &unk_2870F84B0;
  }

  else
  {
    if (([MEMORY[0x277D3F208] isBasebandClass:1003002] & 1) == 0)
    {
      result = [MEMORY[0x277D3F208] isBasebandClass:1003001];
      if (!result)
      {
        return result;
      }
    }

    [deviceBBRootNodeIDs_deviceBBRootNodeIDs addObject:&unk_2870F8348];
    v2 = &unk_2870F8588;
    v3 = &unk_2870F8570;
    v4 = &unk_2870F8330;
  }

  [deviceBBRootNodeIDs_deviceBBRootNodeIDs addObject:v4];
  [deviceBBRootNodeIDs_deviceBBRootNodeIDs addObject:v3];
  v6 = deviceBBRootNodeIDs_deviceBBRootNodeIDs;

  return [v6 addObject:v2];
}

void __40__PLAccountingEngine_allDistributionIDs__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = allDistributionIDs_allDistributionIDs;
  allDistributionIDs_allDistributionIDs = v0;

  v2 = 1;
  do
  {
    v3 = allDistributionIDs_allDistributionIDs;
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v2];
    [v3 addObject:v4];

    v2 = (v2 + 1);
  }

  while (v2 != 55);
}

+ (id)distributionIDForDistributionName:(id)name
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PLAccountingEngine_distributionIDForDistributionName___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = distributionIDForDistributionName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    dispatch_once(&distributionIDForDistributionName__onceToken, block);
  }

  v5 = [distributionIDForDistributionName__distributionNameToDistributionID objectForKeyedSubscript:nameCopy];

  return v5;
}

void __56__PLAccountingEngine_distributionIDForDistributionName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = distributionIDForDistributionName__distributionNameToDistributionID;
  distributionIDForDistributionName__distributionNameToDistributionID = v2;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) allDistributionIDs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = distributionIDForDistributionName__distributionNameToDistributionID;
        v11 = [&unk_2870F8858 objectAtIndexedSubscript:{objc_msgSend(v9, "intValue")}];
        [v10 setObject:v9 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void __41__PLAccountingEngine_allQualificationIDs__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = allQualificationIDs_allQualificationIDs;
  allQualificationIDs_allQualificationIDs = v0;

  v2 = 1;
  do
  {
    v3 = allQualificationIDs_allQualificationIDs;
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v2];
    [v3 addObject:v4];

    v2 = (v2 + 1);
  }

  while (v2 != 18);
}

+ (id)qualificationIDForQualificationName:(id)name
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PLAccountingEngine_qualificationIDForQualificationName___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = qualificationIDForQualificationName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    dispatch_once(&qualificationIDForQualificationName__onceToken, block);
  }

  v5 = [qualificationIDForQualificationName__qualificationNameToQualificationID objectForKeyedSubscript:nameCopy];

  return v5;
}

void __58__PLAccountingEngine_qualificationIDForQualificationName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = qualificationIDForQualificationName__qualificationNameToQualificationID;
  qualificationIDForQualificationName__qualificationNameToQualificationID = v2;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) allQualificationIDs];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = qualificationIDForQualificationName__qualificationNameToQualificationID;
        v11 = [&unk_2870F8870 objectAtIndexedSubscript:{objc_msgSend(v9, "intValue")}];
        [v10 setObject:v9 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)createPowerEventForwardWithRootNodeID:(int)d withPower:(double)power withStartDate:(id)date
{
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke;
  v11[3] = &unk_279A55ED0;
  dCopy = d;
  powerCopy = power;
  v11[4] = self;
  v12 = dateCopy;
  v10 = dateCopy;
  dispatch_async(workQueue, v11);
}

void __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeID=%i, power=%f, startDate=%@", *(a1 + 56), *(a1 + 48), *(a1 + 40)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventForwardWithRootNodeID:withPower:withStartDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:414];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 40) withEndDate:0];
  v10 = [PLAccountingPowerEventForwardEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [(PLAccountingPowerEventEntry *)v10 initWithRootNodeID:v11 withPower:v9 withRange:*(a1 + 48)];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_381;
  v14[3] = &unk_279A55EA8;
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled = result;
  return result;
}

void __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_381(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
    v9 = [MEMORY[0x277D3F140] sharedInstance];
    v10 = [v9 lastCompletedDateWithIdentifier:@"com.apple.powerlogd.accounting.chunking"];

    if (v10)
    {
      v11 = [v8 range];
      v12 = [v11 startDate];
      v13 = [v12 laterDate:v10];
      v14 = [v7 endDate];
      v15 = [PLAccountingRange rangeWithStartDate:v13 withEndDate:v14];

      v7 = v15;
    }

    [v7 length];
    v17 = v16;
    [v8 power];
    v19 = v17 * v18 / 3600.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_2_382;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v20;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"energy=%f", *&v19];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        v24 = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventForwardWithRootNodeID:withPower:withStartDate:]_block_invoke"];
        [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:435];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    +[PLAccountingEngine minDistributionEnergy];
    if (v19 >= v27)
    {
      v28 = [PLAccountingEnergyEstimateEventEntry alloc];
      v29 = [v8 rootNodeID];
      v30 = [v8 rootNodeID];
      v31 = [(PLAccountingEnergyEstimateEventEntry *)v28 initWithNodeID:v29 withRootNodeID:v30 withParentEntryID:0 withNumAncestors:0 withEnergy:v7 withRange:0 withEntryDate:v19];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v32 = objc_opt_class();
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_389;
        v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v40[4] = v32;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_387 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_387, v40);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_388 == 1)
        {
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootEnergyEstimate=%@", v31];
          v39 = MEMORY[0x277D3F178];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
          v35 = [v34 lastPathComponent];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventForwardWithRootNodeID:withPower:withStartDate:]_block_invoke_2"];
          [v39 logMessage:v33 fromFile:v35 fromFunction:v36 fromLineNumber:450];

          v37 = v33;
          v38 = PLLogCommon();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      [*(a1 + 32) didCreateChildEnergyEstimate:v31 withParentEnergyEstimate:0];
    }
  }
}

void *__84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_2_382(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled = result;
  return result;
}

void *__84__PLAccountingEngine_createPowerEventForwardWithRootNodeID_withPower_withStartDate___block_invoke_389(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_388 = result;
  return result;
}

- (void)createPowerEventBackwardWithRootNodeID:(int)d withPower:(double)power withEndDate:(id)date
{
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke;
  v11[3] = &unk_279A55ED0;
  dCopy = d;
  powerCopy = power;
  v11[4] = self;
  v12 = dateCopy;
  v10 = dateCopy;
  dispatch_async(workQueue, v11);
}

void __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeID=%i, power=%f, endDate=%@", *(a1 + 56), *(a1 + 48), *(a1 + 40)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventBackwardWithRootNodeID:withPower:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:463];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:0 withEndDate:*(a1 + 40)];
  v10 = [PLAccountingPowerEventBackwardEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [(PLAccountingPowerEventEntry *)v10 initWithRootNodeID:v11 withPower:v9 withRange:*(a1 + 48)];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_397;
  v14[3] = &unk_279A55EA8;
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled = result;
  return result;
}

void __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_397(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = v7;
    [v8 length];
    v11 = v10;
    [v9 power];
    v13 = v11 * v12 / 3600.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_2_398;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v14;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"energy=%f", *&v13];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventBackwardWithRootNodeID:withPower:withEndDate:]_block_invoke"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:477];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    +[PLAccountingEngine minDistributionEnergy];
    if (v13 >= v21)
    {
      v22 = [PLAccountingEnergyEstimateEventEntry alloc];
      v23 = [v9 rootNodeID];
      v24 = [v9 rootNodeID];
      v25 = [(PLAccountingEnergyEstimateEventEntry *)v22 initWithNodeID:v23 withRootNodeID:v24 withParentEntryID:0 withNumAncestors:0 withEnergy:v8 withRange:0 withEntryDate:v13];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v26 = objc_opt_class();
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_401;
        v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v33[4] = v26;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_399 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_399, v33);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_400 == 1)
        {
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootEnergyEstimate=%@", v25];
          v28 = MEMORY[0x277D3F178];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
          v30 = [v29 lastPathComponent];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventBackwardWithRootNodeID:withPower:withEndDate:]_block_invoke_2"];
          [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:491];

          v32 = PLLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      [*(a1 + 32) didCreateChildEnergyEstimate:v25 withParentEnergyEstimate:0];
    }
  }
}

void *__83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_2_398(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled = result;
  return result;
}

void *__83__PLAccountingEngine_createPowerEventBackwardWithRootNodeID_withPower_withEndDate___block_invoke_401(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_400 = result;
  return result;
}

- (void)createPowerEventIntervalWithRootNodeID:(int)d withPower:(double)power withStartDate:(id)date withEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  workQueue = [(PLAccountingEngine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke;
  block[3] = &unk_279A55F20;
  dCopy = d;
  powerCopy = power;
  block[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(workQueue, block);
}

void __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_6_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_6_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_6_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeID=%i, power=%f, startDate=%@, endDate=%@", *(a1 + 64), *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventIntervalWithRootNodeID:withPower:withStartDate:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:505];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 40) withEndDate:*(a1 + 48)];
  v10 = [PLAccountingPowerEventIntervalEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v12 = [(PLAccountingPowerEventEntry *)v10 initWithRootNodeID:v11 withPower:v9 withRange:*(a1 + 56)];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_405;
  v14[3] = &unk_279A55EF8;
  v15 = *(a1 + 64);
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_6_classDebugEnabled = result;
  return result;
}

void __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_405(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40) == 54)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [v9 range];
  [v10 length];
  v12 = v11;
  [v9 power];
  v14 = v12 * v13 / 3600.0;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_2_406;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v15;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_7_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_7_classDebugEnabled == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"energy=%f", *&v14];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventIntervalWithRootNodeID:withPower:withStartDate:withEndDate:]_block_invoke"];
      [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:524];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  +[PLAccountingEngine minDistributionEnergy];
  if (v14 >= v22)
  {
    v23 = [PLAccountingEnergyEstimateEventEntry alloc];
    v24 = [v9 rootNodeID];
    v25 = [v9 rootNodeID];
    v26 = [v9 range];
    v27 = [(PLAccountingEnergyEstimateEventEntry *)v23 initWithNodeID:v24 withRootNodeID:v25 withParentEntryID:0 withNumAncestors:0 withEnergy:v26 withRange:0 withEntryDate:v14];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v28 = objc_opt_class();
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_409;
      v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v35[4] = v28;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_7_defaultOnce_407 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_7_defaultOnce_407, v35);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_7_classDebugEnabled_408 == 1)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootEnergyEstimate=%@", v27];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        v32 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createPowerEventIntervalWithRootNodeID:withPower:withStartDate:withEndDate:]_block_invoke_2"];
        [v30 logMessage:v29 fromFile:v32 fromFunction:v33 fromLineNumber:538];

        v34 = PLLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    [*(a1 + 32) didCreateChildEnergyEstimate:v27 withParentEnergyEstimate:0];
  }
}

void *__97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_2_406(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_7_classDebugEnabled = result;
  return result;
}

void *__97__PLAccountingEngine_createPowerEventIntervalWithRootNodeID_withPower_withStartDate_withEndDate___block_invoke_409(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_7_classDebugEnabled_408 = result;
  return result;
}

- (void)addPowerMeasurementEventIntervalWithPower:(double)power withStartDate:(id)date withEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__PLAccountingEngine_addPowerMeasurementEventIntervalWithPower_withStartDate_withEndDate___block_invoke;
  v13[3] = &unk_279A55F48;
  v14 = dateCopy;
  v15 = endDateCopy;
  selfCopy = self;
  powerCopy = power;
  v11 = endDateCopy;
  v12 = dateCopy;
  dispatch_async(workQueue, v13);
}

void __90__PLAccountingEngine_addPowerMeasurementEventIntervalWithPower_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  v2 = [PLAccountingRange rangeWithStartDate:*(a1 + 32) withEndDate:*(a1 + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__PLAccountingEngine_addPowerMeasurementEventIntervalWithPower_withStartDate_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_8_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_8_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_8_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"range=%@", v2];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addPowerMeasurementEventIntervalWithPower:withStartDate:withEndDate:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:553];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v2)
  {
    v10 = *(a1 + 56);
    [v2 length];
    v12 = v10 * v11 / 3600.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __90__PLAccountingEngine_addPowerMeasurementEventIntervalWithPower_withStartDate_withEndDate___block_invoke_415;
      v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v20[4] = v13;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_8_defaultOnce_413 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_8_defaultOnce_413, v20);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_8_classDebugEnabled_414 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"energy=%f", *&v12];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addPowerMeasurementEventIntervalWithPower:withStartDate:withEndDate:]_block_invoke_2"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:557];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    [*(a1 + 48) addEnergyMeasurementWithRootNodeID:1 withEnergy:v2 withRange:v12];
  }
}

void *__90__PLAccountingEngine_addPowerMeasurementEventIntervalWithPower_withStartDate_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_8_classDebugEnabled = result;
  return result;
}

void *__90__PLAccountingEngine_addPowerMeasurementEventIntervalWithPower_withStartDate_withEndDate___block_invoke_415(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_8_classDebugEnabled_414 = result;
  return result;
}

- (void)createDistributionEventForwardWithDistributionID:(int)d withAddingChildNodeName:(id)name withStartDate:(id)date
{
  v6 = *&d;
  nameCopy = name;
  dateCopy = date;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withAddingChildNodeName_withStartDate___block_invoke;
  v16[3] = &unk_279A55F70;
  v16[4] = &v18;
  v17 = v6;
  dispatch_async_and_wait(workQueue, v16);

  v11 = v19[5];
  if (v11)
  {
    childNodeNameToWeight = [v11 childNodeNameToWeight];
  }

  else
  {
    childNodeNameToWeight = MEMORY[0x277CBEC10];
  }

  v13 = [childNodeNameToWeight mutableCopy];
  v14 = [v13 objectForKeyedSubscript:nameCopy];

  if (!v14)
  {
    [v13 setObject:&unk_2870F8918 forKeyedSubscript:nameCopy];
    v15 = [objc_opt_class() normalizeWeights:v13];

    [(PLAccountingEngine *)self createDistributionEventForwardWithDistributionID:v6 withChildNodeNameToWeight:v15 withStartDate:dateCopy];
    v13 = v15;
  }

  _Block_object_dispose(&v18, 8);
}

void __109__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withAddingChildNodeName_withStartDate___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D3F2A0] sharedCore];
  v2 = [v8 storage];
  v3 = +[PLAccountingDistributionEventForwardEntry entryKey];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v2 lastEntryForKey:v3 withSubEntryKey:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)createDistributionEventForwardWithDistributionID:(int)d withRemovingChildNodeName:(id)name withStartDate:(id)date
{
  v6 = *&d;
  nameCopy = name;
  dateCopy = date;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withRemovingChildNodeName_withStartDate___block_invoke;
  v16[3] = &unk_279A55F70;
  v16[4] = &v18;
  v17 = v6;
  dispatch_async_and_wait(workQueue, v16);

  v11 = v19[5];
  if (v11)
  {
    childNodeNameToWeight = [v11 childNodeNameToWeight];
    v13 = [childNodeNameToWeight mutableCopy];

    v14 = [v13 objectForKeyedSubscript:nameCopy];

    if (v14)
    {
      [v13 removeObjectForKey:nameCopy];
      v15 = [objc_opt_class() normalizeWeights:v13];

      [(PLAccountingEngine *)self createDistributionEventForwardWithDistributionID:v6 withChildNodeNameToWeight:v15 withStartDate:dateCopy];
      v13 = v15;
    }
  }

  _Block_object_dispose(&v18, 8);
}

void __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withRemovingChildNodeName_withStartDate___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D3F2A0] sharedCore];
  v2 = [v8 storage];
  v3 = +[PLAccountingDistributionEventForwardEntry entryKey];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v2 lastEntryForKey:v3 withSubEntryKey:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)createDistributionEventForwardWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date
{
  weightCopy = weight;
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke;
  v13[3] = &unk_279A55F98;
  dCopy = d;
  v13[4] = self;
  v14 = weightCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = weightCopy;
  dispatch_async(workQueue, v13);
}

void __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_9_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_9_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_9_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionID=%i, childNodeNameToWeight=%@, startDate=%@", *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createDistributionEventForwardWithDistributionID:withChildNodeNameToWeight:withStartDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:617];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 48) withEndDate:0];
  v10 = [PLAccountingDistributionEventForwardEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [(PLAccountingDistributionEventEntry *)v10 initWithDistributionID:v11 withChildNodeNameToWeight:*(a1 + 40) withRange:v9];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_420;
  v14[3] = &unk_279A55EA8;
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_9_classDebugEnabled = result;
  return result;
}

void __111__PLAccountingEngine_createDistributionEventForwardWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_420(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualContentsWithEvent:v5] & 1) == 0)
  {
    [*(a1 + 32) addDistributionEventIntervalWithLastDistributionEventForward:v6 withDistributionEventForward:v5];
  }
}

- (void)createDistributionEventBackwardWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withEndDate:(id)date
{
  weightCopy = weight;
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__PLAccountingEngine_createDistributionEventBackwardWithDistributionID_withChildNodeNameToWeight_withEndDate___block_invoke;
  v13[3] = &unk_279A55F98;
  dCopy = d;
  v13[4] = self;
  v14 = weightCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = weightCopy;
  dispatch_async(workQueue, v13);
}

void __110__PLAccountingEngine_createDistributionEventBackwardWithDistributionID_withChildNodeNameToWeight_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__PLAccountingEngine_createDistributionEventBackwardWithDistributionID_withChildNodeNameToWeight_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_10_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_10_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_10_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionID=%i, childNodeNameToWeight=%@, endDate=%@", *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createDistributionEventBackwardWithDistributionID:withChildNodeNameToWeight:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:643];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:0 withEndDate:*(a1 + 48)];
  v10 = [PLAccountingDistributionEventBackwardEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [(PLAccountingDistributionEventEntry *)v10 initWithDistributionID:v11 withChildNodeNameToWeight:*(a1 + 40) withRange:v9];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__PLAccountingEngine_createDistributionEventBackwardWithDistributionID_withChildNodeNameToWeight_withEndDate___block_invoke_424;
  v14[3] = &unk_279A55EA8;
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__110__PLAccountingEngine_createDistributionEventBackwardWithDistributionID_withChildNodeNameToWeight_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_10_classDebugEnabled = result;
  return result;
}

- (void)createDistributionEventIntervalWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date withEndDate:(id)endDate
{
  weightCopy = weight;
  dateCopy = date;
  endDateCopy = endDate;
  workQueue = [(PLAccountingEngine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__PLAccountingEngine_createDistributionEventIntervalWithDistributionID_withChildNodeNameToWeight_withStartDate_withEndDate___block_invoke;
  block[3] = &unk_279A55FC0;
  dCopy = d;
  block[4] = self;
  v18 = weightCopy;
  v19 = dateCopy;
  v20 = endDateCopy;
  v14 = endDateCopy;
  v15 = dateCopy;
  v16 = weightCopy;
  dispatch_async(workQueue, block);
}

void __124__PLAccountingEngine_createDistributionEventIntervalWithDistributionID_withChildNodeNameToWeight_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __124__PLAccountingEngine_createDistributionEventIntervalWithDistributionID_withChildNodeNameToWeight_withStartDate_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_11_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_11_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_11_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionID=%i, childNodeNameToWeight=%@, startDate=%@, endDate=%@", *(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 56)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createDistributionEventIntervalWithDistributionID:withChildNodeNameToWeight:withStartDate:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:667];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 48) withEndDate:*(a1 + 56)];
  v10 = [PLAccountingDistributionEventIntervalEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v12 = [(PLAccountingDistributionEventEntry *)v10 initWithDistributionID:v11 withChildNodeNameToWeight:*(a1 + 40) withRange:v9];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__PLAccountingEngine_createDistributionEventIntervalWithDistributionID_withChildNodeNameToWeight_withStartDate_withEndDate___block_invoke_428;
  v14[3] = &unk_279A55EF8;
  v15 = *(a1 + 64);
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__124__PLAccountingEngine_createDistributionEventIntervalWithDistributionID_withChildNodeNameToWeight_withStartDate_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_11_classDebugEnabled = result;
  return result;
}

void __124__PLAccountingEngine_createDistributionEventIntervalWithDistributionID_withChildNodeNameToWeight_withStartDate_withEndDate___block_invoke_428(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 40) == 22)
  {
    v6 = v8;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  [*(a1 + 32) addDistributionEventInterval:v7];
}

- (void)createDistributionEventPointWithDistributionID:(int)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date
{
  weightCopy = weight;
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__PLAccountingEngine_createDistributionEventPointWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke;
  v13[3] = &unk_279A55F98;
  dCopy = d;
  v13[4] = self;
  v14 = weightCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = weightCopy;
  dispatch_async(workQueue, v13);
}

void __109__PLAccountingEngine_createDistributionEventPointWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__PLAccountingEngine_createDistributionEventPointWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_12_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_12_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_12_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionID=%i, childNodeNameToWeight=%@, startDate=%@", *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createDistributionEventPointWithDistributionID:withChildNodeNameToWeight:withStartDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:694];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 48) withEndDate:*(a1 + 48)];
  v10 = [PLAccountingDistributionEventPointEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [(PLAccountingDistributionEventEntry *)v10 initWithDistributionID:v11 withChildNodeNameToWeight:*(a1 + 40) withRange:v9];

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__PLAccountingEngine_createDistributionEventPointWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_429;
  v14[3] = &unk_279A55EA8;
  v14[4] = v13;
  [v13 createEventWithEvent:v12 withActionBlock:v14];
}

void *__109__PLAccountingEngine_createDistributionEventPointWithDistributionID_withChildNodeNameToWeight_withStartDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_12_classDebugEnabled = result;
  return result;
}

- (id)currentDistributionEventForwardWithDistributionID:(int)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  workQueue = [(PLAccountingEngine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__PLAccountingEngine_currentDistributionEventForwardWithDistributionID___block_invoke;
  block[3] = &unk_279A55FE8;
  dCopy = d;
  block[4] = self;
  block[5] = &v10;
  dispatch_async_and_wait(workQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __72__PLAccountingEngine_currentDistributionEventForwardWithDistributionID___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__PLAccountingEngine_currentDistributionEventForwardWithDistributionID___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_13_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_13_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_13_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionID=%i", *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine currentDistributionEventForwardWithDistributionID:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:713];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [*(a1 + 32) distributionManager];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v11 = [v9 lastDependencyForDependencyID:v10];

  v12 = [v11 distributionEvent];
  v13 = [v12 childNodeNameToWeight];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__PLAccountingEngine_currentDistributionEventForwardWithDistributionID___block_invoke_435;
    v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v23[4] = v16;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_13_defaultOnce_433 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_13_defaultOnce_433, v23);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_13_classDebugEnabled_434 == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"childNodeNameToWeight=%@", *(*(*(a1 + 40) + 8) + 40)];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine currentDistributionEventForwardWithDistributionID:]_block_invoke_2"];
      [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:716];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__72__PLAccountingEngine_currentDistributionEventForwardWithDistributionID___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_13_classDebugEnabled = result;
  return result;
}

void *__72__PLAccountingEngine_currentDistributionEventForwardWithDistributionID___block_invoke_435(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_13_classDebugEnabled_434 = result;
  return result;
}

- (void)createQualificationEventForwardWithQualificationID:(int)d withAddingChildNodeName:(id)name withStartDate:(id)date
{
  v6 = *&d;
  nameCopy = name;
  dateCopy = date;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withAddingChildNodeName_withStartDate___block_invoke;
  v15[3] = &unk_279A55F70;
  v15[4] = &v17;
  v16 = v6;
  dispatch_async_and_wait(workQueue, v15);

  v11 = v18[5];
  if (v11)
  {
    [v11 childNodeNames];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v12 = ;
  v13 = [v12 mutableCopy];
  if (([v13 containsObject:nameCopy] & 1) == 0)
  {
    [v13 addObject:nameCopy];
    allObjects = [v13 allObjects];
    [(PLAccountingEngine *)self createQualificationEventForwardWithQualificationID:v6 withChildNodeNames:allObjects withStartDate:dateCopy];
  }

  _Block_object_dispose(&v17, 8);
}

void __111__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withAddingChildNodeName_withStartDate___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D3F2A0] sharedCore];
  v2 = [v8 storage];
  v3 = +[PLAccountingQualificationEventForwardEntry entryKey];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v2 lastEntryForKey:v3 withSubEntryKey:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)createQualificationEventForwardWithQualificationID:(int)d withRemovingChildNodeName:(id)name withStartDate:(id)date
{
  v6 = *&d;
  nameCopy = name;
  dateCopy = date;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withRemovingChildNodeName_withStartDate___block_invoke;
  v15[3] = &unk_279A55F70;
  v15[4] = &v17;
  v16 = v6;
  dispatch_async_and_wait(workQueue, v15);

  v11 = v18[5];
  if (v11)
  {
    childNodeNames = [v11 childNodeNames];
    v13 = [childNodeNames mutableCopy];

    if ([v13 containsObject:nameCopy])
    {
      [v13 removeObject:nameCopy];
      allObjects = [v13 allObjects];
      [(PLAccountingEngine *)self createQualificationEventForwardWithQualificationID:v6 withChildNodeNames:allObjects withStartDate:dateCopy];
    }
  }

  _Block_object_dispose(&v17, 8);
}

void __113__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withRemovingChildNodeName_withStartDate___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277D3F2A0] sharedCore];
  v2 = [v8 storage];
  v3 = +[PLAccountingQualificationEventForwardEntry entryKey];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v2 lastEntryForKey:v3 withSubEntryKey:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)createQualificationEventForwardWithQualificationID:(int)d withChildNodeNames:(id)names withStartDate:(id)date
{
  namesCopy = names;
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withChildNodeNames_withStartDate___block_invoke;
  v13[3] = &unk_279A55F98;
  dCopy = d;
  v13[4] = self;
  v14 = namesCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = namesCopy;
  dispatch_async(workQueue, v13);
}

void __106__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withChildNodeNames_withStartDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withChildNodeNames_withStartDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_14_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_14_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_14_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%i, childNodeNames=%@, startDate=%@", *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createQualificationEventForwardWithQualificationID:withChildNodeNames:withStartDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:771];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 48) withEndDate:0];
  v10 = [PLAccountingQualificationEventForwardEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v13 = [(PLAccountingQualificationEventEntry *)v10 initWithQualificationID:v11 withChildNodeNames:v12 withRange:v9];

  v14 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withChildNodeNames_withStartDate___block_invoke_443;
  v15[3] = &unk_279A55EA8;
  v15[4] = v14;
  [v14 createEventWithEvent:v13 withActionBlock:v15];
}

void *__106__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withChildNodeNames_withStartDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_14_classDebugEnabled = result;
  return result;
}

void __106__PLAccountingEngine_createQualificationEventForwardWithQualificationID_withChildNodeNames_withStartDate___block_invoke_443(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualContentsWithEvent:v5] & 1) == 0)
  {
    [*(a1 + 32) addQualificationEventIntervalWithLastQualificationEventForward:v6 withQualificationEventForward:v5];
  }
}

- (void)createQualificationEventBackwardWithQualificationID:(int)d withChildNodeNames:(id)names withEndDate:(id)date
{
  namesCopy = names;
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__PLAccountingEngine_createQualificationEventBackwardWithQualificationID_withChildNodeNames_withEndDate___block_invoke;
  v13[3] = &unk_279A55F98;
  dCopy = d;
  v13[4] = self;
  v14 = namesCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = namesCopy;
  dispatch_async(workQueue, v13);
}

void __105__PLAccountingEngine_createQualificationEventBackwardWithQualificationID_withChildNodeNames_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__PLAccountingEngine_createQualificationEventBackwardWithQualificationID_withChildNodeNames_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_15_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_15_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_15_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%i, childNodeNames=%@, endDate=%@", *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createQualificationEventBackwardWithQualificationID:withChildNodeNames:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:798];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:0 withEndDate:*(a1 + 48)];
  v10 = [PLAccountingQualificationEventBackwardEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v13 = [(PLAccountingQualificationEventEntry *)v10 initWithQualificationID:v11 withChildNodeNames:v12 withRange:v9];

  v14 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__PLAccountingEngine_createQualificationEventBackwardWithQualificationID_withChildNodeNames_withEndDate___block_invoke_447;
  v15[3] = &unk_279A55EA8;
  v15[4] = v14;
  [v14 createEventWithEvent:v13 withActionBlock:v15];
}

void *__105__PLAccountingEngine_createQualificationEventBackwardWithQualificationID_withChildNodeNames_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_15_classDebugEnabled = result;
  return result;
}

- (void)createQualificationEventIntervalWithQualificationID:(int)d withChildNodeNames:(id)names withStartDate:(id)date withEndDate:(id)endDate
{
  namesCopy = names;
  dateCopy = date;
  endDateCopy = endDate;
  workQueue = [(PLAccountingEngine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__PLAccountingEngine_createQualificationEventIntervalWithQualificationID_withChildNodeNames_withStartDate_withEndDate___block_invoke;
  block[3] = &unk_279A55FC0;
  dCopy = d;
  block[4] = self;
  v18 = namesCopy;
  v19 = dateCopy;
  v20 = endDateCopy;
  v14 = endDateCopy;
  v15 = dateCopy;
  v16 = namesCopy;
  dispatch_async(workQueue, block);
}

void __119__PLAccountingEngine_createQualificationEventIntervalWithQualificationID_withChildNodeNames_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__PLAccountingEngine_createQualificationEventIntervalWithQualificationID_withChildNodeNames_withStartDate_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_16_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_16_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_16_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%i, childNodeNames=%@, startDate=%@, endDate=%@", *(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 56)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createQualificationEventIntervalWithQualificationID:withChildNodeNames:withStartDate:withEndDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:823];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 48) withEndDate:*(a1 + 56)];
  v10 = [PLAccountingQualificationEventIntervalEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v12 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v13 = [(PLAccountingQualificationEventEntry *)v10 initWithQualificationID:v11 withChildNodeNames:v12 withRange:v9];

  v14 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __119__PLAccountingEngine_createQualificationEventIntervalWithQualificationID_withChildNodeNames_withStartDate_withEndDate___block_invoke_451;
  v15[3] = &unk_279A55EA8;
  v15[4] = v14;
  [v14 createEventWithEvent:v13 withActionBlock:v15];
}

void *__119__PLAccountingEngine_createQualificationEventIntervalWithQualificationID_withChildNodeNames_withStartDate_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_16_classDebugEnabled = result;
  return result;
}

- (void)createQualificationEventPointWithQualificationID:(int)d withChildNodeNames:(id)names withStartDate:(id)date
{
  namesCopy = names;
  dateCopy = date;
  workQueue = [(PLAccountingEngine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__PLAccountingEngine_createQualificationEventPointWithQualificationID_withChildNodeNames_withStartDate___block_invoke;
  v13[3] = &unk_279A55F98;
  dCopy = d;
  v13[4] = self;
  v14 = namesCopy;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = namesCopy;
  dispatch_async(workQueue, v13);
}

void __104__PLAccountingEngine_createQualificationEventPointWithQualificationID_withChildNodeNames_withStartDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__PLAccountingEngine_createQualificationEventPointWithQualificationID_withChildNodeNames_withStartDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_17_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_17_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_17_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%i, childNodeNames=%@, startDate=%@", *(a1 + 56), *(a1 + 40), *(a1 + 48)];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createQualificationEventPointWithQualificationID:withChildNodeNames:withStartDate:]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:845];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [PLAccountingRange rangeWithStartDate:*(a1 + 48) withEndDate:*(a1 + 48)];
  v10 = [PLAccountingQualificationEventPointEntry alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v12 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  v13 = [(PLAccountingQualificationEventEntry *)v10 initWithQualificationID:v11 withChildNodeNames:v12 withRange:v9];

  v14 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__PLAccountingEngine_createQualificationEventPointWithQualificationID_withChildNodeNames_withStartDate___block_invoke_452;
  v15[3] = &unk_279A55EA8;
  v15[4] = v14;
  [v14 createEventWithEvent:v13 withActionBlock:v15];
}

void *__104__PLAccountingEngine_createQualificationEventPointWithQualificationID_withChildNodeNames_withStartDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_17_classDebugEnabled = result;
  return result;
}

- (void)createEventWithEvent:(id)event withActionBlock:(id)block
{
  eventCopy = event;
  blockCopy = block;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (createEventWithEvent_withActionBlock__defaultOnce != -1)
    {
      dispatch_once(&createEventWithEvent_withActionBlock__defaultOnce, block);
    }

    if (createEventWithEvent_withActionBlock__classDebugEnabled == 1)
    {
      eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"event=%@", eventCopy];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createEventWithEvent:withActionBlock:]"];
      [v9 logMessage:eventCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:865];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (eventCopy && blockCopy)
  {
    v14 = 0x277D3F000uLL;
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    entryKey = [objc_opt_class() entryKey];
    subEntryKey = [eventCopy subEntryKey];
    v19 = [storage lastEntryForKey:entryKey withSubEntryKey:subEntryKey];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_458;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v20;
      if (createEventWithEvent_withActionBlock__defaultOnce_456 != -1)
      {
        dispatch_once(&createEventWithEvent_withActionBlock__defaultOnce_456, v65);
      }

      if (createEventWithEvent_withActionBlock__classDebugEnabled_457 == 1)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastEvent=%@", v19];
        v22 = MEMORY[0x277D3F178];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent2 = [v23 lastPathComponent];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createEventWithEvent:withActionBlock:]"];
        [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:871];

        v26 = PLLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v14 = 0x277D3F000;
      }
    }

    v27 = [eventCopy rangeSinceEvent:v19];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v28 = objc_opt_class();
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_464;
      v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v64[4] = v28;
      if (createEventWithEvent_withActionBlock__defaultOnce_462 != -1)
      {
        dispatch_once(&createEventWithEvent_withActionBlock__defaultOnce_462, v64);
      }

      if (createEventWithEvent_withActionBlock__classDebugEnabled_463 == 1)
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"sinceRange=%@", v27];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent3 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createEventWithEvent:withActionBlock:]"];
        [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:875];

        v34 = PLLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v14 = 0x277D3F000uLL;
      }
    }

    if (v19)
    {
      if (!v27 || ([v27 length], v35 == 0.0))
      {
        [v19 mergeWithEvent:eventCopy];
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_51;
        }

        v36 = objc_opt_class();
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_470;
        v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v63[4] = v36;
        if (createEventWithEvent_withActionBlock__defaultOnce_468 != -1)
        {
          dispatch_once(&createEventWithEvent_withActionBlock__defaultOnce_468, v63);
        }

        if (createEventWithEvent_withActionBlock__classDebugEnabled_469 != 1)
        {
          goto LABEL_51;
        }

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined for too short sinceRange, now lastEvent=%@", v19];
        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent4 = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createEventWithEvent:withActionBlock:]"];
        [v38 logMessage:v37 fromFile:lastPathComponent4 fromFunction:v41 fromLineNumber:880];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

LABEL_33:

LABEL_51:
        goto LABEL_52;
      }

      if (([v19 used] & 1) == 0 && objc_msgSend(v19, "canMergeWithEvent:", eventCopy) && objc_msgSend(v19, "isEqualContentsWithEvent:", eventCopy))
      {
        [v19 mergeWithEvent:eventCopy];
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_51;
        }

        v43 = objc_opt_class();
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_476;
        v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v62[4] = v43;
        if (createEventWithEvent_withActionBlock__defaultOnce_474 != -1)
        {
          dispatch_once(&createEventWithEvent_withActionBlock__defaultOnce_474, v62);
        }

        if (createEventWithEvent_withActionBlock__classDebugEnabled_475 != 1)
        {
          goto LABEL_51;
        }

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined for equal contents, now lastEvent=%@", v19];
        v44 = MEMORY[0x277D3F178];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent5 = [v45 lastPathComponent];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createEventWithEvent:withActionBlock:]"];
        [v44 logMessage:v37 fromFile:lastPathComponent5 fromFunction:v47 fromLineNumber:885];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        goto LABEL_33;
      }
    }

    sharedCore = [*(v14 + 672) sharedCore];
    storage2 = [sharedCore storage];
    [storage2 blockingWriteEntry:eventCopy withCompletionBlock:&__block_literal_global_482];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v50 = objc_opt_class();
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_2;
      v60 = &__block_descriptor_40_e5_v8__0lu32l8;
      v61 = v50;
      if (createEventWithEvent_withActionBlock__defaultOnce_483 != -1)
      {
        dispatch_once(&createEventWithEvent_withActionBlock__defaultOnce_483, &v57);
      }

      if (createEventWithEvent_withActionBlock__classDebugEnabled_484 == 1)
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"logged new event=%@", eventCopy, v57, v58, v59, v60, v61];
        v52 = MEMORY[0x277D3F178];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent6 = [v53 lastPathComponent];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createEventWithEvent:withActionBlock:]"];
        [v52 logMessage:v51 fromFile:lastPathComponent6 fromFunction:v55 fromLineNumber:891];

        v56 = PLLogCommon();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    blockCopy[2](blockCopy, v19, eventCopy, v27);
    goto LABEL_51;
  }

LABEL_52:
}

void *__59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createEventWithEvent_withActionBlock__classDebugEnabled = result;
  return result;
}

void *__59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_458(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createEventWithEvent_withActionBlock__classDebugEnabled_457 = result;
  return result;
}

void *__59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_464(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createEventWithEvent_withActionBlock__classDebugEnabled_463 = result;
  return result;
}

void *__59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_470(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createEventWithEvent_withActionBlock__classDebugEnabled_469 = result;
  return result;
}

void *__59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_476(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createEventWithEvent_withActionBlock__classDebugEnabled_475 = result;
  return result;
}

void *__59__PLAccountingEngine_createEventWithEvent_withActionBlock___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createEventWithEvent_withActionBlock__classDebugEnabled_484 = result;
  return result;
}

+ (id)gasGaugeEntryKey
{
  if (gasGaugeEntryKey_onceToken != -1)
  {
    +[PLAccountingEngine gasGaugeEntryKey];
  }

  v3 = gasGaugeEntryKey_gasGaugeEntryKey;

  return v3;
}

void __38__PLAccountingEngine_gasGaugeEntryKey__block_invoke()
{
  v0 = gasGaugeEntryKey_gasGaugeEntryKey;
  gasGaugeEntryKey_gasGaugeEntryKey = @"PLBatteryAgent_EventInterval_GasGauge";
}

- (void)addDistributionEventIntervalWithLastDistributionEventForward:(id)forward withDistributionEventForward:(id)eventForward
{
  forwardCopy = forward;
  eventForwardCopy = eventForward;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __112__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__defaultOnce != -1)
    {
      dispatch_once(&addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__defaultOnce, block);
    }

    if (addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__classDebugEnabled == 1)
    {
      eventForwardCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDistributionEventForward=%@, distributionEventForward=%@", forwardCopy, eventForwardCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addDistributionEventIntervalWithLastDistributionEventForward:withDistributionEventForward:]"];
      [v10 logMessage:eventForwardCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:910];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (eventForwardCopy)
  {
    if (forwardCopy)
    {
      distributionID = [forwardCopy distributionID];
      distributionID2 = [eventForwardCopy distributionID];
      v17 = [distributionID isEqual:distributionID2];

      if (!v17)
      {
        goto LABEL_20;
      }

      distributionManager = [(PLAccountingEngine *)self distributionManager];
      distributionID3 = [eventForwardCopy distributionID];
      range = [eventForwardCopy range];
      startDate = [range startDate];
      [distributionManager closeLastDistributionEventForwardWithDistributionID:distributionID3 withEndDate:startDate];
    }

    v22 = [PLAccountingDistributionEventIntervalEntry alloc];
    distributionID4 = [eventForwardCopy distributionID];
    childNodeIDToWeight = [eventForwardCopy childNodeIDToWeight];
    range2 = [eventForwardCopy range];
    startDate2 = [range2 startDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v28 = [(PLAccountingDistributionEventIntervalEntry *)v22 initWithDistributionID:distributionID4 withChildNodeIDToWeight:childNodeIDToWeight withStartDate:startDate2 withEndDate:distantFuture];

    [(PLEntry *)v28 setWriteToDB:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __112__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward___block_invoke_498;
      v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v37[4] = v29;
      if (addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__defaultOnce_496 != -1)
      {
        dispatch_once(&addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__defaultOnce_496, v37);
      }

      if (addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__classDebugEnabled_497 == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEventIntervalOpen=%@", v28];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent2 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addDistributionEventIntervalWithLastDistributionEventForward:withDistributionEventForward:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:926];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    distributionManager2 = [(PLAccountingEngine *)self distributionManager];
    [distributionManager2 addDistributionEvent:v28];
  }

LABEL_20:
}

void *__112__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__classDebugEnabled = result;
  return result;
}

void *__112__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward___block_invoke_498(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEventIntervalWithLastDistributionEventForward_withDistributionEventForward__classDebugEnabled_497 = result;
  return result;
}

- (void)addDistributionEventIntervalWithLastDistributionEventBackward:(id)backward withDistributionEventBackward:(id)eventBackward
{
  backwardCopy = backward;
  eventBackwardCopy = eventBackward;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__defaultOnce != -1)
    {
      dispatch_once(&addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__defaultOnce, block);
    }

    if (addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__classDebugEnabled == 1)
    {
      eventBackwardCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDistributionEventBackward=%@, distributionEventBackward=%@", backwardCopy, eventBackwardCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addDistributionEventIntervalWithLastDistributionEventBackward:withDistributionEventBackward:]"];
      [v10 logMessage:eventBackwardCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:934];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (backwardCopy)
  {
    if (eventBackwardCopy)
    {
      distributionID = [backwardCopy distributionID];
      distributionID2 = [eventBackwardCopy distributionID];
      v17 = [distributionID isEqual:distributionID2];

      if (v17)
      {
        v18 = [PLAccountingDistributionEventIntervalEntry alloc];
        distributionID3 = [eventBackwardCopy distributionID];
        childNodeIDToWeight = [eventBackwardCopy childNodeIDToWeight];
        range = [backwardCopy range];
        endDate = [range endDate];
        range2 = [eventBackwardCopy range];
        endDate2 = [range2 endDate];
        v25 = [(PLAccountingDistributionEventIntervalEntry *)v18 initWithDistributionID:distributionID3 withChildNodeIDToWeight:childNodeIDToWeight withStartDate:endDate withEndDate:endDate2];

        [(PLEntry *)v25 setWriteToDB:0];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v26 = objc_opt_class();
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __114__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward___block_invoke_507;
          v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v34[4] = v26;
          if (addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__defaultOnce_505 != -1)
          {
            dispatch_once(&addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__defaultOnce_505, v34);
          }

          if (addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__classDebugEnabled_506 == 1)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEventInterval=%@", v25];
            v28 = MEMORY[0x277D3F178];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent2 = [v29 lastPathComponent];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addDistributionEventIntervalWithLastDistributionEventBackward:withDistributionEventBackward:]"];
            [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:943];

            v32 = PLLogCommon();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        distributionManager = [(PLAccountingEngine *)self distributionManager];
        [distributionManager addDistributionEvent:v25];
      }
    }
  }
}

void *__114__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__classDebugEnabled = result;
  return result;
}

void *__114__PLAccountingEngine_addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward___block_invoke_507(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEventIntervalWithLastDistributionEventBackward_withDistributionEventBackward__classDebugEnabled_506 = result;
  return result;
}

- (void)addDistributionEventInterval:(id)interval
{
  intervalCopy = interval;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __51__PLAccountingEngine_addDistributionEventInterval___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (addDistributionEventInterval__defaultOnce != -1)
    {
      dispatch_once(&addDistributionEventInterval__defaultOnce, &block);
    }

    if (addDistributionEventInterval__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEventInterval=%@", intervalCopy, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addDistributionEventInterval:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:950];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  distributionManager = [(PLAccountingEngine *)self distributionManager];
  [distributionManager addDistributionEvent:intervalCopy];
}

void *__51__PLAccountingEngine_addDistributionEventInterval___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEventInterval__classDebugEnabled = result;
  return result;
}

- (void)addDistributionEventPoint:(id)point
{
  pointCopy = point;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __48__PLAccountingEngine_addDistributionEventPoint___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (addDistributionEventPoint__defaultOnce != -1)
    {
      dispatch_once(&addDistributionEventPoint__defaultOnce, &block);
    }

    if (addDistributionEventPoint__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEventPoint=%@", pointCopy, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addDistributionEventPoint:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:956];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  distributionManager = [(PLAccountingEngine *)self distributionManager];
  [distributionManager addDistributionEvent:pointCopy];
}

void *__48__PLAccountingEngine_addDistributionEventPoint___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEventPoint__classDebugEnabled = result;
  return result;
}

- (void)didCreateChildEnergyEstimate:(id)estimate withParentEnergyEstimate:(id)energyEstimate
{
  estimateCopy = estimate;
  energyEstimateCopy = energyEstimate;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce != -1)
    {
      dispatch_once(&didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce, block);
    }

    if (didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled == 1)
    {
      energyEstimateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"childEnergyEstimate=%@, parentEnergyEstimate=%@", estimateCopy, energyEstimateCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didCreateChildEnergyEstimate:withParentEnergyEstimate:]"];
      [v10 logMessage:energyEstimateCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:964];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (estimateCopy)
  {
    [estimateCopy energy];
    v16 = v15;
    +[PLAccountingEngine minEnergy];
    if (energyEstimateCopy && v16 <= v17 && ([estimateCopy distributionRuleID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "intValue"), v18, v19 < 1))
    {
      [estimateCopy setWriteToDB:0];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v47 = objc_opt_class();
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_527;
        v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v56[4] = v47;
        if (didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_525 != -1)
        {
          dispatch_once(&didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_525, v56);
        }

        if (didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_526 == 1)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"not logging"];
          v49 = MEMORY[0x277D3F178];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
          lastPathComponent2 = [v50 lastPathComponent];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didCreateChildEnergyEstimate:withParentEnergyEstimate:]"];
          [v49 logMessage:v48 fromFile:lastPathComponent2 fromFunction:v52 fromLineNumber:979];

          v53 = PLLogCommon();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }
    }

    else
    {
      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      storage = [mEMORY[0x277D3F2A0] storage];
      [storage blockingWriteEntry:estimateCopy withCompletionBlock:&__block_literal_global_519];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_2;
        v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v57[4] = v22;
        if (didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_520 != -1)
        {
          dispatch_once(&didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_520, v57);
        }

        if (didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_521 == 1)
        {
          estimateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"logged childEnergyEstimate=%@", estimateCopy];
          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
          lastPathComponent3 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didCreateChildEnergyEstimate:withParentEnergyEstimate:]"];
          [v24 logMessage:estimateCopy fromFile:lastPathComponent3 fromFunction:v27 fromLineNumber:972];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      if (!energyEstimateCopy)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v38 = objc_opt_class();
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_533;
          v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v55[4] = v38;
          if (didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_531 != -1)
          {
            dispatch_once(&didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_531, v55);
          }

          if (didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_532 == 1)
          {
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"root node energy estimate"];
            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent4 = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didCreateChildEnergyEstimate:withParentEnergyEstimate:]"];
            [v40 logMessage:v39 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:984];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        correctionManager = [(PLAccountingEngine *)self correctionManager];
        entryDate = [estimateCopy entryDate];
        [correctionManager addRootEnergyEstimate:estimateCopy withNow:entryDate];
        goto LABEL_36;
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_539;
      v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v54[4] = v29;
      if (didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_537 != -1)
      {
        dispatch_once(&didCreateChildEnergyEstimate_withParentEnergyEstimate__defaultOnce_537, v54);
      }

      if (didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_538 == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"not a root node energy estimate"];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent5 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didCreateChildEnergyEstimate:withParentEnergyEstimate:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent5 fromFunction:v34 fromLineNumber:990];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    correctionManager = [(PLAccountingEngine *)self correctionManager];
    entryDate = [estimateCopy entryDate];
    [correctionManager correctChildEnergyEstimate:estimateCopy withParentEnergyEstimate:energyEstimateCopy withNow:entryDate];
LABEL_36:

    distributionManager = [(PLAccountingEngine *)self distributionManager];
    entryDate2 = [estimateCopy entryDate];
    [distributionManager addEnergyEstimate:estimateCopy withNow:entryDate2];
  }
}

void *__76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled = result;
  return result;
}

void *__76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_521 = result;
  return result;
}

void *__76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_527(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_526 = result;
  return result;
}

void *__76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_532 = result;
  return result;
}

void *__76__PLAccountingEngine_didCreateChildEnergyEstimate_withParentEnergyEstimate___block_invoke_539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCreateChildEnergyEstimate_withParentEnergyEstimate__classDebugEnabled_538 = result;
  return result;
}

- (void)didDistributeEnergyEstimate:(id)estimate
{
  estimateCopy = estimate;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __50__PLAccountingEngine_didDistributeEnergyEstimate___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v5;
    if (didDistributeEnergyEstimate__defaultOnce_0 != -1)
    {
      dispatch_once(&didDistributeEnergyEstimate__defaultOnce_0, &block);
    }

    if (didDistributeEnergyEstimate__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@", estimateCopy, block, v18, v19, v20, v21];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didDistributeEnergyEstimate:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1003];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (estimateCopy)
  {
    correctionDate = [estimateCopy correctionDate];
    if (correctionDate)
    {
      v13 = correctionDate;
      isRootNodeEnergyAggregated = [estimateCopy isRootNodeEnergyAggregated];

      if ((isRootNodeEnergyAggregated & 1) == 0)
      {
        [(PLAccountingEngine *)self createAggregateRootNodeEnergyEntryWithEnergyEstimate:estimateCopy];
        qualificationManager = [(PLAccountingEngine *)self qualificationManager];
        distributionDate = [estimateCopy distributionDate];
        [qualificationManager addEnergyEstimate:estimateCopy withNow:distributionDate];
      }
    }
  }
}

void *__50__PLAccountingEngine_didDistributeEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didDistributeEnergyEstimate__classDebugEnabled_0 = result;
  return result;
}

- (void)didCorrectEnergyEstimate:(id)estimate
{
  estimateCopy = estimate;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __47__PLAccountingEngine_didCorrectEnergyEstimate___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v5;
    if (didCorrectEnergyEstimate__defaultOnce != -1)
    {
      dispatch_once(&didCorrectEnergyEstimate__defaultOnce, &block);
    }

    if (didCorrectEnergyEstimate__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@", estimateCopy, block, v18, v19, v20, v21];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didCorrectEnergyEstimate:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1017];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (estimateCopy)
  {
    distributionDate = [estimateCopy distributionDate];
    if (distributionDate)
    {
      v13 = distributionDate;
      isRootNodeEnergyAggregated = [estimateCopy isRootNodeEnergyAggregated];

      if ((isRootNodeEnergyAggregated & 1) == 0)
      {
        [(PLAccountingEngine *)self createAggregateRootNodeEnergyEntryWithEnergyEstimate:estimateCopy];
        qualificationManager = [(PLAccountingEngine *)self qualificationManager];
        correctionDate = [estimateCopy correctionDate];
        [qualificationManager addEnergyEstimate:estimateCopy withNow:correctionDate];
      }
    }
  }
}

void *__47__PLAccountingEngine_didCorrectEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didCorrectEnergyEstimate__classDebugEnabled = result;
  return result;
}

- (void)addQualificationEventIntervalWithLastQualificationEventForward:(id)forward withQualificationEventForward:(id)eventForward
{
  forwardCopy = forward;
  eventForwardCopy = eventForward;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__defaultOnce != -1)
    {
      dispatch_once(&addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__defaultOnce, block);
    }

    if (addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__classDebugEnabled == 1)
    {
      eventForwardCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastQualificationEventForward=%@, qualificationEventForward=%@", forwardCopy, eventForwardCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addQualificationEventIntervalWithLastQualificationEventForward:withQualificationEventForward:]"];
      [v10 logMessage:eventForwardCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1031];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (eventForwardCopy)
  {
    if (forwardCopy)
    {
      qualificationID = [forwardCopy qualificationID];
      qualificationID2 = [eventForwardCopy qualificationID];
      v17 = [qualificationID isEqual:qualificationID2];

      if (!v17)
      {
        goto LABEL_20;
      }

      qualificationManager = [(PLAccountingEngine *)self qualificationManager];
      qualificationID3 = [eventForwardCopy qualificationID];
      range = [eventForwardCopy range];
      startDate = [range startDate];
      [qualificationManager closeLastQualificationEventForwardWithQualificationID:qualificationID3 withEndDate:startDate];
    }

    v22 = [PLAccountingQualificationEventIntervalEntry alloc];
    qualificationID4 = [eventForwardCopy qualificationID];
    childNodeIDs = [eventForwardCopy childNodeIDs];
    range2 = [eventForwardCopy range];
    startDate2 = [range2 startDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v28 = [(PLAccountingQualificationEventIntervalEntry *)v22 initWithQualificationID:qualificationID4 withChildNodeIDs:childNodeIDs withStartDate:startDate2 withEndDate:distantFuture];

    [(PLEntry *)v28 setWriteToDB:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __115__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward___block_invoke_551;
      v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v37[4] = v29;
      if (addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__defaultOnce_549 != -1)
      {
        dispatch_once(&addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__defaultOnce_549, v37);
      }

      if (addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__classDebugEnabled_550 == 1)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEventIntervalOpen=%@", v28];
        v31 = MEMORY[0x277D3F178];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent2 = [v32 lastPathComponent];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addQualificationEventIntervalWithLastQualificationEventForward:withQualificationEventForward:]"];
        [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:1047];

        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    qualificationManager2 = [(PLAccountingEngine *)self qualificationManager];
    [qualificationManager2 addQualificationEvent:v28];
  }

LABEL_20:
}

void *__115__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__classDebugEnabled = result;
  return result;
}

void *__115__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward___block_invoke_551(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEventIntervalWithLastQualificationEventForward_withQualificationEventForward__classDebugEnabled_550 = result;
  return result;
}

- (void)addQualificationEventIntervalWithLastQualificationEventBackward:(id)backward withQualificationEventBackward:(id)eventBackward
{
  backwardCopy = backward;
  eventBackwardCopy = eventBackward;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__defaultOnce != -1)
    {
      dispatch_once(&addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__defaultOnce, block);
    }

    if (addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__classDebugEnabled == 1)
    {
      eventBackwardCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastQualificationEventBackward=%@, qualificationEventBackward=%@", backwardCopy, eventBackwardCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addQualificationEventIntervalWithLastQualificationEventBackward:withQualificationEventBackward:]"];
      [v10 logMessage:eventBackwardCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1055];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (backwardCopy)
  {
    if (eventBackwardCopy)
    {
      qualificationID = [backwardCopy qualificationID];
      qualificationID2 = [eventBackwardCopy qualificationID];
      v17 = [qualificationID isEqual:qualificationID2];

      if (v17)
      {
        v18 = [PLAccountingQualificationEventIntervalEntry alloc];
        qualificationID3 = [eventBackwardCopy qualificationID];
        childNodeIDs = [eventBackwardCopy childNodeIDs];
        range = [backwardCopy range];
        endDate = [range endDate];
        range2 = [eventBackwardCopy range];
        endDate2 = [range2 endDate];
        v25 = [(PLAccountingQualificationEventIntervalEntry *)v18 initWithQualificationID:qualificationID3 withChildNodeIDs:childNodeIDs withStartDate:endDate withEndDate:endDate2];

        [(PLEntry *)v25 setWriteToDB:0];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v26 = objc_opt_class();
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __117__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward___block_invoke_560;
          v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v34[4] = v26;
          if (addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__defaultOnce_558 != -1)
          {
            dispatch_once(&addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__defaultOnce_558, v34);
          }

          if (addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__classDebugEnabled_559 == 1)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEventInterval=%@", v25];
            v28 = MEMORY[0x277D3F178];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent2 = [v29 lastPathComponent];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addQualificationEventIntervalWithLastQualificationEventBackward:withQualificationEventBackward:]"];
            [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:1064];

            v32 = PLLogCommon();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        qualificationManager = [(PLAccountingEngine *)self qualificationManager];
        [qualificationManager addQualificationEvent:v25];
      }
    }
  }
}

void *__117__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__classDebugEnabled = result;
  return result;
}

void *__117__PLAccountingEngine_addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward___block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEventIntervalWithLastQualificationEventBackward_withQualificationEventBackward__classDebugEnabled_559 = result;
  return result;
}

- (void)addQualificationEventInterval:(id)interval
{
  intervalCopy = interval;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __52__PLAccountingEngine_addQualificationEventInterval___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (addQualificationEventInterval__defaultOnce != -1)
    {
      dispatch_once(&addQualificationEventInterval__defaultOnce, &block);
    }

    if (addQualificationEventInterval__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEventInterval=%@", intervalCopy, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addQualificationEventInterval:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1071];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  qualificationManager = [(PLAccountingEngine *)self qualificationManager];
  [qualificationManager addQualificationEvent:intervalCopy];
}

void *__52__PLAccountingEngine_addQualificationEventInterval___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEventInterval__classDebugEnabled = result;
  return result;
}

- (void)addQualificationEventPoint:(id)point
{
  pointCopy = point;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __49__PLAccountingEngine_addQualificationEventPoint___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (addQualificationEventPoint__defaultOnce != -1)
    {
      dispatch_once(&addQualificationEventPoint__defaultOnce, &block);
    }

    if (addQualificationEventPoint__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEventPoint=%@", pointCopy, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addQualificationEventPoint:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1077];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  qualificationManager = [(PLAccountingEngine *)self qualificationManager];
  [qualificationManager addQualificationEvent:pointCopy];
}

void *__49__PLAccountingEngine_addQualificationEventPoint___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEventPoint__classDebugEnabled = result;
  return result;
}

- (void)didQualifyEnergyEvent:(id)event withRootNodeID:(id)d withQualificationID:(id)iD
{
  eventCopy = event;
  dCopy = d;
  iDCopy = iD;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__PLAccountingEngine_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (didQualifyEnergyEvent_withRootNodeID_withQualificationID__defaultOnce_0 != -1)
    {
      dispatch_once(&didQualifyEnergyEvent_withRootNodeID_withQualificationID__defaultOnce_0, block);
    }

    if (didQualifyEnergyEvent_withRootNodeID_withQualificationID__classDebugEnabled_0 == 1)
    {
      iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEnergyEvent=%@, rootNodeID=%@, qualificationID=%@", eventCopy, dCopy, iDCopy];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didQualifyEnergyEvent:withRootNodeID:withQualificationID:]"];
      [v12 logMessage:iDCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:1086];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (eventCopy)
  {
    if ([dCopy intValue] >= 1 && objc_msgSend(iDCopy, "intValue") >= 1)
    {
      [eventCopy energy];
      v18 = v17;
      +[PLAccountingEngine minEnergy];
      if (v18 >= v19)
      {
        v20 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
        v21 = objc_alloc(MEMORY[0x277D3F190]);
        range = [eventCopy range];
        startDate = [range startDate];
        v40 = v20;
        v24 = [v21 initWithEntryKey:v20 withDate:startDate];

        nodeID = [eventCopy nodeID];
        [v24 setObject:nodeID forKeyedSubscript:*MEMORY[0x277D3F300]];

        [v24 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3F310]];
        [v24 setObject:iDCopy forKeyedSubscript:*MEMORY[0x277D3F308]];
        v26 = [MEMORY[0x277CCABB0] numberWithLong:llround(v18 * 1000.0)];
        [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277D3F2F8]];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v27 = objc_opt_class();
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __79__PLAccountingEngine_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke_573;
          v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v41[4] = v27;
          if (didQualifyEnergyEvent_withRootNodeID_withQualificationID__defaultOnce_571 != -1)
          {
            dispatch_once(&didQualifyEnergyEvent_withRootNodeID_withQualificationID__defaultOnce_571, v41);
          }

          if (didQualifyEnergyEvent_withRootNodeID_withQualificationID__classDebugEnabled_572 == 1)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntry=%@", v24];
            v29 = MEMORY[0x277D3F178];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent2 = [v30 lastPathComponent];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine didQualifyEnergyEvent:withRootNodeID:withQualificationID:]"];
            [v29 logMessage:v28 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:1102];

            v33 = PLLogCommon();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
        storage = [mEMORY[0x277D3F2A0] storage];
        range2 = [eventCopy range];
        startDate2 = [range2 startDate];
        range3 = [eventCopy range];
        endDate = [range3 endDate];
        [storage writeProportionateAggregateEntry:v24 withStartDate:startDate2 withEndDate:endDate];
      }
    }
  }
}

void *__79__PLAccountingEngine_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didQualifyEnergyEvent_withRootNodeID_withQualificationID__classDebugEnabled_0 = result;
  return result;
}

void *__79__PLAccountingEngine_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke_573(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didQualifyEnergyEvent_withRootNodeID_withQualificationID__classDebugEnabled_572 = result;
  return result;
}

- (id)getLastQualifiedEnergyEventDate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  qualificationManager = [(PLAccountingEngine *)self qualificationManager];
  workQueue = [qualificationManager workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PLAccountingEngine_getLastQualifiedEnergyEventDate__block_invoke;
  v7[3] = &unk_279A56010;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(workQueue, v7);

  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __53__PLAccountingEngine_getLastQualifiedEnergyEventDate__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) qualificationManager];
  v2 = [v5 lastQualifiedEnergyEventDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)workQueue
{
  v2 = MEMORY[0x277D3F258];
  v3 = objc_opt_class();

  return [v2 workQueueForClass:v3];
}

- (void)addEnergyMeasurementWithRootNodeID:(int)d withEnergy:(double)energy withRange:(id)range
{
  v6 = *&d;
  rangeCopy = range;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__PLAccountingEngine_addEnergyMeasurementWithRootNodeID_withEnergy_withRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (addEnergyMeasurementWithRootNodeID_withEnergy_withRange__defaultOnce != -1)
    {
      dispatch_once(&addEnergyMeasurementWithRootNodeID_withEnergy_withRange__defaultOnce, block);
    }

    if (addEnergyMeasurementWithRootNodeID_withEnergy_withRange__classDebugEnabled == 1)
    {
      rangeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeID=%i, energy=%f, range=%@", v6, *&energy, rangeCopy];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addEnergyMeasurementWithRootNodeID:withEnergy:withRange:]"];
      [v11 logMessage:rangeCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1151];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (energy >= 0.0)
  {
    v16 = [PLAccountingEnergyEventEntry alloc];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v18 = [(PLAccountingEnergyEventEntry *)v16 initWithNodeID:v17 withEnergy:rangeCopy withRange:0 withEntryDate:energy];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __78__PLAccountingEngine_addEnergyMeasurementWithRootNodeID_withEnergy_withRange___block_invoke_586;
      v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v27[4] = v19;
      if (addEnergyMeasurementWithRootNodeID_withEnergy_withRange__defaultOnce_584 != -1)
      {
        dispatch_once(&addEnergyMeasurementWithRootNodeID_withEnergy_withRange__defaultOnce_584, v27);
      }

      if (addEnergyMeasurementWithRootNodeID_withEnergy_withRange__classDebugEnabled_585 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"measurementEvent=%@", v18];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine addEnergyMeasurementWithRootNodeID:withEnergy:withRange:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:1158];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    correctionManager = [(PLAccountingEngine *)self correctionManager];
    [correctionManager addEnergyMeasurement:v18];
  }
}

void *__78__PLAccountingEngine_addEnergyMeasurementWithRootNodeID_withEnergy_withRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addEnergyMeasurementWithRootNodeID_withEnergy_withRange__classDebugEnabled = result;
  return result;
}

void *__78__PLAccountingEngine_addEnergyMeasurementWithRootNodeID_withEnergy_withRange___block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addEnergyMeasurementWithRootNodeID_withEnergy_withRange__classDebugEnabled_585 = result;
  return result;
}

- (void)chunkWithLastChunkDate:(id)date withNow:(id)now
{
  v92 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  nowCopy = now;
  v7 = 0x277D3F000uLL;
  v73 = dateCopy;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke;
    v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v88[4] = v8;
    if (chunkWithLastChunkDate_withNow__defaultOnce != -1)
    {
      dispatch_once(&chunkWithLastChunkDate_withNow__defaultOnce, v88);
    }

    if (chunkWithLastChunkDate_withNow__classDebugEnabled == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"lastChunkDate=%@, now=%@", dateCopy, nowCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine chunkWithLastChunkDate:withNow:]"];
      [v10 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1166];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      dateCopy = v73;
      v7 = 0x277D3F000uLL;
    }
  }

  if (nowCopy)
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = [objc_opt_class() deviceRootNodeIDs];
    v78 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v78)
    {
      v77 = *v85;
      selfCopy = self;
      do
      {
        v15 = 0;
        do
        {
          if (*v85 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v84 + 1) + 8 * v15);
          if ([*(v7 + 384) debugEnabled])
          {
            v17 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_595;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v17;
            if (chunkWithLastChunkDate_withNow__defaultOnce_593 != -1)
            {
              dispatch_once(&chunkWithLastChunkDate_withNow__defaultOnce_593, block);
            }

            if (chunkWithLastChunkDate_withNow__classDebugEnabled_594 == 1)
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeIDNumber=%@", v16];
              v19 = MEMORY[0x277D3F178];
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
              lastPathComponent2 = [v20 lastPathComponent];
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine chunkWithLastChunkDate:withNow:]"];
              [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:1170];

              v23 = PLLogCommon();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v90 = v18;
                _os_log_debug_impl(&dword_25EDCD000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          v24 = [&unk_2870F8888 objectAtIndexedSubscript:{objc_msgSend(v16, "intValue")}];
          intValue = [v24 intValue];

          if (intValue == 1)
          {
            mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
            storage = [mEMORY[0x277D3F2A0] storage];
            v28 = +[PLAccountingPowerEventForwardEntry entryKey];
            v29 = [storage lastEntryForKey:v28 withSubEntryKey:v16];

            if ([*(v7 + 384) debugEnabled])
            {
              v30 = objc_opt_class();
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_608;
              v82[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v82[4] = v30;
              if (chunkWithLastChunkDate_withNow__defaultOnce_606 != -1)
              {
                dispatch_once(&chunkWithLastChunkDate_withNow__defaultOnce_606, v82);
              }

              if (chunkWithLastChunkDate_withNow__classDebugEnabled_607 == 1)
              {
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastPowerEvent=%@", v29];
                v32 = MEMORY[0x277D3F178];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
                lastPathComponent3 = [v33 lastPathComponent];
                v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine chunkWithLastChunkDate:withNow:]"];
                [v32 logMessage:v31 fromFile:lastPathComponent3 fromFunction:v35 fromLineNumber:1178];

                v36 = PLLogCommon();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v90 = v31;
                  _os_log_debug_impl(&dword_25EDCD000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            if (v29)
            {
              range = [v29 range];
              startDate = [range startDate];
              v39 = startDate;
              if (dateCopy)
              {
                v40 = [startDate laterDate:dateCopy];

                v39 = v40;
              }

              v41 = [PLAccountingRange rangeWithStartDate:v39 withEndDate:nowCopy];
              if ([*(v7 + 384) debugEnabled])
              {
                v42 = objc_opt_class();
                v81[0] = MEMORY[0x277D85DD0];
                v81[1] = 3221225472;
                v81[2] = __53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_614;
                v81[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v81[4] = v42;
                if (chunkWithLastChunkDate_withNow__defaultOnce_612 != -1)
                {
                  dispatch_once(&chunkWithLastChunkDate_withNow__defaultOnce_612, v81);
                }

                if (chunkWithLastChunkDate_withNow__classDebugEnabled_613 == 1)
                {
                  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"range=%@", v41];
                  v44 = MEMORY[0x277D3F178];
                  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
                  lastPathComponent4 = [v45 lastPathComponent];
                  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine chunkWithLastChunkDate:withNow:]"];
                  [v44 logMessage:v43 fromFile:lastPathComponent4 fromFunction:v47 fromLineNumber:1187];

                  v48 = PLLogCommon();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v90 = v43;
                    _os_log_debug_impl(&dword_25EDCD000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v7 = 0x277D3F000uLL;
                }
              }

              [v41 length];
              v50 = v49;
              [v29 power];
              v52 = v50 * v51 / 3600.0;
              if ([*(v7 + 384) debugEnabled])
              {
                v53 = objc_opt_class();
                v80[0] = MEMORY[0x277D85DD0];
                v80[1] = 3221225472;
                v80[2] = __53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_617;
                v80[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v80[4] = v53;
                if (chunkWithLastChunkDate_withNow__defaultOnce_615 != -1)
                {
                  dispatch_once(&chunkWithLastChunkDate_withNow__defaultOnce_615, v80);
                }

                if (chunkWithLastChunkDate_withNow__classDebugEnabled_616 == 1)
                {
                  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"energy=%f", *&v52];
                  v55 = MEMORY[0x277D3F178];
                  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
                  lastPathComponent5 = [v56 lastPathComponent];
                  v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine chunkWithLastChunkDate:withNow:]"];
                  [v55 logMessage:v54 fromFile:lastPathComponent5 fromFunction:v58 fromLineNumber:1190];

                  v59 = PLLogCommon();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v90 = v54;
                    _os_log_debug_impl(&dword_25EDCD000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }
                }
              }

              v60 = [PLAccountingEnergyEstimateEventEntry alloc];
              rootNodeID = [v29 rootNodeID];
              rootNodeID2 = [v29 rootNodeID];
              v63 = [(PLAccountingEnergyEstimateEventEntry *)v60 initWithNodeID:rootNodeID withRootNodeID:rootNodeID2 withParentEntryID:0 withNumAncestors:0 withEnergy:v41 withRange:nowCopy withEntryDate:v52];

              [(PLAccountingEngine *)selfCopy didCreateChildEnergyEstimate:v63 withParentEnergyEstimate:0];
              v7 = 0x277D3F000uLL;
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v64 = objc_opt_class();
                v79[0] = MEMORY[0x277D85DD0];
                v79[1] = 3221225472;
                v79[2] = __53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_620;
                v79[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v79[4] = v64;
                if (chunkWithLastChunkDate_withNow__defaultOnce_618 != -1)
                {
                  dispatch_once(&chunkWithLastChunkDate_withNow__defaultOnce_618, v79);
                }

                if (chunkWithLastChunkDate_withNow__classDebugEnabled_619 == 1)
                {
                  v65 = MEMORY[0x277CCACA8];
                  range2 = [v29 range];
                  v67 = [v65 stringWithFormat:@"after range adjustment: lastPowerEvent.range=%@", range2];

                  v68 = MEMORY[0x277D3F178];
                  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
                  lastPathComponent6 = [v69 lastPathComponent];
                  v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine chunkWithLastChunkDate:withNow:]"];
                  [v68 logMessage:v67 fromFile:lastPathComponent6 fromFunction:v71 fromLineNumber:1202];

                  v72 = PLLogCommon();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v90 = v67;
                    _os_log_debug_impl(&dword_25EDCD000, v72, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  dateCopy = v73;
                  v7 = 0x277D3F000;
                }
              }
            }
          }

          ++v15;
        }

        while (v78 != v15);
        v78 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v78);
    }
  }
}

void *__53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  chunkWithLastChunkDate_withNow__classDebugEnabled = result;
  return result;
}

void *__53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_595(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  chunkWithLastChunkDate_withNow__classDebugEnabled_594 = result;
  return result;
}

void *__53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_608(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  chunkWithLastChunkDate_withNow__classDebugEnabled_607 = result;
  return result;
}

void *__53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_614(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  chunkWithLastChunkDate_withNow__classDebugEnabled_613 = result;
  return result;
}

void *__53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_617(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  chunkWithLastChunkDate_withNow__classDebugEnabled_616 = result;
  return result;
}

void *__53__PLAccountingEngine_chunkWithLastChunkDate_withNow___block_invoke_620(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  chunkWithLastChunkDate_withNow__classDebugEnabled_619 = result;
  return result;
}

- (void)reload
{
  workQueue = [(PLAccountingEngine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PLAccountingEngine_reload__block_invoke;
  block[3] = &unk_279A55E80;
  block[4] = self;
  dispatch_async_and_wait(workQueue, block);
}

void __28__PLAccountingEngine_reload__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PLAccountingEngine_reload__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_18_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_18_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_18_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reload]_block_invoke"];
      [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:1210];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v9 = [MEMORY[0x277D3F258] deviceBootTime];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __28__PLAccountingEngine_reload__block_invoke_626;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v10;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_18_defaultOnce_624 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_18_defaultOnce_624, v25);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_18_classDebugEnabled_625 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDeviceBootDate=%@", v9];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reload]_block_invoke_2"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1214];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  [*(a1 + 32) reloadLastPowerEventsWithLastDeviceBootDate:v9];
  [*(a1 + 32) reloadLastDistributionEventsWithLastDeviceBootDate:v9];
  [*(a1 + 32) reloadLastQualificationEventsWithLastDeviceBootDate:v9];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __28__PLAccountingEngine_reload__block_invoke_633;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v17;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_18_defaultOnce_631 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_18_defaultOnce_631, v24);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_18_classDebugEnabled_632 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reload]_block_invoke_2"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1221];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__28__PLAccountingEngine_reload__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_18_classDebugEnabled = result;
  return result;
}

void *__28__PLAccountingEngine_reload__block_invoke_626(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_18_classDebugEnabled_625 = result;
  return result;
}

void *__28__PLAccountingEngine_reload__block_invoke_633(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_18_classDebugEnabled_632 = result;
  return result;
}

- (void)reloadLastPowerEventsWithLastDeviceBootDate:(id)date
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = 0x277D3F000uLL;
  v5 = &__block_descriptor_40_e5_v8__0lu32l8;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __66__PLAccountingEngine_reloadLastPowerEventsWithLastDeviceBootDate___block_invoke;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v6;
    if (reloadLastPowerEventsWithLastDeviceBootDate__defaultOnce != -1)
    {
      dispatch_once(&reloadLastPowerEventsWithLastDeviceBootDate__defaultOnce, v49);
    }

    if (reloadLastPowerEventsWithLastDeviceBootDate__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastPowerEventsWithLastDeviceBootDate:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:1226];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  launchDate = [mEMORY[0x277D3F2A0] launchDate];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  deviceRootNodeIDs = [objc_opt_class() deviceRootNodeIDs];
  v42 = [deviceRootNodeIDs countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v42)
  {
    v41 = *v46;
    v39 = deviceRootNodeIDs;
    v40 = launchDate;
    do
    {
      v16 = 0;
      do
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(deviceRootNodeIDs);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        if ([*(v4 + 384) debugEnabled])
        {
          v18 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __66__PLAccountingEngine_reloadLastPowerEventsWithLastDeviceBootDate___block_invoke_639;
          block[3] = v5;
          block[4] = v18;
          if (reloadLastPowerEventsWithLastDeviceBootDate__defaultOnce_637 != -1)
          {
            dispatch_once(&reloadLastPowerEventsWithLastDeviceBootDate__defaultOnce_637, block);
          }

          if (reloadLastPowerEventsWithLastDeviceBootDate__classDebugEnabled_638 == 1)
          {
            v19 = v4;
            selfCopy = self;
            v21 = v5;
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeIDNumber=%@", v17];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent2 = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastPowerEventsWithLastDeviceBootDate:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:1230];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v51 = v22;
              _os_log_debug_impl(&dword_25EDCD000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v5 = v21;
            self = selfCopy;
            v4 = v19;
            deviceRootNodeIDs = v39;
            launchDate = v40;
          }
        }

        intValue = [v17 intValue];
        v29 = [&unk_2870F88A0 objectAtIndexedSubscript:intValue];
        intValue2 = [v29 intValue];

        switch(intValue2)
        {
          case 3:
            distantPast = [MEMORY[0x277CBEAA8] distantPast];
            [(PLAccountingEngine *)self createPowerEventIntervalWithRootNodeID:intValue withPower:distantPast withStartDate:launchDate withEndDate:0.0];

            break;
          case 2:
            [(PLAccountingEngine *)self createPowerEventBackwardWithRootNodeID:intValue withPower:launchDate withEndDate:0.0];
            break;
          case 1:
            [(PLAccountingEngine *)self createPowerEventForwardWithRootNodeID:intValue withPower:launchDate withStartDate:0.0];
            break;
        }

        ++v16;
      }

      while (v42 != v16);
      v42 = [deviceRootNodeIDs countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v42);
  }

  if ([*(v4 + 384) debugEnabled])
  {
    v32 = objc_opt_class();
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __66__PLAccountingEngine_reloadLastPowerEventsWithLastDeviceBootDate___block_invoke_645;
    v43[3] = v5;
    v43[4] = v32;
    if (reloadLastPowerEventsWithLastDeviceBootDate__defaultOnce_643 != -1)
    {
      dispatch_once(&reloadLastPowerEventsWithLastDeviceBootDate__defaultOnce_643, v43);
    }

    if (reloadLastPowerEventsWithLastDeviceBootDate__classDebugEnabled_644 == 1)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent3 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastPowerEventsWithLastDeviceBootDate:]"];
      [v34 logMessage:v33 fromFile:lastPathComponent3 fromFunction:v37 fromLineNumber:1252];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__66__PLAccountingEngine_reloadLastPowerEventsWithLastDeviceBootDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastPowerEventsWithLastDeviceBootDate__classDebugEnabled = result;
  return result;
}

void *__66__PLAccountingEngine_reloadLastPowerEventsWithLastDeviceBootDate___block_invoke_639(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastPowerEventsWithLastDeviceBootDate__classDebugEnabled_638 = result;
  return result;
}

void *__66__PLAccountingEngine_reloadLastPowerEventsWithLastDeviceBootDate___block_invoke_645(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastPowerEventsWithLastDeviceBootDate__classDebugEnabled_644 = result;
  return result;
}

- (void)reloadLastDistributionEventsWithLastDeviceBootDate:(id)date
{
  selfCopy5 = self;
  v65 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke;
    v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v60[4] = v4;
    if (reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce != -1)
    {
      dispatch_once(&reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce, v60);
    }

    if (reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastDistributionEventsWithLastDeviceBootDate:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1256];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      selfCopy5 = self;
    }
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  launchDate = [mEMORY[0x277D3F2A0] launchDate];

  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = 0u;
  obj = [objc_opt_class() allDistributionIDs];
  v51 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v51)
  {
    v49 = *MEMORY[0x277D3F410];
    v50 = *v57;
    do
    {
      v12 = 0;
      do
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v14 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke_648;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v14;
          if (reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce_646 != -1)
          {
            dispatch_once(&reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce_646, block);
          }

          if (reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled_647 == 1)
          {
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionIDNumber=%@", v13];
            v16 = MEMORY[0x277D3F178];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent2 = [v17 lastPathComponent];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastDistributionEventsWithLastDeviceBootDate:]"];
            [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:1260];

            v20 = PLLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v63 = v15;
              _os_log_debug_impl(&dword_25EDCD000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            selfCopy5 = self;
          }
        }

        intValue = [v13 intValue];
        v21 = [&unk_2870F88B8 objectAtIndexedSubscript:intValue];
        intValue2 = [v21 intValue];

        v23 = off_279A55958;
        if (intValue2 == 1)
        {
          goto LABEL_23;
        }

        if ((intValue2 - 2) <= 2)
        {
          v23 = off_279A56030[intValue2 - 2];
LABEL_23:
          entryKey = [(__objc2_class *)*v23 entryKey];
          goto LABEL_25;
        }

        entryKey = 0;
LABEL_25:
        v25 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:v49 withValue:v13 withComparisonOperation:0];
        mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
        storage = [mEMORY[0x277D3F2A0]2 storage];
        v61 = v25;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        v29 = [storage lastEntryForKey:entryKey withComparisons:v28 isSingleton:0];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v30 = objc_opt_class();
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke_658;
          v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v54[4] = v30;
          if (reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce_656 != -1)
          {
            dispatch_once(&reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce_656, v54);
          }

          if (reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled_657 == 1)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDistributionEvent=%@", v29];
            v32 = MEMORY[0x277D3F178];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent3 = [v33 lastPathComponent];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastDistributionEventsWithLastDeviceBootDate:]"];
            [v32 logMessage:v31 fromFile:lastPathComponent3 fromFunction:v35 fromLineNumber:1285];

            v36 = PLLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v63 = v31;
              _os_log_debug_impl(&dword_25EDCD000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            selfCopy5 = self;
          }
        }

        if (v29)
        {
          if (intValue2 == 1)
          {
            [(PLAccountingEngine *)selfCopy5 addDistributionEventIntervalWithLastDistributionEventForward:0 withDistributionEventForward:v29];
          }
        }

        else
        {
          switch(intValue2)
          {
            case 1:
              [(PLAccountingEngine *)selfCopy5 createDistributionEventForwardWithDistributionID:intValue withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:launchDate];
              break;
            case 4:
              [(PLAccountingEngine *)selfCopy5 createDistributionEventPointWithDistributionID:intValue withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:launchDate];
              break;
            case 3:
              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              [(PLAccountingEngine *)self createDistributionEventIntervalWithDistributionID:intValue withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:distantPast withEndDate:launchDate];

              selfCopy5 = self;
              break;
            case 2:
              [(PLAccountingEngine *)selfCopy5 createDistributionEventBackwardWithDistributionID:intValue withChildNodeNameToWeight:MEMORY[0x277CBEC10] withEndDate:launchDate];
              break;
          }
        }

        ++v12;
      }

      while (v51 != v12);
      v38 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      v51 = v38;
    }

    while (v38);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v39 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke_664;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v39;
    if (reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce_662 != -1)
    {
      dispatch_once(&reloadLastDistributionEventsWithLastDeviceBootDate__defaultOnce_662, v53);
    }

    if (reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled_663 == 1)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent4 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastDistributionEventsWithLastDeviceBootDate:]"];
      [v41 logMessage:v40 fromFile:lastPathComponent4 fromFunction:v44 fromLineNumber:1317];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled = result;
  return result;
}

void *__73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke_648(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled_647 = result;
  return result;
}

void *__73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke_658(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled_657 = result;
  return result;
}

void *__73__PLAccountingEngine_reloadLastDistributionEventsWithLastDeviceBootDate___block_invoke_664(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastDistributionEventsWithLastDeviceBootDate__classDebugEnabled_663 = result;
  return result;
}

- (void)reloadLastQualificationEventsWithLastDeviceBootDate:(id)date
{
  selfCopy5 = self;
  v65 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke;
    v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v60[4] = v4;
    if (reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce != -1)
    {
      dispatch_once(&reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce, v60);
    }

    if (reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"begin"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastQualificationEventsWithLastDeviceBootDate:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1321];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      selfCopy5 = self;
    }
  }

  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  launchDate = [mEMORY[0x277D3F2A0] launchDate];

  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = 0u;
  obj = [objc_opt_class() allQualificationIDs];
  v51 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v51)
  {
    v49 = *MEMORY[0x277D3F458];
    v50 = *v57;
    do
    {
      v12 = 0;
      do
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v14 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke_667;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v14;
          if (reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce_665 != -1)
          {
            dispatch_once(&reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce_665, block);
          }

          if (reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled_666 == 1)
          {
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationIDNumber=%@", v13];
            v16 = MEMORY[0x277D3F178];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent2 = [v17 lastPathComponent];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastQualificationEventsWithLastDeviceBootDate:]"];
            [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:1325];

            v20 = PLLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v63 = v15;
              _os_log_debug_impl(&dword_25EDCD000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            selfCopy5 = self;
          }
        }

        intValue = [v13 intValue];
        v21 = [&unk_2870F88D0 objectAtIndexedSubscript:intValue];
        intValue2 = [v21 intValue];

        v23 = off_279A559E0;
        if (intValue2 == 1)
        {
          goto LABEL_23;
        }

        if ((intValue2 - 2) <= 2)
        {
          v23 = off_279A56048[intValue2 - 2];
LABEL_23:
          entryKey = [(__objc2_class *)*v23 entryKey];
          goto LABEL_25;
        }

        entryKey = 0;
LABEL_25:
        v25 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:v49 withValue:v13 withComparisonOperation:0];
        mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
        storage = [mEMORY[0x277D3F2A0]2 storage];
        v61 = v25;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        v29 = [storage lastEntryForKey:entryKey withComparisons:v28 isSingleton:0];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v30 = objc_opt_class();
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke_676;
          v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v54[4] = v30;
          if (reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce_674 != -1)
          {
            dispatch_once(&reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce_674, v54);
          }

          if (reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled_675 == 1)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastQualificationEvent=%@", v29];
            v32 = MEMORY[0x277D3F178];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
            lastPathComponent3 = [v33 lastPathComponent];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastQualificationEventsWithLastDeviceBootDate:]"];
            [v32 logMessage:v31 fromFile:lastPathComponent3 fromFunction:v35 fromLineNumber:1350];

            v36 = PLLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v63 = v31;
              _os_log_debug_impl(&dword_25EDCD000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            selfCopy5 = self;
          }
        }

        if (v29)
        {
          if (intValue2 == 1)
          {
            [(PLAccountingEngine *)selfCopy5 addQualificationEventIntervalWithLastQualificationEventForward:0 withQualificationEventForward:v29];
          }
        }

        else
        {
          switch(intValue2)
          {
            case 1:
              [(PLAccountingEngine *)selfCopy5 createQualificationEventForwardWithQualificationID:intValue withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:launchDate];
              break;
            case 4:
              [(PLAccountingEngine *)selfCopy5 createQualificationEventPointWithQualificationID:intValue withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:launchDate];
              break;
            case 3:
              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              [(PLAccountingEngine *)self createQualificationEventIntervalWithQualificationID:intValue withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:distantPast withEndDate:launchDate];

              selfCopy5 = self;
              break;
            case 2:
              [(PLAccountingEngine *)selfCopy5 createQualificationEventBackwardWithQualificationID:intValue withChildNodeNames:MEMORY[0x277CBEBF8] withEndDate:launchDate];
              break;
          }
        }

        ++v12;
      }

      while (v51 != v12);
      v38 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      v51 = v38;
    }

    while (v38);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v39 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke_682;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v39;
    if (reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce_680 != -1)
    {
      dispatch_once(&reloadLastQualificationEventsWithLastDeviceBootDate__defaultOnce_680, v53);
    }

    if (reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled_681 == 1)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"end"];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent4 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine reloadLastQualificationEventsWithLastDeviceBootDate:]"];
      [v41 logMessage:v40 fromFile:lastPathComponent4 fromFunction:v44 fromLineNumber:1382];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled = result;
  return result;
}

void *__74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke_667(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled_666 = result;
  return result;
}

void *__74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke_676(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled_675 = result;
  return result;
}

void *__74__PLAccountingEngine_reloadLastQualificationEventsWithLastDeviceBootDate___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadLastQualificationEventsWithLastDeviceBootDate__classDebugEnabled_681 = result;
  return result;
}

- (void)createAggregateRootNodeEnergyEntryWithEnergyEstimate:(id)estimate
{
  estimateCopy = estimate;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__PLAccountingEngine_createAggregateRootNodeEnergyEntryWithEnergyEstimate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (createAggregateRootNodeEnergyEntryWithEnergyEstimate__defaultOnce != -1)
    {
      dispatch_once(&createAggregateRootNodeEnergyEntryWithEnergyEstimate__defaultOnce, block);
    }

    if (createAggregateRootNodeEnergyEntryWithEnergyEstimate__classDebugEnabled == 1)
    {
      estimateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@", estimateCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createAggregateRootNodeEnergyEntryWithEnergyEstimate:]"];
      [v7 logMessage:estimateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:1386];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  [estimateCopy terminationRatio];
  v13 = v12;
  [estimateCopy energy];
  v15 = v14;
  [estimateCopy correctionEnergy];
  v17 = v13 * (v15 + v16);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __75__PLAccountingEngine_createAggregateRootNodeEnergyEntryWithEnergyEstimate___block_invoke_685;
    v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v52[4] = v18;
    if (createAggregateRootNodeEnergyEntryWithEnergyEstimate__defaultOnce_683 != -1)
    {
      dispatch_once(&createAggregateRootNodeEnergyEntryWithEnergyEstimate__defaultOnce_683, v52);
    }

    if (createAggregateRootNodeEnergyEntryWithEnergyEstimate__classDebugEnabled_684 == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"totalTerminalEnergy=%f", *&v17];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createAggregateRootNodeEnergyEntryWithEnergyEstimate:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:1389];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  +[PLAccountingEngine minEnergy];
  if (v17 >= v25 && (([MEMORY[0x277D3F258] gasGaugeEnabled] & 1) != 0 || !-[PLAccountingEngine pluggedIn](self, "pluggedIn")))
  {
    v26 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
    v27 = objc_alloc(MEMORY[0x277D3F190]);
    range = [estimateCopy range];
    startDate = [range startDate];
    v30 = [v27 initWithEntryKey:v26 withDate:startDate];

    nodeID = [estimateCopy nodeID];
    [v30 setObject:nodeID forKeyedSubscript:*MEMORY[0x277D3F328]];

    rootNodeID = [estimateCopy rootNodeID];
    [v30 setObject:rootNodeID forKeyedSubscript:*MEMORY[0x277D3F330]];

    v33 = [MEMORY[0x277CCABB0] numberWithLong:llround(v17 * 1000.0)];
    [v30 setObject:v33 forKeyedSubscript:*MEMORY[0x277D3F320]];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = objc_opt_class();
      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __75__PLAccountingEngine_createAggregateRootNodeEnergyEntryWithEnergyEstimate___block_invoke_691;
      v50 = &__block_descriptor_40_e5_v8__0lu32l8;
      v51 = v34;
      if (createAggregateRootNodeEnergyEntryWithEnergyEstimate__defaultOnce_689 != -1)
      {
        dispatch_once(&createAggregateRootNodeEnergyEntryWithEnergyEstimate__defaultOnce_689, &v47);
      }

      if (createAggregateRootNodeEnergyEntryWithEnergyEstimate__classDebugEnabled_690 == 1)
      {
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyEntry=%@", v30, v47, v48, v49, v50, v51];
        v36 = MEMORY[0x277D3F178];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
        lastPathComponent3 = [v37 lastPathComponent];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEngine createAggregateRootNodeEnergyEntryWithEnergyEstimate:]"];
        [v36 logMessage:v35 fromFile:lastPathComponent3 fromFunction:v39 fromLineNumber:1401];

        v40 = PLLogCommon();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    range2 = [estimateCopy range];
    startDate2 = [range2 startDate];
    range3 = [estimateCopy range];
    endDate = [range3 endDate];
    [storage writeProportionateAggregateEntry:v30 withStartDate:startDate2 withEndDate:endDate];

    [estimateCopy setIsRootNodeEnergyAggregated:1];
  }
}

void *__75__PLAccountingEngine_createAggregateRootNodeEnergyEntryWithEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createAggregateRootNodeEnergyEntryWithEnergyEstimate__classDebugEnabled = result;
  return result;
}

void *__75__PLAccountingEngine_createAggregateRootNodeEnergyEntryWithEnergyEstimate___block_invoke_685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createAggregateRootNodeEnergyEntryWithEnergyEstimate__classDebugEnabled_684 = result;
  return result;
}

void *__75__PLAccountingEngine_createAggregateRootNodeEnergyEntryWithEnergyEstimate___block_invoke_691(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  createAggregateRootNodeEnergyEntryWithEnergyEstimate__classDebugEnabled_690 = result;
  return result;
}

+ (void)clearWithEntryKey:(id)key
{
  keyCopy = key;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLAccountingEngine_clearWithEntryKey___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (clearWithEntryKey__defaultOnce != -1)
    {
      dispatch_once(&clearWithEntryKey__defaultOnce, block);
    }

    if (clearWithEntryKey__classDebugEnabled == 1)
    {
      keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"entryKey=%@", keyCopy];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingEngine.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingEngine clearWithEntryKey:]"];
      [v6 logMessage:keyCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:1411];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM '%@'", keyCopy];;
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  connection = [storage connection];
  v15 = [connection performQuery:keyCopy2];

  if ([MEMORY[0x277D3F198] hasDynamicKeysForEntryKey:keyCopy])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM '%@_%@'", keyCopy, *MEMORY[0x277D3F5C0]];;

    mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
    storage2 = [mEMORY[0x277D3F2A0]2 storage];
    connection2 = [storage2 connection];
    v20 = [connection2 performQuery:v16];

    keyCopy2 = v16;
  }
}

void *__40__PLAccountingEngine_clearWithEntryKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  clearWithEntryKey__classDebugEnabled = result;
  return result;
}

+ (id)normalizeWeights:(id)weights
{
  v37 = *MEMORY[0x277D85DE8];
  weightsCopy = weights;
  v4 = weightsCopy;
  if (!weightsCopy || ![weightsCopy count])
  {
    v25 = v4;
LABEL_25:
    dictionary = v25;
    goto LABEL_26;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v6)
  {

LABEL_24:
    v25 = v5;
    goto LABEL_25;
  }

  v7 = v6;
  v8 = *v32;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [v5 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * i)];
      [v11 doubleValue];
      v9 = v9 + v12;
    }

    v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v7);

  if (v9 <= 0.0 || v9 == 1.0)
  {
    goto LABEL_24;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        v21 = MEMORY[0x277CCABB0];
        v22 = [v15 objectForKeyedSubscript:{v20, v27}];
        [v22 doubleValue];
        v24 = [v21 numberWithDouble:v23 / v9];
        [dictionary setObject:v24 forKeyedSubscript:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

LABEL_26:

  return dictionary;
}

@end