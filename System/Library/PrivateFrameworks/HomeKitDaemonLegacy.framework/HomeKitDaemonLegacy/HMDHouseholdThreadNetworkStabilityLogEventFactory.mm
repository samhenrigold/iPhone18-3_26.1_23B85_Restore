@interface HMDHouseholdThreadNetworkStabilityLogEventFactory
- (HMDHouseholdThreadNetworkStabilityLogEventFactory)initWithThreadNetworkObserver:(id)observer;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdThreadNetworkStabilityLogEventFactory

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  threadNetworkObserver = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  [threadNetworkObserver deleteCountersAfterDate:dateCopy];
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  threadNetworkObserver = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  [threadNetworkObserver deleteCountersBeforeDate:dateCopy];
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v67 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = eventsCopy;
  v53 = [eventsCopy countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v53)
  {
    v43 = dCopy;
    numThirdPartyBRs = 0;
    numAppleBRs = 0;
    maxSimuIPPrefixesDetected = 0;
    numThreadNetworks = 0;
    v57 = 0;
    v58 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    txDelayAvg = 0;
    v46 = 0;
    numAdvertisedBRs = 0;
    v12 = 0;
    v52 = *v62;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v62 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
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
          threadNetworkStatusReport = [v16 threadNetworkStatusReport];
          if (numAdvertisedBRs <= [threadNetworkStatusReport numAdvertisedBRs])
          {
            threadNetworkStatusReport2 = [v16 threadNetworkStatusReport];
            numAdvertisedBRs = [threadNetworkStatusReport2 numAdvertisedBRs];
          }

          threadNetworkStatusReport3 = [v16 threadNetworkStatusReport];
          if (numAppleBRs <= [threadNetworkStatusReport3 numAppleBRs])
          {
            threadNetworkStatusReport4 = [v16 threadNetworkStatusReport];
            numAppleBRs = [threadNetworkStatusReport4 numAppleBRs];
          }

          threadNetworkStatusReport5 = [v16 threadNetworkStatusReport];
          if (numThirdPartyBRs <= [threadNetworkStatusReport5 numThirdPartyBRs])
          {
            threadNetworkStatusReport6 = [v16 threadNetworkStatusReport];
            numThirdPartyBRs = [threadNetworkStatusReport6 numThirdPartyBRs];
          }

          threadNetworkStatusReport7 = [v16 threadNetworkStatusReport];
          if (numThreadNetworks <= [threadNetworkStatusReport7 numThreadNetworks])
          {
            threadNetworkStatusReport8 = [v16 threadNetworkStatusReport];
            numThreadNetworks = [threadNetworkStatusReport8 numThreadNetworks];
          }

          threadNetworkStatusReport9 = [v16 threadNetworkStatusReport];
          if (maxSimuIPPrefixesDetected <= [threadNetworkStatusReport9 maxSimuIPPrefixesDetected])
          {
            threadNetworkStatusReport10 = [v16 threadNetworkStatusReport];
            maxSimuIPPrefixesDetected = [threadNetworkStatusReport10 maxSimuIPPrefixesDetected];
          }

          ++v12;

          threadNetworkStatusReport11 = [v16 threadNetworkStatusReport];
          v8 += [threadNetworkStatusReport11 txDelayAvg];

          threadNetworkStatusReport12 = [v16 threadNetworkStatusReport];
          v57 += [threadNetworkStatusReport12 txTotal];

          threadNetworkStatusReport13 = [v16 threadNetworkStatusReport];
          v7 += [threadNetworkStatusReport13 txSuccess];

          threadNetworkStatusReport14 = [v16 threadNetworkStatusReport];
          v9 += [threadNetworkStatusReport14 rxTotal];

          threadNetworkStatusReport15 = [v16 threadNetworkStatusReport];
          v10 += [threadNetworkStatusReport15 rxSuccess];

          threadNetworkStatusReport16 = [v16 threadNetworkStatusReport];
          v11 += [threadNetworkStatusReport16 reportDuration];

          v60 += [v16 threadNetworkUptime];
          v59 += [v16 threadNetworkDowntime];
          v58 += [v16 numReadWrites];
          v56 += [v16 numReadErrors];
          v55 += [v16 numWriteErrors];
          v54 += [v16 numSessionErrors];
          threadNetworkStatusReport17 = [v16 threadNetworkStatusReport];
          reportDuration = [threadNetworkStatusReport17 reportDuration];

          if (reportDuration)
          {
            threadNetworkStatusReport18 = [v16 threadNetworkStatusReport];
            if (txDelayAvg <= [threadNetworkStatusReport18 txDelayAvg])
            {
              threadNetworkStatusReport19 = [v16 threadNetworkStatusReport];
              txDelayAvg = [threadNetworkStatusReport19 txDelayAvg];
            }

            ++v46;
          }
        }
      }

      v53 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v53);
    if (v12)
    {
      if (v46)
      {
        v37 = v8 / v46;
      }

      else
      {
        v37 = txDelayAvg;
      }

      v38 = [HMDHouseholdThreadNetworkStabilityLogEvent alloc];
      v39 = [[HMDThreadNetworkStatusReport alloc] initWithNumAdvertisedBRs:numAdvertisedBRs numAppleBRs:numAppleBRs numThirdPartyBRs:numThirdPartyBRs numThreadNetworks:numThreadNetworks maxSimuIPPrefixesDetected:maxSimuIPPrefixesDetected txTotal:v57 txSuccess:v7 txDelayAvg:v37 rxTotal:v9 rxSuccess:v10 reportDuration:v11];
      dCopy = v43;
      v40 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)v38 initWithHomeUUID:v43 numStabilityReporters:v12 threadNetworkStatusReport:v39 threadNetworkUptime:v60 threadNetworkDowntime:v59 numReadWrites:v58 numReadErrors:v56 numWriteErrors:v55 numSessionErrors:v54];
      v65 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    }

    else
    {
      v41 = MEMORY[0x277CBEBF8];
      dCopy = v43;
    }
  }

  else
  {
    v41 = MEMORY[0x277CBEBF8];
  }

  return v41;
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [dictionary objectForKeyedSubscript:@"threadNetworkStabilityLogEvent"];
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

  if (v5 && (v6 = [[HMDThreadNetworkStabilityLogEvent alloc] initWithDictionary:v5]) != 0)
  {
    v7 = v6;
    v10[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)serializeLogEvents:(id)events
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [events objectAtIndexedSubscript:0];
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
    v9 = @"threadNetworkStabilityLogEvent";
    serializedLogEvent = [v5 serializedLogEvent];
    v10[0] = serializedLogEvent;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v12[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  threadNetworkObserver = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  v9 = [threadNetworkObserver logEventForHomeWithUUID:dCopy associatedWithDate:dateCopy isDailySummary:1];

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

- (HMDHouseholdThreadNetworkStabilityLogEventFactory)initWithThreadNetworkObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = HMDHouseholdThreadNetworkStabilityLogEventFactory;
  v6 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_threadNetworkObserver, observer);
  }

  return v7;
}

@end