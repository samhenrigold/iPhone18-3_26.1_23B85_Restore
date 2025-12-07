@interface HMMSiriSELFLogEventObserver
+ (id)logCategory;
- (HMMSiriSELFLogEventObserver)initWithSiriAnalyticsStream:(id)stream logEventDispatcher:(id)dispatcher;
- (void)observeEvent:(id)event;
@end

@implementation HMMSiriSELFLogEventObserver

- (void)observeEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = objc_opt_class();
    _os_log_impl(&dword_22B074000, v7, OS_LOG_TYPE_DEBUG, "%{public}@[SiriAnalytics] Received event from dispatcher: %{public}@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [eventCopy enabledForSiriSELFLogging])
  {
    siriAnalyticsStream = [(HMMSiriSELFLogEventObserver *)selfCopy siriAnalyticsStream];
    siriInstrumentationMessage = [eventCopy siriInstrumentationMessage];
    [siriAnalyticsStream emitMessage:siriInstrumentationMessage];
  }
}

- (HMMSiriSELFLogEventObserver)initWithSiriAnalyticsStream:(id)stream logEventDispatcher:(id)dispatcher
{
  streamCopy = stream;
  dispatcherCopy = dispatcher;
  v12.receiver = self;
  v12.super_class = HMMSiriSELFLogEventObserver;
  v9 = [(HMMSiriSELFLogEventObserver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_siriAnalyticsStream, stream);
    [dispatcherCopy addObserver:v10 forProtocol:&unk_283EFAEE8];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_1414 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_1414, &__block_literal_global_1415);
  }

  v3 = logCategory__hmf_once_v2_1416;

  return v3;
}

uint64_t __42__HMMSiriSELFLogEventObserver_logCategory__block_invoke()
{
  logCategory__hmf_once_v2_1416 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end