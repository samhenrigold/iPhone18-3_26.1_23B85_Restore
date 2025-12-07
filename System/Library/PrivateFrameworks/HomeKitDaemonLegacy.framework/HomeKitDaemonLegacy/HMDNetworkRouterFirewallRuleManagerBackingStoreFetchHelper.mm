@interface HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper
+ (id)logCategory;
+ (unint64_t)__integerForPreferenceKey:(id)key defaultValue:(unint64_t)value;
- (BOOL)shouldRetry;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper)initWithActivity:(id)activity options:(id)options container:(id)container useAnonymousRequests:(BOOL)requests promise:(id)promise;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)setRetryIntervalSeconds:(double)seconds;
- (void)setShouldRetry:(BOOL)retry;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper

- (void)finishWithResult:(id)result error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (self->_finished)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Finished more than once!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [[HMDAssertionLogEvent alloc] initWithReason:@"Finished more than once!"];
    v23 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v23 submitLogEvent:v22];
  }

  self->_finished = 1;
  activity = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
  v9 = activity;
  if (errorCopy)
  {
    [activity markWithFormat:@"Fetch failed with error: %@", errorCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Fetch failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(NAPromise *)selfCopy2->_promise finishWithError:errorCopy];
  }

  else
  {
    [activity markWithFormat:@"Fetch succeeded"];

    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch succeeded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(NAPromise *)selfCopy3->_promise finishWithResult:resultCopy];
  }
}

- (void)setRetryIntervalSeconds:(double)seconds
{
  if (seconds < 0.0)
  {
    seconds = *MEMORY[0x277D17040];
  }

  self->_retryIntervalSeconds = seconds;
}

- (void)setShouldRetry:(BOOL)retry
{
  if (retry)
  {
    if (self->_retryIntervalSeconds == *MEMORY[0x277D17040])
    {
      self->_retryIntervalSeconds = 0.0;
    }
  }

  else
  {
    self->_retryIntervalSeconds = *MEMORY[0x277D17040];
  }
}

- (BOOL)shouldRetry
{
  v22 = *MEMORY[0x277D85DE8];
  maxRetryCount = [objc_opt_class() maxRetryCount];
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self retryCount]<= maxRetryCount)
  {
    operationStartTime = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self operationStartTime];

    if (!operationStartTime)
    {
      return self->_retryIntervalSeconds != *MEMORY[0x277D17040];
    }

    maxOperationDurationSeconds = [objc_opt_class() maxOperationDurationSeconds];
    v12 = [MEMORY[0x277CBEAA8] now];
    operationStartTime2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self operationStartTime];
    [v12 timeIntervalSinceDate:operationStartTime2];
    v15 = llround(v14);

    if (v15 < maxOperationDurationSeconds)
    {
      return self->_retryIntervalSeconds != *MEMORY[0x277D17040];
    }

    activity = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
    [activity markWithFormat:@"Cannot retry because we've exceeded the maximum operation duration (%ld)", maxOperationDurationSeconds];

    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v8;
      v20 = 2048;
      v21 = maxOperationDurationSeconds;
      v9 = "%{public}@Cannot retry because we've exceeded the maximum operation duration (%ld)";
      goto LABEL_9;
    }
  }

  else
  {
    activity2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
    [activity2 markWithFormat:@"Cannot retry because we've exceeded the maximum number of retries (%lu)", maxRetryCount];

    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v8;
      v20 = 2048;
      v21 = maxRetryCount;
      v9 = "%{public}@Cannot retry because we've exceeded the maximum number of retries (%lu)";
LABEL_9:
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v5);
  return 0;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_finished)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Forgot to call finishWithError", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [[HMDAssertionLogEvent alloc] initWithReason:@"Forgot to call finishWithError"];
    v8 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v8 submitLogEvent:v7];
  }

  v9.receiver = self;
  v9.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v9 dealloc];
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper)initWithActivity:(id)activity options:(id)options container:(id)container useAnonymousRequests:(BOOL)requests promise:(id)promise
{
  requestsCopy = requests;
  activityCopy = activity;
  optionsCopy = options;
  promiseCopy = promise;
  v15 = MEMORY[0x277CBC4F0];
  containerCopy = container;
  v17 = objc_alloc_init(v15);
  [v17 setContainer:containerCopy];

  [v17 setPreferAnonymousRequests:requestsCopy];
  if ([optionsCopy qualityOfService] != -1)
  {
    [v17 setQualityOfService:{objc_msgSend(optionsCopy, "qualityOfService")}];
  }

  v18 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  label = [optionsCopy label];
  [v18 setName:label];

  [v18 setDefaultConfiguration:v17];
  v25.receiver = self;
  v25.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper;
  v20 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_activity, activity);
    objc_storeStrong(&v21->_options, options);
    objc_storeStrong(&v21->_operationGroup, v18);
    v21->_retryIntervalSeconds = *MEMORY[0x277D17040];
    objc_storeStrong(&v21->_promise, promise);
    v21->_finished = 0;
    v22 = v21;
  }

  return v21;
}

+ (unint64_t)__integerForPreferenceKey:(id)key defaultValue:(unint64_t)value
{
  v5 = MEMORY[0x277D0F8D0];
  keyCopy = key;
  sharedPreferences = [v5 sharedPreferences];
  v8 = [sharedPreferences preferenceForKey:keyCopy];

  numberValue = [v8 numberValue];

  if (numberValue)
  {
    numberValue2 = [v8 numberValue];
    value = [numberValue2 unsignedIntegerValue];
  }

  return value;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_362);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

uint64_t __73__HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1;
  logCategory__hmf_once_v1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end