@interface SLShareableContentObserver
+ (SLShareableContentObserver)sharedObserver;
- (BOOL)applicationIsActive;
- (BOOL)needsToRefresh;
- (BOOL)needsToResume;
- (OS_dispatch_queue)serviceQueue;
- (SLDServiceProxy)serviceProxy;
- (SLShareableContentObserver)init;
- (void)activityItemsConfigurationReadyNotification:(id)notification;
- (void)addObservers;
- (void)connectAndRefreshNow;
- (void)didBecomeActiveNotification:(id)notification;
- (void)didEnterBackgroundNotification:(id)notification;
- (void)documentStateChangedNotification:(id)notification;
- (void)pause;
- (void)refreshIfNeeded;
- (void)reset;
- (void)resumeIfNeeded;
- (void)serviceProxyDidConnect:(id)connect;
- (void)serviceProxyDidDisconnect:(id)disconnect;
- (void)setNeedsRefresh;
- (void)userActivityWasCreated:(id)created;
- (void)willResignActiveNotification:(id)notification;
@end

@implementation SLShareableContentObserver

+ (SLShareableContentObserver)sharedObserver
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SLShareableContentObserver_sharedObserver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedObserver_onceToken != -1)
  {
    dispatch_once(&sharedObserver_onceToken, block);
  }

  v2 = sharedObserver_sharedObserver;

  return v2;
}

uint64_t __44__SLShareableContentObserver_sharedObserver__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedObserver_sharedObserver;
  sharedObserver_sharedObserver = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (SLShareableContentObserver)init
{
  v6.receiver = self;
  v6.super_class = SLShareableContentObserver;
  v2 = [(SLShareableContentObserver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SLShareableContentObserver *)v2 addObservers];
    v4 = v3;
  }

  return v3;
}

- (void)addObservers
{
  [MEMORY[0x277D77BA8] addUserActivityObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
  [defaultCenter addObserver:self selector:sel_didEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
  [defaultCenter addObserver:self selector:sel_willResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];
  [defaultCenter addObserver:self selector:sel_documentStateChangedNotification_ name:*MEMORY[0x277D768A8] object:0];
  [defaultCenter addObserver:self selector:sel_activityItemsConfigurationReadyNotification_ name:@"ActivityItemsConfigurationReadyNotification" object:0];
}

- (SLDServiceProxy)serviceProxy
{
  serviceProxy = self->_serviceProxy;
  if (!serviceProxy)
  {
    v4 = objc_opt_class();
    serviceQueue = [(SLShareableContentObserver *)self serviceQueue];
    v6 = [SLDServiceProxy proxyForServiceClass:v4 targetSerialQueue:serviceQueue delegate:self];
    v7 = self->_serviceProxy;
    self->_serviceProxy = v6;

    serviceProxy = self->_serviceProxy;
  }

  return serviceProxy;
}

- (OS_dispatch_queue)serviceQueue
{
  serviceQueue = self->_serviceQueue;
  if (!serviceQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.SocialLayer.ShareableContentObserver.ServiceQueue", v4);
    v6 = self->_serviceQueue;
    self->_serviceQueue = v5;

    serviceQueue = self->_serviceQueue;
  }

  return serviceQueue;
}

- (void)setNeedsRefresh
{
  v3 = SLShareableContentLogHandle([(SLShareableContentObserver *)self setNeedsRefresh:1]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[observer] set needs refresh", v4, 2u);
  }

  [(SLShareableContentObserver *)self resumeIfNeeded];
}

- (BOOL)applicationIsActive
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] applicationState] == 0;

  return v3;
}

- (BOOL)needsToResume
{
  if ([(SLShareableContentObserver *)self state])
  {
    return 0;
  }

  return [(SLShareableContentObserver *)self applicationIsActive];
}

- (void)resumeIfNeeded
{
  needsToResume = [(SLShareableContentObserver *)self needsToResume];
  v4 = needsToResume;
  v5 = SLShareableContentLogHandle(needsToResume);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[observer] resuming", v7, 2u);
    }

    [(SLShareableContentObserver *)self setState:1];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[observer] resume not needed", buf, 2u);
    }
  }
}

- (BOOL)needsToRefresh
{
  if ([(SLShareableContentObserver *)self state]!= 1)
  {
    return 0;
  }

  return [(SLShareableContentObserver *)self needsRefresh];
}

- (void)refreshIfNeeded
{
  needsToRefresh = [(SLShareableContentObserver *)self needsToRefresh];
  v4 = needsToRefresh;
  v5 = SLShareableContentLogHandle(needsToRefresh);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[observer] refreshing", v7, 2u);
    }

    [(SLShareableContentObserver *)self setState:2];
    [(SLShareableContentObserver *)self connectAndRefreshNow];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[observer] refresh not needed", buf, 2u);
    }
  }
}

- (void)connectAndRefreshNow
{
  serviceQueue = [(SLShareableContentObserver *)self serviceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SLShareableContentObserver_connectAndRefreshNow__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

void __50__SLShareableContentObserver_connectAndRefreshNow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceProxy];
  v3 = [v2 connectionActive];

  v4 = [*(a1 + 32) serviceProxy];
  v8 = v4;
  if (v3)
  {
    v5 = [v4 remoteService];
    [v5 refreshShareableContentMetadataInJoinedConversation];

    v7 = SLShareableContentLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[observer] refreshed", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SLShareableContentObserver_connectAndRefreshNow__block_invoke_17;
    block[3] = &unk_278925D90;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [v4 connect];
  }
}

- (void)pause
{
  v3 = SLShareableContentLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[observer] pausing", v4, 2u);
  }

  [(SLShareableContentObserver *)self setState:0];
}

- (void)reset
{
  v3 = SLShareableContentLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[observer] resetting", v4, 2u);
  }

  [(SLShareableContentObserver *)self setState:0];
  [(SLShareableContentObserver *)self setNeedsRefresh:0];
}

- (void)didBecomeActiveNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SLShareableContentLogHandle(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[observer] notification received: %@", &v7, 0xCu);
  }

  [(SLShareableContentObserver *)self resumeIfNeeded];
}

- (void)didEnterBackgroundNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SLShareableContentLogHandle(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[observer] notification received: %@", &v7, 0xCu);
  }

  [(SLShareableContentObserver *)self reset];
}

- (void)willResignActiveNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SLShareableContentLogHandle(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[observer] notification received: %@", &v7, 0xCu);
  }

  [(SLShareableContentObserver *)self pause];
}

- (void)documentStateChangedNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SLShareableContentLogHandle(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    v11 = 138412290;
    v12 = name;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[observer] notification received: %@", &v11, 0xCu);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object;
    documentState = [v8 documentState];
    v10 = SLShareableContentLogHandle(documentState);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2048;
      v14 = documentState;
      _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "[observer] document %@ changed state to %tu", &v11, 0x16u);
    }

    if (!documentState)
    {
      [(SLShareableContentObserver *)self refreshIfNeeded];
    }
  }
}

- (void)activityItemsConfigurationReadyNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = SLShareableContentLogHandle(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [notificationCopy name];
    *buf = 138412290;
    v9 = name;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[observer] notification received: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SLShareableContentObserver_activityItemsConfigurationReadyNotification___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)userActivityWasCreated:(id)created
{
  v10 = *MEMORY[0x277D85DE8];
  createdCopy = created;
  v5 = SLShareableContentLogHandle(createdCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    activityType = [createdCopy activityType];
    *buf = 138412290;
    v9 = activityType;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "[observer] user activity created with type %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SLShareableContentObserver_userActivityWasCreated___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)serviceProxyDidConnect:(id)connect
{
  v4 = SLShareableContentLogHandle(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "[observer] service proxy connected", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SLShareableContentObserver_serviceProxyDidConnect___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__53__SLShareableContentObserver_serviceProxyDidConnect___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 2)
  {
    v3 = *(a1 + 32);

    return [v3 connectAndRefreshNow];
  }

  return result;
}

- (void)serviceProxyDidDisconnect:(id)disconnect
{
  v3 = SLShareableContentLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[observer] service proxy disconnected", v4, 2u);
  }
}

@end