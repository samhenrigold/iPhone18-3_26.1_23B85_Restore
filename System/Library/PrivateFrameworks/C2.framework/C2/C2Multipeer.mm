@interface C2Multipeer
- (C2Multipeer)initWithChunkDelegate:(id)delegate createListener:(BOOL)listener;
- (void)addClientConnection:(id)connection peerID:(id)d;
- (void)addServerConnection:(id)connection peerID:(id)d;
- (void)discoverChunkSignature:(id)signature forContainerIdentifier:(id)identifier chunkDataCallback:(id)callback;
@end

@implementation C2Multipeer

- (C2Multipeer)initWithChunkDelegate:(id)delegate createListener:(BOOL)listener
{
  listenerCopy = listener;
  v30 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = C2Multipeer;
  v8 = [(C2Multipeer *)&v25 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("c2.multipeer", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    if (listenerCopy)
    {
      v12 = [[C2MultipeerDiscovery alloc] initWithParent:v8];
      listener = v8->_listener;
      v8->_listener = v12;
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientConnectionByPeer = v8->_clientConnectionByPeer;
    v8->_clientConnectionByPeer = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serverConnectionByPeer = v8->_serverConnectionByPeer;
    v8->_serverConnectionByPeer = v16;

    objc_storeStrong(&v8->_chunkDelegate, delegate);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("c2.multipeer.delegateQueue", v18);
    chunkDelegateQueue = v8->_chunkDelegateQueue;
    v8->_chunkDelegateQueue = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientContextByRequestUUID = v8->_clientContextByRequestUUID;
    v8->_clientContextByRequestUUID = v21;
  }

  if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
  {
    [C2Multipeer initWithChunkDelegate:createListener:];
  }

  v23 = C2_MULTIPEER_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = delegateCopy;
    _os_log_impl(&dword_242158000, v23, OS_LOG_TYPE_DEFAULT, "[%@ initWithChunkDelegate:%@]", buf, 0x16u);
  }

  return v8;
}

uint64_t __52__C2Multipeer_initWithChunkDelegate_createListener___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

- (void)addClientConnection:(id)connection peerID:(id)d
{
  clientConnectionByPeer = self->_clientConnectionByPeer;
  connectionCopy = connection;
  [(NSMutableDictionary *)clientConnectionByPeer setObject:connectionCopy forKeyedSubscript:d];
  [connectionCopy startConnection];
}

- (void)addServerConnection:(id)connection peerID:(id)d
{
  serverConnectionByPeer = self->_serverConnectionByPeer;
  connectionCopy = connection;
  [(NSMutableDictionary *)serverConnectionByPeer setObject:connectionCopy forKeyedSubscript:d];
  [connectionCopy startConnection];
}

- (void)discoverChunkSignature:(id)signature forContainerIdentifier:(id)identifier chunkDataCallback:(id)callback
{
  v35 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = objc_alloc_init(C2MultipeerClientContext);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  osActivity = [(C2MultipeerClientContext *)v11 osActivity];
  os_activity_scope_enter(osActivity, &state);

  if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
  {
    [C2Multipeer discoverChunkSignature:forContainerIdentifier:chunkDataCallback:];
  }

  v13 = C2_MULTIPEER_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = _Block_copy(callbackCopy);
    *buf = 138413058;
    selfCopy = self;
    v29 = 2112;
    v30 = signatureCopy;
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2048;
    v34 = v15;
    _os_log_impl(&dword_242158000, v14, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p]", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10;
  block[3] = &unk_278D407A8;
  block[4] = self;
  v22 = signatureCopy;
  v23 = identifierCopy;
  v24 = v11;
  v25 = callbackCopy;
  v17 = callbackCopy;
  v18 = v11;
  v19 = identifierCopy;
  v20 = signatureCopy;
  dispatch_async(queue, block);

  os_activity_scope_leave(&state);
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10(uint64_t a1)
{
  v74[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(*(a1 + 32) + 16) touch];
  v38 = objc_alloc_init(C2MultipeerDiscoveryRequest);
  v3 = [MEMORY[0x277CCAD78] UUID];
  [(C2MultipeerDiscoveryRequest *)v38 setRequestUUID:v3];

  [(C2MultipeerDiscoveryRequest *)v38 setChunkSignature:*(a1 + 40)];
  [(C2MultipeerDiscoveryRequest *)v38 setContainerIdentifier:*(a1 + 48)];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [*(a1 + 56) setDiscoveryPeers:v4];

  objc_initWeak(&location, *(a1 + 56));
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2;
  v51[3] = &unk_278D40758;
  v51[4] = *v2;
  objc_copyWeak(&v56, &location);
  v52 = *(a1 + 40);
  v53 = *(a1 + 48);
  v55 = *(a1 + 64);
  v54 = *(a1 + 56);
  [*(a1 + 56) setChunkDataCallback:v51];
  if ([*(*(a1 + 32) + 24) count])
  {
    v50 = 0;
    v37 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v38 requiringSecureCoding:1 error:&v50];
    v5 = v50;
    v34 = v5;
    if (!v37 || v5)
    {
      if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
      {
        __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10_cold_2();
      }

      v29 = C2_MULTIPEER_LOG_INTERNAL_2;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v34;
        _os_log_impl(&dword_242158000, v29, OS_LOG_TYPE_DEFAULT, "Unable to serialize request with error %@", buf, 0xCu);
      }

      v30 = [*(a1 + 56) chunkDataCallback];

      if (!v30)
      {
        goto LABEL_30;
      }

      v25 = [*(a1 + 56) chunkDataCallback];
      v31 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA450];
      v72 = @"failed to encode request";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v33 = [v31 errorWithDomain:@"C2MultipeerErrorDomain" code:401 userInfo:v32];
      (v25)[2](v25, 0, v33);
    }

    else
    {
      v6 = *(a1 + 56);
      v7 = *(*(a1 + 32) + 40);
      v8 = [(C2MultipeerDiscoveryRequest *)v38 requestUUID];
      [v7 setObject:v6 forKeyedSubscript:v8];

      [*(a1 + 56) startTimerOnQueue:*(*(a1 + 32) + 8)];
      [*(a1 + 56) resetTimerForDiscovery];
      v49 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v9 = [*(*(a1 + 32) + 24) objectEnumerator];
      v10 = [v9 countByEnumeratingWithState:&v46 objects:v70 count:16];
      if (v10)
      {
        v36 = *v47;
        obj = v9;
        do
        {
          v11 = 0;
          do
          {
            if (*v47 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v46 + 1) + 8 * v11);
            if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
            {
              __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10_cold_1();
            }

            v13 = C2_MULTIPEER_LOG_INTERNAL_2;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 32);
              v14 = *(a1 + 40);
              v16 = *(a1 + 48);
              v17 = _Block_copy(*(a1 + 64));
              v18 = [v12 peerID];
              *buf = 138413570;
              v59 = v15;
              v60 = 2112;
              v61 = v14;
              v62 = 2112;
              v63 = v16;
              v64 = 2048;
              v65 = v17;
              v66 = 2112;
              v67 = v38;
              v68 = 2112;
              v69 = v18;
              _os_log_impl(&dword_242158000, v13, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - Sending %@ to peer %@", buf, 0x3Eu);
            }

            v19 = [*(a1 + 56) discoveryPeers];
            v20 = [v12 peerID];
            [v19 addObject:v20];

            v21 = [v12 oustandingDiscoveryRequestsByRequestUUID];
            v22 = [(C2MultipeerDiscoveryRequest *)v38 requestUUID];
            [v21 addObject:v22];

            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_42;
            v39[3] = &unk_278D40780;
            v23 = *(a1 + 40);
            v39[4] = *(a1 + 32);
            v40 = v23;
            v41 = *(a1 + 48);
            v45 = *(a1 + 64);
            v42 = v38;
            v43 = v12;
            v44 = *(a1 + 56);
            [v12 sendMessageWithData:v37 completionHandler:v39];

            ++v11;
          }

          while (v10 != v11);
          v9 = obj;
          v10 = [obj countByEnumeratingWithState:&v46 objects:v70 count:16];
        }

        while (v10);
      }

      if (![*(a1 + 56) hadFailedToDiscover])
      {
        goto LABEL_30;
      }

      v24 = *(*(a1 + 32) + 40);
      v25 = [(C2MultipeerDiscoveryRequest *)v38 requestUUID];
      [v24 setObject:0 forKeyedSubscript:v25];
    }

LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
  {
    __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_10_cold_3();
  }

  v26 = C2_MULTIPEER_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242158000, v26, OS_LOG_TYPE_DEFAULT, "No peers to ask for chunks.", buf, 2u);
  }

  v27 = [*(a1 + 56) chunkDataCallback];

  if (v27)
  {
    v34 = [*(a1 + 56) chunkDataCallback];
    v28 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277CCA450];
    v74[0] = @"no peers to ask for chunks";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v25 = [v28 errorWithDomain:@"C2MultipeerErrorDomain" code:100 userInfo:v37];
    v34[2](v34, 0, v25);
    goto LABEL_29;
  }

LABEL_31:

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
}

void __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v9 = [WeakRetained osActivity];
    os_activity_scope_enter(v9, &state);

    if ([v8 hasReplied])
    {
      if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
      {
        __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_cold_2();
      }

      v10 = C2_MULTIPEER_LOG_INTERNAL_2;
      if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = *(a1 + 64);
        v15 = v10;
        v16 = _Block_copy(v14);
        *buf = 138413570;
        v37 = v12;
        v38 = 2112;
        v39 = v11;
        v40 = 2112;
        v41 = v13;
        v42 = 2048;
        v43 = v16;
        v44 = 2112;
        v45 = v5;
        v46 = 2112;
        v47 = v6;
        _os_log_impl(&dword_242158000, v15, OS_LOG_TYPE_DEBUG, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - already replied to chunkDataCallback, ignoring chunkData(%@), error(%@)", buf, 0x3Eu);
      }
    }

    else
    {
      if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
      {
        __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_cold_1();
      }

      v24 = C2_MULTIPEER_LOG_INTERNAL_2;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        v27 = *(a1 + 48);
        v28 = _Block_copy(*(a1 + 64));
        mach_continuous_time();
        [*(a1 + 56) startTimestamp];
        TMConvertTicksToSeconds();
        *buf = 138413826;
        v37 = v26;
        v38 = 2112;
        v39 = v25;
        v40 = 2112;
        v41 = v27;
        v42 = 2048;
        v43 = v28;
        v44 = 2112;
        v45 = v5;
        v46 = 2112;
        v47 = v6;
        v48 = 2048;
        v49 = v29;
        _os_log_impl(&dword_242158000, v24, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - chunkDataCallback(%@, %@) after %.3f seconds", buf, 0x48u);
      }

      [v8 setHasReplied:1];
      [v8 stopTimer];
      v30 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_22;
      block[3] = &unk_278D40520;
      v34 = *(a1 + 64);
      v32 = v5;
      v33 = v6;
      dispatch_async(v30, block);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
    {
      __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_cold_3();
    }

    v17 = C2_MULTIPEER_LOG_INTERNAL_2;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(a1 + 64);
      v22 = v17;
      v23 = _Block_copy(v21);
      *buf = 138413570;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v20;
      v42 = 2048;
      v43 = v23;
      v44 = 2112;
      v45 = v5;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_242158000, v22, OS_LOG_TYPE_ERROR, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - blockSafeClientContext unexpctedly nil, ignoring chunkData(%@), error(%@)", buf, 0x3Eu);
    }
  }
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_3()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_16()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_19()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_24()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_33()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_39()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

void __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_42(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (C2_MULTIPEER_LOG_BLOCK_2 != -1)
    {
      __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_42_cold_1();
    }

    v4 = C2_MULTIPEER_LOG_INTERNAL_2;
    if (os_log_type_enabled(C2_MULTIPEER_LOG_INTERNAL_2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 80);
      v9 = v4;
      v10 = _Block_copy(v8);
      v11 = *(a1 + 56);
      v12 = [*(a1 + 64) peerID];
      v19 = 138413826;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      v25 = 2048;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v3;
      _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_DEFAULT, "[%@ discoverChunkSignature:%@ forContainerIdentifier:%@ chunkDataCallback:%p] - Sending %@ to peer %@ encountered error %@", &v19, 0x48u);
    }

    v13 = [*(a1 + 72) discoveryPeers];
    v14 = [*(a1 + 64) peerID];
    [v13 removeObject:v14];

    v15 = [*(a1 + 64) oustandingDiscoveryRequestsByRequestUUID];
    v16 = [*(a1 + 56) requestUUID];
    [v15 removeObject:v16];

    if ([*(a1 + 72) hadFailedToDiscover])
    {
      v17 = *(*(a1 + 32) + 40);
      v18 = [*(a1 + 56) requestUUID];
      [v17 setObject:0 forKeyedSubscript:v18];
    }
  }
}

uint64_t __79__C2Multipeer_discoverChunkSignature_forContainerIdentifier_chunkDataCallback___block_invoke_2_43()
{
  C2_MULTIPEER_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "multipeer");

  return MEMORY[0x2821F96F8]();
}

@end