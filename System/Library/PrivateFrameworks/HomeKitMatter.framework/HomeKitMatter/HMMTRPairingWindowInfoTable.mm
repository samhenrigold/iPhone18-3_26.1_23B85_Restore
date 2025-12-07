@interface HMMTRPairingWindowInfoTable
+ (id)logCategory;
- (HMMTRPairingWindowInfoTable)init;
- (id)retrieveAccessoryServerForPairingWindowWithSetupPayload:(id)payload currentDate:(id)date;
- (void)_clearExpiredEntriesWithCurrentDate:(id)date;
- (void)registerPairingWindowWithSetupPayload:(id)payload currentDate:(id)date duration:(double)duration accessoryServer:(id)server;
@end

@implementation HMMTRPairingWindowInfoTable

- (void)_clearExpiredEntriesWithCurrentDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  table = [(HMMTRPairingWindowInfoTable *)self table];
  v5 = [table countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(table);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        table2 = [(HMMTRPairingWindowInfoTable *)self table];
        v11 = [table2 objectForKeyedSubscript:v9];

        accessoryServer = [v11 accessoryServer];
        if (!accessoryServer || ([v11 expirationDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "compare:", dateCopy), v13, v14 == -1))
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [table countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  table3 = [(HMMTRPairingWindowInfoTable *)self table];
  [table3 removeObjectsForKeys:array];

  if ([array count])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = array;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Expired setup payloads: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (id)retrieveAccessoryServerForPairingWindowWithSetupPayload:(id)payload currentDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HMMTRPairingWindowInfoTable *)self _clearExpiredEntriesWithCurrentDate:dateCopy];
  table = [(HMMTRPairingWindowInfoTable *)self table];
  v9 = [table objectForKeyedSubscript:payloadCopy];

  accessoryServer = [v9 accessoryServer];
  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = payloadCopy;
    v20 = 2112;
    v21 = accessoryServer;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Retrieves server with pairing window with setup payload: %@, server: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);

  return accessoryServer;
}

- (void)registerPairingWindowWithSetupPayload:(id)payload currentDate:(id)date duration:(double)duration accessoryServer:(id)server
{
  v29 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dateCopy = date;
  serverCopy = server;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v21 = 138544130;
    v22 = v16;
    v23 = 2112;
    v24 = payloadCopy;
    v25 = 2048;
    durationCopy = duration;
    v27 = 2112;
    v28 = serverCopy;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Registering pairing window with setup payload: %@, duration: %g, server: %@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  os_unfair_lock_lock(&selfCopy->_lock);
  v17 = [HMMTRPairingWindowInfoTableEntry alloc];
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:duration];
  v19 = [(HMMTRPairingWindowInfoTableEntry *)v17 initWithAccessoryServer:serverCopy expirationDate:v18];
  table = [(HMMTRPairingWindowInfoTable *)selfCopy table];
  [table setObject:v19 forKeyedSubscript:payloadCopy];

  [(HMMTRPairingWindowInfoTable *)selfCopy _clearExpiredEntriesWithCurrentDate:dateCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (HMMTRPairingWindowInfoTable)init
{
  v7.receiver = self;
  v7.super_class = HMMTRPairingWindowInfoTable;
  v2 = [(HMMTRPairingWindowInfoTable *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    table = v3->_table;
    v3->_table = dictionary;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2, &__block_literal_global_4925);
  }

  v3 = logCategory__hmf_once_v3;

  return v3;
}

uint64_t __42__HMMTRPairingWindowInfoTable_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3;
  logCategory__hmf_once_v3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end