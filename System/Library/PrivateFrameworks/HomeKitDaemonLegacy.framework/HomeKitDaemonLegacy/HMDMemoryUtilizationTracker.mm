@interface HMDMemoryUtilizationTracker
+ (id)logCategory;
- (HMDMemoryUtilizationTracker)init;
- (HMDMemoryUtilizationTracker)initWithLogEventSubmitter:(id)submitter;
- (HMMLogEventSubmitting)logEventSubmitter;
- (void)trackMemoryUsageWithReason:(int64_t)reason;
@end

@implementation HMDMemoryUtilizationTracker

- (HMMLogEventSubmitting)logEventSubmitter
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);

  return WeakRetained;
}

- (void)trackMemoryUsageWithReason:(int64_t)reason
{
  v53 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *buffer = 0u;
  v5 = getpid();
  if (proc_pid_rusage(v5, 6, buffer))
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve memory foot-print", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = *(&v28 + 1);
    v11 = *(&v41 + 1);
    getpid();
    proc_reset_footprint_interval();
    v12 = [[HMDMemoryLogEvent alloc] initWithReason:reason currentMemoryUsage:v10 intervalMaxMemoryUsage:v11];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v16;
      v20 = 2048;
      currentMemoryUsage = [(HMDMemoryLogEvent *)v12 currentMemoryUsage];
      v22 = 2048;
      intervalMaxMemoryUsage = [(HMDMemoryLogEvent *)v12 intervalMaxMemoryUsage];
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Current process memory utilization: %lld, Interval peak memory utilization (Since last timer-based sample): %lld", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    logEventSubmitter = [(HMDMemoryUtilizationTracker *)selfCopy2 logEventSubmitter];
    [logEventSubmitter submitLogEvent:v12];
  }
}

- (HMDMemoryUtilizationTracker)initWithLogEventSubmitter:(id)submitter
{
  submitterCopy = submitter;
  if (submitterCopy)
  {
    v5 = submitterCopy;
    v11.receiver = self;
    v11.super_class = HMDMemoryUtilizationTracker;
    v6 = [(HMDMemoryUtilizationTracker *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_logEventSubmitter, v5);
    }

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDMemoryUtilizationTracker *)v9 init];
  }
}

- (HMDMemoryUtilizationTracker)init
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  v4 = [(HMDMemoryUtilizationTracker *)self initWithLogEventSubmitter:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_184173 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_184173, &__block_literal_global_184174);
  }

  v3 = logCategory__hmf_once_v3_184175;

  return v3;
}

uint64_t __42__HMDMemoryUtilizationTracker_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_184175;
  logCategory__hmf_once_v3_184175 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end