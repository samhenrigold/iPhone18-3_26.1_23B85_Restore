@interface HMDHomeActivityStateLogEventAnalyzer
+ (unint64_t)fromStateFromTransitionTypeByReasonCounterGroupKey:(id)key;
+ (unint64_t)toStateFromTransitionTypeByReasonCounterGroupKey:(id)key;
- (HMDHomeActivityStateLogEventAnalyzer)initWithDataSource:(id)source;
- (id)counterGroupForKey:(id)key homeUUID:(id)d date:(id)date;
- (id)counterGroupForTransitionFromState:(unint64_t)state toState:(unint64_t)toState homeUUID:(id)d date:(id)date;
- (id)counterGroupKeyNamesForTransitionTypeByReasonLogEvents;
- (id)householdTransitionLogEventForHomeWithUUID:(id)d date:(id)date;
- (id)householdTransitionTypeByReasonLogEventsForHomeWithUUID:(id)d date:(id)date;
- (void)configure;
- (void)handleStateTransitionLogEvent:(id)event;
- (void)handleVacationStateTransitionLogEvent:(id)event;
- (void)incrementHouseholdTransitionCountersWithEvent:(id)event;
- (void)incrementHouseholdTransitionTypeByReasonCountersWithEvent:(id)event;
- (void)observeEvent:(id)event;
- (void)removeHouseholdCounterGroupsForKey:(id)key afterDate:(id)date;
- (void)removeHouseholdCounterGroupsForKey:(id)key beforeDate:(id)date;
- (void)resetVacationStateTransitionCounterGroup;
- (void)runDailyTask;
- (void)submitVacationStateTransitionCounterGroups;
@end

@implementation HMDHomeActivityStateLogEventAnalyzer

- (void)resetVacationStateTransitionCounterGroup
{
  vacationStateTransitionCounterGroup = [(HMDHomeActivityStateLogEventAnalyzer *)self vacationStateTransitionCounterGroup];
  [vacationStateTransitionCounterGroup resetEventCounters];
}

- (id)counterGroupForKey:(id)key homeUUID:(id)d date:(id)date
{
  v6 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:key homeUUID:d date:date];
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  legacyCountersManager = [dataSource legacyCountersManager];
  v9 = [legacyCountersManager objectForKeyedSubscript:v6];

  return v9;
}

- (id)counterGroupKeyNamesForTransitionTypeByReasonLogEvents
{
  v18[6] = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  v18[0] = @"Unknown";
  v3 = @"Home";
  v18[1] = @"Home";
  v4 = @"Away";
  v18[2] = @"Away";
  v5 = @"Vacation";
  v18[3] = @"Vacation";
  v6 = @"ComingHome";
  v18[4] = @"ComingHome";
  v7 = @"ComingHomeFromVacation";
  v18[5] = @"ComingHomeFromVacation";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:6];

  v9 = objc_msgSend_copy(v8);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count") * objc_msgSend(v8, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke;
  v15[3] = &unk_27867E4C8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
  v13 = objc_msgSend_copy(v11);

  return v13;
}

void __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke_2;
  v6[3] = &unk_27867E4C8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];
}

void __94__HMDHomeActivityStateLogEventAnalyzer_counterGroupKeyNamesForTransitionTypeByReasonLogEvents__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [HMDHomeActivityStateLogEventAnalyzer counterGroupKeyForTransitionTypeFromState:*(a1 + 32) toState:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)counterGroupForTransitionFromState:(unint64_t)state toState:(unint64_t)toState homeUUID:(id)d date:(id)date
{
  dateCopy = date;
  dCopy = d;
  if (state - 1 > 6)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_278671F60[state - 1];
  }

  v13 = v12;
  if (toState - 1 > 6)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_278671F60[toState - 1];
  }

  v15 = v14;
  v16 = [HMDHomeActivityStateLogEventAnalyzer counterGroupKeyForTransitionTypeFromState:v13 toState:v15];
  v17 = [(HMDHomeActivityStateLogEventAnalyzer *)self counterGroupForKey:v16 homeUUID:dCopy date:dateCopy];

  return v17;
}

- (void)submitVacationStateTransitionCounterGroups
{
  vacationStateTransitionCounterGroup = [(HMDHomeActivityStateLogEventAnalyzer *)self vacationStateTransitionCounterGroup];
  v3 = [vacationStateTransitionCounterGroup fetchEventCounterForEventName:@"HMDHomeActivityVacationStateChangeReasonDetectorInitiated"];

  v4 = [vacationStateTransitionCounterGroup fetchEventCounterForEventName:@"HMDHomeActivityVacationStateChangeReasonTimerFired"];
  v5 = [HMDHomeActivityStateVacationTransitionDailyCountLogEvent alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v8 = [(HMDHomeActivityStateVacationTransitionDailyCountLogEvent *)v5 initWithDetectorInitiatedCount:v6 timerFiredCount:v7];

  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  logEventSubmitter = [dataSource logEventSubmitter];
  [logEventSubmitter submitLogEvent:v8];
}

- (void)runDailyTask
{
  v11 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  isCurrentDeviceConfirmedPrimaryResident = [dataSource isCurrentDeviceConfirmedPrimaryResident];

  if (isCurrentDeviceConfirmedPrimaryResident)
  {
    [(HMDHomeActivityStateLogEventAnalyzer *)self submitCounterGroups];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Not submitting daily task because this device is not the current primary resident Device", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  [(HMDHomeActivityStateLogEventAnalyzer *)self resetCounterGroups];
}

- (void)removeHouseholdCounterGroupsForKey:(id)key afterDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  legacyCountersManager = [dataSource legacyCountersManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_afterDate___block_invoke;
  v12[3] = &unk_27867E4A0;
  v13 = dateCopy;
  v14 = keyCopy;
  v10 = keyCopy;
  v11 = dateCopy;
  [legacyCountersManager removeCounterGroupsBasedOnPredicate:v12];
}

uint64_t __85__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_afterDate___block_invoke(uint64_t a1, void *a2)
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == 1)
    {
      v8 = [v6 groupName];
      v9 = [v8 hasPrefix:*(a1 + 40)];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeHouseholdCounterGroupsForKey:(id)key beforeDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  legacyCountersManager = [dataSource legacyCountersManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_beforeDate___block_invoke;
  v12[3] = &unk_27867E4A0;
  v13 = dateCopy;
  v14 = keyCopy;
  v10 = keyCopy;
  v11 = dateCopy;
  [legacyCountersManager removeCounterGroupsBasedOnPredicate:v12];
}

uint64_t __86__HMDHomeActivityStateLogEventAnalyzer_removeHouseholdCounterGroupsForKey_beforeDate___block_invoke(uint64_t a1, void *a2)
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
  v6 = v5;
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == -1)
    {
      v9 = [v6 groupName];
      v8 = [v9 hasPrefix:*(a1 + 40)];
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

- (id)householdTransitionTypeByReasonLogEventsForHomeWithUUID:(id)d date:(id)date
{
  dCopy = d;
  dateCopy = date;
  counterGroupKeyNamesForTransitionTypeByReasonLogEvents = [(HMDHomeActivityStateLogEventAnalyzer *)self counterGroupKeyNamesForTransitionTypeByReasonLogEvents];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(counterGroupKeyNamesForTransitionTypeByReasonLogEvents, "count")}];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMDHomeActivityStateLogEventAnalyzer_householdTransitionTypeByReasonLogEventsForHomeWithUUID_date___block_invoke;
  v18 = &unk_27867E478;
  selfCopy = self;
  v20 = dCopy;
  v21 = dateCopy;
  v10 = v9;
  v22 = v10;
  v11 = dateCopy;
  v12 = dCopy;
  [counterGroupKeyNamesForTransitionTypeByReasonLogEvents hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];
  if ([v10 count])
  {
    v13 = objc_msgSend_copy(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __101__HMDHomeActivityStateLogEventAnalyzer_householdTransitionTypeByReasonLogEventsForHomeWithUUID_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDHomeActivityStateLogEventAnalyzer fromStateFromTransitionTypeByReasonCounterGroupKey:v3];
  v5 = [HMDHomeActivityStateLogEventAnalyzer toStateFromTransitionTypeByReasonCounterGroupKey:v3];
  v17 = [*(a1 + 32) counterGroupForKey:v3 homeUUID:*(a1 + 40) date:*(a1 + 48)];

  if (v17)
  {
    v6 = @"Automated";
    v7 = @"AutomatedHoldEnd";
    v8 = @"ManualHoldEnd";
    v9 = @"ManualHoldStart";
    v10 = @"Other";
    v11 = [v17 fetchEventCounterForEventName:@"Automated"];
    v12 = [v17 fetchEventCounterForEventName:@"AutomatedHoldEnd"];
    v13 = [v17 fetchEventCounterForEventName:@"ManualHoldEnd"];
    v14 = [v17 fetchEventCounterForEventName:@"ManualHoldStart"];
    v15 = [v17 fetchEventCounterForEventName:@"Other"];
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  v16 = [[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent alloc] initWithHomeUUID:*(a1 + 40) fromState:v4 toState:v5 automatedCount:v11 automatedHoldEndCount:v12 manualHoldEndCount:v13 manualHoldStartCount:v14 otherCount:v15];
  [*(a1 + 56) addObject:v16];
}

- (id)householdTransitionLogEventForHomeWithUUID:(id)d date:(id)date
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  v8 = [(HMDHomeActivityStateLogEventAnalyzer *)self counterGroupForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" homeUUID:dCopy date:dateCopy];
  if (v8)
  {
    v9 = @"Home";
    v10 = @"Away";
    v11 = @"Vacation";
    v12 = @"ComingHome";
    v13 = @"ComingHomeFromVacation";
    v30 = [v8 fetchEventCounterForEventName:@"Home"];
    v29 = [v8 fetchEventCounterForEventName:@"Away"];
    v28 = [v8 fetchEventCounterForEventName:@"Vacation"];
    v27 = [v8 fetchEventCounterForEventName:@"ComingHome"];
    v26 = [v8 fetchEventCounterForEventName:@"ComingHomeFromVacation"];
    v14 = @"Automated";
    v15 = @"AutomatedHoldEnd";
    v16 = @"ManualHoldEnd";
    v17 = @"ManualHoldStart";
    v18 = @"Other";
    v19 = -[HMDHouseholdHomeActivityStateTransitionLogEvent initWithHomeUUID:homeCount:awayCount:vacationCount:comingHomeCount:comingHomeFromVacationCount:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:]([HMDHouseholdHomeActivityStateTransitionLogEvent alloc], "initWithHomeUUID:homeCount:awayCount:vacationCount:comingHomeCount:comingHomeFromVacationCount:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:", dCopy, v30, v29, v28, v27, v26, [v8 fetchEventCounterForEventName:@"Automated"], objc_msgSend(v8, "fetchEventCounterForEventName:", @"AutomatedHoldEnd"), objc_msgSend(v8, "fetchEventCounterForEventName:", @"ManualHoldEnd"), objc_msgSend(v8, "fetchEventCounterForEventName:", @"ManualHoldStart"), objc_msgSend(v8, "fetchEventCounterForEventName:", @"Other"));
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUIDString = [dCopy UUIDString];
      *buf = 138543874;
      v32 = v23;
      v33 = 2112;
      v34 = uUIDString;
      v35 = 2112;
      v36 = dateCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly failed to fetch household counter group at for homeUUID %@ on date %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  return v19;
}

- (void)handleVacationStateTransitionLogEvent:(id)event
{
  eventCopy = event;
  vacationStateTransitionCounterGroup = [(HMDHomeActivityStateLogEventAnalyzer *)self vacationStateTransitionCounterGroup];
  reason = [eventCopy reason];

  v6 = HMDHomeActivityVacationStateChangeReasonAsString(reason);
  [vacationStateTransitionCounterGroup incrementEventCounterForEventName:v6];
}

- (void)incrementHouseholdTransitionCountersWithEvent:(id)event
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    homeUUID = [eventCopy homeUUID];
    uUIDString = [homeUUID UUIDString];
    toState = [eventCopy toState];
    if ((toState - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_278671F60[toState - 1];
    }

    v13 = v12;
    reason = [eventCopy reason];
    if ((reason - 1) > 3)
    {
      v15 = @"Other";
    }

    else
    {
      v15 = off_278671F98[reason - 1];
    }

    v16 = v15;
    v28 = 138544130;
    v29 = v8;
    v30 = 2112;
    v31 = uUIDString;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing HMDHouseholdHomeActivityStateTransitionLogEvent counters for home with UUID %@: toState %@ and reason %@", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  homeUUID2 = [eventCopy homeUUID];
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)selfCopy dataSource];
  dateProvider = [dataSource dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  v21 = [(HMDHomeActivityStateLogEventAnalyzer *)selfCopy counterGroupForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" homeUUID:homeUUID2 date:startOfCurrentDay];

  toState2 = [eventCopy toState];
  if ((toState2 - 1) > 6)
  {
    v23 = @"Unknown";
  }

  else
  {
    v23 = off_278671F60[toState2 - 1];
  }

  v24 = v23;
  [v21 incrementEventCounterForEventName:v24];

  reason2 = [eventCopy reason];
  if ((reason2 - 1) > 3)
  {
    v26 = @"Other";
  }

  else
  {
    v26 = off_278671F98[reason2 - 1];
  }

  v27 = v26;
  [v21 incrementEventCounterForEventName:v27];
}

- (void)incrementHouseholdTransitionTypeByReasonCountersWithEvent:(id)event
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    homeUUID = [eventCopy homeUUID];
    uUIDString = [homeUUID UUIDString];
    fromState = [eventCopy fromState];
    if ((fromState - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_278671F60[fromState - 1];
    }

    v13 = v12;
    toState = [eventCopy toState];
    if ((toState - 1) > 6)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_278671F60[toState - 1];
    }

    v16 = v15;
    reason = [eventCopy reason];
    if ((reason - 1) > 3)
    {
      v18 = @"Other";
    }

    else
    {
      v18 = off_278671F98[reason - 1];
    }

    v19 = v18;
    v30 = 138544386;
    v31 = v8;
    v32 = 2112;
    v33 = uUIDString;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    v39 = v19;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Incrementing HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent counters for home with UUID %@: fromState %@ toState %@ and reason %@", &v30, 0x34u);
  }

  objc_autoreleasePoolPop(v5);
  fromState2 = [eventCopy fromState];
  toState2 = [eventCopy toState];
  homeUUID2 = [eventCopy homeUUID];
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)selfCopy dataSource];
  dateProvider = [dataSource dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  v26 = [(HMDHomeActivityStateLogEventAnalyzer *)selfCopy counterGroupForTransitionFromState:fromState2 toState:toState2 homeUUID:homeUUID2 date:startOfCurrentDay];

  reason2 = [eventCopy reason];
  if ((reason2 - 1) > 3)
  {
    v28 = @"Other";
  }

  else
  {
    v28 = off_278671F98[reason2 - 1];
  }

  v29 = v28;
  [v26 incrementEventCounterForEventName:v29];
}

- (void)handleStateTransitionLogEvent:(id)event
{
  eventCopy = event;
  [(HMDHomeActivityStateLogEventAnalyzer *)self incrementHouseholdTransitionTypeByReasonCountersWithEvent:eventCopy];
  [(HMDHomeActivityStateLogEventAnalyzer *)self incrementHouseholdTransitionCountersWithEvent:eventCopy];
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
    [(HMDHomeActivityStateLogEventAnalyzer *)self handleStateTransitionLogEvent:v5];
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
      [(HMDHomeActivityStateLogEventAnalyzer *)self handleVacationStateTransitionLogEvent:v8];
    }
  }
}

- (void)configure
{
  v8[2] = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  dailyScheduler = [dataSource dailyScheduler];
  [dailyScheduler registerDailyTaskRunner:self];

  dataSource2 = [(HMDHomeActivityStateLogEventAnalyzer *)self dataSource];
  logEventDispatcher = [dataSource2 logEventDispatcher];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [logEventDispatcher addObserver:self forEventClasses:v7];
}

- (HMDHomeActivityStateLogEventAnalyzer)initWithDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = HMDHomeActivityStateLogEventAnalyzer;
  v6 = [(HMDHomeActivityStateLogEventAnalyzer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    legacyCountersManager = [sourceCopy legacyCountersManager];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"HMDHomeActivityStateVacationTransitionDailyCountLogEvent"];
    v10 = [legacyCountersManager counterGroupForName:v9];
    vacationStateTransitionCounterGroup = v7->_vacationStateTransitionCounterGroup;
    v7->_vacationStateTransitionCounterGroup = v10;
  }

  [(HMDHomeActivityStateLogEventAnalyzer *)v7 configure];

  return v7;
}

+ (unint64_t)toStateFromTransitionTypeByReasonCounterGroupKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"-"];
  v4 = [v3 objectAtIndexedSubscript:2];
  v5 = HMHomeActivityStateFromTruncatedString(v4);

  return v5;
}

+ (unint64_t)fromStateFromTransitionTypeByReasonCounterGroupKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"-"];
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = HMHomeActivityStateFromTruncatedString(v4);

  return v5;
}

@end