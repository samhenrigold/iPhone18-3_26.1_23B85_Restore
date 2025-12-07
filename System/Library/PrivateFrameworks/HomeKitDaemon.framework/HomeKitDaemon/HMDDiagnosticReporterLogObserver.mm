@interface HMDDiagnosticReporterLogObserver
+ (BOOL)isSupportedEvent:(id)event;
+ (id)domainForEvent:(id)event;
+ (id)logCategory;
+ (id)subTypeForEvent:(id)event;
+ (id)supportedEventClasses;
+ (id)typeForEvent:(id)event;
- (BOOL)shouldSubmitEvent:(id)event;
- (HMDDiagnosticReporterLogObserver)initWithLogEventDispatcher:(id)dispatcher;
- (HMMLogEventDispatching)logEventDispatcher;
- (void)observeEvent:(id)event;
- (void)start;
- (void)stop;
@end

@implementation HMDDiagnosticReporterLogObserver

- (HMMLogEventDispatching)logEventDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventDispatcher);

  return WeakRetained;
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  if ([objc_opt_class() isSupportedEvent:eventCopy])
  {
    clientQueue = [(HMDDiagnosticReporterLogObserver *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = eventCopy;
    dispatch_async(clientQueue, v6);
  }
}

void __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldSubmitEvent:*(a1 + 40)])
  {
    v2 = [MEMORY[0x277D0F8E0] processInfo];
    v3 = [*(a1 + 32) reporter];
    v4 = [objc_opt_class() domainForEvent:*(a1 + 40)];
    v5 = [objc_opt_class() typeForEvent:*(a1 + 40)];
    v6 = [objc_opt_class() subTypeForEvent:*(a1 + 40)];
    v7 = [v2 name];
    v8 = [v3 signatureWithDomain:v4 type:v5 subType:v6 detectedProcess:v7 triggerThresholdValues:0];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v2, "identifier")}];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B1E0]];

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

    if (v11)
    {
      [v8 setObject:v11 forKeyedSubscript:@"projectver"];
    }

    if ([*(a1 + 40) conformsToProtocol:&unk_283ECBB38])
    {
      v12 = *(a1 + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      [v14 updateDiagnosticReportSignature:v8];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      *buf = 138543618;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Submitting event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v23;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Submitting signature: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(&location, *(a1 + 32));
    v24 = [*(a1 + 32) reporter];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke_92;
    v31[3] = &unk_278689F20;
    objc_copyWeak(&v32, &location);
    v25 = [v24 snapshotWithSignature:v8 duration:0 event:0 payload:v31 reply:15.0];

    if ((v25 & 1) == 0)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        v30 = *(a1 + 40);
        *buf = 138543618;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to submit event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

void __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke_92(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitted event with response: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)stop
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  logEventDispatcher = [(HMDDiagnosticReporterLogObserver *)selfCopy logEventDispatcher];
  [logEventDispatcher removeObserver:selfCopy];
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  logEventDispatcher = [(HMDDiagnosticReporterLogObserver *)selfCopy logEventDispatcher];
  supportedEventClasses = [objc_opt_class() supportedEventClasses];
  [logEventDispatcher addObserver:selfCopy forEventClasses:supportedEventClasses];
}

- (HMDDiagnosticReporterLogObserver)initWithLogEventDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v18.receiver = self;
  v18.super_class = HMDDiagnosticReporterLogObserver;
  v5 = [(HMDDiagnosticReporterLogObserver *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_logEventDispatcher, dispatcherCopy);
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [mEMORY[0x277D0F8D0] preferenceForKey:@"memoryTriggerSize"];
    numberValue = [v8 numberValue];
    v6->_memoryExceptionThreshold = [numberValue unsignedIntegerValue];

    v10 = HMDispatchQueueNameString();
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v13;

    v15 = [objc_alloc(MEMORY[0x277D6AFC8]) initWithQueue:v6->_clientQueue];
    reporter = v6->_reporter;
    v6->_reporter = v15;
  }

  return v6;
}

- (BOOL)shouldSubmitEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  v13 = 1;
  if (v6)
  {
    currentMemoryUsage = [v6 currentMemoryUsage];
    if (currentMemoryUsage < -[HMDDiagnosticReporterLogObserver memoryExceptionThreshold](self, "memoryExceptionThreshold") || ([MEMORY[0x277CBEBD0] standardUserDefaults], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleForKey:", @"HMDDiagnosticReporterMemoryEventReportTime"), v11 = v10, v9, objc_msgSend(MEMORY[0x277CBEAA8], "timeIntervalSinceReferenceDate"), v12 - v11 < 86400.0))
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_282287 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_282287, &__block_literal_global_95_282288);
  }

  v3 = logCategory__hmf_once_v9_282289;

  return v3;
}

void __47__HMDDiagnosticReporterLogObserver_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v9_282289;
  logCategory__hmf_once_v9_282289 = v0;
}

+ (id)subTypeForEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy conformsToProtocol:&unk_283ECBB38] || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(eventCopy, "diagnosticReportEventSubType"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v4 = @"Assertion";
    }

    else if (v5 == objc_opt_class())
    {
      v4 = @"Messaging";
    }

    else if (v5 == objc_opt_class())
    {
      v4 = MREExceptionTypeToString();
    }

    else
    {
      v4 = @"Unknown";
    }
  }

  return v4;
}

+ (id)typeForEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy conformsToProtocol:&unk_283ECBB38] || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(eventCopy, "diagnosticReportEventType"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = MEMORY[0x277D6B228];
      goto LABEL_8;
    }

    if (v5 != objc_opt_class())
    {
      v6 = MEMORY[0x277D6B218];
LABEL_8:
      v4 = *v6;
      goto LABEL_10;
    }

    v4 = @"MemoryResourceException";
  }

LABEL_10:

  return v4;
}

+ (id)domainForEvent:(id)event
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    return @"Performance";
  }

  else
  {
    return @"HomeKit";
  }
}

+ (BOOL)isSupportedEvent:(id)event
{
  eventCopy = event;
  supportedEventClasses = [self supportedEventClasses];
  v6 = objc_opt_class();

  LOBYTE(eventCopy) = [supportedEventClasses containsObject:v6];
  return eventCopy;
}

+ (id)supportedEventClasses
{
  if (supportedEventClasses_onceToken_282313 != -1)
  {
    dispatch_once(&supportedEventClasses_onceToken_282313, &__block_literal_global_282314);
  }

  v3 = supportedEventClasses_supportedEventClasses_282315;

  return v3;
}

void __57__HMDDiagnosticReporterLogObserver_supportedEventClasses__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = supportedEventClasses_supportedEventClasses_282315;
  supportedEventClasses_supportedEventClasses_282315 = v0;
}

@end