@interface HMDHouseholdActivityLogEvent
+ (id)coalescedEventFromHouseholdActivityLogEvents:(id)events homeUUID:(id)d contributors:(id)contributors;
+ (id)logCategory;
- (HMDHouseholdActivityLogEvent)initWithDictionary:(id)dictionary contributors:(id)contributors;
- (HMDHouseholdActivityLogEvent)initWithHomeUUID:(id)d contributors:(id)contributors;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initPopulatedFromDate:(id)date homeUUID:(id)d contributors:(id)contributors;
- (id)serializedMetric;
@end

@implementation HMDHouseholdActivityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v16 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contributors = [(HMDHouseholdActivityLogEvent *)self contributors];
  v5 = [contributors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contributors);
        }

        [*(*(&v11 + 1) + 8 * i) contributeLogEvent:self toCoreAnalyticsEvent:dictionary];
      }

      v6 = [contributors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = objc_msgSend_copy(dictionary);

  return v9;
}

- (id)serializedMetric
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  [dictionary setObject:homeUUIDString forKeyedSubscript:@"homeUUID"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contributors = [(HMDHouseholdActivityLogEvent *)self contributors];
  v6 = [contributors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(contributors);
        }

        [*(*(&v12 + 1) + 8 * i) contributeLogEvent:self toSerializedMetric:dictionary];
      }

      v7 = [contributors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = objc_msgSend_copy(dictionary);

  return v10;
}

- (HMDHouseholdActivityLogEvent)initWithDictionary:(id)dictionary contributors:(id)contributors
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contributorsCopy = contributors;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
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

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    v12 = [(HMDHouseholdActivityLogEvent *)self initWithHomeUUID:v11 contributors:contributorsCopy];
    if (v12)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = contributorsCopy;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v24 + 1) + 8 * v17++) deserializeLogEvent:v12 fromSerializedMetric:{dictionaryCopy, v24}];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }
    }

    selfCopy = v12;

    v19 = selfCopy;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Household activity is missing home UUID. Assuming from original SkyG seed and ignoring.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  return v19;
}

- (id)initPopulatedFromDate:(id)date homeUUID:(id)d contributors:(id)contributors
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  contributorsCopy = contributors;
  v11 = [(HMDHouseholdActivityLogEvent *)self initWithHomeUUID:dCopy contributors:contributorsCopy];
  if (v11)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = contributorsCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * v16++) populateLogEvent:v11 forHomeWithUUID:dCopy associatedToDate:{dateCopy, v18}];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  return v11;
}

- (HMDHouseholdActivityLogEvent)initWithHomeUUID:(id)d contributors:(id)contributors
{
  contributorsCopy = contributors;
  v11.receiver = self;
  v11.super_class = HMDHouseholdActivityLogEvent;
  v7 = [(HMMHomeLogEvent *)&v11 initWithHomeUUID:d];
  if (v7)
  {
    v8 = objc_msgSend_copy(contributorsCopy);
    contributors = v7->_contributors;
    v7->_contributors = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_19054 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_19054, &__block_literal_global_19055);
  }

  v3 = logCategory__hmf_once_v6_19056;

  return v3;
}

void __43__HMDHouseholdActivityLogEvent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v6_19056;
  logCategory__hmf_once_v6_19056 = v0;
}

+ (id)coalescedEventFromHouseholdActivityLogEvents:(id)events homeUUID:(id)d contributors:(id)contributors
{
  v70 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  contributorsCopy = contributors;
  v43 = dCopy;
  v10 = [[HMDHouseholdActivityLogEvent alloc] initWithHomeUUID:dCopy contributors:contributorsCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = contributorsCopy;
  v12 = [v11 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v57;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v56 + 1) + 8 * i) startCoalescingLogEvent:v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v13);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = eventsCopy;
  v16 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v16)
  {
    v18 = v16;
    v42 = *v53;
    *&v17 = 138543874;
    v39 = v17;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v52 + 1) + 8 * j);
        homeUUID = [v20 homeUUID];
        v22 = [homeUUID isEqual:v43];

        if ((v22 & 1) == 0)
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            homeUUID2 = [v20 homeUUID];
            *buf = v39;
            v63 = v26;
            v64 = 2112;
            v65 = homeUUID2;
            v66 = 2112;
            v67 = v43;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Source household data log event home UUID doesn't match new event's home UUID: %@, %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v23);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v28 = v11;
        v29 = [v28 countByEnumeratingWithState:&v48 objects:v61 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v49;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v49 != v31)
              {
                objc_enumerationMutation(v28);
              }

              [*(*(&v48 + 1) + 8 * k) coalesceLogEvent:v10 fromSourceEvent:v20];
            }

            v30 = [v28 countByEnumeratingWithState:&v48 objects:v61 count:16];
          }

          while (v30);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v18);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v33 = v11;
  v34 = [v33 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v45;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v44 + 1) + 8 * m) finishCoalescingLogEvent:v10];
      }

      v35 = [v33 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v35);
  }

  return v10;
}

@end