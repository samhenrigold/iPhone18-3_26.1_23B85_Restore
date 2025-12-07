@interface HMFNetServiceBrowser
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isBrowsing;
- (BOOL)shouldCache;
- (HMFNetServiceBrowser)init;
- (HMFNetServiceBrowser)initWithDomain:(id)domain serviceType:(id)type;
- (HMFNetServiceBrowserDelegate)delegate;
- (NSArray)cachedNetServices;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)logIdentifier;
- (id)shortDescription;
- (void)_stopBrowsingWithError:(id)error;
- (void)addNetServiceToCache:(id)cache;
- (void)dealloc;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowserDidStopSearch:(id)search;
- (void)netServiceBrowserWillSearch:(id)search;
- (void)setBrowsing:(BOOL)browsing;
- (void)setShouldCache:(BOOL)cache;
- (void)startBrowsingWithCompletionHandler:(id)handler;
- (void)stopBrowsing;
@end

@implementation HMFNetServiceBrowser

- (HMFNetServiceBrowser)init
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

- (HMFNetServiceBrowser)initWithDomain:(id)domain serviceType:(id)type
{
  v32 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  typeCopy = type;
  v29.receiver = self;
  v29.super_class = HMFNetServiceBrowser;
  v8 = [(HMFNetServiceBrowser *)&v29 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_clientQueue, MEMORY[0x277D85CD0]);
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  netServices = v9->_netServices;
  v9->_netServices = weakObjectsHashTable;

  v12 = [domainCopy copy];
  domain = v9->_domain;
  v9->_domain = v12;

  v14 = [typeCopy copy];
  serviceType = v9->_serviceType;
  v9->_serviceType = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBAB68]);
  if (v16)
  {
    internal = v9->_internal;
    v9->_internal = v16;
    v18 = v16;

    [(NSNetServiceBrowser *)v18 setDelegate:v9];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v20 = *MEMORY[0x277CBE738];
    [(NSNetServiceBrowser *)v18 removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(NSNetServiceBrowser *)v18 scheduleInRunLoop:mainRunLoop forMode:v20];

LABEL_4:
    v22 = v9;
    goto LABEL_8;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v9;
  v26 = HMFGetOSLogHandle(v24, v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier(v24);
    *buf = 138543362;
    v31 = v27;
    _os_log_impl(&dword_22ADEC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create internal net service browser", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v22 = 0;
LABEL_8:

  return v22;
}

- (void)dealloc
{
  [(NSNetServiceBrowser *)self->_internal setDelegate:0];
  v3.receiver = self;
  v3.super_class = HMFNetServiceBrowser;
  [(HMFNetServiceBrowser *)&v3 dealloc];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HMFNetServiceBrowser *)self shortDescription];
  domain = [(HMFNetServiceBrowser *)self domain];
  serviceType = [(HMFNetServiceBrowser *)self serviceType];
  v9 = serviceType;
  if (pointer)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
    v11 = [v5 stringWithFormat:@"<%@%@, Domain = %@, Service Type = %@>", shortDescription, domain, v9, v10];
  }

  else
  {
    v11 = [v5 stringWithFormat:@"<%@%@, Domain = %@, Service Type = %@>", shortDescription, domain, serviceType, &stru_283EBDA30];
  }

  return v11;
}

- (BOOL)shouldCache
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cachedNetServices != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setShouldCache:(BOOL)cache
{
  cacheCopy = cache;
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (cacheCopy)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    cachedNetServices = self->_cachedNetServices;
    self->_cachedNetServices = orderedSet;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_netServices;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isPublishing])
          {
            [(NSMutableOrderedSet *)self->_cachedNetServices addObject:v11];
          }
        }

        v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v12 = self->_cachedNetServices;
    self->_cachedNetServices = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)cachedNetServices
{
  os_unfair_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)self->_cachedNetServices array];
  v4 = [array copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)addNetServiceToCache:(id)cache
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    v5 = cacheCopy;
    os_unfair_lock_lock_with_options();
    [(NSHashTable *)self->_netServices addObject:v5];
    [(NSMutableOrderedSet *)self->_cachedNetServices addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    cacheCopy = v5;
  }
}

- (BOOL)isBrowsing
{
  os_unfair_lock_lock_with_options();
  browsing = self->_browsing;
  os_unfair_lock_unlock(&self->_lock);
  return browsing;
}

- (void)setBrowsing:(BOOL)browsing
{
  os_unfair_lock_lock_with_options();
  self->_browsing = browsing;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startBrowsingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMFNetServiceBrowser_startBrowsingWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786E6D68;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

void __59__HMFNetServiceBrowser_startBrowsingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isBrowsing];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v6 = HMFGetOSLogHandle(v4, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier(v4);
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@The browser is already browsing", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier(v4);
      v11 = [*(a1 + 32) serviceType];
      v12 = [*(a1 + 32) domain];
      v16 = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Start browsing for %@%@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setBrowsing:1];
    [*(a1 + 32) setBrowseBlock:*(a1 + 40)];
    v13 = [*(a1 + 32) internal];
    v14 = [*(a1 + 32) serviceType];
    v15 = [*(a1 + 32) domain];
    [v13 searchForServicesOfType:v14 inDomain:v15];
  }
}

- (void)stopBrowsing
{
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMFNetServiceBrowser_stopBrowsing__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)_stopBrowsingWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(HMFNetServiceBrowser *)self isBrowsing])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle(selfCopy, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier(selfCopy);
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping the browse", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    internal = [(HMFNetServiceBrowser *)selfCopy internal];
    [internal stop];

    v11 = selfCopy;
    v12 = errorCopy;
    if (v11)
    {
      delegate = [(HMFNetServiceBrowser *)v11 delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate netServiceBrowser:v11 didStopBrowsingWithError:v12];
      }
    }
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3_4 != -1)
  {
    dispatch_once(&_MergedGlobals_3_4, &__block_literal_global_15);
  }

  v3 = qword_280AFC330;

  return v3;
}

uint64_t __35__HMFNetServiceBrowser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.Service.Browser", @"com.apple.HMFoundation");
  v1 = qword_280AFC330;
  qword_280AFC330 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  domain = [(HMFNetServiceBrowser *)self domain];
  serviceType = [(HMFNetServiceBrowser *)self serviceType];
  v6 = [v3 stringWithFormat:@"%@ - %@", domain, serviceType];

  return v6;
}

- (void)netServiceBrowserWillSearch:(id)search
{
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMFNetServiceBrowser_netServiceBrowserWillSearch___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __52__HMFNetServiceBrowser_netServiceBrowserWillSearch___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Browser started browsing", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) browseBlock];
  if (v7)
  {
    [*(a1 + 32) setBrowseBlock:0];
    v7[2](v7, 0);
  }
}

- (void)netServiceBrowserDidStopSearch:(id)search
{
  v12 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Browse did stop", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMFNetServiceBrowser *)selfCopy setBrowsing:0];
}

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  searchCopy = search;
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMFNetServiceBrowser_netServiceBrowser_didNotSearch___block_invoke;
  v8[3] = &unk_2786E6D18;
  v8[4] = self;
  v9 = searchCopy;
  v7 = searchCopy;
  dispatch_async(clientQueue, v8);
}

void __55__HMFNetServiceBrowser_netServiceBrowser_didNotSearch___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier(v3);
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_INFO, "%{public}@Failed to browse", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v10 = HMFGetOSLogHandle(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier(v8);
    v12 = *(a1 + 40);
    v17 = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Failed to browse with error: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [*(a1 + 32) browseBlock];
  if (v13)
  {
    [*(a1 + 32) setBrowseBlock:0];
    v14 = MEMORY[0x277CCA9B8];
    v15 = [HMFNetService errorFromNetServiceErrorDict:*(a1 + 40)];
    v16 = [v14 hmfErrorWithCode:12 reason:@"Failed to search for services." suggestion:0 underlyingError:v15];

    (v13)[2](v13, v16);
  }
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  serviceCopy = service;
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HMFNetServiceBrowser_netServiceBrowser_didFindService_moreComing___block_invoke;
  v9[3] = &unk_2786E6D18;
  v9[4] = self;
  v10 = serviceCopy;
  v8 = serviceCopy;
  dispatch_async(clientQueue, v9);
}

void __68__HMFNetServiceBrowser_netServiceBrowser_didFindService_moreComing___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    v7 = *(a1 + 40);
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Added service: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(*(a1 + 32) + 16);
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 internal];
        v15 = [v14 isEqual:*(a1 + 40)];

        if (v15)
        {
          v10 = v13;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  os_unfair_lock_unlock(v8 + 2);
  if (!v10)
  {
    v10 = [[HMFNetService alloc] initWithNetService:*(a1 + 40)];
  }

  [(HMFNetService *)v10 setPublishing:1, v19];
  [*(a1 + 32) addNetServiceToCache:v10];
  v16 = *(a1 + 32);
  v17 = v10;
  if (v17 && v16)
  {
    v18 = [v16 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v18 netServiceBrowser:v16 didAddService:v17];
    }
  }
}

- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming
{
  domainCopy = domain;
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HMFNetServiceBrowser_netServiceBrowser_didRemoveDomain_moreComing___block_invoke;
  v9[3] = &unk_2786E6D18;
  v10 = domainCopy;
  selfCopy = self;
  v8 = domainCopy;
  dispatch_async(clientQueue, v9);
}

void __69__HMFNetServiceBrowser_netServiceBrowser_didRemoveDomain_moreComing___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) domain];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v7 = HMFGetOSLogHandle(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier(v5);
      v9 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@The browse domain, %@, was removed", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12 reason:@"The search domain was removed."];
    [*(a1 + 40) _stopBrowsingWithError:v10];
  }
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  serviceCopy = service;
  clientQueue = [(HMFNetServiceBrowser *)self clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMFNetServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke;
  v9[3] = &unk_2786E6D18;
  v9[4] = self;
  v10 = serviceCopy;
  v8 = serviceCopy;
  dispatch_async(clientQueue, v9);
}

void __70__HMFNetServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v5 = HMFGetOSLogHandle(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier(v3);
    v7 = *(a1 + 40);
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Removed service: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(*(a1 + 32) + 16);
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 internal];
        v15 = [v14 isEqual:*(a1 + 40)];

        if (v15)
        {
          v10 = v13;
          [(HMFNetService *)v10 setPublishing:0];
          [*(*(a1 + 32) + 24) removeObject:v10];
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  os_unfair_lock_unlock(v8 + 2);
  if (!v10)
  {
    v10 = [[HMFNetService alloc] initWithNetService:*(a1 + 40)];
  }

  v16 = *(a1 + 32);
  v17 = v10;
  if (v17 && v16)
  {
    v18 = [v16 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v18 netServiceBrowser:v16 didRemoveService:v17];
    }
  }
}

- (HMFNetServiceBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end