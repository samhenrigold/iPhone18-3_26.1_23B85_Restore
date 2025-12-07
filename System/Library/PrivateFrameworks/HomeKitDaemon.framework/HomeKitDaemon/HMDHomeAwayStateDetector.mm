@interface HMDHomeAwayStateDetector
+ (id)logCategory;
- (HMDHomeAwayStateDetector)initWithDataSource:(id)source;
- (void)_registerForNotifications;
- (void)configureWithCompletion:(id)completion;
- (void)determineStateWithReason:(unint64_t)reason;
- (void)handleHomeGeofencesRegisteredNotification:(id)notification;
- (void)handleHomeLocationChanged:(id)changed;
- (void)handleLocationAuthorizationChange:(int64_t)change;
- (void)updateLatestReportWithReason:(unint64_t)reason;
- (void)updateState:(unint64_t)state withReason:(unint64_t)reason;
@end

@implementation HMDHomeAwayStateDetector

- (void)handleLocationAuthorizationChange:(int64_t)change
{
  v12 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling location authorization changed notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDHomeAwayStateDetector *)selfCopy determineStateWithReason:4];
}

- (void)handleHomeLocationChanged:(id)changed
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeAwayStateDetector_handleHomeLocationChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__HMDHomeAwayStateDetector_handleHomeLocationChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling home location changed notification", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) determineStateWithReason:11];
}

- (void)handleHomeGeofencesRegisteredNotification:(id)notification
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDHomeAwayStateDetector_handleHomeGeofencesRegisteredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __70__HMDHomeAwayStateDetector_handleHomeGeofencesRegisteredNotification___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Location for home changed, setting state to unspecified and waiting initial state after new geofence is registered", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) setState:0];
}

- (void)updateLatestReportWithReason:(unint64_t)reason
{
  v31 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDHomeAwayStateDetector *)self state])
  {
    state = [(HMDHomeAwayStateDetector *)self state];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (state == 1)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@State is unknown, unsetting latestReport", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v13 = objc_alloc_init(HMDUserActivityReportUnsetValue);
      [(HMDUserActivityStateDetector *)selfCopy setLatestReport:v13];
    }

    else
    {
      if (v11)
      {
        v18 = HMFGetLogIdentifier();
        state2 = [(HMDHomeAwayStateDetector *)selfCopy state];
        if (state2 > 3)
        {
          v20 = @"Undefined";
        }

        else
        {
          v20 = off_278672FD8[state2];
        }

        v21 = v20;
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@State is %@, updating latestReport", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v22 = [HMDUserActivityHomeAwayReport alloc];
      dataSource2 = [(HMDUserActivityStateDetector *)selfCopy dataSource];
      home = [dataSource2 home];
      currentUser = [home currentUser];
      v13 = [(HMDUserActivityHomeAwayReport *)v22 initWithUser:currentUser state:[(HMDHomeAwayStateDetector *)selfCopy state] fromDevice:0 reason:reason];

      v26 = [[HMDUserActivityReportSetValue alloc] initWithReport:v13];
      [(HMDUserActivityStateDetector *)selfCopy setLatestReport:v26];
    }

    [(HMDUserActivityStateDetector *)selfCopy notifyDetectorStateChangedWithReason:reason];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@State is unspecified. Not updating report or notifying delegate", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)determineStateWithReason:(unint64_t)reason
{
  v29 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserActivityStateDetector *)self dataSource];
  location = [dataSource2 location];
  locationAuthorized = [location locationAuthorized];

  if (!locationAuthorized)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v21;
      v22 = "%{public}@Cannot determine state because location authorization is unknown";
LABEL_9:
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, v22, &v27, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v18);
    return;
  }

  dataSource3 = [(HMDUserActivityStateDetector *)self dataSource];
  location2 = [dataSource3 location];
  locationAuthorized2 = [location2 locationAuthorized];

  if (locationAuthorized2 == 1)
  {
    dataSource4 = [(HMDUserActivityStateDetector *)self dataSource];
    home = [dataSource4 home];
    homeLocation = [home homeLocation];

    if (homeLocation > 1)
    {
      if (homeLocation != 2 && homeLocation != 3)
      {
        return;
      }

      selfCopy3 = self;
      v17 = 3;
      goto LABEL_18;
    }

    if (homeLocation)
    {
      if (homeLocation != 1)
      {
        return;
      }

      selfCopy3 = self;
      v17 = 2;
LABEL_18:

      [(HMDHomeAwayStateDetector *)selfCopy3 updateState:v17 withReason:reason];
      return;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v21;
      v22 = "%{public}@Cannot determine state because home location is unknown";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Location authorization is not allowed. Setting state to unknown", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  [(HMDHomeAwayStateDetector *)selfCopy5 updateState:1 withReason:reason];
}

- (void)updateState:(unint64_t)state withReason:(unint64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDHomeAwayStateDetector *)self state]!= state)
  {
    state = [(HMDHomeAwayStateDetector *)self state];
    [(HMDHomeAwayStateDetector *)self setState:state];
    if (!state)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        if (state > 3)
        {
          v14 = @"Undefined";
        }

        else
        {
          v14 = off_278672FD8[state];
        }

        v15 = v14;
        v16 = 138543618;
        v17 = v13;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Initial state: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      reason = 1;
    }

    [(HMDHomeAwayStateDetector *)self updateLatestReportWithReason:reason];
  }
}

- (void)_registerForNotifications
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserActivityStateDetector *)self dataSource];
  home = [dataSource2 home];

  dataSource3 = [(HMDUserActivityStateDetector *)self dataSource];
  notificationCenter = [dataSource3 notificationCenter];
  homeLocationHandler = [home homeLocationHandler];
  [notificationCenter addObserver:self selector:sel_handleHomeGeofencesRegisteredNotification_ name:@"HMDLocationHomeGeofencesRegistered" object:homeLocationHandler];

  dataSource4 = [(HMDUserActivityStateDetector *)self dataSource];
  notificationCenter2 = [dataSource4 notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleHomeLocationChanged_ name:@"HMDHomeLocationChangedNotification" object:home];
}

- (void)configureWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring HomeAwayDetector", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDHomeAwayStateDetector *)selfCopy _registerForNotifications];
  [(HMDHomeAwayStateDetector *)selfCopy determineStateWithReason:1];
  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeAwayStateDetector state](v12, "state")}];
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configured HomeAwayDetector with initial state %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = _Block_copy(completionCopy);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16);
  }
}

- (HMDHomeAwayStateDetector)initWithDataSource:(id)source
{
  v4.receiver = self;
  v4.super_class = HMDHomeAwayStateDetector;
  result = [(HMDUserActivityStateDetector *)&v4 initWithDataSource:source];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_217164 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_217164, &__block_literal_global_217165);
  }

  v3 = logCategory__hmf_once_v14_217166;

  return v3;
}

void __39__HMDHomeAwayStateDetector_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_217166;
  logCategory__hmf_once_v14_217166 = v0;
}

@end