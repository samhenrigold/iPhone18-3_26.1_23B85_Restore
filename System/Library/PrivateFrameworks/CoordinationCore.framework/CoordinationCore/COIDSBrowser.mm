@interface COIDSBrowser
- (COIDSBrowser)initWithMeshName:(id)name idsServiceName:(id)serviceName;
- (NSString)description;
- (id)addObserverUsingBlock:(id)block;
- (id)registeredObservers;
- (void)didAddDevice:(id)device;
- (void)didRemoveDevice:(id)device;
- (void)onDemandDiscoveryForRequest:(id)request;
- (void)removeObserver:(id)observer;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation COIDSBrowser

- (COIDSBrowser)initWithMeshName:(id)name idsServiceName:(id)serviceName
{
  nameCopy = name;
  serviceNameCopy = serviceName;
  v30.receiver = self;
  v30.super_class = COIDSBrowser;
  v8 = [(COIDSBrowser *)&v30 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    meshName = v8->_meshName;
    v8->_meshName = v9;

    v11 = objc_alloc_init(COBrowserObserverSet);
    observerSet = v8->_observerSet;
    v8->_observerSet = v11;

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.coordination.idsbrowser.%p", v8];
    uTF8String = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);
    workQueue = v8->_workQueue;
    v8->_workQueue = v16;

    objc_initWeak(&location, v8);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke;
    v26[3] = &unk_278E19348;
    objc_copyWeak(&v28, &location);
    v27 = nameCopy;
    v18 = MEMORY[0x245D5FF10](v26);
    idsPresenceProvider = v8->_idsPresenceProvider;
    v8->_idsPresenceProvider = v18;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke_2;
    v23[3] = &unk_278E19370;
    objc_copyWeak(&v25, &location);
    v24 = serviceNameCopy;
    v20 = MEMORY[0x245D5FF10](v23);
    idsServiceProvider = v8->_idsServiceProvider;
    v8->_idsServiceProvider = v20;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [COIDSPresence presenceForMesh:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __48__COIDSBrowser_initWithMeshName_idsServiceName___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  meshName = [(COIDSBrowser *)self meshName];
  v7 = [v3 stringWithFormat:@"<%@: %p, mesh = %@>", v5, self, meshName];

  return v7;
}

- (id)addObserverUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [[COBrowserObserver alloc] initWithBlock:blockCopy];

  observerSet = [(COIDSBrowser *)self observerSet];
  [observerSet addObserver:v5];

  return v5;
}

- (id)registeredObservers
{
  observerSet = [(COIDSBrowser *)self observerSet];
  observers = [observerSet observers];

  return observers;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerSet = [(COIDSBrowser *)self observerSet];
  [observerSet removeObserver:observerCopy];
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__COIDSBrowser_startWithCompletionHandler___block_invoke;
  v7[3] = &unk_278E16240;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __43__COIDSBrowser_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = [*(a1 + 32) idsPresenceProvider];
    v5 = v4[2]();
    [*(a1 + 32) setPresence:v5];
    v6 = *(a1 + 32);
    v7 = [v6 workQueue];
    [v5 addObserver:v6 queue:v7];

    v8 = [*(a1 + 32) idsServiceProvider];
    v9 = v8[2]();
    v10 = [COIDSServiceDirector alloc];
    v11 = [*(a1 + 32) meshName];
    v12 = [(COIDSServiceDirector *)v10 initWithIDSService:v9 meshName:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 64);
    *(v13 + 64) = v12;

    [*(*(a1 + 32) + 64) setDiscoveryDelegate:?];
    v15 = [*(a1 + 32) serviceDirector];
    [v15 start];

    v16 = COCoreLogForCategory(14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_244378000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ IDS browser started", &v18, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)stop
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__COIDSBrowser_stop__block_invoke;
  block[3] = &unk_278E15AB8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __20__COIDSBrowser_stop__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ IDS browser stopping", &v6, 0xCu);
  }

  *(*(a1 + 32) + 8) = 0;
  v4 = [*(a1 + 32) presence];
  [v4 removeObserver:*(a1 + 32)];

  return [*(a1 + 32) setPresence:0];
}

- (void)didAddDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = deviceCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p IDS browser found device %{public}@", &v8, 0x16u);
  }

  serviceDirector = [(COIDSBrowser *)self serviceDirector];
  [deviceCopy setServiceDirector:serviceDirector];

  observerSet = [(COIDSBrowser *)self observerSet];
  [observerSet informObserverAboutDevice:deviceCopy added:1];
}

- (void)didRemoveDevice:(id)device
{
  v11 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = deviceCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p IDS browser lost device %{public}@", &v7, 0x16u);
  }

  observerSet = [(COIDSBrowser *)self observerSet];
  [observerSet informObserverAboutDevice:deviceCopy added:0];
}

- (void)onDemandDiscoveryForRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  idsIdentifier = [requestCopy idsIdentifier];
  fromURIToken = [requestCopy fromURIToken];
  v7 = [[COIDSDiscoveryRecord alloc] initWithIdsIdentifier:idsIdentifier deviceTokenURI:fromURIToken];
  [(COIDSDiscoveryRecord *)v7 setOnDemandRequest:requestCopy];

  serviceDirector = [(COIDSBrowser *)self serviceDirector];
  [(COIDSDiscoveryRecord *)v7 setServiceDirector:serviceDirector];

  v9 = COCoreLogForCategory(14);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    selfCopy = self;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p IDS browser got demand node request %{public}@", &v11, 0x16u);
  }

  observerSet = [(COIDSBrowser *)self observerSet];
  [observerSet informObserverAboutDevice:v7 added:1];
}

@end