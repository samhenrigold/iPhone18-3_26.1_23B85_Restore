@interface HMDXPCMessageCountTracker
+ (HMDXPCMessageCountTracker)sharedTracker;
+ (id)logCategory;
- (HMDXPCMessageCountTracker)init;
- (HMDXPCMessageCountTracker)initWithLogEventSubmitter:(id)submitter submissionTimer:(id)timer;
- (NSDictionary)stateDump;
- (id)countersOfType:(int64_t)type;
- (id)mutableCountersOfType:(int64_t)type;
- (id)sampleCountersAndReset:(BOOL)reset;
- (void)_resetCounters;
- (void)configure;
- (void)incrementCounterOfType:(int64_t)type clientIdentifier:(id)identifier messageName:(id)name;
- (void)submitCounters;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDXPCMessageCountTracker

+ (HMDXPCMessageCountTracker)sharedTracker
{
  if (sharedTracker_onceToken != -1)
  {
    dispatch_once(&sharedTracker_onceToken, &__block_literal_global_107766);
  }

  v3 = sharedTracker_sharedTracker;

  return v3;
}

- (void)submitCounters
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting counters", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDXPCMessageCountTracker *)selfCopy sampleCountersAndReset:1];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = v39 = 0u;
  obj = [v25 allKeys];
  v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v24 = *v37;
    do
    {
      v10 = 0;
      v26 = v8;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v31 = HMDXPCCounterTypeAsString([v11 unsignedIntegerValue]);
        if (([v31 isEqualToString:@"XPCErroredRequests"] & 1) == 0)
        {
          v28 = v10;
          v12 = [v25 objectForKeyedSubscript:v11];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v30 = v12;
          allKeys = [v12 allKeys];
          v13 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v33;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v33 != v15)
                {
                  objc_enumerationMutation(allKeys);
                }

                v17 = *(*(&v32 + 1) + 8 * i);
                v18 = [v30 hmf_numberForKey:v17];
                v19 = [v17 componentsSeparatedByString:@"/"];
                firstObject = [v19 firstObject];
                lastObject = [v19 lastObject];
                v22 = [HMDXPCMessageCountersLogEvent XPCMessageCountersLogEventWithType:v31 peerInformation:firstObject messageName:lastObject count:v18];
                logEventSubmitter = [(HMDXPCMessageCountTracker *)selfCopy logEventSubmitter];
                [logEventSubmitter submitLogEvent:v22];
              }

              v14 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v14);
          }

          v9 = v24;
          v8 = v26;
          v10 = v28;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_107759 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_107759, &__block_literal_global_29_107760);
  }

  v3 = logCategory__hmf_once_v5_107761;

  return v3;
}

- (void)_resetCounters
{
  os_unfair_lock_assert_owner(&self->_lock);
  acceptedRequests = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  [acceptedRequests removeAllObjects];

  erroredRequests = [(HMDXPCMessageCountTracker *)self erroredRequests];
  [erroredRequests removeAllObjects];

  sentNotifications = [(HMDXPCMessageCountTracker *)self sentNotifications];
  [sentNotifications removeAllObjects];

  date = [MEMORY[0x277CBEAA8] date];
  [(HMDXPCMessageCountTracker *)self setLastResetDate:date];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  submissionTimer = [(HMDXPCMessageCountTracker *)self submissionTimer];

  if (submissionTimer == fireCopy)
  {

    [(HMDXPCMessageCountTracker *)self submitCounters];
  }
}

- (NSDictionary)stateDump
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HMDXPCMessageCountTracker *)self sampleCountersAndReset:0];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [v2 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v2 objectForKey:v9];
        v11 = HMDXPCCounterTypeAsString([v9 unsignedIntegerValue]);
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = objc_msgSend_copy(v3);

  return v12;
}

- (id)sampleCountersAndReset:(BOOL)reset
{
  resetCopy = reset;
  v14[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v13[0] = &unk_283E72A58;
  acceptedRequests = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  v6 = objc_msgSend_copy(acceptedRequests);
  v14[0] = v6;
  v13[1] = &unk_283E72A70;
  erroredRequests = [(HMDXPCMessageCountTracker *)self erroredRequests];
  v8 = objc_msgSend_copy(erroredRequests);
  v14[1] = v8;
  v13[2] = &unk_283E72A88;
  sentNotifications = [(HMDXPCMessageCountTracker *)self sentNotifications];
  v10 = objc_msgSend_copy(sentNotifications);
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (resetCopy)
  {
    [(HMDXPCMessageCountTracker *)self _resetCounters];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

- (void)incrementCounterOfType:(int64_t)type clientIdentifier:(id)identifier messageName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  nameCopy = [identifierCopy stringByAppendingFormat:@"/%@", nameCopy];
  hmf_stringWithSmallestEncoding = [nameCopy hmf_stringWithSmallestEncoding];

  os_unfair_lock_lock_with_options();
  v11 = [(HMDXPCMessageCountTracker *)self mutableCountersOfType:type];
  v12 = [v11 hmf_numberForKey:hmf_stringWithSmallestEncoding];
  unsignedLongValue = [v12 unsignedLongValue];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue + 1];
  [v11 setValue:v14 forKey:hmf_stringWithSmallestEncoding];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)countersOfType:(int64_t)type
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMDXPCMessageCountTracker *)self mutableCountersOfType:type];
  v6 = objc_msgSend_copy(v5);

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)mutableCountersOfType:(int64_t)type
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (type == 2)
  {
    sentNotifications = [(HMDXPCMessageCountTracker *)self sentNotifications];
  }

  else if (type == 1)
  {
    sentNotifications = [(HMDXPCMessageCountTracker *)self erroredRequests];
  }

  else
  {
    if (type)
    {
      v7 = _HMFPreconditionFailureWithFormat();
      [(HMDXPCMessageCountTracker *)v7 configure];
      return result;
    }

    sentNotifications = [(HMDXPCMessageCountTracker *)self acceptedRequests];
  }

  return sentNotifications;
}

- (void)configure
{
  submissionTimer = [(HMDXPCMessageCountTracker *)self submissionTimer];
  [submissionTimer setDelegate:self];

  submissionTimer2 = [(HMDXPCMessageCountTracker *)self submissionTimer];
  [submissionTimer2 resume];
}

- (HMDXPCMessageCountTracker)initWithLogEventSubmitter:(id)submitter submissionTimer:(id)timer
{
  submitterCopy = submitter;
  timerCopy = timer;
  v20.receiver = self;
  v20.super_class = HMDXPCMessageCountTracker;
  v9 = [(HMDXPCMessageCountTracker *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logEventSubmitter, submitter);
    objc_storeStrong(&v10->_submissionTimer, timer);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    acceptedRequests = v10->_acceptedRequests;
    v10->_acceptedRequests = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    erroredRequests = v10->_erroredRequests;
    v10->_erroredRequests = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sentNotifications = v10->_sentNotifications;
    v10->_sentNotifications = dictionary3;

    date = [MEMORY[0x277CBEAA8] date];
    lastResetDate = v10->_lastResetDate;
    v10->_lastResetDate = date;
  }

  return v10;
}

- (HMDXPCMessageCountTracker)init
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"xpcMessageCountTrackerSubmissionTimeInterval"];
  numberValue = [v4 numberValue];

  v6 = objc_alloc(MEMORY[0x277D0F920]);
  [numberValue doubleValue];
  v7 = [v6 initWithTimeInterval:12 options:?];
  v8 = +[HMDMetricsManager sharedLogEventSubmitter];
  v9 = [(HMDXPCMessageCountTracker *)self initWithLogEventSubmitter:v8 submissionTimer:v7];

  return v9;
}

void __40__HMDXPCMessageCountTracker_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_107761;
  logCategory__hmf_once_v5_107761 = v0;
}

uint64_t __42__HMDXPCMessageCountTracker_sharedTracker__block_invoke()
{
  v0 = objc_alloc_init(HMDXPCMessageCountTracker);
  v1 = sharedTracker_sharedTracker;
  sharedTracker_sharedTracker = v0;

  v2 = sharedTracker_sharedTracker;

  return [v2 configure];
}

@end