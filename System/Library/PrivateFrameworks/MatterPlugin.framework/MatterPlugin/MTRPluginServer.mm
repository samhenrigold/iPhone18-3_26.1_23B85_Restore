@interface MTRPluginServer
+ (id)serverWorkQueue;
+ (id)sharedInstance;
- (BOOL)_deliverMessageToDelegate:(id)delegate homeUUID:(id)d timeout:(double)timeout;
- (BOOL)addClientConnection:(id)connection;
- (BOOL)handleIncomingMessage:(id)message;
- (BOOL)removeClientConnection:(id)connection;
- (BOOL)startWithDelegate:(id)delegate queue:(id)queue;
- (BOOL)stop;
- (MTRPluginServer)init;
- (NSSet)clientConnections;
- (int64_t)_safeQueryRunningModeFromDelegateForHomeUUID:(id)d;
- (int64_t)_unsafeQueryRunningModeFromDelegateForHomeUUID:(id)d;
- (void)_pidSuspended:(int)suspended;
- (void)_processStateUpdated:(id)updated;
- (void)_registerForResidentChangedNotifications;
- (void)_updateProcessMonitor;
- (void)dealloc;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)runningModeForHomeUUID:(id)d runningModeChanged:(int64_t)changed;
@end

@implementation MTRPluginServer

+ (id)sharedInstance
{
  if (sharedInstance_creation_1 != -1)
  {
    +[MTRPluginServer sharedInstance];
  }

  v3 = sharedInstance_sInstance_1;

  return v3;
}

uint64_t __33__MTRPluginServer_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_1 = objc_alloc_init(MTRPluginServer);

  return MEMORY[0x2821F96F8]();
}

+ (id)serverWorkQueue
{
  if (serverWorkQueue_predicateNAME != -1)
  {
    +[MTRPluginServer serverWorkQueue];
  }

  v3 = serverWorkQueue_sSingleWorkerQueue;

  return v3;
}

void __34__MTRPluginServer_serverWorkQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MTRPluginServerQueue", v2);
  v1 = serverWorkQueue_sSingleWorkerQueue;
  serverWorkQueue_sSingleWorkerQueue = v0;
}

- (MTRPluginServer)init
{
  v9.receiver = self;
  v9.super_class = MTRPluginServer;
  v2 = [(MTRPluginServer *)&v9 init];
  if (v2)
  {
    monitor = [MEMORY[0x277D46F80] monitor];
    [(MTRPluginServer *)v2 setProcessMonitor:monitor];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginServer *)v2 setPidToStatusMap:dictionary];

    v5 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginServer *)v2 set_clientConnections:v5];

    v6 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginServer *)v2 setHomesWithPrimaryResidentUpdated:v6];

    [(MTRPluginServer *)v2 _registerForResidentChangedNotifications];
    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  primaryResidentUpdatedSource = [(MTRPluginServer *)self primaryResidentUpdatedSource];

  if (primaryResidentUpdatedSource)
  {
    primaryResidentUpdatedSource2 = [(MTRPluginServer *)self primaryResidentUpdatedSource];
    dispatch_source_cancel(primaryResidentUpdatedSource2);

    [(MTRPluginServer *)self setPrimaryResidentUpdatedSource:0];
  }

  v5.receiver = self;
  v5.super_class = MTRPluginServer;
  [(MTRPluginServer *)&v5 dealloc];
}

- (void)_registerForResidentChangedNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];
}

- (BOOL)startWithDelegate:(id)delegate queue:(id)queue
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "Starting MTRPluginServer: %p", &v14, 0xCu);
  }

  [(MTRPluginServer *)self setDelegate:delegateCopy];
  [(MTRPluginServer *)self setDelegateQueue:queueCopy];
  [(MTRPluginServer *)self setRunning:1];
  delegate = [(MTRPluginServer *)self delegate];
  if (delegate)
  {
    v10 = delegate;
    delegateQueue = [(MTRPluginServer *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(MTRPluginServer *)self delegateQueue];
      dispatch_async(delegateQueue2, &__block_literal_global_38);
    }
  }

  return 1;
}

void __43__MTRPluginServer_startWithDelegate_queue___block_invoke()
{
  v0 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  [v0 _updateRunningModeForAllControllers];
}

- (BOOL)stop
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping MTRPluginServer: %p", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _clientConnections = [(MTRPluginServer *)self _clientConnections];
  v5 = [_clientConnections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_clientConnections);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [_clientConnections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(MTRPluginServer *)self setRunning:0];
  [(MTRPluginServer *)self setDelegate:0];
  [(MTRPluginServer *)self setDelegateQueue:0];
  v9 = [MEMORY[0x277CBEB58] set];
  [(MTRPluginServer *)self set_clientConnections:v9];

  [(MTRPluginServer *)self _updateProcessMonitor];
  return 1;
}

- (NSSet)clientConnections
{
  v2 = MEMORY[0x277CBEB98];
  _clientConnections = [(MTRPluginServer *)self _clientConnections];
  v4 = [v2 setWithSet:_clientConnections];

  return v4;
}

- (void)runningModeForHomeUUID:(id)d runningModeChanged:(int64_t)changed
{
  dCopy = d;
  delegate = [(MTRPluginServer *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegateQueue = [(MTRPluginServer *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(MTRPluginServer *)self delegateQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__MTRPluginServer_runningModeForHomeUUID_runningModeChanged___block_invoke;
      v11[3] = &unk_279893DC8;
      changedCopy = changed;
      v12 = dCopy;
      dispatch_async(delegateQueue2, v11);
    }
  }
}

void __61__MTRPluginServer_runningModeForHomeUUID_runningModeChanged___block_invoke(uint64_t a1)
{
  v2 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  [v2 _updateRunningMode:*(a1 + 40) forceUpdateControllerConfiguration:0 forHomeUUID:*(a1 + 32)];
}

- (int64_t)_unsafeQueryRunningModeFromDelegateForHomeUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(MTRPluginServer *)self isRunning])
  {
    v5 = MTRIsPotentiallyPairing();
    v6 = matterPluginLog_default;
    v7 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v17 = 138412546;
        selfCopy3 = self;
        v19 = 2112;
        v20 = dCopy;
        _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Overriding running mode for home %@ to local since we are in potentially pairing window", &v17, 0x16u);
      }

      v8 = 2;
    }

    else
    {
      if (v7)
      {
        v11 = v6;
        delegate = [(MTRPluginServer *)self delegate];
        v17 = 138412802;
        selfCopy3 = self;
        v19 = 2112;
        v20 = delegate;
        v21 = 2112;
        v22 = dCopy;
        _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ => Querying delegate: %@ running mode for homeUUID: %@", &v17, 0x20u);
      }

      delegate2 = [(MTRPluginServer *)self delegate];
      v8 = [delegate2 runningModeForHomeUUID:dCopy];

      v14 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = MTRPluginHomeRunnningModeAsString(v8);
        v17 = 138412802;
        selfCopy3 = self;
        v19 = 2048;
        v20 = v8;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Running mode response was: %ld (%@)", &v17, 0x20u);
      }
    }
  }

  else
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginServer *)self _unsafeQueryRunningModeFromDelegateForHomeUUID:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (int64_t)_safeQueryRunningModeFromDelegateForHomeUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  delegate = [(MTRPluginServer *)self delegate];
  if (delegate && ([(MTRPluginServer *)self delegateQueue], v6 = objc_claimAutoreleasedReturnValue(), v6, delegate, v6))
  {
    delegateQueue = [(MTRPluginServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MTRPluginServer__safeQueryRunningModeFromDelegateForHomeUUID___block_invoke;
    block[3] = &unk_279893DF0;
    v12 = &v13;
    block[4] = self;
    v11 = dCopy;
    dispatch_sync(delegateQueue, block);

    v8 = v14[3];
  }

  else
  {
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void *__64__MTRPluginServer__safeQueryRunningModeFromDelegateForHomeUUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _unsafeQueryRunningModeFromDelegateForHomeUUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)addClientConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (connectionCopy)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = connectionCopy;
      _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "Adding client connection: %@", &v11, 0xCu);
    }

    _clientConnections = [(MTRPluginServer *)self _clientConnections];
    v7 = [_clientConnections containsObject:connectionCopy];

    if (v7)
    {
      v8 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, " => Ignoring, already added", &v11, 2u);
      }
    }

    else
    {
      _clientConnections2 = [(MTRPluginServer *)self _clientConnections];
      [_clientConnections2 addObject:connectionCopy];
    }

    [(MTRPluginServer *)self _updateProcessMonitor];
  }

  return connectionCopy != 0;
}

- (BOOL)removeClientConnection:(id)connection
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (connectionCopy)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = connectionCopy;
      _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "Removing client connection: %@", &v14, 0xCu);
    }

    _clientConnections = [(MTRPluginServer *)self _clientConnections];
    v7 = [_clientConnections containsObject:connectionCopy];

    if (v7)
    {
      _clientConnections2 = [(MTRPluginServer *)self _clientConnections];
      [_clientConnections2 removeObject:connectionCopy];
    }

    else
    {
      v9 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, " => Ignoring, not present", &v14, 2u);
      }
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "pid")}];
    if (v10)
    {
      pidToStatusMap = [(MTRPluginServer *)self pidToStatusMap];
      [pidToStatusMap removeObjectForKey:v10];
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "Failed to remove pid from process map, pid was missing from connection", &v14, 2u);
      }
    }

    [(MTRPluginServer *)self _updateProcessMonitor];
  }

  return connectionCopy != 0;
}

- (BOOL)_deliverMessageToDelegate:(id)delegate homeUUID:(id)d timeout:(double)timeout
{
  delegateCopy = delegate;
  dCopy = d;
  if (![(MTRPluginServer *)self isRunning])
  {
    goto LABEL_7;
  }

  delegate = [(MTRPluginServer *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    delegate2 = [(MTRPluginServer *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegateQueue = [(MTRPluginServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_46;
      block[3] = &unk_279893D48;
      block[4] = self;
      v13 = &v21;
      v21 = delegateCopy;
      v14 = &v22;
      v22 = dCopy;
      v15 = block;
      goto LABEL_6;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  delegateQueue = [(MTRPluginServer *)self delegateQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke;
  v23[3] = &unk_279893E18;
  v23[4] = self;
  v13 = &v24;
  v24 = delegateCopy;
  *&v25[1] = timeout;
  v14 = v25;
  v25[0] = dCopy;
  v15 = v23;
LABEL_6:
  dispatch_async(delegateQueue, v15);

  v18 = 1;
LABEL_8:

  return v18;
}

void __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = MTRPluginHMFMessageDescription(v3);
    v7 = [*(a1 + 32) delegate];
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    *buf = 138413314;
    v21 = v4;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ => Delivering message: %@ to delegate: %@ timeout: %f homeUUID: %@", buf, 0x34u);
  }

  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v12 = [v11 delegate];
  v13 = *(v10 + 1);
  v14 = *(v10 + 2);
  v15 = v10[3];
  v19 = 0;
  v16 = [v12 sendMessage:v13 homeUUID:v14 timeout:&v19 error:v15];
  v17 = v19;

  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (!v18 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_cold_1();
  }
}

void __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_46(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = MTRPluginHMFMessageDescription(v3);
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 48);
    *buf = 138413058;
    v19 = v4;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ => Delivering message: %@ to delegate: %@ homeUUID: %@", buf, 0x2Au);
  }

  v10 = *(a1 + 32);
  v9 = a1 + 32;
  v11 = [v10 delegate];
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  v17 = 0;
  v14 = [v11 sendMessage:v12 homeUUID:v13 error:&v17];
  v15 = v17;

  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (!v16 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __62__MTRPluginServer__deliverMessageToDelegate_homeUUID_timeout___block_invoke_cold_1();
  }
}

- (BOOL)handleIncomingMessage:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = messageCopy;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ => Received incoming HMFMessage %@", &v9, 0x16u);
  }

  v7 = +[MTRPluginProtobufOverModernTransport sharedInstance];
  [v7 dispatchIncomingMessage:messageCopy];

  objc_autoreleasePoolPop(v5);
  return 1;
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = notificationCopy;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ Received resident update notification %@", buf, 0x16u);
  }

  delegate = [(MTRPluginServer *)self delegate];
  if (!delegate || (v7 = delegate, [(MTRPluginServer *)self delegateQueue], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v15 = matterPluginLog_default;
    if (!os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = notificationCopy;
    v16 = "%@ Ignoring notification %@ since delegate / delegateQueue is nil";
LABEL_13:
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
    goto LABEL_14;
  }

  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  userInfo2 = [notificationCopy userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

  if (!v12)
  {
LABEL_11:
    v15 = matterPluginLog_default;
    if (!os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 138412546;
    selfCopy3 = self;
    v22 = 2112;
    v23 = notificationCopy;
    v16 = "%@ Ignoring notification %@ since homeUUID is nil";
    goto LABEL_13;
  }

  delegateQueue = [(MTRPluginServer *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke;
  block[3] = &unk_279893D48;
  block[4] = self;
  v18 = v12;
  v19 = notificationCopy;
  v14 = v12;
  dispatch_async(delegateQueue, block);

LABEL_14:
}

void __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homesWithPrimaryResidentUpdated];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) primaryResidentUpdatedSource];
  v4 = [*(a1 + 32) delegateQueue];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke_2;
  v9 = &unk_279893AC8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v5 = MTRBufferedExecutionBlock(v3, v4, &v6, 10.0);
  [*(a1 + 32) setPrimaryResidentUpdatedSource:{v5, v6, v7, v8, v9, v10}];
}

void __59__MTRPluginServer_handlePrimaryResidentUpdateNotification___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) homesWithPrimaryResidentUpdated];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          *buf = v14;
          v20 = v10;
          v21 = 2112;
          v22 = v8;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ Updating running mode for home %@ since primary resident updated with notification %@", buf, 0x20u);
        }

        v12 = +[MTRPluginDeviceControllerRegistry sharedInstance];
        [v12 _updateRunningModeOfAllClientsForHome:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 32) homesWithPrimaryResidentUpdated];
  [v13 removeAllObjects];
}

- (void)_processStateUpdated:(id)updated
{
  v25 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  process = [updatedCopy process];
  previousState = [updatedCopy previousState];
  state = [updatedCopy state];
  v8 = [process pid];
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v19 = 67109632;
    v20 = v8;
    v21 = 1024;
    taskState = [previousState taskState];
    v23 = 1024;
    taskState2 = [state taskState];
    _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "Updating process state updated: %d   from: %d  to: %d", &v19, 0x14u);
  }

  pidToStatusMap = [(MTRPluginServer *)self pidToStatusMap];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  [pidToStatusMap setObject:updatedCopy forKey:v12];

  taskState3 = [state taskState];
  v14 = matterPluginLog_default;
  v15 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (taskState3 <= 1)
  {
    if (taskState3)
    {
      if (taskState3 != 1)
      {
LABEL_22:
        if (v15)
        {
          v17 = v14;
          taskState4 = [state taskState];
          v19 = 67109376;
          v20 = v8;
          v21 = 1024;
          taskState = taskState4;
          _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, " => pid %d unhandled state: %d", &v19, 0xEu);
        }

        goto LABEL_24;
      }

      if (!v15)
      {
        goto LABEL_24;
      }

      v19 = 67109120;
      v20 = v8;
      v16 = " => pid %d No state";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_24;
      }

      v19 = 67109120;
      v20 = v8;
      v16 = " => pid %d unknown state";
    }

LABEL_21:
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, v16, &v19, 8u);
    goto LABEL_24;
  }

  if (taskState3 == 2)
  {
    if (!v15)
    {
      goto LABEL_24;
    }

    v19 = 67109120;
    v20 = v8;
    v16 = " => pid %d unknown running state";
    goto LABEL_21;
  }

  if (taskState3 != 3)
  {
    if (taskState3 == 4)
    {
      if (v15)
      {
        v19 = 67109120;
        v20 = v8;
        _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, " => pid %d running", &v19, 8u);
      }

      [(MTRPluginServer *)self _pidResumed:v8];
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    v19 = 67109120;
    v20 = v8;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, " => pid %d suspended", &v19, 8u);
  }

  [(MTRPluginServer *)self _pidSuspended:v8];
LABEL_24:
}

- (void)_pidSuspended:(int)suspended
{
  v3 = *&suspended;
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  clientConnections = [(MTRPluginServer *)self clientConnections];
  v6 = [clientConnections copy];

  v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
  v8 = &matterPluginLog_default;
  if (v7)
  {
    v9 = v7;
    v10 = *v32;
    v27 = selfCopy;
    v28 = *v32;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        connection = [*(*(&v31 + 1) + 8 * i) connection];
        if ([connection processIdentifier] == v3)
        {
          v13 = MTRGetClientTypeForXPCConnection(connection);
          v14 = *v8;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v3;
            v16 = v6;
            v17 = v8;
            if (v13 >= 0xA)
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v13];
            }

            else
            {
              v18 = off_279893EB0[v13];
            }

            v19 = v18;
            processIdentifier = [connection processIdentifier];
            *buf = 138412802;
            *v36 = connection;
            *&v36[8] = 2112;
            v37 = v18;
            v38 = 1024;
            v39 = processIdentifier;
            _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "Checking connection: %@   clientType: %@   pid: %d", buf, 0x1Cu);

            v8 = v17;
            v6 = v16;
            v3 = v15;
            v10 = v28;
          }

          if (v13 <= 9 && ((1 << v13) & 0x36B) != 0)
          {
            v24 = *v8;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v26 = off_279893EB0[v13];
              *buf = 138412546;
              *v36 = v26;
              *&v36[8] = 1024;
              LODWORD(v37) = v3;
              _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, " => Ignoring client type: %@ for pid: %d", buf, 0x12u);
            }

            return;
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
      selfCopy = v27;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v22 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v36 = v3;
    *&v36[4] = 1024;
    *&v36[6] = 30;
    _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "pid suspended: %d will check state in %d seconds", buf, 0xEu);
  }

  v23 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MTRPluginServer__pidSuspended___block_invoke;
  block[3] = &unk_279893E40;
  block[4] = selfCopy;
  v30 = v3;
  dispatch_after(v23, MEMORY[0x277D85CD0], block);
}

void __33__MTRPluginServer__pidSuspended___block_invoke(uint64_t a1)
{
  v1 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pidToStatusMap];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(v1 + 40)];
  v4 = [v2 objectForKey:v3];

  v5 = [v4 state];
  v6 = v5;
  if (v5 && [v5 taskState] == 4)
  {
    v7 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v1 + 40);
      *buf = 67109376;
      *v46 = v8;
      *&v46[4] = 1024;
      *&v46[6] = 30;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "pid: %d is still running after %d seconds, not invalidating connection", buf, 0xEu);
    }

    goto LABEL_34;
  }

  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v1 + 40);
    *buf = 67109376;
    *v46 = v10;
    *&v46[4] = 1024;
    *&v46[6] = 30;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "pid: %d is still suspended after %d seconds, checking connection", buf, 0xEu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [*(v1 + 32) clientConnections];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v13)
  {
    v15 = v12;
LABEL_33:

    goto LABEL_34;
  }

  v14 = v13;
  v37 = v6;
  v38 = v4;
  v15 = 0;
  v16 = *v42;
  v17 = v12;
  v39 = *v42;
  do
  {
    v18 = 0;
    v40 = v14;
    do
    {
      if (*v42 != v16)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v41 + 1) + 8 * v18);
      v20 = [v19 connection];
      if ([v20 processIdentifier] == *(v1 + 40))
      {
        v21 = MTRGetClientTypeForXPCConnection(v20);
        v22 = matterPluginLog_default;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v17;
          v24 = v1;
          v25 = v15;
          if (v21 >= 0xA)
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v21];
          }

          else
          {
            v26 = off_279893EB0[v21];
          }

          v27 = v26;
          v28 = [v20 processIdentifier];
          *buf = 138412802;
          *v46 = v20;
          *&v46[8] = 2112;
          v47 = v26;
          v48 = 1024;
          v49 = v28;
          _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "Checking connection: %@   clientType: %@   pid: %d", buf, 0x1Cu);

          v15 = v25;
          v1 = v24;
          v17 = v23;
          v16 = v39;
        }

        if (v21 <= 7 && ((1 << v21) & 0x94) != 0)
        {
          v30 = matterPluginLog_default;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = off_279893F00[v21 - 2];
            v32 = *(v1 + 40);
            *buf = 138412546;
            *v46 = v31;
            *&v46[8] = 1024;
            LODWORD(v47) = v32;
            _os_log_impl(&dword_25830F000, v30, OS_LOG_TYPE_DEFAULT, " => %@ client type found pid: %d", buf, 0x12u);
          }

          v33 = v19;
          v15 = v33;
        }

        v14 = v40;
      }

      ++v18;
    }

    while (v14 != v18);
    v14 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
  }

  while (v14);

  v6 = v37;
  v4 = v38;
  if (v15)
  {
    v34 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v46 = v15;
      _os_log_impl(&dword_25830F000, v34, OS_LOG_TYPE_DEFAULT, " => Found matching connection: %@, removing all delegates", buf, 0xCu);
    }

    v35 = [v15 sessionID];
    v36 = [MEMORY[0x277CBEAC0] dictionary];
    [v15 deviceController:v35 updateControllerConfiguration:v36];

    goto LABEL_33;
  }

LABEL_34:
}

- (void)_updateProcessMonitor
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  clientConnections = [(MTRPluginServer *)self clientConnections];
  v5 = [clientConnections copy];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        connection = [*(*(&v21 + 1) + 8 * v9) connection];
        v11 = MEMORY[0x277D46F50];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connection, "processIdentifier")}];
        v13 = [v11 identifierForIdentifier:v12];
        [v3 addObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "Updating process monitor, with pids to monitor: %@", buf, 0xCu);
  }

  processMonitor = [(MTRPluginServer *)selfCopy processMonitor];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__MTRPluginServer__updateProcessMonitor__block_invoke;
  v18[3] = &unk_279893E90;
  v19 = v3;
  v20 = selfCopy;
  v16 = v3;
  [processMonitor updateConfiguration:v18];
}

void __40__MTRPluginServer__updateProcessMonitor__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "Updating process monitor config: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277D46FA0] predicateMatchingIdentifiers:*(a1 + 32)];
  if ([*(a1 + 32) count])
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    [v3 setPredicates:v6];

    v7 = [MEMORY[0x277D46FB0] descriptor];
    [v3 setStateDescriptor:v7];
  }

  else
  {
    [v3 setPredicates:0];
    [v3 setStateDescriptor:0];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MTRPluginServer__updateProcessMonitor__block_invoke_57;
  v8[3] = &unk_279893E68;
  v8[4] = *(a1 + 40);
  [v3 setUpdateHandler:v8];
}

void __40__MTRPluginServer__updateProcessMonitor__block_invoke_57(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 67109120;
    v18 = [v6 pid];
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "Process monitor update handler invoked for PID: %d", buf, 8u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MTRPluginServer__updateProcessMonitor__block_invoke_58;
  block[3] = &unk_279893D48;
  v10 = *(a1 + 32);
  v14 = v6;
  v15 = v10;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __40__MTRPluginServer__updateProcessMonitor__block_invoke_58(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [v3 pid];
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, " => (Main Queue) Process monitor update handler invoked for PID: %d", v6, 8u);
  }

  return [*(a1 + 40) _processStateUpdated:*(a1 + 48)];
}

- (void)_unsafeQueryRunningModeFromDelegateForHomeUUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Not querying running mode, we are not running", &v2, 0xCu);
}

@end