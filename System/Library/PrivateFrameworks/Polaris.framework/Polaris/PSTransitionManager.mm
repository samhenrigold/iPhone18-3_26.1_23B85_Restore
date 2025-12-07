@interface PSTransitionManager
- (BOOL)commitAddedGraphs:(id)graphs removedGraphs:(id)removedGraphs option:(unint64_t)option stopGraphs:(BOOL)stopGraphs error:(id *)error;
- (BOOL)commitRemoteGraphs:(id)graphs removedGraphs:(id)removedGraphs option:(unint64_t)option stopGraphs:(BOOL)stopGraphs error:(id *)error;
- (BOOL)deliverResourceRequest:(id)request removing:(id)removing;
- (BOOL)prepareTransition:(id)transition error:(id *)error;
- (PSExecutionSession)executionSession;
- (PSTransitionManager)initWithExecutionSession:(id)session withContext:(id)context withProvider:(id)provider withComputeDevices:(id)devices systemGraphClient:(id)client withPLSDevice:(id)device withPRMManager:(PSResourceManager *)manager;
- (unint64_t)transitionExecutorForBlock:(id)block error:(id *)error;
- (unint64_t)transitionExecutorForRemote:(id)remote error:(id *)error;
- (void)addExecutorGraphsForTransitionBlock:(id)block;
- (void)callTransitionCallback:(unint64_t)callback retainedContext:(id)context;
- (void)callTransitionCallback:(unint64_t)callback unretainedContext:(void *)context freeAfterUse:(BOOL)use;
- (void)dealloc;
- (void)deliverDeadlineMissThresholdExceededCallback:(void *)callback;
- (void)deliverDynamicResourcesAvailableNotification:(id)notification;
- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)notification;
- (void)deliverPauseResourcesRequest:(id)request;
- (void)deliverReplayResourceRequest;
- (void)deliverSetupResourcesRequest:(id)request;
- (void)dispatchReplayDelegate:(id)delegate;
- (void)initializeGroupedTriggersForTransitionBlock:(id)block;
- (void)removeExecutorGraphsForTransitionBlock:(id)block;
- (void)removeExecutorGraphsOverXPCForTransitionBlock:(id)block;
- (void)sendGraphInfoToSystemGraph:(id)graph;
- (void)setExecutionSessionDelegate:(id)delegate withQueue:(id)queue;
- (void)setTransitionCallback:(id)callback withContext:(void *)context;
- (void)setTransitionCallbackF:(void *)f withContext:(void *)context;
- (void)setupCoreAnalyticsForAddedGraphs:(id)graphs;
- (void)updateTransitionCompleted:(id)completed transitionSucceeded:(BOOL)succeeded;
@end

@implementation PSTransitionManager

- (PSTransitionManager)initWithExecutionSession:(id)session withContext:(id)context withProvider:(id)provider withComputeDevices:(id)devices systemGraphClient:(id)client withPLSDevice:(id)device withPRMManager:(PSResourceManager *)manager
{
  sessionCopy = session;
  contextCopy = context;
  providerCopy = provider;
  devicesCopy = devices;
  clientCopy = client;
  deviceCopy = device;
  v62.receiver = self;
  v62.super_class = PSTransitionManager;
  v21 = [(PSTransitionManager *)&v62 init];
  v22 = v21;
  if (v21)
  {
    v58 = deviceCopy;
    objc_storeStrong(&v21->_context, context);
    objc_storeStrong(&v22->_device, device);
    v22->_prm_mgr = manager;
    v22->_isCoreAnalyticsEnabled = [sessionCopy isCoreAnalyticsEnabled];
    v22->_sysGraphEnabled = clientCopy != 0;
    objc_storeWeak(&v22->_executionSession, sessionCopy);
    objc_storeStrong(&v22->_systemGraphClient, client);
    v23 = [[PSTransitionMonitor alloc] initWithTransitionManager:v22];
    transitionMonitor = v22->_transitionMonitor;
    v22->_transitionMonitor = v23;

    v25 = 1;
    v22->_shouldSendResourcesNoLongerWantedProcessed = 1;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    if (([providerCopy isEqualToString:PSExecutionSessionProviderWakeboard[0]] & 1) == 0 && (objc_msgSend(processName, "isEqualToString:", @"wakeboardd") & 1) == 0)
    {
      v25 = [processName isEqualToString:@"seaboardd"];
    }

    v22->_isSystemCompositor = v25;
    v22->_isBiometricKit = [providerCopy isEqualToString:@"biometrickitd"];
    v28 = [[PSGraphCompiler alloc] initWithTransitionManager:v22 withContext:v22->_context withSystemGraphClient:v22->_systemGraphClient withComputeDevices:devicesCopy withPLSDevice:v22->_device withPRMManager:v22->_prm_mgr];
    compiler = v22->_compiler;
    v22->_compiler = v28;

    v30 = ps_util_create_serial_dispatch_queue("com.apple.polaris.transition_queue", 60);
    transitionQueue = v22->_transitionQueue;
    v22->_transitionQueue = v30;

    v32 = ps_util_create_serial_dispatch_queue("com.apple.polaris.transition_callback_queue", 60);
    transitionCallbackQueue = v22->_transitionCallbackQueue;
    v22->_transitionCallbackQueue = v32;

    v34 = objc_alloc_init(MEMORY[0x277CCAB00]);
    execGraphMap = v22->_execGraphMap;
    v22->_execGraphMap = v34;

    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = MEMORY[0x277CBEA60];
    v38 = [v36 pathForResource:@"PSPrioritizedResources" ofType:@"plist"];
    v39 = [v37 arrayWithContentsOfFile:v38];

    v40 = [MEMORY[0x277CBEB98] setWithArray:v39];
    prioritizedResources = v22->_prioritizedResources;
    v22->_prioritizedResources = v40;

    ps_exec_init();
    v22->_executor = v42;
    inited = ps_exec_init_graph();
    ps_exec_graph_set_frame_history_client_handle(inited, sessionCopy[1]);
    ps_exec_start_graph(&v22->_executor->var0, inited);
    if (v22->_isCoreAnalyticsEnabled)
    {
      v56 = clientCopy;
      v44 = devicesCopy;
      v45 = contextCopy;
      v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
      graphHashTracker = v22->_graphHashTracker;
      v22->_graphHashTracker = v46;

      WeakRetained = objc_loadWeakRetained(&v22->_executionSession);
      isUniqueSession = [WeakRetained isUniqueSession];

      if (isUniqueSession)
      {
        v22->_transition_analytics.session_hash = ps_ca_map_string([processName UTF8String]);
        [sessionCopy setCaName:processName];
      }

      else
      {
        v50 = objc_loadWeakRetained(&v22->_executionSession);
        name = [v50 name];
        v22->_transition_analytics.session_hash = ps_ca_map_string([name UTF8String]);

        v52 = objc_loadWeakRetained(&v22->_executionSession);
        name2 = [v52 name];
        [sessionCopy setCaName:name2];
      }

      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v22->_transition_analytics.session_hash, v56}];
      [sessionCopy setCaNameHash:v54];

      ps_ca_map_string([processName UTF8String]);
      objc_initWeak(&location, v22);
      LODWORD(v54) = v22->_transition_analytics.session_hash;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __139__PSTransitionManager_initWithExecutionSession_withContext_withProvider_withComputeDevices_systemGraphClient_withPLSDevice_withPRMManager___block_invoke;
      v59[3] = &unk_279A487D0;
      objc_copyWeak(&v60, &location);
      v22->ca_res_req_handle = ps_ca_resource_request_init(v54, v59);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);
      contextCopy = v45;
      devicesCopy = v44;
      clientCopy = v57;
    }

    deviceCopy = v58;
  }

  return v22;
}

void __139__PSTransitionManager_initWithExecutionSession_withContext_withProvider_withComputeDevices_systemGraphClient_withPLSDevice_withPRMManager___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    pbs_ringbufferlogger_shared_write();
    WeakRetained = v5;
  }
}

- (void)dealloc
{
  self->_deallocating = 1;
  ps_exec_dealloc_graph(self->_executor);
  ps_exec_dealloc(self->_executor);
  ps_util_release_dispatch_queue(self->_transitionQueue);
  ps_util_release_dispatch_queue(self->_transitionCallbackQueue);
  ps_ca_resource_request_delete(&self->ca_res_req_handle->var0.var0);
  v3.receiver = self;
  v3.super_class = PSTransitionManager;
  [(PSTransitionManager *)&v3 dealloc];
}

- (void)setTransitionCallback:(id)callback withContext:(void *)context
{
  v6 = _Block_copy(callback);
  transitionCallback = self->_transitionCallback;
  self->_transitionCallback = v6;

  self->_transitionCallbackF = 0;
  self->_transitionCallbackUserContext = context;
  systemGraphClient = self->_systemGraphClient;

  [(PSSystemGraphClientInterface *)systemGraphClient setTransitionManager:self];
}

- (void)setTransitionCallbackF:(void *)f withContext:(void *)context
{
  transitionCallback = self->_transitionCallback;
  self->_transitionCallback = 0;
  self->_transitionCallbackF = f;

  self->_transitionCallbackUserContext = context;
  systemGraphClient = self->_systemGraphClient;

  [(PSSystemGraphClientInterface *)systemGraphClient setTransitionManager:self];
}

- (void)callTransitionCallback:(unint64_t)callback unretainedContext:(void *)context freeAfterUse:(BOOL)use
{
  v20 = *MEMORY[0x277D85DE8];
  transitionCallback = [(PSTransitionManager *)self transitionCallback];

  if (transitionCallback)
  {
    transitionCallbackQueue = [(PSTransitionManager *)self transitionCallbackQueue];
    v11 = transitionCallbackQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke;
    v16[3] = &unk_279A487F8;
    v16[4] = self;
    v16[5] = callback;
    v16[6] = context;
    useCopy = use;
    v12 = v16;
LABEL_5:
    dispatch_async(transitionCallbackQueue, v12);

    return;
  }

  if ([(PSTransitionManager *)self transitionCallbackF])
  {
    transitionCallbackQueue = [(PSTransitionManager *)self transitionCallbackQueue];
    v11 = transitionCallbackQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke_2;
    v14[3] = &unk_279A487F8;
    v14[4] = self;
    v14[5] = callback;
    v14[6] = context;
    useCopy2 = use;
    v12 = v14;
    goto LABEL_5;
  }

  v13 = __PLSLogSharedInstance(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    callbackCopy = callback;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Tried to send callback of type %d, no transition callback handler installed.", buf, 8u);
  }
}

void __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCallback];
  v2[2](v2, *(a1 + 40), *(a1 + 48), [*(a1 + 32) transitionCallbackUserContext]);

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {

      free(v3);
    }
  }
}

void __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke_2(uint64_t a1)
{
  ([*(a1 + 32) transitionCallbackF])(*(a1 + 40), *(a1 + 48), objc_msgSend(*(a1 + 32), "transitionCallbackUserContext"));
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {

      free(v2);
    }
  }
}

- (void)callTransitionCallback:(unint64_t)callback retainedContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  transitionCallback = [(PSTransitionManager *)self transitionCallback];

  if (transitionCallback)
  {
    transitionCallbackQueue = [(PSTransitionManager *)self transitionCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke;
    block[3] = &unk_279A48820;
    block[4] = self;
    callbackCopy = callback;
    v16 = contextCopy;
    dispatch_async(transitionCallbackQueue, block);

    v9 = v16;
LABEL_5:

    goto LABEL_6;
  }

  if ([(PSTransitionManager *)self transitionCallbackF])
  {
    transitionCallbackQueue2 = [(PSTransitionManager *)self transitionCallbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke_2;
    v12[3] = &unk_279A48820;
    v12[4] = self;
    callbackCopy2 = callback;
    v13 = contextCopy;
    dispatch_async(transitionCallbackQueue2, v12);

    v9 = v13;
    goto LABEL_5;
  }

  v11 = __PLSLogSharedInstance(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    callbackCopy3 = callback;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "Tried to send callback of type %d, no transition callback handler installed.", buf, 8u);
  }

LABEL_6:
}

void __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCallback];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40), [*(a1 + 32) transitionCallbackUserContext]);
}

uint64_t __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) transitionCallbackF];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) transitionCallbackUserContext];

  return v6(v2, v3, v4);
}

- (void)setExecutionSessionDelegate:(id)delegate withQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  transitionCallbackQueue = queueCopy;
  if (!queueCopy)
  {
    transitionCallbackQueue = self->_transitionCallbackQueue;
  }

  v9 = transitionCallbackQueue;
  executionSessionDelegateQueue = self->_executionSessionDelegateQueue;
  self->_executionSessionDelegateQueue = v9;

  objc_storeStrong(&self->_executionSessionDelegate, delegate);
  if ([delegateCopy conformsToProtocol:&unk_2870DB680])
  {
    [(PSTransitionManager *)self setConformsToResourcePauseSetupDelegate:1];
    [(PSTransitionManager *)self setShouldSendResourcesNoLongerWantedProcessed:0];
  }

  [(PSSystemGraphClientInterface *)self->_systemGraphClient setTransitionManager:self];
}

- (void)deliverDeadlineMissThresholdExceededCallback:(void *)callback
{
  if (self->_executionSessionDelegateQueue)
  {
    objc_initWeak(&location, self);
    if (callback)
    {
      v5 = *(callback + 5);
      if (v5)
      {
        v6 = v5;
        name = [v6 name];
        executionSessionDelegateQueue = self->_executionSessionDelegateQueue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __68__PSTransitionManager_deliverDeadlineMissThresholdExceededCallback___block_invoke;
        v11[3] = &unk_279A48848;
        objc_copyWeak(&v14, &location);
        v12 = v6;
        v13 = name;
        v9 = name;
        v10 = v6;
        dispatch_async(executionSessionDelegateQueue, v11);

        objc_destroyWeak(&v14);
      }
    }

    objc_destroyWeak(&location);
  }
}

void __68__PSTransitionManager_deliverDeadlineMissThresholdExceededCallback___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained executionSessionDelegate];

    if (v5)
    {
      v6 = [v4 executionSessionDelegate];
      v7 = objc_opt_respondsToSelector();

      v8 = [v4 executionSessionDelegate];
      v9 = v8;
      if (v7)
      {
        [v8 deadlineMissThresholdExceededForGraph:*(a1 + 32) name:*(a1 + 40)];
      }

      else
      {
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }

        v9 = [v4 executionSessionDelegate];
        [v9 deadlineMissThresholdExceededForGraph:*(a1 + 40)];
      }
    }
  }

LABEL_8:

  objc_autoreleasePoolPop(v2);
}

- (void)dispatchReplayDelegate:(id)delegate
{
  delegateCopy = delegate;
  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (executionSessionDelegate)
  {
    v6 = executionSessionDelegate;
    executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (executionSessionDelegateQueue)
    {
      executionSessionDelegate2 = [(PSTransitionManager *)self executionSessionDelegate];
      v9 = [executionSessionDelegate2 conformsToProtocol:&unk_2870DB6E0];

      if (v9)
      {
        objc_initWeak(&location, self);
        executionSessionDelegateQueue2 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__PSTransitionManager_dispatchReplayDelegate___block_invoke;
        block[3] = &unk_279A48870;
        objc_copyWeak(&v13, &location);
        v12 = delegateCopy;
        dispatch_async(executionSessionDelegateQueue2, block);

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __46__PSTransitionManager_dispatchReplayDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained executionSessionDelegate];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

- (BOOL)deliverResourceRequest:(id)request removing:(id)removing
{
  v59 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  removingCopy = removing;
  val = self;
  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (executionSessionDelegate)
  {
    executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (executionSessionDelegateQueue)
    {
      executionSessionDelegate2 = [(PSTransitionManager *)val executionSessionDelegate];
      v9 = [executionSessionDelegate2 conformsToProtocol:&unk_2870D80D0];

      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v12 = requestCopy;
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v12;
        v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v15)
        {
          v16 = *v55;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v55 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v54 + 1) + 8 * i);
              resourceKey = [v18 resourceKey];
              v20 = [(NSSet *)val->_prioritizedResources containsObject:resourceKey];
              v21 = !v20;
              if (v20)
              {
                v22 = v10;
              }

              else
              {
                v22 = v11;
              }

              if (v21)
              {
                v23 = v14;
              }

              else
              {
                v23 = v13;
              }

              [v22 addObject:v18];
              [v23 addObject:resourceKey];
            }

            v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
          }

          while (v15);
        }

        v24 = [v10 count];
        v25 = [v11 count];
        v26 = [removingCopy count];
        v27 = v26;
        if (v24 + v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        v29 = !v28;
        v30 = __PLSLogSharedInstance(v26);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          if (v31)
          {
            LOWORD(buf[0]) = 0;
            v32 = "enqueueing resourcesRequested and resourcesRemoved";
LABEL_35:
            _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
          }
        }

        else if (v24 == -v25)
        {
          if (v27)
          {
            if (v31)
            {
              LOWORD(buf[0]) = 0;
              v32 = "enqueueing resourcesRemoved";
              goto LABEL_35;
            }
          }

          else if (v31)
          {
            LOWORD(buf[0]) = 0;
            v32 = "not enqueuing resourcesRequested or resourcesRemoved, we should never reach here!";
            goto LABEL_35;
          }
        }

        else if (v31)
        {
          LOWORD(buf[0]) = 0;
          v32 = "enqueueing resourcesRequested";
          goto LABEL_35;
        }

        date = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(buf, val);
        executionSessionDelegate = [(PSTransitionManager *)val executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke;
        block[3] = &unk_279A48898;
        objc_copyWeak(v52, buf);
        v45 = date;
        v52[1] = v27;
        v46 = removingCopy;
        v47 = v10;
        v48 = v13;
        v49 = val;
        v52[2] = v24;
        v52[3] = v25;
        v50 = v11;
        v51 = v14;
        v34 = v14;
        v35 = v11;
        v36 = v13;
        v37 = v10;
        v38 = date;
        dispatch_async(executionSessionDelegate, block);

        objc_destroyWeak(v52);
        objc_destroyWeak(buf);

        LOBYTE(executionSessionDelegate) = 1;
        goto LABEL_37;
      }
    }

    LOBYTE(executionSessionDelegate) = 0;
  }

LABEL_37:

  return executionSessionDelegate;
}

void __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v5 = v4;
    v6 = [WeakRetained executionSessionDelegate];
    if (*(a1 + 96))
    {
      v7 = [*(a1 + 40) allObjects];
      v8 = [v7 componentsJoinedByString:{@", "}];

      v10 = __PLSLogSharedInstance(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 96);
        *buf = 134218498;
        v64 = v11;
        v65 = 2112;
        v66 = v8;
        v67 = 2048;
        v68 = v5;
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%lu Resources No Longer wanted : [%@], dispatched in %lf seconds", buf, 0x20u);
      }

      [v6 resourcesNoLongerWanted:*(a1 + 40)];
      if ([WeakRetained shouldSendResourcesNoLongerWantedProcessed])
      {
        v12 = [WeakRetained executionSession];
        [v12 resourcesNoLongerWantedProcessed:*(a1 + 40)];
      }
    }

    v13 = [MEMORY[0x277CBEAA8] date];

    [v13 timeIntervalSinceDate:*(a1 + 32)];
    if (*(a1 + 104))
    {
      v15 = v14;
      v16 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      v17 = __PLSLogSharedInstance(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 104);
        *buf = 134218498;
        v64 = v18;
        v65 = 2112;
        v66 = v16;
        v67 = 2048;
        v68 = v15;
        _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "%lu Resources Requested First : [%@], dispatched in %lf seconds", buf, 0x20u);
      }

      v49 = v16;

      v51 = *(a1 + 48);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v19 = *(a1 + 56);
      v20 = [v19 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v58;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v58 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v57 + 1) + 8 * i);
            v25 = [WeakRetained compiler];
            [v25 withWriterForKey:v24 perform:&__block_literal_global_11];
          }

          v21 = [v19 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v21);
      }

      v26 = [MEMORY[0x277CBEAA8] date];
      v27 = v51;
      [v6 resourcesRequested:v51];
      v28 = [MEMORY[0x277CBEAA8] date];
      [v28 timeIntervalSinceDate:v26];
      ps_ca_resource_request_completed(*(*(a1 + 64) + 120), *(a1 + 104), v29);

      v30 = v49;
    }

    else
    {
      v30 = 0;
      v27 = 0;
    }

    v31 = [MEMORY[0x277CBEAA8] date];

    [v31 timeIntervalSinceDate:*(a1 + 32)];
    if (*(a1 + 112))
    {
      v33 = v32;
      v34 = [*(a1 + 72) componentsJoinedByString:{@", "}];

      v36 = __PLSLogSharedInstance(v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 112);
        *buf = 134218498;
        v64 = v37;
        v65 = 2112;
        v66 = v34;
        v67 = 2048;
        v68 = v33;
        _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_DEFAULT, "%lu Resources Requested Later [%@], dispatched in %lf seconds", buf, 0x20u);
      }

      v50 = v34;
      v52 = v31;

      v38 = *(a1 + 72);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v39 = *(a1 + 80);
      v40 = [v39 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v54;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v54 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v53 + 1) + 8 * j);
            v45 = [WeakRetained compiler];
            [v45 withWriterForKey:v44 perform:&__block_literal_global_106];
          }

          v41 = [v39 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v41);
      }

      v46 = [MEMORY[0x277CBEAA8] date];
      [v6 resourcesRequested:v38];
      v47 = [MEMORY[0x277CBEAA8] date];
      [v47 timeIntervalSinceDate:v46];
      ps_ca_resource_request_completed(*(*(a1 + 64) + 120), *(a1 + 112), v48);

      v30 = v50;
      v31 = v52;
    }

    else
    {
      v38 = v27;
    }
  }
}

void __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke_102(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

void __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke_104(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

- (void)deliverSetupResourcesRequest:(id)request
{
  requestCopy = request;
  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (executionSessionDelegate)
  {
    v6 = executionSessionDelegate;
    executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (executionSessionDelegateQueue)
    {
      conformsToResourcePauseSetupDelegate = [(PSTransitionManager *)self conformsToResourcePauseSetupDelegate];
      if (conformsToResourcePauseSetupDelegate)
      {
        v9 = __PLSLogSharedInstance(conformsToResourcePauseSetupDelegate);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "enqueueing setupResources", buf, 2u);
        }

        date = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(buf, self);
        executionSessionDelegateQueue2 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PSTransitionManager_deliverSetupResourcesRequest___block_invoke;
        block[3] = &unk_279A48848;
        objc_copyWeak(&v16, buf);
        v14 = date;
        v15 = requestCopy;
        v12 = date;
        dispatch_async(executionSessionDelegateQueue2, block);

        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __52__PSTransitionManager_deliverSetupResourcesRequest___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [v6 count];
    v9 = __PLSLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218498;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "%lu Setup Resources [%@], dispatched in %lf seconds", &v11, 0x20u);
    }

    v10 = [WeakRetained executionSessionDelegate];
    [v10 setupResources:*(a1 + 40)];
  }
}

- (void)deliverPauseResourcesRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  requestCopy = request;
  v5 = [requestCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(requestCopy);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        compiler = [(PSTransitionManager *)self compiler];
        [compiler withWriterForKey:v8 perform:&__block_literal_global_108];

        ++v7;
      }

      while (v5 != v7);
      v5 = [requestCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (executionSessionDelegate)
  {
    executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];
    v12 = executionSessionDelegateQueue == 0;

    if (!v12)
    {
      conformsToResourcePauseSetupDelegate = [(PSTransitionManager *)self conformsToResourcePauseSetupDelegate];
      if (conformsToResourcePauseSetupDelegate)
      {
        v14 = __PLSLogSharedInstance(conformsToResourcePauseSetupDelegate);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "enqueueing pauseResources", buf, 2u);
        }

        date = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(buf, self);
        executionSessionDelegateQueue2 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PSTransitionManager_deliverPauseResourcesRequest___block_invoke_109;
        block[3] = &unk_279A48848;
        objc_copyWeak(&v21, buf);
        v19 = date;
        v20 = requestCopy;
        v17 = date;
        dispatch_async(executionSessionDelegateQueue2, block);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __52__PSTransitionManager_deliverPauseResourcesRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F860](v2);
  }
}

void __52__PSTransitionManager_deliverPauseResourcesRequest___block_invoke_109(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v5 = v4;
    v6 = [*(a1 + 40) allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];

    v8 = [*(a1 + 40) count];
    v9 = __PLSLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218498;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "%lu Pause Resources [%@], dispatched in %lf seconds", &v11, 0x20u);
    }

    v10 = [WeakRetained executionSessionDelegate];
    [v10 pauseResources:*(a1 + 40)];
  }
}

- (void)deliverDynamicResourcesAvailableNotification:(id)notification
{
  notificationCopy = notification;
  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (!executionSessionDelegate || (v6 = executionSessionDelegate, [(PSTransitionManager *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = __PLSLogSharedInstance(executionSessionDelegate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, v13, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  executionSessionDelegate2 = [(PSTransitionManager *)self executionSessionDelegate];
  v9 = [executionSessionDelegate2 conformsToProtocol:&unk_2870D80D0];

  if ((v9 & 1) == 0)
  {
    v12 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The execution session delegate doesn't conforms to protocol PSExecutionSessionResourceDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__PSTransitionManager_deliverDynamicResourcesAvailableNotification___block_invoke;
  v14[3] = &unk_279A48120;
  objc_copyWeak(&v16, location);
  v15 = notificationCopy;
  dispatch_async(executionSessionDelegateQueue, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
LABEL_11:
}

void __68__PSTransitionManager_deliverDynamicResourcesAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)notification
{
  notificationCopy = notification;
  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (!executionSessionDelegate || (v6 = executionSessionDelegate, [(PSTransitionManager *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = __PLSLogSharedInstance(executionSessionDelegate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, v13, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  executionSessionDelegate2 = [(PSTransitionManager *)self executionSessionDelegate];
  v9 = [executionSessionDelegate2 conformsToProtocol:&unk_2870D80D0];

  if ((v9 & 1) == 0)
  {
    v12 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The execution session delegate doesn't conforms to protocol PSExecutionSessionResourceDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__PSTransitionManager_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke;
  v14[3] = &unk_279A48120;
  objc_copyWeak(&v16, location);
  v15 = notificationCopy;
  dispatch_async(executionSessionDelegateQueue, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
LABEL_11:
}

void __76__PSTransitionManager_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreNoLongerAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)deliverReplayResourceRequest
{
  executionSessionDelegate = [(PSTransitionManager *)self executionSessionDelegate];
  if (executionSessionDelegate)
  {
    v4 = executionSessionDelegate;
    executionSessionDelegateQueue = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (executionSessionDelegateQueue)
    {
      executionSessionDelegate2 = [(PSTransitionManager *)self executionSessionDelegate];
      v7 = [executionSessionDelegate2 conformsToProtocol:&unk_2870DB740];

      if (v7)
      {
        objc_initWeak(&location, self);
        executionSessionDelegateQueue2 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __51__PSTransitionManager_deliverReplayResourceRequest__block_invoke;
        v9[3] = &unk_279A48298;
        objc_copyWeak(&v10, &location);
        dispatch_async(executionSessionDelegateQueue2, v9);

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __51__PSTransitionManager_deliverReplayResourceRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained executionSessionDelegate];
    [v2 replayResourcesRequested];

    WeakRetained = v3;
  }
}

- (BOOL)commitAddedGraphs:(id)graphs removedGraphs:(id)removedGraphs option:(unint64_t)option stopGraphs:(BOOL)stopGraphs error:(id *)error
{
  stopGraphsCopy = stopGraphs;
  v57 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  removedGraphsCopy = removedGraphs;
  p_transitionMonitor = &self->_transitionMonitor;
  transitionCond = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
  [transitionCond lock];
  while (1)
  {

    if ([(PSTransitionMonitor *)*p_transitionMonitor transitionState]== 12)
    {
      break;
    }

    p_transitionMonitor = &self->_transitionMonitor;
    transitionCond = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
    [transitionCond wait];
  }

  [(PSTransitionMonitor *)self->_transitionMonitor setTransitionState:0];
  transitionCond2 = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
  [transitionCond2 unlock];

  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  dashboard = [WeakRetained dashboard];
  v19 = [PSTransitionBlock generateTransitionBlockWithAddedGraphs:graphsCopy withRemovedGraphs:removedGraphsCopy withDashboard:dashboard withStopOption:stopGraphsCopy];

  if (![(PSTransitionManager *)self prepareTransition:v19 error:error])
  {
    transitionMonitor = self->_transitionMonitor;
    v21 = &self->_transitionMonitor;
    transitionCond3 = [(PSTransitionMonitor *)transitionMonitor transitionCond];
    [transitionCond3 lock];

    [(PSTransitionMonitor *)*v21 setTransitionState:12];
    transitionCond4 = [(PSTransitionMonitor *)*v21 transitionCond];
    [transitionCond4 broadcast];

    transitionCond5 = [(PSTransitionMonitor *)*v21 transitionCond];
    [transitionCond5 unlock];

    v26 = 0;
LABEL_13:

    return v26 & 1;
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PSTransitionManager_commitAddedGraphs_removedGraphs_option_stopGraphs_error___block_invoke;
  aBlock[3] = &unk_279A488E0;
  objc_copyWeak(&v39, &location);
  v36 = v19;
  v37 = &v41;
  v38 = &v47;
  v20 = _Block_copy(aBlock);
  if (option == 1)
  {
    dispatch_async_and_wait(self->_transitionQueue, v20);
    if (!error)
    {
LABEL_12:
      v27 = *(v48 + 24);

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v41, 8);

      v26 = (option != 1) | v27 ^ 1;
      _Block_object_dispose(&v47, 8);
      goto LABEL_13;
    }

LABEL_11:
    *error = v42[5];
    goto LABEL_12;
  }

  if (!option)
  {
    dispatch_async(self->_transitionQueue, v20);
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v34 = 0;
  v29 = asprintf(&v34, "Unrecognized commit type (%llu) requested for transition.", option);
  v30 = __PLSLogSharedInstance(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v52 = "[PSTransitionManager commitAddedGraphs:removedGraphs:option:stopGraphs:error:]";
    v53 = 1024;
    v54 = 729;
    v55 = 2048;
    optionCopy = option;
    _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_FAULT, "%s:%d Unrecognized commit type (%llu) requested for transition.", buf, 0x1Cu);
  }

  v31 = OSLogFlushBuffers();
  v32 = v31;
  if (v31)
  {
    v33 = __PLSLogSharedInstance(v31);
    [PSTransitionManager commitAddedGraphs:v33 removedGraphs:v32 option:? stopGraphs:? error:?];
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void __79__PSTransitionManager_commitAddedGraphs_removedGraphs_option_stopGraphs_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[PLSSettings currentSettings];
  v4 = [v3 graphTransitionTimeoutSec];

  v5 = [WeakRetained transitionMonitor];
  [v5 start:v4];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [WeakRetained transitionExecutorForBlock:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8 == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [WeakRetained updateTransitionCompleted:*(a1 + 32) transitionSucceeded:(*(*(*(a1 + 48) + 8) + 24) & 1) == 0];
  [WeakRetained callTransitionCallback:0 retainedContext:0];
}

- (unint64_t)transitionExecutorForRemote:(id)remote error:(id *)error
{
  v98 = *MEMORY[0x277D85DE8];
  remoteCopy = remote;
  session_hash = self->_transition_analytics.session_hash;
  *&self->_transition_analytics.session_hash = 0u;
  *&self->_transition_analytics.num_graphs_removed = 0u;
  *&self->_transition_analytics.num_outputs = 0u;
  *&self->_transition_analytics.num_tasks = 0u;
  *&self->_transition_analytics.num_writers = 0u;
  *&self->_transition_analytics.prmCreationTime = 0u;
  *&self->_transition_analytics.totalTransitionTime = 0u;
  self->_transition_analytics.session_hash = session_hash;
  v85 = mach_absolute_time();
  v7 = __thread_selfusage();
  addedGraphs = [remoteCopy addedGraphs];
  [(PSTransitionManager *)self setupCoreAnalyticsForAddedGraphs:addedGraphs];

  addedGraphs2 = [remoteCopy addedGraphs];
  self->_transition_analytics.num_graphs_added = [addedGraphs2 count];

  removedGraphs = [remoteCopy removedGraphs];
  self->_transition_analytics.num_graphs_removed = [removedGraphs count];

  v11 = +[PSExecutionSessionWorkarounds sharedInstance];
  executionSession = [(PSTransitionManager *)self executionSession];
  name = [executionSession name];
  v14 = [v11 shouldOverrideCameraStreamProviderType:name];

  if (v14)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    allStreams = [(PSContext *)self->_context allStreams];
    v16 = [allStreams countByEnumeratingWithState:&v88 objects:v97 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v89;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v89 != v18)
          {
            objc_enumerationMutation(allStreams);
          }

          [(PLSDevice *)self->_device populateProviderTypeForStream:*(*(&v88 + 1) + 8 * i)];
        }

        v17 = [allStreams countByEnumeratingWithState:&v88 objects:v97 count:16];
      }

      while (v17);
    }
  }

  v20 = mach_absolute_time();
  v86 = v7;
  if (![(PSTransitionManager *)self sysGraphEnabled])
  {
    executionSession2 = [(PSTransitionManager *)self executionSession];
    dashboard = [executionSession2 dashboard];
    if ([dashboard isLocalReplaySession])
    {
      executionSession3 = [(PSTransitionManager *)self executionSession];
      systemGraphSession = [executionSession3 systemGraphSession];

      if (!systemGraphSession)
      {
LABEL_39:
        systemGraphSession2 = 0;
        goto LABEL_40;
      }

      executionSession4 = [(PSTransitionManager *)self executionSession];
      [executionSession4 publishContextForLocalReplay];

      executionSession2 = +[PLSSettings currentSettings];
      if ([executionSession2 enableFastTransition])
      {
        executionSession5 = [(PSTransitionManager *)self executionSession];
        systemGraphSession2 = [executionSession5 systemGraphSession];

        if (!systemGraphSession2)
        {
          goto LABEL_40;
        }

        [(PSTransitionManager *)self sendGraphInfoToSystemGraph:remoteCopy];
        goto LABEL_39;
      }
    }

    else
    {
    }

    goto LABEL_39;
  }

  UPDATE_STATE(self, 1);
  v22 = __PLSLogSharedInstance(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Requesting system graph transition.", buf, 2u);
  }

  v23 = MEMORY[0x277CBEB98];
  v96[0] = PLSResourceKeyDisplayMattingLeft[0];
  v96[1] = PLSResourceKeyDisplayMattingRight[0];
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
  v25 = [v23 setWithArray:v24];

  compiler = [(PSTransitionManager *)self compiler];
  v27 = [compiler transitionAddedResources:remoteCopy];

  if ([v27 intersectsSet:v25])
  {
    v28 = +[PSExecutionSessionWorkarounds sharedInstance];
    shouldAssumeMattingIsAlwaysOn = [v28 shouldAssumeMattingIsAlwaysOn];

    if (shouldAssumeMattingIsAlwaysOn)
    {
      v30 = [MEMORY[0x277CBEB58] setWithSet:v27];
      [v30 minusSet:v25];

      v27 = v30;
    }
  }

  executionSession6 = [(PSTransitionManager *)self executionSession];
  [executionSession6 waitForContextFromExecutionSessionsProvidingResources:v27];

  v32 = +[PLSSettings currentSettings];
  if ([v32 enableFastTransition])
  {
    executionSession7 = [(PSTransitionManager *)self executionSession];
    systemGraphSession3 = [executionSession7 systemGraphSession];

    if (systemGraphSession3)
    {
      [(PSTransitionManager *)self sendGraphInfoToSystemGraph:remoteCopy];
    }
  }

  else
  {
  }

  compiler2 = [(PSTransitionManager *)self compiler];
  systemGraphSession2 = [compiler2 systemGraphResourceWithStridesRequest:remoteCopy];

  v44 = __PLSLogSharedInstance(v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    resourcesWantedWithStrides = [systemGraphSession2 resourcesWantedWithStrides];
    resourcesNoLongerWantedWithStrides = [systemGraphSession2 resourcesNoLongerWantedWithStrides];
    *buf = 138412546;
    v93 = resourcesWantedWithStrides;
    v94 = 2112;
    v95 = resourcesNoLongerWantedWithStrides;
    _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_DEBUG, "System graph request: resourcesWantedWithStrides=%@, resourcesNoLongerWantedWithStrides=%@", buf, 0x16u);
  }

  v47 = objc_alloc_init(MEMORY[0x277D3E820]);
  resourcesWanted = [systemGraphSession2 resourcesWanted];
  [v47 setResourcesWanted:resourcesWanted];

  resourcesWantedWithStrides2 = [systemGraphSession2 resourcesWantedWithStrides];
  [v47 setResourcesWantedWithStrides:resourcesWantedWithStrides2];

  resourcesWantedWithStrides3 = [v47 resourcesWantedWithStrides];
  v51 = [resourcesWantedWithStrides3 count];

  if (v51)
  {
    systemGraphClient = [(PSTransitionManager *)self systemGraphClient];
    v53 = [systemGraphClient requestResources:v47];

    if (v53 == 1)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-200 description:@"commitAddedGraphs failed due to sleep"];
      }

      v54 = +[PLSSettings currentSettings];
      if ([(PSTransitionBlock *)v54 enableFastTransition])
      {
        executionSession8 = [(PSTransitionManager *)self executionSession];
        systemGraphSession4 = [executionSession8 systemGraphSession];

        if (!systemGraphSession4)
        {
LABEL_35:

          v63 = 1;
LABEL_50:

          return v63;
        }

        v54 = objc_alloc_init(PSTransitionBlock);
        v57 = objc_alloc(MEMORY[0x277CBEB98]);
        removedGraphs2 = [remoteCopy removedGraphs];
        v59 = [v57 initWithSet:removedGraphs2];
        [(PSTransitionBlock *)v54 setAddedGraphs:v59];

        v60 = objc_alloc(MEMORY[0x277CBEB98]);
        addedGraphs3 = [remoteCopy addedGraphs];
        v62 = [v60 initWithSet:addedGraphs3];
        [(PSTransitionBlock *)v54 setRemovedGraphs:v62];

        [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v54];
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v64 = mach_absolute_time();
  self->_transition_analytics.sysGraphRequestTime = ps_util_mach_time_to_ns(v64 - v20) / 0xF4240;
  if ([(PSTransitionManager *)self sysGraphEnabled])
  {
    UPDATE_STATE(self, 11);
    v66 = __PLSLogSharedInstance(v65);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v66, OS_LOG_TYPE_DEFAULT, "Notifying system graph of transition completion.", buf, 2u);
    }

    v67 = objc_alloc_init(MEMORY[0x277D3E820]);
    resourcesNoLongerWanted = [systemGraphSession2 resourcesNoLongerWanted];
    [v67 setResourcesNoLongerWanted:resourcesNoLongerWanted];

    resourcesNoLongerWantedWithStrides2 = [systemGraphSession2 resourcesNoLongerWantedWithStrides];
    [v67 setResourcesNoLongerWantedWithStrides:resourcesNoLongerWantedWithStrides2];

    resourcesNoLongerWantedWithStrides3 = [v67 resourcesNoLongerWantedWithStrides];
    v71 = [resourcesNoLongerWantedWithStrides3 count];

    if (v71)
    {
      systemGraphClient2 = [(PSTransitionManager *)self systemGraphClient];
      [systemGraphClient2 requestResources:v67];
    }

    compiler3 = [(PSTransitionManager *)self compiler];
    [compiler3 notifySystemGraphTransitionCompleted:remoteCopy];

    systemGraphClient3 = [(PSTransitionManager *)self systemGraphClient];
    addedGraphs4 = [remoteCopy addedGraphs];
    removedGraphs3 = [remoteCopy removedGraphs];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __57__PSTransitionManager_transitionExecutorForRemote_error___block_invoke;
    v87[3] = &unk_279A48908;
    v87[4] = self;
    [systemGraphClient3 updateGraphStateWithAdded:addedGraphs4 removed:removedGraphs3 getLivenessNode:v87];
  }

  addedGraphs5 = [remoteCopy addedGraphs];
  ResourceKeyInfo = PSGraphExtractResourceKeyInfo();
  v25 = 0;

  if (ResourceKeyInfo)
  {
    v79 = mach_absolute_time();
    self->_transition_analytics.totalTransitionTime = ps_util_mach_time_to_ns(v79 - v85) / 0xF4240;
    v80 = __thread_selfusage();
    self->_transition_analytics.totalTransitionCPUTime = ps_util_mach_time_to_ns(v80 - v86) / 0xF4240;
    if (self->_isCoreAnalyticsEnabled)
    {
      pbs_ringbufferlogger_shared_write();
    }

    v63 = 0;
    goto LABEL_50;
  }

  v82 = [PSTransitionManager transitionExecutorForRemote:buf error:v25];
  UPDATE_STATE(v82, v83);
  return result;
}

uint64_t __57__PSTransitionManager_transitionExecutorForRemote_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 224) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = *([v2 pointerValue] + 64);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)commitRemoteGraphs:(id)graphs removedGraphs:(id)removedGraphs option:(unint64_t)option stopGraphs:(BOOL)stopGraphs error:(id *)error
{
  stopGraphsCopy = stopGraphs;
  graphsCopy = graphs;
  removedGraphsCopy = removedGraphs;
  transitionCond = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
  [transitionCond lock];
  while (1)
  {

    if ([(PSTransitionMonitor *)self->_transitionMonitor transitionState]== 12)
    {
      break;
    }

    transitionCond = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
    [transitionCond wait];
  }

  [(PSTransitionMonitor *)self->_transitionMonitor setTransitionState:0];
  transitionCond2 = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
  [transitionCond2 unlock];

  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  dashboard = [WeakRetained dashboard];
  v17 = [PSTransitionBlock generateTransitionBlockWithAddedGraphs:graphsCopy withRemovedGraphs:removedGraphsCopy withDashboard:dashboard withStopOption:stopGraphsCopy];

  if ([(PSTransitionManager *)self prepareTransition:v17 error:error])
  {
    v25 = 0;
    transitionCond4 = [(PSTransitionManager *)self transitionExecutorForRemote:v17 error:&v25]!= 1;
    v19 = +[PLSSettings currentSettings];
    graphTransitionTimeoutSec = [v19 graphTransitionTimeoutSec];

    transitionMonitor = [(PSTransitionManager *)self transitionMonitor];
    [transitionMonitor start:graphTransitionTimeoutSec];

    [(PSTransitionManager *)self updateTransitionCompleted:v17 transitionSucceeded:transitionCond4];
    [(PSTransitionManager *)self callTransitionCallback:0 retainedContext:0];
  }

  else
  {
    transitionCond3 = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
    [transitionCond3 lock];

    [(PSTransitionMonitor *)self->_transitionMonitor setTransitionState:12];
    transitionCond4 = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
    [transitionCond4 broadcast];

    transitionCond5 = [(PSTransitionMonitor *)self->_transitionMonitor transitionCond];
    [transitionCond5 unlock];

    LOBYTE(transitionCond4) = 0;
  }

  return transitionCond4;
}

- (BOOL)prepareTransition:(id)transition error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  addedGraphs = [transitionCopy addedGraphs];
  if ([addedGraphs count])
  {
  }

  else
  {
    removedGraphs = [transitionCopy removedGraphs];
    v9 = [removedGraphs count];

    if (!v9)
    {
      if (error)
      {
        v10 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-5 description:@"No graphs were requested for addition or removal"];
        *error = v10;
      }

      v32 = __PLSLogSharedInstance(v10);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v39 = 138412290;
        v40 = @"No graphs were requested for addition or removal";
        _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_ERROR, "%@", &v39, 0xCu);
      }

      goto LABEL_18;
    }
  }

  [(PSGraphCompiler *)self->_compiler resolveTimerStreamsForTransitionBlock:transitionCopy];
  v11 = __PLSLogSharedInstance([(PSGraphCompiler *)self->_compiler setBufferDepthsForTransitionBlock:transitionCopy]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v39) = 0;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "*********************** Transition Requested ***********************", &v39, 2u);
  }

  [transitionCopy printLogsWithContext:self->_context];
  addedGraphs2 = [transitionCopy addedGraphs];
  v13 = PSCheckGraphsAreDAG();

  if (!v13)
  {
    goto LABEL_19;
  }

  context = [(PSTransitionManager *)self context];
  postTransitionGraphs = [transitionCopy postTransitionGraphs];
  v16 = PSGraphResolveFrequencies();

  if (!v16)
  {
    goto LABEL_19;
  }

  context2 = [(PSTransitionManager *)self context];
  addedGraphs3 = [transitionCopy addedGraphs];
  v19 = PSGraphResolveCriticalities();

  if (!v19)
  {
    goto LABEL_19;
  }

  context3 = [(PSTransitionManager *)self context];
  addedGraphs4 = [transitionCopy addedGraphs];
  v22 = PSGraphApplyThreadPoolSizeLimits();

  if (!v22)
  {
    goto LABEL_19;
  }

  context4 = [(PSTransitionManager *)self context];
  addedGraphs5 = [transitionCopy addedGraphs];
  v25 = PSGraphResolveThreadPoolSizes();

  if (!v25)
  {
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  remoteSession = [WeakRetained remoteSession];

  if ((remoteSession & 1) == 0)
  {
    v28 = objc_loadWeakRetained(&self->_executionSession);
    v29 = [PSGraphValidation validateTransitionBlock:transitionCopy forSession:v28 error:error];

    if (!v29)
    {
      v34 = __PLSLogSharedInstance(v30);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [*error localizedDescription];
        v39 = 138412290;
        v40 = localizedDescription;
        _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_ERROR, "An error has occurred during graph transition: %@", &v39, 0xCu);
      }

      localizedRecoverySuggestion = [*error localizedRecoverySuggestion];

      if (!localizedRecoverySuggestion)
      {
        goto LABEL_19;
      }

      v32 = __PLSLogSharedInstance(v37);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        localizedRecoverySuggestion2 = [*error localizedRecoverySuggestion];
        v39 = 138412290;
        v40 = localizedRecoverySuggestion2;
        _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_ERROR, "Recovery suggestion: %@", &v39, 0xCu);
      }

LABEL_18:

LABEL_19:
      v31 = 0;
      goto LABEL_20;
    }
  }

  v31 = 1;
LABEL_20:

  return v31;
}

- (void)updateTransitionCompleted:(id)completed transitionSucceeded:(BOOL)succeeded
{
  succeededCopy = succeeded;
  is_enabled = completed;
  v7 = is_enabled;
  if (succeededCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_executionSession);
    dashboard = [WeakRetained dashboard];
    postTransitionGraphs = [v7 postTransitionGraphs];
    [dashboard setRunningGraphs:postTransitionGraphs];

    is_enabled = ps_telemetry_is_enabled();
    if (is_enabled)
    {
      systemGraphClient = [(PSTransitionManager *)self systemGraphClient];
      [systemGraphClient serverRequestedCurrentGraphs];
    }
  }

  v12 = __PLSLogSharedInstance(is_enabled);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "*********************** Transition Completed ***********************", v14, 2u);
  }

  transitionMonitor = [(PSTransitionManager *)self transitionMonitor];
  [transitionMonitor updateTransitionCompleted];
}

- (void)sendGraphInfoToSystemGraph:(id)graph
{
  v38 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = xpc_dictionary_create(0, 0, 0);
  executionSession = [(PSTransitionManager *)self executionSession];
  name = [executionSession name];
  uTF8String = [name UTF8String];
  v9 = getpid();
  populateGraphSetInfo(v5, 8uLL, uTF8String, v9);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  addedGraphs = [graphCopy addedGraphs];
  v11 = [addedGraphs countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        context = [(PSTransitionManager *)self context];
        device = [(PSTransitionManager *)self device];
        v18 = populateAddedGraphsInfo(v15, v5, context, device);

        if (v18)
        {
          v24 = [(PSTransitionManager *)&v31 sendGraphInfoToSystemGraph:v18];
LABEL_20:
          [(PSTransitionManager *)&v31 sendGraphInfoToSystemGraph:v24];
          goto LABEL_21;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [addedGraphs countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  removedGraphs = [graphCopy removedGraphs];
  v20 = [removedGraphs countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(removedGraphs);
        }

        v24 = populateRemovedGraphsInfo(*(*(&v27 + 1) + 8 * v23), v5);
        if (v24)
        {
          goto LABEL_20;
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [removedGraphs countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v21);
  }

  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  systemGraphSession = [WeakRetained systemGraphSession];
  self = xpc_session_send_message(systemGraphSession, v5);

  if (self)
  {
LABEL_21:
    [(PSTransitionManager *)&v31 sendGraphInfoToSystemGraph:?];
  }
}

- (unint64_t)transitionExecutorForBlock:(id)block error:(id *)error
{
  errorCopy = error;
  v130 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  session_hash = self->_transition_analytics.session_hash;
  *&self->_transition_analytics.session_hash = 0u;
  *&self->_transition_analytics.num_graphs_removed = 0u;
  *&self->_transition_analytics.num_outputs = 0u;
  *&self->_transition_analytics.num_tasks = 0u;
  *&self->_transition_analytics.num_writers = 0u;
  *&self->_transition_analytics.prmCreationTime = 0u;
  *&self->_transition_analytics.totalTransitionTime = 0u;
  self->_transition_analytics.session_hash = session_hash;
  v115 = mach_absolute_time();
  v7 = __thread_selfusage();
  addedGraphs = [blockCopy addedGraphs];
  [(PSTransitionManager *)self setupCoreAnalyticsForAddedGraphs:addedGraphs];

  addedGraphs2 = [blockCopy addedGraphs];
  self->_transition_analytics.num_graphs_added = [addedGraphs2 count];

  removedGraphs = [blockCopy removedGraphs];
  self->_transition_analytics.num_graphs_removed = [removedGraphs count];

  v11 = +[PSExecutionSessionWorkarounds sharedInstance];
  executionSession = [(PSTransitionManager *)self executionSession];
  name = [executionSession name];
  v14 = [v11 shouldOverrideCameraStreamProviderType:name];

  if (v14)
  {
    v123 = 0u;
    v121 = 0u;
    v122 = 0u;
    v120 = 0u;
    allStreams = [(PSContext *)self->_context allStreams];
    v16 = [allStreams countByEnumeratingWithState:&v120 objects:v129 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v121;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v121 != v18)
          {
            objc_enumerationMutation(allStreams);
          }

          [(PLSDevice *)self->_device populateProviderTypeForStream:*(*(&v120 + 1) + 8 * i), errorCopy];
        }

        v17 = [allStreams countByEnumeratingWithState:&v120 objects:v129 count:16];
      }

      while (v17);
    }
  }

  v20 = mach_absolute_time();
  v21 = 0x279A47000uLL;
  v116 = v7;
  if (![(PSTransitionManager *)self sysGraphEnabled])
  {
    executionSession2 = [(PSTransitionManager *)self executionSession];
    dashboard = [executionSession2 dashboard];
    if (([dashboard isLocalReplaySession] & 1) == 0)
    {

LABEL_45:
      goto LABEL_46;
    }

    executionSession3 = [(PSTransitionManager *)self executionSession];
    systemGraphSession = [executionSession3 systemGraphSession];

    if (!systemGraphSession)
    {
LABEL_46:
      systemGraphSession3 = 0;
      goto LABEL_47;
    }

    executionSession4 = [(PSTransitionManager *)self executionSession];
    dashboard2 = [executionSession4 dashboard];
    if ([dashboard2 isLocalReplaySession])
    {
      executionSession5 = [(PSTransitionManager *)self executionSession];
      systemGraphSession2 = [executionSession5 systemGraphSession];

      if (!systemGraphSession2)
      {
        goto LABEL_42;
      }

      executionSession4 = [(PSTransitionManager *)self executionSession];
      [executionSession4 publishContextForLocalReplay];
    }

    else
    {
    }

LABEL_42:
    executionSession2 = +[PLSSettings currentSettings];
    if ([executionSession2 enableFastTransition])
    {
      executionSession6 = [(PSTransitionManager *)self executionSession];
      systemGraphSession3 = [executionSession6 systemGraphSession];

      if (!systemGraphSession3)
      {
        goto LABEL_47;
      }

      [(PSTransitionManager *)self sendGraphInfoToSystemGraph:blockCopy];
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  UPDATE_STATE(self, 1);
  v23 = __PLSLogSharedInstance(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "Requesting system graph transition.", buf, 2u);
  }

  v24 = MEMORY[0x277CBEB98];
  v128[0] = PLSResourceKeyDisplayMattingLeft[0];
  v128[1] = PLSResourceKeyDisplayMattingRight[0];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
  v26 = [v24 setWithArray:v25];

  compiler = [(PSTransitionManager *)self compiler];
  v28 = [compiler transitionAddedResources:blockCopy];

  if ([v28 intersectsSet:v26])
  {
    v29 = +[PSExecutionSessionWorkarounds sharedInstance];
    shouldAssumeMattingIsAlwaysOn = [v29 shouldAssumeMattingIsAlwaysOn];

    if (shouldAssumeMattingIsAlwaysOn)
    {
      v31 = [MEMORY[0x277CBEB58] setWithSet:v28];
      [v31 minusSet:v26];

      v28 = v31;
    }
  }

  executionSession7 = [(PSTransitionManager *)self executionSession];
  [executionSession7 waitForContextFromExecutionSessionsProvidingResources:v28];

  v33 = +[PLSSettings currentSettings];
  if ([v33 enableFastTransition])
  {
    executionSession8 = [(PSTransitionManager *)self executionSession];
    systemGraphSession4 = [executionSession8 systemGraphSession];

    if (systemGraphSession4)
    {
      [(PSTransitionManager *)self sendGraphInfoToSystemGraph:blockCopy];
    }
  }

  else
  {
  }

  compiler2 = [(PSTransitionManager *)self compiler];
  systemGraphSession3 = [compiler2 systemGraphResourceWithStridesRequest:blockCopy];

  v46 = +[PSExecutionSessionWorkarounds sharedInstance];
  shouldAssumeMattingIsAlwaysOn2 = [v46 shouldAssumeMattingIsAlwaysOn];

  if (shouldAssumeMattingIsAlwaysOn2)
  {
    resourcesWantedWithStrides = [systemGraphSession3 resourcesWantedWithStrides];
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke;
    v118[3] = &unk_279A48930;
    v119 = v26;
    v50 = [resourcesWantedWithStrides filteredArrayWithBlock:v118];
    [systemGraphSession3 setResourcesWantedWithStrides:v50];
  }

  v51 = __PLSLogSharedInstance(v48);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    resourcesWantedWithStrides2 = [systemGraphSession3 resourcesWantedWithStrides];
    resourcesNoLongerWantedWithStrides = [systemGraphSession3 resourcesNoLongerWantedWithStrides];
    *buf = 138412546;
    v125 = resourcesWantedWithStrides2;
    v126 = 2112;
    v127 = resourcesNoLongerWantedWithStrides;
    _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_DEBUG, "System graph request: resourcesWantedWithStrides=%@, resourcesNoLongerWantedWithStrides=%@", buf, 0x16u);
  }

  v54 = objc_alloc_init(MEMORY[0x277D3E820]);
  resourcesWanted = [systemGraphSession3 resourcesWanted];
  [v54 setResourcesWanted:resourcesWanted];

  resourcesWantedWithStrides3 = [systemGraphSession3 resourcesWantedWithStrides];
  [v54 setResourcesWantedWithStrides:resourcesWantedWithStrides3];

  resourcesWantedWithStrides4 = [v54 resourcesWantedWithStrides];
  v58 = [resourcesWantedWithStrides4 count];

  if (v58)
  {
    systemGraphClient = [(PSTransitionManager *)self systemGraphClient];
    v60 = [systemGraphClient requestResources:v54];

    if (v60 == 1)
    {
      if (errorCopy)
      {
        *errorCopy = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-200 description:@"commitAddedGraphs failed due to sleep"];
      }

      v61 = +[PLSSettings currentSettings];
      if ([(PSTransitionBlock *)v61 enableFastTransition])
      {
        executionSession9 = [(PSTransitionManager *)self executionSession];
        systemGraphSession5 = [executionSession9 systemGraphSession];

        if (!systemGraphSession5)
        {
LABEL_37:

          v70 = 1;
LABEL_64:

          return v70;
        }

        v61 = objc_alloc_init(PSTransitionBlock);
        v64 = objc_alloc(MEMORY[0x277CBEB98]);
        removedGraphs2 = [blockCopy removedGraphs];
        v66 = [v64 initWithSet:removedGraphs2];
        [(PSTransitionBlock *)v61 setAddedGraphs:v66];

        v67 = objc_alloc(MEMORY[0x277CBEB98]);
        addedGraphs3 = [blockCopy addedGraphs];
        v69 = [v67 initWithSet:addedGraphs3];
        [(PSTransitionBlock *)v61 setRemovedGraphs:v69];

        [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v61];
      }

      goto LABEL_37;
    }
  }

  v21 = 0x279A47000;
LABEL_47:
  v72 = mach_absolute_time();
  self->_transition_analytics.sysGraphRequestTime = ps_util_mach_time_to_ns(v72 - v20) / 0xF4240;
  UPDATE_STATE(self, 2);
  compiler3 = [(PSTransitionManager *)self compiler];
  [compiler3 resolveStreamDomainsForTransitionBlock:blockCopy];

  v75 = __PLSLogSharedInstance(v74);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v75, OS_LOG_TYPE_DEFAULT, "*********************** Resolved Added Graphs ***********************", buf, 2u);
  }

  [blockCopy printLogsWithContext:self->_context printResolvedFieldsOnly:1];
  UPDATE_STATE(self, 3);
  compiler4 = [(PSTransitionManager *)self compiler];
  [compiler4 initializeLocalSystemSourcesForTransitionBlock:blockCopy];

  v77 = mach_absolute_time();
  v78 = __thread_selfusage();
  UPDATE_STATE(self, 4);
  compiler5 = [(PSTransitionManager *)self compiler];
  [compiler5 createSourceTasksForTransitionBlock:blockCopy];

  compiler6 = [(PSTransitionManager *)self compiler];
  [compiler6 createWritersForTransitionBlock:blockCopy];

  compiler7 = [(PSTransitionManager *)self compiler];
  [compiler7 createPRMInstancesForTransitionBlock:blockCopy];

  compiler8 = [(PSTransitionManager *)self compiler];
  [compiler8 createReadersForTransitionBlock:blockCopy];

  v83 = mach_absolute_time();
  self->_transition_analytics.prmCreationTime = ps_util_mach_time_to_ns(v83 - v77) / 0xF4240;
  v84 = __thread_selfusage();
  self->_transition_analytics.prmCreationCPUTime = ps_util_mach_time_to_ns(v84 - v78) / 0xF4240;
  UPDATE_STATE(self, 7);
  currentSettings = [*(v21 + 1680) currentSettings];
  if ([currentSettings enableFastTransition])
  {
    executionSession10 = [(PSTransitionManager *)self executionSession];
    systemGraphSession6 = [executionSession10 systemGraphSession];

    if (systemGraphSession6)
    {
      [(PSTransitionManager *)self removeExecutorGraphsOverXPCForTransitionBlock:blockCopy];
      goto LABEL_54;
    }
  }

  else
  {
  }

  [(PSTransitionManager *)self removeExecutorGraphsForTransitionBlock:blockCopy, errorCopy];
LABEL_54:
  UPDATE_STATE(self, 6);
  [(PSTransitionManager *)self addExecutorGraphsForTransitionBlock:blockCopy];
  compiler9 = [(PSTransitionManager *)self compiler];
  [compiler9 removeMTLCommandQueuesForTransitionBlock:blockCopy];

  UPDATE_STATE(self, 5);
  [(PSTransitionManager *)self initializeGroupedTriggersForTransitionBlock:blockCopy];
  UPDATE_STATE(self, 8);
  compiler10 = [(PSTransitionManager *)self compiler];
  [compiler10 destroyGroupedTriggersForTransitionBlock:blockCopy];

  UPDATE_STATE(self, 9);
  compiler11 = [(PSTransitionManager *)self compiler];
  [compiler11 destroyReadersForTransitionBlock:blockCopy];

  compiler12 = [(PSTransitionManager *)self compiler];
  [compiler12 destroyPRMInstancesForTransitionBlock:blockCopy];

  compiler13 = [(PSTransitionManager *)self compiler];
  [compiler13 destroyWritersForTransitionBlock:blockCopy];

  compiler14 = [(PSTransitionManager *)self compiler];
  [compiler14 removeSourceTasksForTransitionBlock:blockCopy];

  UPDATE_STATE(self, 10);
  compiler15 = [(PSTransitionManager *)self compiler];
  [compiler15 deinitializeLocalSystemSourcesForTransitionBlock:blockCopy];

  if ([(PSTransitionManager *)self sysGraphEnabled])
  {
    UPDATE_STATE(self, 11);
    v96 = __PLSLogSharedInstance(v95);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v96, OS_LOG_TYPE_DEFAULT, "Notifying system graph of transition completion.", buf, 2u);
    }

    v97 = objc_alloc_init(MEMORY[0x277D3E820]);
    resourcesNoLongerWanted = [systemGraphSession3 resourcesNoLongerWanted];
    [v97 setResourcesNoLongerWanted:resourcesNoLongerWanted];

    resourcesNoLongerWantedWithStrides2 = [systemGraphSession3 resourcesNoLongerWantedWithStrides];
    [v97 setResourcesNoLongerWantedWithStrides:resourcesNoLongerWantedWithStrides2];

    resourcesNoLongerWantedWithStrides3 = [v97 resourcesNoLongerWantedWithStrides];
    v101 = [resourcesNoLongerWantedWithStrides3 count];

    if (v101)
    {
      systemGraphClient2 = [(PSTransitionManager *)self systemGraphClient];
      [systemGraphClient2 requestResources:v97];
    }

    compiler16 = [(PSTransitionManager *)self compiler];
    [compiler16 notifySystemGraphTransitionCompleted:blockCopy];

    systemGraphClient3 = [(PSTransitionManager *)self systemGraphClient];
    addedGraphs4 = [blockCopy addedGraphs];
    removedGraphs3 = [blockCopy removedGraphs];
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke_138;
    v117[3] = &unk_279A48908;
    v117[4] = self;
    [systemGraphClient3 updateGraphStateWithAdded:addedGraphs4 removed:removedGraphs3 getLivenessNode:v117];
  }

  addedGraphs5 = [blockCopy addedGraphs];
  ResourceKeyInfo = PSGraphExtractResourceKeyInfo();
  v26 = 0;

  if (ResourceKeyInfo)
  {
    v109 = mach_absolute_time();
    self->_transition_analytics.totalTransitionTime = ps_util_mach_time_to_ns(v109 - v115) / 0xF4240;
    v110 = __thread_selfusage();
    self->_transition_analytics.totalTransitionCPUTime = ps_util_mach_time_to_ns(v110 - v116) / 0xF4240;
    if (self->_isCoreAnalyticsEnabled)
    {
      pbs_ringbufferlogger_shared_write();
    }

    v70 = 0;
    goto LABEL_64;
  }

  v112 = [PSTransitionManager transitionExecutorForBlock:buf error:v26];
  return __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke(v112, v113);
}

uint64_t __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 resourceKey];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke_138(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 224) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = *([v2 pointerValue] + 64);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

- (void)initializeGroupedTriggersForTransitionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  addedGraphs = [blockCopy addedGraphs];
  v6 = [addedGraphs count];

  if (v6)
  {
    v8 = __PLSLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Initializing GSTs for transition block.", buf, 2u);
    }
  }

  v9 = +[PLSSettings currentSettings];
  if ([v9 enableFastTransition])
  {
    executionSession = [(PSTransitionManager *)self executionSession];
    systemGraphSession = [executionSession systemGraphSession];

    if (systemGraphSession)
    {
      [(PSGraphCompiler *)self->_compiler createGroupedTriggersOverXPCForTransitionBlock:blockCopy];
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(PSGraphCompiler *)self->_compiler createGroupedTriggersForTransitionBlock:blockCopy];
LABEL_10:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  addedGraphs2 = [blockCopy addedGraphs];
  v13 = [addedGraphs2 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(addedGraphs2);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        tasks = [v17 tasks];
        v19 = [tasks count];

        if (v19)
        {
          *buf = 0;
          v20 = [(NSMapTable *)self->_execGraphMap objectForKey:v17];
          [v20 getValue:buf];

          if (*buf)
          {
            [(PSGraphCompiler *)self->_compiler initializeGroupedTriggersForSubgraph:*buf withClientGraph:v17];
          }
        }
      }

      v14 = [addedGraphs2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  addedGraphs3 = [blockCopy addedGraphs];
  v22 = [addedGraphs3 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(addedGraphs3);
        }

        [(PSGraphCompiler *)self->_compiler initThreadPoolForGraph:*(*(&v26 + 1) + 8 * j) withExecutorGraph:self->_executor->var0];
      }

      v23 = [addedGraphs3 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v23);
  }
}

- (void)removeExecutorGraphsOverXPCForTransitionBlock:(id)block
{
  v73 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  removedGraphs = [blockCopy removedGraphs];
  v6 = [removedGraphs count];

  if (!v6)
  {
LABEL_38:

    return;
  }

  v8 = __PLSLogSharedInstance(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Removing PolarisExecutor graphs for transition block via XPC.", buf, 2u);
  }

  v55 = blockCopy;
  removedGraphs2 = [blockCopy removedGraphs];
  v10 = xpc_dictionary_create(0, 0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  name = [WeakRetained name];
  uTF8String = [name UTF8String];
  v14 = getpid();
  xdict = v10;
  populateGraphSetInfo(v10, 2uLL, uTF8String, v14);

  [(PSTransitionMonitor *)self->_transitionMonitor lock];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v15 = removedGraphs2;
  v16 = [v15 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v67;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v67 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v66 + 1) + 8 * i);
        tasks = [v20 tasks];
        v22 = [tasks count];

        if (v22)
        {
          v23 = [(NSMapTable *)self->_execGraphMap objectForKey:v20];
          subGraphsToBeRemoved = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
          [subGraphsToBeRemoved addObject:v23];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v17);
  }

  [(PSTransitionMonitor *)self->_transitionMonitor unlock];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v62 + 1) + 8 * j);
        tasks2 = [v30 tasks];
        v32 = [tasks2 count];

        if (v32)
        {
          v33 = [(NSMapTable *)self->_execGraphMap objectForKey:v30];
          if (!v33)
          {
            [(PSTransitionManager *)buf removeExecutorGraphsOverXPCForTransitionBlock:v30];
LABEL_40:
            [(PSTransitionManager *)buf removeExecutorGraphsOverXPCForTransitionBlock:v30];
          }

          v34 = v33;
          pointerValue = [v33 pointerValue];
          if ([v30 teardownType])
          {
            goto LABEL_40;
          }

          graphGSTMap = [(PSGraphCompiler *)self->_compiler graphGSTMap];
          v37 = [graphGSTMap objectForKey:v30];

          if (v37)
          {
            v38 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v38, "graph_name", (pointerValue + 113));
            xpc_dictionary_set_uint64(v38, "gst_idx", *[v37 pointerValue]);
            appendGraphInfotoGraphSetInfo(v38, xdict);
          }

          ps_exec_request_subgraph_terminate(self->_executor, pointerValue);

          [(NSMapTable *)self->_execGraphMap removeObjectForKey:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v27);
  }

  v39 = xpc_dictionary_get_value(xdict, "graphs_array");
  if (!xpc_array_get_count(v39) || (v40 = objc_loadWeakRetained(&self->_executionSession), [v40 systemGraphSession], v41 = objc_claimAutoreleasedReturnValue(), v42 = xpc_session_send_message(v41, xdict), v41, v40, !v42))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v43 = v25;
    v44 = [v43 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v58;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v58 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v57 + 1) + 8 * k);
          tasks3 = [v48 tasks];
          v50 = [tasks3 count];

          if (v50)
          {
            [(PSGraphCompiler *)self->_compiler removeGraphFromThreadPool:v48];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v45);
    }

    [(PSTransitionMonitor *)self->_transitionMonitor lock];
    subGraphsToBeRemoved2 = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
    [subGraphsToBeRemoved2 removeAllObjects];

    [(PSTransitionMonitor *)self->_transitionMonitor unlock];
    blockCopy = v55;
    goto LABEL_38;
  }

  v52 = [(PSTransitionManager *)buf removeExecutorGraphsOverXPCForTransitionBlock:v42];
  [(PSTransitionManager *)v52 removeExecutorGraphsForTransitionBlock:v53, v54];
}

- (void)removeExecutorGraphsForTransitionBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  removedGraphs = [blockCopy removedGraphs];
  v6 = [removedGraphs count];

  if (v6)
  {
    v8 = __PLSLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Removing PolarisExecutor graphs for transition block.", buf, 2u);
    }

    removedGraphs2 = [blockCopy removedGraphs];
    [(PSTransitionMonitor *)self->_transitionMonitor lock];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = removedGraphs2;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v53 + 1) + 8 * i);
          tasks = [v15 tasks];
          v17 = [tasks count];

          if (v17)
          {
            v18 = [(NSMapTable *)self->_execGraphMap objectForKey:v15];
            subGraphsToBeRemoved = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
            [subGraphsToBeRemoved addObject:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v12);
    }

    [(PSTransitionMonitor *)self->_transitionMonitor unlock];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v49 + 1) + 8 * j);
          tasks2 = [v25 tasks];
          v27 = [tasks2 count];

          if (v27)
          {
            v28 = [(NSMapTable *)self->_execGraphMap objectForKey:v25];
            if (!v28)
            {
              [(PSTransitionManager *)buf removeExecutorGraphsForTransitionBlock:v25];
LABEL_42:
              [(PSTransitionManager *)buf removeExecutorGraphsForTransitionBlock:v25];
            }

            v29 = v28;
            pointerValue = [v28 pointerValue];
            teardownType = [v25 teardownType];
            if (teardownType == 2)
            {
              executor = self->_executor;
              v33 = pointerValue;
              v34 = 0;
            }

            else
            {
              if (teardownType != 1)
              {
                if (teardownType)
                {
                  goto LABEL_42;
                }

                ps_exec_request_remove_subgraph(self->_executor, pointerValue);
                goto LABEL_27;
              }

              executor = self->_executor;
              v33 = pointerValue;
              v34 = 1;
            }

            ps_exec_request_remove_subgraph_with_sequenced_teardown(executor, v33, v34);
LABEL_27:
            [(NSMapTable *)self->_execGraphMap removeObjectForKey:v25];

            continue;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v22);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v20;
    v36 = [v35 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v45;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v44 + 1) + 8 * k);
          tasks3 = [v40 tasks];
          v42 = [tasks3 count];

          if (v42)
          {
            [(PSGraphCompiler *)self->_compiler removeGraphFromThreadPool:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v37);
    }

    [(PSTransitionMonitor *)self->_transitionMonitor lock];
    subGraphsToBeRemoved2 = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
    [subGraphsToBeRemoved2 removeAllObjects];

    [(PSTransitionMonitor *)self->_transitionMonitor unlock];
  }
}

- (void)addExecutorGraphsForTransitionBlock:(id)block
{
  v156 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  addedGraphs = [blockCopy addedGraphs];
  v6 = [addedGraphs count];

  if (v6)
  {
    v8 = __PLSLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Adding PolarisExecutor graphs for transition block.", buf, 2u);
    }

    v87 = blockCopy;
    addedGraphs2 = [blockCopy addedGraphs];
    selfCopy = self;
    if (self->_isCoreAnalyticsEnabled)
    {
      v86 = addedGraphs2;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      obj = [blockCopy addedGraphs];
      v90 = [obj countByEnumeratingWithState:&v112 objects:v119 count:16];
      if (v90)
      {
        v89 = *v113;
        do
        {
          v10 = 0;
          do
          {
            if (*v113 != v89)
            {
              objc_enumerationMutation(obj);
            }

            v91 = v10;
            v11 = *(*(&v112 + 1) + 8 * v10);
            v12 = +[PSExecutionSessionWorkarounds sharedInstance];
            v93 = v11;
            name = [v11 name];
            processInfo = [MEMORY[0x277CCAC38] processInfo];
            processName = [processInfo processName];
            v16 = [v12 shortenedNameForGraph:name procName:processName];

            v92 = v16;
            uTF8String = [v16 UTF8String];
            if (uTF8String)
            {
              v18 = *uTF8String;
              v19 = 2166136261;
              if (*uTF8String)
              {
                v20 = uTF8String + 1;
                do
                {
                  v19 = 16777619 * (v19 ^ v18);
                  v21 = *v20++;
                  v18 = v21;
                }

                while (v21);
              }
            }

            else
            {
              v19 = 0;
            }

            graphHashTracker = self->_graphHashTracker;
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
            LOBYTE(graphHashTracker) = [(NSMutableSet *)graphHashTracker containsObject:v23];

            if ((graphHashTracker & 1) == 0)
            {
              v24 = self->_graphHashTracker;
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
              [(NSMutableSet *)v24 addObject:v25];

              uTF8String2 = [v16 UTF8String];
              if (uTF8String2)
              {
                v27 = uTF8String2;
                v155 = 0;
                v153 = 0u;
                v154 = 0u;
                v28 = v19;
                v151 = 0u;
                v152 = 0u;
                v149 = 0u;
                v150 = 0u;
                v147 = 0u;
                v148 = 0u;
                v145 = 0u;
                v146 = 0u;
                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                v137 = 0u;
                v138 = 0u;
                v135 = 0u;
                v136 = 0u;
                v133 = 0u;
                v134 = 0u;
                v131 = 0u;
                v132 = 0u;
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v124 = 0u;
                *buf = v19;
                __strlcpy_chk();
                v29 = 0;
                while (1)
                {
                  v30 = pbs_ringbufferlogger_shared_write_decode_data();
                  if (!v30)
                  {
                    break;
                  }

                  v31 = v30;
                  v29 += 4;
                  if (v29 == 12)
                  {
                    v122 = 0;
                    v120 = v28;
                    strncpy(v121, v27, 0x100uLL);
                    LODWORD(v122) = v31;
                    pbs_ringbuffer_get_shared_error_log();
                    pbs_ringbufferlogger_shared_write();
                    break;
                  }
                }
              }
            }

            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            tasks = [v93 tasks];
            v98 = [tasks countByEnumeratingWithState:&v108 objects:v118 count:16];
            if (v98)
            {
              v32 = *v109;
              do
              {
                for (i = 0; i != v98; ++i)
                {
                  if (*v109 != v32)
                  {
                    objc_enumerationMutation(tasks);
                  }

                  v34 = *(*(&v108 + 1) + 8 * i);
                  name2 = [v34 name];
                  uTF8String3 = [name2 UTF8String];
                  if (uTF8String3)
                  {
                    v37 = *uTF8String3;
                    v38 = 2166136261;
                    if (*uTF8String3)
                    {
                      v39 = uTF8String3 + 1;
                      do
                      {
                        v38 = 16777619 * (v38 ^ v37);
                        v40 = *v39++;
                        v37 = v40;
                      }

                      while (v40);
                    }
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v41 = self->_graphHashTracker;
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
                  LOBYTE(v41) = [(NSMutableSet *)v41 containsObject:v42];

                  if ((v41 & 1) == 0)
                  {
                    v43 = self->_graphHashTracker;
                    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
                    [(NSMutableSet *)v43 addObject:v44];

                    name3 = [v34 name];
                    uTF8String4 = [name3 UTF8String];
                    if (uTF8String4)
                    {
                      v47 = uTF8String4;
                      v48 = v32;
                      v155 = 0;
                      v153 = 0u;
                      v154 = 0u;
                      v49 = v38;
                      v151 = 0u;
                      v152 = 0u;
                      v149 = 0u;
                      v150 = 0u;
                      v147 = 0u;
                      v148 = 0u;
                      v145 = 0u;
                      v146 = 0u;
                      v143 = 0u;
                      v144 = 0u;
                      v141 = 0u;
                      v142 = 0u;
                      v139 = 0u;
                      v140 = 0u;
                      v137 = 0u;
                      v138 = 0u;
                      v135 = 0u;
                      v136 = 0u;
                      v133 = 0u;
                      v134 = 0u;
                      v131 = 0u;
                      v132 = 0u;
                      v129 = 0u;
                      v130 = 0u;
                      v127 = 0u;
                      v128 = 0u;
                      v125 = 0u;
                      v126 = 0u;
                      v124 = 0u;
                      *buf = v38;
                      __strlcpy_chk();
                      v50 = 0;
                      while (1)
                      {
                        v51 = pbs_ringbufferlogger_shared_write_decode_data();
                        if (!v51)
                        {
                          break;
                        }

                        v52 = v51;
                        v50 += 4;
                        if (v50 == 12)
                        {
                          v122 = 0;
                          v120 = v49;
                          strncpy(v121, v47, 0x100uLL);
                          LODWORD(v122) = v52;
                          pbs_ringbuffer_get_shared_error_log();
                          pbs_ringbufferlogger_shared_write();
                          break;
                        }
                      }

                      v32 = v48;
                      self = selfCopy;
                    }
                  }
                }

                v98 = [tasks countByEnumeratingWithState:&v108 objects:v118 count:16];
              }

              while (v98);
            }

            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            writers = [v93 writers];
            v99 = [writers countByEnumeratingWithState:&v104 objects:v117 count:16];
            if (v99)
            {
              v97 = *v105;
              do
              {
                for (j = 0; j != v99; ++j)
                {
                  if (*v105 != v97)
                  {
                    objc_enumerationMutation(writers);
                  }

                  v54 = *(*(&v104 + 1) + 8 * j);
                  output = [v54 output];
                  resourceKey = [output resourceKey];
                  uTF8String5 = [resourceKey UTF8String];
                  if (uTF8String5)
                  {
                    v58 = *uTF8String5;
                    v59 = 2166136261;
                    if (*uTF8String5)
                    {
                      v60 = uTF8String5 + 1;
                      do
                      {
                        v59 = 16777619 * (v59 ^ v58);
                        v61 = *v60++;
                        v58 = v61;
                      }

                      while (v61);
                    }
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v62 = self->_graphHashTracker;
                  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v59];
                  LOBYTE(v62) = [(NSMutableSet *)v62 containsObject:v63];

                  if ((v62 & 1) == 0)
                  {
                    v64 = self->_graphHashTracker;
                    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v59];
                    [(NSMutableSet *)v64 addObject:v65];

                    output2 = [v54 output];
                    resourceKey2 = [output2 resourceKey];
                    uTF8String6 = [resourceKey2 UTF8String];
                    if (uTF8String6)
                    {
                      v69 = uTF8String6;
                      v155 = 0;
                      v153 = 0u;
                      v154 = 0u;
                      v70 = v59;
                      v151 = 0u;
                      v152 = 0u;
                      v149 = 0u;
                      v150 = 0u;
                      v147 = 0u;
                      v148 = 0u;
                      v145 = 0u;
                      v146 = 0u;
                      v143 = 0u;
                      v144 = 0u;
                      v141 = 0u;
                      v142 = 0u;
                      v139 = 0u;
                      v140 = 0u;
                      v137 = 0u;
                      v138 = 0u;
                      v135 = 0u;
                      v136 = 0u;
                      v133 = 0u;
                      v134 = 0u;
                      v131 = 0u;
                      v132 = 0u;
                      v129 = 0u;
                      v130 = 0u;
                      v127 = 0u;
                      v128 = 0u;
                      v125 = 0u;
                      v126 = 0u;
                      v124 = 0u;
                      *buf = v59;
                      __strlcpy_chk();
                      v71 = 0;
                      while (1)
                      {
                        v72 = pbs_ringbufferlogger_shared_write_decode_data();
                        if (!v72)
                        {
                          break;
                        }

                        v73 = v72;
                        v71 += 4;
                        if (v71 == 12)
                        {
                          v122 = 0;
                          v120 = v70;
                          strncpy(v121, v69, 0x100uLL);
                          LODWORD(v122) = v73;
                          pbs_ringbuffer_get_shared_error_log();
                          pbs_ringbufferlogger_shared_write();
                          break;
                        }
                      }

                      self = selfCopy;
                    }
                  }
                }

                v99 = [writers countByEnumeratingWithState:&v104 objects:v117 count:16];
              }

              while (v99);
            }

            v10 = v91 + 1;
          }

          while (v91 + 1 != v90);
          v90 = [obj countByEnumeratingWithState:&v112 objects:v119 count:16];
        }

        while (v90);
      }

      addedGraphs2 = v86;
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v74 = addedGraphs2;
    v75 = [v74 countByEnumeratingWithState:&v100 objects:v116 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v101;
      do
      {
        for (k = 0; k != v76; ++k)
        {
          if (*v101 != v77)
          {
            objc_enumerationMutation(v74);
          }

          v79 = *(*(&v100 + 1) + 8 * k);
          tasks2 = [v79 tasks];
          v81 = [tasks2 count];

          if (v81)
          {
            v82 = ps_exec_request_add_subgraph(selfCopy->_executor);
            [(PSGraphCompiler *)selfCopy->_compiler createExecSubGraphWithFreeSlot:v82 withClientGraph:v79];
            WeakRetained = objc_loadWeakRetained(&selfCopy->_executionSession);
            ps_frame_history_graph_buffer_init(WeakRetained[1], v82, v79);

            [v79 setSubgraph_idx:*(v82 + 4)];
            execGraphMap = selfCopy->_execGraphMap;
            v85 = [MEMORY[0x277CCAE60] valueWithPointer:v82];
            [(NSMapTable *)execGraphMap setObject:v85 forKey:v79];
          }
        }

        v76 = [v74 countByEnumeratingWithState:&v100 objects:v116 count:16];
      }

      while (v76);
    }

    ps_exec_finish_adding_subgraphs(selfCopy->_executor);
    blockCopy = v87;
  }
}

- (PSExecutionSession)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (void)setupCoreAnalyticsForAddedGraphs:(id)graphs
{
  v73 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  obj = graphsCopy;
  if (self->_isCoreAnalyticsEnabled)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v59 = OUTLINED_FUNCTION_9_1(graphsCopy, v5, v6, v7, v8, v9, v10, v11, v53, graphsCopy, v56, v58, v60, v62, v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1));
    if (v59)
    {
      v57 = *v69;
      do
      {
        v12 = 0;
        do
        {
          if (*v69 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v68 + 1) + 8 * v12);
          v14 = +[PSExecutionSessionWorkarounds sharedInstance];
          name = [v13 name];
          processInfo = [MEMORY[0x277CCAC38] processInfo];
          processName = [processInfo processName];
          v18 = [v14 shortenedNameForGraph:name procName:processName];
          [v13 setCaName:v18];

          v19 = MEMORY[0x277CCABB0];
          caName = [v13 caName];
          uTF8String = [caName UTF8String];
          v61 = v12;
          if (uTF8String)
          {
            v22 = *uTF8String;
            v23 = 2166136261;
            if (*uTF8String)
            {
              v24 = uTF8String + 1;
              do
              {
                v23 = 16777619 * (v23 ^ v22);
                v25 = *v24++;
                v22 = v25;
              }

              while (v25);
            }
          }

          else
          {
            v23 = 0;
          }

          v26 = [v19 numberWithUnsignedInt:v23];
          [v13 setCaNameHash:v26];

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          tasks = [v13 tasks];
          v27 = [tasks countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v65;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v65 != v29)
                {
                  objc_enumerationMutation(tasks);
                }

                v31 = *(*(&v64 + 1) + 8 * i);
                v32 = +[PSExecutionSessionWorkarounds sharedInstance];
                name2 = [v31 name];
                processInfo2 = [MEMORY[0x277CCAC38] processInfo];
                processName2 = [processInfo2 processName];
                v36 = [v32 shortenedNameForTask:name2 procName:processName2];
                [v31 setCaName:v36];

                v37 = MEMORY[0x277CCABB0];
                caName2 = [v31 caName];
                uTF8String2 = [caName2 UTF8String];
                if (uTF8String2)
                {
                  v40 = *uTF8String2;
                  v41 = 2166136261;
                  if (*uTF8String2)
                  {
                    v42 = uTF8String2 + 1;
                    do
                    {
                      v41 = 16777619 * (v41 ^ v40);
                      v43 = *v42++;
                      v40 = v43;
                    }

                    while (v43);
                  }
                }

                else
                {
                  v41 = 0;
                }

                v44 = [v37 numberWithUnsignedInt:v41];
                [v31 setCaNameHash:v44];
              }

              v28 = [tasks countByEnumeratingWithState:&v64 objects:v72 count:16];
            }

            while (v28);
          }

          v12 = v61 + 1;
        }

        while (v61 + 1 != v59);
        v59 = OUTLINED_FUNCTION_9_1(v45, v46, v47, v48, v49, v50, v51, v52, v54, obj, v57, v59, v61, tasks, v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1));
      }

      while (v59);
    }
  }
}

- (void)commitAddedGraphs:(NSObject *)a1 removedGraphs:(int)a2 option:stopGraphs:error:.cold.1(NSObject *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PSTransitionManager commitAddedGraphs:removedGraphs:option:stopGraphs:error:]";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }
}

- (uint64_t)transitionExecutorForRemote:(char *)a1 error:(void *)a2 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not extract resource key info because %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 description];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not extract resource key info because %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 sendGraphInfoToSystemGraph:v23];
}

- (uint64_t)sendGraphInfoToSystemGraph:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "An error has occurred during graph transition %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 localizedDescription];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d An error has occurred during graph transition %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 sendGraphInfoToSystemGraph:v23];
}

- (uint64_t)sendGraphInfoToSystemGraph:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "An error has occurred during graph transition: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 localizedDescription];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d An error has occurred during graph transition: %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 sendGraphInfoToSystemGraph:v23];
}

- (uint64_t)sendGraphInfoToSystemGraph:(char *)a1 .cold.3(char **a1, xpc_rich_error_t error)
{
  *a1 = 0;
  v5 = xpc_rich_error_copy_description(error);
  v6 = asprintf(a1, "Failed to send an XPC message for graphsAddedRemoved to polarisd, aborting! Error = %s", v5);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    xpc_rich_error_copy_description(error);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Failed to send an XPC message for graphsAddedRemoved to polarisd, aborting! Error = %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager transitionExecutorForBlock:v22 error:v23];
}

- (uint64_t)transitionExecutorForBlock:(char *)a1 error:(void *)a2 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not extract resource key info because %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 description];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not extract resource key info because %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 removeExecutorGraphsOverXPCForTransitionBlock:v23];
}

- (uint64_t)removeExecutorGraphsOverXPCForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Bad teardown type specified for graph %s: %lu", [v4 UTF8String], objc_msgSend(a2, "teardownType"));

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    [a2 teardownType];
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v8, v9, "%s:%d Bad teardown type specified for graph %s: %lu", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 removeExecutorGraphsOverXPCForTransitionBlock:v23];
}

- (uint64_t)removeExecutorGraphsOverXPCForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not find ps_exec_subgraph_t for removal for PSGraph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 description];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find ps_exec_subgraph_t for removal for PSGraph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 removeExecutorGraphsOverXPCForTransitionBlock:v23];
}

- (uint64_t)removeExecutorGraphsOverXPCForTransitionBlock:(char *)a1 .cold.3(char **a1, xpc_rich_error_t error)
{
  *a1 = 0;
  v5 = xpc_rich_error_copy_description(error);
  v6 = asprintf(a1, "Failed to send an XPC message to removeExecutorGraphs to polarisd, aborting! Error = %s", v5);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    xpc_rich_error_copy_description(error);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Failed to send an XPC message to removeExecutorGraphs to polarisd, aborting! Error = %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 removeExecutorGraphsForTransitionBlock:v23];
}

- (uint64_t)removeExecutorGraphsForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Bad teardown type specified for graph %s: %lu", [v4 UTF8String], objc_msgSend(a2, "teardownType"));

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    [a2 teardownType];
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v8, v9, "%s:%d Bad teardown type specified for graph %s: %lu", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v22 removeExecutorGraphsForTransitionBlock:v23];
}

- (uint64_t)removeExecutorGraphsForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not find ps_exec_subgraph_t for removal for PSGraph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 description];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find ps_exec_subgraph_t for removal for PSGraph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSTransitionMonitor *)v22 stateToString:v23];
}

@end