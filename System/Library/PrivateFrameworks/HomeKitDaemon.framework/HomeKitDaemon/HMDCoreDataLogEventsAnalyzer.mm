@interface HMDCoreDataLogEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDCoreDataLogEventsAnalyzer)initWithDataSource:(id)source;
- (id)addTTRThresholdTrigger:(id)trigger atThreshold:(int64_t)threshold displayReason:(id)reason forEventName:(id)name;
- (void)handleCloudKitOperationEvent:(id)event;
- (void)handleCloudStoreTransactionEvent:(id)event;
- (void)handleWorkingStoreTransactionEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)resetAggregationAnalysisContext;
- (void)runDailyTask;
@end

@implementation HMDCoreDataLogEventsAnalyzer

- (void)runDailyTask
{
  cloudStoreReasonsEventGroup = [(HMDCoreDataLogEventsAnalyzer *)self cloudStoreReasonsEventGroup];
  eventCounters = [cloudStoreReasonsEventGroup eventCounters];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HMDCoreDataLogEventsAnalyzer_runDailyTask__block_invoke;
  v6[3] = &unk_2786845B8;
  v6[4] = self;
  [eventCounters enumerateKeysAndObjectsUsingBlock:v6];
  cloudStoreReasonsEventGroup2 = [(HMDCoreDataLogEventsAnalyzer *)self cloudStoreReasonsEventGroup];
  [cloudStoreReasonsEventGroup2 resetEventCounters];
}

void __44__HMDCoreDataLogEventsAnalyzer_runDailyTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v4 logEventSubmitter];
  v7 = [HMDCoreDataCloudStoreReasonsDailyLogEvent alloc];
  v8 = [v5 unsignedIntegerValue];

  v9 = [(HMDCoreDataCloudStoreReasonsDailyLogEvent *)v7 initWithReason:v6 reasonCount:v8];
  [v10 submitLogEvent:v9];
}

- (void)resetAggregationAnalysisContext
{
  aggregationEventGroup = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [aggregationEventGroup resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  aggregationEventGroup = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [eventCopy setCloudStoreCoreDataTransactionCount:{objc_msgSend(aggregationEventGroup, "fetchEventCounterForEventName:forDate:", @"CloudStoreCommitCount", dateCopy)}];

  aggregationEventGroup2 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [eventCopy setWorkingStoreCoreDataTransactionCount:{objc_msgSend(aggregationEventGroup2, "fetchEventCounterForEventName:forDate:", @"WorkingStoreCommitCount", dateCopy)}];

  aggregationEventGroup3 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [eventCopy setCoreDataCloudKitImportCount:{objc_msgSend(aggregationEventGroup3, "fetchEventCounterForEventName:forDate:", @"CloudKitImportCount", dateCopy)}];

  aggregationEventGroup4 = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  v11 = [aggregationEventGroup4 fetchEventCounterForEventName:@"CloudKitExportCount" forDate:dateCopy];

  [eventCopy setCoreDataCloudKitExportCount:v11];
}

- (void)handleCloudKitOperationEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    operationType = [eventCopy operationType];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing HMDCoreDataCloudKitOperationLogEvent, operationType: %lu", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  operationType2 = [eventCopy operationType];
  if (operationType2 == 1)
  {
    v10 = @"CloudKitImportCount";
    goto LABEL_7;
  }

  if (operationType2 == 2)
  {
    v10 = @"CloudKitExportCount";
LABEL_7:
    aggregationEventGroup = [(HMDCoreDataLogEventsAnalyzer *)selfCopy aggregationEventGroup];
    [aggregationEventGroup incrementEventCounterForEventName:v10];
  }
}

- (void)handleWorkingStoreTransactionEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    transactionAuthor = [eventCopy transactionAuthor];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = transactionAuthor;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing HMDCoreDataWorkingStoreTransactionLogEvent, author: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  aggregationEventGroup = [(HMDCoreDataLogEventsAnalyzer *)selfCopy aggregationEventGroup];
  [aggregationEventGroup incrementEventCounterForEventName:@"WorkingStoreCommitCount"];
}

- (void)handleCloudStoreTransactionEvent:(id)event
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  aggregationEventGroup = [(HMDCoreDataLogEventsAnalyzer *)self aggregationEventGroup];
  [aggregationEventGroup incrementEventCounterForEventName:@"CloudStoreCommitCount"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [eventCopy reasons];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 138543874;
    v22 = v7;
    do
    {
      v10 = 0;
      v23 = v8;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        reasons = [eventCopy reasons];
        v13 = [reasons countForObject:v11];

        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v17 = v9;
          v18 = eventCopy;
          v20 = v19 = self;
          *buf = v22;
          v30 = v20;
          v31 = 2112;
          v32 = v11;
          v33 = 2048;
          v34 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing HMDCoreDataCloudStoreTransactionLogEvent with reason: %@ reasonCount: %lu", buf, 0x20u);

          self = v19;
          eventCopy = v18;
          v9 = v17;
          v8 = v23;
        }

        objc_autoreleasePoolPop(v14);
        cloudStoreReasonsEventGroup = [(HMDCoreDataLogEventsAnalyzer *)selfCopy cloudStoreReasonsEventGroup];
        [cloudStoreReasonsEventGroup incrementEventCounterForEventName:v11 withValue:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDCoreDataLogEventsAnalyzer *)self handleWorkingStoreTransactionEvent:v5];
  }

  else
  {
    v6 = eventCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      [(HMDCoreDataLogEventsAnalyzer *)self handleCloudStoreTransactionEvent:v8];
    }

    else
    {
      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11)
      {
        [(HMDCoreDataLogEventsAnalyzer *)self handleCloudKitOperationEvent:v11];
      }
    }
  }
}

- (id)addTTRThresholdTrigger:(id)trigger atThreshold:(int64_t)threshold displayReason:(id)reason forEventName:(id)name
{
  nameCopy = name;
  reasonCopy = reason;
  triggerCopy = trigger;
  v12 = [HMDCounterThresholdTTRTrigger alloc];
  radarInitiator = [triggerCopy radarInitiator];
  v14 = [(HMDCounterThresholdTTRTrigger *)v12 initWithThreshold:threshold displayReason:reasonCopy radarInitiator:radarInitiator];

  legacyCountersManager = [triggerCopy legacyCountersManager];

  [legacyCountersManager addObserver:v14 forEventName:nameCopy requestGroup:@"CoreDataAggregationEventGroup"];

  return v14;
}

- (HMDCoreDataLogEventsAnalyzer)initWithDataSource:(id)source
{
  v28[3] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v27.receiver = self;
  v27.super_class = HMDCoreDataLogEventsAnalyzer;
  v5 = [(HMDCoreDataLogEventsAnalyzer *)&v27 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    countersManager = v5->_countersManager;
    v5->_countersManager = legacyCountersManager;

    logEventSubmitter = [sourceCopy logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = logEventSubmitter;

    legacyCountersManager2 = [sourceCopy legacyCountersManager];
    v11 = [legacyCountersManager2 counterGroupForName:@"CoreDataAggregationEventGroup"];
    aggregationEventGroup = v5->_aggregationEventGroup;
    v5->_aggregationEventGroup = v11;

    legacyCountersManager3 = [sourceCopy legacyCountersManager];
    v14 = [legacyCountersManager3 counterGroupForName:@"CoreDataCloudStoreReasonsGroup"];
    cloudStoreReasonsEventGroup = v5->_cloudStoreReasonsEventGroup;
    v5->_cloudStoreReasonsEventGroup = v14;

    [sourceCopy addThresholdTrigger:@"coreDataCloudStoreCommitCount" forEventName:@"CloudStoreCommitCount" requestGroup:@"CoreDataAggregationEventGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"cloudKitImportCount" forEventName:@"CloudKitImportCount" requestGroup:@"CoreDataAggregationEventGroup" atThreshold:10];
    [sourceCopy addThresholdTrigger:@"cloudKitExportCount" forEventName:@"CloudKitExportCount" requestGroup:@"CoreDataAggregationEventGroup" atThreshold:50];
    radarInitiator = [sourceCopy radarInitiator];

    if (radarInitiator)
    {
      v17 = [(HMDCoreDataLogEventsAnalyzer *)v5 addTTRThresholdTrigger:sourceCopy atThreshold:10000 displayReason:@"we detected excessive working store commits" forEventName:@"WorkingStoreCommitCount"];
      workingStoreCommitTTRTrigger = v5->_workingStoreCommitTTRTrigger;
      v5->_workingStoreCommitTTRTrigger = v17;

      v19 = [(HMDCoreDataLogEventsAnalyzer *)v5 addTTRThresholdTrigger:sourceCopy atThreshold:500 displayReason:@"we detected excessive CloudKit imports" forEventName:@"CloudKitImportCount"];
      cloudKitImportCountTTRTrigger = v5->_cloudKitImportCountTTRTrigger;
      v5->_cloudKitImportCountTTRTrigger = v19;

      v21 = [(HMDCoreDataLogEventsAnalyzer *)v5 addTTRThresholdTrigger:sourceCopy atThreshold:500 displayReason:@"we detected excessive CloudKit exports" forEventName:@"CloudKitExportCount"];
      cloudKitExportCountTTRTrigger = v5->_cloudKitExportCountTTRTrigger;
      v5->_cloudKitExportCountTTRTrigger = v21;
    }

    logEventDispatcher = [sourceCopy logEventDispatcher];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    [logEventDispatcher addObserver:v5 forEventClasses:v24];

    dailyScheduler = [sourceCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:v5];
  }

  return v5;
}

+ (id)managedEventCounterRequestGroups
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"CoreDataAggregationEventGroup";
  v4[1] = @"CoreDataCloudStoreReasonsGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end