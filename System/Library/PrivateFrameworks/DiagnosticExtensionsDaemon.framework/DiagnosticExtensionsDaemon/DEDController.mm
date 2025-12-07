@interface DEDController
+ (id)archivedClasses;
- (BOOL)hasCompletionBlockWithIdentifier:(id)identifier;
- (BOOL)hasDevice:(id)device;
- (BOOL)hasRecentlyFinishedSessionWithIdentifier:(id)identifier;
- (BOOL)induceTimeOutIfNeededAndReturnCanProceedWithDevice:(id)device sessionId:(id)id;
- (DEDClientProtocol)clientDelegate;
- (DEDController)init;
- (DEDPairingProtocol)pairingDelegate;
- (DEDWorkerProtocol)workerDelegate;
- (OS_dispatch_queue)bugSessionCallbackQueue;
- (id)_allKnownDevicesWithIdentifier:(id)identifier;
- (id)_deviceForIncomingDevice:(id)device needsReady:(BOOL)ready;
- (id)_sharingDeviceForIncomingDevice:(id)device;
- (id)connector:(id)connector needsXPCInboundForPid:(id)pid;
- (id)idsConnection;
- (id)knownSessions;
- (id)popDidStartSessionCompletionWithIdentifier:(id)identifier;
- (id)popSessionStartCompletionWithIdentifier:(id)identifier;
- (id)sessionForIdentifier:(id)identifier;
- (id)sharingConnection;
- (void)_didAbortSessionWithID:(id)d;
- (void)_timeOutSessionStartBlockWithIdentifier:(id)identifier targetDevice:(id)device timeout:(double)timeout;
- (void)abortSession:(id)session;
- (void)abortSession:(id)session withCompletion:(id)completion;
- (void)addDevice:(id)device;
- (void)addDidStartSessionCompletion:(id)completion withIdentifier:(id)identifier;
- (void)addSessionStartCompletion:(id)completion withIdentifier:(id)identifier configuration:(id)configuration targetDevice:(id)device;
- (void)configureForDaemon;
- (void)configureForSharing:(BOOL)sharing;
- (void)connector:(id)connector didLooseConnectionToProcessWithPid:(int)pid;
- (void)didFinishSessionWithIdentifier:(id)identifier;
- (void)didStartBugSessionWithInfo:(id)info;
- (void)discoverDevicesWithCompletion:(id)completion;
- (void)forceRemoveNotificationOfType:(int64_t)type identifier:(id)identifier hostIdentifier:(id)hostIdentifier;
- (void)hasActiveSessionForIdentifier:(id)identifier completion:(id)completion;
- (void)idsInbound_devicesChanged:(id)changed completion:(id)completion;
- (void)insertNewSession:(id)session;
- (void)listXPCConnections:(id)connections;
- (void)logDeviceCounts;
- (void)pingDaemonWithCompletion:(id)completion;
- (void)purgeStaleSessions:(id)sessions completion:(id)completion;
- (void)removeSessionWithIdentifier:(id)identifier;
- (void)reset;
- (void)sharingInbound_promptPINForDevice:(id)device fromInbound:(id)inbound;
- (void)sharingInbound_successPINForDevice:(id)device fromInbound:(id)inbound;
- (void)start;
- (void)startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target fromInbound:(id)inbound;
- (void)startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration target:(id)target completion:(id)completion;
- (void)startPairSetupForDevice:(id)device;
- (void)stopDiscovery;
- (void)tryPIN:(id)n forDevice:(id)device;
- (void)upgradeToClassCDataProtectionIfNeeded;
- (void)xpcInbound_didDiscoverDevices:(id)devices;
- (void)xpcInbound_discoverAllAvailableDevices:(id)devices;
- (void)xpcInbound_forceRemoveNotificationOfType:(int64_t)type identifier:(id)identifier hostIdentifier:(id)hostIdentifier;
- (void)xpcInbound_gotDeviceUpdate:(id)update;
- (void)xpcInbound_hasActiveSession:(id)session fromInbound:(id)inbound;
- (void)xpcInbound_hasActiveSessionReply:(id)reply isActive:(BOOL)active;
- (void)xpcInbound_listClientXPCConnectionsReply:(id)reply;
- (void)xpcInbound_ping:(id)inbound_ping;
- (void)xpcInbound_pong;
- (void)xpcInbound_promptPINForDevice:(id)device;
- (void)xpcInbound_startPairSetupForDevice:(id)device fromInbound:(id)inbound;
- (void)xpcInbound_stopDeviceDiscovery:(id)discovery;
- (void)xpcInbound_successPINForDevice:(id)device;
- (void)xpcInbound_tryPIN:(id)n forDevice:(id)device fromInbound:(id)inbound;
- (void)xpc_listClientXPCConnectionsFromInbound:(id)inbound;
@end

@implementation DEDController

- (DEDController)init
{
  v20.receiver = self;
  v20.super_class = DEDController;
  v2 = [(DEDController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    sessions = v2->_sessions;
    v2->_sessions = MEMORY[0x277CBEC10];

    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    devices = v3->_devices;
    v3->_devices = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    sessionStartBlocks = v3->_sessionStartBlocks;
    v3->_sessionStartBlocks = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    sessionDidStartBlocks = v3->_sessionDidStartBlocks;
    v3->_sessionDidStartBlocks = v9;

    v3->_isDaemon = 0;
    xpcConnector = v3->_xpcConnector;
    v3->_xpcConnector = 0;

    v12 = +[DEDConfiguration sharedInstance];
    connectionType = [v12 connectionType];

    if (connectionType == 1)
    {
      v14 = dispatch_queue_create("com.apple.diagnosticextensionsd.embedded-work-queue", 0);
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
      v15 = MEMORY[0x277D85CD0];
    }

    replyQueue = v3->_replyQueue;
    v3->_replyQueue = v14;

    v17 = dispatch_queue_create("com.apple.diagnosticextensionsd.work-queue", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v17;

    objc_storeWeak(&v3->_clientDelegate, 0);
    objc_storeWeak(&v3->_workerDelegate, 0);
    *&v3->_started = 0;
  }

  return v3;
}

- (OS_dispatch_queue)bugSessionCallbackQueue
{
  p_bugSessionCallbackQueue = &self->_bugSessionCallbackQueue;
  bugSessionCallbackQueue = self->_bugSessionCallbackQueue;
  if (!bugSessionCallbackQueue)
  {
    objc_storeStrong(p_bugSessionCallbackQueue, MEMORY[0x277D85CD0]);
    bugSessionCallbackQueue = *p_bugSessionCallbackQueue;
  }

  return bugSessionCallbackQueue;
}

- (void)configureForDaemon
{
  [(DEDController *)self setIsDaemon:1];
  [(DEDController *)self setUseSharing:0];
  [(DEDController *)self setUseIDS:1];
  v3 = +[DEDConfiguration sharedInstance];
  if ([v3 connectionType] == 1)
  {
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v6 = [environment objectForKeyedSubscript:@"USE-DEBUG-SERVICE"];

    if (!v6)
    {
      return;
    }
  }

  [(DEDController *)self setUseIDS:0];
}

- (void)configureForSharing:(BOOL)sharing
{
  if (sharing)
  {
    v4 = [(DEDController *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [DEDController configureForSharing:];
    }
  }

  [(DEDController *)self setUseSharing:0];
}

- (void)start
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__DEDController_start__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = [v8 identifier];
        [v10 removeSessionWithIdentifier:v11];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v12 = [*(a1 + 32) log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_INFO, "checking for pending operations", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [*(a1 + 32) sessions];
  v14 = [v13 allValues];

  v15 = [v14 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) resumePendingOperations];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v16);
  }

  [*(a1 + 32) upgradeToClassCDataProtectionIfNeeded];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (void)pingDaemonWithCompletion:(id)completion
{
  completionCopy = completion;
  [(DEDController *)self setPongBlock:completionCopy];
  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DEDController_pingDaemonWithCompletion___block_invoke;
  v6[3] = &unk_278F65830;
  objc_copyWeak(&v7, &location);
  dispatch_async(replyQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__DEDController_pingDaemonWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_ping];
}

- (void)discoverDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "started device discovery", buf, 2u);
  }

  [(DEDController *)self setDevicesCompletion:completionCopy];
  objc_initWeak(buf, self);
  replyQueue = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DEDController_discoverDevicesWithCompletion___block_invoke;
  block[3] = &unk_278F65830;
  objc_copyWeak(&v8, buf);
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __47__DEDController_discoverDevicesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_discoverAllAvailableDevices];
}

- (void)stopDiscovery
{
  v3 = [(DEDController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "stopped device discovery", buf, 2u);
  }

  [(DEDController *)self setDevicesCompletion:0];
  objc_initWeak(buf, self);
  replyQueue = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DEDController_stopDiscovery__block_invoke;
  block[3] = &unk_278F65830;
  objc_copyWeak(&v6, buf);
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __30__DEDController_stopDiscovery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_stopDeviceDiscovery];
}

- (id)_allKnownDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devices = [(DEDController *)selfCopy devices];
  allValues = [devices allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__DEDController__allKnownDevicesWithIdentifier___block_invoke;
  v11[3] = &unk_278F65858;
  v8 = identifierCopy;
  v12 = v8;
  v9 = [allValues ded_selectItemsPassingTest:v11];

  objc_sync_exit(selfCopy);

  return v9;
}

uint64_t __48__DEDController__allKnownDevicesWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 status];
  if (v4)
  {
    if (v5 == 4)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 identifier];
      v7 = [v6 isEqualToString:*(a1 + 32)];
    }
  }

  else
  {
    v7 = v5 != 4;
  }

  return v7;
}

- (void)startPairSetupForDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    publicLogDescription = [deviceCopy publicLogDescription];
    *buf = 136446466;
    v14 = "[DEDController startPairSetupForDevice:]";
    v15 = 2114;
    v16 = publicLogDescription;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  v7 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v7 transport] == 2)
  {
    objc_initWeak(buf, self);
    replyQueue = [(DEDController *)self replyQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__DEDController_startPairSetupForDevice___block_invoke;
    v10[3] = &unk_278F65880;
    objc_copyWeak(&v12, buf);
    v11 = v7;
    dispatch_async(replyQueue, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = [(DEDController *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEDController startPairSetupForDevice:];
    }
  }
}

void __41__DEDController_startPairSetupForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_startPairSetupForDevice:*(a1 + 32)];
}

- (void)tryPIN:(id)n forDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  nCopy = n;
  deviceCopy = device;
  v8 = [(DEDController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    publicLogDescription = [deviceCopy publicLogDescription];
    *buf = 136446466;
    v18 = "[DEDController tryPIN:forDevice:]";
    v19 = 2114;
    v20 = publicLogDescription;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  v10 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v10 transport] == 2)
  {
    objc_initWeak(buf, self);
    replyQueue = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__DEDController_tryPIN_forDevice___block_invoke;
    block[3] = &unk_278F658A8;
    objc_copyWeak(&v16, buf);
    v14 = nCopy;
    v15 = v10;
    dispatch_async(replyQueue, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = [(DEDController *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEDController tryPIN:forDevice:];
    }
  }
}

void __34__DEDController_tryPIN_forDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_tryPIN:*(a1 + 32) forDevice:*(a1 + 40)];
}

- (id)_sharingDeviceForIncomingDevice:(id)device
{
  deviceCopy = device;
  v5 = [(DEDController *)self _deviceForIncomingDevice:deviceCopy needsReady:0];
  v6 = [(DEDController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DEDController *)deviceCopy _sharingDeviceForIncomingDevice:v5, v6];
  }

  return v5;
}

- (id)_deviceForIncomingDevice:(id)device needsReady:(BOOL)ready
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devices = [(DEDController *)selfCopy devices];
  hashingKey = [deviceCopy hashingKey];
  v10 = [devices objectForKeyedSubscript:hashingKey];

  if (!v10)
  {
    v11 = [(DEDController *)selfCopy log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "could not match device by transport-identifier, trying address", buf, 2u);
    }

    devices2 = [(DEDController *)selfCopy devices];
    allValues = [devices2 allValues];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __53__DEDController__deviceForIncomingDevice_needsReady___block_invoke;
    v24 = &unk_278F658D0;
    v14 = deviceCopy;
    v25 = v14;
    readyCopy = ready;
    v10 = [allValues ded_findWithBlock:&v21];

    if (v10)
    {
      v15 = [(DEDController *)selfCopy log:v21];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 description];
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEFAULT, "matched device by address on [%{public}@]", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v17 = [(DEDController *)selfCopy log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    publicLogSafeIdentifier = [deviceCopy publicLogSafeIdentifier];
    publicLogSafeIdentifier2 = [v10 publicLogSafeIdentifier];
    *buf = 138543618;
    v28 = publicLogSafeIdentifier;
    v29 = 2114;
    v30 = publicLogSafeIdentifier2;
    _os_log_impl(&dword_248AD7000, v17, OS_LOG_TYPE_INFO, "device for incoming device %{public}@ -> %{public}@", buf, 0x16u);
  }

  return v10;
}

uint64_t __53__DEDController__deviceForIncomingDevice_needsReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteTransport];
  if (v4 == [*(a1 + 32) remoteTransport])
  {
    v5 = [v3 address];
    v6 = [*(a1 + 32) address];
    v7 = [v5 isEqualToString:v6];

    v8 = *(a1 + 40) ^ 1;
    v9 = v8 & v7;
    if (v8 & 1) == 0 && (v7)
    {
      v9 = [v3 status] == 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)hasDevice:(id)device
{
  v3 = [(DEDController *)self _deviceForIncomingDevice:device];
  v4 = v3 != 0;

  return v4;
}

- (void)startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration target:(id)target completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  targetCopy = target;
  completionCopy = completion;
  [(DEDController *)self logDeviceCounts];
  v14 = +[DEDDevice currentDevice];
  v15 = DEDSessionStartLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    name = [v14 name];
    name2 = [targetCopy name];
    address = [targetCopy address];
    v19 = 136316162;
    v20 = "[DEDController startBugSessionWithIdentifier:configuration:target:completion:]";
    v21 = 2112;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = name;
    v25 = 2112;
    v26 = name2;
    v27 = 2112;
    v28 = address;
    _os_log_debug_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEBUG, "%s %@:%@ -> %@ (%@)", &v19, 0x34u);
  }

  if (identifierCopy && completionCopy)
  {
    [(DEDController *)self addSessionStartCompletion:completionCopy withIdentifier:identifierCopy configuration:configurationCopy targetDevice:targetCopy];
    [(DEDController *)self startBugSessionWithIdentifier:identifierCopy configuration:configurationCopy caller:v14 target:targetCopy fromInbound:0];
  }
}

- (id)sessionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessions = [(DEDController *)selfCopy sessions];
  v7 = [sessions objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)insertNewSession:(id)session
{
  sessionCopy = session;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DEDController *)sessionCopy insertNewSession:v5];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  sessions = [(DEDController *)selfCopy sessions];
  v9 = [v7 initWithDictionary:sessions];

  identifier = [sessionCopy identifier];
  [v9 setObject:sessionCopy forKeyedSubscript:identifier];

  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v9];
  [(DEDController *)selfCopy setSessions:v11];

  objc_sync_exit(selfCopy);
}

- (void)removeSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDController removeSessionWithIdentifier:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  sessions = [(DEDController *)selfCopy sessions];
  v9 = [v7 initWithDictionary:sessions];

  [v9 removeObjectForKey:identifierCopy];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
  [(DEDController *)selfCopy setSessions:v10];

  objc_sync_exit(selfCopy);
}

- (id)knownSessions
{
  sessions = [(DEDController *)self sessions];
  allKeys = [sessions allKeys];

  return allKeys;
}

- (void)reset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(DEDController *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[DEDController reset]";
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sessions = [(DEDController *)self sessions];
  allValues = [sessions allValues];

  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [(DEDController *)self abortSession:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)listXPCConnections:(id)connections
{
  connectionsCopy = connections;
  [(DEDController *)self setXpcConnectionsCompletion:connectionsCopy];
  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__DEDController_listXPCConnections___block_invoke;
  v6[3] = &unk_278F65830;
  objc_copyWeak(&v7, &location);
  dispatch_async(replyQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __36__DEDController_listXPCConnections___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained xpcConnector];
  v2 = [v1 diagnosticextensionsdXPCInterface];
  [v2 xpc_listClientXPCConnections];
}

- (void)abortSession:(id)session withCompletion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v8 = [(DEDController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(DEDController *)v8 abortSession:v9 withCompletion:v10];
  }

  if (completionCopy)
  {
    didCancelCompletion = [(DEDController *)self didCancelCompletion];

    if (didCancelCompletion)
    {
      v12 = [(DEDController *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "will overwrite previous DEDDidCancelSessionCompletion block", v17, 2u);
      }
    }

    [(DEDController *)self setDidCancelCompletion:completionCopy];
  }

  identifier = [sessionCopy identifier];
  if (identifier)
  {
    sessions = [(DEDController *)self sessions];
    v15 = [sessions objectForKey:identifier];

    if (!v15)
    {
      v16 = [(DEDController *)self log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DEDController abortSession:withCompletion:];
      }
    }

    [v15 cancel];
  }
}

- (void)abortSession:(id)session
{
  v9 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [sessionCopy identifier];
    v7 = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Aborting session %@", &v7, 0xCu);
  }

  [(DEDController *)self abortSession:sessionCopy withCompletion:0];
}

- (void)_didAbortSessionWithID:(id)d
{
  dCopy = d;
  didCancelCompletion = [(DEDController *)self didCancelCompletion];

  if (didCancelCompletion)
  {
    didCancelCompletion2 = [(DEDController *)self didCancelCompletion];
    replyQueue = [(DEDController *)self replyQueue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __40__DEDController__didAbortSessionWithID___block_invoke;
    v12 = &unk_278F653F8;
    v14 = didCancelCompletion2;
    v13 = dCopy;
    v8 = didCancelCompletion2;
    dispatch_async(replyQueue, &v9);

    [(DEDController *)self setDidCancelCompletion:0, v9, v10, v11, v12];
  }
}

- (void)hasActiveSessionForIdentifier:(id)identifier completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  [(DEDController *)self setSessionExistsCompletion:completionCopy];
  v8 = [(DEDController *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Retrieving active session: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  replyQueue = [(DEDController *)self replyQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__DEDController_hasActiveSessionForIdentifier_completion___block_invoke;
  v11[3] = &unk_278F65880;
  objc_copyWeak(&v13, buf);
  v12 = identifierCopy;
  v10 = identifierCopy;
  dispatch_async(replyQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __58__DEDController_hasActiveSessionForIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_hasActiveSession:*(a1 + 32)];
}

- (BOOL)hasRecentlyFinishedSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  recentlyFinishedSessions = [(DEDController *)self recentlyFinishedSessions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__DEDController_hasRecentlyFinishedSessionWithIdentifier___block_invoke;
  v10[3] = &unk_278F658F8;
  v11 = identifierCopy;
  v6 = identifierCopy;
  v7 = [recentlyFinishedSessions ded_findWithBlock:v10];
  v8 = v7 != 0;

  return v8;
}

- (void)forceRemoveNotificationOfType:(int64_t)type identifier:(id)identifier hostIdentifier:(id)hostIdentifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  v10 = [(DEDController *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (type > 3)
    {
      v11 = "Unknown";
    }

    else
    {
      v11 = off_278F65B40[type];
    }

    *buf = 136446722;
    v20 = v11;
    v21 = 2114;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = hostIdentifierCopy;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Force removing notification of type [%{public}s] identifier [%{public}@] app [%{public}@]", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  replyQueue = [(DEDController *)self replyQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__DEDController_forceRemoveNotificationOfType_identifier_hostIdentifier___block_invoke;
  v15[3] = &unk_278F65920;
  objc_copyWeak(v18, buf);
  v18[1] = type;
  v16 = identifierCopy;
  v17 = hostIdentifierCopy;
  v13 = hostIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(replyQueue, v15);

  objc_destroyWeak(v18);
  objc_destroyWeak(buf);
}

void __73__DEDController_forceRemoveNotificationOfType_identifier_hostIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 diagnosticextensionsdXPCInterface];
  [v3 xpc_forceRemoveNotificationOfType:*(a1 + 56) identifier:*(a1 + 32) hostIdentifier:*(a1 + 40)];
}

- (void)connector:(id)connector didLooseConnectionToProcessWithPid:(int)pid
{
  v11 = *MEMORY[0x277D85DE8];
  isDaemon = [(DEDController *)self isDaemon];
  v7 = [(DEDController *)self log];
  sharingConnection = v7;
  if (!isDaemon)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDController connector:didLooseConnectionToProcessWithPid:];
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = pid;
    _os_log_impl(&dword_248AD7000, sharingConnection, OS_LOG_TYPE_DEFAULT, "Daemon DED Controller lost connection to app with pid [%i]", v10, 8u);
  }

  if ([(DEDController *)self useSharing])
  {
    v9 = [(DEDController *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Daemon DED Controller will stop discovery", v10, 2u);
    }

    sharingConnection = [(DEDController *)self sharingConnection];
    [sharingConnection stopDiscovery];
LABEL_10:
  }
}

- (id)connector:(id)connector needsXPCInboundForPid:(id)pid
{
  pidCopy = pid;
  v6 = [[DEDXPCInbound alloc] initWithDelegate:self senderPid:pidCopy];

  return v6;
}

- (void)xpcInbound_forceRemoveNotificationOfType:(int64_t)type identifier:(id)identifier hostIdentifier:(id)hostIdentifier
{
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  if (type == 2)
  {
    v11 = DEDFollowUpNotifier;
    goto LABEL_9;
  }

  if (type == 1)
  {
    v11 = DEDUserNotificationNotifier;
LABEL_9:
    [(__objc2_class *)v11 forceRemoveNotificationWithIdentifier:identifierCopy hostIdentifier:hostIdentifierCopy];
    goto LABEL_13;
  }

  if (type)
  {
    v12 = [(DEDController *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [DEDController xpcInbound_forceRemoveNotificationOfType:type identifier:v12 hostIdentifier:?];
    }
  }

  else
  {
    v10 = [(DEDController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_forceRemoveNotificationOfType:identifier:hostIdentifier:];
    }
  }

LABEL_13:
}

- (void)xpcInbound_ping:(id)inbound_ping
{
  inbound_pingCopy = inbound_ping;
  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DEDController_xpcInbound_ping___block_invoke;
  block[3] = &unk_278F65880;
  objc_copyWeak(&v9, &location);
  v8 = inbound_pingCopy;
  v6 = inbound_pingCopy;
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__DEDController_xpcInbound_ping___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_pong];
}

- (void)xpcInbound_pong
{
  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__DEDController_xpcInbound_pong__block_invoke;
  v4[3] = &unk_278F65830;
  objc_copyWeak(&v5, &location);
  dispatch_async(replyQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__DEDController_xpcInbound_pong__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pongBlock];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v4 = [v5 pongBlock];
    v4[2]();
  }
}

- (void)xpcInbound_discoverAllAvailableDevices:(id)devices
{
  devicesCopy = devices;
  v5 = objc_initWeak(&location, self);
  v6 = [(DEDController *)self log];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "'Will start device discovery", buf, 2u);
  }

  workQueue = [(DEDController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v12, &location);
  v10 = devicesCopy;
  selfCopy = self;
  v8 = devicesCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke(id *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained log];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Starting device discovery", buf, 2u);
  }

  group = dispatch_group_create();
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = [v3 useIDS];

  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    v6 = [v5 idsConnection];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_42;
    v57[3] = &unk_278F65948;
    objc_copyWeak(&v59, a1 + 6);
    v58 = a1[4];
    [v6 setDeviceCallback:v57];

    dispatch_group_enter(group);
    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 idsConnection];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_3;
    v54[3] = &unk_278F65970;
    objc_copyWeak(&v56, a1 + 6);
    v55 = group;
    [v8 discoverDevicesWithCompletion:v54];

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v59);
  }

  v9 = objc_loadWeakRetained(a1 + 6);
  v10 = [v9 useSharing];

  if (v10)
  {
    v11 = objc_loadWeakRetained(a1 + 6);
    v12 = [v11 sharingConnection];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_4;
    v51[3] = &unk_278F65948;
    objc_copyWeak(&v53, a1 + 6);
    v52 = a1[4];
    [v12 setDeviceDiscoveryCallback:v51];

    v13 = objc_loadWeakRetained(a1 + 6);
    v14 = [v13 log];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_INFO, "Starting sharing...", buf, 2u);
    }

    dispatch_group_enter(group);
    v15 = objc_loadWeakRetained(a1 + 6);
    v16 = [v15 sharingConnection];
    v17 = a1[4];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_44;
    v48[3] = &unk_278F65970;
    objc_copyWeak(&v50, a1 + 6);
    v49 = group;
    [v16 discoverDevicesFromInbound:v17 withCompletion:v48];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v53);
  }

  v18 = dispatch_time(0, 0xDF8476000);
  dispatch_group_wait(group, v18);
  obj = a1[5];
  objc_sync_enter(obj);
  v19 = objc_loadWeakRetained(a1 + 6);
  v20 = [v19 log];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_loadWeakRetained(a1 + 6);
    v22 = [v21 devices];
    v23 = [v22 allKeys];
    v24 = [v23 count];
    *buf = 134217984;
    *v61 = v24;
    _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "discovered devices [%lu]", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = objc_loadWeakRetained(a1 + 6);
  v26 = [v25 devices];
  v27 = [v26 allValues];

  v28 = [v27 countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v28)
  {
    v29 = *v45;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v44 + 1) + 8 * i);
        v32 = objc_loadWeakRetained(a1 + 6);
        v33 = [v32 log];

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v31 transport];
          v35 = [v31 publicLogSafeIdentifier];
          *buf = 67109378;
          *v61 = v34;
          *&v61[4] = 2114;
          *&v61[6] = v35;
          _os_log_impl(&dword_248AD7000, v33, OS_LOG_TYPE_DEFAULT, "discovered [%i-%{public}@]", buf, 0x12u);
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v28);
  }

  objc_sync_exit(obj);
  v36 = objc_loadWeakRetained(a1 + 6);
  v37 = [v36 replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_45;
  block[3] = &unk_278F65880;
  objc_copyWeak(&v43, a1 + 6);
  v42 = a1[4];
  dispatch_async(v37, block);

  objc_destroyWeak(&v43);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addDevice:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_2;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_gotDeviceUpdate:*(a1 + 40)];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained addDevice:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addDevice:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_5;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v11, (a1 + 40));
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_gotDeviceUpdate:*(a1 + 40)];
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_44(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained addDevice:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __56__DEDController_xpcInbound_discoverAllAvailableDevices___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 allKnownDevices];
  [v3 xpc_didDiscoverDevices:v5];
}

- (void)xpcInbound_gotDeviceUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = [(DEDController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [updateCopy name];
    *buf = 138412546;
    v11 = name;
    v12 = 2048;
    status = [updateCopy status];
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Update: %@ status %ld", buf, 0x16u);
  }

  [(DEDController *)self addDevice:updateCopy];
  objc_initWeak(buf, self);
  replyQueue = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DEDController_xpcInbound_gotDeviceUpdate___block_invoke;
  block[3] = &unk_278F65830;
  objc_copyWeak(&v9, buf);
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __44__DEDController_xpcInbound_gotDeviceUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained devicesCompletion];

  v4 = objc_loadWeakRetained((a1 + 32));
  v9 = v4;
  if (v3)
  {
    v5 = [v4 devicesCompletion];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 allKnownDevices];
    (v5)[2](v5, v7);
  }

  else
  {
    v8 = [v4 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "discovered devices, no completion block registered", buf, 2u);
    }
  }
}

- (void)xpcInbound_didDiscoverDevices:(id)devices
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  devicesCopy = devices;
  v5 = [devicesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(devicesCopy);
        }

        [(DEDController *)self addDevice:*(*(&v12 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [devicesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__DEDController_xpcInbound_didDiscoverDevices___block_invoke;
  v9[3] = &unk_278F65830;
  objc_copyWeak(&v10, &location);
  dispatch_async(replyQueue, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __47__DEDController_xpcInbound_didDiscoverDevices___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained devicesCompletion];

  v4 = objc_loadWeakRetained((a1 + 32));
  v9 = v4;
  if (v3)
  {
    v5 = [v4 devicesCompletion];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 allKnownDevices];
    (v5)[2](v5, v7);
  }

  else
  {
    v8 = [v4 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "discovered devices, no completion block registered", buf, 2u);
    }
  }
}

- (void)xpcInbound_stopDeviceDiscovery:(id)discovery
{
  if ([(DEDController *)self useSharing])
  {
    sharingConnection = [(DEDController *)self sharingConnection];
    [sharingConnection stopDiscovery];
  }
}

- (void)xpcInbound_hasActiveSession:(id)session fromInbound:(id)inbound
{
  sessionCopy = session;
  inboundCopy = inbound;
  sessions = [(DEDController *)self sessions];
  v9 = [sessions objectForKeyedSubscript:sessionCopy];

  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DEDController_xpcInbound_hasActiveSession_fromInbound___block_invoke;
  block[3] = &unk_278F65998;
  objc_copyWeak(&v16, &location);
  v14 = inboundCopy;
  v15 = sessionCopy;
  v17 = v9 != 0;
  v11 = sessionCopy;
  v12 = inboundCopy;
  dispatch_async(replyQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __57__DEDController_xpcInbound_hasActiveSession_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_hasActiveSessionReply:*(a1 + 40) isActive:*(a1 + 56)];
}

- (void)xpcInbound_hasActiveSessionReply:(id)reply isActive:(BOOL)active
{
  activeCopy = active;
  v18 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v7 = [(DEDController *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"No";
    if (activeCopy)
    {
      v8 = @"Yes";
    }

    *buf = 138543618;
    v15 = replyCopy;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Session %{public}@ is active %{public}@", buf, 0x16u);
  }

  sessionExistsCompletion = [(DEDController *)self sessionExistsCompletion];

  if (sessionExistsCompletion)
  {
    objc_initWeak(buf, self);
    replyQueue = [(DEDController *)self replyQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__DEDController_xpcInbound_hasActiveSessionReply_isActive___block_invoke;
    v11[3] = &unk_278F659C0;
    objc_copyWeak(&v12, buf);
    v13 = activeCopy;
    dispatch_async(replyQueue, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __59__DEDController_xpcInbound_hasActiveSessionReply_isActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained sessionExistsCompletion];
  v3[2](v3, *(a1 + 40));

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setSessionExistsCompletion:0];
}

- (void)xpc_listClientXPCConnectionsFromInbound:(id)inbound
{
  inboundCopy = inbound;
  xpcConnector = [(DEDController *)self xpcConnector];
  clientConnections = [xpcConnector clientConnections];

  objc_initWeak(&location, self);
  replyQueue = [(DEDController *)self replyQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__DEDController_xpc_listClientXPCConnectionsFromInbound___block_invoke;
  v10[3] = &unk_278F658A8;
  objc_copyWeak(&v13, &location);
  v11 = inboundCopy;
  v12 = clientConnections;
  v8 = clientConnections;
  v9 = inboundCopy;
  dispatch_async(replyQueue, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __57__DEDController_xpc_listClientXPCConnectionsFromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_listClientXPCConnectionsReply:*(a1 + 40)];
}

- (void)xpcInbound_listClientXPCConnectionsReply:(id)reply
{
  replyCopy = reply;
  xpcConnectionsCompletion = [(DEDController *)self xpcConnectionsCompletion];

  if (xpcConnectionsCompletion)
  {
    objc_initWeak(&location, self);
    replyQueue = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__DEDController_xpcInbound_listClientXPCConnectionsReply___block_invoke;
    block[3] = &unk_278F65880;
    objc_copyWeak(&v9, &location);
    v8 = replyCopy;
    dispatch_async(replyQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __58__DEDController_xpcInbound_listClientXPCConnectionsReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained xpcConnectionsCompletion];
  v3[2](v3, *(a1 + 32));

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setXpcConnectionsCompletion:0];
}

- (void)xpcInbound_startPairSetupForDevice:(id)device fromInbound:(id)inbound
{
  deviceCopy = device;
  inboundCopy = inbound;
  v8 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v8 transport] == 3)
  {
    sharingConnection = [(DEDController *)self sharingConnection];
    [sharingConnection sharing_startPairSetupForDevice:v8 fromInbound:inboundCopy];
  }

  else
  {
    sharingConnection = [(DEDController *)self log];
    if (os_log_type_enabled(sharingConnection, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_startPairSetupForDevice:fromInbound:];
    }
  }
}

- (void)xpcInbound_promptPINForDevice:(id)device
{
  deviceCopy = device;
  pairingDelegate = [(DEDController *)self pairingDelegate];

  if (pairingDelegate)
  {
    v6 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
    if ([v6 transport]== 2)
    {
      objc_initWeak(&location, self);
      replyQueue = [(DEDController *)self replyQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__DEDController_xpcInbound_promptPINForDevice___block_invoke;
      block[3] = &unk_278F65880;
      objc_copyWeak(&v11, &location);
      v6 = v6;
      v10 = v6;
      dispatch_async(replyQueue, block);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = [(DEDController *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [DEDController xpcInbound_promptPINForDevice:];
      }
    }
  }

  else
  {
    v6 = [(DEDController *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_promptPINForDevice:];
    }
  }
}

void __47__DEDController_xpcInbound_promptPINForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pairingDelegate];
  [v2 promptPINForDevice:*(a1 + 32)];
}

- (void)xpcInbound_tryPIN:(id)n forDevice:(id)device fromInbound:(id)inbound
{
  nCopy = n;
  deviceCopy = device;
  inboundCopy = inbound;
  v11 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v11 transport] == 3)
  {
    sharingConnection = [(DEDController *)self sharingConnection];
    [sharingConnection sharing_tryPIN:nCopy forDevice:deviceCopy fromInbound:inboundCopy];
  }

  else
  {
    sharingConnection = [(DEDController *)self log];
    if (os_log_type_enabled(sharingConnection, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_tryPIN:forDevice:fromInbound:];
    }
  }
}

- (void)xpcInbound_successPINForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v5 transport] == 2)
  {
    objc_initWeak(&location, self);
    replyQueue = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__DEDController_xpcInbound_successPINForDevice___block_invoke;
    block[3] = &unk_278F65880;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    dispatch_async(replyQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(DEDController *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDController xpcInbound_successPINForDevice:];
    }
  }
}

void __48__DEDController_xpcInbound_successPINForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pairingDelegate];
  [v2 successPINForDevice:*(a1 + 32)];
}

- (void)sharingInbound_promptPINForDevice:(id)device fromInbound:(id)inbound
{
  deviceCopy = device;
  inboundCopy = inbound;
  v8 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v8 transport] == 3)
  {
    objc_initWeak(&location, self);
    replyQueue = [(DEDController *)self replyQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__DEDController_sharingInbound_promptPINForDevice_fromInbound___block_invoke;
    v11[3] = &unk_278F658A8;
    objc_copyWeak(&v14, &location);
    v12 = inboundCopy;
    v13 = v8;
    dispatch_async(replyQueue, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(DEDController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDController sharingInbound_promptPINForDevice:fromInbound:];
    }
  }
}

void __63__DEDController_sharingInbound_promptPINForDevice_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_promptPINForDevice:*(a1 + 40)];
}

- (void)sharingInbound_successPINForDevice:(id)device fromInbound:(id)inbound
{
  deviceCopy = device;
  inboundCopy = inbound;
  v8 = [(DEDController *)self _sharingDeviceForIncomingDevice:deviceCopy];
  if ([v8 transport] == 3)
  {
    objc_initWeak(&location, self);
    replyQueue = [(DEDController *)self replyQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__DEDController_sharingInbound_successPINForDevice_fromInbound___block_invoke;
    v11[3] = &unk_278F658A8;
    objc_copyWeak(&v14, &location);
    v12 = inboundCopy;
    v13 = v8;
    dispatch_async(replyQueue, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(DEDController *)self log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [DEDController sharingInbound_successPINForDevice:fromInbound:];
    }
  }
}

void __64__DEDController_sharingInbound_successPINForDevice_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_successPINForDevice:*(a1 + 40)];
}

- (void)idsInbound_devicesChanged:(id)changed completion:(id)completion
{
  changedCopy = changed;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DEDController_idsInbound_devicesChanged_completion___block_invoke;
  block[3] = &unk_278F659E8;
  block[4] = self;
  v12 = changedCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = changedCopy;
  dispatch_async(v8, block);
}

uint64_t __54__DEDController_idsInbound_devicesChanged_completion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v29 = *(a1 + 32);
  objc_sync_enter(v29);
  v30 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = [*(a1 + 32) devices];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v4)
  {
    v32 = *v39;
    obj = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        if ([v6 remoteTransport] == 4)
        {
          v8 = *(a1 + 40);
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_53;
          v37[3] = &unk_278F65858;
          v37[4] = v6;
          v9 = [v8 ded_findWithBlock:v37];
          if (v9)
          {
            v10 = [v6 name];
            v11 = [v9 name];
            v12 = [v10 isEqualToString:v11];

            if ((v12 & 1) == 0)
            {
              v13 = [*(a1 + 32) log];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = [v6 hashingKey];
                v15 = [v6 name];
                v16 = [v9 name];
                *buf = 138543875;
                v44 = v14;
                v45 = 2113;
                v46 = v15;
                v47 = 2113;
                v48 = v16;
                _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "idsInbound_devicesChanged: Device [%{public}@], change [%{private}@] -> [%{private}@]", buf, 0x20u);
              }

              v17 = [v9 name];
              [v6 setName:v17];
            }
          }

          else
          {
            v19 = [*(a1 + 32) log];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v6 hashingKey];
              *buf = 138543362;
              v44 = v20;
              _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_DEFAULT, "idsInbound_devicesChanged: Will remove device [%{public}@]", buf, 0xCu);
            }

            [v30 addObject:v6];
          }
        }

        else
        {
          v9 = [*(a1 + 32) log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v6 hashingKey];
            __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_cold_1(v18, v49, &v50, v9);
          }
        }

        objc_autoreleasePoolPop(v7);
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v4);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v30;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v22)
  {
    v23 = *v34;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v33 + 1) + 8 * j);
        v26 = [*(a1 + 32) devices];
        v27 = [v25 hashingKey];
        [v26 removeObjectForKey:v27];
      }

      v22 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v22);
  }

  objc_sync_exit(v29);
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [*(a1 + 32) address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)startBugSessionWithIdentifier:(id)identifier configuration:(id)configuration caller:(id)caller target:(id)target fromInbound:(id)inbound
{
  v154 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  callerCopy = caller;
  targetCopy = target;
  inboundCopy = inbound;
  objc_initWeak(&location, self);
  if (![(DEDController *)self induceTimeOutIfNeededAndReturnCanProceedWithDevice:targetCopy sessionId:identifierCopy])
  {
    goto LABEL_67;
  }

  logDeviceCounts = [(DEDController *)self logDeviceCounts];
  if (!targetCopy)
  {
    v25 = DEDSessionStartLog(logDeviceCounts);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
    }

    goto LABEL_12;
  }

  v17 = [(DEDController *)self _deviceForIncomingDevice:targetCopy needsReady:1];
  if (!v17)
  {
    v25 = DEDSessionStartLog(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      hashingKey = [targetCopy hashingKey];
      [DEDController startBugSessionWithIdentifier:hashingKey configuration:buf caller:v25 target:? fromInbound:?];
    }

LABEL_12:

    v28 = DEDSessionStartLog(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
    }

    replyQueue = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke;
    block[3] = &unk_278F658A8;
    objc_copyWeak(&v143, &location);
    v141 = identifierCopy;
    v142 = 0;
    dispatch_async(replyQueue, block);

    objc_destroyWeak(&v143);
    goto LABEL_67;
  }

  requestedCapabilities = [configurationCopy requestedCapabilities];
  v19 = [targetCopy hasCapabilities:requestedCapabilities];

  if (v19)
  {
    v21 = DEDSessionStartLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [targetCopy identifier];
      transport = [targetCopy transport];
      if (transport > 4)
      {
        v24 = "Unknown";
      }

      else
      {
        v24 = off_278F65C08[transport];
      }

      *buf = 138543874;
      *&buf[4] = identifier;
      *&buf[12] = 2082;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v152 = identifierCopy;
      _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "inTarget device: [%{public}@] - [%{public}s] - [%{public}@]", buf, 0x20u);
    }

    v34 = DEDSessionStartLog(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v17 identifier];
      transport2 = [v17 transport];
      if (transport2 > 4)
      {
        v37 = "Unknown";
      }

      else
      {
        v37 = off_278F65C08[transport2];
      }

      *buf = 138543874;
      *&buf[4] = identifier2;
      *&buf[12] = 2082;
      *&buf[14] = v37;
      *&buf[22] = 2114;
      v152 = identifierCopy;
      _os_log_impl(&dword_248AD7000, v34, OS_LOG_TYPE_DEFAULT, "target device: [%{public}@] - [%{public}s] - [%{public}@]", buf, 0x20u);
    }

    v39 = DEDSessionStartLog(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      name = [callerCopy name];
      name2 = [v17 name];
      address = [v17 address];
      *buf = 136316162;
      *&buf[4] = "[DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:]";
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      *&buf[22] = 2112;
      v152 = name;
      *v153 = 2112;
      *&v153[2] = name2;
      *&v153[10] = 2112;
      *&v153[12] = address;
      _os_log_debug_impl(&dword_248AD7000, v39, OS_LOG_TYPE_DEBUG, "%s %@:%@ -> %@ (%@)", buf, 0x34u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v152 = __Block_byref_object_copy__0;
    *v153 = __Block_byref_object_dispose__0;
    *&v153[8] = 0;
    sessions = [(DEDController *)self sessions];
    v41 = [sessions objectForKeyedSubscript:identifierCopy];

    if (v41)
    {
      v43 = DEDSessionStartLog(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v145 = 138543362;
        v146 = identifierCopy;
        _os_log_impl(&dword_248AD7000, v43, OS_LOG_TYPE_DEFAULT, "found existing session [%{public}@]", v145, 0xCu);
      }

      sessions2 = [(DEDController *)self sessions];
      v45 = [sessions2 objectForKeyedSubscript:identifierCopy];
      v46 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v45;

      if ([*(*&buf[8] + 40) hasCapability:@"mutable-bug-session"])
      {
        [*(*&buf[8] + 40) setConfig:configurationCopy];
      }
    }

    else
    {
      v47 = DEDSessionStartLog(v42);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v145 = 138543362;
        v146 = identifierCopy;
        _os_log_impl(&dword_248AD7000, v47, OS_LOG_TYPE_DEFAULT, "creating new session [%{public}@]", v145, 0xCu);
      }

      v48 = [[DEDBugSession alloc] initWithConfiguration:configurationCopy];
      v49 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v48;

      [*(*&buf[8] + 40) setIdentifier:identifierCopy];
      identifier3 = [v17 identifier];
      [*(*&buf[8] + 40) setDeviceIdentifier:identifier3];
    }

    bugSessionCallbackQueue = [(DEDController *)self bugSessionCallbackQueue];
    [*(*&buf[8] + 40) setCallbackQueue:bugSessionCallbackQueue];

    [*(*&buf[8] + 40) didStart];
    v149[0] = @"DEDExtensionIdentifierManager";
    identifierManager = [*(*&buf[8] + 40) identifierManager];
    jSONRepresentation = [identifierManager JSONRepresentation];
    v149[1] = @"identifier";
    v150[0] = jSONRepresentation;
    v150[1] = identifierCopy;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];

    v56 = DEDSessionStartLog(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [*(*&buf[8] + 40) identifier];
      *v145 = 138543618;
      v146 = identifier4;
      v147 = 2114;
      v148 = v54;
      _os_log_impl(&dword_248AD7000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting with sessionSyncData [%{public}@]", v145, 0x16u);
    }

    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78;
    v127[3] = &unk_278F65A38;
    v134 = buf;
    v128 = @"DEDExtensionIdentifierManager";
    v58 = identifierCopy;
    v129 = v58;
    objc_copyWeak(&v135, &location);
    v59 = callerCopy;
    v130 = v59;
    v97 = v17;
    v131 = v97;
    v93 = inboundCopy;
    v132 = v93;
    v95 = v54;
    v133 = v95;
    v96 = MEMORY[0x24C1E5320](v127);
    [(DEDController *)self addDidStartSessionCompletion:v96 withIdentifier:v58];
    if ([v59 transport] == 1)
    {
      xpcConnector = objc_alloc_init(DEDLocalTransport);
      clientDelegate = [(DEDController *)self clientDelegate];
      [(DEDLocalTransport *)xpcConnector setClientDelegate:clientDelegate];

      [*(*&buf[8] + 40) setClient:xpcConnector];
    }

    else if ([v59 transport] == 2)
    {
      v62 = [DEDXPCOutbound alloc];
      xpcConnector = [(DEDController *)self xpcConnector];
      v63 = [(DEDLocalTransport *)xpcConnector clientXPCInterfaceFromInbound:v93];
      v64 = [(DEDXPCOutbound *)v62 initWithRemoteObject:v63];
      [*(*&buf[8] + 40) setClient:v64];
    }

    else if ([v59 transport] == 4)
    {
      xpcConnector = [v59 address];
      idsConnection = [(DEDController *)self idsConnection];
      v66 = [DEDIDSOutbound outboundWithSessionID:v58 withDeviceAtAddress:xpcConnector connection:idsConnection];
      [*(*&buf[8] + 40) setClient:v66];
    }

    else if ([v59 transport] == 3)
    {
      sharingConnection = [(DEDController *)self sharingConnection];
      v68 = [sharingConnection sharingOutboundForBugSessionIdentifier:v58 device:v59 fromInbound:v93];
      [*(*&buf[8] + 40) setClient:v68];

      client = [*(*&buf[8] + 40) client];
      v70 = client == 0;

      if (!v70)
      {
LABEL_50:
        v94 = +[DEDDevice currentDevice];
        if ([v97 transport] == 1)
        {
          v72 = objc_alloc_init(DEDLocalTransport);
          workerDelegate = [(DEDController *)self workerDelegate];
          [(DEDLocalTransport *)v72 setWorkerDelegate:workerDelegate];

          [*(*&buf[8] + 40) setWorker:v72];
          replyQueue2 = [(DEDController *)self replyQueue];
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84;
          v123[3] = &unk_278F658A8;
          objc_copyWeak(&v126, &location);
          v124 = v58;
          v125 = v95;
          dispatch_async(replyQueue2, v123);

          objc_destroyWeak(&v126);
        }

        else if ([v97 transport] == 2)
        {
          replyQueue3 = [(DEDController *)self replyQueue];
          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_85;
          v116[3] = &unk_278F65A60;
          objc_copyWeak(&v122, &location);
          v121 = buf;
          v117 = v58;
          v118 = configurationCopy;
          v119 = v94;
          v120 = v97;
          dispatch_async(replyQueue3, v116);

          objc_destroyWeak(&v122);
        }

        else if ([v97 transport] == 4)
        {
          address2 = [v97 address];
          idsConnection2 = [(DEDController *)self idsConnection];
          v78 = [DEDIDSOutbound outboundWithSessionID:v58 withDeviceAtAddress:address2 connection:idsConnection2];
          [*(*&buf[8] + 40) setWorker:v78];

          replyQueue4 = [(DEDController *)self replyQueue];
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2_86;
          v110[3] = &unk_278F65A88;
          objc_copyWeak(&v115, &location);
          v111 = v58;
          v112 = configurationCopy;
          v113 = v94;
          v114 = v97;
          dispatch_async(replyQueue4, v110);

          objc_destroyWeak(&v115);
        }

        else if ([v97 transport] == 3)
        {
          sharingConnection2 = [(DEDController *)self sharingConnection];
          v92 = [sharingConnection2 sharingOutboundForBugSessionIdentifier:v58 device:v97 fromInbound:v93];

          if (v92)
          {
            [*(*&buf[8] + 40) setWorker:?];
            replyQueue5 = [(DEDController *)self replyQueue];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3_87;
            v103[3] = &unk_278F65AB0;
            v83 = &v109;
            objc_copyWeak(&v109, &location);
            v104 = v58;
            v105 = configurationCopy;
            v106 = v94;
            v107 = v97;
            v108 = v93;
            dispatch_async(replyQueue5, v103);

            v84 = &v104;
            v85 = &v105;
            replyQueue6 = v106;
          }

          else
          {
            v91 = DEDSessionStartLog(v81);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              *v145 = 0;
              _os_log_impl(&dword_248AD7000, v91, OS_LOG_TYPE_DEFAULT, "Bug session start failed. Could not find sharing outbound on worker", v145, 2u);
            }

            replyQueue6 = [(DEDController *)self replyQueue];
            v99[0] = MEMORY[0x277D85DD0];
            v99[1] = 3221225472;
            v99[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_88;
            v99[3] = &unk_278F658A8;
            v83 = &v102;
            objc_copyWeak(&v102, &location);
            v84 = &v100;
            v100 = v58;
            v85 = &v101;
            v101 = v97;
            dispatch_async(replyQueue6, v99);
          }

          objc_destroyWeak(v83);
        }

        else
        {
          v87 = [(DEDController *)self log];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
          }
        }

        objc_destroyWeak(&v135);
        _Block_object_dispose(buf, 8);

        goto LABEL_67;
      }

      xpcConnector = DEDSessionStartLog(v71);
      if (os_log_type_enabled(&xpcConnector->super, OS_LOG_TYPE_DEFAULT))
      {
        *v145 = 0;
        _os_log_impl(&dword_248AD7000, &xpcConnector->super, OS_LOG_TYPE_DEFAULT, "Bug session start failed. Could not find sharing outbound on client", v145, 2u);
      }
    }

    else
    {
      xpcConnector = [(DEDController *)self log];
      if (os_log_type_enabled(&xpcConnector->super, OS_LOG_TYPE_ERROR))
      {
        [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
      }
    }

    goto LABEL_50;
  }

  v30 = DEDSessionStartLog(v20);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [DEDController startBugSessionWithIdentifier:configuration:caller:target:fromInbound:];
  }

  replyQueue7 = [(DEDController *)self replyQueue];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_63;
  v136[3] = &unk_278F658A8;
  objc_copyWeak(&v139, &location);
  v137 = identifierCopy;
  v138 = v17;
  v32 = v17;
  dispatch_async(replyQueue7, v136);

  objc_destroyWeak(&v139);
LABEL_67:
  objc_destroyWeak(&location);
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = +[DEDConfiguration sharedInstance];
    v7 = [v6 errorDomain];
    v12 = [v5 errorWithDomain:v7 code:102 userInfo:&unk_285B89D90];

    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    (v9)[2](v9, 0, v12);

    v10 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v10, [*(a1 + 40) isRemote], 0, 102);
  }

  else
  {
    v11 = DEDSessionStartLog(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1();
    }
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = +[DEDConfiguration sharedInstance];
    v7 = [v6 errorDomain];
    v12 = [v5 errorWithDomain:v7 code:103 userInfo:&unk_285B89DB8];

    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    (v9)[2](v9, 0, v12);

    v10 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v10, [*(a1 + 40) isRemote], 0, 103);
  }

  else
  {
    v11 = DEDSessionStartLog(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1();
    }
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DEDSessionStartLog([DEDAnalytics didCreateBugSessionForApp:0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) identifier];
    *buf = 138543618;
    v47 = v5;
    v48 = 2114;
    v49 = v3;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] in DEDDidStartSessionCompletion with sessionInfo [%{public}@]", buf, 0x16u);
  }

  v6 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v7 = DEDSessionStartLog(v6);
  v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v47 = v9;
      _os_log_impl(&dword_248AD7000, &v7->super, OS_LOG_TYPE_DEFAULT, "Synchronizing extension identifiers [%{public}@]", buf, 0xCu);
    }

    v7 = [[DEDExtensionIdentifierManager alloc] initWithJSONString:v6];
    [*(*(*(a1 + 80) + 8) + 40) setIdentifierManager:v7];
  }

  else if (v8)
  {
    v10 = *(a1 + 40);
    *buf = 138543362;
    v47 = v10;
    _os_log_impl(&dword_248AD7000, &v7->super, OS_LOG_TYPE_DEFAULT, "DEDExtensionIdentifierManager not found in info dictionary for [%{public}@]. Cannot synchronize extension identifiers", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained insertNewSession:*(*(*(a1 + 80) + 8) + 40)];

  v12 = objc_loadWeakRetained((a1 + 88));
  v13 = [v12 isDaemon];

  if (v13)
  {
    [*(*(*(a1 + 80) + 8) + 40) save];
  }

  if ([*(a1 + 48) transport] == 1)
  {
    v14 = objc_loadWeakRetained((a1 + 88));
    v15 = [v14 replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_80;
    block[3] = &unk_278F65A10;
    objc_copyWeak(&v45, (a1 + 88));
    v16 = *(a1 + 40);
    v17 = *(a1 + 80);
    v42 = v16;
    v44 = v17;
    v43 = *(a1 + 56);
    dispatch_async(v15, block);

    v18 = &v45;
LABEL_20:
    objc_destroyWeak(v18);
    goto LABEL_21;
  }

  if ([*(a1 + 48) transport] == 2)
  {
    v19 = objc_loadWeakRetained((a1 + 88));
    v20 = [v19 replyQueue];
    v21 = v37;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_81;
    v37[3] = &unk_278F658A8;
    objc_copyWeak(&v40, (a1 + 88));
    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    dispatch_async(v20, v37);

    v22 = v38;
LABEL_19:

    v18 = (v21 + 6);
    goto LABEL_20;
  }

  if ([*(a1 + 48) transport] == 4)
  {
    v23 = objc_loadWeakRetained((a1 + 88));
    v24 = [v23 replyQueue];
    v21 = v33;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2;
    v33[3] = &unk_278F658A8;
    objc_copyWeak(&v36, (a1 + 88));
    v34 = *(a1 + 72);
    v35 = *(a1 + 48);
    dispatch_async(v24, v33);

    v22 = v34;
    goto LABEL_19;
  }

  v25 = [*(a1 + 48) transport];
  if (v25 == 3)
  {
    v26 = objc_loadWeakRetained((a1 + 88));
    v27 = [v26 replyQueue];
    v21 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3;
    v29[3] = &unk_278F658A8;
    objc_copyWeak(&v32, (a1 + 88));
    v30 = *(a1 + 72);
    v31 = *(a1 + 48);
    dispatch_async(v27, v29);

    v22 = v30;
    goto LABEL_19;
  }

  v28 = DEDSessionStartLog(v25);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_78_cold_1();
  }

LABEL_21:
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_80(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    v6 = [v5 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    v6[2](v6, *(*(*(a1 + 48) + 8) + 40), 0);

    v9 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v9, [*(a1 + 40) isRemote], 1, 0);
  }

  else
  {
    v7 = DEDSessionStartLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(*(a1 + 48) + 8) + 40) identifier];
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Session start returned but we have no completion block", buf, 0xCu);
    }
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained xpcConnector];
  v3 = [v2 clientXPCInterfaceFromInbound:*(a1 + 32)];
  [v3 xpc_didStartBugSessionWithInfo:*(a1 + 40)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained idsConnection];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) address];
  [v2 ids_didStartBugSessionWithInfo:v3 forID:v4];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained sharingConnection];
  [v2 sharing_didStartBugSessionWithInfo:*(a1 + 32) forCaller:*(a1 + 40)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained popDidStartSessionCompletionWithIdentifier:*(a1 + 32)];

  v5 = DEDSessionStartLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Replying with sessionSyncData [%{public}@]", &v9, 0xCu);
  }

  if (v3)
  {
    v3[2](v3, *(a1 + 40));
  }

  else
  {
    v8 = DEDSessionStartLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_84_cold_1();
    }
  }
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained xpcConnector];
  v5 = [v3 diagnosticextensionsdXPCInterface];

  v4 = [[DEDXPCOutbound alloc] initWithRemoteObject:v5];
  [*(*(*(a1 + 64) + 8) + 40) setWorker:v4];
  [v5 xpc_startBugSessionWithIdentifier:*(a1 + 32) configuration:*(a1 + 40) caller:*(a1 + 48) target:*(a1 + 56)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_2_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained idsConnection];
  [v2 ids_startBugSessionWithIdentifier:*(a1 + 32) configuration:*(a1 + 40) caller:*(a1 + 48) target:*(a1 + 56)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_3_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained sharingConnection];
  [v2 sharing_startBugSessionWithIdentifier:*(a1 + 32) configuration:*(a1 + 40) caller:*(a1 + 48) target:*(a1 + 56) fromInbound:*(a1 + 64)];
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = [v5 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    v7 = MEMORY[0x277CCA9B8];
    v8 = +[DEDConfiguration sharedInstance];
    v9 = [v8 errorDomain];
    v10 = [v7 errorWithDomain:v9 code:101 userInfo:0];
    (v6)[2](v6, 0, v10);

    v12 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v12, [*(a1 + 40) isRemote], 0, 101);
  }

  else
  {
    v11 = DEDSessionStartLog(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Session start failed, no completion block", buf, 2u);
    }
  }
}

- (void)didStartBugSessionWithInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"identifier"];
  if (v5)
  {
    objc_initWeak(&location, self);
    replyQueue = [(DEDController *)self replyQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__DEDController_didStartBugSessionWithInfo___block_invoke;
    v8[3] = &unk_278F658A8;
    objc_copyWeak(&v11, &location);
    v9 = v5;
    v10 = infoCopy;
    dispatch_async(replyQueue, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = DEDSessionStartLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [DEDController didStartBugSessionWithInfo:];
    }
  }
}

void __44__DEDController_didStartBugSessionWithInfo___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained popDidStartSessionCompletionWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v3[2](v3, *(a1 + 40));
  }

  else
  {
    v5 = DEDSessionStartLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "started session, no completion block registered for session [%{public}@]", &v7, 0xCu);
    }
  }
}

- (void)didFinishSessionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  recentlyFinishedSessions = [(DEDController *)self recentlyFinishedSessions];

  if (!recentlyFinishedSessions)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:5];
    [(DEDController *)self setRecentlyFinishedSessions:v6];
  }

  v7 = [(DEDController *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Did finish session [%{public}@]", &v9, 0xCu);
  }

  recentlyFinishedSessions2 = [(DEDController *)self recentlyFinishedSessions];
  [recentlyFinishedSessions2 addObject:identifierCopy];
}

- (BOOL)induceTimeOutIfNeededAndReturnCanProceedWithDevice:(id)device sessionId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  idCopy = id;
  if (+[DEDUtils isInternalInstall](DEDUtils, "isInternalInstall") && (+[DEDPersistence sharedInstance](DEDPersistence, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 canProceedWithDevice:deviceCopy], v8, (v9 & 1) == 0))
  {
    v11 = [(DEDController *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      hashingKey = [deviceCopy hashingKey];
      *buf = 138543362;
      v20 = hashingKey;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Inducing device timeout for device [%{public}@]", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    replyQueue = [(DEDController *)self replyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__DEDController_induceTimeOutIfNeededAndReturnCanProceedWithDevice_sessionId___block_invoke;
    block[3] = &unk_278F658A8;
    objc_copyWeak(&v18, buf);
    v16 = idCopy;
    v17 = deviceCopy;
    dispatch_async(replyQueue, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void __78__DEDController_induceTimeOutIfNeededAndReturnCanProceedWithDevice_sessionId___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v3)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = +[DEDConfiguration sharedInstance];
    v7 = [v6 errorDomain];
    v16 = @"Error reason";
    v8 = MEMORY[0x277CCACA8];
    v9 = [*(a1 + 40) hashingKey];
    v10 = [v8 stringWithFormat:@"induced timeout for device [%@]", v9];
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v5 errorWithDomain:v7 code:100 userInfo:v11];

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
    (v14)[2](v14, 0, v12);

    v15 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v15, [*(a1 + 40) isRemote], 0, 100);
  }

  else
  {
    v12 = DEDSessionStartLog(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1();
    }
  }
}

- (void)upgradeToClassCDataProtectionIfNeeded
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"DEDUpgradedToClassC"];

  if (v3)
  {
    v5 = DEDSessionCleanupLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [DEDController upgradeToClassCDataProtectionIfNeeded];
    }
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = +[DEDConfiguration sharedInstance];
    identifier = [v7 identifier];
    v12 = [v6 stringWithFormat:@"%@.c-data-class-upgrade", identifier];

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = v12;
    v11 = dispatch_queue_create([v12 UTF8String], v9);
    dispatch_async(v11, &__block_literal_global_102);
  }
}

void __54__DEDController_upgradeToClassCDataProtectionIfNeeded__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = DEDSessionCleanupLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v1, OS_LOG_TYPE_DEFAULT, "upgradeToClassCDataProtectionIfNeeded start", buf, 2u);
  }

  v2 = +[DEDConfiguration sharedInstance];
  v3 = [v2 dedDirectory];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v3;
  obj = [MEMORY[0x277D051E0] findAllItems:v3 includeDirs:1];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v7 = *MEMORY[0x277CBE7F8];
    v8 = *MEMORY[0x277CBE7F0];
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = DEDSessionCleanupLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v10 lastPathComponent];
          *buf = 138543362;
          v32 = v13;
          _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "Upgrading: [%{public}@]", buf, 0xCu);
        }

        v29 = v7;
        v30 = v8;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v23 = 0;
        [v10 setResourceValues:v14 error:&v23];
        v15 = v23;

        if (v15)
        {
          v17 = DEDSessionCleanupLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __54__DEDController_upgradeToClassCDataProtectionIfNeeded__block_invoke_cold_1(v28, v15);
          }
        }

        objc_autoreleasePoolPop(v11);
        v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v18 setBool:1 forKey:@"DEDUpgradedToClassC"];

        v20 = DEDSessionCleanupLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "upgradeToClassCDataProtectionIfNeeded end", buf, 2u);
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v5);
  }
}

- (void)purgeStaleSessions:(id)sessions completion:(id)completion
{
  sessionsCopy = sessions;
  completionCopy = completion;
  v7 = MEMORY[0x277CCACA8];
  v8 = +[DEDConfiguration sharedInstance];
  identifier = [v8 identifier];
  v10 = [v7 stringWithFormat:@"%@.purge", identifier];

  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v12 = dispatch_queue_create([v10 UTF8String], v11);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DEDController_purgeStaleSessions_completion___block_invoke;
  block[3] = &unk_278F65B20;
  v16 = sessionsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = sessionsCopy;
  dispatch_async(v12, block);
}

void __47__DEDController_purgeStaleSessions_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v3 = +[DEDConfiguration sharedInstance];
  v4 = [v3 identifier];
  v5 = [v4 stringByAppendingString:@"-cleanup"];

  [v5 UTF8String];
  v6 = os_transaction_create();
  v7 = +[DEDActivity sharedInstance];
  v8 = [v7 newCleanupActivity];

  v10 = DEDSessionCleanupLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) count];
    *buf = 134217984;
    v20 = v11;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "[%lu] persisted sessions", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__DEDController_purgeStaleSessions_completion___block_invoke_112;
  v14[3] = &unk_278F65AF8;
  v15 = v6;
  v16 = *(a1 + 32);
  v17 = v2;
  v18 = *(a1 + 40);
  v12 = v2;
  v13 = v6;
  os_activity_apply(v8, v14);
}

void __47__DEDController_purgeStaleSessions_completion___block_invoke_112(id *a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v1 = DEDSessionCleanupLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v1, OS_LOG_TYPE_DEFAULT, "purge stale sessions begin", buf, 2u);
  }

  v2 = +[DEDConfiguration sharedInstance];
  v3 = [v2 dedDirectory];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v53 = [MEMORY[0x277D051E0] getDirectorySize:v3];
    v55 = v3;
    v8 = [MEMORY[0x277D051E0] lsDir:v3];
    v9 = [v8 ded_mapWithBlock:&__block_literal_global_116];

    v11 = DEDSessionCleanupLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 count];
      *buf = 134217984;
      v71 = v12;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Found [%lu] session directories", buf, 0xCu);
    }

    v54 = v9;
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v9];
    v57 = objc_alloc_init(DEDAttachmentHandler);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v14 = a1[5];
    v15 = [v14 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v67;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v67 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v66 + 1) + 8 * i);
          v20 = [v19 identifier];
          v21 = [(DEDAttachmentHandler *)v57 directoryForBugSessionIdentifier:v20];

          [v13 removeObject:v21];
          v22 = [v19 state];
          v23 = DEDSessionCleanupLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v19 identifier];
            v25 = v24;
            v26 = "Unknown";
            if ((v22 + 1) <= 9)
            {
              v26 = off_278F65B60[v22 + 1];
            }

            *buf = 138543618;
            v71 = v24;
            v72 = 2082;
            v73 = v26;
            _os_log_impl(&dword_248AD7000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] state: [%{public}s]", buf, 0x16u);
          }

          if (v22 == -1)
          {
            [DEDAnalytics didCompleteBugSessionWithState:2];
            [v19 cleanup];
            [a1[6] addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v16);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v27 = v13;
    v28 = [v27 countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v63;
      do
      {
        v31 = 0;
        do
        {
          if (*v63 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v62 + 1) + 8 * v31);
          v33 = DEDSessionCleanupLog(v28);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = [v32 lastPathComponent];
            *buf = 138543362;
            v71 = v34;
            _os_log_impl(&dword_248AD7000, v33, OS_LOG_TYPE_INFO, "will remove orphan session directory [%{public}@]", buf, 0xCu);
          }

          v35 = [MEMORY[0x277CCAA00] defaultManager];
          v61 = 0;
          [v35 removeItemAtURL:v32 error:&v61];
          v36 = v61;

          v38 = DEDSessionCleanupLog(v37);
          v39 = v38;
          if (v36)
          {
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              __47__DEDController_purgeStaleSessions_completion___block_invoke_112_cold_1(v76, v32);
            }
          }

          else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v32 lastPathComponent];
            *buf = 138543362;
            v71 = v40;
            _os_log_impl(&dword_248AD7000, v39, OS_LOG_TYPE_DEFAULT, "did remove orphan session directory [%{public}@]", buf, 0xCu);
          }

          ++v31;
        }

        while (v29 != v31);
        v28 = [v27 countByEnumeratingWithState:&v62 objects:v77 count:16];
        v29 = v28;
      }

      while (v28);
    }

    v3 = v55;
    v41 = [MEMORY[0x277D051E0] getDirectorySize:v55];
    v42 = v53 - v41;
    if (v53 != v41)
    {
      v43 = v41;
      v44 = DEDSessionCleanupLog(v41);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [MEMORY[0x277CCA8E8] stringFromByteCount:v53 countStyle:0];
        v46 = [MEMORY[0x277CCA8E8] stringFromByteCount:v43 countStyle:0];
        v47 = [MEMORY[0x277CCA8E8] stringFromByteCount:v42 countStyle:0];
        *buf = 138543874;
        v71 = v45;
        v72 = 2114;
        v73 = v46;
        v74 = 2114;
        v75 = v47;
        _os_log_impl(&dword_248AD7000, v44, OS_LOG_TYPE_DEFAULT, "ded dir size before cleanup [%{public}@] after [%{public}@] diff [%{public}@]", buf, 0x20u);
      }

      v49 = DEDSessionCleanupLog(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [a1[6] count];
        v51 = [v27 count];
        *buf = 134218240;
        v71 = v50;
        v72 = 2048;
        v73 = v51;
        _os_log_impl(&dword_248AD7000, v49, OS_LOG_TYPE_DEFAULT, "Removed [%lu] sessions [%lu] orphan directories", buf, 0x16u);
      }
    }
  }

  v52 = DEDSessionCleanupLog(v7);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v52, OS_LOG_TYPE_DEFAULT, "purge stale sessions end", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DEDController_purgeStaleSessions_completion___block_invoke_119;
  block[3] = &unk_278F653F8;
  v60 = a1[7];
  v59 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)addDevice:(id)device
{
  v104 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  platform = [deviceCopy platform];
  v6 = [platform isEqualToString:@"xros"];

  if (v6)
  {
    [deviceCopy setPlatform:@"visionos"];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([deviceCopy status] == 1)
  {
    v8 = [(DEDController *)selfCopy log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [deviceCopy identifier];
      idsIdentifier = [deviceCopy idsIdentifier];
      address = [deviceCopy address];
      model = [deviceCopy model];
      name = [deviceCopy name];
      platform2 = [deviceCopy platform];
      deviceType = [deviceCopy deviceType];
      if ((deviceType - 1) > 6)
      {
        v10 = "Unknown";
      }

      else
      {
        v10 = off_278F65BB0[deviceType - 1];
      }

      v56 = v10;
      build = [deviceCopy build];
      remoteTransport = [deviceCopy remoteTransport];
      if (remoteTransport > 4)
      {
        v22 = "Unknown";
      }

      else
      {
        v22 = off_278F65C08[remoteTransport];
      }

      v55 = v22;
      transport = [deviceCopy transport];
      if (transport > 4)
      {
        v26 = "Unknown";
      }

      else
      {
        v26 = off_278F65C08[transport];
      }

      v54 = v26;
      status = [deviceCopy status];
      if ((status - 1) > 3)
      {
        v28 = "Unknown";
      }

      else
      {
        v28 = off_278F65BE8[status - 1];
      }

      v53 = v28;
      deviceClass = [deviceCopy deviceClass];
      productType = [deviceCopy productType];
      color = [deviceCopy color];
      enclosureColor = [deviceCopy enclosureColor];
      homeButtonType = [deviceCopy homeButtonType];
      isHomeKitResident = [deviceCopy isHomeKitResident];
      mediaSystemRole = [deviceCopy mediaSystemRole];
      capabilities = [deviceCopy capabilities];
      *buf = 138547971;
      *v71 = identifier;
      *&v71[8] = 2114;
      *&v71[10] = idsIdentifier;
      *&v71[18] = 2113;
      *&v71[20] = address;
      v72 = 2114;
      v73 = model;
      v74 = 2113;
      v75 = name;
      v76 = 2114;
      v77 = platform2;
      v78 = 2082;
      v79 = v56;
      v80 = 2114;
      v81 = build;
      v82 = 2082;
      v83 = v55;
      v84 = 2082;
      v85 = v54;
      v86 = 2082;
      v87 = v53;
      v88 = 2114;
      v89 = deviceClass;
      v90 = 2114;
      v91 = productType;
      v92 = 2114;
      v93 = color;
      v94 = 2114;
      v95 = enclosureColor;
      v96 = 2048;
      v97 = homeButtonType;
      v98 = 1024;
      v99 = isHomeKitResident;
      v100 = 2048;
      v101 = mediaSystemRole;
      v102 = 2114;
      v103 = capabilities;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Device ready:\nidentifier: %{public}@\nidsIdentifier: %{public}@\naddress: %{private}@\nmodel: %{public}@\nname: %{private}@\nplatform: %{public}@\ndeviceType: %{public}s\nbuild: %{public}@\nremoteTransport: %{public}s\ntransport: %{public}s\nstatus: %{public}s\ndeviceClass: %{public}@\nproductType: %{public}@\ncolor: %{public}@\nenclosureColor: %{public}@\nhomeButtonType: %li\nisHomeKitResident: %d\nmediaSystemRole: %li\ncapabilities: %{public}@\n", buf, 0xBCu);
    }
  }

  else
  {
    v8 = [(DEDController *)selfCopy log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      name2 = [deviceCopy name];
      deviceType2 = [deviceCopy deviceType];
      if ((deviceType2 - 1) > 6)
      {
        v12 = "Unknown";
      }

      else
      {
        v12 = off_278F65BB0[deviceType2 - 1];
      }

      v63 = v12;
      build2 = [deviceCopy build];
      productType2 = [deviceCopy productType];
      v14 = [deviceCopy status] - 1;
      if (v14 > 3)
      {
        v15 = "Unknown";
      }

      else
      {
        v15 = off_278F65BE8[v14];
      }

      transport2 = [deviceCopy transport];
      if (transport2 > 4)
      {
        v17 = "Unknown";
      }

      else
      {
        v17 = off_278F65C08[transport2];
      }

      publicLogSafeIdentifier = [deviceCopy publicLogSafeIdentifier];
      remoteTransport2 = [deviceCopy remoteTransport];
      if (remoteTransport2 > 4)
      {
        v20 = "Unknown";
      }

      else
      {
        v20 = off_278F65C08[remoteTransport2];
      }

      address2 = [deviceCopy address];
      idsIdentifier2 = [deviceCopy idsIdentifier];
      *buf = 138480131;
      *v71 = name2;
      *&v71[8] = 2082;
      *&v71[10] = v63;
      *&v71[18] = 2114;
      *&v71[20] = build2;
      v72 = 2114;
      v73 = productType2;
      v74 = 2082;
      v75 = v15;
      v76 = 2082;
      v77 = v17;
      v78 = 2114;
      v79 = publicLogSafeIdentifier;
      v80 = 2082;
      v81 = v20;
      v82 = 2113;
      v83 = address2;
      v84 = 2114;
      v85 = idsIdentifier2;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_INFO, "Will try to add device:\n%{private}@ - %{public}s %{public}@ (%{public}@) -- %{public}s \n%{public}s (%{public}@) \n%{public}s Remote: (%{private}@ - %{public}@)", buf, 0x66u);
    }
  }

  hashingKeyForTempDevice = [deviceCopy hashingKeyForTempDevice];
  devices = [(DEDController *)selfCopy devices];
  v38 = [devices objectForKeyedSubscript:hashingKeyForTempDevice];

  if (v38)
  {
    v39 = [(DEDController *)selfCopy log];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      publicLogSafeIdentifier2 = [v38 publicLogSafeIdentifier];
      *buf = 138543619;
      *v71 = publicLogSafeIdentifier2;
      *&v71[8] = 2113;
      *&v71[10] = hashingKeyForTempDevice;
      _os_log_impl(&dword_248AD7000, v39, OS_LOG_TYPE_INFO, "found temp device [%{public}@] for key [%{private}@]", buf, 0x16u);
    }

    devices2 = [(DEDController *)selfCopy devices];
    [devices2 removeObjectForKey:hashingKeyForTempDevice];
  }

  if ([deviceCopy isTemporaryDevice])
  {
    devices3 = [(DEDController *)selfCopy devices];
    allValues = [devices3 allValues];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __27__DEDController_addDevice___block_invoke;
    v68[3] = &unk_278F65858;
    v69 = deviceCopy;
    v44 = [allValues ded_findWithBlock:v68];
  }

  else
  {
    v44 = 0;
  }

  hashingKey = [deviceCopy hashingKey];
  if (v44)
  {
    v46 = [(DEDController *)selfCopy log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      transport3 = [deviceCopy transport];
      publicLogSafeIdentifier3 = [deviceCopy publicLogSafeIdentifier];
      v49 = [v44 description];
      *buf = 67109634;
      *v71 = transport3;
      *&v71[4] = 2114;
      *&v71[6] = publicLogSafeIdentifier3;
      *&v71[14] = 2114;
      *&v71[16] = v49;
      _os_log_impl(&dword_248AD7000, v46, OS_LOG_TYPE_INFO, "Not adding temp device [%i-%{public}@], already have [%{public}@]", buf, 0x1Cu);
    }
  }

  else
  {
    devices4 = [(DEDController *)selfCopy devices];
    [devices4 setObject:deviceCopy forKeyedSubscript:hashingKey];

    v46 = [(DEDController *)selfCopy log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      transport4 = [deviceCopy transport];
      publicLogSafeIdentifier4 = [deviceCopy publicLogSafeIdentifier];
      *buf = 67109378;
      *v71 = transport4;
      *&v71[4] = 2114;
      *&v71[6] = publicLogSafeIdentifier4;
      _os_log_impl(&dword_248AD7000, v46, OS_LOG_TYPE_DEFAULT, "Did add device [%i-%{public}@]", buf, 0x12u);
    }
  }

  [(DEDController *)selfCopy logDeviceCounts];
  objc_sync_exit(selfCopy);
}

uint64_t __27__DEDController_addDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteTransport];
  if (v4 == [*(a1 + 32) remoteTransport])
  {
    v5 = [v3 address];
    v6 = [*(a1 + 32) address];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)logDeviceCounts
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devices = [(DEDController *)selfCopy devices];
  allValues = [devices allValues];

  objc_sync_exit(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = allValues;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = [v5 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v5);
        }

        status = [*(*(&v15 + 1) + 8 * v12) status];
        if (status > 2)
        {
          if (status == 3)
          {
            ++v7;
          }

          else if (status == 4)
          {
            ++v6;
          }
        }

        else if (status == 1)
        {
          ++v9;
        }

        else if (status == 2)
        {
          ++v8;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v5 countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = [(DEDController *)selfCopy log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v20 = v9;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Devices: ready [%lu] needs pairing [%lu] waiting [%lu] not available [%lu]", buf, 0x2Au);
  }
}

- (id)idsConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DEDController_idsConnection__block_invoke;
  block[3] = &unk_278F653D0;
  block[4] = self;
  if (idsConnection_onceToken != -1)
  {
    dispatch_once(&idsConnection_onceToken, block);
  }

  return idsConnection__idsConnection;
}

void __30__DEDController_idsConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Creating IDS connection", v5, 2u);
  }

  v3 = [[DEDIDSConnection alloc] initWithController:*(a1 + 32)];
  v4 = idsConnection__idsConnection;
  idsConnection__idsConnection = v3;
}

- (id)sharingConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DEDController_sharingConnection__block_invoke;
  block[3] = &unk_278F653D0;
  block[4] = self;
  if (sharingConnection_onceToken != -1)
  {
    dispatch_once(&sharingConnection_onceToken, block);
  }

  return sharingConnection__sharingConnection;
}

void __34__DEDController_sharingConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Creating Sharing connection", v5, 2u);
  }

  v3 = [[DEDSharingConnection alloc] initWithController:*(a1 + 32)];
  v4 = sharingConnection__sharingConnection;
  sharingConnection__sharingConnection = v3;
}

- (DEDClientProtocol)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);

  return WeakRetained;
}

- (DEDWorkerProtocol)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

- (DEDPairingProtocol)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

- (void)addDidStartSessionCompletion:(id)completion withIdentifier:(id)identifier
{
  completionCopy = completion;
  identifierCopy = identifier;
  sessionDidStartBlocks = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(sessionDidStartBlocks);
  sessionDidStartBlocks2 = [(DEDController *)self sessionDidStartBlocks];
  v9 = MEMORY[0x24C1E5320](completionCopy);
  [sessionDidStartBlocks2 setObject:v9 forKey:identifierCopy];

  objc_sync_exit(sessionDidStartBlocks);
}

- (id)popDidStartSessionCompletionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionDidStartBlocks = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(sessionDidStartBlocks);
  sessionDidStartBlocks2 = [(DEDController *)self sessionDidStartBlocks];
  v7 = [sessionDidStartBlocks2 objectForKey:identifierCopy];

  if (v7)
  {
    sessionDidStartBlocks3 = [(DEDController *)self sessionDidStartBlocks];
    [sessionDidStartBlocks3 removeObjectForKey:identifierCopy];
  }

  else
  {
    sessionDidStartBlocks3 = DEDSessionStartLog(v8);
    if (os_log_type_enabled(sessionDidStartBlocks3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_248AD7000, sessionDidStartBlocks3, OS_LOG_TYPE_DEFAULT, "tried to pop a nil session did start block", v12, 2u);
    }
  }

  objc_sync_exit(sessionDidStartBlocks);
  v10 = MEMORY[0x24C1E5320](v7);

  return v10;
}

- (void)addSessionStartCompletion:(id)completion withIdentifier:(id)identifier configuration:(id)configuration targetDevice:(id)device
{
  completionCopy = completion;
  identifierCopy = identifier;
  configurationCopy = configuration;
  deviceCopy = device;
  sessionDidStartBlocks = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(sessionDidStartBlocks);
  sessionStartBlocks = [(DEDController *)self sessionStartBlocks];
  v15 = MEMORY[0x24C1E5320](completionCopy);
  [sessionStartBlocks setObject:v15 forKey:identifierCopy];

  [configurationCopy bugSessionStartTimeout];
  [(DEDController *)self _timeOutSessionStartBlockWithIdentifier:identifierCopy targetDevice:deviceCopy timeout:?];
  objc_sync_exit(sessionDidStartBlocks);
}

- (id)popSessionStartCompletionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionDidStartBlocks = [(DEDController *)self sessionDidStartBlocks];
  objc_sync_enter(sessionDidStartBlocks);
  sessionStartBlocks = [(DEDController *)self sessionStartBlocks];
  v7 = [sessionStartBlocks objectForKey:identifierCopy];

  if (v7)
  {
    sessionStartBlocks2 = [(DEDController *)self sessionStartBlocks];
    [sessionStartBlocks2 removeObjectForKey:identifierCopy];
  }

  else
  {
    sessionStartBlocks2 = DEDSessionStartLog(v8);
    if (os_log_type_enabled(sessionStartBlocks2, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_248AD7000, sessionStartBlocks2, OS_LOG_TYPE_DEFAULT, "tried to pop a nil session start block", v12, 2u);
    }
  }

  objc_sync_exit(sessionDidStartBlocks);
  v10 = MEMORY[0x24C1E5320](v7);

  return v10;
}

- (BOOL)hasCompletionBlockWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionStartBlocks = [(DEDController *)self sessionStartBlocks];
  objc_sync_enter(sessionStartBlocks);
  sessionStartBlocks2 = [(DEDController *)self sessionStartBlocks];
  v7 = [sessionStartBlocks2 objectForKey:identifierCopy];
  v8 = v7 != 0;

  objc_sync_exit(sessionStartBlocks);
  return v8;
}

- (void)_timeOutSessionStartBlockWithIdentifier:(id)identifier targetDevice:(id)device timeout:(double)timeout
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  v10 = [(DEDController *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = identifierCopy;
    v22 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Session [%{public}@] will timeout after [%.1lf] seconds", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11 = dispatch_time(0, (timeout * 1000000000.0));
  WeakRetained = objc_loadWeakRetained(buf);
  replyQueue = [WeakRetained replyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke;
  block[3] = &unk_278F658A8;
  objc_copyWeak(&v19, buf);
  v17 = identifierCopy;
  v18 = deviceCopy;
  v14 = deviceCopy;
  v15 = identifierCopy;
  dispatch_after(v11, replyQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained sessionStartBlocks];

  objc_sync_enter(v3);
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 hasCompletionBlockWithIdentifier:*(a1 + 32)];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 popSessionStartCompletionWithIdentifier:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v3);

  if (v7)
  {
    v9 = DEDSessionStartLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke_cold_1((a1 + 32), v9);
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = +[DEDConfiguration sharedInstance];
    v12 = [v11 errorDomain];
    v13 = [v10 errorWithDomain:v12 code:100 userInfo:0];

    (v7)[2](v7, 0, v13);
    v14 = [*(a1 + 40) productType];
    +[DEDAnalytics logBugSessionStartWithDeviceType:isRemote:success:errorCode:](DEDAnalytics, "logBugSessionStartWithDeviceType:isRemote:success:errorCode:", v14, [*(a1 + 40) remoteTransport] != 1, 0, 100);
  }
}

- (void)startPairSetupForDevice:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)tryPIN:forDevice:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_sharingDeviceForIncomingDevice:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[DEDController _sharingDeviceForIncomingDevice:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "%s%@ -> %@", &v3, 0x20u);
}

- (void)insertNewSession:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, a2, v4, "Inserting bug session [%{public}@]", v5);
}

- (void)removeSessionWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, v0, v1, "Removing bug session [%{public}@]", v2);
}

- (void)abortSession:(uint64_t)a3 withCompletion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "[DEDController abortSession:withCompletion:]";
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, a1, a3, "%s", &v3);
}

- (void)abortSession:withCompletion:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)connector:didLooseConnectionToProcessWithPid:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcInbound_forceRemoveNotificationOfType:identifier:hostIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcInbound_forceRemoveNotificationOfType:(uint64_t)a1 identifier:(NSObject *)a2 hostIdentifier:.cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = "EnhancedLogging";
  if (a1 != 3)
  {
    v2 = "Unknown";
  }

  if (!a1)
  {
    v2 = "unset";
  }

  v3 = 136446466;
  v4 = "[DEDController xpcInbound_forceRemoveNotificationOfType:identifier:hostIdentifier:]";
  v5 = 2082;
  v6 = v2;
  _os_log_fault_impl(&dword_248AD7000, a2, OS_LOG_TYPE_FAULT, "[%{public}s] for type [%{public}s] not handled", &v3, 0x16u);
}

- (void)xpcInbound_startPairSetupForDevice:fromInbound:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)xpcInbound_promptPINForDevice:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)xpcInbound_promptPINForDevice:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)xpcInbound_tryPIN:forDevice:fromInbound:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)xpcInbound_successPINForDevice:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sharingInbound_promptPINForDevice:fromInbound:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sharingInbound_successPINForDevice:fromInbound:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__DEDController_idsInbound_devicesChanged_completion___block_invoke_cold_1(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  *a2 = 138543362;
  *a3 = a1;
  OUTLINED_FUNCTION_6_0(&dword_248AD7000, a4, a3, "idsInbound_devicesChanged: ignoring device [%{public}@]", a2);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:(os_log_t)log configuration:caller:target:fromInbound:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_248AD7000, log, OS_LOG_TYPE_ERROR, "cannot find device with [%{public}@]", buf, 0xCu);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startBugSessionWithIdentifier:configuration:caller:target:fromInbound:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__DEDController_startBugSessionWithIdentifier_configuration_caller_target_fromInbound___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didStartBugSessionWithInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__DEDController_upgradeToClassCDataProtectionIfNeeded__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error setting file protection key: %@");
}

void __47__DEDController_purgeStaleSessions_completion___block_invoke_112_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error deleting orphan dir [%{public}@]");
}

void __96__DEDController_CompletionBlocks___timeOutSessionStartBlockWithIdentifier_targetDevice_timeout___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "session start timed out for session id [%{public}@]", &v3, 0xCu);
}

@end