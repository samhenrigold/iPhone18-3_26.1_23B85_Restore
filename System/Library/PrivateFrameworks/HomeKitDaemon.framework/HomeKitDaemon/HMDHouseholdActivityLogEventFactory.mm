@interface HMDHouseholdActivityLogEventFactory
- (HMDHouseholdActivityLogEventFactory)initWithContributors:(id)contributors;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdActivityLogEventFactory

- (void)deleteCountersAfterDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v6 = [contributors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(contributors);
        }

        [*(*(&v10 + 1) + 8 * v9++) deleteCountersAfterDate:dateCopy];
      }

      while (v7 != v9);
      v7 = [contributors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)deleteCountersBeforeDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v6 = [contributors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(contributors);
        }

        [*(*(&v10 + 1) + 8 * v9++) deleteCountersBeforeDate:dateCopy];
      }

      while (v7 != v9);
      v7 = [contributors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
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
          [v8 addObject:{v16, v21}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v18 = [HMDHouseholdActivityLogEvent coalescedEventFromHouseholdActivityLogEvents:v8 homeUUID:dCopy contributors:contributors];
  v25 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

  return v19;
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v10[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [HMDHouseholdActivityLogEvent alloc];
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v7 = [(HMDHouseholdActivityLogEvent *)v5 initWithDictionary:dictionaryCopy contributors:contributors];

  if (v7)
  {
    v10[0] = v7;
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

  serializedMetric = [v5 serializedMetric];

  return serializedMetric;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v13[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  v8 = [HMDHouseholdActivityLogEvent alloc];
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v10 = [(HMDHouseholdActivityLogEvent *)v8 initPopulatedFromDate:dateCopy homeUUID:dCopy contributors:contributors];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  return v11;
}

- (HMDHouseholdActivityLogEventFactory)initWithContributors:(id)contributors
{
  contributorsCopy = contributors;
  v9.receiver = self;
  v9.super_class = HMDHouseholdActivityLogEventFactory;
  v6 = [(HMDHouseholdActivityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contributors, contributors);
  }

  return v7;
}

@end