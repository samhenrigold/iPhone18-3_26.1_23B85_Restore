@interface COMessagingService
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (COMessagingService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_clientLost:(id)lost;
- (void)_completeActivationForClient:(id)client;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)activateMessageChannelForTopic:(id)topic cluster:(id)cluster handlers:(id)handlers withCompletion:(id)completion;
- (void)addOn:(id)on receivedRequest:(id)request callback:(id)callback;
- (void)sendRequestWithPayload:(id)payload payloadType:(id)type requestType:(int64_t)requestType requestID:(unsigned int)d members:(id)members activityToken:(id)token;
- (void)sessionEndedForSubTopic:(id)topic;
- (void)sessionStartedForSubTopic:(id)topic withMember:(id)member produced:(BOOL)produced;
@end

@implementation COMessagingService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.messaging" entitlement:@"com.apple.private.coordination.messaging"];
  v5 = objc_alloc_init(COMessagingAddOnProvider);
  v6 = [[COMessagingService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:delegateCopy];

  return v6;
}

- (COMessagingService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v25 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = COMessagingService;
  v5 = [(COService *)&v20 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    connectedClients = v5->_connectedClients;
    v5->_connectedClients = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    requestHandlers = v5->_requestHandlers;
    v5->_requestHandlers = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    outstandingActivateCompletionHandlers = v5->_outstandingActivateCompletionHandlers;
    v5->_outstandingActivateCompletionHandlers = dictionary3;

    v12 = objc_alloc_init(_COMessagingServiceMeter);
    meter = v5->_meter;
    v5->_meter = v12;

    v14 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      limits = [(_COMessagingServiceMeter *)v5->_meter limits];
      *buf = 134218242;
      v22 = v5;
      v23 = 2112;
      v24 = limits;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p limiting %@", buf, 0x16u);
    }

    peaks = [(_COMessagingServiceMeter *)v5->_meter peaks];
    allKeys = [peaks allKeys];

    if ([allKeys count])
    {
      v18 = COCoreLogForCategory(10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v22 = v5;
        v23 = 2112;
        v24 = allKeys;
        _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p evaluating sizing for %@", buf, 0x16u);
      }
    }

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v14.receiver = self;
  v14.super_class = COMessagingService;
  connectionCopy = connection;
  [(COService *)&v14 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857D7AB8;
  v7 = [v5 interfaceWithProtocol:v6];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0, v14.receiver, v14.super_class}];
  [v7 setClasses:v10 forSelector:sel_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken_ argumentIndex:4 ofReply:0];
  [v7 setXPCType:MEMORY[0x277D864D0] forSelector:sel_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken_ argumentIndex:5 ofReply:0];
  [connectionCopy setExportedInterface:v7];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  [v7 setClasses:v11 forSelector:sel_sessionStartedForSubTopic_withMember_produced_ argumentIndex:1 ofReply:0];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  v12 = &unk_2857E65B8;

  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v12];

  [connectionCopy setRemoteObjectInterface:v13];
}

- (void)_clientLost:(id)lost
{
  v80 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  connectedClients = [(COMessagingService *)self connectedClients];
  v52 = lostCopy;
  v6 = [connectedClients objectForKey:lostCopy];

  v7 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    client = [v6 client];
    connection = [client connection];
    *buf = 134218240;
    selfCopy = self;
    v74 = 1024;
    LODWORD(v75) = [connection processIdentifier];
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p Lost client %d", buf, 0x12u);
  }

  topic = [v6 topic];
  cluster = [v6 cluster];
  group = dispatch_group_create();
  v48 = cluster;
  selfCopy2 = self;
  v11 = [(COService *)self _addOnForCluster:cluster];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [v6 sessions];
  v56 = v6;
  v57 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v57)
  {
    v54 = *v69;
    v53 = *MEMORY[0x277CFCF20];
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v69 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * i);
        sessions = [v6 sessions];
        v15 = [sessions objectForKey:v13];

        member = [v15 member];
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v53 code:-1211 userInfo:0];
        v18 = [objc_alloc(MEMORY[0x277CFD0E0]) initWithCommandType:2 error:v17 topic:topic subTopic:v13];
        v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
        if ([v15 producedSession])
        {
          [MEMORY[0x277CCACA8] _commandTypeForConsumerWithSubTopic:v13];
        }

        else
        {
          [MEMORY[0x277CCACA8] _commandTypeForProducerWithSubTopic:v13];
        }
        v20 = ;
        v21 = [[COMessagingRequest alloc] initWithRequestID:arc4random() requestType:0 payload:v19 payloadType:v20 topic:topic];
        if (v11)
        {
          dispatch_group_enter(group);
          [MEMORY[0x277CBEB98] setWithObject:member];
          v59 = v19;
          v22 = v18;
          v23 = v17;
          v25 = v24 = member;
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __34__COMessagingService__clientLost___block_invoke;
          v66[3] = &unk_278E181D0;
          v67 = group;
          [v11 sendRequest:v21 members:v25 withCompletionHandler:v66];

          member = v24;
          v17 = v23;
          v18 = v22;
          v19 = v59;
        }

        v6 = v56;
      }

      v57 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v57);
  }

  v26 = dispatch_walltime(0, 10000000000);
  dispatch_group_wait(group, v26);
  v27 = selfCopy2;
  requestHandlers = [(COMessagingService *)selfCopy2 requestHandlers];
  v29 = v48;
  v30 = [requestHandlers objectForKey:v48];
  v31 = [v30 objectForKey:topic];

  if (v31)
  {
    v58 = v11;
    v32 = [v31 mutableCopy];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v55 = v31;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v63;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v63 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v62 + 1) + 8 * j);
          v39 = [v33 objectForKeyedSubscript:v38];
          v40 = [v39 isEqual:v52];

          if (v40)
          {
            v41 = COCoreLogForCategory(10);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218498;
              selfCopy = selfCopy2;
              v74 = 2112;
              v75 = v52;
              v76 = 2112;
              v77 = v38;
              _os_log_impl(&dword_244378000, v41, OS_LOG_TYPE_DEFAULT, "%p Lost client %@ which had a request handler registered for class of type %@", buf, 0x20u);
            }

            [v32 removeObjectForKey:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v35);
    }

    v42 = [v32 count];
    v27 = selfCopy2;
    requestHandlers2 = [(COMessagingService *)selfCopy2 requestHandlers];
    v29 = v48;
    v44 = [requestHandlers2 objectForKey:v48];
    requestHandlers4 = v44;
    if (v42)
    {
      [v44 setObject:v32 forKey:topic];
    }

    else
    {
      [v44 removeObjectForKey:topic];

      requestHandlers3 = [(COMessagingService *)selfCopy2 requestHandlers];
      requestHandlers2 = [requestHandlers3 objectForKey:v48];

      if ([requestHandlers2 count])
      {
        v6 = v56;
        v11 = v58;
        v31 = v55;
        goto LABEL_32;
      }

      requestHandlers4 = [(COMessagingService *)selfCopy2 requestHandlers];
      [requestHandlers4 removeObjectForKey:v48];
    }

    v6 = v56;
    v11 = v58;
    v31 = v55;

LABEL_32:
  }

  [(COService *)v27 _releaseAssertionForCluster:v29];
  connectedClients2 = [(COMessagingService *)v27 connectedClients];
  [connectedClients2 removeObjectForKey:v52];

  v61.receiver = v27;
  v61.super_class = COMessagingService;
  [(COService *)&v61 _clientLost:v52];
}

- (void)activateMessageChannelForTopic:(id)topic cluster:(id)cluster handlers:(id)handlers withCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  clusterCopy = cluster;
  handlersCopy = handlers;
  completionCopy = completion;
  v14 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy = self;
    v25 = 2112;
    v26 = topicCopy;
    v27 = 2112;
    v28 = clusterCopy;
    v29 = 2112;
    v30 = handlersCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Activate message channel for topic %@ and cluster %@ with handlers %@", buf, 0x2Au);
  }

  currentClient = [(COService *)self currentClient];
  v16 = [[COMessagingClientInfo alloc] initWithTopic:topicCopy cluster:clusterCopy handledClasses:handlersCopy client:currentClient activateCompletionHanlder:completionCopy];
  [(COService *)self _takeAssertionForCluster:clusterCopy];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__COMessagingService_activateMessageChannelForTopic_cluster_handlers_withCompletion___block_invoke;
  v19[3] = &unk_278E181F8;
  objc_copyWeak(&v22, buf);
  v17 = clusterCopy;
  v20 = v17;
  v18 = v16;
  v21 = v18;
  [(COService *)self _addOnForCluster:v17 completion:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __85__COMessagingService_activateMessageChannelForTopic_cluster_handlers_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained _completeActivationForClient:*(a1 + 40)];
    }

    else
    {
      v6 = COCoreLogForCategory(10);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v14 = 134218242;
        v15 = v5;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Cluster %@ is currently unavailable. Channel activation will wait for cluster availability", &v14, 0x16u);
      }

      v8 = [v5 outstandingActivateCompletionHandlers];
      v9 = [v8 objectForKey:*(a1 + 32)];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [MEMORY[0x277CBEB58] set];
      }

      v12 = v11;

      [v12 addObject:*(a1 + 40)];
      v13 = [v5 outstandingActivateCompletionHandlers];
      [v13 setObject:v12 forKey:*(a1 + 32)];
    }
  }
}

- (void)_completeActivationForClient:(id)client
{
  v50 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  client = [clientCopy client];
  if (client)
  {
    completionHandler = [clientCopy completionHandler];
    [clientCopy setCompletionHandler:0];
    meter = [(COMessagingService *)self meter];
    clientBundleIdentifier = [client clientBundleIdentifier];
    topic = [clientCopy topic];
    cluster = [clientCopy cluster];
    connectedClients = [(COMessagingService *)self connectedClients];
    v42 = client;
    [connectedClients setObject:clientCopy forKey:client];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = clientCopy;
    v9 = clientCopy;
    v10 = topic;
    obj = [v9 handledClasses];
    v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    v40 = topic;
    if (v11)
    {
      v12 = v11;
      v41 = *v44;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          requestHandlers = [(COMessagingService *)self requestHandlers];
          v16 = [requestHandlers objectForKey:cluster];

          if (v16)
          {
            v17 = [v16 objectForKeyedSubscript:v10];
            dictionary = v17;
            if (v17)
            {
              v19 = [v17 objectForKeyedSubscript:v14];
              if (v19)
              {
                v29 = v19;
                v30 = COCoreLogForCategory(10);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  [(COMessagingService *)self _completeActivationForClient:v14, v30];
                }

                v31 = MEMORY[0x277CCA9B8];
                v32 = *MEMORY[0x277CFCF10];
                v47 = *MEMORY[0x277CFCF18];
                v48 = v14;
                v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
                v34 = [v31 errorWithDomain:v32 code:-1100 userInfo:v33];

                v27 = clientBundleIdentifier;
                v26 = meter;
                v28 = completionHandler;
                (*(completionHandler + 16))(completionHandler, v34, [meter sendLimitForIdentifier:clientBundleIdentifier], objc_msgSend(meter, "receiveLimitForIdentifier:", clientBundleIdentifier));

                goto LABEL_20;
              }

              requestHandlers2 = [(COMessagingService *)self requestHandlers];
              requestHandlers3 = [requestHandlers2 objectForKey:cluster];
              v22 = [requestHandlers3 objectForKey:v10];
              v23 = v22;
              v24 = v42;
              v25 = v14;
            }

            else
            {
              requestHandlers2 = [MEMORY[0x277CBEB38] dictionary];
              [requestHandlers2 setObject:v42 forKey:v14];
              requestHandlers3 = [(COMessagingService *)self requestHandlers];
              v22 = [requestHandlers3 objectForKey:cluster];
              v25 = v10;
              v23 = v22;
              v24 = requestHandlers2;
            }

            [v22 setObject:v24 forKey:v25];

            v10 = v40;
          }

          else
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            requestHandlers2 = [MEMORY[0x277CBEB38] dictionary];
            [requestHandlers2 setObject:v42 forKey:v14];
            [dictionary setObject:requestHandlers2 forKey:v10];
            requestHandlers3 = [(COMessagingService *)self requestHandlers];
            [requestHandlers3 setObject:dictionary forKey:cluster];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v27 = clientBundleIdentifier;
    v26 = meter;
    v28 = completionHandler;
    (*(completionHandler + 16))(completionHandler, 0, [meter sendLimitForIdentifier:clientBundleIdentifier], objc_msgSend(meter, "receiveLimitForIdentifier:", clientBundleIdentifier));
LABEL_20:
    clientCopy = v38;
    client = v42;
  }
}

- (void)sendRequestWithPayload:(id)payload payloadType:(id)type requestType:(int64_t)requestType requestID:(unsigned int)d members:(id)members activityToken:(id)token
{
  v10 = *&d;
  v83 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  typeCopy = type;
  membersCopy = members;
  tokenCopy = token;
  v14 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v10;
    *&buf[18] = 2048;
    *&buf[20] = requestType;
    *&buf[28] = 2112;
    *&buf[30] = typeCopy;
    v81 = 2112;
    v82 = membersCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Service got request %u of type %ld and payload type %@ directed to members %@", buf, 0x30u);
  }

  currentClient = [(COService *)self currentClient];
  connectedClients = [(COMessagingService *)self connectedClients];
  v45 = [connectedClients objectForKey:currentClient];

  cluster = [v45 cluster];
  v42 = [(COService *)self _addOnForCluster:cluster];

  connection = [currentClient connection];
  meter = [(COMessagingService *)self meter];
  clientBundleIdentifier = [currentClient clientBundleIdentifier];
  if ([meter clientIdentifier:clientBundleIdentifier canSendLength:{objc_msgSend(payloadCopy, "length")}])
  {
    if (v42)
    {
      v20 = [COMessagingRequest alloc];
      topic = [v45 topic];
      v22 = [(COMessagingRequest *)v20 initWithRequestID:v10 requestType:requestType payload:payloadCopy payloadType:typeCopy topic:topic];

      if (tokenCopy)
      {
        v23 = nw_activity_create_from_xpc_token();
        v24 = [CONetworkActivityFactory activityWithLabel:5 parentActivity:v23];

        if (!v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v24 = [CONetworkActivityFactory activityWithLabel:5 parentActivity:0];
        if (!v24)
        {
LABEL_16:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          *&buf[24] = 0;
          v71[0] = 0;
          v71[1] = v71;
          v71[2] = 0x2020000000;
          v71[3] = 0;
          v70[0] = 0;
          v70[1] = v70;
          v70[2] = 0x2020000000;
          v70[3] = [membersCopy count];
          v31 = [payloadCopy length];
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_104;
          v61[3] = &unk_278E18248;
          v65 = buf;
          v66 = v71;
          v67 = v70;
          v39 = v24;
          v62 = v39;
          requestTypeCopy = requestType;
          v69 = v31;
          v63 = typeCopy;
          v32 = currentClient;
          v64 = v32;
          v33 = MEMORY[0x245D5FF10](v61);
          objc_initWeak(&location, self);
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2;
          v53[3] = &unk_278E18298;
          v34 = v33;
          v57 = v34;
          objc_copyWeak(&v58, &location);
          v54 = meter;
          v55 = clientBundleIdentifier;
          v59 = v10;
          v35 = v32;
          v56 = v35;
          v36 = MEMORY[0x245D5FF10](v53);
          if (requestType == 1)
          {
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_113;
            v47[3] = &unk_278E182E8;
            v50 = v70;
            v49 = v34;
            objc_copyWeak(&v51, &location);
            v48 = v35;
            v52 = v10;
            [v42 broadcastRequest:v22 recipientsCallback:v47 completionHandler:{v36, v39}];

            objc_destroyWeak(&v51);
          }

          else if (!requestType)
          {
            [v42 sendRequest:v22 members:membersCopy withCompletionHandler:{v36, v39}];
          }

          objc_destroyWeak(&v58);
          objc_destroyWeak(&location);

          _Block_object_dispose(v70, 8);
          _Block_object_dispose(v71, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_21;
        }
      }

      [(COMeshRequest *)v22 setActivity:v24];
      nw_activity_activate();
      goto LABEL_16;
    }

    v28 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [COMessagingService sendRequestWithPayload:v45 payloadType:? requestType:? requestID:? members:? activityToken:?];
    }

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCEF8] code:-2001 userInfo:0];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_102;
    v72[3] = &unk_278E18220;
    v72[4] = self;
    v73 = v29;
    v74 = connection;
    v75 = v10;
    v22 = v29;
    v30 = [v74 remoteObjectProxyWithErrorHandler:v72];
    [v30 failedToSendRequestWithID:v10 withError:v22];
  }

  else
  {
    v25 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v37 = [payloadCopy length];
      v38 = [meter sendLimitForIdentifier:clientBundleIdentifier];
      *buf = 134218496;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      *&buf[22] = 2048;
      *&buf[24] = v38;
      _os_log_error_impl(&dword_244378000, v25, OS_LOG_TYPE_ERROR, "%p Service got a request of size %ld which is greater than max allowable size limit %ld", buf, 0x20u);
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1102 userInfo:0];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke;
    v76[3] = &unk_278E18220;
    v76[4] = self;
    v77 = v26;
    v78 = connection;
    v79 = v10;
    v22 = v26;
    v27 = [v78 remoteObjectProxyWithErrorHandler:v76];
    [v27 failedToSendRequestWithID:v10 withError:v22];
  }

LABEL_21:
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke(uint64_t a1)
{
  v1 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_cold_1();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_102(uint64_t a1)
{
  v1 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_cold_1();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_104(uint64_t a1, uint64_t a2)
{
  v3 = 64;
  if (!a2)
  {
    v3 = 56;
  }

  ++*(*(*(a1 + v3) + 8) + 24);
  if (*(*(*(a1 + 72) + 8) + 24) <= *(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 56) + 8) + 24) && *(a1 + 32))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    if (xdict)
    {
      xpc_dictionary_set_int64(xdict, "type", *(a1 + 80));
      xpc_dictionary_set_uint64(xdict, "size", *(a1 + 88));
      xpc_dictionary_set_string(xdict, "command", [*(a1 + 40) UTF8String]);
      v5 = [*(a1 + 48) clientBundleIdentifier];
      v6 = v5;
      if (!v5)
      {
        v2 = [MEMORY[0x277CCA8D8] mainBundle];
        v6 = [v2 bundleIdentifier];
      }

      xpc_dictionary_set_string(xdict, "client", [v6 UTF8String]);
      if (!v5)
      {
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  (*(*(a1 + 56) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained dispatchQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3;
    v14[3] = &unk_278E18270;
    v15 = v9;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v12;
    v22 = *(a1 + 72);
    v19 = v8;
    v20 = *(a1 + 48);
    v21 = v10;
    dispatch_async(v13, v14);
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 payload];
  LOBYTE(v3) = [v3 clientIdentifier:v4 canReceiveLength:{objc_msgSend(v5, "length")}];

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v7 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 56);
      v26 = [v2 payload];
      v27 = [v26 length];
      v28 = [*(a1 + 40) receiveLimitForIdentifier:*(a1 + 48)];
      v29 = *(a1 + 88);
      *buf = 134218752;
      v39 = v25;
      v40 = 2048;
      v41 = v27;
      v42 = 2048;
      *v43 = v28;
      *&v43[8] = 1024;
      *&v43[10] = v29;
      _os_log_error_impl(&dword_244378000, v7, OS_LOG_TYPE_ERROR, "%p Response message is too big (%ld > %ld) for request ID %u", buf, 0x26u);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1103 userInfo:0];
  }

  v8 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 88);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *buf = 134218754;
    v39 = v11;
    v40 = 2112;
    v41 = v9;
    v42 = 1024;
    *v43 = v10;
    *&v43[4] = 2112;
    *&v43[6] = v12;
    _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Received response %@ for request %u from node %@", buf, 0x26u);
  }

  v13 = [*(a1 + 64) memberSnapshot];
  v14 = [*(a1 + 72) connection];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111;
  v33 = &unk_278E18220;
  v34 = *(a1 + 56);
  v15 = v14;
  v35 = v15;
  v36 = *(a1 + 64);
  v37 = *(a1 + 88);
  v16 = [v15 remoteObjectProxyWithErrorHandler:&v30];
  v17 = v16;
  if (v6)
  {
    [v16 receivedResponseForRequestID:*(a1 + 88) responsePayload:0 responseType:0 responseError:v6 fromMember:{v13, v30, v31, v32, v33, v34, v35}];
  }

  else
  {
    v18 = *(a1 + 80);
    v19 = *(a1 + 80);
    if (v19)
    {
      v20 = [v19 domain];

      if (v20 == @"COMeshControllerErrorDomain" && ([*(a1 + 80) code] + 4101) <= 1)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1109 userInfo:0];

        v18 = v21;
      }
    }

    v22 = *(a1 + 88);
    v23 = [v2 payload];
    v24 = [v2 payloadType];
    [v17 receivedResponseForRequestID:v22 responsePayload:v23 responseType:v24 responseError:v18 fromMember:v13];
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111(uint64_t a1)
{
  v1 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111_cold_1();
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    (*(*(a1 + 40) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2_114;
    v7[3] = &unk_278E182C0;
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v3;
    v11 = *(a1 + 64);
    dispatch_async(v6, v7);
  }
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_2_114(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115;
  v16[3] = &unk_278E18220;
  v16[4] = *(a1 + 40);
  v3 = v2;
  v17 = v3;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v16];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 48);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) memberSnapshot];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v8);
  }

  [v4 receivedRecipientListForRequestID:*(a1 + 56) recipients:v5];
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115(uint64_t a1)
{
  v1 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115_cold_1();
  }
}

- (void)sessionStartedForSubTopic:(id)topic withMember:(id)member produced:(BOOL)produced
{
  producedCopy = produced;
  memberCopy = member;
  topicCopy = topic;
  currentClient = [(COService *)self currentClient];
  connectedClients = [(COMessagingService *)self connectedClients];
  v11 = [connectedClients objectForKey:currentClient];

  v12 = [[COMessagingSessionInfo alloc] initWithSubTopic:topicCopy member:memberCopy produced:producedCopy];
  sessions = [v11 sessions];
  [sessions setObject:v12 forKey:topicCopy];
}

- (void)sessionEndedForSubTopic:(id)topic
{
  topicCopy = topic;
  currentClient = [(COService *)self currentClient];
  connectedClients = [(COMessagingService *)self connectedClients];
  v6 = [connectedClients objectForKey:currentClient];

  if (v6)
  {
    sessions = [v6 sessions];
    [sessions removeObjectForKey:topicCopy];
  }
}

- (void)addOn:(id)on receivedRequest:(id)request callback:(id)callback
{
  onCopy = on;
  requestCopy = request;
  callbackCopy = callback;
  dispatchQueue = [(COService *)self dispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke;
  v15[3] = &unk_278E15D00;
  v16 = requestCopy;
  selfCopy = self;
  v18 = onCopy;
  v19 = callbackCopy;
  v12 = callbackCopy;
  v13 = onCopy;
  v14 = requestCopy;
  dispatch_async(dispatchQueue, v15);
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [v2 payloadType];
    *buf = 134218498;
    v56 = v4;
    v57 = 2112;
    v58 = v2;
    v59 = 2112;
    v60 = v5;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p Received a request %@ of type %@", buf, 0x20u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [*(a1 + 40) _clustersForAddOn:*(a1 + 48)];
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v7)
  {
    v8 = *v50;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        v11 = [*(a1 + 40) requestHandlers];
        v12 = [v11 objectForKey:v10];

        v13 = [v2 topic];
        v14 = [v12 objectForKey:v13];

        v15 = [v2 payloadType];
        v16 = [v14 objectForKey:v15];

        if (v16)
        {

          v26 = [v16 connection];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119;
          v45[3] = &unk_278E18310;
          v45[4] = *(a1 + 40);
          v27 = v16;
          v46 = v27;
          v28 = v2;
          v47 = v28;
          v48 = *(a1 + 56);
          v29 = [v26 remoteObjectProxyWithErrorHandler:v45];

          v30 = [*(a1 + 32) sender];
          v31 = [v30 memberSnapshot];

          objc_initWeak(buf, *(a1 + 40));
          v32 = [v28 payload];
          v33 = [v28 payloadType];
          v34 = [v28 requestID];
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_120;
          v41[3] = &unk_278E18360;
          objc_copyWeak(&v44, buf);
          v35 = v27;
          v42 = v35;
          v43 = *(a1 + 56);
          [v29 receivedRequestWithPayload:v32 payloadType:v33 requestID:v34 fromMember:v31 withCallback:v41];

          objc_destroyWeak(&v44);
          objc_destroyWeak(buf);

          goto LABEL_23;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = [*(a1 + 40) connectedClients];
  v18 = [v17 allValues];

  v19 = [v18 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v19)
  {
    v20 = *v38;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = [*(*(&v37 + 1) + 8 * v21) topic];
        v23 = [v2 topic];
        v24 = [v22 isEqualToString:v23];

        if (v24)
        {
          v25 = -1101;
          goto LABEL_22;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v53 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v25 = -1114;
LABEL_22:

  v36 = objc_alloc(MEMORY[0x277CCA9B8]);
  v35 = [v36 initWithDomain:*MEMORY[0x277CFCF10] code:v25 userInfo:0];
  (*(*(a1 + 56) + 16))();
LABEL_23:
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119_cold_1();
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CFCF10];
  v9 = *MEMORY[0x277CCA7E8];
  v10[0] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v5 errorWithDomain:v6 code:-1115 userInfo:v7];

  (*(*(a1 + 56) + 16))();
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_120(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained dispatchQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_2;
    v13[3] = &unk_278E18338;
    v13[4] = v11;
    v14 = a1[4];
    v15 = v7;
    v18 = a1[5];
    v16 = v8;
    v17 = v9;
    dispatch_async(v12, v13);
  }
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) meter];
  v3 = [*(a1 + 40) clientBundleIdentifier];
  v4 = [v2 clientIdentifier:v3 canReceiveLength:{objc_msgSend(*(a1 + 48), "length")}];

  if (v4)
  {
    v8 = objc_alloc_init(COMessagingResponse);
    [(COMessagingResponse *)v8 setPayload:*(a1 + 48)];
    [(COMessagingResponse *)v8 setPayloadType:*(a1 + 56)];
    v5 = *(*(a1 + 72) + 16);
  }

  else
  {
    v6 = *(a1 + 72);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFCF10] code:-1103 userInfo:0];
    v5 = *(v6 + 16);
    v8 = v7;
  }

  v5();
}

- (void)_addOnAdded:(id)added
{
  v38 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  [addedCopy setDelegate:self];
  v19 = addedCopy;
  v5 = [(COService *)self _clustersForAddOn:addedCopy];
  v6 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Add-on added for clusters %@", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v28 + 1) + 8 * v7);
        outstandingActivateCompletionHandlers = [(COMessagingService *)self outstandingActivateCompletionHandlers];
        v10 = [outstandingActivateCompletionHandlers objectForKey:v8];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v24 + 1) + 8 * i);
              v17 = COCoreLogForCategory(10);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                selfCopy2 = self;
                v36 = 2112;
                v37 = v8;
                _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%p Invoking clients waiting on message channel activation for cluster %@", buf, 0x16u);
              }

              [(COMessagingService *)self _completeActivationForClient:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }

        if (v11)
        {
          outstandingActivateCompletionHandlers2 = [(COMessagingService *)self outstandingActivateCompletionHandlers];
          [outstandingActivateCompletionHandlers2 removeObjectForKey:v8];
        }

        v7 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)_addOnRemoved:(id)removed
{
  v11 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  [removedCopy setDelegate:0];
  v5 = [(COService *)self _clustersForAddOn:removedCopy];

  v6 = COCoreLogForCategory(10);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p Add-on removed for clusters %@", &v7, 0x16u);
  }
}

- (BOOL)_applicableToCluster:(id)cluster
{
  configuration = [cluster configuration];
  v4 = ([configuration requiredServices] >> 3) & 1;

  return v4;
}

- (void)_completeActivationForClient:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "%p Found a client already registered for requests of type %@", &v3, 0x16u);
}

- (void)sendRequestWithPayload:(uint64_t)a1 payloadType:(void *)a2 requestType:requestID:members:activityToken:.cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 cluster];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  [*(v0 + 48) processIdentifier];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_111_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  [*(v0 + 40) processIdentifier];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void __101__COMessagingService_sendRequestWithPayload_payloadType_requestType_requestID_members_activityToken___block_invoke_3_115_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  [*(v0 + 40) processIdentifier];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void __53__COMessagingService_addOn_receivedRequest_callback___block_invoke_119_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  v1 = [*(v0 + 40) connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

@end