@interface HMDMediaGroupSetupMetricDispatcher
+ (id)logCategory;
- (HMDMediaGroupSetupMetricDispatcher)initWithDataSource:(id)source logEventSubmitter:(id)submitter currentUpTicksFactory:(id)factory submissionTimerFactory:(id)timerFactory;
- (HMDMediaGroupSetupMetricDispatcherDataSource)dataSource;
- (HMMLogEventSubmitting)logEventSubmitter;
- (id)setupLatencyLogEvent:(unint64_t)event groupIdentifier:(id)identifier isController:(BOOL)controller isPrimaryResident:(BOOL)resident totalDuration:(unint64_t)duration setupSessionIdentifier:(id)sessionIdentifier setupRequestOption:(unint64_t)option totalDurationSinceSetupSessionStart:(unint64_t)self0 errorStage:(id)self1;
- (void)_resetActiveTracking;
- (void)_submitLogEvent:(id)event error:(id)error;
- (void)_submitLogEventWithTotalDuration:(unint64_t)duration totalDurationSinceSetupSessionStart:(unint64_t)start error:(id)error;
- (void)markRequestCommittedForGroupIdentifier:(id)identifier metricType:(unint64_t)type error:(id)error;
- (void)markRequestReceivedForGroupIdentifier:(id)identifier metricType:(unint64_t)type setupSessionIdentifier:(id)sessionIdentifier setupRequestOption:(unint64_t)option setupSessionStartTimeMS:(unint64_t)s;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDMediaGroupSetupMetricDispatcher

- (HMMLogEventSubmitting)logEventSubmitter
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);

  return WeakRetained;
}

- (HMDMediaGroupSetupMetricDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v27 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_lock_lock_with_options();
  activeGroupIdentifier = [(HMDMediaGroupSetupMetricDispatcher *)self activeGroupIdentifier];

  if (activeGroupIdentifier)
  {
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13 reason:@"Timeout in getting commited group"];
    currentUpTicksFactory = [(HMDMediaGroupSetupMetricDispatcher *)self currentUpTicksFactory];
    v8 = currentUpTicksFactory[2]();

    requestReceivedTimeMS = self->_requestReceivedTimeMS;
    if (v8 <= requestReceivedTimeMS || requestReceivedTimeMS == 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 - requestReceivedTimeMS;
    }

    if (self->_setupSessionIdentifier)
    {
      v12 = v8 - self->_setupSessionStartTimeMS;
    }

    else
    {
      v12 = 0;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v20;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Timer fired, submitting log event with duration: %llu error: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDMediaGroupSetupMetricDispatcher *)selfCopy _submitLogEventWithTotalDuration:v11 totalDurationSinceSetupSessionStart:v12 error:v6];
    [(HMDMediaGroupSetupMetricDispatcher *)selfCopy _resetActiveTracking];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer fired but no active metric type being tracked.", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDMediaGroupSetupMetricDispatcher *)selfCopy2 _resetActiveTracking];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)setupLatencyLogEvent:(unint64_t)event groupIdentifier:(id)identifier isController:(BOOL)controller isPrimaryResident:(BOOL)resident totalDuration:(unint64_t)duration setupSessionIdentifier:(id)sessionIdentifier setupRequestOption:(unint64_t)option totalDurationSinceSetupSessionStart:(unint64_t)self0 errorStage:(id)self1
{
  residentCopy = resident;
  controllerCopy = controller;
  stageCopy = stage;
  sessionIdentifierCopy = sessionIdentifier;
  identifierCopy = identifier;
  v19 = [HMDMediaGroupSetupLatencyLogEvent alloc];
  if (event - 1 > 3)
  {
    v20 = @"Unknown Metric Type";
  }

  else
  {
    v20 = off_27972A4F0[event - 1];
  }

  v21 = @"Unknown Role";
  if (residentCopy)
  {
    v21 = @"Primary Resident";
  }

  if (controllerCopy)
  {
    v22 = @"Controller";
  }

  else
  {
    v22 = v21;
  }

  uUIDString = [identifierCopy UUIDString];

  uUIDString2 = [sessionIdentifierCopy UUIDString];

  v25 = [(HMDMediaGroupSetupLatencyLogEvent *)v19 initWithRequestType:v20 systemUUID:uUIDString deviceRole:v22 totalDurationMS:duration setupSessionIdentifier:uUIDString2 setupRequestOption:option totalDurationSinceAccessorySetupStartMS:start errorStage:stageCopy];

  return v25;
}

- (void)_submitLogEvent:(id)event error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    coreAnalyticsEventDictionary = [eventCopy coreAnalyticsEventDictionary];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = coreAnalyticsEventDictionary;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitting log event: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  logEventSubmitter = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:eventCopy error:errorCopy];
}

- (void)_submitLogEventWithTotalDuration:(unint64_t)duration totalDurationSinceSetupSessionStart:(unint64_t)start error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->_lock);
  dataSource = [(HMDMediaGroupSetupMetricDispatcher *)self dataSource];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (dataSource)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v14;
      v24 = 2048;
      durationCopy = duration;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting log event: %llu error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    isCurrentDeviceIOSDevice = [dataSource isCurrentDeviceIOSDevice];
    isPrimaryResidentDevice = [dataSource isPrimaryResidentDevice];
    metricType = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy metricType];
    activeGroupIdentifier = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy activeGroupIdentifier];
    setupSessionIdentifier = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy setupSessionIdentifier];
    v20 = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy setupLatencyLogEvent:metricType groupIdentifier:activeGroupIdentifier isController:isCurrentDeviceIOSDevice isPrimaryResident:isPrimaryResidentDevice totalDuration:duration setupSessionIdentifier:setupSessionIdentifier setupRequestOption:[(HMDMediaGroupSetupMetricDispatcher *)selfCopy setupRequestOption] totalDurationSinceSetupSessionStart:start errorStage:@"Committed Group"];

    [(HMDMediaGroupSetupMetricDispatcher *)selfCopy _submitLogEvent:v20 error:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v21;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get data source for metric event submission", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDMediaGroupSetupMetricDispatcher *)selfCopy _resetActiveTracking];
  }
}

- (void)markRequestCommittedForGroupIdentifier:(id)identifier metricType:(unint64_t)type error:(id)error
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  if (type)
  {
    os_unfair_lock_lock_with_options();
    activeGroupIdentifier = self->_activeGroupIdentifier;
    if (activeGroupIdentifier)
    {
      if (([(NSUUID *)activeGroupIdentifier hmf_isEqualToUUID:identifierCopy]& 1) != 0)
      {
        metricType = self->_metricType;
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        if (metricType == type)
        {
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            v16 = v15;
            v17 = self->_activeGroupIdentifier;
            if (type > 4)
            {
              v18 = @"Unknown Metric Type";
            }

            else
            {
              v18 = off_27972A4F0[type - 1];
            }

            v44 = 138543874;
            v45 = v15;
            v46 = 2112;
            v47 = v17;
            v48 = 2112;
            v49 = v18;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Request committed for group identifier %@ metric type: %@", &v44, 0x20u);
          }

          objc_autoreleasePoolPop(v12);
          currentUpTicksFactory = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy currentUpTicksFactory];
          selfCopy->_requestCommittedTimeMS = currentUpTicksFactory[2]();

          requestReceivedTimeMS = selfCopy->_requestReceivedTimeMS;
          if (requestReceivedTimeMS)
          {
            requestCommittedTimeMS = selfCopy->_requestCommittedTimeMS;
            v39 = requestCommittedTimeMS >= requestReceivedTimeMS;
            v40 = requestCommittedTimeMS - requestReceivedTimeMS;
            if (v39)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          if (selfCopy->_setupSessionIdentifier)
          {
            v42 = selfCopy->_requestCommittedTimeMS - selfCopy->_setupSessionStartTimeMS;
          }

          else
          {
            v42 = 0;
          }

          [(HMDMediaGroupSetupMetricDispatcher *)selfCopy _submitLogEventWithTotalDuration:v41 totalDurationSinceSetupSessionStart:v42 error:errorCopy];
          [(HMDMediaGroupSetupMetricDispatcher *)selfCopy _resetActiveTracking];
          goto LABEL_38;
        }

        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v33 = v32;
          v34 = self->_metricType - 1;
          if (v34 > 3)
          {
            v35 = @"Unknown Metric Type";
          }

          else
          {
            v35 = off_27972A4F0[v34];
          }

          if (type > 4)
          {
            v43 = @"Unknown Metric Type";
          }

          else
          {
            v43 = off_27972A4F0[type - 1];
          }

          v44 = 138543874;
          v45 = v32;
          v46 = 2112;
          v47 = v35;
          v48 = 2112;
          v49 = v43;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher is tracking metric type %@ but ask to mark metric type %@", &v44, 0x20u);
        }
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v31 = self->_activeGroupIdentifier;
          v44 = 138543874;
          v45 = v30;
          v46 = 2112;
          v47 = identifierCopy;
          v48 = 2112;
          v49 = v31;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Tracking different group identifier: %@ active group identifier: %@", &v44, 0x20u);
        }
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = v25;
        v27 = selfCopy3->_metricType - 1;
        if (v27 > 3)
        {
          v28 = @"Unknown Metric Type";
        }

        else
        {
          v28 = off_27972A4F0[v27];
        }

        v44 = 138543618;
        v45 = v25;
        v46 = 2112;
        v47 = v28;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@No active setup tracking for metric type: %@", &v44, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v12);
LABEL_38:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_39;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v44 = 138543362;
    v45 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher cannot track unknown metric type for committed request", &v44, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_39:
}

- (void)markRequestReceivedForGroupIdentifier:(id)identifier metricType:(unint64_t)type setupSessionIdentifier:(id)sessionIdentifier setupRequestOption:(unint64_t)option setupSessionStartTimeMS:(unint64_t)s
{
  v58 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  if (type)
  {
    os_unfair_lock_lock_with_options();
    if (self->_activeGroupIdentifier)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = v16;
        activeGroupIdentifier = self->_activeGroupIdentifier;
        v19 = selfCopy->_metricType - 1;
        if (v19 > 3)
        {
          v20 = @"Unknown Metric Type";
        }

        else
        {
          v20 = off_27972A4F0[v19];
        }

        *buf = 138543874;
        v49 = v16;
        v50 = 2112;
        v51 = activeGroupIdentifier;
        v52 = 2112;
        v53 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Already has active setup tracking for metric identifier: %@ group type: %@", buf, 0x20u);
      }
    }

    else
    {
      metricType = self->_metricType;
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      if (!metricType)
      {
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          if (type > 4)
          {
            v33 = @"Unknown Metric Type";
          }

          else
          {
            v33 = off_27972A4F0[type - 1];
          }

          *buf = 138544386;
          v49 = v32;
          v50 = 2112;
          v51 = identifierCopy;
          v52 = 2112;
          v53 = v33;
          v54 = 2112;
          v55 = sessionIdentifierCopy;
          v56 = 2048;
          sCopy = s;
          v45 = v32;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Request received for group identifier %@ metric type: %@ session identifier: %@ setup start time: %llu", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v13);
        submissionTimer = selfCopy2->_submissionTimer;
        if (submissionTimer)
        {
          [(HMFTimer *)submissionTimer cancel];
          v35 = selfCopy2->_submissionTimer;
          selfCopy2->_submissionTimer = 0;

          context = objc_autoreleasePoolPush();
          v36 = selfCopy2;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543362;
            v49 = v38;
            v43 = v38;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Resetting the submission timer", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }

        objc_storeStrong(&self->_activeGroupIdentifier, identifier);
        self->_metricType = type;
        currentUpTicksFactory = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy2 currentUpTicksFactory];
        selfCopy2->_requestReceivedTimeMS = currentUpTicksFactory[2]();

        if (sessionIdentifierCopy)
        {
          objc_storeStrong(&selfCopy2->_setupSessionIdentifier, sessionIdentifier);
          selfCopy2->_setupSessionStartTimeMS = s;
        }

        selfCopy2->_setupRequestOption = option;
        submissionTimerFactory = [(HMDMediaGroupSetupMetricDispatcher *)selfCopy2 submissionTimerFactory];
        v41 = submissionTimerFactory[2]();
        v42 = selfCopy2->_submissionTimer;
        selfCopy2->_submissionTimer = v41;

        [(HMFTimer *)selfCopy2->_submissionTimer setDelegate:selfCopy2];
        [(HMFTimer *)selfCopy2->_submissionTimer resume];
        goto LABEL_21;
      }

      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = v27;
        v29 = self->_metricType - 1;
        if (v29 > 3)
        {
          v30 = @"Unknown Metric Type";
        }

        else
        {
          v30 = off_27972A4F0[v29];
        }

        *buf = 138543618;
        v49 = v27;
        v50 = 2112;
        v51 = v30;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher already tracking metric type: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v13);
LABEL_21:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_22;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v24;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Dispatcher cannot track unknown metric type for request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
LABEL_22:
}

- (void)_resetActiveTracking
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    activeGroupIdentifier = selfCopy->_activeGroupIdentifier;
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = activeGroupIdentifier;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Reset active tracking for group identifier: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  selfCopy->_metricType = 0;
  v8 = selfCopy->_activeGroupIdentifier;
  selfCopy->_activeGroupIdentifier = 0;

  selfCopy->_requestReceivedTimeMS = 0;
  selfCopy->_requestCommittedTimeMS = 0;
  submissionTimer = selfCopy->_submissionTimer;
  selfCopy->_submissionTimer = 0;

  setupSessionIdentifier = selfCopy->_setupSessionIdentifier;
  selfCopy->_setupSessionIdentifier = 0;

  selfCopy->_setupRequestOption = 0;
  selfCopy->_setupSessionStartTimeMS = 0;
}

id __75__HMDMediaGroupSetupMetricDispatcher_initWithDataSource_logEventSubmitter___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:900.0];

  return v0;
}

- (HMDMediaGroupSetupMetricDispatcher)initWithDataSource:(id)source logEventSubmitter:(id)submitter currentUpTicksFactory:(id)factory submissionTimerFactory:(id)timerFactory
{
  sourceCopy = source;
  submitterCopy = submitter;
  factoryCopy = factory;
  timerFactoryCopy = timerFactory;
  v21.receiver = self;
  v21.super_class = HMDMediaGroupSetupMetricDispatcher;
  v14 = [(HMDMediaGroupSetupMetricDispatcher *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v14->_dataSource, sourceCopy);
    v15->_metricType = 0;
    v16 = _Block_copy(factoryCopy);
    currentUpTicksFactory = v15->_currentUpTicksFactory;
    v15->_currentUpTicksFactory = v16;

    objc_storeWeak(&v15->_logEventSubmitter, submitterCopy);
    v18 = _Block_copy(timerFactoryCopy);
    submissionTimerFactory = v15->_submissionTimerFactory;
    v15->_submissionTimerFactory = v18;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_96209 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_96209, &__block_literal_global_36_96210);
  }

  v3 = logCategory__hmf_once_v20_96211;

  return v3;
}

uint64_t __49__HMDMediaGroupSetupMetricDispatcher_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_96211;
  logCategory__hmf_once_v20_96211 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end