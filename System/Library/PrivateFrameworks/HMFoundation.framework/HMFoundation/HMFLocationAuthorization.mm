@interface HMFLocationAuthorization
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)logCategory;
+ (id)sharedAuthorization;
- (BOOL)isMonitoring;
- (HMFLocationAuthorization)init;
- (HMFLocationAuthorization)initWithBundle:(id)bundle;
- (HMFLocationAuthorization)initWithBundleIdentifier:(id)identifier;
- (HMFLocationAuthorization)initWithScheduler:(id)scheduler;
- (OS_dispatch_queue)queue;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (int)status;
- (void)_mark;
- (void)_requestAuthorization:(int64_t)authorization completionHandler:(id)handler;
- (void)dealloc;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)locationOperationCompleted;
- (void)mark;
- (void)registerObserver:(id)observer;
- (void)requestAuthorization:(int64_t)authorization completionHandler:(id)handler;
- (void)setQueue:(id)queue;
- (void)unregisterObserver:(id)observer;
@end

@implementation HMFLocationAuthorization

+ (id)sharedAuthorization
{
  if (_MergedGlobals_3_0 != -1)
  {
    dispatch_once(&_MergedGlobals_3_0, &__block_literal_global_10);
  }

  v3 = qword_280AFC2C0;

  return v3;
}

uint64_t __47__HMFLocationAuthorization_sharedAuthorization__block_invoke()
{
  v0 = objc_alloc_init(HMFLocationAuthorization);
  v1 = qword_280AFC2C0;
  qword_280AFC2C0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMFLocationAuthorization)init
{
  v5.receiver = self;
  v5.super_class = HMFLocationAuthorization;
  v2 = [(HMFLocationAuthorization *)&v5 init];
  v3 = v2;
  if (v2)
  {
    __HMFLocationAuthorizationInitialize(v2);
  }

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"isAuthorized";
  v7[1] = @"authorized";
  v7[2] = @"isMonitoring";
  v7[3] = @"monitoring";
  v3 = MEMORY[0x277CBEA60];
  keyCopy = key;
  v5 = [v3 arrayWithObjects:v7 count:4];
  LOBYTE(v3) = [v5 containsObject:keyCopy];

  return v3 ^ 1;
}

- (HMFLocationAuthorization)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  if (!schedulerCopy)
  {
    _HMFPreconditionFailure(@"scheduler");
  }

  v6 = schedulerCopy;
  v10.receiver = self;
  v10.super_class = HMFLocationAuthorization;
  v7 = [(HMFLocationAuthorization *)&v10 init];
  v8 = v7;
  if (v7)
  {
    __HMFLocationAuthorizationInitialize(v7);
    objc_storeStrong(&v8->_scheduler, scheduler);
  }

  return v8;
}

- (HMFLocationAuthorization)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure(@"bundleIdentifier");
  }

  v5 = identifierCopy;
  v10.receiver = self;
  v10.super_class = HMFLocationAuthorization;
  v6 = [(HMFLocationAuthorization *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    __HMFLocationAuthorizationInitialize(v6);
  }

  return v6;
}

- (HMFLocationAuthorization)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  if (!bundleCopy)
  {
    _HMFPreconditionFailure(@"bundle");
  }

  v5 = bundleCopy;
  v10.receiver = self;
  v10.super_class = HMFLocationAuthorization;
  v6 = [(HMFLocationAuthorization *)&v10 init];
  if (v6)
  {
    bundlePath = [v5 bundlePath];
    bundlePath = v6->_bundlePath;
    v6->_bundlePath = bundlePath;

    __HMFLocationAuthorizationInitialize(v6);
  }

  return v6;
}

- (void)dealloc
{
  __HMFLocationAuthorizationStopMonitoring(self);
  v3.receiver = self;
  v3.super_class = HMFLocationAuthorization;
  [(HMFLocationAuthorization *)&v3 dealloc];
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [HMFAttributeDescription alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"State" value:v4];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_status];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Status" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  os_unfair_lock_unlock(&self->_lock.lock);

  return v9;
}

- (OS_dispatch_queue)queue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_queue;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (void)setQueue:(id)queue
{
  obj = queue;
  os_unfair_lock_lock_with_options();
  if (self->_state >= 1)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot set queue once the location authorization has started." userInfo:0];
    objc_exception_throw(v5);
  }

  v4 = obj;
  if (!obj)
  {
    v4 = __HMFLocationAuthorizationCreateQueue(&self->super.super);
  }

  objc_storeStrong(&self->_queue, v4);
  if (!obj)
  {
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (int)status
{
  os_unfair_lock_lock_with_options();
  if (self->_state)
  {
    status = self->_status;
  }

  else
  {
    selfCopy = self;
    if (CoreLocationLibraryCore(0))
    {
      if (selfCopy->_bundleIdentifier)
      {
        authorizationStatus = [getCLLocationManagerClass() authorizationStatusForBundleIdentifier:selfCopy->_bundleIdentifier];
      }

      else
      {
        bundlePath = selfCopy->_bundlePath;
        CLLocationManagerClass = getCLLocationManagerClass();
        if (bundlePath)
        {
          authorizationStatus = [CLLocationManagerClass authorizationStatusForBundlePath:selfCopy->_bundlePath];
        }

        else
        {
          authorizationStatus = [CLLocationManagerClass authorizationStatus];
        }
      }

      status = authorizationStatus;
    }

    else
    {
      status = 0;
    }

    selfCopy->_status = status;
  }

  os_unfair_lock_unlock(&self->_lock.lock);
  return status;
}

- (BOOL)isMonitoring
{
  os_unfair_lock_lock_with_options();
  v3 = self->_state == 2;
  os_unfair_lock_unlock(&self->_lock.lock);
  return v3;
}

- (void)registerObserver:(id)observer
{
  v26 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle(selfCopy, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = observerCopy;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registering location authorization observer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [[HMFObjectObserver alloc] initWithObservedObject:observerCopy];
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)selfCopy->_observers containsObject:v10]& 1) == 0)
    {
      objc_initWeak(&location, selfCopy);
      objc_initWeak(&from, v10);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __45__HMFLocationAuthorization_registerObserver___block_invoke;
      v18[3] = &unk_2786E71B8;
      objc_copyWeak(&v19, &location);
      objc_copyWeak(&v20, &from);
      [(HMFObjectObserver *)v10 setDeallocationBlock:v18];
      [(NSMutableSet *)selfCopy->_observers addObject:v10];
      v11 = selfCopy;
      if (!v11->_state)
      {
        context = objc_autoreleasePoolPush();
        v12 = v11;
        v14 = HMFGetOSLogHandle(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier(v12);
          *buf = 138543362;
          *&buf[4] = v15;
          _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Starting to monitor location authorization", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        v12->_state = 1;
        if (CoreLocationLibraryCore(0))
        {
          queue = v12->_queue;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = ____HMFLocationAuthorizationStartMonitoring_block_invoke;
          v24 = &unk_2786E6C80;
          v25 = v12;
          dispatch_async(queue, buf);
        }
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock(&selfCopy->_lock.lock);
  }
}

void __45__HMFLocationAuthorization_registerObserver___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v8 = HMFGetOSLogHandle(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier(v6);
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Observer deallocated, stopping monitoring for observer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    [*(v6 + 5) removeObject:v4];
    if ([*(v6 + 5) hmf_isEmpty])
    {
      v10 = *(v6 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__HMFLocationAuthorization_registerObserver___block_invoke_54;
      block[3] = &unk_2786E6CA8;
      objc_copyWeak(&v12, (a1 + 32));
      dispatch_async(v10, block);
      objc_destroyWeak(&v12);
    }

    os_unfair_lock_unlock(v6 + 2);
  }
}

void __45__HMFLocationAuthorization_registerObserver___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __HMFLocationAuthorizationStopMonitoring(WeakRetained);
    WeakRetained = v2;
  }
}

- (void)unregisterObserver:(id)observer
{
  v28 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle(selfCopy, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = observerCopy;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Unregistering location authorization observer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    observers = selfCopy->_observers;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__HMFLocationAuthorization_unregisterObserver___block_invoke;
    v21[3] = &unk_2786E71E0;
    v22 = observerCopy;
    [(NSMutableSet *)observers objectsPassingTest:v21];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v11 = v18 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [(NSMutableSet *)selfCopy->_observers removeObject:*(*(&v17 + 1) + 8 * i)];
        }

        v12 = [v11 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v12);
    }

    if ([(NSMutableSet *)selfCopy->_observers hmf_isEmpty])
    {
      queue = selfCopy->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__HMFLocationAuthorization_unregisterObserver___block_invoke_2;
      block[3] = &unk_2786E6C80;
      block[4] = selfCopy;
      dispatch_async(queue, block);
    }

    os_unfair_lock_unlock(&selfCopy->_lock.lock);
  }
}

BOOL __47__HMFLocationAuthorization_unregisterObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observedObject];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)requestAuthorization:(int64_t)authorization completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(HMFLocationAuthorization *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMFLocationAuthorization_requestAuthorization_completionHandler___block_invoke;
  block[3] = &unk_2786E7208;
  v10 = handlerCopy;
  authorizationCopy = authorization;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_requestAuthorization:(int64_t)authorization completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queue = [(HMFLocationAuthorization *)self queue];
  dispatch_assert_queue_V2(queue);

  if (CoreLocationLibraryCore(0))
  {
    if (self->_request)
    {
      v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:9 reason:@"Location authorization in progress"];
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle(selfCopy, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier(selfCopy);
          *buf = 138543618;
          v30 = v13;
          v31 = 2112;
          v32 = v8;
          _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to request authorization with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v8);
        }
      }
    }

    else
    {
      v19 = [[__HMFLocationAuthorizationRequest alloc] initWithType:authorization authorization:self];
      [(HMFOperation *)v19 setQualityOfService:17];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v19);
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke;
      v24 = &unk_2786E7230;
      objc_copyWeak(&v26, buf);
      v25 = handlerCopy;
      objc_copyWeak(&v27, &location);
      [(__HMFLocationAuthorizationRequest *)v19 setCompletionBlock:&v21];
      objc_storeStrong(&self->_request, v19);
      v20 = [(HMFScheduler *)self->_scheduler performOperation:v19, v21, v22, v23, v24];
      objc_destroyWeak(&v27);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      v8 = 0;
    }

    goto LABEL_13;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle(selfCopy2, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier(selfCopy2);
    *buf = 138543362;
    v30 = v18;
    _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Location support not available, unable to request authorization", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (handlerCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:@"CoreLocation not available"];
    handlerCopy[2](handlerCopy, v8);
LABEL_13:
  }
}

void __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = v3;
    if (v3)
    {
      [v3 error];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    }
    v5 = ;
    (*(*(a1 + 32) + 16))();
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke_2;
    block[3] = &unk_2786E6CA8;
    objc_copyWeak(&v8, (a1 + 40));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __68__HMFLocationAuthorization__requestAuthorization_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[6] unregisterFromKVO];
    v2 = v3[6];
    v3[6] = 0;

    WeakRetained = v3;
  }
}

- (void)locationOperationCompleted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle(selfCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@completing location authorization mark", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  queue = [(HMFLocationAuthorization *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFLocationAuthorization_locationOperationCompleted__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = selfCopy;
  dispatch_async(queue, block);
}

void __54__HMFLocationAuthorization_locationOperationCompleted__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) unregisterFromKVO];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

- (void)mark
{
  queue = [(HMFLocationAuthorization *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMFLocationAuthorization_mark__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_mark
{
  queue = [(HMFLocationAuthorization *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!self->_operation)
  {
    v4 = [(__HMFLocationManagerOperation *)[__HMFLocationAuthorizationMarkOperation alloc] initWithAuthorization:self];
    operation = self->_operation;
    self->_operation = v4;

    [(HMFOperation *)self->_operation setQualityOfService:17];
    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __33__HMFLocationAuthorization__mark__block_invoke;
    v10 = &unk_2786E6CA8;
    objc_copyWeak(&v11, &location);
    [(__HMFLocationAuthorizationMarkOperation *)self->_operation setCompletionBlock:&v7];
    v6 = [(HMFScheduler *)self->_scheduler performOperation:self->_operation, v7, v8, v9, v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __33__HMFLocationAuthorization__mark__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained locationOperationCompleted];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v28 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle(selfCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier(selfCopy);
    v24 = 138543618;
    v25 = v10;
    v26 = 1024;
    LODWORD(v27) = authorizationStatus;
    _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Received notification of authorization status changing to %d", &v24, 0x12u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = selfCopy;
  v12 = v11;
  if (v11)
  {
    [(HMFLocationAuthorization *)v11 willChangeValueForKey:@"isAuthorized"];
    v13 = authorizationStatus - 3;
    os_unfair_lock_lock_with_options();
    os_unfair_lock_opaque = v12[6]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque != authorizationStatus)
    {
      v12[6]._os_unfair_lock_opaque = authorizationStatus;
    }

    v15 = (v13 < 2) ^ (os_unfair_lock_opaque - 3 < 2);
    v16 = *&v12[8]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v12 + 2);
    [(os_unfair_lock_s *)v12 didChangeValueForKey:@"isAuthorized"];
    if (v16 == 1)
    {
      __HMFLocationAuthorizationUpdateState(v12, 2);
    }

    if (v15)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v12;
      v20 = HMFGetOSLogHandle(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier(v18);
        v22 = HMFBooleanToString(v13 < 2);
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Posting authorization updated notification with isAuthorized: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v23 = +[HMFNotificationCenter defaultCenter];
      [v23 postNotificationName:@"HMFLocationAuthorizationUpdatedNotification" object:v18];
    }
  }
}

+ (id)logCategory
{
  if (qword_280AFC2C8 != -1)
  {
    dispatch_once(&qword_280AFC2C8, &__block_literal_global_66);
  }

  v3 = qword_280AFC2D0;

  return v3;
}

uint64_t __39__HMFLocationAuthorization_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Location.Authorization", @"com.apple.HMFoundation");
  v1 = qword_280AFC2D0;
  qword_280AFC2D0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier || (bundleIdentifier = self->_bundlePath) != 0)
  {
    processName = bundleIdentifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  return processName;
}

@end