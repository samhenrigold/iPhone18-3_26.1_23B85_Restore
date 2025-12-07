@interface COMessageChannelRapportTransport
- (BOOL)_onqueue_devicePresentInGroup:(id)group;
- (COMessageChannelRapportTransport)initWithIdentifier:(id)identifier delegate:(id)delegate companionLink:(id)link dispatchQueue:(id)queue;
- (COMessageChannelRapportTransport)initWithIdentifier:(id)identifier delegate:(id)delegate dispatchQueue:(id)queue;
- (COMessageChannelRapportTransportDelegate)delegate;
- (NSArray)activeMembers;
- (id)_onqueue_activeMemberWithIDSIdentifier:(id)identifier;
- (id)_onqueue_memberFromRPCompanionLinkDevice:(id)device;
- (id)_payloadTypeFromClass:(Class)class;
- (void)_onqueue_handleDeviceFound:(id)found;
- (void)_onqueue_handleDeviceLost:(id)lost;
- (void)_onqueue_handleDeviceUpdated:(id)updated;
- (void)_onqueue_handleIncomingRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_withLock:(id)lock;
- (void)activateWithCompletion:(id)completion;
- (void)addHomeKitGroupIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)removeHomeKitGroupIdentifiers:(id)identifiers;
- (void)sendRequest:(id)request to:(id)to withCompletionHandler:(id)handler;
@end

@implementation COMessageChannelRapportTransport

- (COMessageChannelRapportTransport)initWithIdentifier:(id)identifier delegate:(id)delegate dispatchQueue:(id)queue
{
  v8 = MEMORY[0x277D44160];
  queueCopy = queue;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v12 = objc_alloc_init(v8);
  [v12 setControlFlags:2052];
  [v12 setDispatchQueue:queueCopy];
  v13 = [(COMessageChannelRapportTransport *)self initWithIdentifier:identifierCopy delegate:delegateCopy companionLink:v12 dispatchQueue:queueCopy];

  return v13;
}

- (COMessageChannelRapportTransport)initWithIdentifier:(id)identifier delegate:(id)delegate companionLink:(id)link dispatchQueue:(id)queue
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  linkCopy = link;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = COMessageChannelRapportTransport;
  v15 = [(COMessageChannelRapportTransport *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-messageChannel-request", identifierCopy];
    requestIdentifier = v16->_requestIdentifier;
    v16->_requestIdentifier = identifierCopy;

    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v16->_companionLinkClient, link);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeMemberDevices = v16->_activeMemberDevices;
    v16->_activeMemberDevices = dictionary;
  }

  return v16;
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  v3.receiver = self;
  v3.super_class = COMessageChannelRapportTransport;
  [(COMessageChannelRapportTransport *)&v3 dealloc];
}

- (NSArray)activeMembers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__COMessageChannelRapportTransport_activeMembers__block_invoke;
  v4[3] = &unk_278E122F0;
  v4[4] = self;
  v4[5] = &v5;
  [(COMessageChannelRapportTransport *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__COMessageChannelRapportTransport_activeMembers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) activeMemberDevices];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addHomeKitGroupIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__0;
  v18[4] = __Block_byref_object_dispose__0;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke;
  v10[3] = &unk_278E12318;
  v10[4] = self;
  v5 = identifiersCopy;
  v11 = v5;
  v12 = &v14;
  v13 = v18;
  [(COMessageChannelRapportTransport *)self _withLock:v10];
  if (*(v15 + 24) == 1)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22;
    block[3] = &unk_278E12340;
    block[4] = self;
    v9 = v18;
    v8 = v5;
    dispatch_async(queue, block);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
}

void __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) groupHKIdentifiers];

  if (v2)
  {
    v3 = [*(a1 + 32) groupHKIdentifiers];
    v4 = [v3 setByAddingObjectsFromSet:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] setWithSet:*(a1 + 40)];
    v8 = *(a1 + 32);
    v3 = *(v8 + 24);
    *(v8 + 24) = v7;
  }

  if (*(*(a1 + 32) + 12) == 1)
  {
    v9 = COLogForCategory(9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v19 = 134218242;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p Adding HomeKit identifiers %@ after activation", &v19, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = [*(a1 + 32) companionLinkClient];
    v13 = [v12 activeDevices];
    v14 = [v13 mutableCopy];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [*(a1 + 32) companionLinkClient];
    v18 = [v17 localDevice];

    if (v18)
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:v18];
    }
  }
}

void __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = COLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22_cold_1(a1, v2);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 homeKitIdentifier];
        LODWORD(v9) = [v9 containsObject:v10];

        if (v9)
        {
          [*(a1 + 32) _onqueue_handleDeviceFound:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)removeHomeKitGroupIdentifiers:(id)identifiers
{
  v14 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = identifiersCopy;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p Removing HomeKit identifiers %@", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke;
  v8[3] = &unk_278E12368;
  v8[4] = self;
  v9 = identifiersCopy;
  v7 = identifiersCopy;
  dispatch_async(queue, v8);
}

void __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeMemberDevices];
  v22 = [v2 copy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 40);
  v23 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v23)
  {
    v21 = *v32;
    do
    {
      v3 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v3;
        v4 = *(*(&v31 + 1) + 8 * v3);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v5 = v22;
        v6 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v28;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v28 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v27 + 1) + 8 * i);
              v11 = [v10 homeKitIdentifier];
              v12 = [v4 UUIDString];
              v13 = [v11 isEqualToString:v12];

              if (v13)
              {
                v14 = COLogForCategory(9);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = *(a1 + 32);
                  *buf = 134218242;
                  v36 = v15;
                  v37 = 2112;
                  v38 = v10;
                  _os_log_impl(&dword_244328000, v14, OS_LOG_TYPE_DEFAULT, "%p Removing member %@ from active member list", buf, 0x16u);
                }

                v16 = *(a1 + 32);
                v17 = [v16 activeMemberDevices];
                v18 = [v17 objectForKey:v10];
                [v16 _onqueue_handleDeviceLost:v18];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v7);
        }

        v3 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v23);
  }

  v19 = *(a1 + 32);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke_23;
  v25[3] = &unk_278E12368;
  v25[4] = v19;
  v26 = *(a1 + 40);
  [v19 _withLock:v25];
}

void __66__COMessageChannelRapportTransport_removeHomeKitGroupIdentifiers___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) groupHKIdentifiers];

  if (v2)
  {
    v3 = [*(a1 + 32) groupHKIdentifiers];
    v4 = [v3 mutableCopy];

    [v4 minusSet:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }
}

- (void)activateWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(COMessageChannelRapportTransport *)self requestIdentifier];
    *buf = 134218242;
    selfCopy = self;
    v31 = 2112;
    v32 = requestIdentifier;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p Going to register handler for %@", buf, 0x16u);
  }

  companionLinkClient = self->_companionLinkClient;
  requestIdentifier2 = [(COMessageChannelRapportTransport *)self requestIdentifier];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke;
  v26[3] = &unk_278E123B8;
  objc_copyWeak(&v27, &location);
  [(RPCompanionLinkClient *)companionLinkClient registerRequestID:requestIdentifier2 options:0 handler:v26];

  v9 = self->_companionLinkClient;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3;
  v24[3] = &unk_278E123E0;
  objc_copyWeak(&v25, &location);
  [(RPCompanionLinkClient *)v9 setDeviceChangedHandler:v24];
  v10 = self->_companionLinkClient;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_27;
  v22[3] = &unk_278E12408;
  objc_copyWeak(&v23, &location);
  [(RPCompanionLinkClient *)v10 setLocalDeviceUpdatedHandler:v22];
  v11 = self->_companionLinkClient;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_30;
  v20[3] = &unk_278E12408;
  objc_copyWeak(&v21, &location);
  [(RPCompanionLinkClient *)v11 setDeviceFoundHandler:v20];
  v12 = self->_companionLinkClient;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_32;
  v18[3] = &unk_278E12408;
  objc_copyWeak(&v19, &location);
  [(RPCompanionLinkClient *)v12 setDeviceLostHandler:v18];
  v13 = self->_companionLinkClient;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_34;
  v15[3] = &unk_278E12458;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [(RPCompanionLinkClient *)v13 activateWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2;
    v13[3] = &unk_278E12390;
    v13[4] = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    dispatch_async(v12, v13);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device changed %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_25;
    v7[3] = &unk_278E12368;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_27(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p local device updated %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_28;
    v7[3] = &unk_278E12368;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_30(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device found %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_31;
    v7[3] = &unk_278E12368;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_32(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = COLogForCategory(9);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v10 = WeakRetained;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device lost %@", buf, 0x16u);
    }

    v6 = WeakRetained[7];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_33;
    v7[3] = &unk_278E12368;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_2_34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    *(WeakRetained + 12) = 1;
    v5 = *(WeakRetained + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3_35;
    block[3] = &unk_278E12430;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }
}

void __59__COMessageChannelRapportTransport_activateWithCompletion___block_invoke_3_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 companionLinkClient];
  v2 = [v3 localDevice];
  [v1 _onqueue_handleDeviceFound:v2];
}

- (void)sendRequest:(id)request to:(id)to withCompletionHandler:(id)handler
{
  v32[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  toCopy = to;
  handlerCopy = handler;
  activeMemberDevices = [(COMessageChannelRapportTransport *)self activeMemberDevices];
  v12 = [activeMemberDevices objectForKey:toCopy];

  if (v12)
  {
    v31[0] = @"data";
    v13 = [(COMessageChannelRapportTransport *)self _serializedDataForRequest:requestCopy];
    v32[0] = v13;
    v31[1] = @"className";
    v14 = [(COMessageChannelRapportTransport *)self _payloadTypeFromClass:objc_opt_class()];
    v32[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    requestIdentifier = [(COMessageChannelRapportTransport *)self requestIdentifier];
    v17 = COLogForCategory(9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = self;
      v27 = 2112;
      v28 = requestIdentifier;
      v29 = 2112;
      v30 = toCopy;
      _os_log_impl(&dword_244328000, v17, OS_LOG_TYPE_DEFAULT, "%p sending message %@ to member %@", buf, 0x20u);
    }

    companionLinkClient = [(COMessageChannelRapportTransport *)self companionLinkClient];
    effectiveIdentifier = [v12 effectiveIdentifier];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__COMessageChannelRapportTransport_sendRequest_to_withCompletionHandler___block_invoke;
    v22[3] = &unk_278E12480;
    v22[4] = self;
    v23 = requestIdentifier;
    v24 = handlerCopy;
    v20 = requestIdentifier;
    [companionLinkClient sendRequestID:v20 request:v15 destinationID:effectiveIdentifier options:0 responseHandler:v22];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1111 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v21);
  }
}

void __73__COMessageChannelRapportTransport_sendRequest_to_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [a3 objectForKey:*MEMORY[0x277D442F8]];
  v10 = [v9 unsignedIntegerValue];

  v11 = COLogForCategory(9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = a1[5];
    *buf = 134218754;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    v26 = v10;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p received callback for request %@. XID = 0x%llX. Error = %{public}@", buf, 0x2Au);
  }

  if (v8)
  {
    v19 = *MEMORY[0x277CCA7E8];
    v20 = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1204 userInfo:v14];
    (*(a1[6] + 16))();
  }

  else if (v7)
  {
    v16 = [v7 objectForKey:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v7 objectForKey:@"className"];
      v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:NSClassFromString(v17) fromData:v16 error:0];
    }

    else
    {
      v18 = 0;
    }

    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)_onqueue_handleIncomingRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [optionsCopy objectForKey:*MEMORY[0x277D442D0]];
  if (!v11)
  {
    v11 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D442C8]];
    companionLinkClient = [(COMessageChannelRapportTransport *)self companionLinkClient];
    localDevice = [companionLinkClient localDevice];
    identifier = [localDevice identifier];

    if (![identifier isEqual:v11])
    {
      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1117 userInfo:0];
      v34 = COLogForCategory(9);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannelRapportTransport _onqueue_handleIncomingRequest:requestCopy options:v34 responseHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v33);
      goto LABEL_47;
    }

    companionLinkClient2 = [(COMessageChannelRapportTransport *)self companionLinkClient];
    localDevice2 = [companionLinkClient2 localDevice];
    [localDevice2 idsDeviceIdentifier];
    v18 = v17 = handlerCopy;

    v11 = v18;
    handlerCopy = v17;
  }

  v19 = [optionsCopy objectForKey:*MEMORY[0x277D442F8]];
  unsignedIntegerValue = [v19 unsignedIntegerValue];

  v21 = COLogForCategory(9);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy5 = self;
    v67 = 2114;
    v68 = v11;
    v69 = 2048;
    v70 = unsignedIntegerValue;
    _os_log_impl(&dword_244328000, v21, OS_LOG_TYPE_DEFAULT, "%p incoming request from IDS=%{public}@. XID = 0x%llX", buf, 0x20u);
  }

  identifier = [(COMessageChannelRapportTransport *)self _onqueue_activeMemberWithIDSIdentifier:v11];
  if (identifier)
  {
    goto LABEL_7;
  }

  groupHKIdentifiers = [(COMessageChannelRapportTransport *)self groupHKIdentifiers];
  v32 = [groupHKIdentifiers count];

  if (!v32)
  {
    companionLinkClient3 = [(COMessageChannelRapportTransport *)self companionLinkClient];
    activeDevices = [companionLinkClient3 activeDevices];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v37 = activeDevices;
    v38 = [v37 countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v38)
    {
      v39 = v38;
      v55 = requestCopy;
      v57 = unsignedIntegerValue;
      v40 = handlerCopy;
      v41 = *v62;
      while (2)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v62 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v61 + 1) + 8 * i);
          idsDeviceIdentifier = [v43 idsDeviceIdentifier];
          if ([idsDeviceIdentifier isEqualToString:v11])
          {
            identifier = [(COMessageChannelRapportTransport *)self _onqueue_memberFromRPCompanionLinkDevice:v43];
            if (identifier)
            {
              activeMemberDevices = [(COMessageChannelRapportTransport *)self activeMemberDevices];
              [activeMemberDevices setObject:v43 forKey:identifier];

              v46 = COLogForCategory(9);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                selfCopy5 = self;
                v67 = 2114;
                v68 = v11;
                _os_log_impl(&dword_244328000, v46, OS_LOG_TYPE_DEFAULT, "%p did not find an active member for IDS=%{public}@ so creating one on demand", buf, 0x16u);
              }

              delegate = [(COMessageChannelRapportTransport *)self delegate];
              handlerCopy = v40;
              if (objc_opt_respondsToSelector())
              {
                [delegate didFindMember:identifier];
              }
            }

            else
            {
              delegate = COLogForCategory(9);
              if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
              {
                [COMessageChannelRapportTransport _onqueue_handleIncomingRequest:options:responseHandler:];
              }

              handlerCopy = v40;
            }

            unsignedIntegerValue = v57;

            requestCopy = v55;
            goto LABEL_52;
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }

      identifier = 0;
      handlerCopy = v40;
      requestCopy = v55;
      unsignedIntegerValue = v57;
    }

    else
    {
      identifier = 0;
    }

LABEL_52:

LABEL_7:
    delegate2 = [(COMessageChannelRapportTransport *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_46:

      goto LABEL_47;
    }

    v56 = unsignedIntegerValue;
    v23 = [requestCopy objectForKey:@"data"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_42;
    }

    v53 = handlerCopy;
    v54 = requestCopy;
    v24 = [requestCopy objectForKey:@"className"];
    v25 = NSClassFromString(v24);
    if (v25)
    {
      v60 = 0;
      v26 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v25 fromData:v23 error:&v60];
      v27 = v60;
      if (!v27)
      {

LABEL_40:
        handlerCopy = v53;
        if (v26)
        {
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __91__COMessageChannelRapportTransport__onqueue_handleIncomingRequest_options_responseHandler___block_invoke;
          v58[3] = &unk_278E124A8;
          v58[4] = self;
          v59 = v53;
          [delegate2 didReceiveRequest:v26 from:identifier withCompletionHandler:v58];

LABEL_45:
          goto LABEL_46;
        }

LABEL_42:
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:0];
        v50 = COLogForCategory(9);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218754;
          selfCopy5 = self;
          v67 = 2114;
          v68 = 0;
          v69 = 2048;
          v70 = v56;
          v71 = 2114;
          v72 = v26;
          _os_log_error_impl(&dword_244328000, v50, OS_LOG_TYPE_ERROR, "%p failed to encode incoming request %{public}@ XID=0x%llX. error = %{public}@", buf, 0x2Au);
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);
        goto LABEL_45;
      }

      v28 = v27;
      v51 = MEMORY[0x277CCA9B8];
      v52 = v23;
      v75 = *MEMORY[0x277CCA7E8];
      v76 = v27;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v30 = [v51 errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:v29];
    }

    else
    {
      v52 = v23;
      v48 = MEMORY[0x277CCA9B8];
      v73 = @"COMessageChannelUnknownClassErrorKey";
      v74 = v24;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v30 = [v48 errorWithDomain:@"COMessageChannelErrorDomain" code:-1104 userInfo:v29];
      v28 = 0;
      v26 = 0;
    }

    if (v30)
    {
      v49 = COLogForCategory(9);
      requestCopy = v54;
      v23 = v52;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        selfCopy5 = self;
        v67 = 2114;
        v68 = v26;
        v69 = 2048;
        v70 = v56;
        v71 = 2114;
        v72 = v30;
        _os_log_error_impl(&dword_244328000, v49, OS_LOG_TYPE_ERROR, "%p failed to encode incoming request %{public}@ XID=0x%llX. error = %{public}@", buf, 0x2Au);
      }

      handlerCopy = v53;
      (v53)[2](v53, 0, 0, v30);

      goto LABEL_45;
    }

    requestCopy = v54;
    v23 = v52;
    goto LABEL_40;
  }

  identifier = COLogForCategory(9);
  if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy5 = self;
    v67 = 2048;
    v68 = unsignedIntegerValue;
    _os_log_impl(&dword_244328000, identifier, OS_LOG_TYPE_DEFAULT, "%p incoming request (XID = 0x%llX) from device not in our group, not creating one on demand", buf, 0x16u);
  }

LABEL_47:
}

void __91__COMessageChannelRapportTransport__onqueue_handleIncomingRequest_options_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) _serializeDataForResponse:v5];
      v11[0] = @"data";
      v11[1] = @"className";
      v12[0] = v8;
      v9 = [*(a1 + 32) _payloadTypeFromClass:objc_opt_class()];
      v12[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

      (*(*(a1 + 40) + 16))();
      goto LABEL_6;
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
LABEL_6:
}

- (void)_onqueue_handleDeviceFound:(id)found
{
  v15 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    selfCopy2 = self;
    v13 = 2112;
    v14 = foundCopy;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p handling device found %@", &v11, 0x16u);
  }

  if ([(COMessageChannelRapportTransport *)self _onqueue_devicePresentInGroup:foundCopy])
  {
    v6 = COLogForCategory(9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      selfCopy2 = self;
      v13 = 2112;
      v14 = foundCopy;
      _os_log_impl(&dword_244328000, v6, OS_LOG_TYPE_DEFAULT, "%p found device is in our group %@", &v11, 0x16u);
    }

    delegate = [(COMessageChannelRapportTransport *)self delegate];
    v8 = [(COMessageChannelRapportTransport *)self _onqueue_memberFromRPCompanionLinkDevice:foundCopy];
    if (v8)
    {
      activeMemberDevices = [(COMessageChannelRapportTransport *)self activeMemberDevices];
      [activeMemberDevices setObject:foundCopy forKey:v8];

      if (objc_opt_respondsToSelector())
      {
        [delegate didFindMember:v8];
      }
    }

    else
    {
      v10 = COLogForCategory(9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [COMessageChannelRapportTransport _onqueue_handleDeviceFound:];
      }
    }
  }
}

- (void)_onqueue_handleDeviceLost:(id)lost
{
  v14 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    selfCopy2 = self;
    v12 = 2112;
    v13 = lostCopy;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device lost %@", &v10, 0x16u);
  }

  if ([(COMessageChannelRapportTransport *)self _onqueue_devicePresentInGroup:lostCopy])
  {
    v6 = COLogForCategory(9);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      selfCopy2 = self;
      v12 = 2112;
      v13 = lostCopy;
      _os_log_impl(&dword_244328000, v6, OS_LOG_TYPE_DEFAULT, "%p lost device is in our group %@", &v10, 0x16u);
    }

    delegate = [(COMessageChannelRapportTransport *)self delegate];
    v8 = [(COMessageChannelRapportTransport *)self _onqueue_memberFromRPCompanionLinkDevice:lostCopy];
    activeMemberDevices = [(COMessageChannelRapportTransport *)self activeMemberDevices];
    [activeMemberDevices removeObjectForKey:v8];

    if (objc_opt_respondsToSelector())
    {
      [delegate didLoseMember:v8];
    }
  }
}

- (void)_onqueue_handleDeviceUpdated:(id)updated
{
  v27 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = COLogForCategory(9);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v25 = 2112;
    v26 = updatedCopy;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p device updated %@", buf, 0x16u);
  }

  homeKitIdentifier = [updatedCopy homeKitIdentifier];
  if (homeKitIdentifier)
  {
    groupHKIdentifiers = [(COMessageChannelRapportTransport *)self groupHKIdentifiers];
    v8 = [groupHKIdentifiers containsObject:homeKitIdentifier];

    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      activeMemberDevices = [(COMessageChannelRapportTransport *)self activeMemberDevices];
      allKeys = [activeMemberDevices allKeys];

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(allKeys);
            }

            homeKitIdentifier2 = [*(*(&v18 + 1) + 8 * v14) homeKitIdentifier];
            uUIDString = [homeKitIdentifier UUIDString];
            v17 = [homeKitIdentifier2 isEqualToString:uUIDString];

            if (v17)
            {

              goto LABEL_15;
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [(COMessageChannelRapportTransport *)self _onqueue_handleDeviceFound:updatedCopy];
    }
  }

LABEL_15:
}

- (BOOL)_onqueue_devicePresentInGroup:(id)group
{
  groupCopy = group;
  homeKitIdentifier = [groupCopy homeKitIdentifier];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__COMessageChannelRapportTransport__onqueue_devicePresentInGroup___block_invoke;
  v8[3] = &unk_278E124D0;
  v10 = &v11;
  v8[4] = self;
  v6 = homeKitIdentifier;
  v9 = v6;
  [(COMessageChannelRapportTransport *)self _withLock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __66__COMessageChannelRapportTransport__onqueue_devicePresentInGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groupHKIdentifiers];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)_onqueue_activeMemberWithIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  activeMemberDevices = [(COMessageChannelRapportTransport *)self activeMemberDevices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__COMessageChannelRapportTransport__onqueue_activeMemberWithIDSIdentifier___block_invoke;
  v9[3] = &unk_278E124F8;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [activeMemberDevices enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__COMessageChannelRapportTransport__onqueue_activeMemberWithIDSIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 IDSIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)_onqueue_memberFromRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  homeKitIdentifier = [deviceCopy homeKitIdentifier];
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (homeKitIdentifier)
    {
      uUIDString = [homeKitIdentifier UUIDString];
      [dictionary setObject:uUIDString forKey:@"accessory"];
    }

    [dictionary setObject:idsDeviceIdentifier forKey:@"IDS"];
    if (([deviceCopy flags] & 0x40) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }

    v9 = [[COClusterMember alloc] initWithType:v8 deviceMetadata:dictionary];
    [(COClusterMember *)v9 setDevice:deviceCopy];
  }

  else
  {
    v10 = COLogForCategory(9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [COMessageChannelRapportTransport _onqueue_memberFromRPCompanionLinkDevice:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
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

- (COMessageChannelRapportTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __63__COMessageChannelRapportTransport_addHomeKitGroupIdentifiers___block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = 134218242;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_244328000, a2, OS_LOG_TYPE_DEBUG, "%p checking active rapport devices %@", &v4, 0x16u);
}

- (void)_onqueue_handleIncomingRequest:(uint64_t)a1 options:(uint64_t)a2 responseHandler:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_244328000, a2, a3, "%p incoming request %{public}@ does not have an IDS identifier field", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_onqueue_memberFromRPCompanionLinkDevice:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 0;
  _os_log_error_impl(&dword_244328000, v0, OS_LOG_TYPE_ERROR, "%p failed to create a member for device. IDS identifier = %@", v1, 0x16u);
}

@end