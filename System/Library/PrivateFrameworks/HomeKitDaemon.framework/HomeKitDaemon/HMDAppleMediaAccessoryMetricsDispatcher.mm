@interface HMDAppleMediaAccessoryMetricsDispatcher
- (HMDAppleMediaAccessoryMetricsDispatcher)initWithDataSource:(id)source logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler;
- (HMDAppleMediaAccessoryMetricsDispatcherDataSource)dataSource;
- (NSString)previousRoomName;
- (void)registerForDailySetRoomLogEvents;
- (void)runDailyTask;
- (void)setPreviousRoomName:(id)name;
- (void)submitDailySetRoomEvent;
- (void)submitDailyStatusEvent;
- (void)submitRoomChangeEvent:(id)event previousRoom:(id)room;
@end

@implementation HMDAppleMediaAccessoryMetricsDispatcher

- (HMDAppleMediaAccessoryMetricsDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)runDailyTask
{
  [(HMDAppleMediaAccessoryMetricsDispatcher *)self submitDailySetRoomEvent];

  [(HMDAppleMediaAccessoryMetricsDispatcher *)self submitDailyStatusEvent];
}

- (void)submitDailyStatusEvent
{
  v22 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDAppleMediaAccessoryMetricsDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:self];
    v6 = [v4 numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:self];
    v7 = [v4 numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:self];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2020000000;
    v21 = 0;
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke;
    v16[3] = &unk_2786711A8;
    p_buf = &buf;
    v9 = v8;
    v17 = v9;
    [v4 currentAccessorySensorStatusFlagsForAppleMediaAccessoryMetricsDispatcher:self completion:v16];
    v10 = [v4 workQueueForAppleMediaAccessoryMetricsDispatcher:self];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke_2;
    block[3] = &unk_2786711D0;
    block[6] = v5;
    block[7] = v6;
    block[8] = v7;
    block[4] = self;
    block[5] = &buf;
    dispatch_group_notify(v9, v10, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit daily accessory metric due to nil data source", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke_2(uint64_t a1)
{
  v2 = [HMDCurrentAppleMediaAccessoryConfigurationLogEvent alloc];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v8 = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)v2 initWithNumPairedSensors:v3 sensorStatus:v4 numPairedSensorAutomations:v5 numMediaAutomations:v6];

  v7 = [*(a1 + 32) logEventSubmitter];
  [v7 submitLogEvent:v8];
}

- (void)setPreviousRoomName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(nameCopy);
  previousRoomName = self->_previousRoomName;
  self->_previousRoomName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)previousRoomName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_previousRoomName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)submitRoomChangeEvent:(id)event previousRoom:(id)room
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  roomCopy = room;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Recording change but not submitting room changed event", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (!roomCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@previousRoom is nil. Substituting with empty string.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    roomCopy = &stru_283CF9D50;
  }

  [(HMDAppleMediaAccessoryMetricsDispatcher *)selfCopy setPreviousRoomName:roomCopy];
}

- (void)submitDailySetRoomEvent
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting daily room event", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dataSource = [(HMDAppleMediaAccessoryMetricsDispatcher *)selfCopy dataSource];
  v8 = dataSource;
  if (dataSource)
  {
    v9 = [dataSource currentRoomForAppleMediaAccessoryMetricsDispatcher:selfCopy];
    if (v9)
    {
      os_unfair_lock_lock_with_options();
      v10 = selfCopy->_previousRoomName;
      objc_storeStrong(&selfCopy->_previousRoomName, v9);
      os_unfair_lock_unlock(&selfCopy->_lock);
      v11 = objc_autoreleasePoolPush();
      v12 = selfCopy;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v14;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting daily room event with currentRoom: %@, previousRoom: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [[HMDAppleMediaAccessoryDailySetRoomEvent alloc] initWithCurrentRoom:v9 previousRoom:v10];
      logEventSubmitter = [(HMDAppleMediaAccessoryMetricsDispatcher *)v12 logEventSubmitter];
      [logEventSubmitter submitLogEvent:v15];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        previousRoomName = [(HMDAppleMediaAccessoryMetricsDispatcher *)v22 previousRoomName];
        v26 = 138543618;
        v27 = v24;
        v28 = 2112;
        v29 = previousRoomName;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Data sourced nil current room name when submitting set room event metric with previous room name %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@No data source to submit set room event metric", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)registerForDailySetRoomLogEvents
{
  dataSource = [(HMDAppleMediaAccessoryMetricsDispatcher *)self dataSource];
  v3 = [dataSource currentRoomForAppleMediaAccessoryMetricsDispatcher:self];
  [(HMDAppleMediaAccessoryMetricsDispatcher *)self setPreviousRoomName:v3];
}

- (HMDAppleMediaAccessoryMetricsDispatcher)initWithDataSource:(id)source logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler
{
  sourceCopy = source;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoryMetricsDispatcher;
  v11 = [(HMDAppleMediaAccessoryMetricsDispatcher *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v12->_logEventSubmitter, submitter);
    objc_storeStrong(&v12->_dailyScheduler, scheduler);
    previousRoomName = v12->_previousRoomName;
    v12->_previousRoomName = @"UNSET";

    [(HMMDailyScheduler *)v12->_dailyScheduler registerDailyTaskRunner:v12];
  }

  return v12;
}

@end