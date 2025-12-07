@interface SYBacklinkMonitorClient
- (SYBacklinkMonitorClient)init;
- (void)_configureConnectionAndResume;
- (void)_createConnectionIfNeeded;
- (void)_invalidateConnection;
- (void)_processNotifyActiveUserActivityDidChange:(id)change context:(id)context serviceProxy:(id)proxy completion:(id)completion;
- (void)createConnectionWithEndpoint:(id)endpoint;
- (void)dealloc;
- (void)notifyActiveUserActivityDidChange:(id)change context:(id)context completion:(id)completion;
- (void)updateWithFilterCache:(id)cache;
@end

@implementation SYBacklinkMonitorClient

- (SYBacklinkMonitorClient)init
{
  v9.receiver = self;
  v9.super_class = SYBacklinkMonitorClient;
  v2 = [(SYBacklinkMonitorClient *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    pendingCompletionBlocks = v2->__pendingCompletionBlocks;
    v2->__pendingCompletionBlocks = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.synapse.UserActivityServiceClient", v5);
    clientQueue = v2->__clientQueue;
    v2->__clientQueue = v6;
  }

  return v2;
}

- (void)dealloc
{
  _connection = [(SYBacklinkMonitorClient *)self _connection];
  [_connection invalidate];

  [(SYBacklinkMonitorClient *)self set_connection:0];
  v4.receiver = self;
  v4.super_class = SYBacklinkMonitorClient;
  [(SYBacklinkMonitorClient *)&v4 dealloc];
}

- (void)notifyActiveUserActivityDidChange:(id)change context:(id)context completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  contextCopy = context;
  completionCopy = completion;
  if ([contextCopy needsCacheUpdate])
  {
    [(SYBacklinkMonitorClient *)self set_filterCache:0];
    v11 = 0;
    goto LABEL_6;
  }

  _filterCache = [(SYBacklinkMonitorClient *)self _filterCache];

  if (!_filterCache)
  {
LABEL_7:
    _clientQueue = [(SYBacklinkMonitorClient *)self _clientQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke;
    v16[3] = &unk_27856C3F0;
    v16[4] = self;
    v17 = changeCopy;
    v18 = contextCopy;
    v19 = completionCopy;
    dispatch_async(_clientQueue, v16);

    goto LABEL_8;
  }

  _filterCache2 = [(SYBacklinkMonitorClient *)self _filterCache];
  v11 = [_filterCache2 containsMatchingEntriesForItem:changeCopy];

  if ([(SYBacklinkMonitorClient *)self _previousFilterCacheMatched]|| v11 != [(SYBacklinkMonitorClient *)self _previousFilterCacheMatched])
  {
LABEL_6:
    [(SYBacklinkMonitorClient *)self set_previousFilterCacheMatched:v11];
    goto LABEL_7;
  }

  v15 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = changeCopy;
    _os_log_impl(&dword_225901000, v15, OS_LOG_TYPE_INFO, "BacklinkClient: Changed activity was filtered out: %p.", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_8:
}

void __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionIfNeeded];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v2 = [*(a1 + 32) _connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5;
  v5[3] = &unk_27856B808;
  v5[4] = &v6;
  v3 = [v2 remoteObjectProxyWithErrorHandler:v5];

  if (v3)
  {
    [*(a1 + 32) _processNotifyActiveUserActivityDidChange:*(a1 + 40) context:*(a1 + 48) serviceProxy:v3 completion:*(a1 + 56)];
  }

  else
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v7[5]);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5_cold_1(v4, v5);
  }
}

- (void)updateWithFilterCache:(id)cache
{
  [(SYBacklinkMonitorClient *)self set_filterCache:cache];

  [(SYBacklinkMonitorClient *)self set_previousFilterCacheMatched:0];
}

- (void)_processNotifyActiveUserActivityDidChange:(id)change context:(id)context serviceProxy:(id)proxy completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  contextCopy = context;
  proxyCopy = proxy;
  completionCopy = completion;
  v14 = completionCopy;
  if (completionCopy)
  {
    v15 = [completionCopy copy];
    _pendingCompletionBlocks = [(SYBacklinkMonitorClient *)self _pendingCompletionBlocks];
    v17 = MEMORY[0x22AA6A360](v15);
    [_pendingCompletionBlocks addObject:v17];
  }

  else
  {
    v15 = 0;
  }

  v18 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = changeCopy;
    _os_log_impl(&dword_225901000, v18, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Sending request to service for activity info: %p.", buf, 0xCu);
  }

  if ([contextCopy needsCacheUpdate])
  {
    [contextCopy setNeedsCacheUpdate:1];
  }

  else
  {
    _filterCache = [(SYBacklinkMonitorClient *)self _filterCache];
    [contextCopy setNeedsCacheUpdate:_filterCache == 0];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke;
  v22[3] = &unk_27856BEA0;
  v23 = changeCopy;
  v24 = v15;
  v22[4] = self;
  v20 = changeCopy;
  v21 = v15;
  [proxyCopy activeUserActivityDidChange:v20 context:contextCopy completion:v22];
}

void __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke_2;
  block[3] = &unk_27856BAB8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  block[4] = v4;
  v7 = v5;
  dispatch_async(v2, block);
}

void __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) _pendingCompletionBlocks];
    v3 = MEMORY[0x22AA6A360](*(a1 + 48));
    v4 = [v2 containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"N";
    v7 = *(a1 + 40);
    if (v4)
    {
      v6 = @"Y";
    }

    v10 = 134218242;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Service request did finish for activity info %p. Call completion: %@.", &v10, 0x16u);
  }

  if (v4)
  {
    v8 = [*(a1 + 32) _pendingCompletionBlocks];
    v9 = MEMORY[0x22AA6A360](*(a1 + 48));
    [v8 removeObject:v9];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_createConnectionIfNeeded
{
  _connection = [(SYBacklinkMonitorClient *)self _connection];

  if (!_connection)
  {
    v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Setting up connection.", v8, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.synapse.backlink-service" options:0];
    [(SYBacklinkMonitorClient *)self set_connection:v5];

    _connection2 = [(SYBacklinkMonitorClient *)self _connection];
    _clientQueue = [(SYBacklinkMonitorClient *)self _clientQueue];
    [_connection2 _setQueue:_clientQueue];

    [(SYBacklinkMonitorClient *)self _configureConnectionAndResume];
  }
}

- (void)_configureConnectionAndResume
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SYBacklinkMonitorClient.m" lineNumber:151 description:@"the XPC connection is unexpectedly nil"];
}

void __56__SYBacklinkMonitorClient__configureConnectionAndResume__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Connection was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __56__SYBacklinkMonitorClient__configureConnectionAndResume__block_invoke_23(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Connection was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (void)_invalidateConnection
{
  v6 = *MEMORY[0x277D85DE8];
  _pendingCompletionBlocks = [self _pendingCompletionBlocks];
  v4 = 134217984;
  v5 = [_pendingCompletionBlocks count];
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "BacklinkClient: Invalidating connection. Pending completion blocks: %ld", &v4, 0xCu);
}

- (void)createConnectionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  _clientQueue = [(SYBacklinkMonitorClient *)self _clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SYBacklinkMonitorClient_createConnectionWithEndpoint___block_invoke;
  v7[3] = &unk_27856B5C8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(_clientQueue, v7);
}

uint64_t __56__SYBacklinkMonitorClient_createConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  [v2 invalidate];

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:*(a1 + 40)];
  [*(a1 + 32) set_connection:v3];

  v4 = [*(a1 + 32) _connection];
  v5 = [*(a1 + 32) _clientQueue];
  [v4 _setQueue:v5];

  v6 = *(a1 + 32);

  return [v6 _configureConnectionAndResume];
}

void __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "BacklinkClient: Error creating remote service proxy: %@", &v2, 0xCu);
}

@end