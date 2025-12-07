@interface BMComputePublisherServer
- (BMComputePublisherServer)initWithQueue:(id)queue domain:(unint64_t)domain delegate:(id)delegate;
- (BMComputePublisherServer)initWithQueue:(id)queue listener:(id)listener domain:(unint64_t)domain delegate:(id)delegate computePublisherStreamName:(id)name;
- (BMComputePublisherServerDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSString)description;
- (id)subscriptionsForStream:(id)stream;
- (void)_addSubscription:(id)subscription;
- (void)_handlePublisherAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)_removeActiveSubscriptionMarkersForSubscription:(id)subscription;
- (void)_removeSubscriptionWithIdentifier:(id)identifier client:(id)client;
- (void)_removeSubscriptionWithToken:(unint64_t)token;
- (void)activateWithCompletion:(id)completion;
- (void)receiveInputForSubscription:(id)subscription streamIdentifier:(id)identifier timestamp:(id)timestamp storeEvent:(id)event;
- (void)subscribe:(id)subscribe;
- (void)unsubscribeWithIdentifier:(id)identifier;
@end

@implementation BMComputePublisherServer

- (BMComputePublisherServer)initWithQueue:(id)queue domain:(unint64_t)domain delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  if (domain)
  {
    if (domain != 1)
    {
      goto LABEL_6;
    }

    v12 = MEMORY[0x1E698E8D0];
  }

  else
  {
    v12 = MEMORY[0x1E698E8E8];
  }

  v5 = *v12;
LABEL_6:
  v13 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v5];
  if (domain == 1)
  {
    v14 = +[BMDaemon systemComputePublisherStreamName];
    goto LABEL_10;
  }

  if (!domain)
  {
    v14 = +[BMDaemon userComputePublisherStreamName];
LABEL_10:
    v6 = v14;
  }

  v15 = [(BMComputePublisherServer *)self initWithQueue:queueCopy listener:v13 domain:domain delegate:delegateCopy computePublisherStreamName:v6];

  return v15;
}

- (BMComputePublisherServer)initWithQueue:(id)queue listener:(id)listener domain:(unint64_t)domain delegate:(id)delegate computePublisherStreamName:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  listenerCopy = listener;
  delegateCopy = delegate;
  nameCopy = name;
  dispatch_assert_queue_V2(queueCopy);
  v44.receiver = self;
  v44.super_class = BMComputePublisherServer;
  v17 = [(BMComputePublisherServer *)&v44 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_queue, queue);
    v18->_domain = domain;
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subscriptions = v18->_subscriptions;
    v18->_subscriptions = v19;

    v21 = [BMComputePublisherStorage alloc];
    v22 = *MEMORY[0x1E698E948];
    v23 = [(BMComputePublisherStorage *)v21 initWithUseCase:*MEMORY[0x1E698E948] domain:1 isClient:0];
    systemStorage = v18->_systemStorage;
    v18->_systemStorage = v23;

    v25 = [[BMComputePublisherStorage alloc] initWithUseCase:v22 domain:0 isClient:0];
    userStorage = v18->_userStorage;
    v18->_userStorage = v25;

    v27 = [[BMComputeSubscriptionMarkerManager alloc] initWithUserStorage:v18->_userStorage systemStorage:v18->_systemStorage domain:v18->_domain];
    subscriptionMarkerManager = v18->_subscriptionMarkerManager;
    v18->_subscriptionMarkerManager = v27;

    storage = [(BMComputePublisherServer *)v18 storage];
    v43 = 0;
    v30 = [storage readNonWakingSubscriptions:&v43];
    v31 = v43;

    if (v30)
    {
      [(NSMutableArray *)v18->_subscriptions addObjectsFromArray:v30];
    }

    else
    {
      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherServer initWithQueue:listener:domain:delegate:computePublisherStreamName:];
      }
    }

    objc_storeWeak(&v18->_delegate, delegateCopy);
    v33 = nameCopy;
    [nameCopy UTF8String];
    v34 = xpc_event_publisher_create();
    publisher = v18->_publisher;
    v18->_publisher = v34;

    objc_initWeak(&location, v18);
    objc_copyWeak(&v41, &location);
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    objc_storeStrong(&v18->_listener, listener);
    [(NSXPCListener *)v18->_listener _setQueue:queueCopy];
    [(NSXPCListener *)v18->_listener setDelegate:v18];
    v36 = BMComputePublisherInterface();
    interface = v18->_interface;
    v18->_interface = v36;

    v38 = __biome_log_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      serviceName = [listenerCopy serviceName];
      [BMComputePublisherServer initWithQueue:nameCopy listener:serviceName domain:buf delegate:v38 computePublisherStreamName:?];
    }

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __94__BMComputePublisherServer_initWithQueue_listener_domain_delegate_computePublisherStreamName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePublisherAction:a2 token:a3 descriptor:v7];
}

void __94__BMComputePublisherServer_initWithQueue_listener_domain_delegate_computePublisherStreamName___block_invoke_2(uint64_t a1, uint64_t a2)
{
  xpc_strerror();
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __94__BMComputePublisherServer_initWithQueue_listener_domain_delegate_computePublisherStreamName___block_invoke_2_cold_1();
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v33 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [MEMORY[0x1E698E9D8] processWithXPCConnection:connectionCopy];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    executableName = [v9 executableName];
    *buf = 138412546;
    v30 = executableName;
    v31 = 1024;
    v32 = [v9 pid];
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_INFO, "BMComputePublisherServiceServer received new connection request from %@(%d)", buf, 0x12u);
  }

  v12 = [MEMORY[0x1E698E970] policyForProcess:v9 connectionFlags:0 useCase:*MEMORY[0x1E698E948]];
  allowsConnectionToComputePublisherService = [v12 allowsConnectionToComputePublisherService];
  v14 = __biome_log_for_category();
  v15 = v14;
  if (allowsConnectionToComputePublisherService)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BMComputePublisherServer listener:v9 shouldAcceptNewConnection:?];
    }

    queue2 = [(BMComputePublisherServer *)self queue];
    [connectionCopy _setQueue:queue2];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke;
    v26[3] = &unk_1E6E53538;
    objc_copyWeak(&v27, &location);
    [connectionCopy setInterruptionHandler:v26];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke_10;
    v23 = &unk_1E6E53560;
    objc_copyWeak(&v24, buf);
    objc_copyWeak(&v25, &location);
    [connectionCopy setInvalidationHandler:&v20];
    v17 = [(BMComputePublisherServer *)self interface:v20];
    [connectionCopy setExportedInterface:v17];

    [connectionCopy setExportedObject:self];
    v18 = BMComputePublishingInterface();
    [connectionCopy setRemoteObjectInterface:v18];

    [connectionCopy resume];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherServer listener:v9 shouldAcceptNewConnection:?];
    }
  }

  return allowsConnectionToComputePublisherService;
}

void __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1848EE000, v2, OS_LOG_TYPE_DEFAULT, "BMComputePublisherServiceServer connection %@ interrupted", &v4, 0xCu);
  }
}

void __63__BMComputePublisherServer_listener_shouldAcceptNewConnection___block_invoke_10(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _xpcConnection];

    if (v5)
    {
      v6 = [v4 _xpcConnection];
      v7 = xpc_connection_copy_invalidation_reason();

      if (v7)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      }

      else
      {
        v5 = @"<unknown>";
      }

      free(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v41 = v4;
    v42 = 2114;
    v43 = v5;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_INFO, "BMComputePublisherServiceServer connection %@ invalidated because %{public}@", buf, 0x16u);
  }

  v29 = v5;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [WeakRetained subscriptions];
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = [v15 connection];

        if (v16 == v4)
        {
          v17 = objc_alloc(MEMORY[0x1E698F0F8]);
          v18 = [v15 identifier];
          v19 = [v15 client];
          v20 = [v17 initWithFirst:v18 second:v19];

          [v9 addObject:v20];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v30 + 1) + 8 * j);
        v27 = [v26 first];
        v28 = [v26 second];
        [WeakRetained _removeSubscriptionWithIdentifier:v27 client:v28];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v23);
  }
}

- (void)subscribe:(id)subscribe
{
  v54 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer subscribe:];
  }

  if (subscribeCopy)
  {
    identifier = [subscribeCopy identifier];
    IsPathSafe = BMIdentifierIsPathSafe();

    if (IsPathSafe)
    {
      currentProcessValidator = [MEMORY[0x1E698E898] currentProcessValidator];
      graph = [subscribeCopy graph];
      v11 = [currentProcessValidator isExecutionAllowedForGraph:graph];

      if (v11)
      {
        currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
        if (!currentConnection)
        {
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [BMComputePublisherServer subscribe:];
          }

          goto LABEL_36;
        }

        v13 = [MEMORY[0x1E698E9D8] processWithXPCConnection:currentConnection];
        v14 = MEMORY[0x1E698E970];
        useCase = [subscribeCopy useCase];
        v16 = [v14 policyForProcess:v13 connectionFlags:0 useCase:useCase];

        postMigrationStreamIdentifiers = [subscribeCopy postMigrationStreamIdentifiers];
        v18 = [v16 allowsComputePublisherAccessToStreams:postMigrationStreamIdentifiers];

        if ((v18 & 1) == 0)
        {
          v35 = __biome_log_for_category();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [BMComputePublisherServer subscribe:subscribeCopy];
          }

          goto LABEL_35;
        }

        identifier2 = [v13 identifier];
        [subscribeCopy setClient:identifier2];

        [subscribeCopy setConnection:currentConnection];
        if (([subscribeCopy waking] & 1) == 0)
        {
          subscriptions = [(BMComputePublisherServer *)self subscriptions];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __38__BMComputePublisherServer_subscribe___block_invoke;
          v47[3] = &unk_1E6E53588;
          v21 = subscribeCopy;
          v48 = v21;
          v22 = [subscriptions indexesOfObjectsPassingTest:v47];

          if ([v22 count])
          {
            v37 = v16;
            v38 = v13;
            v23 = __biome_log_for_category();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              client = [v21 client];
              identifier3 = [v21 identifier];
              *buf = 138412546;
              v51 = client;
              v52 = 2112;
              v53 = identifier3;
              _os_log_impl(&dword_1848EE000, v23, OS_LOG_TYPE_DEFAULT, "Found matching unclaimed subscription for %@:%@", buf, 0x16u);
            }

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            subscriptions2 = [(BMComputePublisherServer *)self subscriptions];
            v36 = v22;
            v27 = [subscriptions2 objectsAtIndexes:v22];

            v28 = [v27 countByEnumeratingWithState:&v43 objects:v49 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v44;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v44 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v43 + 1) + 8 * i);
                  [v32 setConnection:currentConnection];
                  if ([v32 pendingDemand])
                  {
                    queue2 = [(BMComputePublisherServer *)self queue];
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3221225472;
                    block[2] = __38__BMComputePublisherServer_subscribe___block_invoke_16;
                    block[3] = &unk_1E6E52980;
                    v40 = v21;
                    selfCopy = self;
                    v42 = v32;
                    dispatch_async(queue2, block);
                  }

                  delegate = [(BMComputePublisherServer *)self delegate];
                  [delegate publisherServer:self didClaimSubscription:v32];
                }

                v29 = [v27 countByEnumeratingWithState:&v43 objects:v49 count:16];
              }

              while (v29);
            }

            v13 = v38;
            v16 = v37;
            goto LABEL_35;
          }
        }

        [(BMComputePublisherServer *)self _addSubscription:subscribeCopy];
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      currentConnection = __biome_log_for_category();
      if (os_log_type_enabled(currentConnection, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherServer subscribe:subscribeCopy];
      }
    }

    else
    {
      currentConnection = __biome_log_for_category();
      if (os_log_type_enabled(currentConnection, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherServer subscribe:subscribeCopy];
      }
    }
  }

  else
  {
    currentConnection = __biome_log_for_category();
    if (os_log_type_enabled(currentConnection, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherServer subscribe:];
    }
  }

LABEL_37:
}

uint64_t __38__BMComputePublisherServer_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUnclaimed])
  {
    v4 = [v3 identifier];
    v5 = [*(a1 + 32) identifier];
    if ([v4 isEqualToString:v5])
    {
      v6 = [v3 client];
      v7 = [*(a1 + 32) client];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __38__BMComputePublisherServer_subscribe___block_invoke_16(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1848EE000, v2, OS_LOG_TYPE_DEFAULT, "Notify subscriber that there was pending demand from new events while subscription was unclaimed: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) receiveInputForSubscription:*(a1 + 48) streamIdentifier:0 timestamp:0 storeEvent:0];
}

- (void)unsubscribeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer unsubscribeWithIdentifier:];
  }

  if (identifierCopy)
  {
    v7 = MEMORY[0x1E698E9D8];
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v9 = [v7 processWithXPCConnection:currentConnection];

    identifier = [v9 identifier];
    storage = [(BMComputePublisherServer *)self storage];
    [storage removeNonWakingSubscriptionWithIdentifier:identifierCopy client:identifier];

    [(BMComputePublisherServer *)self _removeSubscriptionWithIdentifier:identifierCopy client:identifier];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherServer unsubscribeWithIdentifier:];
    }
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer activateWithCompletion:?];
  }

  [(BMComputePublisherServer *)self setActivationCompletion:completionCopy];
  listener = [(BMComputePublisherServer *)self listener];
  [listener activate];

  publisher = [(BMComputePublisherServer *)self publisher];
  xpc_event_publisher_activate();
}

- (void)_handlePublisherAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v27 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  switch(action)
  {
    case 2u:
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1848EE000, v19, OS_LOG_TYPE_INFO, "BMComputePublisher initial barrier", &v23, 2u);
      }

      activationCompletion = [(BMComputePublisherServer *)self activationCompletion];

      if (activationCompletion)
      {
        activationCompletion2 = [(BMComputePublisherServer *)self activationCompletion];
        activationCompletion2[2]();

        [(BMComputePublisherServer *)self setActivationCompletion:0];
      }

      break;
    case 1u:
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&dword_1848EE000, v17, OS_LOG_TYPE_INFO, "BMComputePublisher remove publisher for token %@", &v23, 0xCu);
      }

      [(BMComputePublisherServer *)self _removeSubscriptionWithToken:token];
      break;
    case 0u:
      v10 = MEMORY[0x1865F7C40](descriptorCopy);
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
        v23 = 138412546;
        v24 = v12;
        v25 = 2080;
        v26 = v10;
        _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "BMComputePublisher add publisher for token %@ descriptor: %s", &v23, 0x16u);
      }

      v13 = [[BMComputeSubscription alloc] initWithToken:token descriptor:descriptorCopy];
      if (v13)
      {
        currentProcessValidator = [MEMORY[0x1E698E898] currentProcessValidator];
        graph = [(BMComputeSubscription *)v13 graph];
        v16 = [currentProcessValidator isExecutionAllowedForGraph:graph];

        if (v16)
        {
          [(BMComputePublisherServer *)self _addSubscription:v13];
LABEL_21:
          free(v10);

          break;
        }

        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherServer subscribe:v13];
        }
      }

      else
      {
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherServer _handlePublisherAction:token:descriptor:];
        }
      }

      goto LABEL_21;
  }
}

- (void)_addSubscription:(id)subscription
{
  v51 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!subscriptionCopy)
  {
    [BMComputePublisherServer _addSubscription:];
  }

  subscriptions = [(BMComputePublisherServer *)self subscriptions];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __45__BMComputePublisherServer__addSubscription___block_invoke;
  v43[3] = &unk_1E6E53588;
  v7 = subscriptionCopy;
  v44 = v7;
  v8 = [subscriptions indexesOfObjectsPassingTest:v43];

  if ([v8 count])
  {
    subscriptions2 = [(BMComputePublisherServer *)self subscriptions];
    v10 = [subscriptions2 objectsAtIndexes:v8];

    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v7 identifier];
      *buf = 138412546;
      v48 = identifier;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: clearing unexpected subscriptions for identifier %@ while adding new subscription. %@", buf, 0x16u);
    }

    storage = [(BMComputePublisherServer *)self storage];
    identifier2 = [v7 identifier];
    client = [v7 client];
    [storage removeBookmarkFileForSubscriptionWithIdentifier:identifier2 client:client];

    subscriptions3 = [(BMComputePublisherServer *)self subscriptions];
    [subscriptions3 removeObjectsAtIndexes:v8];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    postMigrationStreamIdentifiers = [v7 postMigrationStreamIdentifiers];
    v18 = [postMigrationStreamIdentifiers countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(postMigrationStreamIdentifiers);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          subscriptionMarkerManager = [(BMComputePublisherServer *)self subscriptionMarkerManager];
          [subscriptionMarkerManager removeSubscriptionWithStreamIdentifier:v22];
        }

        v19 = [postMigrationStreamIdentifiers countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v19);
    }
  }

  subscriptions4 = [(BMComputePublisherServer *)self subscriptions];
  [subscriptions4 addObject:v7];

  if (([v7 waking] & 1) == 0)
  {
    storage2 = [(BMComputePublisherServer *)self storage];
    [storage2 writeNonWakingSubscription:v7];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  postMigrationStreamIdentifiers2 = [v7 postMigrationStreamIdentifiers];
  v27 = [postMigrationStreamIdentifiers2 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(postMigrationStreamIdentifiers2);
        }

        v31 = *(*(&v35 + 1) + 8 * j);
        subscriptionMarkerManager2 = [(BMComputePublisherServer *)self subscriptionMarkerManager];
        [subscriptionMarkerManager2 addSubscriptionWithStreamIdentifier:v31];
      }

      v28 = [postMigrationStreamIdentifiers2 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v28);
  }

  delegate = [(BMComputePublisherServer *)self delegate];
  [delegate publisherServer:self didAddSubscription:v7];

  v34 = __biome_log_for_category();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v7;
    _os_log_impl(&dword_1848EE000, v34, OS_LOG_TYPE_DEFAULT, "_addSubscription added subscription: %@", buf, 0xCu);
  }
}

uint64_t __45__BMComputePublisherServer__addSubscription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 client];
    v7 = [*(a1 + 32) client];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeSubscriptionWithToken:(unint64_t)token
{
  v42 = *MEMORY[0x1E69E9840];
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  subscriptions = [(BMComputePublisherServer *)self subscriptions];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __57__BMComputePublisherServer__removeSubscriptionWithToken___block_invoke;
  v37[3] = &__block_descriptor_40_e38_B32__0__BMComputeSubscription_8Q16_B24l;
  v37[4] = token;
  v7 = [subscriptions indexesOfObjectsPassingTest:v37];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  subscriptions2 = [(BMComputePublisherServer *)self subscriptions];
  v9 = [subscriptions2 objectsAtIndexes:v7];

  v10 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        storage = [(BMComputePublisherServer *)self storage];
        identifier = [v14 identifier];
        client = [v14 client];
        [storage removeBookmarkFileForSubscriptionWithIdentifier:identifier client:client];

        [(BMComputePublisherServer *)self _removeActiveSubscriptionMarkersForSubscription:v14];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v11);
  }

  subscriptions3 = [(BMComputePublisherServer *)self subscriptions];
  v19 = [subscriptions3 objectsAtIndexes:v7];

  subscriptions4 = [(BMComputePublisherServer *)self subscriptions];
  [subscriptions4 removeObjectsAtIndexes:v7];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      v25 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v29 + 1) + 8 * v25);
        delegate = [(BMComputePublisherServer *)self delegate];
        [delegate publisherServer:self didRemoveSubscription:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v23);
  }

  v28 = __biome_log_for_category();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v21;
    _os_log_impl(&dword_1848EE000, v28, OS_LOG_TYPE_DEFAULT, "_removeSubscriptionWithToken removed subscriptions: %@", buf, 0xCu);
  }
}

- (void)_removeSubscriptionWithIdentifier:(id)identifier client:(id)client
{
  v46 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  clientCopy = client;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!identifierCopy)
  {
    [BMComputePublisherServer _removeSubscriptionWithIdentifier:client:];
  }

  subscriptions = [(BMComputePublisherServer *)self subscriptions];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __69__BMComputePublisherServer__removeSubscriptionWithIdentifier_client___block_invoke;
  v39[3] = &unk_1E6E535D0;
  v10 = identifierCopy;
  v40 = v10;
  v11 = clientCopy;
  v41 = v11;
  v12 = [subscriptions indexesOfObjectsPassingTest:v39];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  subscriptions2 = [(BMComputePublisherServer *)self subscriptions];
  v14 = [subscriptions2 objectsAtIndexes:v12];

  v15 = [v14 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(BMComputePublisherServer *)self _removeActiveSubscriptionMarkersForSubscription:*(*(&v35 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v16);
  }

  storage = [(BMComputePublisherServer *)self storage];
  [storage removeBookmarkFileForSubscriptionWithIdentifier:v10 client:v11];

  subscriptions3 = [(BMComputePublisherServer *)self subscriptions];
  v21 = [subscriptions3 objectsAtIndexes:v12];

  subscriptions4 = [(BMComputePublisherServer *)self subscriptions];
  [subscriptions4 removeObjectsAtIndexes:v12];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        delegate = [(BMComputePublisherServer *)self delegate];
        [delegate publisherServer:self didRemoveSubscription:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v25);
  }

  v30 = __biome_log_for_category();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v23;
    _os_log_impl(&dword_1848EE000, v30, OS_LOG_TYPE_DEFAULT, "_removeSubscriptionWithIdentifier removed subscriptions: %@", buf, 0xCu);
  }
}

uint64_t __69__BMComputePublisherServer__removeSubscriptionWithIdentifier_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 client];
    v6 = [v5 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeActiveSubscriptionMarkersForSubscription:(id)subscription
{
  v18 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!subscriptionCopy)
  {
    [BMComputePublisherServer _removeActiveSubscriptionMarkersForSubscription:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  postMigrationStreamIdentifiers = [subscriptionCopy postMigrationStreamIdentifiers];
  v7 = [postMigrationStreamIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(postMigrationStreamIdentifiers);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        subscriptionMarkerManager = [(BMComputePublisherServer *)self subscriptionMarkerManager];
        [subscriptionMarkerManager removeSubscriptionWithStreamIdentifier:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [postMigrationStreamIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)subscriptionsForStream:(id)stream
{
  streamCopy = stream;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!streamCopy)
  {
    [BMComputePublisherServer subscriptionsForStream:];
  }

  subscriptions = [(BMComputePublisherServer *)self subscriptions];
  v7 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__BMComputePublisherServer_subscriptionsForStream___block_invoke;
  v12[3] = &unk_1E6E535F8;
  v13 = streamCopy;
  v8 = streamCopy;
  v9 = [v7 predicateWithBlock:v12];
  v10 = [subscriptions filteredArrayUsingPredicate:v9];

  return v10;
}

uint64_t __51__BMComputePublisherServer_subscriptionsForStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 postMigrationStreamIdentifiers];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (void)receiveInputForSubscription:(id)subscription streamIdentifier:(id)identifier timestamp:(id)timestamp storeEvent:(id)event
{
  subscriptionCopy = subscription;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  eventCopy = event;
  queue = [(BMComputePublisherServer *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!subscriptionCopy)
  {
    [BMComputePublisherServer receiveInputForSubscription:streamIdentifier:timestamp:storeEvent:];
  }

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BMComputePublisherServer receiveInputForSubscription:streamIdentifier:timestamp:storeEvent:];
  }

  v16 = 0;
  if (identifierCopy)
  {
    if (eventCopy)
    {
      v31 = 0;
      v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:eventCopy requiringSecureCoding:1 error:&v31];
      v17 = v31;
      if (v17)
      {
        empty = v17;
        publisher = __biome_log_for_category();
        if (os_log_type_enabled(publisher, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherServer receiveInputForSubscription:streamIdentifier:timestamp:storeEvent:];
        }

LABEL_16:

        goto LABEL_20;
      }
    }
  }

  if ([subscriptionCopy waking])
  {
    empty = xpc_dictionary_create_empty();
    identifier = [subscriptionCopy identifier];
    xpc_dictionary_set_string(empty, "identifier", [identifier UTF8String]);

    if (timestampCopy)
    {
      [timestampCopy doubleValue];
      xpc_dictionary_set_double(empty, "timestamp", v21);
    }

    if (v16)
    {
      xpc_dictionary_set_data(empty, "event", [v16 bytes], objc_msgSend(v16, "length"));
      xpc_dictionary_set_string(empty, "stream", [identifierCopy UTF8String]);
    }

    publisher = [(BMComputePublisherServer *)self publisher];
    [subscriptionCopy token];
    xpc_event_publisher_fire();
    goto LABEL_16;
  }

  empty = [subscriptionCopy connection];
  if (empty)
  {
    connection = [subscriptionCopy connection];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __94__BMComputePublisherServer_receiveInputForSubscription_streamIdentifier_timestamp_storeEvent___block_invoke;
    v29 = &unk_1E6E53620;
    v23 = subscriptionCopy;
    v30 = v23;
    v24 = [connection remoteObjectProxyWithErrorHandler:&v26];

    identifier2 = [v23 identifier];
    [v24 receiveInputForIdentifier:identifier2 streamIdentifier:identifierCopy storeEvent:eventCopy];
  }

  else
  {
    [subscriptionCopy setPendingDemand:1];
  }

LABEL_20:
}

void __94__BMComputePublisherServer_receiveInputForSubscription_streamIdentifier_timestamp_storeEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __94__BMComputePublisherServer_receiveInputForSubscription_streamIdentifier_timestamp_storeEvent___block_invoke_cold_1();
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = BMStringForServiceDomain();
  listener = [(BMComputePublisherServer *)self listener];
  serviceName = [listener serviceName];
  v9 = [v3 initWithFormat:@"%@ for domain: %@, listener: %@", v5, v6, serviceName];

  return v9;
}

- (BMComputePublisherServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end