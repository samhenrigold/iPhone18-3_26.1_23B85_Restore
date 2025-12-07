@interface HMDAccessoryReachabilityChangedLogEventManager
+ (id)logCategory;
- (HMDAccessoryReachabilityChangedLogEventManager)initWithHome:(id)home;
- (HMDHome)home;
- (id)logIdentifier;
- (void)_disable;
- (void)_enable;
- (void)_reset;
- (void)_submit;
- (void)_submitDailyUpdateForAccessory:(id)accessory withTransportReport:(id)report;
- (void)_submitForAccessory:(id)accessory;
- (void)_submitForAccessory:(id)accessory withTransportReport:(id)report reachable:(BOOL)reachable changed:(BOOL)changed;
- (void)configure;
- (void)handlePrimaryResidentUpdatedNotification:(id)notification;
- (void)runDailyTask;
- (void)submitForAccessory:(id)accessory withTransportReport:(id)report reachable:(BOOL)reachable;
@end

@implementation HMDAccessoryReachabilityChangedLogEventManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)runDailyTask
{
  workQueue = [(HMDAccessoryReachabilityChangedLogEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDAccessoryReachabilityChangedLogEventManager_runDailyTask__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __62__HMDAccessoryReachabilityChangedLogEventManager_runDailyTask__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@action=submit reason=periodic", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _submit];
}

- (void)handlePrimaryResidentUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryReachabilityChangedLogEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HMDAccessoryReachabilityChangedLogEventManager_handlePrimaryResidentUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __91__HMDAccessoryReachabilityChangedLogEventManager_handlePrimaryResidentUpdatedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@action=enable reason=primary", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    return [*(a1 + 32) _enable];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@action=disable reason=not_primary", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    return [*(a1 + 32) _disable];
  }
}

- (void)_disable
{
  if (self->_enabled)
  {
    [(HMDAccessoryReachabilityChangedLogEventManager *)self _submit];
    self->_enabled = 0;
  }
}

- (void)_enable
{
  if (!self->_enabled)
  {
    [(HMDAccessoryReachabilityChangedLogEventManager *)self _reset];
    self->_enabled = 1;
  }
}

- (void)_submit
{
  if (self->_enabled)
  {
    v7[9] = v2;
    v7[10] = v3;
    home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
    accessories = [home accessories];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__HMDAccessoryReachabilityChangedLogEventManager__submit__block_invoke;
    v7[3] = &unk_27867B478;
    v7[4] = self;
    [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  }
}

- (void)_reset
{
  v3 = [MEMORY[0x277CBEAA8] now];
  home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  accessories = [home accessories];
  v7 = [v5 initWithCapacity:{objc_msgSend(accessories, "count")}];
  transportReachabilityChangeDatesByUUID = self->_transportReachabilityChangeDatesByUUID;
  self->_transportReachabilityChangeDatesByUUID = v7;

  accessories2 = [home accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke;
  v11[3] = &unk_278672E20;
  v11[4] = self;
  v12 = v3;
  v10 = v3;
  [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(*(a1 + 32) + 8);
  v6 = [v3 uuid];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [v3 transportReports];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke_2;
  v10[3] = &unk_278672DF8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
}

void __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = *(a1[4] + 8);
  v5 = a2;
  v8 = [v3 uuid];
  v6 = [v4 objectForKeyedSubscript:v8];
  v7 = [v5 linkType];

  [v6 setObject:v2 forKeyedSubscript:v7];
}

- (void)_submitForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  transportReports = [accessoryCopy transportReports];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAccessoryReachabilityChangedLogEventManager__submitForAccessory___block_invoke;
  v7[3] = &unk_278672DD0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  [transportReports hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
}

- (void)_submitDailyUpdateForAccessory:(id)accessory withTransportReport:(id)report
{
  reportCopy = report;
  accessoryCopy = accessory;
  -[HMDAccessoryReachabilityChangedLogEventManager _submitForAccessory:withTransportReport:reachable:changed:](self, "_submitForAccessory:withTransportReport:reachable:changed:", accessoryCopy, reportCopy, [accessoryCopy isReachable], 0);
}

- (void)_submitForAccessory:(id)accessory withTransportReport:(id)report reachable:(BOOL)reachable changed:(BOOL)changed
{
  changedCopy = changed;
  reachableCopy = reachable;
  accessoryCopy = accessory;
  reportCopy = report;
  if (accessoryCopy && reportCopy && self->_enabled)
  {
    transportReachabilityChangeDatesByUUID = self->_transportReachabilityChangeDatesByUUID;
    uuid = [accessoryCopy uuid];
    v13 = [(NSMutableDictionary *)transportReachabilityChangeDatesByUUID objectForKeyedSubscript:uuid];
    linkType = [reportCopy linkType];
    v15 = [v13 objectForKeyedSubscript:linkType];

    if (!v15)
    {
      reachableLastChangedTime = [reportCopy reachableLastChangedTime];
      if (!reachableLastChangedTime)
      {
        goto LABEL_10;
      }

      v15 = reachableLastChangedTime;
    }

    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = self->_transportReachabilityChangeDatesByUUID;
    uuid2 = [accessoryCopy uuid];
    v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:uuid2];

    if (!v22)
    {
      v22 = objc_opt_new();
      v23 = self->_transportReachabilityChangeDatesByUUID;
      uuid3 = [accessoryCopy uuid];
      [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:uuid3];
    }

    linkType2 = [reportCopy linkType];
    [v22 setObject:v17 forKeyedSubscript:linkType2];

    v26 = [HMDAccessoryReachabilityChangedLogEvent eventWithReachable:reachableCopy changed:changedCopy duration:accessoryCopy accessory:reportCopy transportReport:v19];
    logEventSubmitter = [(HMDAccessoryReachabilityChangedLogEventManager *)self logEventSubmitter];
    [logEventSubmitter submitLogEvent:v26 error:0];
  }

LABEL_10:
}

- (void)submitForAccessory:(id)accessory withTransportReport:(id)report reachable:(BOOL)reachable
{
  accessoryCopy = accessory;
  reportCopy = report;
  workQueue = [(HMDAccessoryReachabilityChangedLogEventManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HMDAccessoryReachabilityChangedLogEventManager_submitForAccessory_withTransportReport_reachable___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = reportCopy;
  reachableCopy = reachable;
  v11 = reportCopy;
  v12 = accessoryCopy;
  dispatch_async(workQueue, v13);
}

- (void)configure
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
  dailyScheduler = [home dailyScheduler];
  [dailyScheduler registerDailyTaskRunner:self];
}

- (HMDAccessoryReachabilityChangedLogEventManager)initWithHome:(id)home
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HMDAccessoryReachabilityChangedLogEventManager;
  v5 = [(HMDAccessoryReachabilityChangedLogEventManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
    v6->_enabled = 0;
    v7 = objc_opt_new();
    transportReachabilityChangeDatesByUUID = v6->_transportReachabilityChangeDatesByUUID;
    v6->_transportReachabilityChangeDatesByUUID = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("HMDReachabilityChangedLogEventManagerWorkQueue", v9);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_41728 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_41728, &__block_literal_global_41729);
  }

  v3 = logCategory__hmf_once_v4_41730;

  return v3;
}

void __61__HMDAccessoryReachabilityChangedLogEventManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_41730;
  logCategory__hmf_once_v4_41730 = v0;
}

@end