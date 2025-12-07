@interface _UIKeyboardArbiter
+ (BOOL)unitTestEnvironment;
+ (void)configureEncodedClassesForXPCConnection:(id)connection;
- (BOOL)activateHandle:(id)handle;
- (BOOL)deactivateHandle:(id)handle;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_UIKeyboardArbiter)initWithLink:(id)link;
- (_UIKeyboardArbiterClientHandle)activeInputDestinationHandle;
- (_UIKeyboardArbiterClientHandle)focusRequestedHandle;
- (_UIKeyboardArbiterClientHandle)keyboardUIHandle;
- (_UIKeyboardArbiterOmniscientDelegate)omniscientDelegate;
- (_UIKeyboardArbiterSceneDelegate)sceneDelegate;
- (id)_activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:(id *)handle;
- (id)_activeHandleForFocusEvaluation;
- (id)_currentFocusedHandle;
- (id)_descriptionWithScene:(BOOL)scene;
- (id)_handleForSceneIdentity:(id)identity;
- (id)_previouslyFocusedHostHandle;
- (id)focusContext;
- (id)handlerForBundleID:(id)d;
- (id)handlerForPID:(int)d;
- (id)handlerForToken:(id)token;
- (id)hostBundleIdentifierForHandle:(id)handle hosts:(id)hosts;
- (id)hostForHandle:(id)handle hosts:(id)hosts;
- (id)lastActivatedHandle;
- (id)preferredSceneIdentityForKeyboardFocusWithChangeInformation:(id)information;
- (id)remoteFocusContext;
- (int)presentingKeyboardProcessIdentifier;
- (void)_applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:(unint64_t)generation;
- (void)_arbiterQueue_keyboardFocusDidChangeWithoutAdvisorInputForGeneration:(unint64_t)generation pid:(int)pid sceneIdentity:(id)identity;
- (void)_cullRecentlyActiveSceneIdentities;
- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler;
- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler checklist:(id)checklist;
- (void)_focusSceneHandle:(id)handle previousHostFocusHandle:(id)focusHandle previousLeafFocusHandle:(id)leafFocusHandle shouldStealKeyboardOnSuccess:(BOOL)success;
- (void)_trackRecentlyActiveArbiterHandle:(id)handle;
- (void)_updateCurrentKeyboardFocusToPID:(int)d sceneIdentity:(id)identity;
- (void)activateClients;
- (void)applySceneFocusChange:(id)change forRequest:(id)request;
- (void)attemptConnection;
- (void)captureStateForDebug;
- (void)checkHostingState;
- (void)completeKeyboardStatusChangedFromHandler:(id)handler;
- (void)dealloc;
- (void)handleUnexpectedDeallocForHandler:(id)handler;
- (void)handlerRequestedFocus:(id)focus shouldStealKeyboard:(BOOL)keyboard;
- (void)handlerRequestedForcedClientSceneIdentityUpdate:(id)update;
- (void)keyboardFocusDidChangeWithoutAdvisorInputToPid:(int)pid sceneIdentity:(id)identity;
- (void)newClientConnected:(id)connected withExpectedState:(id)state onConnected:(id)onConnected;
- (void)notifyHeightUpdated:(id)updated;
- (void)prewarmFocusContext;
- (void)processWithPID:(int)d foreground:(BOOL)foreground suspended:(BOOL)suspended;
- (void)reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:(BOOL)success;
- (void)reevaluateSceneClientSettings;
- (void)retrieveClientDebugInformationWithCompletion:(id)completion;
- (void)retrieveDebugInformationWithCompletion:(id)completion;
- (void)runOperations:(id)operations onHandler:(id)handler fromFunction:(const char *)function;
- (void)scheduleWindowTimeout;
- (void)setActiveInputDestinationHandle:(id)handle;
- (void)setKeyboardTotalDisable:(BOOL)disable withFence:(id)fence fromHandler:(id)handler completionHandler:(id)completionHandler;
- (void)setSuppressionCount:(int)count ofPIDs:(id)ds;
- (void)signalEventSourceChanged:(int64_t)changed fromHandler:(id)handler completionHandler:(id)completionHandler;
- (void)transition:(id)transition eventStage:(unint64_t)stage withInfo:(id)info fromHandler:(id)handler;
- (void)updateInterestedBundleIDs;
- (void)updateKeyboardSceneSettings;
- (void)updateKeyboardStatus:(id)status fromHandler:(id)handler fromFocus:(BOOL)focus;
- (void)updateKeyboardUIStatus:(id)status fromHandler:(id)handler;
- (void)updateSceneClientSettings:(id)settings;
- (void)updateSuppression:(BOOL)suppression ofPID:(id)d active:(BOOL)active;
- (void)updateSuppression:(BOOL)suppression ofPIDs:(id)ds active:(BOOL)active;
@end

@implementation _UIKeyboardArbiter

- (void)updateInterestedBundleIDs
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        processHandle = [v9 processHandle];

        if (processHandle)
        {
          v11 = MEMORY[0x277D46FA0];
          processHandle2 = [v9 processHandle];
          v13 = [v11 predicateMatchingHandle:processHandle2];
        }

        else
        {
          if (![v9 processIdentifier])
          {
            continue;
          }

          v14 = MEMORY[0x277D46FA0];
          processHandle2 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v9, "processIdentifier")}];
          v13 = [v14 predicateMatchingIdentifier:processHandle2];
        }

        v15 = v13;

        [array addObject:v15];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  processMonitor = selfCopy->_processMonitor;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47___UIKeyboardArbiter_updateInterestedBundleIDs__block_invoke;
  v19[3] = &unk_2797F49D8;
  v20 = array;
  v17 = array;
  [(RBSProcessMonitor *)processMonitor updateConfiguration:v19];
}

+ (BOOL)unitTestEnvironment
{
  if (qword_28122B770 != -1)
  {
    dispatch_once(&qword_28122B770, &__block_literal_global_330);
  }

  return _MergedGlobals_2;
}

- (id)_activeHandleForFocusEvaluation
{
  WeakRetained = objc_loadWeakRetained(&self->_focusRequestedHandle);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_lastActivatedHandle);
  }

  v6 = v5;

  return v6;
}

- (id)_currentFocusedHandle
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_currentFocusPID != -1)
  {
    v3 = [(_UIKeyboardArbiter *)self handlerForPID:?];
    if (v3)
    {
      goto LABEL_9;
    }

    memset(v15, 0, sizeof(v15));
    v4 = _UIArbiterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    currentFocusPID = self->_currentFocusPID;
    currentFocusSceneIdentity = self->_currentFocusSceneIdentity;
    v12[0] = 67240450;
    v12[1] = currentFocusPID;
    v13 = 2114;
    v14 = currentFocusSceneIdentity;
    v8 = _os_log_send_and_compose_impl(v5, 0, v15, 512, &dword_2557BA000, v4, 16, "Advisor: No handle found for currently focused PID: %{public}d; sceneIdentity: %{public}@", v12, 18);

    v9 = +[_UIKeyboardArbiterDebug sharedInstance];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v15];
    [v9 errorWithMessage:v10];

    if (v8 != v15)
    {
      free(v8);
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

- (_UIKeyboardArbiterOmniscientDelegate)omniscientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_omniscientDelegate);

  return WeakRetained;
}

- (void)reevaluateSceneClientSettings
{
  dispatch_assert_queue_V2(self->_queue);
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  isAvailable = [sceneLink isAvailable];

  if (isAvailable)
  {
    sceneLink2 = [(_UIKeyboardArbiter *)self sceneLink];
    [sceneLink2 updateSceneSettings];
  }
}

- (id)focusContext
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    [v4 level];
  }

  v5 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  remoteFocusContext = [v5 remoteFocusContext];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_clients;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 active])
        {
          remoteFocusContext2 = [v12 remoteFocusContext];
          sceneIdentity = [remoteFocusContext2 sceneIdentity];

          if (sceneIdentity)
          {
            v15 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
            v16 = [v12 isHandlerShowableWithHandler:v15];

            if (v16)
            {
              [v12 level];
              remoteFocusContext3 = [v12 remoteFocusContext];

              remoteFocusContext = remoteFocusContext3;
            }
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return remoteFocusContext;
}

- (_UIKeyboardArbiterSceneDelegate)sceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);

  return WeakRetained;
}

- (void)updateKeyboardSceneSettings
{
  dispatch_assert_queue_V2(self->_queue);
  remoteFocusContext = [(_UIKeyboardArbiter *)self remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  v5 = sceneIdentity;
  BSDispatchMain();
}

- (id)remoteFocusContext
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  remoteFocusContext = [WeakRetained remoteFocusContext];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        if ([v10 active])
        {
          v11 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
          if (v10 == v11)
          {
            goto LABEL_11;
          }

          v12 = objc_loadWeakRetained(&self->_keyboardUIHandle);

          if (v10 != v12)
          {
            v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
            v14 = [v10 isHandlerShowableWithHandler:v13];

            if (v14)
            {
              [v10 remoteFocusContext];
              remoteFocusContext = v11 = remoteFocusContext;
LABEL_11:

              continue;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return remoteFocusContext;
}

- (void)_cullRecentlyActiveSceneIdentities
{
  v3 = [(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities count];
  if ([(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities count]>= 7)
  {
    recentlyActiveSceneIdentities = self->_recentlyActiveSceneIdentities;

    [(NSMutableOrderedSet *)recentlyActiveSceneIdentities removeObjectsInRange:0, v3 - 6];
  }
}

- (void)scheduleWindowTimeout
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_updateCounter + 1;
  self->_updateCounter = v3;
  v4 = dispatch_time(0, 4000000000);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43___UIKeyboardArbiter_scheduleWindowTimeout__block_invoke;
  v6[3] = &unk_2797F4880;
  v6[4] = self;
  v7 = v3;
  dispatch_after(v4, queue, v6);
}

- (void)captureStateForDebug
{
  v3 = +[_UIKeyboardArbiterDebug sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42___UIKeyboardArbiter_captureStateForDebug__block_invoke;
  v4[3] = &unk_2797F46F8;
  v4[4] = self;
  [v3 addAsynchronousData:v4];
}

- (_UIKeyboardArbiter)initWithLink:(id)link
{
  linkCopy = link;
  v32.receiver = self;
  v32.super_class = _UIKeyboardArbiter;
  v6 = [(_UIKeyboardArbiter *)&v32 init];
  if (v6)
  {
    v7 = MEMORY[0x277CF32B0];
    userInteractive = [MEMORY[0x277CF32C8] userInteractive];
    v9 = [v7 queueWithName:@"com.apple.UIKit.keyboard-arbiter" serviceQuality:userInteractive];
    bsQueue = v6->_bsQueue;
    v6->_bsQueue = v9;

    queue = [(BSServiceDispatchQueue *)v6->_bsQueue queue];
    queue = v6->_queue;
    v6->_queue = queue;

    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    clients = v6->_clients;
    v6->_clients = v13;

    v6->_currentFocusPID = -1;
    v6->_pendingFocusLock._os_unfair_lock_opaque = 0;
    v6->_pendingFocusLock_PID = -1;
    objc_storeStrong(&v6->_sceneLink, link);
    [(_UIKeyboardArbiterLink *)v6->_sceneLink setOwner:v6];
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    recentlyActiveSceneIdentities = v6->_recentlyActiveSceneIdentities;
    v6->_recentlyActiveSceneIdentities = orderedSet;

    v17 = v6->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35___UIKeyboardArbiter_initWithLink___block_invoke;
    block[3] = &unk_2797F4630;
    v18 = v6;
    v31 = v18;
    dispatch_sync(v17, block);
    sceneLink = [(_UIKeyboardArbiter *)v18 sceneLink];
    serviceName = [sceneLink serviceName];

    if (serviceName)
    {
      serviceListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:serviceName];
    }

    else
    {
      serviceListener = [MEMORY[0x277CCAE98] serviceListener];
    }

    listener = v18->_listener;
    v18->_listener = serviceListener;

    [(NSXPCListener *)v18->_listener setDelegate:v18];
    objc_initWeak(&location, v18);
    v23 = MEMORY[0x277D46F80];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __35___UIKeyboardArbiter_initWithLink___block_invoke_2;
    v27[3] = &unk_2797F4680;
    objc_copyWeak(&v28, &location);
    v24 = [v23 monitorWithConfiguration:v27];
    processMonitor = v18->_processMonitor;
    v18->_processMonitor = v24;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = _UIKeyboardArbiter;
  [(_UIKeyboardArbiter *)&v3 dealloc];
}

- (id)_descriptionWithScene:(BOOL)scene
{
  v4 = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(v4);
  v12.receiver = self;
  v12.super_class = _UIKeyboardArbiter;
  v5 = [(_UIKeyboardArbiter *)&v12 description];
  v6 = [v5 mutableCopy];

  [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
  [v6 appendString:@"; "];
  [v6 appendString:@"scene data omitted;\n"];
  WeakRetained = objc_loadWeakRetained(&self->_disablingHandle);
  [v6 appendFormat:@"disabler = %@;\n", WeakRetained];

  [v6 appendFormat:@"lastEventSource = %ld;\n", self->_lastEventSource];
  lastUIInformation = self->_lastUIInformation;
  lastUpdate = lastUIInformation;
  if (!lastUIInformation)
  {
    lastUpdate = [(_UIKeyboardArbiter *)self lastUpdate];
  }

  [v6 appendFormat:@"current state = %@;\n", lastUpdate];
  if (!lastUIInformation)
  {
  }

  v10 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  [v6 appendFormat:@"active handle = %@;\n", v10];

  [v6 appendFormat:@"handles = %@>", self->_clients];
  objc_sync_exit(v4);

  return v6;
}

- (void)retrieveDebugInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy_;
  v23[4] = __Block_byref_object_dispose_;
  v24 = 0;
  dispatch_group_enter(v5);
  v6 = +[_UIKeyboardArbiterDebug sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke;
  v20[3] = &unk_2797F46A8;
  v22 = v23;
  v7 = v5;
  v21 = v7;
  [v6 getDebugInfoDictionariesWithCompletionHandler:v20];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  dispatch_group_enter(v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke_77;
  v15[3] = &unk_2797F46A8;
  v17 = v18;
  v8 = v7;
  v16 = v8;
  [(_UIKeyboardArbiter *)self retrieveClientDebugInformationWithCompletion:v15];
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke_2;
  v11[3] = &unk_2797F46D0;
  v13 = v23;
  v14 = v18;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_group_notify(v8, queue, v11);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v23, 8);
}

- (void)retrieveClientDebugInformationWithCompletion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v28 = completionCopy;
    array = [MEMORY[0x277CBEB18] array];
    v7 = dispatch_group_create();
    queue = self->_queue;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke;
    v46[3] = &unk_2797F4748;
    v46[4] = self;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_3;
    v43[3] = &unk_2797F4770;
    v9 = array;
    v44 = v9;
    selfCopy = self;
    group = v7;
    AsyncTaskWithTimeout(v7, queue, v46, v43);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = self->_clients;
    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        v13 = 0;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v39 + 1) + 8 * v13);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v16 = [v14 description];
          [dictionary setObject:v16 forKey:@"Description"];

          v17 = MEMORY[0x277CCABB0];
          WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
          v19 = [v17 numberWithInt:WeakRetained == v14];
          [dictionary setObject:v19 forKey:@"Active"];

          v20 = MEMORY[0x277CCABB0];
          v21 = objc_loadWeakRetained(&self->_lastActivatedHandle);
          v22 = [v20 numberWithInt:v21 == v14];
          [dictionary setObject:v22 forKey:@"LastActivated"];

          v23 = MEMORY[0x277CCABB0];
          v24 = objc_loadWeakRetained(&self->_focusRequestedHandle);
          v25 = [v23 numberWithInt:v24 == v14];
          [dictionary setObject:v25 forKey:@"FocusRequested"];

          if ([v14 running])
          {
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_4;
            v34[3] = &unk_2797F47E8;
            v35 = group;
            selfCopy2 = self;
            v37 = dictionary;
            v38 = v9;
            [(_UIKeyboardArbiter *)self runOperations:v34 onHandler:v14 fromFunction:"[_UIKeyboardArbiter retrieveClientDebugInformationWithCompletion:]"];
          }

          else
          {
            [dictionary setObject:@"Suspended" forKey:@"Process"];
            [v9 addObject:dictionary];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v11);
    }

    v26 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_8;
    block[3] = &unk_2797F4720;
    v5 = v28;
    v32 = v9;
    v33 = v28;
    v27 = v9;
    dispatch_group_notify(group, v26, block);
  }
}

- (void)attemptConnection
{
  dispatch_assert_queue_V2(self->_queue);
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___UIKeyboardArbiter_attemptConnection__block_invoke;
  v4[3] = &unk_2797F4810;
  v4[4] = self;
  [sceneLink createSceneWithCompletion:v4];
}

- (void)runOperations:(id)operations onHandler:(id)handler fromFunction:(const char *)function
{
  v70 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  handlerCopy = handler;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = _UIArbiterLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v34 = 136315394;
  functionCopy3 = function;
  v36 = 2112;
  v37 = handlerCopy;
  v12 = _os_log_send_and_compose_impl(v11, 0, &v38, 512, &dword_2557BA000, v10, 2, "runOperations: %s for %@", &v34, 22);

  v13 = +[_UIKeyboardArbiterDebug sharedInstance];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
  [v13 debugWithMessage:v14];

  if (v12 != &v38)
  {
    free(v12);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([handlerCopy running])
  {
    connection = [handlerCopy connection];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __59___UIKeyboardArbiter_runOperations_onHandler_fromFunction___block_invoke;
    v31[3] = &unk_2797F4838;
    functionCopy2 = function;
    v16 = handlerCopy;
    v32 = v16;
    v17 = [connection remoteObjectProxyWithErrorHandler:v31];

    if (v17)
    {
      if ([v16 takeProcessAssertionOnRemoteWithQueue:self->_queue])
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __59___UIKeyboardArbiter_runOperations_onHandler_fromFunction___block_invoke_125;
        v29[3] = &unk_2797F45E0;
        v29[4] = self;
        v30 = v16;
        operationsCopy[2](operationsCopy, v17, v29);
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v23 = _UIArbiterLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v34 = 138412290;
        functionCopy3 = handlerCopy;
        LODWORD(v28) = 12;
        v25 = _os_log_send_and_compose_impl(v24, 0, &v38, 512, &dword_2557BA000, v23, 16, "Skipping operations because failed to take process assertion for %@", &v34, v28);

        v26 = +[_UIKeyboardArbiterDebug sharedInstance];
        v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
        [v26 errorWithMessage:v27];

        if (v25 != &v38)
        {
          free(v25);
        }

        [v16 releaseProcessAssertion];
      }
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = _UIArbiterLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v34 = 136315394;
      functionCopy3 = function;
      v36 = 2112;
      v37 = handlerCopy;
      LODWORD(v28) = 22;
      v20 = _os_log_send_and_compose_impl(v19, 0, &v38, 512, &dword_2557BA000, v18, 16, "runOperations: %s Failed to create proxy for %@", &v34, v28);

      v21 = +[_UIKeyboardArbiterDebug sharedInstance];
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
      [v21 errorWithMessage:v22];

      if (v20 != &v38)
      {
        free(v20);
      }
    }
  }
}

- (id)hostForHandle:(id)handle hosts:(id)hosts
{
  v26 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  hostsCopy = hosts;
  remoteFocusContext = [handleCopy remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  if (sceneIdentity)
  {
    v10 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_clients;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([hostsCopy containsObject:{v16, v21}] & 1) == 0 && (objc_msgSend(v16, "isHostingPID:", objc_msgSend(handleCopy, "processIdentifier")))
          {
            [hostsCopy addObject:v16];
            v17 = [(_UIKeyboardArbiter *)self hostForHandle:v16 hosts:hostsCopy];
            v18 = v17;
            if (v17)
            {
              v19 = v17;
            }

            else
            {
              v19 = v16;
            }

            v10 = v19;

            goto LABEL_17;
          }
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_17:
  }

  return v10;
}

- (id)hostBundleIdentifierForHandle:(id)handle hosts:(id)hosts
{
  v4 = [(_UIKeyboardArbiter *)self hostForHandle:handle hosts:hosts];
  bundleIdentifier = [v4 bundleIdentifier];

  return bundleIdentifier;
}

- (void)_trackRecentlyActiveArbiterHandle:(id)handle
{
  handleCopy = handle;
  remoteFocusContext = [handleCopy remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];
  if (sceneIdentity)
  {
    v6 = sceneIdentity;
    isKeyboardOnScreen = [handleCopy isKeyboardOnScreen];

    if (isKeyboardOnScreen)
    {
      recentlyActiveSceneIdentities = self->_recentlyActiveSceneIdentities;
      remoteFocusContext2 = [handleCopy remoteFocusContext];
      sceneIdentity2 = [remoteFocusContext2 sceneIdentity];
      stringRepresentation = [sceneIdentity2 stringRepresentation];
      [(NSMutableOrderedSet *)recentlyActiveSceneIdentities addObject:stringRepresentation];

      [(_UIKeyboardArbiter *)self _cullRecentlyActiveSceneIdentities];
    }
  }

  else
  {
  }
}

- (void)updateKeyboardUIStatus:(id)status fromHandler:(id)handler
{
  v98 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  handlerCopy = handler;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v5 = _UIArbiterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v60 = 138412802;
  v61 = objc_opt_class();
  v62 = 2112;
  v63 = statusCopy;
  v64 = 2112;
  v65 = handlerCopy;
  v7 = v61;
  v8 = _os_log_send_and_compose_impl(v6, 0, &v66, 512, &dword_2557BA000, v5, 1, "[%@] updateKeyboardUIStatus: %@ fromHandler: %@", &v60, 32);

  v9 = +[_UIKeyboardArbiterDebug sharedInstance];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v66];
  [v9 infoWithMessage:v10];

  if (v8 != &v66)
  {
    free(v8);
  }

  dispatch_assert_queue_V2(self->_queue);
  obj = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(obj);
  if (([statusCopy hasValidNotification] & 1) == 0)
  {
    v11 = [statusCopy copy];
    lastUIInformation = self->_lastUIInformation;
    self->_lastUIInformation = v11;
  }

  v13 = [statusCopy copy];
  copyWithoutFence = [v13 copyWithoutFence];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __57___UIKeyboardArbiter_updateKeyboardUIStatus_fromHandler___block_invoke;
  v56[3] = &unk_2797F48A8;
  v56[4] = self;
  v47 = v13;
  v57 = v47;
  v46 = copyWithoutFence;
  v58 = v46;
  v15 = MEMORY[0x259C414B0](v56);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = self->_clients;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (!v17)
  {

LABEL_36:
    bundleIdentifier = [statusCopy bundleIdentifier];
    pendingBundleIdentifier = self->_pendingBundleIdentifier;
    self->_pendingBundleIdentifier = bundleIdentifier;

    v41 = MEMORY[0x259C414B0](v15);
    goto LABEL_37;
  }

  v18 = 0;
  v19 = *v53;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v53 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v52 + 1) + 8 * i);
      if (([v21 inputUIHost] & 1) == 0)
      {
        if (v18)
        {
          v18 = 1;
        }

        else
        {
          bundleIdentifier2 = [v21 bundleIdentifier];
          bundleIdentifier3 = [statusCopy bundleIdentifier];
          v18 = [bundleIdentifier2 isEqualToString:bundleIdentifier3];
        }

        if ([v21 deactivating])
        {
          [v21 setPendingNotifyKeyboardChanged:v15];
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v24 = _UIArbiterLog();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
          v26 = objc_opt_class();
          v60 = 138412546;
          if (v25)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          v61 = v26;
          v62 = 2112;
          v63 = v21;
          v28 = v26;
          LODWORD(v45) = 22;
          v29 = _os_log_send_and_compose_impl(v27, 0, &v66, 512, &dword_2557BA000, v24, 1, "[%@] skipping updateKeyboardUIStatus for %@", &v60, v45);

          v30 = +[_UIKeyboardArbiterDebug sharedInstance];
          v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v66];
          [v30 infoWithMessage:v31];

          if (v29 != &v66)
          {
            free(v29);
          }
        }

        else if (![statusCopy resizing] || objc_msgSend(v21, "active"))
        {
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v32 = _UIArbiterLog();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
          v34 = objc_opt_class();
          v60 = 138412546;
          if (v33)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          v61 = v34;
          v62 = 2112;
          v63 = v21;
          v36 = v34;
          LODWORD(v45) = 22;
          v37 = _os_log_send_and_compose_impl(v35, 0, &v66, 512, &dword_2557BA000, v32, 1, "[%@] sending updateKeyboardUIStatus to %@", &v60, v45);

          v38 = +[_UIKeyboardArbiterDebug sharedInstance];
          v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v66];
          [v38 infoWithMessage:v39];

          if (v37 != &v66)
          {
            free(v37);
          }

          (v15)[2](v15, v21);
        }
      }
    }

    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v52 objects:v59 count:16];
  }

  while (v17);

  if ((v18 & 1) == 0)
  {
    goto LABEL_36;
  }

  v40 = self->_pendingBundleIdentifier;
  self->_pendingBundleIdentifier = 0;

  v41 = 0;
LABEL_37:
  pendingNotifyKeyboardChanged = self->_pendingNotifyKeyboardChanged;
  self->_pendingNotifyKeyboardChanged = v41;

  [statusCopy resetAnimationFencing];
  [v47 resetAnimationFencing];

  objc_sync_exit(obj);
}

- (void)setActiveInputDestinationHandle:(id)handle
{
  obj = handle;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = obj;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if (!obj || !WeakRetained)
    {
      goto LABEL_6;
    }

    v8 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

    v6 = obj;
    if (v8 != obj)
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_129 onHandler:WeakRetained fromFunction:"[_UIKeyboardArbiter setActiveInputDestinationHandle:]"];
LABEL_6:

      v6 = obj;
    }
  }

  objc_storeWeak(&self->_activeInputDestinationHandle, v6);
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v11 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_131 onHandler:v12 fromFunction:"[_UIKeyboardArbiter setActiveInputDestinationHandle:]"];
    }
  }

  v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  if (!v13)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_133);
  }
}

- (void)updateKeyboardStatus:(id)status fromHandler:(id)handler fromFocus:(BOOL)focus
{
  focusCopy = focus;
  v222 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  handlerCopy = handler;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x277CBEB18] array];
  v167 = [(_UIKeyboardArbiter *)self hostForHandle:handlerCopy hosts:array];

  v9 = statusCopy;
  if (focusCopy || ([statusCopy keyboardOnScreen] & 1) != 0 || (v10 = objc_loadWeakRetained(&self->_activeInputDestinationHandle), v10, v10 == handlerCopy))
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if (WeakRetained)
    {
      v21 = WeakRetained;
      v22 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      if (v22 == handlerCopy || (pidOnDeviceLocked = selfCopy->_pidOnDeviceLocked, pidOnDeviceLocked != [handlerCopy processIdentifier]))
      {
      }

      else
      {
        v24 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        bundleIdentifier = [v24 bundleIdentifier];
        v26 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

        v9 = statusCopy;
        if ((v26 & 1) == 0)
        {
          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v194 = 0u;
          v195 = 0u;
          v192 = 0u;
          v193 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = _UIArbiterLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v29 = objc_opt_class();
          v30 = v29;
          bundleIdentifier2 = [handlerCopy bundleIdentifier];
          v32 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          v185 = 138412802;
          v186 = v29;
          v187 = 2112;
          v188 = bundleIdentifier2;
          v189 = 2112;
          v190 = v32;
          v17 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_2557BA000, v27, 2, "[%@] Skip keyboard change info from lastDeviceLocked app %@, for current keyboard on screen handle %@", &v185, 32);

          v33 = +[_UIKeyboardArbiterDebug sharedInstance];
          v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
          [v33 debugWithMessage:v34];

          goto LABEL_16;
        }
      }
    }

    if (([v9 keyboardOnScreen] & 1) == 0)
    {
      selfCopy->_pidOnDeviceLocked = 0;
    }

    bundleIdentifier3 = [v167 bundleIdentifier];
    v163 = [bundleIdentifier3 isEqualToString:@"com.apple.InputUI"];

    v36 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
    v37 = v36;
    if (v36 == handlerCopy)
    {
      v38 = statusCopy;
      keyboardOnScreen = [statusCopy keyboardOnScreen];

      if ((keyboardOnScreen & 1) == 0)
      {
        p_previouslyActiveHandle = &selfCopy->_previouslyActiveHandle;
        v43 = handlerCopy;
        goto LABEL_31;
      }
    }

    else
    {

      v38 = statusCopy;
    }

    v40 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
    if (v40 && [v38 keyboardOnScreen])
    {

      if (v163)
      {
        v41 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        objc_storeWeak(&selfCopy->_previouslyActiveHandle, v41);

        goto LABEL_32;
      }
    }

    else
    {
    }

    p_previouslyActiveHandle = &selfCopy->_previouslyActiveHandle;
    v43 = 0;
LABEL_31:
    objc_storeWeak(p_previouslyActiveHandle, v43);
LABEL_32:
    hostBundleIdentifier = [v38 hostBundleIdentifier];
    v45 = [hostBundleIdentifier isEqualToString:@"com.apple.InputUI"];

    if ((v45 & 1) == 0)
    {
      bundleIdentifier4 = [v167 bundleIdentifier];
      [statusCopy setHostBundleIdentifier:bundleIdentifier4];
    }

    [statusCopy setHostProcessIdentifier:{objc_msgSend(v167, "processIdentifier")}];
    [statusCopy setProcessIdentifier:{objc_msgSend(handlerCopy, "processIdentifier")}];
    sourceBundleIdentifier = [statusCopy sourceBundleIdentifier];

    if (!sourceBundleIdentifier)
    {
      bundleIdentifier5 = [handlerCopy bundleIdentifier];
      [statusCopy setSourceBundleIdentifier:bundleIdentifier5];
    }

    v49 = statusCopy;
    if ([statusCopy keyboardOnScreen])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      v52 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
      v49 = statusCopy;
      if (v52)
      {
        v53 = objc_loadWeakRetained(&selfCopy->_omniscientDelegate);
        if (objc_opt_respondsToSelector())
        {
          v54 = objc_loadWeakRetained(&selfCopy->_omniscientDelegate);
          remoteFocusContext = [handlerCopy remoteFocusContext];
          sceneIdentity = [remoteFocusContext sceneIdentity];
          v57 = [v54 shouldKeyboardBeWindowSizedForHostWithIdentity:sceneIdentity];

          v49 = statusCopy;
          if (v57)
          {
            v174 = [statusCopy copyWithoutIAVKeyboardRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
            goto LABEL_45;
          }
        }

        else
        {
        }
      }
    }

    [v49 keyboardPosition];
    v58 = [v49 copyWithoutIAVKeyboardRect:?];
    [v49 keyboardPosition];
    v60 = v59;
    [v49 keyboardPositionWithIAV];
    v174 = v58;
    if (vabdd_f64(v60, v61) > 0.00000011920929)
    {
      [v49 keyboardPositionWithIAV];
      [v58 setKeyboardPositionWithRemoteIAV:?];
    }

LABEL_45:
    obj = +[_UIKeyboardArbiterDebug sharedInstance];
    objc_sync_enter(obj);
    v62 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);

    if (v62 == handlerCopy)
    {
      goto LABEL_54;
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v64 = [(_UIKeyboardArbiter *)selfCopy hostForHandle:handlerCopy hosts:array2];

    v65 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
    if ([v65 running])
    {
      v66 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
      if ([v66 isKeyboardOnScreen])
      {
        lastUpdate = [(_UIKeyboardArbiter *)selfCopy lastUpdate];
        hostBundleIdentifier2 = [lastUpdate hostBundleIdentifier];
        if (![hostBundleIdentifier2 isEqualToString:@"com.apple.springboard"])
        {

LABEL_152:
          v162 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [handlerCopy setPrevActiveIdentifier:{objc_msgSend(v162, "processIdentifier")}];

          [v64 setPrevActiveIdentifier:{objc_msgSend(handlerCopy, "prevActiveIdentifier")}];
          goto LABEL_53;
        }

        bundleIdentifier6 = [v64 bundleIdentifier];
        v70 = [bundleIdentifier6 isEqualToString:@"com.apple.springboard"];

        if (v70)
        {
          goto LABEL_152;
        }

LABEL_53:

LABEL_54:
        keyboardOnScreen2 = [statusCopy keyboardOnScreen];
        v72 = handlerCopy;
        if (!keyboardOnScreen2)
        {
          v72 = 0;
        }

        v166 = v72;
        if (((v166 == 0) & v163) == 1)
        {
          v73 = objc_loadWeakRetained(&selfCopy->_previouslyActiveHandle);

          if (v73)
          {
            v74 = _UIArbiterEventsLog();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = objc_loadWeakRetained(&selfCopy->_previouslyActiveHandle);
              descriptionForLog = [v75 descriptionForLog];
              *buf = 138543362;
              *&buf[4] = descriptionForLog;
              _os_log_impl(&dword_2557BA000, v74, OS_LOG_TYPE_DEFAULT, "Trying to restore previouslyActiveHandle: %{public}@", buf, 0xCu);
            }
          }

          v166 = objc_loadWeakRetained(&selfCopy->_previouslyActiveHandle);
        }

        v164 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);

        inputUIOOP = [MEMORY[0x277D75658] inputUIOOP];
        if (v166)
        {
          v78 = 0;
        }

        else
        {
          v78 = inputUIOOP;
        }

        if (v78 == 1)
        {
          v79 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          if (v79 && ([handlerCopy bundleIdentifier], v80 = objc_claimAutoreleasedReturnValue(), v81 = objc_msgSend(v80, "isEqualToString:", @"com.apple.Spotlight"), v80, v81))
          {
            v82 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            bundleIdentifier7 = [v82 bundleIdentifier];
            v84 = [bundleIdentifier7 isEqualToString:@"com.apple.Spotlight"];

            if ((v84 & 1) == 0)
            {
              v166 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
              v220 = 0u;
              v221 = 0u;
              v218 = 0u;
              v219 = 0u;
              v216 = 0u;
              v217 = 0u;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v210 = 0u;
              v211 = 0u;
              v208 = 0u;
              v209 = 0u;
              v206 = 0u;
              v207 = 0u;
              v204 = 0u;
              v205 = 0u;
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              v196 = 0u;
              v197 = 0u;
              v194 = 0u;
              v195 = 0u;
              v192 = 0u;
              v193 = 0u;
              memset(buf, 0, sizeof(buf));
              v85 = _UIArbiterLog();
              v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG);
              v87 = objc_opt_class();
              v88 = v87;
              if (v86)
              {
                v89 = 3;
              }

              else
              {
                v89 = 2;
              }

              v90 = v87;
              v91 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
              v185 = 138412546;
              v186 = v88;
              v187 = 2112;
              v188 = v91;
              v92 = _os_log_send_and_compose_impl(v89, 0, buf, 512, &dword_2557BA000, v85, 2, "[%@] rejecting Spotlight's keyboardChange because %@ is active", &v185, 22);

              v93 = +[_UIKeyboardArbiterDebug sharedInstance];
              v94 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
              [v93 debugWithMessage:v94];

              if (v92 != buf)
              {
                free(v92);
              }

              [statusCopy resetAnimationFencing];
              [v174 resetAnimationFencing];
LABEL_149:

              objc_sync_exit(obj);
              goto LABEL_150;
            }
          }

          else
          {
          }
        }

        v95 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        prevActiveIdentifier = [v95 prevActiveIdentifier];
        if (prevActiveIdentifier == [handlerCopy processIdentifier])
        {
          v97 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          bundleIdentifier8 = [v97 bundleIdentifier];
          if ([bundleIdentifier8 isEqualToString:@"com.apple.siri"])
          {

            goto LABEL_96;
          }

          v118 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          bundleIdentifier9 = [v118 bundleIdentifier];
          v120 = [bundleIdentifier9 isEqualToString:@"com.apple.WritingToolsUIService"];

          if (v120)
          {
LABEL_96:
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            memset(buf, 0, sizeof(buf));
            v121 = _UIArbiterLog();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
            {
              v122 = 3;
            }

            else
            {
              v122 = 2;
            }

            v123 = objc_opt_class();
            bundleIdentifier10 = [handlerCopy bundleIdentifier];
            v125 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            bundleIdentifier11 = [v125 bundleIdentifier];
            v185 = 138412802;
            v186 = v123;
            v187 = 2112;
            v188 = bundleIdentifier10;
            v189 = 2112;
            v190 = bundleIdentifier11;
            v127 = _os_log_send_and_compose_impl(v122, 0, buf, 512, &dword_2557BA000, v121, 2, "[%@] rejecting %@'s keyboardChange because %@ is active", &v185, 32);

            v128 = +[_UIKeyboardArbiterDebug sharedInstance];
            v129 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
            [v128 debugWithMessage:v129];

            if (v127 != buf)
            {
              free(v127);
            }

            goto LABEL_149;
          }
        }

        else
        {
        }

        v99 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
        bundleIdentifier12 = [v99 bundleIdentifier];
        if ([bundleIdentifier12 isEqualToString:@"com.apple.CoreAuthUI"])
        {
        }

        else
        {
          bundleIdentifier13 = [v99 bundleIdentifier];
          v102 = [bundleIdentifier13 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

          if (!v102)
          {
            goto LABEL_91;
          }
        }

        if ([statusCopy keyboardOnScreen])
        {
          v103 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          isKeyboardOnScreen = [v103 isKeyboardOnScreen];

          if (isKeyboardOnScreen)
          {
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v194 = 0u;
            v195 = 0u;
            v192 = 0u;
            v193 = 0u;
            memset(buf, 0, sizeof(buf));
            v105 = _UIArbiterLog();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
            {
              v106 = 3;
            }

            else
            {
              v106 = 2;
            }

            v107 = objc_opt_class();
            bundleIdentifier14 = [handlerCopy bundleIdentifier];
            v109 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            bundleIdentifier15 = [v109 bundleIdentifier];
            v185 = 138412802;
            v186 = v107;
            v187 = 2112;
            v188 = bundleIdentifier14;
            v189 = 2112;
            v190 = bundleIdentifier15;
            v111 = _os_log_send_and_compose_impl(v106, 0, buf, 512, &dword_2557BA000, v105, 2, "[%@] rejecting %@'s keyboardChange because %@ is active", &v185, 32);

            v112 = +[_UIKeyboardArbiterDebug sharedInstance];
            v113 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
            [v112 debugWithMessage:v113];

            if (v111 != buf)
            {
              free(v111);
            }

            processIdentifier = [handlerCopy processIdentifier];
            v115 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            [v115 setPrevActiveIdentifier:processIdentifier];

            goto LABEL_149;
          }

LABEL_92:
          if ([statusCopy keyboardOnScreen])
          {
            goto LABEL_105;
          }

          v116 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          bundleIdentifier16 = [v116 bundleIdentifier];
          if ([bundleIdentifier16 isEqualToString:@"com.apple.CoreAuthUI"])
          {
          }

          else
          {
            bundleIdentifier17 = [v116 bundleIdentifier];
            v131 = [bundleIdentifier17 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

            if (!v131)
            {
              goto LABEL_104;
            }
          }

          v132 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          v133 = [v132 prevActiveIdentifier] == 0;

          if (v133)
          {
            goto LABEL_105;
          }

          v134 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [v134 activeProcessResign];

          v116 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [v116 setPrevActiveIdentifier:0];
LABEL_104:

LABEL_105:
          v182[0] = MEMORY[0x277D85DD0];
          v182[1] = 3221225472;
          v182[2] = __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke;
          v182[3] = &unk_2797F48F8;
          v182[4] = selfCopy;
          v135 = handlerCopy;
          v183 = v135;
          v170 = MEMORY[0x259C414B0](v182);
          if (!focusCopy || (v136 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle), v137 = v136 == 0, v136, v137))
          {
            v173 = 0;
          }

          else
          {
            v173 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            v170[2]();
          }

          [(_UIKeyboardArbiter *)selfCopy setActiveInputDestinationHandle:v166];
          v138 = _UIArbiterEventsLog();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
          {
            v139 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            descriptionForLog2 = [v139 descriptionForLog];
            *buf = 138543362;
            *&buf[4] = descriptionForLog2;
            _os_log_impl(&dword_2557BA000, v138, OS_LOG_TYPE_DEFAULT, "set activeInputDestination:%{public}@", buf, 0xCu);
          }

          v141 = _UIArbiterLog();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v142 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
            *buf = 138543618;
            *&buf[4] = v142;
            *&buf[12] = 2114;
            *&buf[14] = statusCopy;
            _os_log_impl(&dword_2557BA000, v141, OS_LOG_TYPE_DEFAULT, "active input destination is now %{public}@; information: %{public}@", buf, 0x16u);
          }

          if ([statusCopy keyboardOnScreen])
          {
            v143 = v174;
          }

          else
          {
            v143 = 0;
          }

          [(_UIKeyboardArbiter *)selfCopy setLastUpdate:v143];
          v144 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
          [(_UIKeyboardArbiter *)selfCopy _trackRecentlyActiveArbiterHandle:v144];

          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          v171 = selfCopy->_clients;
          v145 = [(NSMutableArray *)v171 countByEnumeratingWithState:&v178 objects:v184 count:16];
          if (v145)
          {
            v146 = *v179;
            do
            {
              for (i = 0; i != v145; ++i)
              {
                if (*v179 != v146)
                {
                  objc_enumerationMutation(v171);
                }

                v148 = *(*(&v178 + 1) + 8 * i);
                v149 = v174;
                if ([v148 isHandlerShowableWithHandler:v135])
                {
                  v150 = statusCopy;

                  if ([v148 wantedState] && (objc_msgSend(v148, "active") & 1) == 0)
                  {
                    sceneLayer = [v148 sceneLayer];
                    contextID = [sceneLayer contextID];
                    remoteFocusContext2 = [v148 remoteFocusContext];
                    [v148 level];
                    [v148 setWindowContextID:contextID focusContext:remoteFocusContext2 windowState:1 withLevel:?];
                  }
                }

                else
                {
                  v150 = v149;
                }

                if (v148 != v135 || [v135 multipleScenes])
                {
                  if ([v148 active] && objc_msgSend(v148, "deactivating"))
                  {
                    bundleIdentifier18 = [v135 bundleIdentifier];
                    v155 = [bundleIdentifier18 isEqualToString:@"com.apple.Spotlight"];

                    if ((v155 & 1) == 0)
                    {
                      v156 = v135;
                      bundleIdentifier19 = [v156 bundleIdentifier];
                      if ([bundleIdentifier19 isEqualToString:@"com.apple.CoreAuthUI"])
                      {
                      }

                      else
                      {
                        bundleIdentifier20 = [v156 bundleIdentifier];
                        v159 = [bundleIdentifier20 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

                        if ((v159 & 1) == 0)
                        {
                          [(_UIKeyboardArbiter *)selfCopy runOperations:&__block_literal_global_153 onHandler:v148 fromFunction:"[_UIKeyboardArbiter updateKeyboardStatus:fromHandler:fromFocus:]"];
                        }
                      }
                    }

                    if (v148 != v173)
                    {
                      v160 = dispatch_time(0, 500000000);
                      queue = selfCopy->_queue;
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke_2_154;
                      block[3] = &unk_2797F4920;
                      block[4] = v148;
                      block[5] = selfCopy;
                      v177 = v170;
                      v176 = v150;
                      dispatch_after(v160, queue, block);
                    }
                  }

                  else if (v148 != v173)
                  {
                    (v170[2])(v170, v148, v150);
                  }
                }
              }

              v145 = [(NSMutableArray *)v171 countByEnumeratingWithState:&v178 objects:v184 count:16];
            }

            while (v145);
          }

          [statusCopy resetAnimationFencing];
          [v174 resetAnimationFencing];
          if (v166 != v164 && (([MEMORY[0x277D75658] inputUIOOP] & 1) != 0 || v163 && objc_msgSend(MEMORY[0x277D75658], "usesInputSystemUIForAutoFillOnly")))
          {
            [(_UIKeyboardArbiter *)selfCopy reevaluateSceneClientSettings];
          }

          [(_UIKeyboardArbiter *)selfCopy scheduleWindowTimeout];
          if (([statusCopy resizing] & 1) == 0)
          {
            [(_UIKeyboardArbiter *)selfCopy captureStateForDebug];
          }

          goto LABEL_149;
        }

LABEL_91:

        goto LABEL_92;
      }
    }

    goto LABEL_53;
  }

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  memset(buf, 0, sizeof(buf));
  v11 = _UIArbiterLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = objc_opt_class();
  v14 = v13;
  bundleIdentifier21 = [handlerCopy bundleIdentifier];
  v16 = objc_loadWeakRetained(&selfCopy->_activeInputDestinationHandle);
  v185 = 138412802;
  v186 = v13;
  v187 = 2112;
  v188 = bundleIdentifier21;
  v189 = 2112;
  v190 = v16;
  v17 = _os_log_send_and_compose_impl(v12, 0, buf, 512, &dword_2557BA000, v11, 2, "[%@] Skip keyboard down change info from %@, due to the keyboard is on screen for handle %@", &v185, 32);

  v18 = +[_UIKeyboardArbiterDebug sharedInstance];
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v18 debugWithMessage:v19];

LABEL_16:
  if (v17 != buf)
  {
    free(v17);
  }

LABEL_150:
}

- (void)completeKeyboardStatusChangedFromHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (v10 != handlerCopy)
        {
          [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_156 onHandler:v10 fromFunction:"[_UIKeyboardArbiter completeKeyboardStatusChangedFromHandler:]", v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler checklist:(id)checklist
{
  v24 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  handlerCopy = handler;
  checklistCopy = checklist;
  v11 = checklistCopy;
  if (handleCopy)
  {
    [checklistCopy addObject:handleCopy];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_clients;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v13)
  {

LABEL_16:
    handlerCopy[2](handlerCopy, handleCopy);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v20;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v20 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v19 + 1) + 8 * i);
      if (([v11 containsObject:{v18, v19}] & 1) == 0 && objc_msgSend(v18, "isHostingPID:", objc_msgSend(handleCopy, "processIdentifier")))
      {
        ++v15;
        [(_UIKeyboardArbiter *)self _findForHandle:v18 deepestHandleHandler:handlerCopy checklist:v11];
      }
    }

    v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v14);

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_17:
}

- (void)_findForHandle:(id)handle deepestHandleHandler:(id)handler
{
  v6 = MEMORY[0x277CBEB18];
  handlerCopy = handler;
  handleCopy = handle;
  array = [v6 array];
  [(_UIKeyboardArbiter *)self _findForHandle:handleCopy deepestHandleHandler:handlerCopy checklist:array];
}

- (void)notifyHeightUpdated:(id)updated
{
  v36 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __42___UIKeyboardArbiter_notifyHeightUpdated___block_invoke;
  v32[3] = &unk_2797F4948;
  v32[4] = self;
  v6 = dictionary;
  v33 = v6;
  [(_UIKeyboardArbiter *)self _findForHandle:updatedCopy deepestHandleHandler:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v28 + 1) + 8 * i) doubleValue];
        if (v11 < v13)
        {
          v11 = v13;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = v6;
  allKeys = [v6 allKeys];
  v15 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        intValue = [v19 intValue];
        if (intValue != [updatedCopy processIdentifier])
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __42___UIKeyboardArbiter_notifyHeightUpdated___block_invoke_2;
          v23[3] = &__block_descriptor_40_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
          *&v23[4] = v11;
          v21 = -[_UIKeyboardArbiter handlerForPID:](self, "handlerForPID:", [v19 intValue]);
          [(_UIKeyboardArbiter *)self runOperations:v23 onHandler:v21 fromFunction:"[_UIKeyboardArbiter notifyHeightUpdated:]"];
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v16);
  }
}

- (void)newClientConnected:(id)connected withExpectedState:(id)state onConnected:(id)onConnected
{
  connectedCopy = connected;
  stateCopy = state;
  onConnectedCopy = onConnected;
  dispatch_assert_queue_V2(self->_queue);
  if ([stateCopy keyboardOnScreen] && (v11 = objc_loadWeakRetained(&self->_disablingHandle), v11, !v11))
  {
    v18 = stateCopy;
    if (self->_pidOnDeviceLocked >= 1 && [connectedCopy processIdentifier] == self->_pidOnDeviceLocked)
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

      if (WeakRetained)
      {
        informationForKeyboardDown = [MEMORY[0x277D76088] informationForKeyboardDown];

        v18 = informationForKeyboardDown;
      }

      else
      {
        self->_pidOnDeviceLocked = 0;
      }
    }

    [(_UIKeyboardArbiter *)self updateKeyboardStatus:v18 fromHandler:connectedCopy];
    (*(onConnectedCopy + 2))(onConnectedCopy, 0, 0, self->_lastEventSource, 0);
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    deactivating = [v12 deactivating];

    if (deactivating)
    {
      deactivating2 = 1;
    }

    else
    {
      v15 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      remoteFocusContext = [v15 remoteFocusContext];
      sceneIdentity = [remoteFocusContext sceneIdentity];

      if (sceneIdentity)
      {
        deactivating2 = 0;
      }

      else
      {
        v21 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
        array = [MEMORY[0x277CBEB18] array];
        v23 = [(_UIKeyboardArbiter *)self hostForHandle:v21 hosts:array];

        deactivating2 = [v23 deactivating];
      }
    }

    lastUpdate = [(_UIKeyboardArbiter *)self lastUpdate];

    if (!lastUpdate || deactivating2)
    {
      informationForKeyboardDown2 = [MEMORY[0x277D76088] informationForKeyboardDown];
    }

    else
    {
      informationForKeyboardDown2 = [(_UIKeyboardArbiter *)self lastUpdate];
    }

    v18 = informationForKeyboardDown2;
    lastUIInformation = self->_lastUIInformation;
    if ((lastUIInformation == 0) | deactivating2 & 1)
    {
      v27 = objc_alloc(MEMORY[0x277D76090]);
      v28 = [v27 initWithKeyboardFrame:0 onScreen:0 animated:0 tracking:0 wantsFence:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    }

    else
    {
      v28 = lastUIInformation;
    }

    v29 = v28;
    lastEventSource = self->_lastEventSource;
    v31 = objc_loadWeakRetained(&self->_disablingHandle);
    (*(onConnectedCopy + 2))(onConnectedCopy, v18, v29, lastEventSource, v31 != 0);
  }

  bundleIdentifier = [connectedCopy bundleIdentifier];
  v33 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  v41 = connectedCopy;
  bundleIdentifier2 = [v41 bundleIdentifier];
  if ([bundleIdentifier2 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    v35 = 1;
  }

  else
  {
    bundleIdentifier3 = [v41 bundleIdentifier];
    v35 = [bundleIdentifier3 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
  }

  v37 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (!v37 || (v38 = v37, v39 = objc_loadWeakRetained(&self->_activeInputDestinationHandle), v40 = (v39 == v41) | v33 | v35, v39, v38, (v40 & 1) != 0))
  {
    [(_UIKeyboardArbiter *)self handlerRequestedFocus:v41 shouldStealKeyboard:0];
  }
}

- (id)lastActivatedHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_lastActivatedHandle);

  return WeakRetained;
}

- (BOOL)activateHandle:(id)handle
{
  v81 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dispatch_assert_queue_V2(self->_queue);
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  isAvailable = [sceneLink isAvailable];

  if ((isAvailable & 1) == 0)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = _UIArbiterLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) ? 3 : 2;
    v43 = 138412290;
    v44 = handleCopy;
    v9 = _os_log_send_and_compose_impl(v8, 0, &v49, 512, &dword_2557BA000, v7, 16, "Client %@ attempted to connect, but no scene", &v43, 12);

    v10 = +[_UIKeyboardArbiterDebug sharedInstance];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v49];
    [v10 errorWithMessage:v11];

    if (v9 != &v49)
    {
      free(v9);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained && (v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle), v14 = [handleCopy isHandlerShowableWithHandler:v13], v13, WeakRetained, (v14 & 1) == 0))
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = _UIArbiterLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v35 = objc_opt_class();
    v36 = v35;
    v37 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    v43 = 138412802;
    v44 = v35;
    v45 = 2112;
    v46 = handleCopy;
    v47 = 2112;
    v48 = v37;
    LODWORD(v42) = 32;
    v38 = _os_log_send_and_compose_impl(v34, 0, &v49, 512, &dword_2557BA000, v33, 16, "[%@] Rejecting attach for %@ (currently %@)", &v43, v42);

    v39 = +[_UIKeyboardArbiterDebug sharedInstance];
    v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v49];
    [v39 errorWithMessage:v40];

    if (v38 != &v49)
    {
      free(v38);
    }

    v32 = 0;
  }

  else
  {
    sceneLayer = [handleCopy sceneLayer];
    sceneLink2 = [(_UIKeyboardArbiter *)self sceneLink];
    isAvailable2 = [sceneLink2 isAvailable];
    if (sceneLayer)
    {
      v18 = isAvailable2;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      p_sceneLayer = &selfCopy->_sceneLayer;
      if (selfCopy->_sceneLayer)
      {
        sceneLink3 = [(_UIKeyboardArbiter *)selfCopy sceneLink];
        [sceneLink3 detach:*p_sceneLayer];

        v22 = *p_sceneLayer;
        *p_sceneLayer = 0;
      }

      objc_storeStrong(&selfCopy->_sceneLayer, sceneLayer);
      objc_sync_exit(selfCopy);

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v23 = _UIArbiterLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = objc_opt_class();
      v43 = 138412802;
      v44 = v25;
      v45 = 2112;
      v46 = handleCopy;
      v47 = 2112;
      v48 = sceneLayer;
      v26 = v25;
      LODWORD(v42) = 32;
      v27 = _os_log_send_and_compose_impl(v24, 0, &v49, 512, &dword_2557BA000, v23, 2, "[%@] Attaching [%@] %@", &v43, v42);

      v28 = +[_UIKeyboardArbiterDebug sharedInstance];
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v49];
      [v28 debugWithMessage:v29];

      if (v27 != &v49)
      {
        free(v27);
      }

      sceneLink4 = [(_UIKeyboardArbiter *)selfCopy sceneLink];
      [sceneLink4 attach:sceneLayer];

      [handleCopy didAttachLayer];
    }

    if (([handleCopy inputUIHost] & 1) == 0)
    {
      v31 = objc_loadWeakRetained(&self->_lastActivatedHandle);
      [v31 clearAcquiringFocus];

      objc_storeWeak(&self->_lastActivatedHandle, handleCopy);
      [(_UIKeyboardArbiter *)self handlerRequestedFocus:handleCopy shouldStealKeyboard:0];
    }

    v32 = 1;
  }

  return v32;
}

- (void)checkHostingState
{
  v87 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_keyboardUIHandle);

    if (v5)
    {
      array = [MEMORY[0x277CBEB18] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = self->_clients;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v45 objects:v86 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v46;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v46 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v45 + 1) + 8 * i);
            if (([v12 inputUIHost] & 1) == 0)
            {
              if ([v12 running])
              {
                if ([v12 wantedState])
                {
                  if (([v12 active] & 1) == 0)
                  {
                    v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
                    v14 = [v12 isHandlerShowableWithHandler:v13];

                    if (v14)
                    {
                      [array addObject:v12];
                    }
                  }
                }
              }
            }
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v45 objects:v86 count:16];
        }

        while (v9);
      }

      if (![array count])
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v22 = _UIArbiterLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v24 = objc_opt_class();
        v50 = 138412290;
        v51 = v24;
        v25 = v24;
        v26 = _os_log_send_and_compose_impl(v23, 0, &v54, 512, &dword_2557BA000, v22, 16, "[%@] Found no clients", &v50, 12);

        v27 = +[_UIKeyboardArbiterDebug sharedInstance];
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
        [v27 errorWithMessage:v28];

        if (v26 != &v54)
        {
          free(v26);
        }

        goto LABEL_41;
      }

      if ([array count] < 2)
      {
        v84 = 0uLL;
        v85 = 0uLL;
        v82 = 0uLL;
        v83 = 0uLL;
        v80 = 0uLL;
        v81 = 0uLL;
        v78 = 0uLL;
        v79 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        v74 = 0uLL;
        v75 = 0uLL;
        v72 = 0uLL;
        v73 = 0uLL;
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v29 = _UIArbiterLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v31 = objc_opt_class();
        v32 = v31;
        lastObject = [array lastObject];
        v50 = 138412546;
        v51 = v31;
        v52 = 2112;
        v53 = lastObject;
        v19 = _os_log_send_and_compose_impl(v30, 0, &v54, 512, &dword_2557BA000, v29, 2, "[%@] Found expected client: %@", &v50, 22);

        v34 = +[_UIKeyboardArbiterDebug sharedInstance];
        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
        [v34 debugWithMessage:v35];

        if (v19 == &v54)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v84 = 0uLL;
        v85 = 0uLL;
        v82 = 0uLL;
        v83 = 0uLL;
        v80 = 0uLL;
        v81 = 0uLL;
        v78 = 0uLL;
        v79 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        v74 = 0uLL;
        v75 = 0uLL;
        v72 = 0uLL;
        v73 = 0uLL;
        v70 = 0uLL;
        v71 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v15 = _UIArbiterLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v17 = objc_opt_class();
        v50 = 138412546;
        v51 = v17;
        v52 = 2112;
        v53 = array;
        v18 = v17;
        v19 = _os_log_send_and_compose_impl(v16, 0, &v54, 512, &dword_2557BA000, v15, 16, "[%@] Found several potential clients: %@", &v50, 22);

        v20 = +[_UIKeyboardArbiterDebug sharedInstance];
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
        [v20 errorWithMessage:v21];

        if (v19 == &v54)
        {
          goto LABEL_33;
        }
      }

      free(v19);
LABEL_33:
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v36 = array;
      v37 = [v36 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v42;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(v36);
            }

            [*(*(&v41 + 1) + 8 * j) checkActivation:1];
          }

          v38 = [v36 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v38);
      }

      [(_UIKeyboardArbiter *)self reevaluateSceneClientSettings];
      [(_UIKeyboardArbiter *)self updateKeyboardSceneSettings];
LABEL_41:
    }
  }
}

- (BOOL)deactivateHandle:(id)handle
{
  v31 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dispatch_assert_queue_V2(self->_queue);
  [handleCopy clearAcquiringFocus];
  sceneLayer = [handleCopy sceneLayer];
  sceneLink = [(_UIKeyboardArbiter *)self sceneLink];
  if ([sceneLink isAvailable] && sceneLayer || (objc_msgSend(MEMORY[0x277D75658], "inputUIOOP") & 1) != 0)
  {
  }

  else
  {
    requiresInputUIForAutofillUIOnly = [handleCopy requiresInputUIForAutofillUIOnly];

    if ((requiresInputUIForAutofillUIOnly & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  memset(v30, 0, sizeof(v30));
  v7 = _UIArbiterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v24 = 138412802;
  v25 = objc_opt_class();
  v26 = 2112;
  v27 = handleCopy;
  v28 = 2112;
  v29 = sceneLayer;
  v9 = v25;
  v10 = _os_log_send_and_compose_impl(v8, 0, v30, 512, &dword_2557BA000, v7, 2, "[%@] Detaching [%@] %@", &v24, 32);

  v11 = +[_UIKeyboardArbiterDebug sharedInstance];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v30];
  [v11 debugWithMessage:v12];

  if (v10 != v30)
  {
    free(v10);
  }

  if (sceneLayer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_sceneLayer == sceneLayer)
    {
      sceneLink2 = [(_UIKeyboardArbiter *)selfCopy sceneLink];
      [sceneLink2 detach:sceneLayer];

      sceneLayer = selfCopy->_sceneLayer;
      selfCopy->_sceneLayer = 0;
    }

    objc_sync_exit(selfCopy);

    [handleCopy didDetachLayer];
  }

  WeakRetained = objc_loadWeakRetained(&self->_previouslyActiveHandle);
  v17 = WeakRetained == handleCopy;

  if (v17)
  {
    objc_storeWeak(&self->_previouslyActiveHandle, 0);
    [(_UIKeyboardArbiter *)self scheduleWindowTimeout];
  }

  v18 = objc_loadWeakRetained(&self->_lastActivatedHandle);
  v19 = v18 == handleCopy;

  if (v19)
  {
    objc_storeWeak(&self->_lastActivatedHandle, 0);
  }

  _activeHandleForFocusEvaluation = [(_UIKeyboardArbiter *)self _activeHandleForFocusEvaluation];
  v21 = _activeHandleForFocusEvaluation == 0;

  if (v21)
  {
    [(_UIKeyboardArbiter *)self reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:0];
  }

LABEL_21:

  return 0;
}

- (void)handleUnexpectedDeallocForHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56___UIKeyboardArbiter_handleUnexpectedDeallocForHandler___block_invoke;
  v9[3] = &unk_2797F45E0;
  v5 = handlerCopy;
  v10 = v5;
  selfCopy = self;
  v6 = MEMORY[0x259C414B0](v9);
  v7 = dispatch_get_current_queue();
  queue = self->_queue;
  if (v7 == queue)
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(queue, v6);
  }
}

- (void)updateSceneClientSettings:(id)settings
{
  v71 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  settingsCopy = settings;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    [v7 level];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  focusContext = [(_UIKeyboardArbiter *)self focusContext];
  if (v9 < 2.0)
  {
    v9 = 2.0;
  }

  [settingsCopy setPreferredLevel:v9];
  sceneIdentity = [focusContext sceneIdentity];
  [settingsCopy setPreferredSceneHostIdentity:sceneIdentity];

  if (([MEMORY[0x277D75658] inputUIOOP] & 1) == 0)
  {
    if (![MEMORY[0x277D75658] usesInputSystemUIForAutoFillOnly])
    {
      goto LABEL_12;
    }

    v12 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if (![v12 requiresInputUIForAutofillUIOnly])
    {
LABEL_11:

LABEL_12:
      if (focusContext)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

    v13 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    if ([v13 deactivating])
    {

      goto LABEL_11;
    }
  }

LABEL_15:
  v14 = _UIArbiterLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[_UIKeyboardArbiter updateSceneClientSettings:]";
    *&buf[12] = 2112;
    *&buf[14] = objc_opt_class();
    *&buf[22] = 2112;
    *&buf[24] = focusContext;
    LOWORD(v41) = 2048;
    *(&v41 + 2) = v9;
    v35 = *&buf[14];
    _os_log_debug_impl(&dword_2557BA000, v14, OS_LOG_TYPE_DEBUG, "%s  [%@] Updating focus context to %@ level %f", buf, 0x2Au);
  }

  sceneDelegate = [(_UIKeyboardArbiter *)self sceneDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    sceneDelegate2 = [(_UIKeyboardArbiter *)self sceneDelegate];
    sceneIdentity2 = [focusContext sceneIdentity];
    [sceneDelegate2 focusedSceneIdentityDidChange:sceneIdentity2];
  }

  sceneDelegate3 = [(_UIKeyboardArbiter *)self sceneDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    sceneIdentity3 = [focusContext sceneIdentity];
    if (sceneIdentity3 && (v22 = sceneIdentity3, v23 = [focusContext contextID], v22, !v23))
    {
      sceneDelegate4 = _UIArbiterLog();
      if (os_log_type_enabled(sceneDelegate4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[_UIKeyboardArbiter updateSceneClientSettings:]";
        *&buf[12] = 2112;
        *&buf[14] = focusContext;
        _os_log_debug_impl(&dword_2557BA000, sceneDelegate4, OS_LOG_TYPE_DEBUG, "%s  skipping updating focustContext = %@", buf, 0x16u);
      }
    }

    else
    {
      sceneDelegate4 = [(_UIKeyboardArbiter *)self sceneDelegate];
      [sceneDelegate4 focusContextDidChange:focusContext];
    }
  }

  sceneDelegate5 = [(_UIKeyboardArbiter *)self sceneDelegate];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    v27 = _UIArbiterLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v29 = objc_opt_class();
    v30 = v29;
    v36 = 138412546;
    v37 = v29;
    v38 = 2048;
    keyboardScenePresentationMode = [(_UIKeyboardArbiter *)self keyboardScenePresentationMode];
    v31 = _os_log_send_and_compose_impl(v28, 0, buf, 512, &dword_2557BA000, v27, 2, "[%@] invoke didChangeKeyboardScenePresentationMode: %lu", &v36, 22);

    v32 = +[_UIKeyboardArbiterDebug sharedInstance];
    v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v32 debugWithMessage:v33];

    if (v31 != buf)
    {
      free(v31);
    }

    sceneDelegate6 = [(_UIKeyboardArbiter *)self sceneDelegate];
    [sceneDelegate6 focusContext:focusContext didChangeKeyboardScenePresentationMode:{-[_UIKeyboardArbiter keyboardScenePresentationMode](self, "keyboardScenePresentationMode")}];
  }

LABEL_33:
}

- (void)prewarmFocusContext
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_focusRequestedHandle);
    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_focusRequestedHandle);
      [v5 level];
    }

    v6 = objc_loadWeakRetained(&self->_focusRequestedHandle);
    remoteFocusContext = [v6 remoteFocusContext];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_clients;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v13 active])
          {
            remoteFocusContext2 = [v13 remoteFocusContext];
            sceneIdentity = [remoteFocusContext2 sceneIdentity];

            if (sceneIdentity)
            {
              v16 = objc_loadWeakRetained(&self->_focusRequestedHandle);
              v17 = [v13 isHandlerShowableWithHandler:v16];

              if (v17)
              {
                [v13 level];
                remoteFocusContext3 = [v13 remoteFocusContext];

                remoteFocusContext = remoteFocusContext3;
              }
            }
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v10);
    }

    sceneDelegate = [(_UIKeyboardArbiter *)self sceneDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      sceneIdentity2 = [remoteFocusContext sceneIdentity];
      if (sceneIdentity2 && (v22 = sceneIdentity2, v23 = [remoteFocusContext contextID], v22, !v23))
      {
        sceneDelegate2 = _UIArbiterLog();
        if (os_log_type_enabled(sceneDelegate2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v30 = "[_UIKeyboardArbiter prewarmFocusContext]";
          v31 = 2112;
          v32 = remoteFocusContext;
          _os_log_debug_impl(&dword_2557BA000, sceneDelegate2, OS_LOG_TYPE_DEBUG, "%s  skipping prewarming focustContext = %@", buf, 0x16u);
        }
      }

      else
      {
        sceneDelegate2 = [(_UIKeyboardArbiter *)self sceneDelegate];
        [sceneDelegate2 focusContextDidChange:remoteFocusContext];
      }
    }
  }
}

- (void)updateSuppression:(BOOL)suppression ofPID:(id)d active:(BOOL)active
{
  activeCopy = active;
  suppressionCopy = suppression;
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = -[_UIKeyboardArbiter handlerForPID:](self, "handlerForPID:", [dCopy intValue]);
  if (v9)
  {
    v10 = _UIArbiterEventsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (suppressionCopy)
      {
        v11 = "Y";
      }

      else
      {
        v11 = "N";
      }

      intValue = [dCopy intValue];
      *buf = 136315650;
      if (activeCopy)
      {
        v13 = "Y";
      }

      else
      {
        v13 = "N";
      }

      v17 = v11;
      v18 = 1024;
      v19 = intValue;
      v20 = 2080;
      v21 = v13;
      _os_log_impl(&dword_2557BA000, v10, OS_LOG_TYPE_DEFAULT, "updateSuppression:%s pid:%d active:%s", buf, 0x1Cu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53___UIKeyboardArbiter_updateSuppression_ofPID_active___block_invoke;
    v14[3] = &__block_descriptor_33_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
    v15 = suppressionCopy;
    [(_UIKeyboardArbiter *)self runOperations:v14 onHandler:v9 fromFunction:"[_UIKeyboardArbiter updateSuppression:ofPID:active:]"];
    [v9 notifyHostedPIDsOfSuppression:suppressionCopy active:activeCopy];
  }
}

- (void)setSuppressionCount:(int)count ofPIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = ds;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = -[_UIKeyboardArbiter handlerForPID:](self, "handlerForPID:", [v10 intValue]);
        if ([v11 suppressionCount] != count)
        {
          suppressionCount = [v11 suppressionCount];
          v13 = count - suppressionCount;
          if (count != suppressionCount)
          {
            if (v13 >= 0)
            {
              v14 = count - suppressionCount;
            }

            else
            {
              v14 = suppressionCount - count;
            }

            if (v14 <= 1)
            {
              v15 = 1;
            }

            else
            {
              v15 = v14;
            }

            do
            {
              -[_UIKeyboardArbiter updateSuppression:ofPID:active:](self, "updateSuppression:ofPID:active:", v13 > 0, v10, [v11 active]);
              --v15;
            }

            while (v15);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)updateSuppression:(BOOL)suppression ofPIDs:(id)ds active:(BOOL)active
{
  activeCopy = active;
  suppressionCopy = suppression;
  v34 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  memset(v33, 0, sizeof(v33));
  v9 = _UIArbiterLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = objc_opt_class();
  v12 = @"NO";
  v27 = 138412802;
  v28 = v11;
  v29 = 2112;
  if (suppressionCopy)
  {
    v12 = @"YES";
  }

  v30 = v12;
  v31 = 2112;
  v32 = dsCopy;
  v13 = v11;
  v14 = _os_log_send_and_compose_impl(v10, 0, v33, 512, &dword_2557BA000, v9, 2, "[%@] Setting suppressed %@ on %@", &v27, 32);

  v15 = +[_UIKeyboardArbiterDebug sharedInstance];
  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v33];
  [v15 debugWithMessage:v16];

  if (v14 != v33)
  {
    free(v14);
  }

  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = dsCopy;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(_UIKeyboardArbiter *)self updateSuppression:suppressionCopy ofPID:*(*(&v22 + 1) + 8 * v21++) active:activeCopy];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

- (void)activateClients
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 active])
        {
          [(_UIKeyboardArbiter *)self activateHandle:v8];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)handlerForPID:(int)d
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 processIdentifier] == d)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)handlerForBundleID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ([dCopy isEqualToString:&stru_2867933A0] & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_clients;
    v6 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          bundleIdentifier = [v10 bundleIdentifier];
          v12 = [bundleIdentifier isEqualToString:v5];

          if (v12)
          {
            v6 = v10;
            goto LABEL_14;
          }
        }

        v6 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)handlerForToken:(id)token
{
  v70 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (tokenCopy)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    selfCopy = self;
    v4 = self->_clients;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          remoteFocusContext = [v9 remoteFocusContext];
          sceneIdentity = [remoteFocusContext sceneIdentity];
          stringRepresentation = [sceneIdentity stringRepresentation];
          _string = [tokenCopy _string];
          v14 = [stringRepresentation isEqualToString:_string];

          if (v14)
          {
            v20 = v9;

            goto LABEL_22;
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = _UIArbiterLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    clients = selfCopy->_clients;
    if (v16)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v33 = 138543618;
    v34 = tokenCopy;
    v35 = 2114;
    v36 = clients;
    v19 = _os_log_send_and_compose_impl(v18, 0, &v38, 512, &dword_2557BA000, v15, 2, "NO HANDLE for %{public}@ -- choices:%{public}@ ", COERCE_DOUBLE(138543618), &v33, 22);
  }

  else
  {
    v68 = 0uLL;
    v69 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v15 = _UIArbiterLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    LOWORD(v33) = 0;
    v19 = _os_log_send_and_compose_impl(v22, 0, &v38, 512, &dword_2557BA000, v15, 2, "NO HANDLE for NIL token ", v21, &v33, 2);
  }

  v23 = v19;

  v24 = +[_UIKeyboardArbiterDebug sharedInstance];
  v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
  [v24 debugWithMessage:v25];

  if (v23 != &v38)
  {
    free(v23);
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (void)processWithPID:(int)d foreground:(BOOL)foreground suspended:(BOOL)suspended
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58___UIKeyboardArbiter_processWithPID_foreground_suspended___block_invoke;
  v10[3] = &unk_2797F4A28;
  v10[4] = self;
  dCopy = d;
  suspendedCopy = suspended;
  foregroundCopy = foreground;
  dispatch_async(queue, v10);
}

- (void)transition:(id)transition eventStage:(unint64_t)stage withInfo:(id)info fromHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  infoCopy = info;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  if (![MEMORY[0x277D75658] inputUIOOP] || (-[NSMutableArray active](handlerCopy, "active") & 1) != 0)
  {
LABEL_6:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = self->_clients;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if (v18 != handlerCopy)
          {
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __65___UIKeyboardArbiter_transition_eventStage_withInfo_fromHandler___block_invoke;
            v27[3] = &unk_2797F4A50;
            v28 = transitionCopy;
            stageCopy = stage;
            v29 = infoCopy;
            [(_UIKeyboardArbiter *)self runOperations:v27 onHandler:v18 fromFunction:"[_UIKeyboardArbiter transition:eventStage:withInfo:fromHandler:]"];
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    goto LABEL_22;
  }

  array = [MEMORY[0x277CBEB18] array];
  v11 = [(_UIKeyboardArbiter *)self hostForHandle:handlerCopy hosts:array];

  v12 = handlerCopy;
  if (v11)
  {
    v12 = v11;
    if (([(NSMutableArray *)v11 active]& 1) != 0)
    {

      goto LABEL_6;
    }
  }

  memset(v38, 0, 512);
  v19 = _UIArbiterLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  v36 = 138412290;
  v37 = v12;
  v21 = _os_log_send_and_compose_impl(v20, 0, v38, 512, &dword_2557BA000, v19, 2, "Ignoring transition from %@ because it's not active", &v36, 12);

  v22 = +[_UIKeyboardArbiterDebug sharedInstance];
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v38];
  [v22 debugWithMessage:v23];

  if (v21 != v38)
  {
    free(v21);
  }

  v13 = v11;
LABEL_22:
}

- (void)handlerRequestedFocus:(id)focus shouldStealKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  v91 = *MEMORY[0x277D85DE8];
  focusCopy = focus;
  dispatch_assert_queue_V2(self->_queue);
  if ([focusCopy inputUIHost])
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *buf = 0u;
    v60 = 0u;
    v7 = _UIArbiterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = objc_opt_class();
    v10 = @"NO";
    v53 = 138543874;
    v54 = v9;
    v55 = 2114;
    if (keyboardCopy)
    {
      v10 = @"YES";
    }

    v56 = focusCopy;
    v57 = 2114;
    v58 = v10;
    v11 = v9;
    v12 = _os_log_send_and_compose_impl(v8, 0, buf, 512, &dword_2557BA000, v7, 16, "[%{public}@] Ignore InputUIHost handler requested focus: %{public}@; steal keyboard: %{public}@", &v53, 32);

    v13 = +[_UIKeyboardArbiterDebug sharedInstance];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v13 errorWithMessage:v14];

    if (v12 != buf)
    {
      free(v12);
    }
  }

  else
  {
    if (keyboardCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
      keyboardCopy = WeakRetained != focusCopy;
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *buf = 0u;
    v60 = 0u;
    v16 = _UIArbiterLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v18 = objc_opt_class();
    v19 = @"NO";
    v53 = 138543874;
    v54 = v18;
    v55 = 2114;
    if (keyboardCopy)
    {
      v19 = @"YES";
    }

    v56 = focusCopy;
    v57 = 2114;
    v58 = v19;
    v20 = v18;
    v21 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_2557BA000, v16, 2, "[%{public}@] Handler requested focus: %{public}@; steal keyboard: %{public}@", &v53, 32);

    v22 = 0x28122B000uLL;
    v23 = +[_UIKeyboardArbiterDebug sharedInstance];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v23 debugWithMessage:v24];

    if (v21 != buf)
    {
      free(v21);
    }

    v25 = objc_loadWeakRetained(&self->_focusRequestedHandle);
    v26 = BSEqualObjects();

    if ((v26 & 1) == 0)
    {
      v27 = objc_loadWeakRetained(&self->_focusRequestedHandle);
      v28 = v27;
      if (v27 && ([v27 inputUIHost] & 1) == 0)
      {
        [(_UIKeyboardArbiter *)self runOperations:&__block_literal_global_179 onHandler:v28 fromFunction:"[_UIKeyboardArbiter handlerRequestedFocus:shouldStealKeyboard:]"];
      }

      v29 = objc_loadWeakRetained(&self->_focusRequestedHandle);
      [v29 clearAcquiringFocus];

      objc_storeWeak(&self->_focusRequestedHandle, focusCopy);
      v30 = _UIArbiterEventsLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_loadWeakRetained(&self->_focusRequestedHandle);
        descriptionForLog = [v31 descriptionForLog];
        *buf = 138543362;
        *&buf[4] = descriptionForLog;
        _os_log_impl(&dword_2557BA000, v30, OS_LOG_TYPE_DEFAULT, "set focusRequestedHandle:%{public}@", buf, 0xCu);
      }

      v33 = objc_loadWeakRetained(&self->_omniscientDelegate);
      v34 = !keyboardCopy;
      if (v33)
      {
        v34 = 1;
      }

      if (v34)
      {
        v44 = @"NO";
      }

      else
      {
        informationForKeyboardDown = [MEMORY[0x277D76088] informationForKeyboardDown];
        v36 = objc_loadWeakRetained(&self->_focusRequestedHandle);
        remoteFocusContext = [v36 remoteFocusContext];
        sceneIdentity = [remoteFocusContext sceneIdentity];
        stringRepresentation = [sceneIdentity stringRepresentation];
        [informationForKeyboardDown setSourceSceneIdentityString:stringRepresentation];

        v40 = _UIArbiterEventsLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_loadWeakRetained(&self->_focusRequestedHandle);
          descriptionForLog2 = [v41 descriptionForLog];
          *buf = 138543362;
          *&buf[4] = descriptionForLog2;
          _os_log_impl(&dword_2557BA000, v40, OS_LOG_TYPE_DEFAULT, "steal keyboard for %{public}@", buf, 0xCu);
        }

        v43 = objc_loadWeakRetained(&self->_focusRequestedHandle);
        [(_UIKeyboardArbiter *)self updateKeyboardStatus:informationForKeyboardDown fromHandler:v43 fromFocus:1];

        v44 = @"YES";
        v22 = 0x28122B000;
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      *buf = 0u;
      v60 = 0u;
      v45 = _UIArbiterLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v47 = objc_opt_class();
      v53 = 138412802;
      v54 = v47;
      v55 = 2114;
      v56 = focusCopy;
      v57 = 2114;
      v58 = v44;
      v48 = v47;
      LODWORD(v52) = 32;
      v49 = _os_log_send_and_compose_impl(v46, 0, buf, 512, &dword_2557BA000, v45, 2, "[%@] _focusRequestedHandle is now %{public}@; stole keyboard: %{public}@", &v53, v52);

      sharedInstance = [v22 + 1656 sharedInstance];
      v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [sharedInstance debugWithMessage:v51];

      if (v49 != buf)
      {
        free(v49);
      }
    }

    [(_UIKeyboardArbiter *)self reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:keyboardCopy];
  }
}

- (void)handlerRequestedForcedClientSceneIdentityUpdate:(id)update
{
  v23 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (([updateCopy inputUIHost] & 1) == 0)
  {
    dispatch_assert_queue_V2(self->_queue);
    remoteFocusContext = [updateCopy remoteFocusContext];
    sceneIdentity = [remoteFocusContext sceneIdentity];

    if (!sceneIdentity)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardArbiter.m" lineNumber:1525 description:{@"Handler must have a remote scene identity: %@", updateCopy}];
    }

    if (([updateCopy requestedCorrectionOfClientSceneIdentityWhileAcquiringFocus] & 1) == 0)
    {
      memset(v22, 0, sizeof(v22));
      v8 = _UIArbiterLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = updateCopy;
      v10 = v19;
      v11 = _os_log_send_and_compose_impl(v9, 0, v22, 512, &dword_2557BA000, v8, 2, "[%{public}@] Handler requested forced scene identity update in the client: %{public}@", &v18, 22);

      v12 = +[_UIKeyboardArbiterDebug sharedInstance];
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22];
      [v12 debugWithMessage:v13];

      if (v11 != v22)
      {
        free(v11);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __70___UIKeyboardArbiter_handlerRequestedForcedClientSceneIdentityUpdate___block_invoke;
      v16[3] = &unk_2797F4A78;
      v14 = updateCopy;
      v17 = v14;
      [(_UIKeyboardArbiter *)self runOperations:v16 onHandler:v14 fromFunction:"[_UIKeyboardArbiter handlerRequestedForcedClientSceneIdentityUpdate:]"];
      [v14 setRequestedCorrectionOfClientSceneIdentityWhileAcquiringFocus:1];
    }
  }
}

- (void)setKeyboardTotalDisable:(BOOL)disable withFence:(id)fence fromHandler:(id)handler completionHandler:(id)completionHandler
{
  disableCopy = disable;
  v53 = *MEMORY[0x277D85DE8];
  fenceCopy = fence;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  obj = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(obj);
  dispatch_assert_queue_V2(self->_queue);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke;
  v49[3] = &unk_2797F4AA0;
  v12 = fenceCopy;
  v50 = v12;
  v13 = completionHandlerCopy;
  v51 = v13;
  v14 = MEMORY[0x259C414B0](v49);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_2;
  v47[3] = &unk_2797F4AC8;
  v15 = v14;
  v48 = v15;
  v16 = MEMORY[0x259C414B0](v47);
  WeakRetained = objc_loadWeakRetained(&self->_disablingHandle);
  LODWORD(completionHandler) = WeakRetained == 0;

  if ((completionHandler ^ disableCopy))
  {
    v18 = 1;
LABEL_11:
    v16[2](v16, v18);
    goto LABEL_25;
  }

  if (disableCopy)
  {
    if (v12)
    {
      [_UIKeyboardChangedInformationWithManualFence pushFence:v12];
    }

    v19 = +[_UIKeyboardChangedInformationWithManualFence informationForKeyboardDown];
    [(_UIKeyboardArbiter *)self updateKeyboardStatus:v19 fromHandler:handlerCopy];

    if (v12)
    {
      +[_UIKeyboardChangedInformationWithManualFence popFence];
    }

    v20 = dispatch_time(0, 500000000);
    v21 = v16;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_3;
    block[3] = &unk_2797F45E0;
    block[4] = self;
    v46 = handlerCopy;
    v23 = queue;
    v16 = v21;
    dispatch_after(v20, v23, block);
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_disablingHandle);
    v25 = v24 == handlerCopy;

    if (!v25)
    {
      v18 = 2;
      goto LABEL_11;
    }
  }

  v32 = v16;
  v33 = v15;
  v34 = v13;
  v35 = v12;
  v36 = handlerCopy;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = self->_clients;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v27)
  {
    v28 = *v42;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v41 + 1) + 8 * i);
        if (([v30 inputUIHost] & 1) == 0)
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_4;
          v39[3] = &__block_descriptor_33_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
          v40 = disableCopy;
          [(_UIKeyboardArbiter *)self runOperations:v39 onHandler:v30 fromFunction:"[_UIKeyboardArbiter setKeyboardTotalDisable:withFence:fromHandler:completionHandler:]"];
        }
      }

      v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v27);
  }

  v12 = v35;
  handlerCopy = v36;
  v15 = v33;
  v13 = v34;
  v16 = v32;
  if (disableCopy)
  {
    v31 = v36;
  }

  else
  {
    v31 = 0;
  }

  objc_storeWeak(&self->_disablingHandle, v31);
  (*(v33 + 2))(v33, 0);
LABEL_25:

  objc_sync_exit(obj);
}

- (void)signalEventSourceChanged:(int64_t)changed fromHandler:(id)handler completionHandler:(id)completionHandler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  dispatch_assert_queue_V2(self->_queue);
  self->_lastEventSource = changed;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_clients;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (v14 != handlerCopy)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __77___UIKeyboardArbiter_signalEventSourceChanged_fromHandler_completionHandler___block_invoke;
          v16[3] = &__block_descriptor_40_e49_v24__0____UIKeyboardArbitrationClient__8___v___16l;
          v16[4] = changed;
          [(_UIKeyboardArbiter *)self runOperations:v16 onHandler:v14 fromFunction:"[_UIKeyboardArbiter signalEventSourceChanged:fromHandler:completionHandler:]"];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if (completionHandlerCopy)
  {
    completionHandlerCopy[2](completionHandlerCopy);
  }
}

- (id)preferredSceneIdentityForKeyboardFocusWithChangeInformation:(id)information
{
  dispatch_assert_queue_V2(self->_queue);
  _previouslyFocusedHostHandle = [(_UIKeyboardArbiter *)self _activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:0];
  if (!_previouslyFocusedHostHandle)
  {
    _previouslyFocusedHostHandle = [(_UIKeyboardArbiter *)self _previouslyFocusedHostHandle];
  }

  remoteFocusContext = [_previouslyFocusedHostHandle remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  return sceneIdentity;
}

- (id)_activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:(id *)handle
{
  v62 = *MEMORY[0x277D85DE8];
  _activeHandleForFocusEvaluation = [(_UIKeyboardArbiter *)self _activeHandleForFocusEvaluation];
  v6 = _activeHandleForFocusEvaluation;
  if (handle)
  {
    v7 = _activeHandleForFocusEvaluation;
    *handle = v6;
  }

  remoteFocusContext = [v6 remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  v10 = v6;
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    v12 = v10;
    if (!sceneIdentity)
    {
      array = [MEMORY[0x277CBEB18] array];
      v12 = [(_UIKeyboardArbiter *)self hostForHandle:v11 hosts:array];
    }
  }

  remoteFocusContext2 = [v12 remoteFocusContext];
  sceneIdentity2 = [remoteFocusContext2 sceneIdentity];

  if (sceneIdentity2)
  {
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v16 = _UIArbiterLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 138412290;
    v29 = v12;
    v18 = _os_log_send_and_compose_impl(v17, 0, &v30, 512, &dword_2557BA000, v16, 2, "Advisor: KeyboardFocus from _activeHandleForFocusEvaluation [%@]", &v28, 12);

    v19 = +[_UIKeyboardArbiterDebug sharedInstance];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v30];
    [v19 debugWithMessage:v20];

    if (v18 != &v30)
    {
      free(v18);
    }

    v21 = v12;
  }

  else
  {
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v22 = _UIArbiterLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    LOWORD(v28) = 0;
    v24 = _os_log_send_and_compose_impl(v23, 0, &v30, 512, &dword_2557BA000, v22, 2, "Advisor: No scene for active handle. Probably view service. Returning nil.", &v28, 2);

    v25 = +[_UIKeyboardArbiterDebug sharedInstance];
    v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v30];
    [v25 debugWithMessage:v26];

    if (v24 != &v30)
    {
      free(v24);
    }

    v21 = 0;
  }

  return v21;
}

- (id)_previouslyFocusedHostHandle
{
  v86 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_previouslyActiveHandle);

  if (WeakRetained)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v4 = _UIArbiterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = objc_loadWeakRetained(&self->_previouslyActiveHandle);
    v52 = 138412290;
    v53 = v6;
    v7 = _os_log_send_and_compose_impl(v5, 0, &v54, 512, &dword_2557BA000, v4, 2, "Advisor: KeyboardFocus from _previouslyActiveHandle [%@]", &v52, 12);

    v8 = +[_UIKeyboardArbiterDebug sharedInstance];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
    [v8 debugWithMessage:v9];

    if (v7 != &v54)
    {
      free(v7);
    }

    v10 = objc_loadWeakRetained(&self->_previouslyActiveHandle);
  }

  else
  {
    if ([(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      reverseObjectEnumerator = [(NSMutableOrderedSet *)self->_recentlyActiveSceneIdentities reverseObjectEnumerator];
      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            clients = self->_clients;
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __50___UIKeyboardArbiter__previouslyFocusedHostHandle__block_invoke;
            v45[3] = &unk_2797F4AF0;
            v45[4] = v17;
            v19 = [(NSMutableArray *)clients indexOfObjectPassingTest:v45];
            if (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v10 = [(NSMutableArray *)self->_clients objectAtIndex:v19];
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v54 = 0u;
              v55 = 0u;
              v31 = _UIArbiterLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v32 = 3;
              }

              else
              {
                v32 = 2;
              }

              v52 = 138412290;
              v53 = v10;
              v33 = _os_log_send_and_compose_impl(v32, 0, &v54, 512, &dword_2557BA000, v31, 2, "Advisor: KeyboardFocus from _recentlyActiveSceneIdentities [%@]", &v52, 12);

              v34 = +[_UIKeyboardArbiterDebug sharedInstance];
              v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
              [v34 debugWithMessage:v35];

              if (v33 != &v54)
              {
                free(v33);
              }

              goto LABEL_8;
            }
          }

          v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    reverseObjectEnumerator2 = [(NSMutableArray *)self->_clients reverseObjectEnumerator];
    v21 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(reverseObjectEnumerator2);
          }

          v25 = *(*(&v41 + 1) + 8 * j);
          if ([v25 active])
          {
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v36 = _UIArbiterLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v52 = 138412290;
            v53 = v25;
            v38 = _os_log_send_and_compose_impl(v37, 0, &v54, 512, &dword_2557BA000, v36, 2, "Advisor: KeyboardFocus from _clients [%@]", &v52, 12);

            v39 = +[_UIKeyboardArbiterDebug sharedInstance];
            v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
            [v39 debugWithMessage:v40];

            if (v38 != &v54)
            {
              free(v38);
            }

            v10 = v25;

            goto LABEL_8;
          }
        }

        v22 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v26 = _UIArbiterLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    LOWORD(v52) = 0;
    v28 = _os_log_send_and_compose_impl(v27, 0, &v54, 512, &dword_2557BA000, v26, 2, "Advisor: Last resort, returning nil (FrontBoard decides)", &v52, 2);

    v29 = +[_UIKeyboardArbiterDebug sharedInstance];
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v54];
    [v29 debugWithMessage:v30];

    if (v28 != &v54)
    {
      free(v28);
    }

    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)keyboardFocusDidChangeWithoutAdvisorInputToPid:(int)pid sceneIdentity:(id)identity
{
  v5 = *&pid;
  v27 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  os_unfair_lock_lock(&self->_pendingFocusLock);
  v8 = self->_pendingFocusLock_generation + 1;
  self->_pendingFocusLock_generation = v8;
  self->_pendingFocusLock_PID = v5;
  objc_storeStrong(&self->_pendingFocusLock_sceneIdentity, identity);
  os_unfair_lock_unlock(&self->_pendingFocusLock);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    memset(v26, 0, sizeof(v26));
    v9 = _UIArbiterLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    stringRepresentation = [identityCopy stringRepresentation];
    v20 = 134218498;
    v21 = v8;
    v22 = 1024;
    v23 = v5;
    v24 = 2112;
    v25 = stringRepresentation;
    v12 = _os_log_send_and_compose_impl(v10, 0, v26, 512, &dword_2557BA000, v9, 2, "Advisor: Scene focus update without advisor input enqueued on the main thread: generation: %lu; PID: %d; sceneIdentity: %@", &v20, 28);

    v13 = +[_UIKeyboardArbiterDebug sharedInstance];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v26];
    [v13 debugWithMessage:v14];

    if (v12 != v26)
    {
      free(v12);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83___UIKeyboardArbiter_keyboardFocusDidChangeWithoutAdvisorInputToPid_sceneIdentity___block_invoke;
    block[3] = &unk_2797F4B18;
    block[4] = self;
    v18 = v8;
    v19 = v5;
    v17 = identityCopy;
    dispatch_async(queue, block);
  }

  else
  {
    [(_UIKeyboardArbiter *)self _arbiterQueue_keyboardFocusDidChangeWithoutAdvisorInputForGeneration:v8 pid:v5 sceneIdentity:identityCopy];
  }
}

- (void)_arbiterQueue_keyboardFocusDidChangeWithoutAdvisorInputForGeneration:(unint64_t)generation pid:(int)pid sceneIdentity:(id)identity
{
  v23 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  identityCopy = identity;
  dispatch_assert_queue_V2(queue);
  memset(v22, 0, sizeof(v22));
  v10 = _UIArbiterLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  stringRepresentation = [identityCopy stringRepresentation];

  v16 = 134218498;
  generationCopy = generation;
  v18 = 1024;
  pidCopy = pid;
  v20 = 2112;
  v21 = stringRepresentation;
  v13 = _os_log_send_and_compose_impl(v11, 0, v22, 512, &dword_2557BA000, v10, 2, "Advisor: Scene focus update without advisor input: generation: %lu; PID: %d; sceneIdentity: %@", &v16, 28);

  v14 = +[_UIKeyboardArbiterDebug sharedInstance];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22];
  [v14 debugWithMessage:v15];

  if (v13 != v22)
  {
    free(v13);
  }

  [(_UIKeyboardArbiter *)self _applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:generation];
}

- (void)_applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:(unint64_t)generation
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  os_unfair_lock_lock(&self->_pendingFocusLock);
  pendingFocusLock_generation = self->_pendingFocusLock_generation;
  pendingFocusLock_PID = self->_pendingFocusLock_PID;
  v7 = self->_pendingFocusLock_sceneIdentity;
  if (pendingFocusLock_PID != -1 && pendingFocusLock_generation == generation)
  {
    self->_pendingFocusLock_PID = -1;
    pendingFocusLock_sceneIdentity = self->_pendingFocusLock_sceneIdentity;
    self->_pendingFocusLock_sceneIdentity = 0;

    os_unfair_lock_unlock(&self->_pendingFocusLock);
    memset(v21, 0, sizeof(v21));
    v10 = _UIArbiterLog();
    v15 = 134218498;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    generationCopy = generation;
    v17 = 1024;
    v18 = pendingFocusLock_PID;
    v19 = 2112;
    v20 = v7;
    v12 = _os_log_send_and_compose_impl(v11, 0, v21, 512, &dword_2557BA000, v10, 2, "Advisor: Applying pending scene focus update from omniscient delegate: generation: %lu; PID: %d; sceneIdentity: %@", &v15, 28);

    v13 = +[_UIKeyboardArbiterDebug sharedInstance];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v21];
    [v13 debugWithMessage:v14];

    if (v12 != v21)
    {
      free(v12);
    }

    [(_UIKeyboardArbiter *)self _updateCurrentKeyboardFocusToPID:pendingFocusLock_PID sceneIdentity:v7];
  }

  else
  {
    os_unfair_lock_unlock(&self->_pendingFocusLock);
  }
}

- (void)_updateCurrentKeyboardFocusToPID:(int)d sceneIdentity:(id)identity
{
  v56 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = _UIArbiterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v22[0] = 67109378;
  v22[1] = d;
  v23 = 2112;
  v24 = identityCopy;
  v9 = _os_log_send_and_compose_impl(v8, 0, buf, 512, &dword_2557BA000, v7, 2, "Advisor: Updating current keyboard focus to PID: %d; sceneIdentity: %@", v22, 18);

  v10 = +[_UIKeyboardArbiterDebug sharedInstance];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v10 debugWithMessage:v11];

  if (v9 != buf)
  {
    free(v9);
  }

  _currentFocusedHandle = [(_UIKeyboardArbiter *)self _currentFocusedHandle];
  v13 = _currentFocusedHandle;
  if (_currentFocusedHandle)
  {
    processIdentifier = [_currentFocusedHandle processIdentifier];
    remoteFocusContext = [v13 remoteFocusContext];
    sceneIdentity = [remoteFocusContext sceneIdentity];
    v17 = BSEqualObjects();

    if (processIdentifier != d && (v17 & 1) == 0)
    {
      [v13 clearAcquiringFocus];
    }
  }

  v18 = _UIArbiterEventsLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [identityCopy description];
    v20 = _UISceneIdentityToLogString();
    *buf = 67109378;
    *&buf[4] = d;
    *&buf[8] = 2114;
    *&buf[10] = v20;
    _os_log_impl(&dword_2557BA000, v18, OS_LOG_TYPE_DEFAULT, "set currentFocus PID:%d sceneIdentity:%{public}@", buf, 0x12u);
  }

  self->_currentFocusPID = d;
  currentFocusSceneIdentity = self->_currentFocusSceneIdentity;
  self->_currentFocusSceneIdentity = identityCopy;
}

- (id)_handleForSceneIdentity:(id)identity
{
  v19 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (identityCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_clients;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          remoteFocusContext = [v9 remoteFocusContext];
          sceneIdentity = [remoteFocusContext sceneIdentity];
          v12 = [sceneIdentity isEqual:identityCopy];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:(BOOL)success
{
  successCopy = success;
  v88 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_omniscientDelegate);

  if (WeakRetained)
  {
    os_unfair_lock_lock(&self->_pendingFocusLock);
    pendingFocusLock_generation = self->_pendingFocusLock_generation;
    os_unfair_lock_unlock(&self->_pendingFocusLock);
    [(_UIKeyboardArbiter *)self _applyPendingSceneFocusUpdateFromOmniscientDelegateForGeneration:pendingFocusLock_generation];
    v54 = 0;
    v7 = [(_UIKeyboardArbiter *)self _activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:&v54];
    v8 = v54;
    remoteFocusContext = [v7 remoteFocusContext];
    sceneIdentity = [remoteFocusContext sceneIdentity];

    if (BSEqualObjects())
    {
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = 0u;
      memset(buf, 0, sizeof(buf));
      v11 = _UIArbiterLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      sceneDescription = [v7 sceneDescription];
      v55 = 138543362;
      v56 = sceneDescription;
      v14 = _os_log_send_and_compose_impl(v12, 0, buf, 512, &dword_2557BA000, v11, 2, "Advisor: Skipping reevaluation as there is no change. Active: %{public}@", &v55, 12);

      v15 = +[_UIKeyboardArbiterDebug sharedInstance];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v15 debugWithMessage:v16];

      if (v14 != buf)
      {
        free(v14);
      }
    }

    else
    {
      v17 = objc_loadWeakRetained(&self->_omniscientDelegate);
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = [[_UIKeyboardArbiterSceneFocusRequest alloc] initWithShouldStealKeyboardOnSuccess:successCopy];
        if (v7)
        {
          v20 = [_UIKeyboardArbiterSceneFocusChange alloc];
          remoteFocusContext2 = [v7 remoteFocusContext];
          sceneIdentity2 = [remoteFocusContext2 sceneIdentity];
          v23 = -[_UIKeyboardArbiterSceneFocusChange initWithSceneIdentity:pid:](v20, "initWithSceneIdentity:pid:", sceneIdentity2, [v7 processIdentifier]);
        }

        else
        {
          v23 = +[_UIKeyboardArbiterSceneFocusChange focusNothingChange];
        }

        v45 = _UIArbiterEventsLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          *&buf[4] = v19;
          *&buf[12] = 2114;
          *&buf[14] = v23;
          _os_log_debug_impl(&dword_2557BA000, v45, OS_LOG_TYPE_DEBUG, "request:%{public}@ sceneFocusChange:%{public}@", buf, 0x16u);
        }

        v46 = objc_loadWeakRetained(&self->_omniscientDelegate);
        [v46 keyboardArbiterAdvisor:self request:v19 sceneFocusChange:v23];

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        memset(buf, 0, sizeof(buf));
        v47 = _UIArbiterLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        v55 = 138543362;
        v56 = v23;
        v49 = _os_log_send_and_compose_impl(v48, 0, buf, 512, &dword_2557BA000, v47, 2, "Advisor: invoking request:sceneFocusChange:%{public}@", &v55, 12);

        v50 = +[_UIKeyboardArbiterDebug sharedInstance];
        v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
        [v50 debugWithMessage:v51];

        if (v49 != buf)
        {
          free(v49);
        }
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        memset(buf, 0, sizeof(buf));
        v24 = _UIArbiterLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        sceneDescription2 = [v7 sceneDescription];
        v55 = 138543362;
        v56 = sceneDescription2;
        v27 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_2557BA000, v24, 2, "Advisor: Triggering reevaluation. Active: %{public}@", &v55, 12);

        v28 = +[_UIKeyboardArbiterDebug sharedInstance];
        v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
        [v28 debugWithMessage:v29];

        if (v27 != buf)
        {
          free(v27);
        }

        processIdentifier = [v7 processIdentifier];
        v31 = objc_loadWeakRetained(&self->_omniscientDelegate);
        v32 = [v31 keyboardArbiterAdvisor:self requestedSceneFocusDeliberationForFocusedPid:processIdentifier];

        v33 = _UIArbiterEventsLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v32 description];
          _UISceneIdentityToLogString();
          v53 = successCopy;
          v35 = sceneIdentity;
          v37 = v36 = v8;
          *buf = 67109378;
          *&buf[4] = processIdentifier;
          *&buf[8] = 2114;
          *&buf[10] = v37;
          _os_log_impl(&dword_2557BA000, v33, OS_LOG_TYPE_DEFAULT, "sceneFocusDeliberation(pid:%d) = %{public}@", buf, 0x12u);

          v8 = v36;
          sceneIdentity = v35;
          successCopy = v53;
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v63 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        memset(buf, 0, sizeof(buf));
        v38 = _UIArbiterLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        stringRepresentation = [v32 stringRepresentation];
        v55 = 138412290;
        v56 = stringRepresentation;
        LODWORD(v52) = 12;
        v41 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_2557BA000, v38, 2, "Advisor: Deliberation result: %@", &v55, v52);

        v42 = +[_UIKeyboardArbiterDebug sharedInstance];
        v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
        [v42 debugWithMessage:v43];

        if (v41 != buf)
        {
          free(v41);
        }

        v44 = [(_UIKeyboardArbiter *)self _handleForSceneIdentity:v32];
        if (v44)
        {
          [(_UIKeyboardArbiter *)self _focusSceneHandle:v44 previousHostFocusHandle:v7 previousLeafFocusHandle:v8 shouldStealKeyboardOnSuccess:successCopy];
        }

        else
        {
          [(_UIKeyboardArbiter *)self _invalidateFocus];
        }
      }
    }
  }
}

- (void)_focusSceneHandle:(id)handle previousHostFocusHandle:(id)focusHandle previousLeafFocusHandle:(id)leafFocusHandle shouldStealKeyboardOnSuccess:(BOOL)success
{
  successCopy = success;
  v67 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  focusHandleCopy = focusHandle;
  leafFocusHandleCopy = leafFocusHandle;
  if (!handleCopy)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"must have a handle here"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      *&buf[22] = 2048;
      *&buf[24] = self;
      LOWORD(v37) = 2114;
      *(&v37 + 2) = @"_UIKeyboardArbiter.m";
      WORD5(v37) = 1024;
      HIDWORD(v37) = 1898;
      LOWORD(v38) = 2114;
      *(&v38 + 2) = v30;
      _os_log_error_impl(&dword_2557BA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x2557CA6ACLL);
  }

  v14 = leafFocusHandleCopy;
  processIdentifier = [handleCopy processIdentifier];
  remoteFocusContext = [handleCopy remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];
  [(_UIKeyboardArbiter *)self _updateCurrentKeyboardFocusToPID:processIdentifier sceneIdentity:sceneIdentity];

  [handleCopy beginAcquiringFocusOnQueue:self->_queue];
  bundleIdentifier = [handleCopy bundleIdentifier];
  v19 = [bundleIdentifier isEqualToString:@"com.apple.siri"];

  v20 = handleCopy == v14 || handleCopy == focusHandleCopy;
  if (v20 && successCopy && (v19 & 1) == 0)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    v21 = _UIArbiterLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v34 = 138412290;
    v35 = v14;
    v23 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_2557BA000, v21, 2, "Advisor: Stealing keyboard for handle: %@", &v34, 12);

    v24 = +[_UIKeyboardArbiterDebug sharedInstance];
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v24 debugWithMessage:v25];

    if (v23 != buf)
    {
      free(v23);
    }

    informationForKeyboardDown = [MEMORY[0x277D76088] informationForKeyboardDown];
    remoteFocusContext2 = [v14 remoteFocusContext];
    sceneIdentity2 = [remoteFocusContext2 sceneIdentity];
    stringRepresentation = [sceneIdentity2 stringRepresentation];
    [informationForKeyboardDown setSourceSceneIdentityString:stringRepresentation];

    [(_UIKeyboardArbiter *)self updateKeyboardStatus:informationForKeyboardDown fromHandler:v14 fromFocus:1];
  }
}

- (void)applySceneFocusChange:(id)change forRequest:(id)request
{
  changeCopy = change;
  requestCopy = request;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___UIKeyboardArbiter_applySceneFocusChange_forRequest___block_invoke;
  block[3] = &unk_2797F4B40;
  v12 = changeCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = changeCopy;
  dispatch_async(queue, block);
}

- (int)presentingKeyboardProcessIdentifier
{
  v3 = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_activeInputDestinationHandle);
    processIdentifier = [v5 processIdentifier];
  }

  else
  {
    processIdentifier = -1;
  }

  objc_sync_exit(v3);

  return processIdentifier;
}

+ (void)configureEncodedClassesForXPCConnection:(id)connection
{
  connectionCopy = connection;
  remoteObjectInterface = [connectionCopy remoteObjectInterface];
  v5 = _UIKBArbiterSetForPlacements();
  [remoteObjectInterface setClasses:v5 forSelector:sel_queue_keyboardTransition_event_withInfo_onComplete_ argumentIndex:2 ofReply:0];

  exportedInterface = [connectionCopy exportedInterface];

  v6 = _UIKBArbiterSetForPlacements();
  [exportedInterface setClasses:v6 forSelector:sel_transition_eventStage_withInfo_ argumentIndex:2 ofReply:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v41 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = [_UIKeyboardArbiterClientHandle handlerWithArbiter:self forConnection:connectionCopy];
  [connectionCopy setExportedObject:v6];
  bundleIdentifier = [v6 bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.TapToRadar"])
  {

LABEL_4:
    v10 = +[_UIKeyboardArbiterDebug sharedInstance];
    v11 = 1;
    [v10 setPause:1];

    goto LABEL_6;
  }

  bundleIdentifier2 = [v6 bundleIdentifier];
  v9 = [bundleIdentifier2 isEqualToString:@"com.apple.appleseed.FeedbackAssistant"];

  if (v9)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_6:
  memset(v40, 0, 512);
  v12 = _UIArbiterLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v36 = 138412546;
  v37 = objc_opt_class();
  v38 = 2112;
  v39 = v6;
  v14 = v37;
  v15 = _os_log_send_and_compose_impl(v13, 0, v40, 512, &dword_2557BA000, v12, 2, "[%@] Received new connection [%@]", &v36, 22);

  v16 = +[_UIKeyboardArbiterDebug sharedInstance];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v40];
  [v16 debugWithMessage:v17];

  if (v15 != v40)
  {
    free(v15);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke;
  v34[3] = &unk_2797F4B90;
  v34[4] = self;
  v34[5] = connectionCopy;
  v34[6] = v6;
  v35 = v11;
  [connectionCopy setInvalidationHandler:v34];
  if ([objc_opt_class() unitTestEnvironment])
  {
    v18 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679DF80];
    [connectionCopy setExportedInterface:v18];

    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679E060];
    [connectionCopy setRemoteObjectInterface:v19];

    [_UIKeyboardArbiter configureEncodedClassesForXPCConnection:connectionCopy];
  }

  else
  {
    v20 = [connectionCopy valueForEntitlement:@"com.apple.KeyboardArbiter.client.inputuihost"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      v22 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679DF80];
      [connectionCopy setExportedInterface:v22];

      v23 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679CCA0];
      [connectionCopy setRemoteObjectInterface:v23];

      [v6 setInputUIHost:1];
      objc_storeWeak(&self->_keyboardUIHandle, v6);
    }

    else
    {
      if ([MEMORY[0x277D75658] inputUIOOP])
      {
        v24 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679C9D0];
        [connectionCopy setExportedInterface:v24];

        [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28679E060];
      }

      else
      {
        v25 = _UIKeyboardArbitration_Interface();
        [connectionCopy setExportedInterface:v25];

        _UIKeyboardArbitrationClient_Interface();
      }
      v26 = ;
      [connectionCopy setRemoteObjectInterface:v26];
    }
  }

  [connectionCopy _setQueue:self->_queue];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke_328;
  block[3] = &unk_2797F4B40;
  block[4] = self;
  v32 = v6;
  v33 = connectionCopy;
  v28 = connectionCopy;
  v29 = v6;
  dispatch_async(queue, block);

  return 1;
}

- (_UIKeyboardArbiterClientHandle)activeInputDestinationHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_activeInputDestinationHandle);

  return WeakRetained;
}

- (_UIKeyboardArbiterClientHandle)focusRequestedHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_focusRequestedHandle);

  return WeakRetained;
}

- (_UIKeyboardArbiterClientHandle)keyboardUIHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardUIHandle);

  return WeakRetained;
}

@end