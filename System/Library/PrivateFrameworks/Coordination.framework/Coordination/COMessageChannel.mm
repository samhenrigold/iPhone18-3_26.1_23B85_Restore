@interface COMessageChannel
+ (COMessageChannel)messageChannelWithTopic:(id)topic cluster:(id)cluster manualGrouping:(BOOL)grouping;
- (COMessageChannel)initWithConnectionProvider:(id)provider roleMonitorConnectionProvider:(id)connectionProvider topic:(id)topic cluster:(id)cluster;
- (COMessageChannel)initWithTopic:(id)topic cluster:(id)cluster;
- (NSXPCConnection)lastConnection;
- (id)_payloadTypeFromClass:(Class)class;
- (id)_remoteInterfaceWithErrorHandler:(id)handler;
- (unsigned)_generateRequestID;
- (void)_activateWithCompletion:(id)completion;
- (void)_broadcastRequest:(id)request type:(id)type recipientsCallback:(id)callback responseCompletionHandler:(id)handler;
- (void)_callbackProducersAndConsumersAfterActivationWithError:(id)error;
- (void)_deliverDidEndDelegateForSession:(id)session notice:(id)notice initiator:(id)initiator error:(id)error;
- (void)_deliverDidFailToStartSessionWithMember:(id)member producer:(id)producer error:(id)error;
- (void)_deliverFailedToStartSessionWithMember:(id)member consumer:(id)consumer error:(id)error;
- (void)_deliverSuccessfullyStartedSession:(id)session withMember:(id)member consumer:(id)consumer;
- (void)_deliverSuccessfullyStartedSession:(id)session withResponse:(id)response withMember:(id)member producer:(id)producer;
- (void)_handleAddedMembers:(id)members;
- (void)_handleCapableCommand:(id)command fromMember:(id)member callback:(id)callback;
- (void)_handleRemovedMembers:(id)members;
- (void)_handleStartCommand:(id)command withMember:(id)member callback:(id)callback;
- (void)_handleStopCommand:(id)command fromMember:(id)member callback:(id)callback;
- (void)_invokeResponseCallbackForInfo:(id)info snapshot:(id)snapshot response:(id)response error:(id)error;
- (void)_lostConnectionToService;
- (void)_sendRequest:(id)request type:(id)type members:(id)members withCompletionHandler:(id)handler;
- (void)_setupClusterMonitor;
- (void)_startSessionWithProducer:(id)producer member:(id)member;
- (void)_startSessionWithProducer:(id)producer member:(id)member request:(id)request;
- (void)_submitMetricsForActivationCompletionWithError:(id)error;
- (void)_submitMetricsForRequest:(id)request withRequestInfo:(id)info withError:(id)error;
- (void)_submitMetricsForResponse:(id)response size:(unint64_t)size withError:(id)error;
- (void)_submitMetricsForSession:(id)session withError:(id)error;
- (void)_withLock:(id)lock;
- (void)activateWithCompletion:(id)completion;
- (void)addSessionConsumerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue;
- (void)addSessionProducerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue;
- (void)broadcastRequest:(id)request recipientsCallback:(id)callback responseCompletionHandler:(id)handler;
- (void)broadcastRequest:(id)request type:(id)type recipientsCallback:(id)callback responseCompletionHandler:(id)handler;
- (void)dealloc;
- (void)failedToSendRequestWithID:(unsigned int)d withError:(id)error;
- (void)receivedRecipientListForRequestID:(unsigned int)d recipients:(id)recipients;
- (void)receivedRequestWithPayload:(id)payload payloadType:(id)type requestID:(unsigned int)d fromMember:(id)member withCallback:(id)callback;
- (void)receivedResponseForRequestID:(unsigned int)d responsePayload:(id)payload responseType:(id)type responseError:(id)error fromMember:(id)member;
- (void)registerHandler:(id)handler forRequestClass:(Class)class;
- (void)registerHandler:(id)handler forRequestClassType:(id)type;
- (void)sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler;
- (void)sendRequest:(id)request type:(id)type members:(id)members withCompletionHandler:(id)handler;
- (void)sendRequest:(id)request type:(id)type withCompletionHandler:(id)handler;
- (void)sendRequest:(id)request withCompletionHandler:(id)handler;
- (void)startSessionWithProducer:(id)producer members:(id)members;
- (void)stopMessageSession:(id)session withNotice:(id)notice;
- (void)unregisterHandlerForRequestClass:(Class)class;
- (void)unregisterHandlerForRequestClassType:(id)type;
@end

@implementation COMessageChannel

- (COMessageChannel)initWithConnectionProvider:(id)provider roleMonitorConnectionProvider:(id)connectionProvider topic:(id)topic cluster:(id)cluster
{
  v50 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  connectionProviderCopy = connectionProvider;
  topicCopy = topic;
  clusterCopy = cluster;
  v41.receiver = self;
  v41.super_class = COMessageChannel;
  v15 = [(COMessageChannel *)&v41 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topic, topic);
    objc_storeStrong(&v16->_cluster, cluster);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.coordination.messageChannel.%p", v16];
    uTF8String = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    workQueue = v16->_workQueue;
    v16->_workQueue = v20;

    v16->_lock._os_unfair_lock_opaque = 0;
    v16->_baseRequestID = arc4random();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requestHandlers = v16->_requestHandlers;
    v16->_requestHandlers = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    sessionConsumers = v16->_sessionConsumers;
    v16->_sessionConsumers = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    sessionProducers = v16->_sessionProducers;
    v16->_sessionProducers = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    sessionsInflight = v16->_sessionsInflight;
    v16->_sessionsInflight = dictionary4;

    if (providerCopy | connectionProviderCopy)
    {
      objc_storeStrong(&v16->_provider, provider);
      objc_storeStrong(&v16->_roleMonitorConnectionProvider, connectionProvider);
      if (+[COFeatureStatus isCOClusterEnabled])
      {
        [clusterCopy label];
      }

      else
      {
        [COCluster inferClusterLabelFromCluster:clusterCopy];
      }
      v30 = ;
      clusterLabel = v16->_clusterLabel;
      v16->_clusterLabel = v30;

      dictionary5 = [MEMORY[0x277CBEB38] dictionary];
      outstandingRequests = v16->_outstandingRequests;
      v16->_outstandingRequests = dictionary5;

      dictionary6 = [MEMORY[0x277CBEB38] dictionary];
      roleSnapshotsCache = v16->_roleSnapshotsCache;
      v16->_roleSnapshotsCache = dictionary6;

      recorder = v16->_recorder;
      v16->_recorder = &__block_literal_global_5;

      v37 = COLogForCategory(5);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 134218754;
        v43 = v16;
        v44 = 2112;
        v45 = topicCopy;
        v46 = 2112;
        v47 = clusterCopy;
        v48 = 2112;
        v49 = v39;
        _os_log_impl(&dword_244328000, v37, OS_LOG_TYPE_DEFAULT, "%p message channel created with topic %@, cluster %@ and %@ provider", buf, 0x2Au);
      }
    }
  }

  return v16;
}

- (COMessageChannel)initWithTopic:(id)topic cluster:(id)cluster
{
  topicCopy = topic;
  v7 = [COCluster _clusterForCluster:cluster];
  v8 = objc_alloc_init(_COMessageChannelConnectionProvider);
  v9 = [(COMessageChannel *)self initWithConnectionProvider:v8 roleMonitorConnectionProvider:0 topic:topicCopy cluster:v7];

  return v9;
}

+ (COMessageChannel)messageChannelWithTopic:(id)topic cluster:(id)cluster manualGrouping:(BOOL)grouping
{
  groupingCopy = grouping;
  clusterCopy = cluster;
  topicCopy = topic;
  if (+[COFeatureStatus isNoDaemonMessageChannelEnabled])
  {
    v9 = !groupingCopy;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = [[COMessageChannel alloc] initWithTopic:topicCopy cluster:clusterCopy];
  }

  else
  {
    v10 = [[_COMessageChannel alloc] initWithTopic:topicCopy cluster:clusterCopy manualGrouping:1];
  }

  v11 = v10;

  return v11;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__COMessageChannel_dealloc__block_invoke;
  v4[3] = &unk_278E12430;
  v4[4] = self;
  [(COMessageChannel *)self _withLock:v4];
  v3.receiver = self;
  v3.super_class = COMessageChannel;
  [(COMessageChannel *)&v3 dealloc];
}

void __27__COMessageChannel_dealloc__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) lastConnection];
  v1 = [v3 co_originalInterruptionHandler];
  [v3 co_setOriginalInterruptionHandler:v1];

  v2 = [v3 co_originalInvalidationHandler];
  [v3 co_setOriginalInvalidationHandler:v2];

  [v3 invalidate];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COMessageChannel_activateWithCompletion___block_invoke;
  block[3] = &unk_278E12DF8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__COMessageChannel_activateWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _activateWithCompletion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)sendRequest:(id)request withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [(COMessageChannel *)self _payloadTypeFromClass:objc_opt_class()];
  [(COMessageChannel *)self sendRequest:requestCopy type:v8 withCompletionHandler:handlerCopy];
}

- (void)sendRequest:(id)request type:(id)type withCompletionHandler:(id)handler
{
  requestCopy = request;
  typeCopy = type;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__COMessageChannel_sendRequest_type_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E12390;
  v15[4] = self;
  v16 = requestCopy;
  v17 = typeCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = typeCopy;
  v14 = requestCopy;
  dispatch_async(workQueue, v15);
}

- (void)sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  membersCopy = members;
  requestCopy = request;
  v11 = [(COMessageChannel *)self _payloadTypeFromClass:objc_opt_class()];
  [(COMessageChannel *)self sendRequest:requestCopy type:v11 members:membersCopy withCompletionHandler:handlerCopy];
}

- (void)sendRequest:(id)request type:(id)type members:(id)members withCompletionHandler:(id)handler
{
  requestCopy = request;
  typeCopy = type;
  membersCopy = members;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__COMessageChannel_sendRequest_type_members_withCompletionHandler___block_invoke;
  block[3] = &unk_278E126C0;
  block[4] = self;
  v20 = requestCopy;
  v21 = typeCopy;
  v22 = membersCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = membersCopy;
  v17 = typeCopy;
  v18 = requestCopy;
  dispatch_async(workQueue, block);
}

- (void)broadcastRequest:(id)request recipientsCallback:(id)callback responseCompletionHandler:(id)handler
{
  handlerCopy = handler;
  callbackCopy = callback;
  requestCopy = request;
  v11 = [(COMessageChannel *)self _payloadTypeFromClass:objc_opt_class()];
  [(COMessageChannel *)self broadcastRequest:requestCopy type:v11 recipientsCallback:callbackCopy responseCompletionHandler:handlerCopy];
}

- (void)broadcastRequest:(id)request type:(id)type recipientsCallback:(id)callback responseCompletionHandler:(id)handler
{
  requestCopy = request;
  typeCopy = type;
  callbackCopy = callback;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__COMessageChannel_broadcastRequest_type_recipientsCallback_responseCompletionHandler___block_invoke;
  block[3] = &unk_278E12E20;
  block[4] = self;
  v20 = requestCopy;
  v21 = typeCopy;
  v22 = callbackCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = callbackCopy;
  v17 = typeCopy;
  v18 = requestCopy;
  dispatch_async(workQueue, block);
}

- (void)registerHandler:(id)handler forRequestClass:(Class)class
{
  handlerCopy = handler;
  v7 = [(COMessageChannel *)self _payloadTypeFromClass:class];
  [(COMessageChannel *)self registerHandler:handlerCopy forRequestClassType:v7];
}

- (void)registerHandler:(id)handler forRequestClassType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__COMessageChannel_registerHandler_forRequestClassType___block_invoke;
  block[3] = &unk_278E12E48;
  v12 = typeCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = typeCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __56__COMessageChannel_registerHandler_forRequestClassType___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[8] == 1)
  {
    v3 = COLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__COMessageChannel_registerHandler_forRequestClassType___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [v2 requestHandlers];
    v4 = MEMORY[0x245D5F6A0](a1[6]);
    [v5 setObject:v4 forKey:a1[5]];
  }
}

- (void)unregisterHandlerForRequestClass:(Class)class
{
  v4 = [(COMessageChannel *)self _payloadTypeFromClass:class];
  [(COMessageChannel *)self unregisterHandlerForRequestClassType:v4];
}

- (void)unregisterHandlerForRequestClassType:(id)type
{
  typeCopy = type;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__COMessageChannel_unregisterHandlerForRequestClassType___block_invoke;
  v7[3] = &unk_278E12368;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_async(workQueue, v7);
}

void __57__COMessageChannel_unregisterHandlerForRequestClassType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = COLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__COMessageChannel_unregisterHandlerForRequestClassType___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [v2 requestHandlers];
    [v4 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)addSessionProducerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue
{
  topicCopy = topic;
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke;
  v15[3] = &unk_278E12E70;
  v15[4] = self;
  v16 = topicCopy;
  v17 = delegateCopy;
  v18 = queueCopy;
  v12 = queueCopy;
  v13 = delegateCopy;
  v14 = topicCopy;
  dispatch_async(workQueue, v15);
}

void __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 8) == 1)
  {
    v3 = COLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1202 userInfo:0];
    if (objc_opt_respondsToSelector())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_59;
      block[3] = &unk_278E12E70;
      v5 = *(a1 + 56);
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v19 = v6;
      v20 = v7;
      v21 = v8;
      v4 = v4;
      v22 = v4;
      dispatch_async(v5, block);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] _commandTypeForProducerWithSubTopic:*(a1 + 40)];
    objc_initWeak(&location, *(a1 + 32));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_2;
    v14[3] = &unk_278E12E98;
    objc_copyWeak(&v16, &location);
    v15 = *(a1 + 40);
    v9 = MEMORY[0x245D5F6A0](v14);
    v10 = [*(a1 + 32) requestHandlers];
    v11 = MEMORY[0x245D5F6A0](v9);
    [v10 setObject:v11 forKey:v4];

    v12 = [[COMessageSessionProducer alloc] initWithChannel:*(a1 + 32) subTopic:*(a1 + 40) delegate:*(a1 + 48) dispatchQueue:*(a1 + 56)];
    v13 = [*v2 sessionProducers];
    [v13 setObject:v12 forKey:*(a1 + 40)];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = v7;
    if ([v11 commandType] == 2)
    {
      [WeakRetained _handleStopCommand:v11 fromMember:v8 callback:v9];
    }

    else if ([v11 commandType])
    {
      v12 = COLogForCategory(6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_2_cold_1();
      }
    }

    else
    {
      [WeakRetained _handleCapableCommand:v11 fromMember:v8 callback:v9];
    }
  }
}

- (void)addSessionConsumerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue
{
  topicCopy = topic;
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke;
  v15[3] = &unk_278E12E70;
  v15[4] = self;
  v16 = topicCopy;
  v17 = delegateCopy;
  v18 = queueCopy;
  v12 = queueCopy;
  v13 = delegateCopy;
  v14 = topicCopy;
  dispatch_async(workQueue, v15);
}

void __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(*(a1 + 32) + 8) == 1)
  {
    v3 = COLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1203 userInfo:0];
    if (objc_opt_respondsToSelector())
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_64;
      block[3] = &unk_278E12E70;
      v5 = *(a1 + 56);
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v21 = v6;
      v22 = v7;
      v23 = v8;
      v4 = v4;
      v24 = v4;
      dispatch_async(v5, block);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] _commandTypeForConsumerWithSubTopic:*(a1 + 40)];
    objc_initWeak(&location, *(a1 + 32));
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_2;
    v17 = &unk_278E12EC0;
    objc_copyWeak(&v18, &location);
    v9 = MEMORY[0x245D5F6A0](&v14);
    v10 = [*(a1 + 32) requestHandlers];
    v11 = MEMORY[0x245D5F6A0](v9);
    [v10 setObject:v11 forKey:v4];

    v12 = [[COMessageSessionConsumer alloc] initWithChannel:*(a1 + 32) subTopic:*(a1 + 40) delegate:*(a1 + 48) dispatchQueue:*(a1 + 56)];
    v13 = [*v2 sessionConsumers];
    [v13 setObject:v12 forKey:*(a1 + 40)];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[13];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_3;
    v13[3] = &unk_278E12390;
    v14 = v7;
    v15 = v11;
    v16 = v8;
    v17 = v9;
    dispatch_async(v12, v13);
  }
}

void __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([v2 commandType] == 1)
  {
    v3 = COLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [v2 subTopic];
      v6 = *(a1 + 48);
      v13 = 134218498;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_244328000, v3, OS_LOG_TYPE_DEFAULT, "%p Message channel received a session management request to start a session for subtopic %@ from member %@", &v13, 0x20u);
    }

    [*(a1 + 40) _handleStartCommand:v2 withMember:*(a1 + 48) callback:*(a1 + 56)];
  }

  else
  {
    v7 = [v2 commandType];
    v8 = COLogForCategory(5);
    v9 = v8;
    if (v7 == 2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = [v2 subTopic];
        v12 = *(a1 + 48);
        v13 = 134218498;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p Message channel received a session management request to stop a session for subtopic %@ from member %@", &v13, 0x20u);
      }

      [*(a1 + 40) _handleStopCommand:v2 fromMember:*(a1 + 48) callback:*(a1 + 56)];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_3_cold_1(a1, v2, v9);
      }
    }
  }
}

- (void)startSessionWithProducer:(id)producer members:(id)members
{
  v22 = *MEMORY[0x277D85DE8];
  producerCopy = producer;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = members;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        workQueue = self->_workQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__COMessageChannel_startSessionWithProducer_members___block_invoke;
        block[3] = &unk_278E12738;
        block[4] = self;
        v15 = producerCopy;
        v16 = v11;
        dispatch_async(workQueue, block);

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)stopMessageSession:(id)session withNotice:(id)notice
{
  sessionCopy = session;
  noticeCopy = notice;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__COMessageChannel_stopMessageSession_withNotice___block_invoke;
  block[3] = &unk_278E12738;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = noticeCopy;
  v9 = noticeCopy;
  v10 = sessionCopy;
  dispatch_async(workQueue, block);
}

void __50__COMessageChannel_stopMessageSession_withNotice___block_invoke(id *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] member];
  v3 = COLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v4 = a1[5];
    *buf = 134218498;
    v52 = v4;
    v53 = 2112;
    v54 = v5;
    v55 = 2112;
    v56 = v2;
    _os_log_impl(&dword_244328000, v3, OS_LOG_TYPE_DEFAULT, "%p Stopping session %@ with member %@", buf, 0x20u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [a1[5] roleSnapshotsCache];
  v7 = [v6 allValues];

  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v9)
  {
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v12 member];
        v14 = [v13 memberType] == 1;

        if (v14)
        {
          v15 = v12;

          v8 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v9);
  }

  if (a1[6])
  {
    [a1[4] setDidUseNotice:1];
    v16 = a1[6];
    v43 = 0;
    v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v43];
    v18 = v43;
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA7E8];
      v49 = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v22 = [v20 errorWithDomain:@"COMessageSessionErrorDomain" code:-1205 userInfo:v21];

      v23 = COLogForCategory(6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v37 = a1[4];
        v36 = a1[5];
        *buf = 134218498;
        v52 = v36;
        v53 = 2112;
        v54 = v22;
        v55 = 2112;
        v56 = v37;
        _os_log_error_impl(&dword_244328000, v23, OS_LOG_TYPE_ERROR, "%p Failed to encode request with error %@ when stopping session %@", buf, 0x20u);
      }

      [a1[5] _deliverDidEndDelegateForSession:a1[4] notice:a1[6] initiator:v8 error:v22];
      v24 = 0;
    }

    else
    {
      v27 = [COMessageSessionManagementRequest alloc];
      v22 = [a1[5] _payloadTypeFromClass:objc_opt_class()];
      v28 = [a1[5] topic];
      v29 = [a1[4] subTopic];
      v24 = [(COMessageSessionManagementRequest *)v27 initWithCommandType:2 payload:v17 payloadType:v22 topic:v28 subTopic:v29];
    }
  }

  else
  {
    v25 = [COMessageSessionManagementRequest alloc];
    v22 = [a1[5] topic];
    v26 = [a1[4] subTopic];
    v24 = [(COMessageSessionManagementRequest *)v25 initWithCommandType:2 payload:0 payloadType:0 topic:v22 subTopic:v26];

    v17 = 0;
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = [a1[4] subTopic];
  v32 = [v30 _commandTypeForConsumerWithSubTopic:v31];

  objc_initWeak(buf, a1[5]);
  v33 = a1[5];
  v34 = [MEMORY[0x277CBEB98] setWithObject:v2];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __50__COMessageChannel_stopMessageSession_withNotice___block_invoke_70;
  v38[3] = &unk_278E12F10;
  objc_copyWeak(&v42, buf);
  v39 = a1[4];
  v40 = a1[6];
  v35 = v8;
  v41 = v35;
  [v33 _sendRequest:v24 type:v32 members:v34 withCompletionHandler:v38];

  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);
}

void __50__COMessageChannel_stopMessageSession_withNotice___block_invoke_70(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__COMessageChannel_stopMessageSession_withNotice___block_invoke_2;
    block[3] = &unk_278E12EE8;
    block[4] = WeakRetained;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = v5;
    dispatch_async(v8, block);
  }
}

- (void)failedToSendRequestWithID:(unsigned int)d withError:(id)error
{
  errorCopy = error;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__COMessageChannel_failedToSendRequestWithID_withError___block_invoke;
  block[3] = &unk_278E12F38;
  dCopy = d;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(workQueue, block);
}

void __56__COMessageChannel_failedToSendRequestWithID_withError___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 88);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  v5 = *(*(a1 + 32) + 88);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  [v5 removeObjectForKey:v6];

  if (v4)
  {
    v7 = [v4 requestType];
    v8 = COLogForCategory(5);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        v17 = *(a1 + 48);
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v23 = 134218498;
        v24 = v18;
        v25 = 1024;
        *v26 = v17;
        *&v26[4] = 2112;
        *&v26[6] = v19;
        _os_log_error_impl(&dword_244328000, v8, OS_LOG_TYPE_ERROR, "%p Failed to send broadcast request with ID %u. Error %@", &v23, 0x1Cu);
      }

      v10 = [v4 recipientCallback];
      v11 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10, 0, *(a1 + 40));
      }
    }

    else
    {
      if (v9)
      {
        v20 = *(a1 + 48);
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v23 = 134218498;
        v24 = v21;
        v25 = 1024;
        *v26 = v20;
        *&v26[4] = 2112;
        *&v26[6] = v22;
        _os_log_error_impl(&dword_244328000, v8, OS_LOG_TYPE_ERROR, "%p Failed to send request with ID %u. Error %@", &v23, 0x1Cu);
      }

      [*(a1 + 32) _invokeResponseCallbackForInfo:v4 snapshot:0 response:0 error:*(a1 + 40)];
    }

    v16 = *(a1 + 32);
    v12 = [v4 request];
    [v16 _submitMetricsForRequest:v12 withRequestInfo:v4 withError:*(a1 + 40)];
  }

  else
  {
    v12 = COLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v23 = 134218498;
      v24 = v13;
      v25 = 2112;
      *v26 = v14;
      *&v26[8] = 1024;
      *&v26[10] = v15;
      _os_log_error_impl(&dword_244328000, v12, OS_LOG_TYPE_ERROR, " %p Got an error %@ for request ID %u which is not being followed by this message channel", &v23, 0x1Cu);
    }
  }
}

- (void)receivedRequestWithPayload:(id)payload payloadType:(id)type requestID:(unsigned int)d fromMember:(id)member withCallback:(id)callback
{
  payloadCopy = payload;
  typeCopy = type;
  memberCopy = member;
  callbackCopy = callback;
  workQueue = self->_workQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke;
  v21[3] = &unk_278E12F88;
  v21[4] = self;
  v22 = typeCopy;
  dCopy = d;
  v23 = payloadCopy;
  v24 = memberCopy;
  v25 = callbackCopy;
  v17 = callbackCopy;
  v18 = memberCopy;
  v19 = payloadCopy;
  v20 = typeCopy;
  dispatch_async(workQueue, v21);
}

void __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _payloadClassFromType:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277CCAAC8];
    v6 = *(a1 + 48);
    v38 = 0;
    v7 = &v38;
    v8 = &v38;
  }

  else
  {
    if (([*v2 hasPrefix:@"SessionConsumer+"] & 1) == 0 && !objc_msgSend(*v2, "hasPrefix:", @"SessionProducer+"))
    {
      v12 = 0;
      v10 = 0;
      v14 = 0;
      goto LABEL_12;
    }

    v9 = MEMORY[0x277CCAAC8];
    v4 = objc_opt_class();
    v6 = *(a1 + 48);
    v37 = 0;
    v7 = &v37;
    v8 = &v37;
    v5 = v9;
  }

  v10 = [v5 unarchivedObjectOfClass:v4 fromData:v6 error:v8];
  v11 = *v7;
  v12 = v11 != 0;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (!v13)
  {
    v19 = [*(a1 + 32) sendLimit];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_74;
    v34[3] = &unk_278E12F60;
    v34[4] = *(a1 + 32);
    v36 = v19;
    v35 = *(a1 + 64);
    v20 = MEMORY[0x245D5F6A0](v34);
    v21 = [*(a1 + 32) requestHandlers];
    v22 = [v21 objectForKey:*(a1 + 40)];

    v23 = COLogForCategory(5);
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = *(a1 + 72);
        v27 = MEMORY[0x245D5F6A0](v22);
        *buf = 134218754;
        v42 = v25;
        v43 = 2114;
        *v44 = v10;
        *&v44[8] = 1024;
        *&v44[10] = v26;
        v45 = 2048;
        v46 = v27;
        _os_log_impl(&dword_244328000, v24, OS_LOG_TYPE_DEFAULT, "%p Dispatching request %{public}@ for message %u to %p", buf, 0x26u);
      }

      (v22)[2](v22, v10, *(a1 + 56), v20);
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_cold_1();
      }

      v29 = *(a1 + 64);
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1101 userInfo:0];
      (*(v29 + 16))(v29, 0, 0, v30);
    }

    v14 = 0;
    goto LABEL_27;
  }

  v14 = v11;
LABEL_12:
  v15 = COLogForCategory(5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a1 + 32);
    v32 = *(a1 + 72);
    v33 = *(a1 + 56);
    *buf = 134218754;
    v42 = v31;
    v43 = 1024;
    *v44 = v32;
    *&v44[4] = 2112;
    *&v44[6] = v33;
    v45 = 2112;
    v46 = v14;
    _os_log_error_impl(&dword_244328000, v15, OS_LOG_TYPE_ERROR, "%p Failed to unarchive request ID %u received from member with snapshot %@. Error = %@", buf, 0x26u);
  }

  v16 = *(a1 + 64);
  v17 = MEMORY[0x277CCA9B8];
  if (v12)
  {
    v39 = *MEMORY[0x277CCA7E8];
    v40 = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  }

  else
  {
    v18 = 0;
  }

  v28 = [v17 errorWithDomain:@"COMessageChannelErrorDomain" code:-1106 userInfo:v18];
  (*(v16 + 16))(v16, 0, 0, v28);

  if (v12)
  {
  }

LABEL_27:
}

void __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v23];
    v8 = v23;
    if (v8)
    {
      v9 = v8;
      v10 = COLogForCategory(5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_74_cold_1();
      }

      v11 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA7E8];
      v25[0] = v9;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v13 = [v11 errorWithDomain:@"COMessageChannelErrorDomain" code:-1105 userInfo:v12];

      if (!v13)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 length] <= *(a1 + 48))
  {
    v9 = 0;
LABEL_14:
    v21 = *(a1 + 40);
    v22 = [*(a1 + 32) _payloadTypeFromClass:objc_opt_class()];
    (*(v21 + 16))(v21, v7, v22, v6);

    v13 = 0;
    goto LABEL_15;
  }

  v14 = COLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_74_cold_2(a1, v14, v15, v16, v17, v18, v19, v20);
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1103 userInfo:0];
  v9 = 0;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_12:
  (*(*(a1 + 40) + 16))();
LABEL_15:
  [*(a1 + 32) _submitMetricsForResponse:v5 size:objc_msgSend(v7 withError:{"length"), v13}];
}

- (void)receivedResponseForRequestID:(unsigned int)d responsePayload:(id)payload responseType:(id)type responseError:(id)error fromMember:(id)member
{
  payloadCopy = payload;
  typeCopy = type;
  errorCopy = error;
  memberCopy = member;
  workQueue = self->_workQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __103__COMessageChannel_receivedResponseForRequestID_responsePayload_responseType_responseError_fromMember___block_invoke;
  v21[3] = &unk_278E12FB0;
  dCopy = d;
  v21[4] = self;
  v22 = errorCopy;
  v23 = memberCopy;
  v24 = payloadCopy;
  v25 = typeCopy;
  v17 = typeCopy;
  v18 = payloadCopy;
  v19 = memberCopy;
  v20 = errorCopy;
  dispatch_async(workQueue, v21);
}

void __103__COMessageChannel_receivedResponseForRequestID_responsePayload_responseType_responseError_fromMember___block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 88);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
  v4 = [v2 objectForKey:v3];

  if (*(a1 + 40))
  {
    [*(a1 + 32) _invokeResponseCallbackForInfo:v4 snapshot:*(a1 + 48) response:0 error:?];
    goto LABEL_15;
  }

  if (*(a1 + 56) && *(a1 + 64))
  {
    v5 = [*(a1 + 32) _payloadClassFromType:?];
    if (v5)
    {
      v6 = *(a1 + 56);
      v23 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v5 fromData:v6 error:&v23];
      v8 = v23;
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_11:
      v13 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA7E8];
      v31 = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v9 = [v13 errorWithDomain:@"COMessageChannelErrorDomain" code:-1107 userInfo:v14];

      v15 = COLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 64);
        *buf = 134218498;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v9;
        _os_log_error_impl(&dword_244328000, v15, OS_LOG_TYPE_ERROR, "%p Failed to unarchive response of type %@. Error = %@", buf, 0x20u);
      }

      goto LABEL_14;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *(a1 + 64);
    v32 = @"COMessageChannelUnknownClassErrorKey";
    v33[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v8 = [v10 errorWithDomain:@"COMessageChannelErrorDomain" code:-1108 userInfo:v12];

    v7 = 0;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v9 = 0;
LABEL_14:
  [*(a1 + 32) _invokeResponseCallbackForInfo:v4 snapshot:*(a1 + 48) response:v7 error:v9];

LABEL_15:
  v16 = [v4 receivedResponses] + 1;
  [v4 setReceivedResponses:v16];
  if (v16 == [v4 expectedRecipients])
  {
    v17 = *(*(a1 + 32) + 88);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 72)];
    [v17 removeObjectForKey:v18];

    v19 = *(a1 + 32);
    v20 = [v4 request];
    [v19 _submitMetricsForRequest:v20 withRequestInfo:v4 withError:0];
  }
}

- (void)receivedRecipientListForRequestID:(unsigned int)d recipients:(id)recipients
{
  recipientsCopy = recipients;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__COMessageChannel_receivedRecipientListForRequestID_recipients___block_invoke;
  block[3] = &unk_278E12F38;
  dCopy = d;
  block[4] = self;
  v10 = recipientsCopy;
  v8 = recipientsCopy;
  dispatch_async(workQueue, block);
}

void __65__COMessageChannel_receivedRecipientListForRequestID_recipients___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 88);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  v5 = COLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [v6 count];
    v9 = *(a1 + 48);
    v14 = 134218754;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
    v18 = 2048;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p Received a recipient list %@ with count %lu for request ID %u", &v14, 0x26u);
  }

  [v4 setExpectedRecipients:{objc_msgSend(*(a1 + 40), "count")}];
  v10 = *(*(a1 + 32) + 88);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "requestID")}];
  [v10 setObject:v4 forKey:v11];

  v12 = [v4 recipientCallback];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, *(a1 + 40), 0);
  }
}

- (unsigned)_generateRequestID
{
  dispatch_assert_queue_V2(self->_workQueue);
  result = self->_baseRequestID;
  self->_baseRequestID = result + 1;
  return result;
}

- (id)_payloadTypeFromClass:(Class)class
{
  if (class)
  {
    v4 = NSStringFromClass(class);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_sendRequest:(id)request type:(id)type members:(id)members withCompletionHandler:(id)handler
{
  v72[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  typeCopy = type;
  membersCopy = members;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (self->_activated)
  {
    if (!handlerCopy)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1116 userInfo:0];
      v29 = COLogForCategory(5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannel _sendRequest:type:members:withCompletionHandler:];
      }

      goto LABEL_15;
    }

    if (membersCopy || (-[COMessageChannel cluster](self, "cluster"), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0) || (-[COMessageChannel cluster](self, "cluster"), v17 = objc_claimAutoreleasedReturnValue(), [v17 configuration], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "options"), v18, v17, (v19 & 1) != 0))
    {
      v64 = 0;
      v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v64];
      v21 = v64;
      if (v21)
      {
        v22 = v21;
        v23 = MEMORY[0x277CCA9B8];
        v71 = *MEMORY[0x277CCA7E8];
        v72[0] = v21;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v25 = [v23 errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:v24];

        v26 = COLogForCategory(5);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [COMessageChannel _sendRequest:type:members:withCompletionHandler:];
        }

LABEL_20:
        (v14)[2](v14, 0, 0, v25);
        [(COMessageChannel *)self _submitMetricsForRequest:requestCopy withRequestInfo:0 withError:v25];
LABEL_21:

        goto LABEL_22;
      }

      v30 = [v20 length];
      if (v30 > [(COMessageChannel *)self sendLimit])
      {
        v31 = COLogForCategory(5);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [COMessageChannel _sendRequest:type:members:withCompletionHandler:];
        }

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1102 userInfo:0];
        goto LABEL_20;
      }

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __68__COMessageChannel__sendRequest_type_members_withCompletionHandler___block_invoke;
      v61[3] = &unk_278E12FD8;
      v32 = v14;
      v63 = v32;
      v61[4] = self;
      v33 = requestCopy;
      v62 = v33;
      v57 = [(COMessageChannel *)self _remoteInterfaceWithErrorHandler:v61];
      _generateRequestID = [(COMessageChannel *)self _generateRequestID];
      v60 = _generateRequestID;
      v58 = v33;
      v35 = [[COMessageChannelRequestInfo alloc] initWithRequestID:_generateRequestID type:0 request:v33];
      -[COMessageChannelRequestInfo setMessageSize:](v35, "setMessageSize:", [v20 length]);
      [(COMessageChannelRequestInfo *)v35 setResponseCallback:v32];
      v59 = v35;
      if (membersCopy)
      {
        -[COMessageChannelRequestInfo setExpectedRecipients:](v35, "setExpectedRecipients:", [membersCopy count]);
        if ([membersCopy count] != 1)
        {
          goto LABEL_31;
        }

        roleSnapshotsCache = [(COMessageChannel *)self roleSnapshotsCache];
        allObjects = [membersCopy allObjects];
        firstObject = [allObjects firstObject];
        v39 = [roleSnapshotsCache objectForKey:firstObject];

        role = [v39 role];
        v41 = +[COClusterRole roleForCoordinator];
        LODWORD(firstObject) = [role satisfiesRole:v41];

        v42 = COMessagingTypeAdHocLeader;
        if (!firstObject)
        {
          v42 = COMessagingTypeAdHocSingle;
        }

        v43 = *v42;

        v35 = v59;
      }

      else
      {
        [(COMessageChannelRequestInfo *)v35 setExpectedRecipients:1];
        v43 = @"coordinator";
      }

      if (v43)
      {
LABEL_37:
        [(COMessageChannelRequestInfo *)v35 setDestinationInfo:v43];
        outstandingRequests = self->_outstandingRequests;
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
        [(NSMutableDictionary *)outstandingRequests setObject:v35 forKey:v53];

        networkActivity = [v58 networkActivity];
        if (networkActivity)
        {
          v55 = nw_activity_copy_xpc_token();
        }

        else
        {
          v55 = 0;
        }

        v56 = COLogForCategory(5);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          selfCopy = self;
          v67 = 2048;
          v68 = v58;
          v69 = 1024;
          v70 = v60;
          _os_log_impl(&dword_244328000, v56, OS_LOG_TYPE_DEFAULT, "%p sending request %p with id '%u'", buf, 0x1Cu);
        }

        [v57 sendRequestWithPayload:v20 payloadType:typeCopy requestType:0 requestID:v60 members:membersCopy activityToken:v55];
        v25 = v63;
        goto LABEL_21;
      }

LABEL_31:
      v44 = MEMORY[0x277CBEB58];
      roleSnapshotsCache2 = [(COMessageChannel *)self roleSnapshotsCache];
      allKeys = [roleSnapshotsCache2 allKeys];
      v47 = [v44 setWithArray:allKeys];

      v48 = +[COClusterMember memberForCurrentDevice];
      [v47 addObject:v48];

      v49 = [membersCopy count];
      if (v49 <= [v47 count])
      {
        v51 = [membersCopy count];
        v50 = COMessagingTypeAdHocSubset;
        if (v51 == [v47 count])
        {
          [v47 minusSet:membersCopy];
          if (![v47 count])
          {
            v50 = COMessagingTypeAdHocEntireCluster;
          }
        }
      }

      else
      {
        v50 = COMessagingTypeAdHocSuperset;
      }

      v43 = *v50;

      v35 = v59;
      goto LABEL_37;
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = -1111;
  }

  else
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = -1110;
  }

  v20 = [v27 errorWithDomain:@"COMessageChannelErrorDomain" code:v28 userInfo:0];
  (v14)[2](v14, 0, 0, v20);
LABEL_15:
  [(COMessageChannel *)self _submitMetricsForRequest:requestCopy withRequestInfo:0 withError:v20];
LABEL_22:
}

void __68__COMessageChannel__sendRequest_type_members_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, 0, 0, v5);
  [*(a1 + 32) _submitMetricsForRequest:*(a1 + 40) withRequestInfo:0 withError:v5];
}

- (void)_broadcastRequest:(id)request type:(id)type recipientsCallback:(id)callback responseCompletionHandler:(id)handler
{
  v47[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  typeCopy = type;
  callbackCopy = callback;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (!self->_activated)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1110 userInfo:0];
LABEL_8:
    callbackCopy[2](callbackCopy, 0, v15);
    goto LABEL_9;
  }

  if (handlerCopy)
  {
    v39 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v39];
    v16 = v39;
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA7E8];
      v47[0] = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v20 = [v18 errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:v19];

      v21 = COLogForCategory(5);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannel _sendRequest:type:members:withCompletionHandler:];
      }
    }

    else
    {
      v23 = [v15 length];
      if (v23 <= [(COMessageChannel *)self sendLimit])
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __88__COMessageChannel__broadcastRequest_type_recipientsCallback_responseCompletionHandler___block_invoke;
        v36[3] = &unk_278E12FD8;
        v25 = callbackCopy;
        v38 = v25;
        v36[4] = self;
        v26 = requestCopy;
        v37 = v26;
        v34 = [(COMessageChannel *)self _remoteInterfaceWithErrorHandler:v36];
        _generateRequestID = [(COMessageChannel *)self _generateRequestID];
        v28 = [[COMessageChannelRequestInfo alloc] initWithRequestID:_generateRequestID type:1 request:v26];
        -[COMessageChannelRequestInfo setMessageSize:](v28, "setMessageSize:", [v15 length]);
        [(COMessageChannelRequestInfo *)v28 setRecipientCallback:v25];
        [(COMessageChannelRequestInfo *)v28 setResponseCallback:v14];
        [(COMessageChannelRequestInfo *)v28 setDestinationInfo:0x2857AEFE0];
        outstandingRequests = self->_outstandingRequests;
        v35 = _generateRequestID;
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:_generateRequestID];
        [(NSMutableDictionary *)outstandingRequests setObject:v28 forKey:v30];

        networkActivity = [v26 networkActivity];
        if (networkActivity)
        {
          v33 = nw_activity_copy_xpc_token();
        }

        else
        {
          v33 = 0;
        }

        v32 = COLogForCategory(5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          selfCopy = self;
          v42 = 2048;
          v43 = v26;
          v44 = 1024;
          v45 = v35;
          _os_log_impl(&dword_244328000, v32, OS_LOG_TYPE_DEFAULT, "%p broadcasting request %p with id '%u'", buf, 0x1Cu);
        }

        [v34 sendRequestWithPayload:v15 payloadType:typeCopy requestType:1 requestID:v35 members:0 activityToken:v33];
        v20 = v38;
        goto LABEL_19;
      }

      v24 = COLogForCategory(5);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannel _sendRequest:type:members:withCompletionHandler:];
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1102 userInfo:0];
    }

    callbackCopy[2](callbackCopy, 0, v20);
    [(COMessageChannel *)self _submitMetricsForRequest:requestCopy withRequestInfo:0 withError:v20];
LABEL_19:

    goto LABEL_20;
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1116 userInfo:0];
  v22 = COLogForCategory(5);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [COMessageChannel _broadcastRequest:type:recipientsCallback:responseCompletionHandler:];
  }

  if (callbackCopy)
  {
    goto LABEL_8;
  }

LABEL_9:
  [(COMessageChannel *)self _submitMetricsForRequest:requestCopy withRequestInfo:0 withError:v15];
LABEL_20:
}

void __88__COMessageChannel__broadcastRequest_type_recipientsCallback_responseCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, 0, v5);
  [*(a1 + 32) _submitMetricsForRequest:*(a1 + 40) withRequestInfo:0 withError:v5];
}

- (void)_activateWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__COMessageChannel__activateWithCompletion___block_invoke;
  v23[3] = &unk_278E12458;
  objc_copyWeak(&v25, &location);
  v5 = completionCopy;
  v24 = v5;
  v6 = [(COMessageChannel *)self _remoteInterfaceWithErrorHandler:v23];
  if (!self->_activated || (-[COMessageChannel lastConnection](self, "lastConnection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 activated], v7, (v8 & 1) == 0))
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    requestHandlers = [(COMessageChannel *)self requestHandlers];
    v11 = [requestHandlers countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(requestHandlers);
          }

          [v9 addObject:*(*(&v19 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [requestHandlers countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v11);
    }

    topic = [(COMessageChannel *)self topic];
    cluster = [(COMessageChannel *)self cluster];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__COMessageChannel__activateWithCompletion___block_invoke_81;
    v16[3] = &unk_278E13028;
    objc_copyWeak(&v18, &location);
    v16[4] = self;
    v17 = v5;
    [v6 activateMessageChannelForTopic:topic cluster:cluster handlers:v9 withCompletion:v16];

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __44__COMessageChannel__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__COMessageChannel__activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
    [WeakRetained _submitMetricsForActivationCompletionWithError:v3];
  }
}

void __44__COMessageChannel__activateWithCompletion___block_invoke_81(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__COMessageChannel__activateWithCompletion___block_invoke_2;
    v12[3] = &unk_278E13000;
    v13 = v7;
    v14 = v9;
    v17 = a3;
    v18 = a4;
    v11 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v11;
    dispatch_async(v10, v12);
  }
}

void __44__COMessageChannel__activateWithCompletion___block_invoke_2(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2)
  {
    *(*(a1 + 40) + 8) = 1;
    v13 = [*(a1 + 40) lastConnection];
    [v13 setActivated:1];

    v4 = 0;
    goto LABEL_15;
  }

  v4 = v2;
  v5 = [*v3 domain];
  if (![v5 isEqualToString:@"COMessageChannelErrorDomain"])
  {
    goto LABEL_11;
  }

  v6 = [*v3 code];

  if (v6 == -1100)
  {
    v5 = [*v3 userInfo];
    v7 = [v5 objectForKey:@"COMessageChannelFailedRequestHandlerErrorKey"];
    if ([v7 hasPrefix:@"SessionProducer+"])
    {
      v8 = [v7 _sessionProducerSubTopic];
      v9 = MEMORY[0x277CCA9B8];
      v19 = @"COMessageChannelDuplicateSessionProducerKey";
      v20[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v11 = v9;
      v12 = -1112;
    }

    else
    {
      if (![v7 hasPrefix:@"SessionConsumer+"])
      {
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v8 = [v7 _sessionConsumerSubTopic];
      v14 = MEMORY[0x277CCA9B8];
      v17 = @"COMessageChannelDuplicateSessionConsumerKey";
      v18 = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = v14;
      v12 = -1113;
    }

    v15 = [v11 errorWithDomain:@"COMessageChannelErrorDomain" code:v12 userInfo:v10];

    v4 = v15;
    goto LABEL_10;
  }

LABEL_12:
  v16 = COLogForCategory(5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __44__COMessageChannel__activateWithCompletion___block_invoke_2_cold_1();
  }

LABEL_15:
  [*(a1 + 40) setSendLimit:*(a1 + 64)];
  [*(a1 + 40) setReceiveLimit:*(a1 + 72)];
  (*(*(a1 + 56) + 16))();
  if (!v4)
  {
    [*(a1 + 48) _setupClusterMonitor];
  }

  [*(a1 + 40) _submitMetricsForActivationCompletionWithError:v4];
  [*(a1 + 48) _callbackProducersAndConsumersAfterActivationWithError:v4];
}

- (id)_remoteInterfaceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__4;
  v12[4] = __Block_byref_object_dispose__4;
  v13 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke;
  v8[3] = &unk_278E13050;
  v10 = v12;
  v11 = &v14;
  v8[4] = self;
  v5 = handlerCopy;
  v9 = v5;
  [(COMessageChannel *)self _withLock:v8];
  v6 = v15[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 messageChannelServiceConnection];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [*(a1 + 32) lastConnection];

  if (v6 != v7)
  {
    v8 = MEMORY[0x277CCAE90];
    v9 = &unk_2857B7850;
    v10 = [v8 interfaceWithProtocol:v9];
    v11 = [[COMessageChannelClientInterfaceMediator alloc] initWithMessageChannel:*(a1 + 32)];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v10 setClasses:v14 forSelector:sel_receivedRecipientListForRequestID_recipients_ argumentIndex:1 ofReply:0];
    [*(*(*(a1 + 48) + 8) + 40) setExportedInterface:v10];
    [*(*(*(a1 + 48) + 8) + 40) setExportedObject:v11];
    v15 = &unk_2857BCAF0;

    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v15];

    v17 = +[COCluster _allowedClusterClasses];
    [v16 setClasses:v17 forSelector:sel_activateMessageChannelForTopic_cluster_handlers_withCompletion_ argumentIndex:1 ofReply:0];

    [*(*(*(a1 + 48) + 8) + 40) setRemoteObjectInterface:v16];
    objc_initWeak(&location, *(a1 + 32));
    v18 = [*(*(*(a1 + 48) + 8) + 40) interruptionHandler];
    v19 = [*(*(*(a1 + 48) + 8) + 40) invalidationHandler];
    [*(*(*(a1 + 48) + 8) + 40) setInterruptionHandler:v18];
    [*(*(*(a1 + 48) + 8) + 40) setInvalidationHandler:v19];
    v20 = *(*(*(a1 + 48) + 8) + 40);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke_2;
    v30[3] = &unk_278E128A0;
    v21 = v18;
    v31 = v21;
    objc_copyWeak(&v32, &location);
    [v20 setInterruptionHandler:v30];
    v22 = *(*(*(a1 + 48) + 8) + 40);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke_154;
    v27[3] = &unk_278E128A0;
    v23 = v19;
    v28 = v23;
    objc_copyWeak(&v29, &location);
    [v22 setInvalidationHandler:v27];
    [*(a1 + 32) setLastConnection:*(*(*(a1 + 48) + 8) + 40)];
    [*(*(*(a1 + 48) + 8) + 40) resume];
    objc_destroyWeak(&v29);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  v24 = [*(*(*(a1 + 48) + 8) + 40) remoteObjectProxyWithErrorHandler:*(a1 + 40)];
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
}

void __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1();
    }

    [WeakRetained _lostConnectionToService];
  }
}

void __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke_154(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__COMessageChannel__remoteInterfaceWithErrorHandler___block_invoke_154_cold_1();
    }

    [WeakRetained _lostConnectionToService];
  }
}

- (void)_lostConnectionToService
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__COMessageChannel__lostConnectionToService__block_invoke;
  v4[3] = &unk_278E12940;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__COMessageChannel__lostConnectionToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[8] == 1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __44__COMessageChannel__lostConnectionToService__block_invoke_2;
    v3[3] = &unk_278E13078;
    v3[4] = WeakRetained;
    [WeakRetained _activateWithCompletion:v3];
  }
}

void __44__COMessageChannel__lostConnectionToService__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__COMessageChannel__lostConnectionToService__block_invoke_2_cold_1();
    }

    [*(a1 + 32) _lostConnectionToService];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "Successfully re-established connection to the service for %p", &v7, 0xCu);
    }
  }
}

- (void)_invokeResponseCallbackForInfo:(id)info snapshot:(id)snapshot response:(id)response error:(id)error
{
  infoCopy = info;
  snapshotCopy = snapshot;
  responseCopy = response;
  errorCopy = error;
  responseCallback = [infoCopy responseCallback];

  if (responseCallback)
  {
    responseCallback2 = [infoCopy responseCallback];
    (responseCallback2)[2](responseCallback2, snapshotCopy, responseCopy, errorCopy);
  }

  else
  {
    v15 = COLogForCategory(5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [COMessageChannel _invokeResponseCallbackForInfo:snapshot:response:error:];
    }
  }
}

- (void)_handleStartCommand:(id)command withMember:(id)member callback:(id)callback
{
  v55[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  memberCopy = member;
  callbackCopy = callback;
  subTopic = [commandCopy subTopic];
  sessionConsumers = [(COMessageChannel *)self sessionConsumers];
  v11 = [sessionConsumers objectForKey:subTopic];

  delegate = [v11 delegate];
  queue = [v11 delegateQueue];
  payload = [commandCopy payload];
  payloadType = [commandCopy payloadType];
  v15 = payloadType;
  v16 = 0;
  if (payload && payloadType)
  {
    v17 = [(COMessageChannel *)self _payloadClassFromType:payloadType];
    if (v17)
    {
      v45 = 0;
      v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v17 fromData:payload error:&v45];
      v18 = v45;
      if (v18)
      {
LABEL_5:
        v19 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA7E8];
        v53 = v18;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v21 = [v19 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v20];

        v22 = COLogForCategory(6);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          member = [memberCopy member];
          *buf = 138412802;
          v47 = v11;
          v48 = 2112;
          v49 = v15;
          v50 = 2112;
          v51 = member;
          _os_log_error_impl(&dword_244328000, v22, OS_LOG_TYPE_ERROR, "%@ Consumer failed to unarchive request of type %@. Session start with member %@ failed", buf, 0x20u);
        }

        v23 = [[COMessageSessionManagementResponse alloc] initWithRemoteError:v21];
        callbackCopy[2](callbackCopy, v23, 0);

        goto LABEL_14;
      }
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v54 = @"COMessageSessionUnknownClassErrorKey";
      v55[0] = v15;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v18 = [v24 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v25];

      v16 = 0;
      if (v18)
      {
        goto LABEL_5;
      }
    }
  }

  v26 = [COMessageConsumedSession alloc];
  member2 = [memberCopy member];
  v21 = [(COMessageConsumedSession *)v26 initWithMember:member2 consumer:v11];

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v28 = COLogForCategory(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      subTopic2 = [commandCopy subTopic];
      [(COMessageChannel *)self _handleStartCommand:subTopic2 withMember:buf callback:v28];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__COMessageChannel__handleStartCommand_withMember_callback___block_invoke;
    block[3] = &unk_278E130F0;
    v36 = delegate;
    v37 = v11;
    v38 = memberCopy;
    v16 = v16;
    v39 = v16;
    objc_copyWeak(&v43, &location);
    selfCopy = self;
    v21 = v21;
    v41 = v21;
    v42 = callbackCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  else
  {
    v30 = objc_alloc_init(COMessageSessionManagementResponse);
    callbackCopy[2](callbackCopy, v30, 0);
  }

LABEL_14:
}

void __60__COMessageChannel__handleStartCommand_withMember_callback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__COMessageChannel__handleStartCommand_withMember_callback___block_invoke_2;
  v6[3] = &unk_278E130C8;
  objc_copyWeak(&v11, (a1 + 88));
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  [v2 consumer:v3 shouldStartSessionWithMember:v4 request:v5 completionHandler:v6];

  objc_destroyWeak(&v11);
}

void __60__COMessageChannel__handleStartCommand_withMember_callback___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__COMessageChannel__handleStartCommand_withMember_callback___block_invoke_3;
    block[3] = &unk_278E130A0;
    v19 = a2;
    v15 = v5;
    v13 = *(a1 + 32);
    v9 = *(&v13 + 1);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v16 = v13;
    v17 = v12;
    v18 = *(a1 + 64);
    dispatch_async(v8, block);
  }
}

void __60__COMessageChannel__handleStartCommand_withMember_callback___block_invoke_3(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 80))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v14 = 0;
      v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v14];
      v4 = v14;
      if (v4)
      {
        v5 = v4;
        v6 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CCA7E8];
        v16[0] = v4;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v8 = [v6 errorWithDomain:@"COMessageSessionErrorDomain" code:-1207 userInfo:v7];

        if (v8)
        {
          v9 = [[COMessageSessionManagementResponse alloc] initWithRemoteError:v8];
          [*(a1 + 40) _deliverFailedToStartSessionWithMember:*(a1 + 48) consumer:*(a1 + 56) error:v8];

LABEL_9:
          goto LABEL_10;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v12 = [COMessageSessionManagementResponse alloc];
    v13 = [*(a1 + 40) _payloadTypeFromClass:objc_opt_class()];
    v9 = [(COMessageSessionManagementResponse *)v12 initWithPayload:v3 payloadType:v13];

    [*(a1 + 40) _deliverSuccessfullyStartedSession:*(a1 + 64) withMember:*(a1 + 48) consumer:*(a1 + 56)];
    goto LABEL_9;
  }

  v10 = [COMessageSessionManagementResponse alloc];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1213 userInfo:0];
  v9 = [(COMessageSessionManagementResponse *)v10 initWithRemoteError:v11];

LABEL_10:
  (*(*(a1 + 72) + 16))();
}

- (void)_deliverSuccessfullyStartedSession:(id)session withResponse:(id)response withMember:(id)member producer:(id)producer
{
  v37 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  responseCopy = response;
  memberCopy = member;
  producerCopy = producer;
  sessions = [producerCopy sessions];
  member = [memberCopy member];
  [sessions setObject:sessionCopy forKey:member];

  v16 = COLogForCategory(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = producerCopy;
    v35 = 2112;
    v36 = sessionCopy;
    _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%@ Producer successfully created a session %@", buf, 0x16u);
  }

  delegate = [producerCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [producerCopy delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__COMessageChannel__deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke;
    block[3] = &unk_278E12EE8;
    v28 = delegate;
    v29 = producerCopy;
    v30 = sessionCopy;
    v31 = memberCopy;
    v32 = responseCopy;
    dispatch_async(delegateQueue, block);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__COMessageChannel__deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke_2;
  v24[3] = &unk_278E13118;
  v25 = producerCopy;
  v26 = sessionCopy;
  v19 = sessionCopy;
  v20 = producerCopy;
  v21 = [(COMessageChannel *)self _remoteInterfaceWithErrorHandler:v24];
  subTopic = [v20 subTopic];
  member2 = [memberCopy member];
  [v21 sessionStartedForSubTopic:subTopic withMember:member2 produced:1];
}

void __88__COMessageChannel__deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke_2(uint64_t a1)
{
  v1 = COLogForCategory(6);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __88__COMessageChannel__deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke_2_cold_1();
  }
}

- (void)_deliverSuccessfullyStartedSession:(id)session withMember:(id)member consumer:(id)consumer
{
  sessionCopy = session;
  consumerCopy = consumer;
  memberCopy = member;
  sessions = [consumerCopy sessions];
  member = [memberCopy member];
  [sessions setObject:sessionCopy forKey:member];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__COMessageChannel__deliverSuccessfullyStartedSession_withMember_consumer___block_invoke;
  v24[3] = &unk_278E13118;
  v13 = consumerCopy;
  v25 = v13;
  v14 = sessionCopy;
  v26 = v14;
  v15 = [(COMessageChannel *)self _remoteInterfaceWithErrorHandler:v24];
  subTopic = [v13 subTopic];
  member2 = [memberCopy member];

  [v15 sessionStartedForSubTopic:subTopic withMember:member2 produced:0];
  delegate = [v13 delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [v13 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__COMessageChannel__deliverSuccessfullyStartedSession_withMember_consumer___block_invoke_164;
    block[3] = &unk_278E12738;
    v21 = delegate;
    v22 = v13;
    v23 = v14;
    dispatch_async(delegateQueue, block);
  }
}

void __75__COMessageChannel__deliverSuccessfullyStartedSession_withMember_consumer___block_invoke(uint64_t a1)
{
  v1 = COLogForCategory(6);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __75__COMessageChannel__deliverSuccessfullyStartedSession_withMember_consumer___block_invoke_cold_1();
  }
}

- (void)_deliverDidFailToStartSessionWithMember:(id)member producer:(id)producer error:(id)error
{
  memberCopy = member;
  producerCopy = producer;
  errorCopy = error;
  delegate = [producerCopy delegate];
  delegateQueue = [producerCopy delegateQueue];
  if (objc_opt_respondsToSelector())
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __75__COMessageChannel__deliverDidFailToStartSessionWithMember_producer_error___block_invoke;
    v16 = &unk_278E12E70;
    v17 = delegate;
    v18 = producerCopy;
    v19 = memberCopy;
    v20 = errorCopy;
    dispatch_async(delegateQueue, &v13);
  }

  [(COMessageChannel *)self _submitMetricsForSession:0 withError:errorCopy, v13, v14, v15, v16];
}

- (void)_deliverFailedToStartSessionWithMember:(id)member consumer:(id)consumer error:(id)error
{
  memberCopy = member;
  consumerCopy = consumer;
  errorCopy = error;
  delegate = [consumerCopy delegate];
  delegateQueue = [consumerCopy delegateQueue];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__COMessageChannel__deliverFailedToStartSessionWithMember_consumer_error___block_invoke;
    v12[3] = &unk_278E12E70;
    v13 = delegate;
    v14 = consumerCopy;
    v15 = memberCopy;
    v16 = errorCopy;
    dispatch_async(delegateQueue, v12);
  }
}

- (void)_handleStopCommand:(id)command fromMember:(id)member callback:(id)callback
{
  v32[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  memberCopy = member;
  callbackCopy = callback;
  subTopic = [commandCopy subTopic];
  sessionConsumers = [(COMessageChannel *)self sessionConsumers];
  v13 = [sessionConsumers objectForKey:subTopic];

  sessions = [v13 sessions];
  member = [memberCopy member];
  v16 = [sessions objectForKey:member];

  if (v16 || (-[COMessageChannel sessionProducers](self, "sessionProducers"), v17 = objc_claimAutoreleasedReturnValue(), [v17 objectForKey:subTopic], v18 = objc_claimAutoreleasedReturnValue(), v17, objc_msgSend(v18, "sessions"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(memberCopy, "member"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKey:", v20), v16 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v16))
  {
    v29 = v13;
    payload = [commandCopy payload];
    payloadType = [commandCopy payloadType];
    remoteError = [commandCopy remoteError];
    if (!remoteError)
    {
      v24 = 0;
      if (!payload || !payloadType)
      {
        goto LABEL_5;
      }

      v26 = [(COMessageChannel *)self _payloadClassFromType:payloadType];
      if (v26)
      {
        v30 = 0;
        v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v26 fromData:payload error:&v30];
        remoteError = v30;
        goto LABEL_5;
      }

      v28 = MEMORY[0x277CCA9B8];
      v31 = @"COMessageSessionUnknownClassErrorKey";
      v32[0] = payloadType;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      remoteError = [v28 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v27];
    }

    v24 = 0;
LABEL_5:
    [(COMessageChannel *)self _deliverDidEndDelegateForSession:v16 notice:v24 initiator:memberCopy error:remoteError];

    v13 = v29;
  }

  v25 = objc_alloc_init(COMessageSessionManagementResponse);
  callbackCopy[2](callbackCopy, v25, 0);
}

- (void)_handleCapableCommand:(id)command fromMember:(id)member callback:(id)callback
{
  v33 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  memberCopy = member;
  callbackCopy = callback;
  v11 = objc_alloc_init(COMessageSessionManagementResponse);
  callbackCopy[2](callbackCopy, v11, 0);

  sessionsInflight = [(COMessageChannel *)self sessionsInflight];
  member = [memberCopy member];
  v14 = [sessionsInflight objectForKey:member];

  if (v14)
  {
    v15 = COLogForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      member2 = [memberCopy member];
      subTopic = [commandCopy subTopic];
      v27 = 134218498;
      selfCopy = self;
      v29 = 2112;
      v30 = member2;
      v31 = 2112;
      v32 = subTopic;
      _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p Received a command indicating inflight member %@ is now capable of consuming subTopic %@", &v27, 0x20u);
    }

    sessionProducers = [(COMessageChannel *)self sessionProducers];
    subTopic2 = [commandCopy subTopic];
    v20 = [sessionProducers objectForKey:subTopic2];

    null = [MEMORY[0x277CBEB68] null];
    if ([v14 isEqual:null])
    {
      v22 = 0;
    }

    else
    {
      v22 = v14;
    }

    v23 = v22;

    sessionsInflight2 = [(COMessageChannel *)self sessionsInflight];
    member3 = [memberCopy member];
    [sessionsInflight2 removeObjectForKey:member3];

    member4 = [memberCopy member];
    [(COMessageChannel *)self _startSessionWithProducer:v20 member:member4 request:v23];
  }
}

- (void)_startSessionWithProducer:(id)producer member:(id)member
{
  v30 = *MEMORY[0x277D85DE8];
  producerCopy = producer;
  memberCopy = member;
  sessions = [producerCopy sessions];
  v9 = [sessions objectForKey:memberCopy];

  delegateQueue = COLogForCategory(6);
  v11 = os_log_type_enabled(delegateQueue, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134218242;
      selfCopy3 = self;
      v26 = 2112;
      v27 = memberCopy;
      _os_log_impl(&dword_244328000, delegateQueue, OS_LOG_TYPE_DEFAULT, "%p Session with member %@ is already active. Not starting again", buf, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134218498;
      selfCopy3 = self;
      v26 = 2112;
      v27 = memberCopy;
      v28 = 2112;
      v29 = producerCopy;
      _os_log_impl(&dword_244328000, delegateQueue, OS_LOG_TYPE_DEFAULT, "%p Attempting to start a session with member %@ using producer %@", buf, 0x20u);
    }

    delegateQueue = [producerCopy delegateQueue];
    delegate = [producerCopy delegate];
    objc_initWeak(&location, self);
    roleSnapshotsCache = [(COMessageChannel *)self roleSnapshotsCache];
    v14 = [roleSnapshotsCache objectForKey:memberCopy];

    if (objc_opt_respondsToSelector())
    {
      v15 = COLogForCategory(6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [COMessageChannel _startSessionWithProducer:member:];
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __53__COMessageChannel__startSessionWithProducer_member___block_invoke;
      v17[3] = &unk_278E13168;
      v18 = delegate;
      v19 = producerCopy;
      v20 = v14;
      objc_copyWeak(&v22, &location);
      v21 = memberCopy;
      dispatch_async(delegateQueue, v17);

      objc_destroyWeak(&v22);
    }

    else
    {
      v16 = COLogForCategory(6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p Client does not implement producer:shouldStartSessionWithMember:completionHandler:", buf, 0xCu);
      }

      [(COMessageChannel *)self _startSessionWithProducer:producerCopy member:memberCopy request:0];
    }

    objc_destroyWeak(&location);
  }
}

void __53__COMessageChannel__startSessionWithProducer_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__COMessageChannel__startSessionWithProducer_member___block_invoke_2;
  v5[3] = &unk_278E13140;
  objc_copyWeak(&v8, (a1 + 64));
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  [v2 producer:v3 shouldStartSessionWithMember:v4 completionHandler:v5];

  objc_destroyWeak(&v8);
}

void __53__COMessageChannel__startSessionWithProducer_member___block_invoke_2(id *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = COLogForCategory(6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v8)
      {
        v9 = a1[4];
        *buf = 134218498;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p Client wants to start a session with member %@ with request %@", buf, 0x20u);
      }

      v10 = WeakRetained[13];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__COMessageChannel__startSessionWithProducer_member___block_invoke_172;
      v12[3] = &unk_278E12E70;
      v12[4] = WeakRetained;
      v13 = a1[5];
      v14 = a1[4];
      v15 = v5;
      dispatch_async(v10, v12);
    }

    else
    {
      if (v8)
      {
        v11 = a1[4];
        *buf = 134218242;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p Client does not want to start a session with member %@", buf, 0x16u);
      }
    }
  }
}

- (void)_startSessionWithProducer:(id)producer member:(id)member request:(id)request
{
  v35[1] = *MEMORY[0x277D85DE8];
  producerCopy = producer;
  memberCopy = member;
  requestCopy = request;
  roleSnapshotsCache = [(COMessageChannel *)self roleSnapshotsCache];
  v12 = [roleSnapshotsCache objectForKey:memberCopy];

  v33 = 0;
  v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v33];
  v13 = v33;
  v14 = v13;
  if (v13)
  {
    v15 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA7E8];
    v35[0] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v17 = [v15 errorWithDomain:@"COMessageSessionErrorDomain" code:-1205 userInfo:v16];

    [(COMessageChannel *)self _deliverDidFailToStartSessionWithMember:v12 producer:producerCopy error:v17];
  }

  else
  {
    v18 = [COMessageSessionManagementRequest alloc];
    v19 = [(COMessageChannel *)self _payloadTypeFromClass:objc_opt_class()];
    topic = [(COMessageChannel *)self topic];
    subTopic = [producerCopy subTopic];
    v17 = [(COMessageSessionManagementRequest *)v18 initWithCommandType:1 payload:v26 payloadType:v19 topic:topic subTopic:subTopic];

    v22 = MEMORY[0x277CCACA8];
    subTopic2 = [producerCopy subTopic];
    v24 = [v22 _commandTypeForConsumerWithSubTopic:subTopic2];

    objc_initWeak(&location, self);
    v25 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__COMessageChannel__startSessionWithProducer_member_request___block_invoke;
    v27[3] = &unk_278E12F10;
    objc_copyWeak(&v31, &location);
    v28 = requestCopy;
    v29 = producerCopy;
    v30 = memberCopy;
    [(COMessageChannel *)self _sendRequest:v17 type:v24 members:v25 withCompletionHandler:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __61__COMessageChannel__startSessionWithProducer_member_request___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [v9 domain];
      if ([v11 isEqualToString:@"COMessageChannelErrorDomain"])
      {
        v12 = [v9 code];

        if (v12 == -1114)
        {
          v13 = COLogForCategory(6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v63 = WeakRetained;
            v64 = 2112;
            v65 = v7;
            _os_log_impl(&dword_244328000, v13, OS_LOG_TYPE_DEFAULT, "%@ Member %@ does not have an active message channel for Sessions. Deferring session creation.", buf, 0x16u);
          }

          v14 = *(a1 + 32);
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = [MEMORY[0x277CBEB68] null];
          }

          v16 = v15;
          v40 = [WeakRetained sessionsInflight];
          v41 = [v7 member];
          [v40 setObject:v16 forKey:v41];

          goto LABEL_33;
        }
      }

      else
      {
      }

      v21 = [v9 domain];
      if ([v21 isEqualToString:@"COMessageChannelErrorDomain"])
      {
        v22 = [v9 code];

        if (v22 == -1101)
        {
          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1210 userInfo:0];
LABEL_19:
          [WeakRetained _deliverDidFailToStartSessionWithMember:v7 producer:*(a1 + 40) error:v16];
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
      }

      v23 = MEMORY[0x277CCA9B8];
      v60 = *MEMORY[0x277CCA7E8];
      v61 = v9;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v16 = [v23 errorWithDomain:@"COMessageSessionErrorDomain" code:-1204 userInfo:v24];

      goto LABEL_19;
    }

    v16 = v8;
    v17 = [v16 remoteError];

    if (v17)
    {
      v18 = COLogForCategory(6);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __61__COMessageChannel__startSessionWithProducer_member_request___block_invoke_cold_1(a1, v16, v18);
      }

      v19 = *(a1 + 40);
      v20 = [v16 remoteError];
      [WeakRetained _deliverDidFailToStartSessionWithMember:v7 producer:v19 error:v20];
      goto LABEL_32;
    }

    v20 = [v16 payload];
    v25 = [v16 payloadType];
    v26 = 0;
    v54 = v25;
    if (v20)
    {
      v27 = v25;
      if (v25)
      {
        v28 = [WeakRetained _payloadClassFromType:v25];
        if (v28)
        {
          v55 = 0;
          v26 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v28 fromData:v20 error:&v55];
          v29 = v55;
          if (v29)
          {
LABEL_24:
            v50 = v26;
            v30 = COLogForCategory(6);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              __61__COMessageChannel__startSessionWithProducer_member_request___block_invoke_cold_2();
            }

            v51 = MEMORY[0x277CCA9B8];
            v56 = *MEMORY[0x277CCA7E8];
            v57 = v29;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
            v52 = [v51 errorWithDomain:@"COMessageSessionErrorDomain" code:-1208 userInfo:v31];

            [WeakRetained _deliverDidFailToStartSessionWithMember:v7 producer:*(a1 + 40) error:v52];
            v48 = [COMessageSessionManagementRequest alloc];
            v32 = [WeakRetained topic];
            v33 = [*(a1 + 40) subTopic];
            v49 = [(COMessageSessionManagementRequest *)v48 initWithCommandType:2 error:v52 topic:v32 subTopic:v33];

            v34 = MEMORY[0x277CCACA8];
            v35 = [*(a1 + 40) subTopic];
            v36 = [v34 _commandTypeForConsumerWithSubTopic:v35];

            v37 = MEMORY[0x277CBEB98];
            v47 = [v7 member];
            v38 = [v37 setWithObject:v47];
            [WeakRetained _sendRequest:v49 type:v36 members:v38 withCompletionHandler:&__block_literal_global_176_0];

            v39 = v50;
            goto LABEL_31;
          }
        }

        else
        {
          v42 = MEMORY[0x277CCA9B8];
          v58 = @"COMessageSessionUnknownClassErrorKey";
          v59 = v27;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v29 = [v42 errorWithDomain:@"COMessageSessionErrorDomain" code:-1208 userInfo:v43];

          v26 = 0;
          if (v29)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v44 = [COMessageProducedSession alloc];
    [v7 member];
    v53 = v20;
    v46 = v45 = v26;
    v29 = [(COMessageProducedSession *)v44 initWithMember:v46 producer:*(a1 + 40)];

    v39 = v45;
    v20 = v53;
    [(COMessageSession *)v29 setDidUseRequest:*(a1 + 32) != 0];
    [(COMessageSession *)v29 setDidUseResponse:v39 != 0];
    [WeakRetained _deliverSuccessfullyStartedSession:v29 withResponse:v39 withMember:v7 producer:*(a1 + 40)];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

LABEL_34:
}

- (void)_deliverDidEndDelegateForSession:(id)session notice:(id)notice initiator:(id)initiator error:(id)error
{
  sessionCopy = session;
  noticeCopy = notice;
  initiatorCopy = initiator;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    producer = [sessionCopy producer];
    delegate = [producer delegate];
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = [producer delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__COMessageChannel__deliverDidEndDelegateForSession_notice_initiator_error___block_invoke;
      block[3] = &unk_278E131B0;
      v33 = delegate;
      v34 = producer;
      v35 = sessionCopy;
      v36 = initiatorCopy;
      v37 = noticeCopy;
      v38 = errorCopy;
      dispatch_async(delegateQueue, block);
    }

    [(COMessageChannel *)self _submitMetricsForSession:sessionCopy withError:errorCopy];
  }

  else
  {
    producer = [sessionCopy consumer];
    delegate = [producer delegate];
    if (objc_opt_respondsToSelector())
    {
      delegateQueue2 = [producer delegateQueue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __76__COMessageChannel__deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_2;
      v25[3] = &unk_278E131B0;
      delegate = delegate;
      v26 = delegate;
      producer = producer;
      v27 = producer;
      v28 = sessionCopy;
      v29 = initiatorCopy;
      v30 = noticeCopy;
      v31 = errorCopy;
      dispatch_async(delegateQueue2, v25);
    }
  }

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__COMessageChannel__deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_3;
  v21[3] = &unk_278E131D8;
  objc_copyWeak(&v23, &location);
  v18 = sessionCopy;
  v22 = v18;
  v19 = [(COMessageChannel *)self _remoteInterfaceWithErrorHandler:v21];
  subTopic = [v18 subTopic];
  [v19 sessionEndedForSubTopic:subTopic];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __76__COMessageChannel__deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = COLogForCategory(6);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __76__COMessageChannel__deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_3_cold_1();
    }
  }
}

- (void)_callbackProducersAndConsumersAfterActivationWithError:(id)error
{
  v107 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  sessionProducers = [(COMessageChannel *)self sessionProducers];
  if ([sessionProducers count])
  {
  }

  else
  {
    sessionConsumers = [(COMessageChannel *)self sessionConsumers];
    v6 = [sessionConsumers count];

    if (!v6)
    {
      goto LABEL_57;
    }
  }

  v7 = COLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v105 = 2112;
    v106 = errorCopy;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p Channel activation complete with error %@. Calling producer and consumer delegates", buf, 0x16u);
  }

  if (errorCopy)
  {
    if ([errorCopy code] == -1112)
    {
      userInfo = [errorCopy userInfo];
      v9 = [userInfo objectForKey:@"COMessageChannelDuplicateSessionProducerKey"];

      if (v9)
      {
        v99 = @"COMessageSessionDuplicateSessionProducerKey";
        v100 = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      }

      else
      {
        v10 = 0;
      }

      obja = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1209 userInfo:v10];
    }

    else if ([errorCopy code] == -1113)
    {
      userInfo2 = [errorCopy userInfo];
      v9 = [userInfo2 objectForKey:@"COMessageChannelDuplicateSessionConsumerKey"];

      if (v9)
      {
        v97 = @"COMessageSessionDuplicateSessionConsumerKey";
        v98 = v9;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      }

      else
      {
        v30 = 0;
      }

      obja = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1209 userInfo:v30];
    }

    else
    {
      v31 = MEMORY[0x277CCA9B8];
      v95 = *MEMORY[0x277CCA7E8];
      v96 = errorCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      obja = [v31 errorWithDomain:@"COMessageSessionErrorDomain" code:-1209 userInfo:v9];
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    sessionProducers2 = [(COMessageChannel *)self sessionProducers];
    v32 = [sessionProducers2 countByEnumeratingWithState:&v69 objects:v94 count:16];
    if (v32)
    {
      v33 = *v70;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v70 != v33)
          {
            objc_enumerationMutation(sessionProducers2);
          }

          v35 = *(*(&v69 + 1) + 8 * i);
          sessionProducers3 = [(COMessageChannel *)self sessionProducers];
          v37 = [sessionProducers3 objectForKey:v35];

          delegate = [v37 delegate];
          delegateQueue = [v37 delegateQueue];
          if (objc_opt_respondsToSelector())
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_188;
            v64[3] = &unk_278E12E70;
            v65 = delegate;
            selfCopy2 = self;
            v67 = v35;
            v68 = obja;
            dispatch_async(delegateQueue, v64);
          }
        }

        v32 = [sessionProducers2 countByEnumeratingWithState:&v69 objects:v94 count:16];
      }

      while (v32);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    sessionConsumers2 = [(COMessageChannel *)self sessionConsumers];
    v40 = [sessionConsumers2 countByEnumeratingWithState:&v60 objects:v93 count:16];
    if (v40)
    {
      v41 = *v61;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v61 != v41)
          {
            objc_enumerationMutation(sessionConsumers2);
          }

          v43 = *(*(&v60 + 1) + 8 * j);
          sessionConsumers3 = [(COMessageChannel *)self sessionConsumers];
          v45 = [sessionConsumers3 objectForKey:v43];

          delegate2 = [v45 delegate];
          delegateQueue2 = [v45 delegateQueue];
          if (objc_opt_respondsToSelector())
          {
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_2_189;
            v55[3] = &unk_278E12E70;
            v56 = delegate2;
            selfCopy3 = self;
            v58 = v43;
            v59 = obja;
            dispatch_async(delegateQueue2, v55);
          }
        }

        v40 = [sessionConsumers2 countByEnumeratingWithState:&v60 objects:v93 count:16];
      }

      while (v40);
    }
  }

  else
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = [(COMessageChannel *)self sessionProducers];
    v11 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
    if (v11)
    {
      v12 = *v90;
      do
      {
        for (k = 0; k != v11; ++k)
        {
          if (*v90 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v89 + 1) + 8 * k);
          sessionProducers4 = [(COMessageChannel *)self sessionProducers];
          v16 = [sessionProducers4 objectForKey:v14];

          delegate3 = [v16 delegate];
          delegateQueue3 = [v16 delegateQueue];
          if (objc_opt_respondsToSelector())
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke;
            block[3] = &unk_278E12738;
            v86 = delegate3;
            selfCopy4 = self;
            v88 = v16;
            dispatch_async(delegateQueue3, block);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
      }

      while (v11);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obja = [(COMessageChannel *)self sessionConsumers];
    v50 = [obja countByEnumeratingWithState:&v81 objects:v101 count:16];
    if (v50)
    {
      v49 = *v82;
      do
      {
        for (m = 0; m != v50; m = m + 1)
        {
          if (*v82 != v49)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v81 + 1) + 8 * m);
          sessionConsumers4 = [(COMessageChannel *)self sessionConsumers];
          v22 = [sessionConsumers4 objectForKey:v20];

          delegate4 = [v22 delegate];
          delegateQueue4 = [v22 delegateQueue];
          if (objc_opt_respondsToSelector())
          {
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_2;
            v77[3] = &unk_278E12738;
            v78 = delegate4;
            selfCopy5 = self;
            v80 = v22;
            dispatch_async(delegateQueue4, v77);
          }

          v25 = [COMessageSessionManagementRequest alloc];
          topic = [(COMessageChannel *)self topic];
          v27 = [(COMessageSessionManagementRequest *)v25 initWithCommandType:0 payload:0 payloadType:0 topic:topic subTopic:v20];

          v28 = [MEMORY[0x277CCACA8] _commandTypeForProducerWithSubTopic:v20];
          objc_initWeak(buf, self);
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_3;
          v75[3] = &unk_278E13200;
          objc_copyWeak(&v76, buf);
          v75[4] = v20;
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_187;
          v73[3] = &unk_278E13228;
          objc_copyWeak(&v74, buf);
          v73[4] = v20;
          [(COMessageChannel *)self _broadcastRequest:v27 type:v28 recipientsCallback:v75 responseCompletionHandler:v73];
          objc_destroyWeak(&v74);
          objc_destroyWeak(&v76);
          objc_destroyWeak(buf);
        }

        v50 = [obja countByEnumeratingWithState:&v81 objects:v101 count:16];
      }

      while (v50);
    }
  }

LABEL_57:
}

void __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = COLogForCategory(6);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = 134218498;
        v12 = WeakRetained;
        v13 = 2112;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&dword_244328000, v9, OS_LOG_TYPE_ERROR, "%p Failed to broadcast session capability for subTopic %@. Error = %@", &v11, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = WeakRetained;
      v13 = 2048;
      v14 = [v5 count];
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p Informing %ld clients about session capability", &v11, 0x16u);
    }
  }
}

void __75__COMessageChannel__callbackProducersAndConsumersAfterActivationWithError___block_invoke_187(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = COLogForCategory(6);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v13 = 134218754;
        v14 = WeakRetained;
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v7;
        _os_log_error_impl(&dword_244328000, v10, OS_LOG_TYPE_ERROR, "%p Failed to inform client %@ about session capability for subTopic %@. Error = %@", &v13, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = 134218498;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p Successfully informed client %@ about session capability for subTopic %@", &v13, 0x20u);
    }
  }
}

- (void)_setupClusterMonitor
{
  roleMonitorConnectionProvider = self->_roleMonitorConnectionProvider;
  v4 = [COClusterRoleMonitor alloc];
  if (roleMonitorConnectionProvider)
  {
    v5 = self->_roleMonitorConnectionProvider;
    cluster = [(COMessageChannel *)self cluster];
    v7 = [(COClusterRoleMonitor *)v4 initWithConnectionProvider:v5 cluster:cluster];
  }

  else
  {
    cluster = [(COMessageChannel *)self cluster];
    v7 = [(COClusterRoleMonitor *)v4 initWithCluster:cluster];
  }

  clusterRoleMonitor = self->_clusterRoleMonitor;
  self->_clusterRoleMonitor = v7;

  objc_initWeak(&location, self);
  v9 = self->_clusterRoleMonitor;
  workQueue = self->_workQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__COMessageChannel__setupClusterMonitor__block_invoke;
  v12[3] = &unk_278E13250;
  objc_copyWeak(&v13, &location);
  v11 = [(COClusterRoleMonitor *)v9 addObserverForSnapshotsToDispatchQueue:workQueue block:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __40__COMessageChannel__setupClusterMonitor__block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = MEMORY[0x277CBEB58];
    v7 = [WeakRetained roleSnapshotsCache];
    v8 = [v7 allKeys];
    v9 = [v6 setWithArray:v8];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = v3;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v50;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          v16 = [v15 member];
          v17 = [v16 memberType];

          if (v17 != 1)
          {
            v18 = [v15 member];
            [v5 addObject:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v12);
    }

    v19 = [v5 mutableCopy];
    v39 = v9;
    v20 = [v9 mutableCopy];
    [v20 minusSet:v5];
    v38 = v20;
    [WeakRetained _handleRemovedMembers:v20];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v45 + 1) + 8 * j);
          v27 = [v26 member];
          v28 = [v19 containsObject:v27];

          if (v28)
          {
            v29 = [WeakRetained roleSnapshotsCache];
            v30 = [v26 member];
            [v29 setObject:v26 forKey:v30];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v23);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = v38;
    v32 = [v31 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v42;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v42 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v41 + 1) + 8 * k);
          v37 = [WeakRetained roleSnapshotsCache];
          [v37 removeObjectForKey:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v33);
    }

    [v19 minusSet:v39];
    [WeakRetained _handleAddedMembers:v19];

    v3 = v40;
  }
}

- (void)_handleAddedMembers:(id)members
{
  v28 = *MEMORY[0x277D85DE8];
  membersCopy = members;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  sessionProducers = [(COMessageChannel *)self sessionProducers];
  allValues = [sessionProducers allValues];

  obj = allValues;
  v7 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = membersCopy;
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v19;
          do
          {
            v16 = 0;
            do
            {
              if (*v19 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [(COMessageChannel *)self _startSessionWithProducer:v11 member:*(*(&v18 + 1) + 8 * v16++)];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)_handleRemovedMembers:(id)members
{
  v51 = *MEMORY[0x277D85DE8];
  membersCopy = members;
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1212 userInfo:0];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = membersCopy;
  v32 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v32)
  {
    v31 = *v45;
    do
    {
      v6 = 0;
      do
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v6;
        v7 = *(*(&v44 + 1) + 8 * v6);
        sessionProducers = [(COMessageChannel *)self sessionProducers];
        v9 = [sessionProducers copy];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v34 = v9;
        allValues = [v9 allValues];
        v11 = [allValues countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(allValues);
              }

              v15 = *(*(&v40 + 1) + 8 * i);
              sessions = [v15 sessions];
              v17 = [sessions objectForKey:v7];

              if (v17)
              {
                [(COMessageChannel *)self _deliverDidEndDelegateForSession:v17 notice:0 initiator:0 error:v5];
                sessions2 = [v15 sessions];
                [sessions2 removeObjectForKey:v7];
              }
            }

            v12 = [allValues countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v12);
        }

        sessionConsumers = [(COMessageChannel *)self sessionConsumers];
        v20 = [sessionConsumers copy];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v33 = v20;
        allValues2 = [v20 allValues];
        v22 = [allValues2 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(allValues2);
              }

              v26 = *(*(&v36 + 1) + 8 * j);
              sessions3 = [v26 sessions];
              v28 = [sessions3 objectForKey:v7];

              if (v28)
              {
                [(COMessageChannel *)self _deliverDidEndDelegateForSession:v28 notice:0 initiator:0 error:v5];
                sessions4 = [v26 sessions];
                [sessions4 removeObjectForKey:v7];
              }
            }

            v23 = [allValues2 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v23);
        }

        v6 = v35 + 1;
      }

      while (v35 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v32);
  }
}

- (void)_submitMetricsForActivationCompletionWithError:(id)error
{
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clusterLabel = [(COMessageChannel *)self clusterLabel];
  [dictionary setObject:clusterLabel forKeyedSubscript:0x2857AEE80];

  topic = [(COMessageChannel *)self topic];
  [dictionary setObject:topic forKeyedSubscript:0x2857AF0C0];

  if (errorCopy)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(errorCopy, "code")];
    [dictionary setObject:v8 forKeyedSubscript:0x2857AEF20];

    domain = [errorCopy domain];
    [dictionary setObject:domain forKeyedSubscript:0x2857AEEE0];
  }

  recorder = [(COMessageChannel *)self recorder];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__COMessageChannel__submitMetricsForActivationCompletionWithError___block_invoke;
  v13[3] = &unk_278E13278;
  v14 = dictionary;
  v11 = recorder[2];
  v12 = dictionary;
  v11(recorder, 0x2857AEE20, v13);
}

- (void)_submitMetricsForSession:(id)session withError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  topic = [(COMessageChannel *)self topic];
  [dictionary setObject:topic forKeyedSubscript:0x2857AF0C0];

  clusterLabel = [(COMessageChannel *)self clusterLabel];
  [dictionary setObject:clusterLabel forKeyedSubscript:0x2857AEE80];

  if (sessionCopy)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sessionCopy, "didUseRequest")}];
    [dictionary setObject:v11 forKeyedSubscript:0x2857AF100];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sessionCopy, "didUseResponse")}];
    [dictionary setObject:v12 forKeyedSubscript:0x2857AF120];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sessionCopy, "didUseNotice")}];
    [dictionary setObject:v13 forKeyedSubscript:0x2857AF0E0];

    v14 = fmax((clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - [sessionCopy startTime]) / 1000000000.0, 0.0);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  [dictionary setObject:v15 forKeyedSubscript:0x2857AE760];

  if (errorCopy)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(errorCopy, "code")];
    [dictionary setObject:v16 forKeyedSubscript:0x2857AEF20];

    domain = [errorCopy domain];
    [dictionary setObject:domain forKeyedSubscript:0x2857AEEE0];
  }

  recorder = [(COMessageChannel *)self recorder];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__COMessageChannel__submitMetricsForSession_withError___block_invoke;
  v21[3] = &unk_278E13278;
  v22 = dictionary;
  v19 = recorder[2];
  v20 = dictionary;
  v19(recorder, 0x2857AEE40, v21);
}

- (void)_submitMetricsForRequest:(id)request withRequestInfo:(id)info withError:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v10 = MEMORY[0x277CBEB38];
  requestCopy = request;
  dictionary = [v10 dictionary];
  clusterLabel = [(COMessageChannel *)self clusterLabel];
  [dictionary setObject:clusterLabel forKeyedSubscript:0x2857AEE80];

  topic = [(COMessageChannel *)self topic];
  [dictionary setObject:topic forKeyedSubscript:0x2857AEE60];

  v15 = objc_opt_class();
  v16 = [(COMessageChannel *)self _payloadTypeFromClass:v15];
  [dictionary setObject:v16 forKeyedSubscript:0x2857AEEA0];

  if (infoCopy)
  {
    destinationInfo = [infoCopy destinationInfo];
    [dictionary setObject:destinationInfo forKeyedSubscript:0x2857AEEC0];
  }

  else
  {
    [dictionary setObject:0x2857AEFA0 forKeyedSubscript:0x2857AEEC0];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoCopy, "messageSize")}];
  [dictionary setObject:v18 forKeyedSubscript:0x2857AEF60];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoCopy, "expectedRecipients") * objc_msgSend(infoCopy, "messageSize")}];
  [dictionary setObject:v19 forKeyedSubscript:0x2857AEF80];

  if (errorCopy)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(errorCopy, "code")];
    [dictionary setObject:v20 forKeyedSubscript:0x2857AEF20];

    domain = [errorCopy domain];
    [dictionary setObject:domain forKeyedSubscript:0x2857AEEE0];

    userInfo = [errorCopy userInfo];
    v23 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v23)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v23, "code")];
      [dictionary setObject:v24 forKeyedSubscript:0x2857AEF40];

      domain2 = [v23 domain];
      [dictionary setObject:domain2 forKeyedSubscript:0x2857AEF00];
    }
  }

  recorder = [(COMessageChannel *)self recorder];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __71__COMessageChannel__submitMetricsForRequest_withRequestInfo_withError___block_invoke;
  v29[3] = &unk_278E13278;
  v30 = dictionary;
  v27 = recorder[2];
  v28 = dictionary;
  v27(recorder, 0x2857AEE00, v29);
}

- (void)_submitMetricsForResponse:(id)response size:(unint64_t)size withError:(id)error
{
  errorCopy = error;
  v9 = MEMORY[0x277CBEB38];
  responseCopy = response;
  dictionary = [v9 dictionary];
  clusterLabel = [(COMessageChannel *)self clusterLabel];
  [dictionary setObject:clusterLabel forKeyedSubscript:0x2857AEE80];

  topic = [(COMessageChannel *)self topic];
  [dictionary setObject:topic forKeyedSubscript:0x2857AEE60];

  v14 = objc_opt_class();
  v15 = [(COMessageChannel *)self _payloadTypeFromClass:v14];
  [dictionary setObject:v15 forKeyedSubscript:0x2857AEEA0];

  [dictionary setObject:0x2857AEFC0 forKeyedSubscript:0x2857AEEC0];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  [dictionary setObject:v16 forKeyedSubscript:0x2857AEF60];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  [dictionary setObject:v17 forKeyedSubscript:0x2857AEF80];

  if (errorCopy)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(errorCopy, "code")];
    [dictionary setObject:v18 forKeyedSubscript:0x2857AEF20];

    domain = [errorCopy domain];
    [dictionary setObject:domain forKeyedSubscript:0x2857AEEE0];

    userInfo = [errorCopy userInfo];
    v21 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v21)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v21, "code")];
      [dictionary setObject:v22 forKeyedSubscript:0x2857AEF40];

      domain2 = [v21 domain];
      [dictionary setObject:domain2 forKeyedSubscript:0x2857AEF00];
    }
  }

  recorder = [(COMessageChannel *)self recorder];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__COMessageChannel__submitMetricsForResponse_size_withError___block_invoke;
  v27[3] = &unk_278E13278;
  v28 = dictionary;
  v25 = recorder[2];
  v26 = dictionary;
  v25(recorder, 0x2857AEE00, v27);
}

- (NSXPCConnection)lastConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnection);

  return WeakRetained;
}

void __44___COMessageChannel_activateWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 184) = 1;
  v2 = [*(a1 + 32) rapportTransport];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___COMessageChannel_activateWithCompletion___block_invoke_2;
  v4[3] = &unk_278E134B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 activateWithCompletion:v4];
}

void __44___COMessageChannel_activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = COLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v50 = v5;
    v51 = 2112;
    v52 = v3;
    _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%p channel activation complete with error %@", buf, 0x16u);
  }

  v30 = v3;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [*(a1 + 32) sessionProducers];
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v12 = [*(a1 + 32) sessionProducers];
        v13 = [v12 objectForKey:v11];

        v14 = [v13 delegate];
        v15 = [v13 delegateQueue];
        if (objc_opt_respondsToSelector())
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __44___COMessageChannel_activateWithCompletion___block_invoke_19;
          block[3] = &unk_278E12738;
          v16 = v14;
          v17 = *(a1 + 32);
          v40 = v16;
          v41 = v17;
          v42 = v13;
          dispatch_async(v15, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = [*(a1 + 32) sessionConsumers];
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * v22);
        v24 = [*(a1 + 32) sessionConsumers];
        v25 = [v24 objectForKey:v23];

        v26 = [v25 delegate];
        v27 = [v25 delegateQueue];
        if (objc_opt_respondsToSelector())
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __44___COMessageChannel_activateWithCompletion___block_invoke_2_23;
          v31[3] = &unk_278E12738;
          v28 = v26;
          v29 = *(a1 + 32);
          v32 = v28;
          v33 = v29;
          v34 = v25;
          dispatch_async(v27, v31);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v20);
  }
}

void __83___COMessageChannel_broadcastRequest_recipientsCallback_responseCompletionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) rapportTransport];
  v4 = [v3 activeMembers];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:*(*(&v30 + 1) + 8 * i)];
        [v2 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v22 = v5;

  v11 = *(a1 + 48);
  v12 = [v2 copy];
  (*(v11 + 16))(v11, v12, 0);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v13 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * j);
        v18 = [v17 member];
        v19 = [*(a1 + 32) rapportTransport];
        v20 = *(a1 + 40);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __83___COMessageChannel_broadcastRequest_recipientsCallback_responseCompletionHandler___block_invoke_2;
        v24[3] = &unk_278E124A8;
        v21 = *(a1 + 56);
        v24[4] = v17;
        v25 = v21;
        [v19 sendRequest:v20 to:v18 withCompletionHandler:v24];
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }
}

void __72___COMessageChannel__onqueue_sendRequest_members_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:v5];
  (*(*(a1 + 40) + 16))();
}

void __53___COMessageChannel_registerHandler_forRequestClass___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) activated])
  {
    v2 = COLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __53___COMessageChannel_registerHandler_forRequestClass___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 32) requestHandlers];
    v3 = MEMORY[0x245D5F6A0](*(a1 + 40));
    v4 = [*(a1 + 32) _payloadTypeFromClass:*(a1 + 48)];
    [v5 setObject:v3 forKey:v4];
  }
}

void __48___COMessageChannel_registerMemberFoundHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) activated])
  {
    v2 = COLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __48___COMessageChannel_registerMemberFoundHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 setFoundHandler:v4];
  }
}

void __47___COMessageChannel_registerMemberLostHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) activated])
  {
    v2 = COLogForCategory(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47___COMessageChannel_registerMemberLostHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 setLostHandler:v4];
  }
}

void __46___COMessageChannel_groupedHomeKitIdentifiers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) rapportTransport];
  v2 = [v5 groupHKIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50___COMessageChannel_addGroupedHomeKitIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rapportTransport];
  [v2 addHomeKitGroupIdentifiers:*(a1 + 40)];
}

void __53___COMessageChannel_removeGroupedHomeKitIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rapportTransport];
  [v2 removeHomeKitGroupIdentifiers:*(a1 + 40)];
}

void __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 184) == 1)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1202 userInfo:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_2;
    block[3] = &unk_278E12E70;
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v17 = v4;
    v18 = v5;
    v19 = *(a1 + 56);
    v20 = v2;
    v6 = v2;
    dispatch_async(v3, block);
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] _commandTypeForProducerWithSubTopic:*(a1 + 56)];
    objc_initWeak(&location, *(a1 + 32));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_3;
    v12[3] = &unk_278E12E98;
    objc_copyWeak(&v14, &location);
    v13 = *(a1 + 56);
    v7 = MEMORY[0x245D5F6A0](v12);
    v8 = [*(a1 + 32) requestHandlers];
    v9 = MEMORY[0x245D5F6A0](v7);
    [v8 setObject:v9 forKey:v6];

    v10 = [[COMessageSessionProducer alloc] initWithChannel:*(a1 + 32) subTopic:*(a1 + 56) delegate:*(a1 + 40) dispatchQueue:*(a1 + 48)];
    v11 = [*(a1 + 32) sessionProducers];
    [v11 setObject:v10 forKey:*(a1 + 56)];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = v7;
    if ([v11 commandType] == 2)
    {
      [WeakRetained _onqueue_handleStopCommand:v11 fromMember:v8 callback:v9];
    }

    else if ([v11 commandType])
    {
      v12 = COLogForCategory(6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_3_cold_1(WeakRetained, a1, v12);
      }
    }

    else
    {
      [WeakRetained _onqueue_handleCapableCommand:v11 fromMember:v8 callback:v9];
    }
  }
}

void __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[184] == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1203 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_2;
      block[3] = &unk_278E12E70;
      v4 = *(a1 + 48);
      v5 = *(a1 + 40);
      v6 = *(a1 + 32);
      v22 = v5;
      v23 = v6;
      v24 = *(a1 + 56);
      v25 = v3;
      v7 = v3;
      dispatch_async(v4, block);
    }
  }

  else
  {
    objc_initWeak(&location, v2);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_3;
    v18 = &unk_278E12EC0;
    objc_copyWeak(&v19, &location);
    v8 = MEMORY[0x245D5F6A0](&v15);
    v9 = [*(a1 + 32) requestHandlers];
    v10 = MEMORY[0x245D5F6A0](v8);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 setObject:v10 forKey:v12];

    v13 = [[COMessageSessionConsumer alloc] initWithChannel:*(a1 + 32) subTopic:*(a1 + 56) delegate:*(a1 + 40) dispatchQueue:*(a1 + 48)];
    v14 = [*(a1 + 32) sessionConsumers];
    [v14 setObject:v13 forKey:*(a1 + 56)];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_4;
    v13[3] = &unk_278E12390;
    v14 = v7;
    v15 = v11;
    v16 = v8;
    v17 = v9;
    dispatch_async(v12, v13);
  }
}

void __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([v2 commandType] == 1)
  {
    v3 = COLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [v2 subTopic];
      v6 = *(a1 + 48);
      v13 = 134218498;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_244328000, v3, OS_LOG_TYPE_DEFAULT, "%p Message channel received a session management request to start a session for subtopic %@ from member %@", &v13, 0x20u);
    }

    [*(a1 + 40) _onqueue_handleStartCommand:v2 withMember:*(a1 + 48) callback:*(a1 + 56)];
  }

  else
  {
    v7 = [v2 commandType];
    v8 = COLogForCategory(5);
    v9 = v8;
    if (v7 == 2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = [v2 subTopic];
        v12 = *(a1 + 48);
        v13 = 134218498;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p Message channel received a session management request to stop a session for subtopic %@ from member %@", &v13, 0x20u);
      }

      [*(a1 + 40) _onqueue_handleStopCommand:v2 fromMember:*(a1 + 48) callback:*(a1 + 56)];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_4_cold_1(a1, v2, v9);
      }
    }
  }
}

void __62___COMessageChannel__onqueue_startSessionWithProducer_member___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62___COMessageChannel__onqueue_startSessionWithProducer_member___block_invoke_2;
  v5[3] = &unk_278E13140;
  objc_copyWeak(&v8, (a1 + 64));
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  [v2 producer:v3 shouldStartSessionWithMember:v4 completionHandler:v5];

  objc_destroyWeak(&v8);
}

void __62___COMessageChannel__onqueue_startSessionWithProducer_member___block_invoke_2(id *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = COLogForCategory(6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v8)
      {
        v9 = a1[4];
        *buf = 134218498;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v9;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p Client wants to start a session with member %@ with request %@", buf, 0x20u);
      }

      v10 = [WeakRetained workQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62___COMessageChannel__onqueue_startSessionWithProducer_member___block_invoke_39;
      v12[3] = &unk_278E12E70;
      v12[4] = WeakRetained;
      v13 = a1[5];
      v14 = a1[4];
      v15 = v5;
      dispatch_async(v10, v12);
    }

    else
    {
      if (v8)
      {
        v11 = a1[4];
        *buf = 134218242;
        v17 = WeakRetained;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p Client does not want to start a session with member %@", buf, 0x16u);
      }
    }
  }
}

void __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [v9 domain];
      if ([v11 isEqualToString:@"COMessageChannelErrorDomain"])
      {
        v12 = [v9 code];

        if (v12 == -1114)
        {
          v13 = COLogForCategory(6);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = WeakRetained;
            v63 = 2112;
            v64 = v7;
            _os_log_impl(&dword_244328000, v13, OS_LOG_TYPE_DEFAULT, "%@ Member %@ does not have an active message channel for Sessions. Deferring session creation.", buf, 0x16u);
          }

          v14 = *(a1 + 32);
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = [MEMORY[0x277CBEB68] null];
          }

          v16 = v15;
          v42 = [WeakRetained sessionsInflight];
          v43 = [v7 member];
          [v42 setObject:v16 forKey:v43];

          goto LABEL_33;
        }
      }

      else
      {
      }

      v21 = [v9 domain];
      if ([v21 isEqualToString:@"COMessageChannelErrorDomain"])
      {
        v22 = [v9 code];

        if (v22 == -1101)
        {
          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1210 userInfo:0];
LABEL_19:
          [WeakRetained _onqueue_deliverDidFailToStartSessionWithMember:v7 producer:*(a1 + 40) error:v16];
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
      }

      v23 = MEMORY[0x277CCA9B8];
      v59 = *MEMORY[0x277CCA7E8];
      v60 = v9;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v16 = [v23 errorWithDomain:@"COMessageSessionErrorDomain" code:-1204 userInfo:v24];

      goto LABEL_19;
    }

    v16 = v8;
    v17 = [v16 remoteError];

    if (v17)
    {
      v18 = COLogForCategory(6);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke_cold_1(a1, v16, v18);
      }

      v19 = *(a1 + 40);
      v20 = [v16 remoteError];
      [WeakRetained _onqueue_deliverDidFailToStartSessionWithMember:v7 producer:v19 error:v20];
      goto LABEL_32;
    }

    v20 = [v16 payload];
    v25 = [v16 payloadType];
    v26 = 0;
    v53 = v25;
    if (v20)
    {
      v27 = v25;
      if (v25)
      {
        v28 = NSClassFromString(v25);
        if (v28)
        {
          v54 = 0;
          v26 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v28 fromData:v20 error:&v54];
          v29 = v54;
          if (v29)
          {
LABEL_24:
            v51 = v26;
            v30 = COLogForCategory(6);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke_cold_2();
            }

            v31 = MEMORY[0x277CCA9B8];
            v55 = *MEMORY[0x277CCA7E8];
            v56 = v29;
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v33 = [v31 errorWithDomain:@"COMessageSessionErrorDomain" code:-1208 userInfo:v32];

            v34 = v33;
            v50 = v33;
            [WeakRetained _onqueue_deliverDidFailToStartSessionWithMember:v7 producer:*(a1 + 40) error:v33];
            v49 = [COMessageSessionManagementRequest alloc];
            v35 = [WeakRetained topic];
            v36 = [*(a1 + 40) subTopic];
            v37 = [(COMessageSessionManagementRequest *)v49 initWithCommandType:2 error:v34 topic:v35 subTopic:v36];

            v38 = MEMORY[0x277CBEB98];
            v39 = [v7 member];
            v40 = [v38 setWithObject:v39];
            [WeakRetained _onqueue_sendRequest:v37 members:v40 withCompletionHandler:&__block_literal_global_9];

            v41 = v51;
            goto LABEL_31;
          }
        }

        else
        {
          v44 = MEMORY[0x277CCA9B8];
          v57 = @"COMessageSessionUnknownClassErrorKey";
          v58 = v27;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v29 = [v44 errorWithDomain:@"COMessageSessionErrorDomain" code:-1208 userInfo:v45];

          v26 = 0;
          if (v29)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v46 = [COMessageProducedSession alloc];
    [v7 member];
    v52 = v20;
    v48 = v47 = v26;
    v29 = [(COMessageProducedSession *)v46 initWithMember:v48 producer:*(a1 + 40)];

    v41 = v47;
    v20 = v52;
    [(COMessageSession *)v29 setDidUseRequest:*(a1 + 32) != 0];
    [(COMessageSession *)v29 setDidUseResponse:v41 != 0];
    [WeakRetained _onqueue_deliverSuccessfullyStartedSession:v29 withResponse:v41 withMember:v7 producer:*(a1 + 40)];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

LABEL_34:
}

void __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke_2;
  v9[3] = &unk_278E130C8;
  objc_copyWeak(&v15, (a1 + 88));
  v10 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 80);
  [v2 consumer:v3 shouldStartSessionWithMember:v4 request:v5 completionHandler:v9];

  objc_destroyWeak(&v15);
}

void __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke_3;
    block[3] = &unk_278E13530;
    v20 = a2;
    v15 = v5;
    v16 = v7;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = *(a1 + 48);
    v11 = *(&v13 + 1);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v17 = v12;
    v18 = v13;
    v19 = *(a1 + 64);
    dispatch_async(v8, block);
  }
}

void __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke_3(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v14 = 0;
      v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v14];
      v4 = v14;
      if (v4)
      {
        v5 = v4;
        v6 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CCA7E8];
        v16[0] = v4;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v8 = [v6 errorWithDomain:@"COMessageSessionErrorDomain" code:-1207 userInfo:v7];

        if (v8)
        {
          v9 = [[COMessageSessionManagementResponse alloc] initWithRemoteError:v8];
          [*(a1 + 40) _onqueue_deliverDidFailToStartSessionWithMember:*(a1 + 48) consumer:*(a1 + 56) error:v8];

LABEL_9:
          goto LABEL_10;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v12 = [COMessageSessionManagementResponse alloc];
    v13 = [*(a1 + 64) _payloadTypeFromClass:objc_opt_class()];
    v9 = [(COMessageSessionManagementResponse *)v12 initWithPayload:v3 payloadType:v13];

    [*(a1 + 40) _onqueue_deliverSuccessfullyStartedSession:*(a1 + 72) withMember:*(a1 + 48) consumer:*(a1 + 56)];
    goto LABEL_9;
  }

  v10 = [COMessageSessionManagementResponse alloc];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageSessionErrorDomain" code:-1213 userInfo:0];
  v9 = [(COMessageSessionManagementResponse *)v10 initWithRemoteError:v11];

LABEL_10:
  (*(*(a1 + 80) + 16))();
}

void __35___COMessageChannel_didFindMember___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foundHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) foundHandler];
    v3[2](v3, *(a1 + 40));
  }

  v4 = [*(a1 + 32) sessionProducers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35___COMessageChannel_didFindMember___block_invoke_2;
  v6[3] = &unk_278E13558;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __35___COMessageChannel_didLoseMember___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lostHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) lostHandler];
    v3[2](v3, *(a1 + 40));
  }
}

void __66___COMessageChannel_didReceiveRequest_from_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _payloadTypeFromClass:objc_opt_class()];
  v3 = [*(a1 + 32) requestHandlers];
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    objc_initWeak(&location, *(a1 + 32));
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66___COMessageChannel_didReceiveRequest_from_withCompletionHandler___block_invoke_2;
    v8[3] = &unk_278E13580;
    objc_copyWeak(&v10, &location);
    v9 = *(a1 + 56);
    v5 = MEMORY[0x245D5F6A0](v8);
    v6 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:*(a1 + 48)];
    (v4)[2](v4, *(a1 + 40), v6, v5);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1101 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }
}

void __66___COMessageChannel_didReceiveRequest_from_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__COMessageChannel_registerHandler_forRequestClassType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_4(&dword_244328000, v1, v2, "%p Handlers cannot be registered after activation", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __57__COMessageChannel_unregisterHandlerForRequestClassType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_4(&dword_244328000, v1, v2, "%p Handlers cannot be unregistered after activation", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __74__COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __74__COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_3_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [a2 subTopic];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "%p Message channel received a session management request without unknown type for subtopic %@", &v6, 0x16u);
}

void __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_74_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __93__COMessageChannel_receivedRequestWithPayload_payloadType_requestID_fromMember_withCallback___block_invoke_74_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_4(&dword_244328000, a2, a3, "%p Failed to encode response. Message too big", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_sendRequest:type:members:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_sendRequest:type:members:withCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_broadcastRequest:type:recipientsCallback:responseCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__COMessageChannel__activateWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__COMessageChannel__activateWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__COMessageChannel__lostConnectionToService__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_invokeResponseCallbackForInfo:snapshot:response:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_handleStartCommand:(uint8_t *)buf withMember:(os_log_t)log callback:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_244328000, log, OS_LOG_TYPE_DEBUG, "%p Message channel reaching out to delegate consumer:shouldStartSessionWithMember:request:completionHandler: for subTopic %@", buf, 0x16u);
}

void __88__COMessageChannel__deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_244328000, v0, OS_LOG_TYPE_ERROR, "%@ Producer failed to inform the service about a new session %@", v1, 0x16u);
}

void __75__COMessageChannel__deliverSuccessfullyStartedSession_withMember_consumer___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_244328000, v0, OS_LOG_TYPE_ERROR, "%p Consumer failed to inform service about a new session %@", v1, 0x16u);
}

- (void)_startSessionWithProducer:member:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_244328000, v0, OS_LOG_TYPE_DEBUG, "%p Reaching out to client delegate producer:shouldStartSessionWithMember:completionHandler: with member %@", v1, 0x16u);
}

void __61__COMessageChannel__startSessionWithProducer_member_request___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = [v6 subTopic];
  v8 = *(a1 + 48);
  v9 = [a2 remoteError];
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "%@ Producer failed to start a session with sub-topic %@ with member %@. Error %@", &v10, 0x2Au);
}

void __61__COMessageChannel__startSessionWithProducer_member_request___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __76__COMessageChannel__deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_244328000, log, OS_LOG_TYPE_ERROR, "%p Received unknown command on producer handler for subTopic %@", &v4, 0x16u);
}

void __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke_4_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [a2 subTopic];
  v7 = 134218242;
  v8 = v4;
  OUTLINED_FUNCTION_1_3();
  v9 = v6;
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "%p Message channel received a session management request without unknown type for subtopic %@", &v7, 0x16u);
}

void __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = [v6 subTopic];
  v8 = *(a1 + 48);
  v9 = [a2 remoteError];
  v12 = 138413058;
  v13 = v6;
  OUTLINED_FUNCTION_1_3();
  v14 = v7;
  v15 = v10;
  v16 = v8;
  v17 = v10;
  v18 = v11;
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "%@ Producer failed to start a session with sub-topic %@ with member %@. Error %@", &v12, 0x2Au);
}

void __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_3();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_244328000, v3, OS_LOG_TYPE_ERROR, "%@ Producer failed to unarchive the response from member %@. Error = %@", v4, 0x20u);
}

@end