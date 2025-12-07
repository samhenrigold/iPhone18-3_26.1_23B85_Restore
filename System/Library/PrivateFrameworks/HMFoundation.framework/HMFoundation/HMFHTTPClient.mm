@interface HMFHTTPClient
+ (id)baseURLWithScheme:(id)scheme hostAddress:(id)address port:(unint64_t)port;
+ (id)logCategory;
- (BOOL)isPinging;
- (BOOL)isReachable;
- (BOOL)requestClientReachabilityPingWithRetry:(BOOL)retry;
- (HMFHTTPClient)init;
- (HMFHTTPClient)initWithBaseURL:(id)l configuration:(id)configuration;
- (HMFHTTPClient)initWithBaseURL:(id)l configuration:(id)configuration netManager:(id)manager;
- (HMFHTTPClient)initWithBaseURL:(id)l configuration:(id)configuration session:(id)session reachabilityMonitor:(id)monitor netManager:(id)manager;
- (HMFHTTPClient)initWithBaseURL:(id)l options:(unint64_t)options;
- (HMFHTTPClient)initWithNetService:(id)service options:(unint64_t)options;
- (HMFHTTPClient)initWithService:(id)service configuration:(id)configuration;
- (HMFHTTPClient)initWithService:(id)service configuration:(id)configuration netManager:(id)manager;
- (HMFHTTPClient)initWithService:(id)service configuration:(id)configuration session:(id)session reachabilityMonitor:(id)monitor netManager:(id)manager;
- (HMFHTTPClientConfiguration)configuration;
- (HMFHTTPClientDelegate)delegate;
- (NSString)debugDescription;
- (NSURL)baseURL;
- (id)attributeDescriptions;
- (id)createNSURLSession:(id)session;
- (id)logIdentifier;
- (unint64_t)options;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_sendRequest:(id)request baseURL:(id)l completionHandler:(id)handler;
- (void)cancelPendingRequests;
- (void)dealloc;
- (void)finishCommonInitialization;
- (void)invalidate;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)resolveWithCompletionHandler:(id)handler;
- (void)sendRequest:(id)request completionHandler:(id)handler;
- (void)setPinging:(BOOL)pinging;
- (void)setReachable:(BOOL)reachable;
- (void)startDelegatedPingTimer;
- (void)startReachabilityProbe;
- (void)stopDelegatedPingTimer;
- (void)timerDidFire:(id)fire;
@end

@implementation HMFHTTPClient

+ (id)baseURLWithScheme:(id)scheme hostAddress:(id)address port:(unint64_t)port
{
  v31 = *MEMORY[0x277D85DE8];
  schemeCopy = scheme;
  addressCopy = address;
  v10 = addressCopy;
  if (!schemeCopy)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle(selfCopy3, v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = HMFGetLogIdentifier(selfCopy3);
    *buf = 138543362;
    v30 = v20;
    v21 = "%{public}@Scheme is required";
LABEL_12:
    _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);

    goto LABEL_13;
  }

  if (!addressCopy)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle(selfCopy3, v22);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = HMFGetLogIdentifier(selfCopy3);
    *buf = 138543362;
    v30 = v20;
    v21 = "%{public}@Host address is required";
    goto LABEL_12;
  }

  if (!port)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle(selfCopy3, v23);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier(selfCopy3);
      *buf = 138543362;
      v30 = v20;
      v21 = "%{public}@Port is required";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_14;
  }

  if ([addressCopy addressFamily] == 2)
  {
    addressString = [v10 addressString];
    v12 = [addressString stringByReplacingOccurrencesOfString:@"%" withString:@"%25"];

    v13 = MEMORY[0x277CBEBC0];
    port = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://[%@]:%tu", schemeCopy, v12, port];
    v15 = [v13 URLWithString:port];
  }

  else
  {
    v25 = MEMORY[0x277CBEBC0];
    v26 = MEMORY[0x277CCACA8];
    addressString2 = [v10 addressString];
    port2 = [v26 stringWithFormat:@"%@://%@:%tu", schemeCopy, addressString2, port];
    v15 = [v25 URLWithString:port2];
  }

LABEL_14:

  return v15;
}

- (HMFHTTPClient)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFHTTPClient)initWithBaseURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  lCopy = l;
  v7 = objc_alloc_init(HMFHTTPClientConfiguration);
  v8 = v7;
  if ((optionsCopy & 1) == 0)
  {
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [(HMFHTTPClientConfiguration *)v8 setMonitorsReachability:1];
    if ((optionsCopy & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(HMFHTTPClientConfiguration *)v7 setRequiresEncryption:1];
  if ((optionsCopy & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((optionsCopy & 4) != 0)
  {
LABEL_4:
    [(HMFHTTPClientConfiguration *)v8 setSupportsWakeOnLAN:1];
  }

LABEL_5:
  v9 = [(HMFHTTPClient *)self initWithBaseURL:lCopy configuration:v8];

  return v9;
}

- (HMFHTTPClient)initWithBaseURL:(id)l configuration:(id)configuration
{
  configurationCopy = configuration;
  lCopy = l;
  v8 = +[HMFNetManager sharedManager];
  v9 = [(HMFHTTPClient *)self initWithBaseURL:lCopy configuration:configurationCopy netManager:v8];

  return v9;
}

- (HMFHTTPClient)initWithBaseURL:(id)l configuration:(id)configuration netManager:(id)manager
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  configurationCopy = configuration;
  managerCopy = manager;
  v11 = lCopy;
  scheme = [v11 scheme];

  if (scheme && ([v11 host], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    port = [v11 port];

    if (port)
    {
      baseURL = [v11 baseURL];

      if (baseURL)
      {
        baseURL2 = [v11 baseURL];

        v11 = baseURL2;
      }

      if ([configurationCopy monitorsReachability])
      {
        v17 = [HMFNetAddress alloc];
        host = [v11 host];
        v19 = [(HMFNetAddress *)v17 initWithHostname:host];

        v20 = [[HMFNetMonitor alloc] initWithNetAddress:v19];
      }

      else
      {
        v20 = 0;
      }

      v27 = [(HMFHTTPClient *)self createNSURLSession:configurationCopy];
      selfCopy = [(HMFHTTPClient *)self initWithBaseURL:v11 configuration:configurationCopy session:v27 reachabilityMonitor:v20 netManager:managerCopy];

      v26 = selfCopy;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle(selfCopy, v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier(selfCopy);
    v29 = 138543618;
    v30 = v25;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid base URL: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = 0;
LABEL_14:

  return v26;
}

- (HMFHTTPClient)initWithBaseURL:(id)l configuration:(id)configuration session:(id)session reachabilityMonitor:(id)monitor netManager:(id)manager
{
  lCopy = l;
  configurationCopy = configuration;
  sessionCopy = session;
  monitorCopy = monitor;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = HMFHTTPClient;
  v17 = [(HMFHTTPClient *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v19 = HMFDispatchQueueName(v17, 0);
    v20 = dispatch_queue_create(v19, 0);
    queue = v18->_queue;
    v18->_queue = v20;

    v22 = [lCopy copy];
    baseURL = v18->_baseURL;
    v18->_baseURL = v22;

    v24 = [configurationCopy copy];
    configuration = v18->_configuration;
    v18->_configuration = v24;

    objc_storeStrong(&v18->_session, session);
    objc_storeStrong(&v18->_reachabilityMonitor, monitor);
    objc_storeStrong(&v18->_netManager, manager);
    [(HMFHTTPClient *)v18 finishCommonInitialization];
  }

  return v18;
}

- (HMFHTTPClient)initWithNetService:(id)service options:(unint64_t)options
{
  optionsCopy = options;
  serviceCopy = service;
  v7 = objc_alloc_init(HMFHTTPClientConfiguration);
  v8 = v7;
  if ((optionsCopy & 1) == 0)
  {
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [(HMFHTTPClientConfiguration *)v8 setMonitorsReachability:1];
    if ((optionsCopy & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(HMFHTTPClientConfiguration *)v7 setRequiresEncryption:1];
  if ((optionsCopy & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((optionsCopy & 4) != 0)
  {
LABEL_4:
    [(HMFHTTPClientConfiguration *)v8 setSupportsWakeOnLAN:1];
  }

LABEL_5:
  v9 = [(HMFHTTPClient *)self initWithService:serviceCopy configuration:v8];

  return v9;
}

- (HMFHTTPClient)initWithService:(id)service configuration:(id)configuration
{
  configurationCopy = configuration;
  serviceCopy = service;
  v8 = +[HMFNetManager sharedManager];
  v9 = [(HMFHTTPClient *)self initWithService:serviceCopy configuration:configurationCopy netManager:v8];

  return v9;
}

- (HMFHTTPClient)initWithService:(id)service configuration:(id)configuration netManager:(id)manager
{
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  configurationCopy = configuration;
  managerCopy = manager;
  if (serviceCopy)
  {
    if ([configurationCopy monitorsReachability])
    {
      v11 = [[HMFNetMonitor alloc] initWithNetService:serviceCopy];
    }

    else
    {
      v11 = 0;
    }

    v18 = [(HMFHTTPClient *)self createNSURLSession:configurationCopy];
    selfCopy = [(HMFHTTPClient *)self initWithService:serviceCopy configuration:configurationCopy session:v18 reachabilityMonitor:v11 netManager:managerCopy];

    v17 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle(selfCopy, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier(selfCopy);
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Network service is required", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v17 = 0;
  }

  return v17;
}

- (HMFHTTPClient)initWithService:(id)service configuration:(id)configuration session:(id)session reachabilityMonitor:(id)monitor netManager:(id)manager
{
  serviceCopy = service;
  configurationCopy = configuration;
  sessionCopy = session;
  monitorCopy = monitor;
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = HMFHTTPClient;
  v18 = [(HMFHTTPClient *)&v30 init];
  v19 = v18;
  if (v18)
  {
    v20 = HMFDispatchQueueName(v18, 0);
    v21 = dispatch_queue_create(v20, 0);
    queue = v19->_queue;
    v19->_queue = v21;

    objc_storeStrong(&v19->_netService, service);
    v23 = [configurationCopy copy];
    configuration = v19->_configuration;
    v19->_configuration = v23;

    objc_storeStrong(&v19->_session, session);
    objc_storeStrong(&v19->_reachabilityMonitor, monitor);
    objc_storeStrong(&v19->_netManager, manager);
    if (v19->_reachabilityMonitor)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCABD8]);
      reachabilityProbeQueue = v19->_reachabilityProbeQueue;
      v19->_reachabilityProbeQueue = v25;

      v27 = v19->_reachabilityProbeQueue;
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HMFDispatchQueueName(v19, @"reachabilityProbeQueue"];
      [(NSOperationQueue *)v27 setName:v28];

      [(NSOperationQueue *)v19->_reachabilityProbeQueue setMaxConcurrentOperationCount:1];
      [(NSOperationQueue *)v19->_reachabilityProbeQueue setQualityOfService:25];
    }

    [(HMFHTTPClient *)v19 finishCommonInitialization];
  }

  return v19;
}

- (id)createNSURLSession:(id)session
{
  v4 = MEMORY[0x277CBABC8];
  sessionCopy = session;
  defaultSessionConfiguration = [v4 defaultSessionConfiguration];
  [defaultSessionConfiguration setHTTPCookieAcceptPolicy:1];
  [defaultSessionConfiguration setHTTPCookieStorage:0];
  [defaultSessionConfiguration setHTTPShouldSetCookies:0];
  [defaultSessionConfiguration setURLCredentialStorage:0];
  [defaultSessionConfiguration setURLCache:0];
  [defaultSessionConfiguration setHTTPShouldUsePipelining:1];
  allowsCellularAccess = [sessionCopy allowsCellularAccess];

  [defaultSessionConfiguration setAllowsCellularAccess:allowsCellularAccess];
  v8 = MEMORY[0x277CBABB8];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v10 = [v8 sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:mainQueue];

  return v10;
}

- (void)finishCommonInitialization
{
  v11 = *MEMORY[0x277D85DE8];
  self->_reachable = 1;
  timerFactory = self->_timerFactory;
  self->_timerFactory = &__block_literal_global_31;

  [(HMFNetMonitor *)self->_reachabilityMonitor setDelegate:self];
  if ([(HMFHTTPClientConfiguration *)self->_configuration supportsWakeOnLAN])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle(selfCopy, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(selfCopy);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering for WOW assertion", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMFNetManager *)selfCopy->_netManager registerWoWAssertionForObject:selfCopy];
  }

  [(HMFHTTPClient *)self resolveWithCompletionHandler:0];
}

HMFExponentialBackoffTimer *__43__HMFHTTPClient_finishCommonInitialization__block_invoke()
{
  v0 = [[HMFExponentialBackoffTimer alloc] initWithMinimumTimeInterval:3 maximumTimeInterval:1 exponentialFactor:1.0 options:1800.0];

  return v0;
}

- (void)dealloc
{
  [(HMFNetManager *)self->_netManager deregisterObject:self];
  v3.receiver = self;
  v3.super_class = HMFHTTPClient;
  [(HMFHTTPClient *)&v3 dealloc];
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  baseURL = [(HMFHTTPClient *)self baseURL];
  v5 = +[HMFPrivateObjectFormatter defaultFormatter];
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"URL" value:baseURL options:0 formatter:v5];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  baseURL = [(HMFHTTPClient *)self baseURL];
  session = [(HMFHTTPClient *)self session];
  v7 = [session description];
  v8 = [v3 stringWithFormat:@"<%@ URL = %@, Session = %@, active = %d, pinging = %d, proxy = %d, reachable = %d>", shortDescription, baseURL, v7, -[HMFHTTPClient isActive](self, "isActive"), -[HMFHTTPClient isPinging](self, "isPinging"), -[HMFHTTPClient isProxy](self, "isProxy"), -[HMFHTTPClient isReachable](self, "isReachable")];

  return v8;
}

- (HMFHTTPClientConfiguration)configuration
{
  v2 = [(HMFHTTPClientConfiguration *)self->_configuration copy];

  return v2;
}

- (unint64_t)options
{
  requiresEncryption = [(HMFHTTPClientConfiguration *)self->_configuration requiresEncryption];
  if ([(HMFHTTPClientConfiguration *)self->_configuration monitorsReachability])
  {
    requiresEncryption |= 2uLL;
  }

  if ([(HMFHTTPClientConfiguration *)self->_configuration supportsWakeOnLAN])
  {
    return requiresEncryption | 4;
  }

  else
  {
    return requiresEncryption;
  }
}

- (NSURL)baseURL
{
  v36 = *MEMORY[0x277D85DE8];
  netService = self->_netService;
  if (netService)
  {
    hostName = [(HMFNetService *)netService hostName];
    addresses = [(HMFNetService *)self->_netService addresses];
    port = [(HMFNetService *)self->_netService port];
    if ([addresses count])
    {
      v7 = port == -1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      if ([(HMFHTTPClientConfiguration *)self->_configuration requiresEncryption])
      {
        v10 = @"https";
      }

      else
      {
        v10 = @"http";
      }

      if (hostName)
      {
        firstObject = hostName;
      }

      else
      {
        firstObject = [addresses firstObject];
      }

      v12 = firstObject;
      if ([(HMFHTTPClientConfiguration *)self->_configuration supportsWakeOnLAN])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = addresses;
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v26 = v10;
          v16 = *v28;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v27 + 1) + 8 * i);
              if ([v18 addressFamily] == 1)
              {
                v19 = v18;

                v12 = v19;
                goto LABEL_26;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

LABEL_26:
          v10 = v26;
        }

        if ([v12 addressFamily] != 1)
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy = self;
          v23 = HMFGetOSLogHandle(selfCopy, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = HMFGetLogIdentifier(selfCopy);
            *buf = 138543618;
            v32 = v24;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_INFO, "%{public}@No available IPv4 address, falling back to '%@', WoW may fail.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v20);
        }
      }

      v8 = [HMFHTTPClient baseURLWithScheme:v10 hostAddress:v12 port:port];
    }
  }

  else
  {
    v8 = self->_baseURL;
  }

  return v8;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setReachable:(BOOL)reachable
{
  reachableCopy = reachable;
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_reachable == reachableCopy)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_reachable = reachableCopy;
    if (!reachableCopy)
    {
      self->_active = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    selfCopy = self;
    v6 = objc_autoreleasePoolPush();
    v7 = selfCopy;
    v9 = HMFGetOSLogHandle(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(v7);
      v11 = v10;
      v12 = @"unreachable";
      if (reachableCopy)
      {
        v12 = @"reachable";
      }

      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of reachablity change to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    delegate = [(HMFHTTPClient *)v7 delegate];
    if (reachableCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate clientDidBecomeReachable:v7];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [delegate clientDidBecomeUnreachable:v7];
    }
  }
}

- (BOOL)isPinging
{
  os_unfair_lock_lock_with_options();
  pinging = self->_pinging;
  os_unfair_lock_unlock(&self->_lock);
  return pinging;
}

- (void)setPinging:(BOOL)pinging
{
  os_unfair_lock_lock_with_options();
  self->_pinging = pinging;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startReachabilityProbe
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFHTTPClient_startReachabilityProbe__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__HMFHTTPClient_startReachabilityProbe__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  v3 = v2;
  if (v2)
  {
    if ([v2 isPublishing])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v7 = HMFGetOSLogHandle(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier(v5);
        *buf = 138543362;
        v25 = v8;
        _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting net service reachability resolution", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v9 = objc_alloc_init(HMFBlockOperation);
      objc_initWeak(buf, *(a1 + 32));
      objc_initWeak(&location, v9);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __39__HMFHTTPClient_startReachabilityProbe__block_invoke_74;
      v19 = &unk_2786E7910;
      objc_copyWeak(&v21, &location);
      objc_copyWeak(&v22, buf);
      v20 = v3;
      [(HMFBlockOperation *)v9 addExecutionBlock:&v16];
      v10 = [*(a1 + 32) reachabilityProbeQueue];
      [v10 addOperation:v9];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else if ([*(a1 + 32) isReachable] && (objc_msgSend(*(a1 + 32), "isPinging") & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v14 = HMFGetOSLogHandle(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier(v12);
        *buf = 138543362;
        v25 = v15;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Service is unreachable, performing a one-time ping", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      if (([*(a1 + 32) requestClientReachabilityPingWithRetry:0] & 1) == 0)
      {
        [*(a1 + 32) setReachable:0];
      }
    }
  }

  else if (([*(a1 + 32) requestClientReachabilityPingWithRetry:1] & 1) == 0)
  {
    [*(a1 + 32) setReachable:0];
  }
}

void __39__HMFHTTPClient_startReachabilityProbe__block_invoke_74(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(v6);
      v10 = *(a1 + 32);
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting confirmation for service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__HMFHTTPClient_startReachabilityProbe__block_invoke_75;
    v12[3] = &unk_2786E75F8;
    objc_copyWeak(&v13, (a1 + 40));
    objc_copyWeak(&v14, (a1 + 48));
    [v11 confirmWithTimeout:v12 completionHandler:15.0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
  }
}

void __39__HMFHTTPClient_startReachabilityProbe__block_invoke_75(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = v6;
    if (v3)
    {
      v8 = [v6 isReachable];
      v9 = objc_autoreleasePoolPush();
      v10 = v7;
      v12 = HMFGetOSLogHandle(v10, v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v13)
        {
          v14 = HMFGetLogIdentifier(v10);
          v23 = 138543362;
          v24 = v14;
          _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to confirm service, marking the client as unreachable", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [v10 setReachable:0];
      }

      else
      {
        if (v13)
        {
          v22 = HMFGetLogIdentifier(v10);
          v23 = 138543362;
          v24 = v22;
          _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to confirm service, the client is already unreachable", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      v15 = [v6 reachabilityProbeQueue];
      [v15 cancelAllOperations];

      v16 = [v7 delegatedPingTimer];

      if (!v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v7;
        v20 = HMFGetOSLogHandle(v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier(v18);
          v23 = 138543362;
          v24 = v21;
          _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Confirmed service, requesting application ping", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [v18 requestClientReachabilityPingWithRetry:1];
      }
    }

    [v5 finish];
  }
}

- (BOOL)requestClientReachabilityPingWithRetry:(BOOL)retry
{
  v21 = *MEMORY[0x277D85DE8];
  delegate = [(HMFHTTPClient *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    isPinging = [(HMFHTTPClient *)self isPinging];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle(selfCopy, v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (isPinging)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier(selfCopy);
        *buf = 138543362;
        v20 = v13;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Client ping in progress, dropping ping request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      if (v12)
      {
        v14 = HMFGetLogIdentifier(selfCopy);
        *buf = 138543362;
        v20 = v14;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Requesting client to perform a ping", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [(HMFHTTPClient *)selfCopy setPinging:1];
      objc_initWeak(buf, selfCopy);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __56__HMFHTTPClient_requestClientReachabilityPingWithRetry___block_invoke;
      v16[3] = &unk_2786E7938;
      objc_copyWeak(&v17, buf);
      retryCopy = retry;
      [delegate client:selfCopy didRequestPingWithCompletionHandler:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  return v6 & 1;
}

void __56__HMFHTTPClient_requestClientReachabilityPingWithRetry___block_invoke(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPinging:0];
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(v6);
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Delegated ping succeeded, marking the client as reachable", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setReachable:1];
    [v6 stopDelegatedPingTimer];
  }

  else
  {
    v10 = [WeakRetained isReachable];
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v14 = HMFGetOSLogHandle(v12, v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v15)
      {
        v16 = HMFGetLogIdentifier(v12);
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Delegated ping failed, marking the client as unreachable", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [v12 setReachable:0];
    }

    else
    {
      if (v15)
      {
        v17 = HMFGetLogIdentifier(v12);
        v18 = 138543362;
        v19 = v17;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Delegated ping failed, the client is already unreachable", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    if (*(a1 + 40) == 1)
    {
      [v12 startDelegatedPingTimer];
    }
  }
}

- (void)startDelegatedPingTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMFHTTPClient_startDelegatedPingTimer__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__HMFHTTPClient_startDelegatedPingTimer__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(v3);
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Going to attempt to retry delegated ping later", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegatedPingTimer];

  if (!v7)
  {
    v8 = *(a1 + 32);
    v9 = [v8 timerFactory];
    v10 = v9[2]();
    [v8 setDelegatedPingTimer:v10];

    v11 = [*(a1 + 32) delegatedPingTimer];
    [v11 setDelegateQueue:*(*(a1 + 32) + 16)];

    v12 = [*(a1 + 32) delegatedPingTimer];
    [v12 setDelegate:*(a1 + 32)];
  }

  v13 = [*(a1 + 32) delegatedPingTimer];
  [v13 resume];
}

- (void)stopDelegatedPingTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFHTTPClient_stopDelegatedPingTimer__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __39__HMFHTTPClient_stopDelegatedPingTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatedPingTimer];
  [v2 suspend];

  v3 = *(a1 + 32);

  return [v3 setDelegatedPingTimer:0];
}

- (void)sendRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke;
  block[3] = &unk_2786E79B0;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

void __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internal];
  v3 = [v2 activity];
  [v3 markWithReason:@"Resolving"];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_2;
  v18 = &unk_2786E7988;
  v4 = *(a1 + 40);
  v19 = *(a1 + 32);
  v5 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = v5;
  v6 = v4;
  v7 = &v15;
  v8 = v7;
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ____HMFHTTPClientGetBaseURL_block_invoke;
    aBlock[3] = &unk_2786E7A78;
    v9 = v7;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [v6 netService];
    v12 = v11;
    if (v11 && ![v11 isResolved])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = ____HMFHTTPClientGetBaseURL_block_invoke_2;
      v22[3] = &unk_2786E7AA0;
      v14 = v6;
      v23 = v14;
      v24 = v9;
      [v14 resolveWithCompletionHandler:v22];

      v13 = v23;
    }

    else
    {
      v13 = [v6 baseURL];
      v10[2](v10, v13, 0);
    }
  }
}

void __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] internal];
  v8 = [v7 activity];
  [v8 markWithReason:@"Resolved"];

  if (v5)
  {
    [a1[5] setActive:1];
    v10 = a1[4];
    v9 = a1[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_3;
    v12[3] = &unk_2786E7960;
    v12[4] = v9;
    v13 = a1[6];
    [v9 _sendRequest:v10 baseURL:v5 completionHandler:v12];
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      v11[2](v11, 0, v6);
    }

    [a1[5] startReachabilityProbe];
  }
}

void __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = v6;
  v9 = [v8 domain];
  v10 = *MEMORY[0x277CCA738];
  if ([v9 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v11 = [v8 code];

    if (v11 == -999)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v15 = HMFGetOSLogHandle(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier(v13);
        v34 = 138543362;
        v35 = v16;
        _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_INFO, "%{public}@Request cancelled, reachability probe is not started", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_18;
    }
  }

  else
  {
  }

  v17 = v8;
  v18 = [v17 domain];
  if ([v18 isEqualToString:v10])
  {
    v19 = [v17 code];

    if (v19 == -1001)
    {
      v20 = [*(a1 + 32) isReachable];
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 32);
      v24 = HMFGetOSLogHandle(v22, v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v20)
      {
        if (v25)
        {
          v26 = HMFGetLogIdentifier(v22);
          v34 = 138543362;
          v35 = v26;
          _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_INFO, "%{public}@Request timed out, marking the client as unreachable", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
        [*(a1 + 32) setReachable:0];
      }

      else
      {
        if (v25)
        {
          v33 = HMFGetLogIdentifier(v22);
          v34 = 138543362;
          v35 = v33;
          _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_INFO, "%{public}@Request timed out, the client is already unreachable", &v34, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
      }
    }
  }

  else
  {
  }

  v27 = objc_autoreleasePoolPush();
  v28 = *(a1 + 32);
  v30 = HMFGetOSLogHandle(v28, v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier(v28);
    v34 = 138543362;
    v35 = v31;
    _os_log_impl(&dword_22ADEC000, v30, OS_LOG_TYPE_INFO, "%{public}@Request failed, starting reachability probe", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  [*(a1 + 32) startReachabilityProbe];
LABEL_18:
  v32 = *(a1 + 40);
  if (v32)
  {
    (*(v32 + 16))(v32, v5, v7);
  }
}

- (void)_sendRequest:(id)request baseURL:(id)l completionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  lCopy = l;
  handlerCopy = handler;
  urlRequest = [requestCopy urlRequest];
  v12 = [urlRequest mutableCopy];

  [v12 setAllowsCellularAccess:{-[HMFHTTPClientConfiguration allowsCellularAccess](self->_configuration, "allowsCellularAccess")}];
  v13 = MEMORY[0x277CBEBC0];
  v14 = [v12 URL];
  relativePath = [v14 relativePath];
  v16 = [v13 URLWithString:relativePath relativeToURL:lCopy];

  baseURL = [v16 baseURL];
  v18 = [v12 URL];
  baseURL2 = [v18 baseURL];
  v20 = [baseURL isEqual:baseURL2];

  if ((v20 & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle(selfCopy, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v49 = v25;
      v50 = 2112;
      v51 = v16;
      _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Override the request URL to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [v12 setURL:v16];
  }

  v26 = [v12 valueForHTTPHeaderField:@"Host"];

  if (!v26)
  {
    v27 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    host = [v27 host];

    [v12 setValue:host forHTTPHeaderField:@"Host"];
  }

  v29 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v32 = HMFGetOSLogHandle(selfCopy2, v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = HMFGetLogIdentifier(selfCopy2);
    *buf = 138543618;
    v49 = v33;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Sending request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
  session = [(HMFHTTPClient *)selfCopy2 session];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __56__HMFHTTPClient__sendRequest_baseURL_completionHandler___block_invoke;
  v45[3] = &unk_2786E79D8;
  v45[4] = selfCopy2;
  v35 = requestCopy;
  v46 = v35;
  v36 = handlerCopy;
  v47 = v36;
  v37 = [session dataTaskWithRequest:v12 completionHandler:v45];

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy2;
  v41 = HMFGetOSLogHandle(v39, v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier(v39);
    *buf = 138543618;
    v49 = v42;
    v50 = 2112;
    v51 = v37;
    _os_log_impl(&dword_22ADEC000, v41, OS_LOG_TYPE_INFO, "%{public}@Resuming task: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  internal = [v35 internal];
  activity = [internal activity];
  [activity markWithReason:@"Sending"];

  [v37 resume];
}

void __56__HMFHTTPClient__sendRequest_baseURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v13 = HMFGetOSLogHandle(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier(v11);
    v15 = [*(a1 + 40) shortDescription];
    v39 = 138544130;
    v40 = v14;
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v15;
    v45 = 2112;
    v46 = v9;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Received response, %@, to request, %@, with error: %@", &v39, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v16 = v9;
  v17 = v16;
  if (v16)
  {
    goto LABEL_4;
  }

  v25 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    v28 = [*(a1 + 40) internal];
    v29 = [v28 responseWithStatusCode:{-[HMFHTTPResponse statusCode](v27, "statusCode")}];

    v30 = [(HMFHTTPResponse *)v27 allHeaderFields];
    [v29 setHeaderFields:v30];

    [v29 setBody:v7];
    v24 = [[HMFHTTPResponse alloc] initWithRequest:*(a1 + 40) internalResponse:v29];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Invalid response scheme type"];
    if (v17)
    {
LABEL_4:
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v21 = HMFGetOSLogHandle(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier(v19);
        v23 = *(a1 + 40);
        v39 = 138543874;
        v40 = v22;
        v41 = 2112;
        v42 = v23;
        v43 = 2112;
        v44 = v17;
        _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send request, %@, with error: %@", &v39, 0x20u);
      }

      v24 = 0;
      goto LABEL_15;
    }

    v24 = 0;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v21 = HMFGetOSLogHandle(v19, v31);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v32 = HMFGetLogIdentifier(v19);
    v39 = 138543618;
    v40 = v32;
    v41 = 2112;
    v42 = v24;
    _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Received response: %@", &v39, 0x16u);
  }

  v17 = 0;
LABEL_15:

  objc_autoreleasePoolPop(v18);
  if (*(a1 + 48))
  {
    v33 = [*(a1 + 40) internal];
    v34 = [v33 activity];
    [v34 markWithReason:@"Received response"];

    (*(*(a1 + 48) + 16))();
  }

  v35 = [(HMFHTTPResponse *)v24 internal];
  v36 = [v35 activity];
  [v36 invalidate];

  v37 = [*(a1 + 40) internal];
  v38 = [v37 activity];
  [v38 invalidate];
}

- (void)cancelPendingRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMFHTTPClient_cancelPendingRequests__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__HMFHTTPClient_cancelPendingRequests__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling all pending requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  objc_initWeak(buf, *(a1 + 32));
  v7 = [*(a1 + 32) session];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__HMFHTTPClient_cancelPendingRequests__block_invoke_103;
  v8[3] = &unk_2786E7A00;
  objc_copyWeak(&v9, buf);
  [v7 getAllTasksWithCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __38__HMFHTTPClient_cancelPendingRequests__block_invoke_103(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = WeakRetained;
        v14 = HMFGetOSLogHandle(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier(v12);
          *buf = 138543618;
          v21 = v15;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Canceling task: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        [v10 cancel];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMFHTTPClient_invalidate__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __27__HMFHTTPClient_invalidate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(v3);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating the client", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) session];
  [v7 invalidateAndCancel];
}

- (void)resolveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_netService)
  {
    objc_initWeak(&location, self);
    netService = self->_netService;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__HMFHTTPClient_resolveWithCompletionHandler___block_invoke;
    v7[3] = &unk_2786E7A50;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [(HMFNetService *)netService resolveWithTimeout:v7 completionHandler:15.0];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __46__HMFHTTPClient_resolveWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = WeakRetained[2];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __46__HMFHTTPClient_resolveWithCompletionHandler___block_invoke_2;
      v9[3] = &unk_2786E7A28;
      v11 = v7;
      v10 = v4;
      dispatch_async(v8, v9);
    }
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3_12 != -1)
  {
    dispatch_once(&_MergedGlobals_3_12, &__block_literal_global_107);
  }

  v3 = qword_280AFC410;

  return v3;
}

uint64_t __28__HMFHTTPClient_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.HTTP.Client", @"com.apple.HMFoundation");
  v1 = qword_280AFC410;
  qword_280AFC410 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  netService = self->_netService;
  if (netService)
  {
    v4 = MEMORY[0x277CCACA8];
    domain = [(HMFNetService *)netService domain];
    type = [(HMFNetService *)self->_netService type];
    name = [(HMFNetService *)self->_netService name];
    absoluteString = [v4 stringWithFormat:@"%@%@%@", domain, type, name];
  }

  else
  {
    domain = [(HMFHTTPClient *)self baseURL];
    absoluteString = [domain absoluteString];
  }

  return absoluteString;
}

- (void)networkMonitorIsReachable:(id)reachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMFHTTPClient_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__HMFHTTPClient_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[7])
  {

    __HMFHTTPClientHandleReachabilityChange(v2, 1);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v6 = HMFGetOSLogHandle(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v4);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification that the client is now reachable", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setReachable:1];
  }
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMFHTTPClient_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__HMFHTTPClient_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[7])
  {

    __HMFHTTPClientHandleReachabilityChange(v2, 0);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v6 = HMFGetOSLogHandle(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v4);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification that the client is no longer reachable", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setReachable:0];
  }
}

- (void)timerDidFire:(id)fire
{
  v18 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Delegated ping timer fired", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [fireCopy suspend];
  netService = selfCopy->_netService;
  if (!netService || [(HMFNetService *)netService isPublishing])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v14 = HMFGetOSLogHandle(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier(v12);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying delegated ping", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    if (![(HMFHTTPClient *)v12 requestClientReachabilityPingWithRetry:1])
    {
      [(HMFHTTPClient *)v12 stopDelegatedPingTimer];
    }
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle(selfCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier(selfCopy);
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Session did become invalid with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle(selfCopy, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier(selfCopy);
    v24 = 138543618;
    v25 = v15;
    v26 = 2112;
    v27 = challengeCopy;
    _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Received challenge: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if ([(HMFHTTPClientConfiguration *)selfCopy->_configuration allowsAnonymousConnection]|| [(HMFHTTPClient *)selfCopy allowAnonymousConnection])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v19 = HMFGetOSLogHandle(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier(v17);
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_INFO, "%{public}@Received connection challenge, accepting the server's certificate as the client is set to allow anonymous connections", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v21 = MEMORY[0x277CBAB80];
    protectionSpace = [challengeCopy protectionSpace];
    v23 = [v21 credentialForTrust:{objc_msgSend(protectionSpace, "serverTrust")}];
    handlerCopy[2](handlerCopy, 0, v23);
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (HMFHTTPClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end