@interface COMessagingAddOn
- (COMessagingAddOn)init;
- (COMessagingAddOnDelegate)delegate;
- (void)_configureTimer;
- (void)_handleRequest:(id)request callback:(id)callback;
- (void)_timerFired;
- (void)_timerRequestAdded:(id)added;
- (void)_withLock:(id)lock;
- (void)broadcastRequest:(id)request recipientsCallback:(id)callback completionHandler:(id)handler;
- (void)didAddToMeshController:(id)controller;
- (void)didChangeNodesForMeshController:(id)controller;
- (void)sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)willRemoveFromMeshController:(id)controller;
@end

@implementation COMessagingAddOn

- (COMessagingAddOn)init
{
  v9.receiver = self;
  v9.super_class = COMessagingAddOn;
  v2 = [(COMeshAddOn *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    queuedIncomingRequests = v3->_queuedIncomingRequests;
    v3->_queuedIncomingRequests = array;

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    timer = v3->_timer;
    v3->_timer = v6;

    [(COMessagingAddOn *)v3 _configureTimer];
  }

  return v3;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (COMessagingAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__COMessagingAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COMessagingAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__COMessagingAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__COMessagingAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  [(COMessagingAddOn *)self _withLock:v6];
}

void __32__COMessagingAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  LOBYTE(v2) = [v2 isEqual:WeakRetained];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 32);

    objc_storeWeak(v5, v4);
  }
}

- (void)sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  membersCopy = members;
  handlerCopy = handler;
  meshController = [(COMeshAddOn *)self meshController];
  v12 = meshController;
  if (!membersCopy)
  {
    [meshController sendRequest:requestCopy withCompletionHandler:handlerCopy];

    goto LABEL_28;
  }

  nodeForMe = [meshController nodeForMe];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = membersCopy;
  obj = membersCopy;
  v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v40)
  {
    goto LABEL_26;
  }

  v14 = *v46;
  v37 = requestCopy;
  v38 = *MEMORY[0x277CFCF10];
  selfCopy = self;
  v36 = handlerCopy;
  v33 = *v46;
  v34 = nodeForMe;
  do
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v46 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v45 + 1) + 8 * i);
      memberSnapshot = [nodeForMe memberSnapshot];
      member = [memberSnapshot member];
      v19 = [member isEqualToMember:v16];

      if (v19)
      {
        v20 = nodeForMe;
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        meshController2 = [(COMeshAddOn *)self meshController];
        nodes = [meshController2 nodes];

        v24 = [nodes countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v42;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v42 != v26)
              {
                objc_enumerationMutation(nodes);
              }

              v28 = *(*(&v41 + 1) + 8 * j);
              memberSnapshot2 = [v28 memberSnapshot];
              member2 = [memberSnapshot2 member];
              v31 = [member2 isEqualToMember:v16];

              if (v31)
              {
                v20 = v28;
                goto LABEL_20;
              }
            }

            v25 = [nodes countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }

          v20 = 0;
LABEL_20:
          handlerCopy = v36;
          requestCopy = v37;
          nodeForMe = v34;
          self = selfCopy;
          v14 = v33;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
LABEL_9:
          meshController3 = [(COMeshAddOn *)self meshController];
          [meshController3 sendRequest:requestCopy toPeer:v20 withCompletionHandler:handlerCopy];
          goto LABEL_24;
        }
      }

      meshController3 = [MEMORY[0x277CCA9B8] errorWithDomain:v38 code:-1111 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, requestCopy, 0, 0, meshController3);
LABEL_24:
    }

    v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v40);
LABEL_26:

  membersCopy = v32;
LABEL_28:
}

- (void)broadcastRequest:(id)request recipientsCallback:(id)callback completionHandler:(id)handler
{
  handlerCopy = handler;
  callbackCopy = callback;
  requestCopy = request;
  meshController = [(COMeshAddOn *)self meshController];
  [meshController broadcastRequest:requestCopy includingSelf:1 recipientsCallback:callbackCopy completionHandler:handlerCopy];
}

- (void)didAddToMeshController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = COMessagingAddOn;
  [(COMeshAddOn *)&v8 didAddToMeshController:controllerCopy];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__COMessagingAddOn_didAddToMeshController___block_invoke;
  v5[3] = &unk_278E15FA8;
  objc_copyWeak(&v6, &location);
  [controllerCopy registerHandler:v5 forRequestClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__COMessagingAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleRequest:v8 callback:v5];
  }
}

- (void)willRemoveFromMeshController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy deregisterHandlerForRequestClass:objc_opt_class()];
  timer = [(COMessagingAddOn *)self timer];
  dispatch_source_set_timer(timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COMessagingAddOn *)self setTimerEnabled:0];
  v6.receiver = self;
  v6.super_class = COMessagingAddOn;
  [(COMeshAddOn *)&v6 willRemoveFromMeshController:controllerCopy];
}

- (void)didChangeNodesForMeshController:(id)controller
{
  v35 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = COMessagingAddOn;
  [(COMeshAddOn *)&v29 didChangeNodesForMeshController:controller];
  meshController = [(COMeshAddOn *)self meshController];
  nodes = [meshController nodes];

  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(COMessagingAddOn *)self queuedIncomingRequests];
  v6 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    *&v7 = 134218242;
    v20 = v7;
    v21 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        senderNode = [v11 senderNode];
        if ([nodes containsObject:senderNode])
        {
          memberSnapshot = [senderNode memberSnapshot];
          if (memberSnapshot)
          {
            v14 = COCoreLogForCategory(10);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              request = [v11 request];
              *buf = v20;
              v31 = selfCopy;
              v32 = 2112;
              v33 = request;
              _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Add-on found a snapshot for queued request %@", buf, 0x16u);
            }

            delegate = [(COMessagingAddOn *)selfCopy delegate];
            request2 = [v11 request];
            callback = [v11 callback];
            [delegate addOn:selfCopy receivedRequest:request2 callback:callback];

            [array addObject:v11];
            v9 = v21;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v8);
  }

  queuedIncomingRequests = [(COMessagingAddOn *)selfCopy queuedIncomingRequests];
  [queuedIncomingRequests removeObjectsInArray:array];
}

- (void)_handleRequest:(id)request callback:(id)callback
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  sender = [requestCopy sender];
  memberSnapshot = [sender memberSnapshot];
  if (memberSnapshot)
  {
    delegate = [(COMessagingAddOn *)self delegate];
    [(COMessagingQueuedIncomingRequest *)delegate addOn:self receivedRequest:requestCopy callback:callbackCopy];
  }

  else
  {
    delegate = [[COMessagingQueuedIncomingRequest alloc] initWithRequest:requestCopy callback:callbackCopy];

    queuedIncomingRequests = [(COMessagingAddOn *)self queuedIncomingRequests];
    [queuedIncomingRequests addObject:delegate];

    [(COMessagingAddOn *)self _timerRequestAdded:delegate];
    callbackCopy = COCoreLogForCategory(10);
    if (os_log_type_enabled(callbackCopy, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      selfCopy = self;
      v14 = 2112;
      v15 = requestCopy;
      v16 = 2112;
      v17 = sender;
      _os_log_impl(&dword_244378000, callbackCopy, OS_LOG_TYPE_DEFAULT, "%p Add-on received a request %@ from node %@ with missing snapshot. Enqueuing request", &v12, 0x20u);
    }
  }
}

- (void)_configureTimer
{
  timer = [(COMessagingAddOn *)self timer];
  dispatch_source_set_timer(timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COMessagingAddOn *)self setTimerEnabled:0];
  objc_initWeak(&location, self);
  timer2 = [(COMessagingAddOn *)self timer];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __35__COMessagingAddOn__configureTimer__block_invoke;
  v9 = &unk_278E15B10;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(timer2, &v6);

  v5 = [(COMessagingAddOn *)self timer:v6];
  dispatch_activate(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__COMessagingAddOn__configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained meshControllerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__COMessagingAddOn__configureTimer__block_invoke_2;
    block[3] = &unk_278E15AB8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)_timerFired
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 24);
  v4 = 134218240;
  selfCopy = self;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p cleanup timer reconfiguring to %llu", &v4, 0x16u);
}

void __31__COMessagingAddOn__timerFired__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remainingTimeUsingCurrentTime:*(a1 + 56)];
  if (v4 < 1)
  {
    v9 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __31__COMessagingAddOn__timerFired__block_invoke_cold_1(a1, v3, v9);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v11 = [v3 callback];
    (v11)[2](v11, 0, v10);

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
    if (v6 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(v5 + 24);
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    *(v5 + 24) = v8;
  }
}

- (void)_timerRequestAdded:(id)added
{
  if (![(COMessagingAddOn *)self isTimerEnabled])
  {
    v4 = COCoreLogForCategory(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(COMessagingAddOn *)self _timerRequestAdded:v4];
    }

    [(COMessagingAddOn *)self setTimerEnabled:1];
    timer = [(COMessagingAddOn *)self timer];
    v6 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(timer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

void __31__COMessagingAddOn__timerFired__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 request];
  v6 = 134218242;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_244378000, a3, OS_LOG_TYPE_ERROR, "%p enqueued request %@ expired before being passed to a node", &v6, 0x16u);
}

- (void)_timerRequestAdded:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 0x4072C00000000000;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "%p enabling cleanup timer for %f seconds.", &v2, 0x16u);
}

@end