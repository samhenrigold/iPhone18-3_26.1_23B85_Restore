@interface SFCompanionXPCManager
+ (id)sharedManager;
+ (void)initialize;
- (NSXPCConnection)connection;
- (SFCompanionXPCManager)init;
- (void)appleAccountSignedIn;
- (void)appleAccountSignedOut;
- (void)clearConnection;
- (void)dealloc;
- (void)notifyOfInterruption;
- (void)notifyOfInvalidation;
- (void)notifyOfResume;
- (void)onQueue_setupConnection;
- (void)registerObserver:(id)observer;
- (void)remoteHotspotSessionForClient:(id)client withCompletionHandler:(id)handler;
- (void)serviceManagerProxyForIdentifier:(id)identifier client:(id)client withCompletionHandler:(id)handler;
- (void)setupConnection;
- (void)streamsForMessage:(id)message withCompletionHandler:(id)handler;
- (void)unlockManagerWithCompletionHandler:(id)handler;
- (void)unregisterObserver:(id)observer;
- (void)updateLowLatencyFilter:(id)filter isAddFilter:(BOOL)addFilter completion:(id)completion;
@end

@implementation SFCompanionXPCManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SFCompanionXPCManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[SFCompanionXPCManager initialize];
  }
}

void __35__SFCompanionXPCManager_initialize__block_invoke()
{
  v41[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE840];
  v1 = sXPCManagerInterface;
  sXPCManagerInterface = v0;

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D8D240];
  v3 = sServiceManagerClientInterface;
  sServiceManagerClientInterface = v2;

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE8A0];
  v5 = sServiceManagerInterface;
  sServiceManagerInterface = v4;

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D86068];
  v7 = sUnlockClientInterface;
  sUnlockClientInterface = v6;

  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE900];
  v9 = sUnlockInterface;
  sUnlockInterface = v8;

  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D8EA68];
  v11 = sAutheticationStateChangeObserverInterface;
  sAutheticationStateChangeObserverInterface = v10;

  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D87918];
  v13 = sHotspotClientInterface;
  sHotspotClientInterface = v12;

  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE960];
  v15 = sHotspotInterface;
  sHotspotInterface = v14;

  [sXPCManagerInterface setInterface:sServiceManagerClientInterface forSelector:sel_createCompanionServiceManagerWithIdentifier_clientProxy_reply_ argumentIndex:1 ofReply:0];
  [sXPCManagerInterface setInterface:sServiceManagerInterface forSelector:sel_createCompanionServiceManagerWithIdentifier_clientProxy_reply_ argumentIndex:0 ofReply:1];
  [sXPCManagerInterface setInterface:sUnlockInterface forSelector:sel_createUnlockManagerWithReply_ argumentIndex:0 ofReply:1];
  [sXPCManagerInterface setInterface:sHotspotClientInterface forSelector:sel_createHotspotSessionForClientProxy_reply_ argumentIndex:0 ofReply:0];
  [sXPCManagerInterface setInterface:sHotspotInterface forSelector:sel_createHotspotSessionForClientProxy_reply_ argumentIndex:0 ofReply:1];
  v16 = sXPCManagerInterface;
  v17 = MEMORY[0x1E695DFD8];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v41[2] = objc_opt_class();
  v41[3] = objc_opt_class();
  v41[4] = objc_opt_class();
  v41[5] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:6];
  v19 = [v17 setWithArray:v18];
  [v16 setClasses:v19 forSelector:sel_createStreamsForMessage_reply_ argumentIndex:0 ofReply:0];

  [sXPCManagerInterface setClass:objc_opt_class() forSelector:sel_createStreamsForMessage_reply_ argumentIndex:0 ofReply:1];
  [sServiceManagerInterface setClass:objc_opt_class() forSelector:sel_enableService_ argumentIndex:0 ofReply:0];
  [sServiceManagerInterface setClass:objc_opt_class() forSelector:sel_disableService_ argumentIndex:0 ofReply:0];
  [sServiceManagerClientInterface setClass:objc_opt_class() forSelector:sel_streamToService_withFileHandle_acceptReply_ argumentIndex:0 ofReply:0];
  [sServiceManagerClientInterface setClass:objc_opt_class() forSelector:sel_streamToService_withFileHandle_acceptReply_ argumentIndex:1 ofReply:0];
  v20 = sHotspotInterface;
  v21 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v23 = [v21 setWithArray:v22];
  [v20 setClasses:v23 forSelector:sel_enableHotspotForDevice_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v24 = sHotspotClientInterface;
  v25 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v27 = [v25 setWithArray:v26];
  [v24 setClasses:v27 forSelector:sel_updatedFoundDeviceList_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:6];
  v30 = [v28 setWithArray:{v29, v33, v34, v35, v36, v37}];

  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_unlockStateForDevice_completionHandler_ argumentIndex:0 ofReply:1];
  v31 = sUnlockInterface;
  v32 = [v30 setByAddingObject:objc_opt_class()];
  [v31 setClasses:v32 forSelector:sel_eligibleAutoUnlockDevicesWithCompletionHandler_ argumentIndex:0 ofReply:1];

  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_enableAutoUnlockWithDevice_passcode_clientProxy_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClasses:v30 forSelector:sel_enableAutoUnlockWithDevice_passcode_clientProxy_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClasses:v30 forSelector:sel_cancelEnablingAutoUnlockForDevice_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClasses:v30 forSelector:sel_disableAutoUnlockForDevice_completionHandler_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClasses:v30 forSelector:sel_listEligibleDevicesForAuthenticationType_completionHandler_ argumentIndex:0 ofReply:1];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_attemptAutoUnlockWithClientProxy_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_attemptAutoUnlockWithoutNotifyingWatchWithClientProxy_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_attemptAutoUnlockForSiriWithClientProxy_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_enableUsingClientProxy_authenticationType_device_passcode_sessionID_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_enableUsingClientProxy_authenticationType_device_passcode_sessionID_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_enableUsingClientProxy_authenticationType_device_passcode_sessionID_ argumentIndex:3 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_enableUsingClientProxy_authenticationType_device_passcode_sessionID_ argumentIndex:4 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_requestEnablementUsingClientProxy_authenticationType_device_sessionID_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_requestEnablementUsingClientProxy_authenticationType_device_sessionID_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_requestEnablementUsingClientProxy_authenticationType_device_sessionID_ argumentIndex:3 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_disableUsingClientProxy_authenticationType_device_sessionID_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_disableUsingClientProxy_authenticationType_device_sessionID_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_disableUsingClientProxy_authenticationType_device_sessionID_ argumentIndex:3 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_canAuthenticateUsingClientProxy_authenticationType_options_sessionID_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_canAuthenticateUsingClientProxy_authenticationType_options_sessionID_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_canAuthenticateUsingClientProxy_authenticationType_options_sessionID_ argumentIndex:3 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_authenticateUsingClientProxy_type_sessionID_options_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_authenticateUsingClientProxy_type_sessionID_options_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_authenticateUsingClientProxy_type_sessionID_options_ argumentIndex:3 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_cancelAuthenticationSessionWithID_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setInterface:sUnlockClientInterface forSelector:sel_registerForApprovalRequestsUsingClientProxy_forType_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_reportUserApprovalWithACMToken_error_sessionID_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_reportUserApprovalWithACMToken_error_sessionID_ argumentIndex:1 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_reportUserApprovalWithACMToken_error_sessionID_ argumentIndex:2 ofReply:0];
  [sUnlockInterface setClass:objc_opt_class() forSelector:sel_authPromptInfoWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [sUnlockInterface setInterface:sAutheticationStateChangeObserverInterface forSelector:sel_startObservingAuthentationStateChangesWithObserver_forIdentifier_ argumentIndex:0 ofReply:0];
  [sUnlockInterface setClasses:v30 forSelector:sel_getEnabledAuthenticationTypesWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [sUnlockClientInterface setClasses:v30 forSelector:sel_beganAttemptWithDevice_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClasses:v30 forSelector:sel_completedUnlockWithDevice_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClasses:v30 forSelector:sel_keyDeviceLocked_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClasses:v30 forSelector:sel_enabledDevice_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClasses:v30 forSelector:sel_failedToEnableDevice_error_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_enabledAuthenticationSessionWithID_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_failedToEnableDeviceForSessionID_error_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_failedToEnableDeviceForSessionID_error_ argumentIndex:1 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_startedAuthenticationSessionWithID_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_completedAuthenticationSessionWithID_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_failedAuthenticationSessionWithID_error_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_failedAuthenticationSessionWithID_error_ argumentIndex:1 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_receivedApproveRequestForSessionID_info_ argumentIndex:0 ofReply:0];
  [sUnlockClientInterface setClass:objc_opt_class() forSelector:sel_receivedApproveRequestForSessionID_info_ argumentIndex:1 ofReply:0];
}

void __38__SFCompanionXPCManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SFCompanionXPCManager);
  v1 = sharedManager_manager_0;
  sharedManager_manager_0 = v0;
}

- (SFCompanionXPCManager)init
{
  v11.receiver = self;
  v11.super_class = SFCompanionXPCManager;
  v2 = [(SFCompanionXPCManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.sharing.xpc", 0);
    xpcSetupQueue = v2->_xpcSetupQueue;
    v2->_xpcSetupQueue = v3;

    *&v2->_invalid = 0;
    connection = v2->_connection;
    v2->_connection = 0;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v6;

    [(SFCompanionXPCManager *)v2 setupConnection];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__SFCompanionXPCManager_init__block_invoke;
    handler[3] = &unk_1E788CB60;
    v10 = v2;
    notify_register_dispatch("com.apple.sharingd.daemon.started", &v2->_listenerResumedToken, MEMORY[0x1E69E96A0], handler);
  }

  return v2;
}

void *__29__SFCompanionXPCManager_init__block_invoke(void *result)
{
  if (!*(result[4] + 16))
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = streams_log(result);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Reconnecting to sharingd", v5, 2u);
    }

    return [v3[4] setupConnection];
  }

  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SFCompanionXPCManager;
  [(SFCompanionXPCManager *)&v3 dealloc];
}

- (void)setupConnection
{
  xpcSetupQueue = self->_xpcSetupQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFCompanionXPCManager_setupConnection__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_sync(xpcSetupQueue, block);
}

- (void)onQueue_setupConnection
{
  dispatch_assert_queue_V2(self->_xpcSetupQueue);
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.sharingd.nsxpc" options:0];
  connection = self->_connection;
  self->_connection = v3;

  [(NSXPCConnection *)self->_connection _setQueue:self->_xpcSetupQueue];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:sXPCManagerInterface];
  selfCopy = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__SFCompanionXPCManager_onQueue_setupConnection__block_invoke;
  v14[3] = &unk_1E788B198;
  v6 = selfCopy;
  v15 = v6;
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v14];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__SFCompanionXPCManager_onQueue_setupConnection__block_invoke_358;
  v12 = &unk_1E788B198;
  v13 = v6;
  v7 = self->_connection;
  v8 = v6;
  [(NSXPCConnection *)v7 setInvalidationHandler:&v9];
  [(NSXPCConnection *)self->_connection resume:v9];
  [(SFCompanionXPCManager *)v8 setInvalid:0];
  [(SFCompanionXPCManager *)v8 notifyOfResume];
}

uint64_t __48__SFCompanionXPCManager_onQueue_setupConnection__block_invoke(uint64_t a1)
{
  v2 = streams_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "XPC Manager Connection Interrupted", v4, 2u);
  }

  [*(a1 + 32) setInterrupted:1];
  [*(a1 + 32) clearConnection];
  [*(a1 + 32) onQueue_setupConnection];
  return [*(a1 + 32) notifyOfInterruption];
}

uint64_t __48__SFCompanionXPCManager_onQueue_setupConnection__block_invoke_358(uint64_t a1)
{
  v2 = streams_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "XPC Manager Connection Invalidated", v6, 2u);
  }

  [*(a1 + 32) clearConnection];
  v3 = [*(a1 + 32) interrupted];
  v4 = *(a1 + 32);
  if (v3)
  {
    return [v4 setInterrupted:0];
  }

  [v4 setInvalid:1];
  return [*(a1 + 32) notifyOfInvalidation];
}

- (NSXPCConnection)connection
{
  pthread_mutex_lock(&_connectionLock);
  v3 = self->_connection;
  pthread_mutex_unlock(&_connectionLock);

  return v3;
}

- (void)clearConnection
{
  pthread_mutex_lock(&_connectionLock);
  connection = self->_connection;
  self->_connection = 0;

  pthread_mutex_unlock(&_connectionLock);
}

- (void)notifyOfInterruption
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) xpcManagerConnectionInterrupted];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)notifyOfResume
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 xpcManagerDidResumeConnection:{selfCopy, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)notifyOfInvalidation
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 xpcManagerDidInvalidate:{selfCopy, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_observers containsObject:observerCopy]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_observers addObject:observerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)serviceManagerProxyForIdentifier:(id)identifier client:(id)client withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  clientCopy = client;
  handlerCopy = handler;
  connection = [(SFCompanionXPCManager *)self connection];

  if (connection)
  {
    v12 = _os_activity_create(&dword_1A9662000, "Sharing/SFCompanionXPC/createCompanionServiceManagerWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v12, &state);
    connection2 = [(SFCompanionXPCManager *)self connection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__SFCompanionXPCManager_serviceManagerProxyForIdentifier_client_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E788B6D8;
    v14 = handlerCopy;
    v19 = v14;
    v15 = [connection2 remoteObjectProxyWithErrorHandler:v18];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__SFCompanionXPCManager_serviceManagerProxyForIdentifier_client_withCompletionHandler___block_invoke_364;
    v16[3] = &unk_1E788CB88;
    v17 = v14;
    [v15 createCompanionServiceManagerWithIdentifier:identifierCopy clientProxy:clientCopy reply:v16];

    os_activity_scope_leave(&state);
  }
}

void __87__SFCompanionXPCManager_serviceManagerProxyForIdentifier_client_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = streams_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__SFCompanionXPCManager_serviceManagerProxyForIdentifier_client_withCompletionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)streamsForMessage:(id)message withCompletionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  connection = [(SFCompanionXPCManager *)self connection];

  if (connection)
  {
    v9 = _os_activity_create(&dword_1A9662000, "Sharing/SFCompanionXPC/createStreamsForMessage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    connection2 = [(SFCompanionXPCManager *)self connection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke;
    v17[3] = &unk_1E788B6D8;
    v11 = handlerCopy;
    v18 = v11;
    v12 = [connection2 remoteObjectProxyWithErrorHandler:v17];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke_366;
    v15[3] = &unk_1E788CBB0;
    v16 = v11;
    [v12 createStreamsForMessage:messageCopy reply:v15];

    os_activity_scope_leave(&state);
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"XPC Connection Down";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v9 = [v13 errorWithDomain:*MEMORY[0x1E696A798] code:64 userInfo:v14];

    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

void __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = streams_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)unlockManagerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isInvalid = [(SFCompanionXPCManager *)self isInvalid];
  if (isInvalid)
  {
    v6 = auto_unlock_log(isInvalid);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.opaque[0]) = 0;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Re-establishing connection", &buf, 2u);
    }

    [(SFCompanionXPCManager *)self setupConnection];
  }

  connection = [(SFCompanionXPCManager *)self connection];

  if (connection)
  {
    v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFCompanionXPC/createUnlockManagerWithReply", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    buf.opaque[0] = 0;
    buf.opaque[1] = 0;
    os_activity_scope_enter(v8, &buf);
    connection2 = [(SFCompanionXPCManager *)self connection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__SFCompanionXPCManager_unlockManagerWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E788B6D8;
    v10 = handlerCopy;
    v15 = v10;
    v11 = [connection2 remoteObjectProxyWithErrorHandler:v14];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__SFCompanionXPCManager_unlockManagerWithCompletionHandler___block_invoke_371;
    v12[3] = &unk_1E788CBD8;
    v13 = v10;
    [v11 createUnlockManagerWithReply:v12];

    os_activity_scope_leave(&buf);
  }
}

void __60__SFCompanionXPCManager_unlockManagerWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = auto_unlock_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)remoteHotspotSessionForClient:(id)client withCompletionHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  connection = [(SFCompanionXPCManager *)self connection];

  if (connection)
  {
    v9 = _os_activity_create(&dword_1A9662000, "Sharing/SFCompanionXPC/createHotspotSessionForClientProxy", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    connection2 = [(SFCompanionXPCManager *)self connection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__SFCompanionXPCManager_remoteHotspotSessionForClient_withCompletionHandler___block_invoke;
    v15[3] = &unk_1E788B6D8;
    v11 = handlerCopy;
    v16 = v11;
    v12 = [connection2 remoteObjectProxyWithErrorHandler:v15];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__SFCompanionXPCManager_remoteHotspotSessionForClient_withCompletionHandler___block_invoke_373;
    v13[3] = &unk_1E788CC00;
    v14 = v11;
    [v12 createHotspotSessionForClientProxy:clientCopy reply:v13];

    os_activity_scope_leave(&state);
  }
}

void __77__SFCompanionXPCManager_remoteHotspotSessionForClient_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = tethering_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateLowLatencyFilter:(id)filter isAddFilter:(BOOL)addFilter completion:(id)completion
{
  addFilterCopy = addFilter;
  v28[1] = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  completionCopy = completion;
  connection = [(SFCompanionXPCManager *)self connection];

  if (!connection)
  {
    if (!addFilterCopy)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A798];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"XPC Connection Down";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v17 = [v18 errorWithDomain:v19 code:64 userInfo:v20];

      completionCopy[2](completionCopy, v17);
LABEL_10:

      goto LABEL_11;
    }

    [(SFCompanionXPCManager *)self setupConnection];
  }

  connection2 = [(SFCompanionXPCManager *)self connection];

  if (connection2)
  {
    if (addFilterCopy)
    {
      v12 = "Sharing/SFRemoteHotspotSession/addLowLatencyFilter";
    }

    else
    {
      v12 = "Sharing/SFRemoteHotspotSession/removeLowLatencyFilter";
    }

    v13 = _os_activity_create(&dword_1A9662000, v12, MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    os_activity_scope_leave(&state);

    connection3 = [(SFCompanionXPCManager *)self connection];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __71__SFCompanionXPCManager_updateLowLatencyFilter_isAddFilter_completion___block_invoke;
    v24 = &unk_1E788B6D8;
    v15 = completionCopy;
    v25 = v15;
    v16 = [connection3 remoteObjectProxyWithErrorHandler:&v21];

    [v16 updateLowLatencyFilter:filterCopy isAddFilter:addFilterCopy completion:{v15, v21, v22, v23, v24}];
    v17 = v25;
    goto LABEL_10;
  }

LABEL_11:
}

void __71__SFCompanionXPCManager_updateLowLatencyFilter_isAddFilter_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = tethering_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__SFCompanionXPCManager_updateLowLatencyFilter_isAddFilter_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)appleAccountSignedIn
{
  connection = [(SFCompanionXPCManager *)self connection];

  if (!connection)
  {
    [(SFCompanionXPCManager *)self setupConnection];
  }

  connection2 = [(SFCompanionXPCManager *)self connection];

  if (connection2)
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFCompanionXPC/appleAccountSignedIn", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(v5, &v8);
    connection3 = [(SFCompanionXPCManager *)self connection];
    v7 = [connection3 remoteObjectProxyWithErrorHandler:&__block_literal_global_376];

    [v7 appleAccountSignedIn];
    os_activity_scope_leave(&v8);
  }
}

void __45__SFCompanionXPCManager_appleAccountSignedIn__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = daemon_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SFCompanionXPCManager_appleAccountSignedIn__block_invoke_cold_1(v2);
  }
}

- (void)appleAccountSignedOut
{
  connection = [(SFCompanionXPCManager *)self connection];

  if (!connection)
  {
    [(SFCompanionXPCManager *)self setupConnection];
  }

  connection2 = [(SFCompanionXPCManager *)self connection];

  if (connection2)
  {
    v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFCompanionXPC/appleAccountSignedOut", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(v5, &v8);
    connection3 = [(SFCompanionXPCManager *)self connection];
    v7 = [connection3 remoteObjectProxyWithErrorHandler:&__block_literal_global_378];

    [v7 appleAccountSignedOut];
    os_activity_scope_leave(&v8);
  }
}

void __46__SFCompanionXPCManager_appleAccountSignedOut__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = daemon_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__SFCompanionXPCManager_appleAccountSignedOut__block_invoke_cold_1(v2);
  }
}

void __87__SFCompanionXPCManager_serviceManagerProxyForIdentifier_client_withCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 copy];
  v2 = [v1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1A9662000, v3, v4, "Service Manager: Error occured on XPC Manager when getting remote object %@", v5, v6, v7, v8);
}

void __65__SFCompanionXPCManager_streamsForMessage_withCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 copy];
  v2 = [v1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1A9662000, v3, v4, "Error occured on XPC Manager when getting remote object %@", v5, v6, v7, v8);
}

void __71__SFCompanionXPCManager_updateLowLatencyFilter_isAddFilter_completion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1A9662000, v0, OS_LOG_TYPE_ERROR, "Error occured on XPC Manager when getting remote object %@", v1, 0xCu);
}

void __45__SFCompanionXPCManager_appleAccountSignedIn__block_invoke_cold_1(void *a1)
{
  v1 = [a1 copy];
  v2 = [v1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1A9662000, v3, v4, "appleAccountSignedIn: Error occured on XPC Manager when getting remote object %@", v5, v6, v7, v8);
}

void __46__SFCompanionXPCManager_appleAccountSignedOut__block_invoke_cold_1(void *a1)
{
  v1 = [a1 copy];
  v2 = [v1 description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1A9662000, v3, v4, "appleAccountSignedOut: Error occured on XPC Manager when getting remote object %@", v5, v6, v7, v8);
}

@end