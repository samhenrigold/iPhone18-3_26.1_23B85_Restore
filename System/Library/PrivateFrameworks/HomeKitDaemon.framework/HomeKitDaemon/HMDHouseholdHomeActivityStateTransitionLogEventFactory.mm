@interface HMDHouseholdHomeActivityStateTransitionLogEventFactory
- (HMDHomeActivityStateLogEventAnalyzer)analyzer;
- (HMDHouseholdHomeActivityStateTransitionLogEventFactory)initWithAnalyzer:(id)analyzer;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (id)serializedLogEvent:(id)event;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdHomeActivityStateTransitionLogEventFactory

- (HMDHomeActivityStateLogEventAnalyzer)analyzer
{
  WeakRetained = objc_loadWeakRetained(&self->_analyzer);

  return WeakRetained;
}

- (id)serializedLogEvent:(id)event
{
  v3 = MEMORY[0x277CBEB38];
  eventCopy = event;
  dictionary = [v3 dictionary];
  homeUUID = [eventCopy homeUUID];
  uUIDString = [homeUUID UUIDString];

  [dictionary setObject:uUIDString forKeyedSubscript:@"homeUUID"];
  coreAnalyticsEventDictionary = [eventCopy coreAnalyticsEventDictionary];

  [dictionary addEntriesFromDictionary:coreAnalyticsEventDictionary];
  v9 = objc_msgSend_copy(dictionary);

  return v9;
}

- (id)serializeLogEvents:(id)events
{
  v32 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if ([eventsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = eventsCopy;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (!v13)
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = HMFGetLogIdentifier();
              *buf = 138543618;
              v28 = v19;
              v29 = 2112;
              v30 = v11;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Log event is not HMDHouseholdHomeActivityStateTransitionLogEvent: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            v15 = 0;
            goto LABEL_17;
          }

          v14 = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self serializedLogEvent:v13, v21];
          [array addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v25 = @"HMDHouseholdHomeActivityStateTransitionLogEvent";
    v6 = objc_msgSend_copy(array);
    v26 = v6;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
LABEL_17:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v40 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"HMDHouseholdHomeActivityStateTransitionLogEvent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    selfCopy = self;
    v30 = dictionaryCopy;
    array = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            v17 = [[HMDHouseholdHomeActivityStateTransitionLogEvent alloc] initWithDictionary:v16];
            if (!v17)
            {
              v24 = objc_autoreleasePoolPush();
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = HMFGetLogIdentifier();
                *buf = 138543618;
                v37 = v27;
                v38 = 2112;
                v39 = v16;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMDHouseholdHomeActivityStateTransitionLogEvent from dictionary: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v24);
              v19 = 0;
              goto LABEL_25;
            }

            v18 = v17;
            [array addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = objc_msgSend_copy(array);
LABEL_25:
    dictionaryCopy = v30;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v23;
      v38 = 2112;
      v39 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@HMDHouseholdHomeActivityStateTransitionLogEventKey is not an array in dictionary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  return v19;
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = eventsCopy;
  v6 = [eventsCopy countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          homeUUID = [v16 homeUUID];
          v18 = [homeUUID isEqual:dCopy];

          if (v18)
          {
            v11 += [v16 homeCount];
            v10 += [v16 awayCount];
            v9 += [v16 vacationCount];
            v24 += [v16 comingHomeCount];
            v26 += [v16 comingHomeFromVacationCount];
            v28 += [v16 automatedCount];
            v27 += [v16 automatedHoldEndCount];
            v25 += [v16 manualHoldEndCount];
            v23 += [v16 manualHoldStartCount];
            v8 += [v16 otherCount];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v19 = [[HMDHouseholdHomeActivityStateTransitionLogEvent alloc] initWithHomeUUID:dCopy homeCount:v11 awayCount:v10 vacationCount:v9 comingHomeCount:v24 comingHomeFromVacationCount:v26 automatedCount:v28 automatedHoldEndCount:v27 manualHoldEndCount:v25 manualHoldStartCount:v23 otherCount:v8];
  v34 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];

  return v20;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v12[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  analyzer = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self analyzer];
  v9 = [analyzer householdTransitionLogEventForHomeWithUUID:dCopy date:dateCopy];

  if (v9)
  {
    v12[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  analyzer = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self analyzer];
  [analyzer removeHouseholdCounterGroupsForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" afterDate:dateCopy];
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  analyzer = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)self analyzer];
  [analyzer removeHouseholdCounterGroupsForKey:@"HMDHouseholdHomeActivityStateTransitionLogEventCounterGroup" beforeDate:dateCopy];
}

- (HMDHouseholdHomeActivityStateTransitionLogEventFactory)initWithAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  v8.receiver = self;
  v8.super_class = HMDHouseholdHomeActivityStateTransitionLogEventFactory;
  v5 = [(HMDHouseholdHomeActivityStateTransitionLogEventFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_analyzer, analyzerCopy);
  }

  return v6;
}

@end