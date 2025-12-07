@interface HMDMetricsHomeDataChangedManager
+ (id)logCategory;
- (BOOL)_shouldExcludeUpdateForModelName:(id)name propertyName:(id)propertyName;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMDEventCountersManager)countersManager;
- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)manager currentHomeDataSource:(id)source dateProvider:(id)provider;
- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)manager currentHomeDataSource:(id)source dateProvider:(id)provider notificationCenter:(id)center maxNumberEventsToReport:(unint64_t)report workQueue:(id)queue;
- (HMMDateProvider)dateProvider;
- (NSNotificationCenter)notificationCenter;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (void)_handleChangeSetSummary:(id)summary homeUUID:(id)d;
- (void)_handleGeneratedHomeDataChangedNotification:(id)notification;
- (void)_handleHDCDueToBecamePrimaryForHome:(id)home;
- (void)_handleHomeDataChangedReasonBecamePrimaryLogEvent:(id)event becamePrimaryHouseholdLogEventsByName:(id)name homeUUID:(id)d;
- (void)_handleHomeDataChangedReasonInsertedLogEvent:(id)event insertedHouseholdLogEventsByName:(id)name homeUUID:(id)d;
- (void)_handleHomeDataChangedReasonUpdatedLogEvent:(id)event updatedHouseholdLogEventsByName:(id)name homeUUID:(id)d;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
- (void)start;
- (void)stop;
@end

@implementation HMDMetricsHomeDataChangedManager

- (HMMDateProvider)dateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dateProvider);

  return WeakRetained;
}

- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHomeDataSource);

  return WeakRetained;
}

- (NSNotificationCenter)notificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  return WeakRetained;
}

- (HMDEventCountersManager)countersManager
{
  WeakRetained = objc_loadWeakRetained(&self->_countersManager);

  return WeakRetained;
}

- (BOOL)_shouldExcludeUpdateForModelName:(id)name propertyName:(id)propertyName
{
  v4 = _shouldExcludeUpdateForModelName_propertyName__onceToken;
  propertyNameCopy = propertyName;
  if (v4 != -1)
  {
    dispatch_once(&_shouldExcludeUpdateForModelName_propertyName__onceToken, &__block_literal_global_44_20241);
  }

  v6 = [_shouldExcludeUpdateForModelName_propertyName__propertyNamesToExclude containsObject:propertyNameCopy];

  return v6;
}

void __82__HMDMetricsHomeDataChangedManager__shouldExcludeUpdateForModelName_propertyName___block_invoke()
{
  v0 = _shouldExcludeUpdateForModelName_propertyName__propertyNamesToExclude;
  _shouldExcludeUpdateForModelName_propertyName__propertyNamesToExclude = &unk_283E755D8;
}

- (void)_handleHomeDataChangedReasonBecamePrimaryLogEvent:(id)event becamePrimaryHouseholdLogEventsByName:(id)name homeUUID:(id)d
{
  eventCopy = event;
  nameCopy = name;
  dCopy = d;
  v9 = [nameCopy objectForKeyedSubscript:@"becamePrimary"];
  if (v9)
  {
    v10 = v9;
    [v9 incrementCountWithValue:{objc_msgSend(eventCopy, "count")}];
  }

  else
  {
    v10 = -[HMDHouseholdHomeDataChangedLogEvent initAsBecamePrimaryEventWithCount:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsBecamePrimaryEventWithCount:homeUUID:", [eventCopy count], dCopy);
    [nameCopy setObject:v10 forKeyedSubscript:@"becamePrimary"];
  }
}

- (void)_handleHomeDataChangedReasonUpdatedLogEvent:(id)event updatedHouseholdLogEventsByName:(id)name homeUUID:(id)d
{
  eventCopy = event;
  nameCopy = name;
  dCopy = d;
  modelName = [eventCopy modelName];
  propertyName = [eventCopy propertyName];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", modelName, propertyName];
  v12 = [nameCopy objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = v12;
    [v12 incrementCountWithValue:{objc_msgSend(eventCopy, "count")}];
  }

  else
  {
    v13 = -[HMDHouseholdHomeDataChangedLogEvent initAsUpdateEventForModelName:propertyName:count:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsUpdateEventForModelName:propertyName:count:homeUUID:", modelName, propertyName, [eventCopy count], dCopy);
    [nameCopy setObject:v13 forKeyedSubscript:v11];
  }
}

- (void)_handleHomeDataChangedReasonInsertedLogEvent:(id)event insertedHouseholdLogEventsByName:(id)name homeUUID:(id)d
{
  eventCopy = event;
  nameCopy = name;
  dCopy = d;
  modelName = [eventCopy modelName];
  v10 = [nameCopy objectForKeyedSubscript:modelName];
  if (v10)
  {
    v11 = v10;
    [v10 incrementCountWithValue:{objc_msgSend(eventCopy, "count")}];
  }

  else
  {
    v11 = -[HMDHouseholdHomeDataChangedLogEvent initAsInsertEventForModelName:count:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsInsertEventForModelName:count:homeUUID:", modelName, [eventCopy count], dCopy);
    [nameCopy setObject:v11 forKeyedSubscript:modelName];
  }
}

- (void)_handleHDCDueToBecamePrimaryForHome:(id)home
{
  homeCopy = home;
  dateProvider = [(HMDMetricsHomeDataChangedManager *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];

  v6 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsBecamePrimaryEventGroup" homeUUID:homeCopy date:startOfCurrentDay];

  countersManager = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v8 = [countersManager objectForKeyedSubscript:v6];

  [v8 incrementEventCounterForEventName:@"becamePrimary"];
}

- (void)_handleChangeSetSummary:(id)summary homeUUID:(id)d
{
  dCopy = d;
  summaryCopy = summary;
  dateProvider = [(HMDMetricsHomeDataChangedManager *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];

  v10 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsInsertedEventGroup" homeUUID:dCopy date:startOfCurrentDay];
  v11 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsUpdatedEventGroup" homeUUID:dCopy date:startOfCurrentDay];

  countersManager = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v13 = [countersManager objectForKeyedSubscript:v10];
  insertedObjectNames = [summaryCopy insertedObjectNames];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__HMDMetricsHomeDataChangedManager__handleChangeSetSummary_homeUUID___block_invoke;
  v21[3] = &unk_278683BA0;
  v22 = v13;
  v15 = v13;
  [insertedObjectNames hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  v16 = [countersManager objectForKeyedSubscript:v11];
  modifiedObjectPropertyNames = [summaryCopy modifiedObjectPropertyNames];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__HMDMetricsHomeDataChangedManager__handleChangeSetSummary_homeUUID___block_invoke_2;
  v19[3] = &unk_278683BA0;
  v20 = v16;
  v18 = v16;
  [modifiedObjectPropertyNames hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
}

- (void)_handleGeneratedHomeDataChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDMetricsHomeDataChangedManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDMetricsHomeDataChangedManager__handleGeneratedHomeDataChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __80__HMDMetricsHomeDataChangedManager__handleGeneratedHomeDataChangedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) userInfo];
    v16 = 138543618;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling HMDGeneratedHomeDataChangedNotification with userInfo: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HMDGeneratedHomeDataChangedSummaryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [*(a1 + 40) userInfo];
  v12 = [v11 objectForKeyedSubscript:@"HMDGeneratedHomeDataChangedHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *(a1 + 32);
  if (v10)
  {
    [v15 _handleChangeSetSummary:v10 homeUUID:v14];
  }

  else
  {
    [v15 _handleHDCDueToBecamePrimaryForHome:v14];
  }
}

- (id)serializeLogEvents:(id)events
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  eventsCopy = events;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HMDMetricsHomeDataChangedManager_serializeLogEvents___block_invoke;
  v11[3] = &unk_278682DF0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [eventsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  if ([v7 count])
  {
    v13 = @"HMDMetricsHomeDataChangedLogEvents";
    v8 = objc_msgSend_copy(v7);
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __55__HMDMetricsHomeDataChangedManager_serializeLogEvents___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v5 serializedLogEvent];
    [v6 addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Skipping unexpected log event during encoding: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"HMDMetricsHomeDataChangedLogEvents"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __60__HMDMetricsHomeDataChangedManager_logEventsFromDictionary___block_invoke;
    v14 = &unk_278689E38;
    selfCopy = self;
    v16 = v7;
    v8 = v7;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];
    v9 = objc_msgSend_copy(v8, v11, v12, v13, v14, selfCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__HMDMetricsHomeDataChangedManager_logEventsFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[HMDHouseholdHomeDataChangedLogEvent alloc] initWithDictionary:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode log event: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __77__HMDMetricsHomeDataChangedManager_coalescedLogEventsFromLogEvents_homeUUID___block_invoke;
  v29[3] = &unk_278671178;
  v29[4] = self;
  v11 = dictionary;
  v30 = v11;
  v12 = dCopy;
  v31 = v12;
  v13 = dictionary2;
  v32 = v13;
  v14 = dictionary3;
  v33 = v14;
  v28 = eventsCopy;
  [eventsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v29];
  array = [MEMORY[0x277CBEB18] array];
  allValues = [v11 allValues];
  [array addObjectsFromArray:allValues];

  allValues2 = [v13 allValues];
  [array addObjectsFromArray:allValues2];

  [array sortUsingComparator:&__block_literal_global_32_20273];
  v18 = [v14 objectForKeyedSubscript:@"becamePrimary"];
  if (v18)
  {
    [array insertObject:v18 atIndex:0];
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v22;
    v36 = 2112;
    v37 = array;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@CoalescedLogEvents before truncating: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  maxNumberEventsToReport = [(HMDMetricsHomeDataChangedManager *)selfCopy maxNumberEventsToReport];
  v24 = [array count];
  if (maxNumberEventsToReport >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = maxNumberEventsToReport;
  }

  v26 = [array subarrayWithRange:{0, v25}];

  return v26;
}

void __77__HMDMetricsHomeDataChangedManager_coalescedLogEventsFromLogEvents_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 changeType];
    if (v6)
    {
      if (v6 == 2)
      {
        [*(a1 + 32) _handleHomeDataChangedReasonUpdatedLogEvent:v5 updatedHouseholdLogEventsByName:*(a1 + 56) homeUUID:*(a1 + 48)];
      }

      else if (v6 == 1)
      {
        [*(a1 + 32) _handleHomeDataChangedReasonInsertedLogEvent:v5 insertedHouseholdLogEventsByName:*(a1 + 40) homeUUID:*(a1 + 48)];
      }
    }

    else
    {
      [*(a1 + 32) _handleHomeDataChangedReasonBecamePrimaryLogEvent:v5 becamePrimaryHouseholdLogEventsByName:*(a1 + 64) homeUUID:*(a1 + 48)];
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Skipping unexpected log event during coalescing: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t __77__HMDMetricsHomeDataChangedManager_coalescedLogEventsFromLogEvents_homeUUID___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 < [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)deleteCountersBeforeDate:(id)date
{
  v14[3] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = MEMORY[0x277CBEB98];
  v14[0] = @"HMDHomeDataChangedReasonsInsertedEventGroup";
  v14[1] = @"HMDHomeDataChangedReasonsUpdatedEventGroup";
  v14[2] = @"HMDHomeDataChangedReasonsBecamePrimaryEventGroup";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v7 = [v5 setWithArray:v6];

  countersManager = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HMDMetricsHomeDataChangedManager_deleteCountersBeforeDate___block_invoke;
  v11[3] = &unk_27867E4A0;
  v12 = dateCopy;
  v13 = v7;
  v9 = v7;
  v10 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v11];
}

uint64_t __61__HMDMetricsHomeDataChangedManager_deleteCountersBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == -1)
    {
      v8 = [*(a1 + 40) containsObject:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteCountersAfterDate:(id)date
{
  v14[3] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = MEMORY[0x277CBEB98];
  v14[0] = @"HMDHomeDataChangedReasonsInsertedEventGroup";
  v14[1] = @"HMDHomeDataChangedReasonsUpdatedEventGroup";
  v14[2] = @"HMDHomeDataChangedReasonsBecamePrimaryEventGroup";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v7 = [v5 setWithArray:v6];

  countersManager = [(HMDMetricsHomeDataChangedManager *)self countersManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HMDMetricsHomeDataChangedManager_deleteCountersAfterDate___block_invoke;
  v11[3] = &unk_27867E4A0;
  v12 = dateCopy;
  v13 = v7;
  v9 = v7;
  v10 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v11];
}

uint64_t __60__HMDMetricsHomeDataChangedManager_deleteCountersAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == 1)
    {
      v8 = [*(a1 + 40) containsObject:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  currentHomeDataSource = [(HMDMetricsHomeDataChangedManager *)self currentHomeDataSource];
  homeUUIDForCurrentResidentDevice = [currentHomeDataSource homeUUIDForCurrentResidentDevice];
  v10 = [dCopy hmf_isEqualToUUID:homeUUIDForCurrentResidentDevice];

  if (v10)
  {
    v11 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsInsertedEventGroup" homeUUID:dCopy date:dateCopy];
    v12 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsUpdatedEventGroup" homeUUID:dCopy date:dateCopy];
    v13 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:@"HMDHomeDataChangedReasonsBecamePrimaryEventGroup" homeUUID:dCopy date:dateCopy];
    context = objc_autoreleasePoolPush();
    array = [MEMORY[0x277CBEB18] array];
    countersManager = [(HMDMetricsHomeDataChangedManager *)self countersManager];
    v37 = v11;
    v35 = [countersManager objectForKeyedSubscript:v11];
    eventCounters = [v35 eventCounters];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke;
    v43[3] = &unk_278672F20;
    v17 = dCopy;
    v44 = v17;
    v18 = array;
    v45 = v18;
    [eventCounters enumerateKeysAndObjectsUsingBlock:v43];

    v34 = [countersManager objectForKeyedSubscript:v12];
    eventCounters2 = [v34 eventCounters];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke_2;
    v40[3] = &unk_278680698;
    v40[4] = self;
    v20 = v17;
    v41 = v20;
    v21 = v18;
    v42 = v21;
    [eventCounters2 enumerateKeysAndObjectsUsingBlock:v40];

    [v21 sortUsingComparator:&__block_literal_global_20281];
    v36 = countersManager;
    v39 = v13;
    v22 = [countersManager objectForKeyedSubscript:v13];
    v23 = -[HMDHouseholdHomeDataChangedLogEvent initAsBecamePrimaryEventWithCount:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsBecamePrimaryEventWithCount:homeUUID:", [v22 fetchEventCounterForEventName:@"becamePrimary"], v20);
    [v21 insertObject:v23 atIndex:0];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v27 = v33 = dateCopy;
      *buf = 138543618;
      v47 = v27;
      v48 = 2112;
      v49 = v21;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@PopulatedLogEvents before truncating: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    maxNumberEventsToReport = [(HMDMetricsHomeDataChangedManager *)selfCopy maxNumberEventsToReport];
    v29 = [v21 count];
    if (maxNumberEventsToReport >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = maxNumberEventsToReport;
    }

    v31 = [v21 subarrayWithRange:{0, v30, v33}];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HMDHouseholdHomeDataChangedLogEvent alloc];
  v8 = [v5 unsignedIntegerValue];

  v9 = [(HMDHouseholdHomeDataChangedLogEvent *)v7 initAsInsertEventForModelName:v6 count:v8 homeUUID:*(a1 + 32)];
  [*(a1 + 40) addObject:v9];
}

void __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 componentsSeparatedByString:@"_"];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    if ([*(a1 + 32) _shouldExcludeUpdateForModelName:v8 propertyName:v9])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543874;
        v20 = v13;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Excluding update for modelName: %@ propertyName: %@ from HMDHomeDataChangedLogEvent", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v18 = -[HMDHouseholdHomeDataChangedLogEvent initAsUpdateEventForModelName:propertyName:count:homeUUID:]([HMDHouseholdHomeDataChangedLogEvent alloc], "initAsUpdateEventForModelName:propertyName:count:homeUUID:", v8, v9, [v6 unsignedIntegerValue], *(a1 + 40));
      [*(a1 + 48) addObject:v18];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Expected 2 event name components from eventName: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }
}

uint64_t __89__HMDMetricsHomeDataChangedManager_logEventsPopulatedForHomeWithUUID_associatedWithDate___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 < [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)stop
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:selfCopy name:@"HMDGeneratedHomeDataChangedNotification" object:0];

    self->_started = 0;
  }
}

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__handleGeneratedHomeDataChangedNotification_ name:@"HMDGeneratedHomeDataChangedNotification" object:0];

    self->_started = 1;
  }
}

- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)manager currentHomeDataSource:(id)source dateProvider:(id)provider notificationCenter:(id)center maxNumberEventsToReport:(unint64_t)report workQueue:(id)queue
{
  managerCopy = manager;
  sourceCopy = source;
  providerCopy = provider;
  centerCopy = center;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HMDMetricsHomeDataChangedManager;
  v19 = [(HMDMetricsHomeDataChangedManager *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_countersManager, managerCopy);
    objc_storeWeak(&v20->_currentHomeDataSource, sourceCopy);
    objc_storeWeak(&v20->_notificationCenter, centerCopy);
    objc_storeWeak(&v20->_dateProvider, providerCopy);
    v20->_maxNumberEventsToReport = report;
    objc_storeStrong(&v20->_workQueue, queue);
  }

  return v20;
}

- (HMDMetricsHomeDataChangedManager)initWithCountersManager:(id)manager currentHomeDataSource:(id)source dateProvider:(id)provider
{
  v8 = MEMORY[0x277CCAB98];
  providerCopy = provider;
  sourceCopy = source;
  managerCopy = manager;
  defaultCenter = [v8 defaultCenter];
  v13 = dispatch_get_global_queue(-32768, 0);
  v14 = [(HMDMetricsHomeDataChangedManager *)self initWithCountersManager:managerCopy currentHomeDataSource:sourceCopy dateProvider:providerCopy notificationCenter:defaultCenter maxNumberEventsToReport:50 workQueue:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_20300 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_20300, &__block_literal_global_49);
  }

  v3 = logCategory__hmf_once_v20_20301;

  return v3;
}

void __47__HMDMetricsHomeDataChangedManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_20301;
  logCategory__hmf_once_v20_20301 = v0;
}

@end