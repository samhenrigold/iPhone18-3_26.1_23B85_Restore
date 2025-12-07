@interface CCRapportSyncEngine
- (BOOL)currentPlatformHasSetsSupportingSync:(id *)sync;
- (BOOL)didRemoteDeviceInitiateSyncWithMessage:(id)message beforeLocalInteraction:(id)interaction;
- (BOOL)rapportManager:(id)manager isDeviceSupported:(id)supported;
- (CCRapportSyncEngine)initWithQueue:(id)queue error:(id *)error;
- (CCRapportSyncEngine)initWithQueue:(id)queue rapportManager:(id)manager readAccess:(id)access donateServiceProvider:(id)provider localDeviceUUID:(id)d;
- (NSString)description;
- (id)buildBasePeerToPeerMessageForInteraction:(id)interaction;
- (id)buildDoneFetchingMergeableDeltasMessageForInteraction:(id)interaction;
- (id)doneFetchingMergeableDeltasRequestHandler;
- (id)fetchMergeableDeltasRequestHandler;
- (id)readSetForDiscovery:(id)discovery senderDeviceUUID:(id)d;
- (id)setDiscoveryRequestHandler;
- (id)setIdentifiersSupportingInboundSync;
- (id)setIdentifiersSupportingOutboundSync;
- (id)setUUIDsSupportingInboundSync;
- (id)setUUIDsSupportingOutboundSync;
- (id)validateInRequest:(id)request inOptions:(id)options inResponseHandler:(id)handler isInitiatingRequest:(BOOL)initiatingRequest outPlatform:(int64_t *)platform;
- (unint64_t)syncErrorCodeFromReadAccessError:(id)error;
- (unsigned)determineSyncOperationForDiscoveredSet:(id)set forInteraction:(id)interaction outFetchRequest:(id *)request;
- (unsigned)syncOperationForDiscoveredSet:(id)set withDevice:(id)device versionedMergeable:(id)mergeable readAccessError:(id)error;
- (void)_activateSyncSessionWithReason:(unsigned __int8)reason forInteractionType:(unsigned __int8)type activationHandler:(id)handler sessionCompletionHandler:(id)completionHandler;
- (void)_deactivateSession;
- (void)_failToActivateSessionWithError:(id)error activationHandler:(id)handler sessionCompletionHandler:(id)completionHandler;
- (void)activateClientWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler;
- (void)activateServerWithReason:(unsigned __int8)reason activationHandler:(id)handler;
- (void)addOmittedSetsFromSetDiscovery:(id)discovery forInteraction:(id)interaction;
- (void)continueAfterHandlingAllSetsToSyncForInteraction:(id)interaction;
- (void)continueToDiscoverSetsToSyncForInteraction:(id)interaction;
- (void)continueToHandleNextSetToSyncAtIndex:(unint64_t)index forInteraction:(id)interaction;
- (void)expireDevice:(id)device fromSet:(id)set;
- (void)handleIncomingMergeableDeltaFileTransfer:(id)transfer fromDevice:(id)device;
- (void)rapportManager:(id)manager didLoseNearbyCCRapportDevice:(id)device;
- (void)recordDiscoveredSetResources:(id)resources forInteraction:(id)interaction;
- (void)sendDoneFetchingMergeableDeltasRequest:(id)request forInteraction:(id)interaction;
- (void)sendFetchMergeableDeltasRequest:(id)request forInteraction:(id)interaction continueSync:(id)sync;
- (void)sendSetDiscoveryRequest:(id)request forInteraction:(id)interaction continueSync:(id)sync;
@end

@implementation CCRapportSyncEngine

- (CCRapportSyncEngine)initWithQueue:(id)queue error:(id *)error
{
  queueCopy = queue;
  v13 = 0;
  v6 = [MEMORY[0x1E6993A90] readDefaultLocalDeviceUUID:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [[CCRapportManager alloc] initWithQueue:queueCopy forSharedUse:0];
    v9 = [MEMORY[0x1E69939B0] defaultInstanceWithUseCase:*MEMORY[0x1E698E958]];
    self = [(CCRapportSyncEngine *)self initWithQueue:queueCopy rapportManager:v8 readAccess:v9 donateServiceProvider:0 localDeviceUUID:v6];

    selfCopy = self;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine initWithQueue:v7 error:?];
    }

    CCSetError();
    selfCopy = 0;
  }

  return selfCopy;
}

- (CCRapportSyncEngine)initWithQueue:(id)queue rapportManager:(id)manager readAccess:(id)access donateServiceProvider:(id)provider localDeviceUUID:(id)d
{
  queueCopy = queue;
  managerCopy = manager;
  accessCopy = access;
  providerCopy = provider;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = CCRapportSyncEngine;
  v17 = [(CCRapportSyncEngine *)&v22 init];
  if (v17)
  {
    currentPersonaIdentifier = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    personaIdentifier = v17->_personaIdentifier;
    v17->_personaIdentifier = currentPersonaIdentifier;

    objc_storeStrong(&v17->_queue, queue);
    objc_storeStrong(&v17->_rapportManager, manager);
    [(CCRapportManager *)v17->_rapportManager setDelegate:v17];
    objc_storeStrong(&v17->_readAcccess, access);
    objc_storeStrong(&v17->_donateServiceProvider, provider);
    objc_storeStrong(&v17->_localDeviceUUID, d);
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  siteSuffix = [(CCRapportSyncEngine *)self siteSuffix];
  v6 = siteSuffix;
  currentSession = self->_currentSession;
  if (!currentSession)
  {
    currentSession = &stru_1F55F1328;
  }

  currentSession = [v3 stringWithFormat:@"%@[%@] %@", v4, siteSuffix, currentSession];

  return currentSession;
}

- (void)activateClientWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__CCRapportSyncEngine_activateClientWithReason_activity_completionHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  reasonCopy = reason;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)activateServerWithReason:(unsigned __int8)reason activationHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CCRapportSyncEngine_activateServerWithReason_activationHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  reasonCopy = reason;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_activateSyncSessionWithReason:(unsigned __int8)reason forInteractionType:(unsigned __int8)type activationHandler:(id)handler sessionCompletionHandler:(id)completionHandler
{
  typeCopy = type;
  reasonCopy = reason;
  v53 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  currentSession = self->_currentSession;
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (currentSession)
    {
      v14 = @"Reusing";
    }

    else
    {
      v14 = @"Activating";
    }

    v15 = CCSyncReasonDescription(reasonCopy);
    v16 = CCRapportSyncInteractionTypeDescription(typeCopy);
    *buf = 138413058;
    selfCopy = self;
    v47 = 2112;
    v48 = v14;
    v49 = 2112;
    v50 = v15;
    v51 = 2112;
    v52 = v16;
    _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: %@ sync session with reason: %@ type: %@", buf, 0x2Au);
  }

  if (!currentSession)
  {
    v43 = 0;
    v17 = [(CCRapportSyncEngine *)self currentPlatformHasSetsSupportingSync:&v43];
    v18 = v43;
    if (!v17)
    {
      [(CCRapportSyncEngine *)self _failToActivateSessionWithError:v18 activationHandler:handlerCopy sessionCompletionHandler:completionHandlerCopy];

      goto LABEL_14;
    }

    v19 = [CCRapportSyncSession alloc];
    queue = self->_queue;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke;
    v41[3] = &unk_1E85C2BA8;
    objc_copyWeak(&v42, &location);
    v21 = [(CCRapportSyncSession *)v19 initWithQueue:queue interactionHandler:v41];
    v22 = self->_currentSession;
    self->_currentSession = v21;

    rapportManager = self->_rapportManager;
    setDiscoveryRequestHandler = [(CCRapportSyncEngine *)self setDiscoveryRequestHandler];
    [(CCRapportManager *)rapportManager registerRequestID:@"com.apple.biomesyncd.cascade.setDiscoveryRequest" requestHandler:setDiscoveryRequestHandler];

    v25 = self->_rapportManager;
    fetchMergeableDeltasRequestHandler = [(CCRapportSyncEngine *)self fetchMergeableDeltasRequestHandler];
    [(CCRapportManager *)v25 registerRequestID:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas" requestHandler:fetchMergeableDeltasRequestHandler];

    v27 = self->_rapportManager;
    doneFetchingMergeableDeltasRequestHandler = [(CCRapportSyncEngine *)self doneFetchingMergeableDeltasRequestHandler];
    [(CCRapportManager *)v27 registerRequestID:@"com.apple.biomesyncd.cascade.doneFetchingMergeableDeltas" requestHandler:doneFetchingMergeableDeltasRequestHandler];

    objc_destroyWeak(&v42);
  }

  v29 = self->_currentSession;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_27;
  v38[3] = &unk_1E85C2D00;
  objc_copyWeak(&v40, &location);
  v39 = completionHandlerCopy;
  [(CCRapportSyncSession *)v29 registerSessionActivationReason:reasonCopy forInteractionType:typeCopy withOptions:0 completionHandler:v38];
  if (currentSession)
  {
    if (handlerCopy)
    {
      v30 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_2;
      block[3] = &unk_1E85C2D28;
      v37 = handlerCopy;
      dispatch_async(v30, block);
    }
  }

  else
  {
    objc_initWeak(buf, self->_currentSession);
    v31 = self->_rapportManager;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_3;
    v32[3] = &unk_1E85C2D50;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(&v35, buf);
    v33 = handlerCopy;
    [(CCRapportManager *)v31 startWithCompletion:v32];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  objc_destroyWeak(&v40);
LABEL_14:
  objc_destroyWeak(&location);
}

void __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 type] == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 detailedDescription];
        v7 = 138412546;
        v8 = WeakRetained;
        v9 = 2112;
        v10 = v6;
        _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "%@: starting sync interaction: %@", &v7, 0x16u);
      }

      [WeakRetained continueToDiscoverSetsToSyncForInteraction:v3];
    }
  }
}

void __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _deactivateSession];
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v5);
    }
  }
}

void __116__CCRapportSyncEngine__activateSyncSessionWithReason_forInteractionType_activationHandler_sessionCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: cancelling sync session (%@) after activation error: %@", &v8, 0x20u);
    }

    [v5 cancel:v3];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)_failToActivateSessionWithError:(id)error activationHandler:(id)handler sessionCompletionHandler:(id)completionHandler
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CCRapportSyncEngine _failToActivateSessionWithError:activationHandler:sessionCompletionHandler:];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, errorCopy);
  }

  if (completionHandlerCopy)
  {
    if (errorCopy)
    {
      v12[0] = errorCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      completionHandlerCopy[2](completionHandlerCopy, MEMORY[0x1E695E0F0], v11);
    }

    else
    {
      completionHandlerCopy[2](completionHandlerCopy, MEMORY[0x1E695E0F0], 0);
    }
  }
}

- (void)_deactivateSession
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentSession)
  {
    [(CCRapportManager *)self->_rapportManager stop];
    currentSession = self->_currentSession;
    self->_currentSession = 0;
  }
}

- (void)continueToDiscoverSetsToSyncForInteraction:(id)interaction
{
  v17 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "%@: discovering sets to sync", buf, 0xCu);
  }

  setUUIDsSupportingInboundSync = [(CCRapportSyncEngine *)self setUUIDsSupportingInboundSync];
  v7 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:interactionCopy];
  options = [interactionCopy options];
  repeatDiscoveryAfterSet = [interactionCopy repeatDiscoveryAfterSet];
  v10 = [CCSetDiscoveryRequest setDiscoveryRequestFromPeerToPeerMessage:v7 setUUIDsToDiscover:setUUIDsSupportingInboundSync requestOptions:options startAfterSet:repeatDiscoveryAfterSet sizeThreshold:&unk_1F55F5A88];

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__CCRapportSyncEngine_continueToDiscoverSetsToSyncForInteraction___block_invoke;
  v12[3] = &unk_1E85C2B58;
  objc_copyWeak(&v14, buf);
  v11 = interactionCopy;
  v13 = v11;
  [(CCRapportSyncEngine *)self sendSetDiscoveryRequest:v10 forInteraction:v11 continueSync:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __66__CCRapportSyncEngine_continueToDiscoverSetsToSyncForInteraction___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) setsToSync];
    v4 = [v3 count];

    if (v4)
    {
      [WeakRetained continueToHandleNextSetToSyncAtIndex:0 forInteraction:*(a1 + 32)];
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = WeakRetained;
        _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "%@: zero discovered sets to sync", &v6, 0xCu);
      }

      [WeakRetained continueAfterHandlingAllSetsToSyncForInteraction:*(a1 + 32)];
    }
  }
}

- (void)continueToHandleNextSetToSyncAtIndex:(unint64_t)index forInteraction:(id)interaction
{
  v33[2] = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  dispatch_assert_queue_V2(self->_queue);
  setsToSync = [interactionCopy setsToSync];
  v8 = [setsToSync objectAtIndexedSubscript:index];

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    setsToSync2 = [interactionCopy setsToSync];
    *buf = 138413058;
    selfCopy2 = self;
    v31 = 1024;
    *v32 = index + 1;
    *&v32[4] = 1024;
    *&v32[6] = [setsToSync2 count];
    LOWORD(v33[0]) = 2112;
    *(v33 + 2) = v8;
    _os_log_impl(&dword_1DA444000, v9, OS_LOG_TYPE_DEFAULT, "%@: handling set (%u / %u): %@", buf, 0x22u);
  }

  v28 = 0;
  v11 = [(CCRapportSyncEngine *)self determineSyncOperationForDiscoveredSet:v8 forInteraction:interactionCopy outFetchRequest:&v28];
  v12 = v28;
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v11 - 1 > 2)
    {
      v14 = @"FullFetch";
    }

    else
    {
      v14 = off_1E85C2F20[(v11 - 1)];
    }

    *buf = 138412802;
    selfCopy2 = self;
    v31 = 2112;
    *v32 = v14;
    *&v32[8] = 2112;
    v33[0] = v8;
    _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: resolved sync operation (%@) for set: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __75__CCRapportSyncEngine_continueToHandleNextSetToSyncAtIndex_forInteraction___block_invoke;
  v25 = &unk_1E85C2D78;
  objc_copyWeak(v27, buf);
  v27[1] = index;
  v15 = interactionCopy;
  v26 = v15;
  v16 = MEMORY[0x1DA74EA40](&v22);
  if (v11 >= 2)
  {
    if (v11 == 2)
    {
      v17 = [CCSetVersionedMergeable writeOnlyInstanceForSet:v8 donateServiceProvider:self->_donateServiceProvider, v22, v23, v24, v25];
      device = [v15 device];
      cascadeDeviceUUID = [device cascadeDeviceUUID];
      deviceSite = [v8 deviceSite];
      relayedDeviceSites = [v8 relayedDeviceSites];
      [v17 attestInSyncPeerDeviceUUID:cascadeDeviceUUID deviceSite:deviceSite relayedDeviceSites:relayedDeviceSites];
    }

    v16[2](v16);
  }

  else
  {
    [(CCRapportSyncEngine *)self sendFetchMergeableDeltasRequest:v12 forInteraction:v15 continueSync:v16, v22, v23, v24, v25];
  }

  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
}

void __75__CCRapportSyncEngine_continueToHandleNextSetToSyncAtIndex_forInteraction___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48) + 1;
    v4 = [*(a1 + 32) setsToSync];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      v6 = __biome_log_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) setsToSync];
        v8 = 138412546;
        v9 = WeakRetained;
        v10 = 2048;
        v11 = [v7 count];
        _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: all sync operations for %lu set(s) completed", &v8, 0x16u);
      }

      [WeakRetained continueAfterHandlingAllSetsToSyncForInteraction:*(a1 + 32)];
    }

    else
    {
      [WeakRetained continueToHandleNextSetToSyncAtIndex:v3 forInteraction:*(a1 + 32)];
    }
  }
}

- (void)continueAfterHandlingAllSetsToSyncForInteraction:(id)interaction
{
  v15 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  dispatch_assert_queue_V2(self->_queue);
  repeatDiscoveryAfterSet = [interactionCopy repeatDiscoveryAfterSet];

  if (repeatDiscoveryAfterSet)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "%@: repeating set discovery to sync additional sets", &v11, 0xCu);
    }

    [(CCRapportSyncEngine *)self continueToDiscoverSetsToSyncForInteraction:interactionCopy];
  }

  else
  {
    v7 = [(CCRapportSyncEngine *)self buildDoneFetchingMergeableDeltasMessageForInteraction:interactionCopy];
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      isReciprocalRequest = [v7 isReciprocalRequest];
      v10 = &stru_1F55F1328;
      if (isReciprocalRequest)
      {
        v10 = @"NOT ";
      }

      v11 = 138412546;
      selfCopy2 = self;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1DA444000, v8, OS_LOG_TYPE_DEFAULT, "%@: done syncing sets and %@expecting reciprocation", &v11, 0x16u);
    }

    [(CCRapportSyncEngine *)self sendDoneFetchingMergeableDeltasRequest:v7 forInteraction:interactionCopy];
  }
}

- (void)sendSetDiscoveryRequest:(id)request forInteraction:(id)interaction continueSync:(id)sync
{
  requestCopy = request;
  interactionCopy = interaction;
  syncCopy = sync;
  dispatch_assert_queue_V2(self->_queue);
  objc_initWeak(&location, self);
  device = [interactionCopy device];
  [interactionCopy setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.setDiscoveryRequest"];
  startAfterSet = [requestCopy startAfterSet];

  if (!startAfterSet)
  {
    [requestCopy walltime];
    [interactionCopy setInitiatingRequestSentWalltime:?];
  }

  dictionaryRepresentation = [requestCopy dictionaryRepresentation];
  rapportManager = self->_rapportManager;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__CCRapportSyncEngine_sendSetDiscoveryRequest_forInteraction_continueSync___block_invoke;
  v19[3] = &unk_1E85C2DA0;
  objc_copyWeak(&v25, &location);
  v15 = interactionCopy;
  v20 = v15;
  v16 = device;
  v21 = v16;
  v17 = requestCopy;
  v22 = v17;
  v18 = syncCopy;
  selfCopy = self;
  v24 = v18;
  [(CCRapportManager *)rapportManager sendRequest:@"com.apple.biomesyncd.cascade.setDiscoveryRequest" request:dictionaryRepresentation toDevice:v16 responseHandler:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __75__CCRapportSyncEngine_sendSetDiscoveryRequest_forInteraction_continueSync___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [*(a1 + 32) cancelRapportRequestTimeout];
  if ([*(a1 + 32) isRunning])
  {
    if (v7)
    {
      v9 = [v7 domain];
      if ([v9 isEqual:0x1F55F1468])
      {
        v10 = [v7 code];

        if (v10 == 11)
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            *buf = 138412802;
            v35 = WeakRetained;
            v36 = 2112;
            *v37 = v7;
            *&v37[8] = 2112;
            *&v37[10] = v12;
            _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: Response from set discovery request (%@) - yielding to remote device: %@", buf, 0x20u);
          }

          [WeakRetained[8] submitInteractionType:0 withDevice:*(a1 + 40) reason:8];
LABEL_23:
          [*(a1 + 32) setError:v7];
          [*(a1 + 32) complete];
          goto LABEL_30;
        }
      }

      else
      {
      }

      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 40);
        *buf = 138412802;
        v35 = WeakRetained;
        v36 = 2112;
        *v37 = v7;
        *&v37[8] = 2112;
        *&v37[10] = v31;
        _os_log_error_impl(&dword_1DA444000, v27, OS_LOG_TYPE_ERROR, "%@: failed to discover remote sets due to error: %@, cannot proceed to sync with device %@", buf, 0x20u);
      }

      goto LABEL_23;
    }

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v35 = WeakRetained;
      v36 = 2112;
      *v37 = v6;
      *&v37[8] = 2112;
      *&v37[10] = &stru_1F55F1328;
      _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: received response from set discovery %@ %@", buf, 0x20u);
    }

    v14 = [[CCSetDiscoveryResponse alloc] initFromDictionary:v6];
    v15 = [v14 senderDeviceUUID];
    [*(a1 + 40) setCascadeDeviceUUID:v15];

    if (([*(a1 + 48) requestOptions] & 2) != 0)
    {
      v28 = __biome_log_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = CCRapportSyncOptionsDescription([*(a1 + 48) requestOptions]);
        *buf = 138412546;
        v35 = WeakRetained;
        v36 = 2112;
        *v37 = v29;
        _os_log_impl(&dword_1DA444000, v28, OS_LOG_TYPE_DEFAULT, "%@: Skipping set discovery based on request options: %@", buf, 0x16u);
      }

      [*(a1 + 32) setSetsToSync:0];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v16 = MEMORY[0x1E695DF70];
      v17 = [v14 discoveredSets];
      v18 = [v16 arrayWithArray:v17];

      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 count];
        *buf = 138412802;
        v35 = WeakRetained;
        v36 = 1024;
        *v37 = v20;
        *&v37[4] = 2112;
        *&v37[6] = v18;
        _os_log_impl(&dword_1DA444000, v19, OS_LOG_TYPE_DEFAULT, "%@: discovered %u set(s) eligible for inbound sync: %@", buf, 0x1Cu);
      }

      v21 = [CCDiscoveredSet removeOptions:1 fromSets:v18];
      [*(a1 + 56) recordDiscoveredSetResources:v21 forInteraction:*(a1 + 32)];
      v22 = [v14 responseOptions];
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = @"ADDITIONAL";
        if ((v22 & 4) == 0)
        {
          v24 = @"no remaining";
        }

        [*(a1 + 48) sizeThreshold];
        v25 = v33 = v18;
        v26 = CCRapportSyncOptionsDescription([v14 responseOptions]);
        *buf = 138413058;
        v35 = WeakRetained;
        v36 = 2112;
        *v37 = v32;
        *&v37[8] = 2112;
        *&v37[10] = v25;
        v38 = 2112;
        v39 = v26;
        _os_log_impl(&dword_1DA444000, v23, OS_LOG_TYPE_DEFAULT, "%@: set discovery response indicates %@ sets to discover (size threshold: %@): %@", buf, 0x2Au);

        v18 = v33;
      }

      if ((v22 & 4) != 0)
      {
        v30 = [v18 lastObject];
        [*(a1 + 32) setRepeatDiscoveryAfterSet:v30];
      }

      else
      {
        [*(a1 + 32) setRepeatDiscoveryAfterSet:0];
        [WeakRetained addOmittedSetsFromSetDiscovery:v21 forInteraction:*(a1 + 32)];
      }

      [*(a1 + 32) setSetsToSync:v21];
      (*(*(a1 + 64) + 16))();
    }
  }

LABEL_30:
}

- (void)sendFetchMergeableDeltasRequest:(id)request forInteraction:(id)interaction continueSync:(id)sync
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  interactionCopy = interaction;
  syncCopy = sync;
  dispatch_assert_queue_V2(self->_queue);
  device = [interactionCopy device];
  rapportManager = self->_rapportManager;
  v37 = 0;
  v13 = [(CCRapportManager *)rapportManager initiateFileTransferSessionWithServerDevice:device error:&v37];
  v23 = v37;
  if (v13)
  {
    [interactionCopy setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
    currentPersonaIdentifier = [MEMORY[0x1E698E9D0] currentPersonaIdentifier];
    selfPublicKey = [v13 selfPublicKey];
    objc_initWeak(&location, self);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke;
    v30[3] = &unk_1E85C2E18;
    objc_copyWeak(&v35, &location);
    v21 = currentPersonaIdentifier;
    v31 = v21;
    v32 = interactionCopy;
    v15 = device;
    v33 = v15;
    v16 = syncCopy;
    v34 = v16;
    [v13 setReceivedItemHandler:v30];
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v40 = 2112;
      v41 = selfPublicKey;
      _os_log_impl(&dword_1DA444000, v17, OS_LOG_TYPE_DEFAULT, "%@: client registering to receive incoming files with peer key %@", buf, 0x16u);
    }

    [requestCopy setPeerPublicKey:selfPublicKey];
    dictionaryRepresentation = [requestCopy dictionaryRepresentation];
    v19 = self->_rapportManager;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_49;
    v24[3] = &unk_1E85C2E40;
    objc_copyWeak(&v29, &location);
    v25 = requestCopy;
    v26 = v15;
    v28 = v16;
    v27 = v13;
    [(CCRapportManager *)v19 sendRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas" request:dictionaryRepresentation toDevice:v26 responseHandler:v24];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine sendFetchMergeableDeltasRequest:forInteraction:continueSync:];
    }

    syncCopy[2](syncCopy);
  }
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 itemURL];
    *buf = 138412546;
    v22 = WeakRetained;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1DA444000, v8, OS_LOG_TYPE_DEFAULT, "%@: received item over file transfer session with url: %@", buf, 0x16u);
  }

  v10 = WeakRetained[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_47;
  block[3] = &unk_1E85C2DF0;
  v14 = a1[4];
  v15 = a1[5];
  v16 = WeakRetained;
  v19 = v6;
  v17 = v5;
  v18 = a1[6];
  v20 = a1[7];
  v11 = v5;
  v12 = v6;
  dispatch_async(v10, block);
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_47(uint64_t a1)
{
  v2 = MEMORY[0x1E698E9D0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2;
  v11[3] = &unk_1E85C2DC8;
  v3 = (a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *v3;
  v10 = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v15 = *(a1 + 80);
  [v2 runAsPersonaIdentifier:v4 block:v11];
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) cancelRapportRequestTimeout];
  if ([*(a1 + 32) isRunning])
  {
    if ([v3 code] == 1)
    {
      v4 = __biome_log_for_category();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2_cold_1();
      }
    }

    else
    {
      [*(a1 + 40) handleIncomingMergeableDeltaFileTransfer:*(a1 + 48) fromDevice:*(a1 + 56)];
    }

    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_49(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v7)
  {
    v9 = [v7 domain];
    v10 = [v9 isEqual:0x1F55F1468];

    if (v10 && ([v7 code] - 14) <= 2)
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = CCRapportSyncErrorDescription([v7 code]);
        v13 = [*(a1 + 32) set];
        v22 = 138412802;
        v23 = WeakRetained;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: fetch mergeable deltas response error code (%@) requires immediate expiration for any active contents stored in set: %@", &v22, 0x20u);
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) set];
      [WeakRetained expireDevice:v14 fromSet:v15];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        v22 = 138412802;
        v23 = WeakRetained;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&dword_1DA444000, v16, OS_LOG_TYPE_ERROR, "%@: fetch mergeable deltas failed with error: %@ from device: %@", &v22, 0x20u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v17 = [[CCFetchMergeableDeltasResponse alloc] initFromDictionary:v6];
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v22 = 138412802;
      v23 = WeakRetained;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "%@: client activating file transfer session %@ after receiving fetch mergeable deltas response: %@", &v22, 0x20u);
    }

    v20 = [v17 peerPublicKey];
    [*(a1 + 48) setPeerPublicKey:v20];

    [*(a1 + 48) activate];
  }
}

- (void)sendDoneFetchingMergeableDeltasRequest:(id)request forInteraction:(id)interaction
{
  requestCopy = request;
  interactionCopy = interaction;
  dispatch_assert_queue_V2(self->_queue);
  device = [interactionCopy device];
  [interactionCopy setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.doneFetchingMergeableDeltas"];
  objc_initWeak(&location, self);
  dictionaryRepresentation = [requestCopy dictionaryRepresentation];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = [requestCopy isReciprocalRequest] ^ 1;
  rapportManager = self->_rapportManager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CCRapportSyncEngine_sendDoneFetchingMergeableDeltasRequest_forInteraction___block_invoke;
  v13[3] = &unk_1E85C2E68;
  objc_copyWeak(&v17, &location);
  v11 = interactionCopy;
  v14 = v11;
  v12 = device;
  v15 = v12;
  v16 = v18;
  [(CCRapportManager *)rapportManager sendRequest:@"com.apple.biomesyncd.cascade.doneFetchingMergeableDeltas" request:dictionaryRepresentation toDevice:v12 responseHandler:v13];

  objc_destroyWeak(&v17);
  _Block_object_dispose(v18, 8);

  objc_destroyWeak(&location);
}

void __77__CCRapportSyncEngine_sendDoneFetchingMergeableDeltasRequest_forInteraction___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) cancelRapportRequestTimeout];
  if ([*(a1 + 32) isRunning])
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &stru_1F55F1328;
      *v15 = 138412802;
      if (v7)
      {
        v10 = v7;
      }

      *&v15[4] = WeakRetained;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1DA444000, v9, OS_LOG_TYPE_DEFAULT, "%@: received response from signalling end of fetching %@ %@", v15, 0x20u);
    }

    if (v7)
    {
      [*(a1 + 32) setError:v7];
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 40);
        *v15 = 138412802;
        *&v15[4] = WeakRetained;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v14;
        _os_log_error_impl(&dword_1DA444000, v11, OS_LOG_TYPE_ERROR, "%@: failed to send done fetching deltas: %@ with device: %@", v15, 0x20u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          v13 = @" and submitting reciprocal interaction";
        }

        else
        {
          v13 = &stru_1F55F1328;
        }

        *v15 = 138412546;
        *&v15[4] = WeakRetained;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_1DA444000, v12, OS_LOG_TYPE_DEFAULT, "%@: signalled remote device we are done fetching%@", v15, 0x16u);
      }
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [WeakRetained[8] submitInteractionType:0 withDevice:*(a1 + 40) reason:4];
    }

    [*(a1 + 32) complete];
  }
}

- (void)handleIncomingMergeableDeltaFileTransfer:(id)transfer fromDevice:(id)device
{
  v33 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  deviceCopy = device;
  itemURL = [transferCopy itemURL];
  v9 = [CCMergeableDeltaFileTransferMessageMetadata alloc];
  metadata = [transferCopy metadata];
  v11 = [(CCMergeableDeltaFileTransferMessageMetadata *)v9 initFromDictionary:metadata];

  v12 = [v11 set];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    metadata2 = [transferCopy metadata];
    *buf = 138412546;
    selfCopy = self;
    v31 = 2112;
    v32 = metadata2;
    _os_log_impl(&dword_1DA444000, v13, OS_LOG_TYPE_DEFAULT, "%@: handling mergeable delta file transfer with metadata: %@", buf, 0x16u);
  }

  deviceSite = [v11 deviceSite];
  v16 = deviceSite;
  if (v12 && deviceSite)
  {
    if ([v11 fileFormatVersion] == 1)
    {
      v17 = [CCSetVersionedMergeable writeOnlyInstanceForSet:v12 donateServiceProvider:self->_donateServiceProvider];
      v18 = MEMORY[0x1E695B990];
      mergeableDeltaMetadataVectors = [v11 mergeableDeltaMetadataVectors];
      v28 = 0;
      v20 = [v18 decodeMergeableDeltaMetadata:mergeableDeltaMetadataVectors withError:&v28];

      v27 = v20;
      v21 = [objc_alloc(MEMORY[0x1E695B988]) initWithFileURL:itemURL metadata:v20];
      cascadeDeviceUUID = [deviceCopy cascadeDeviceUUID];

      if (!cascadeDeviceUUID)
      {
        device = [v16 device];
        deviceUUID = [device deviceUUID];
        [deviceCopy setCascadeDeviceUUID:deviceUUID];
      }

      cascadeDeviceUUID2 = [deviceCopy cascadeDeviceUUID];
      relayedDeviceSites = [v11 relayedDeviceSites];
      [v17 mergeUpdateFromPeerDeviceUUID:cascadeDeviceUUID2 deviceSite:v16 relayedDeviceSites:relayedDeviceSites mergeableDelta:v21];
    }

    else
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine handleIncomingMergeableDeltaFileTransfer:v11 fromDevice:?];
      }
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine handleIncomingMergeableDeltaFileTransfer:transferCopy fromDevice:?];
    }
  }
}

- (void)expireDevice:(id)device fromSet:(id)set
{
  donateServiceProvider = self->_donateServiceProvider;
  deviceCopy = device;
  v8 = [CCSetVersionedMergeable writeOnlyInstanceForSet:set donateServiceProvider:donateServiceProvider];
  cascadeDeviceUUID = [deviceCopy cascadeDeviceUUID];

  [v8 expirePeerDeviceUUID:cascadeDeviceUUID];
}

- (id)buildBasePeerToPeerMessageForInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = [CCPeerToPeerMessage alloc];
  reason = [interactionCopy reason];

  v7 = [(CCPeerToPeerMessage *)v5 initWithSyncReason:reason senderDeviceUUID:self->_localDeviceUUID protocolVersion:[(CCRapportSyncEngine *)self protocolVersion] wallTime:CFAbsoluteTimeGetCurrent()];

  return v7;
}

- (void)addOmittedSetsFromSetDiscovery:(id)discovery forInteraction:(id)interaction
{
  v32 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  discoveryCopy = discovery;
  v8 = objc_opt_new();
  v9 = [objc_alloc(MEMORY[0x1E69939C8]) initWithReadAccess:self->_readAcccess];
  v25 = 0;
  setIdentifiersSupportingInboundSync = [(CCRapportSyncEngine *)self setIdentifiersSupportingInboundSync];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke;
  v21 = &unk_1E85C2E90;
  v11 = interactionCopy;
  v22 = v11;
  selfCopy = self;
  v12 = v8;
  v24 = v12;
  v13 = [v9 enumerateAllSets:&v25 withOptions:1 setIdentifiers:setIdentifiersSupportingInboundSync descriptors:0 startAfterSet:0 usingBlock:&v18];
  v14 = v25;

  if (!v13 || v14)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CCRapportSyncEngine addOmittedSetsFromSetDiscovery:forInteraction:];
    }
  }

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 count];
    *buf = 138412802;
    selfCopy2 = self;
    v28 = 1024;
    v29 = v17;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_1DA444000, v16, OS_LOG_TYPE_DEFAULT, "%@: local set enumeration found %u eligible candidate set(s) omitted from set discovery response: %@", buf, 0x1Cu);
  }

  [discoveryCopy addObjectsFromArray:v12];
}

void __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) discoveredResources];
  v5 = [v3 toResourceSpecifier];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v10 = 0;
    v7 = [[CCDiscoveredSet alloc] initWithSet:v3 deviceSite:0 relayedDeviceSites:0 discoveryErrorCode:17 error:&v10];
    v8 = v10;
    if (v7)
    {
      [*(a1 + 48) addObject:v7];
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __69__CCRapportSyncEngine_addOmittedSetsFromSetDiscovery_forInteraction___block_invoke_cold_1();
      }
    }
  }
}

- (void)recordDiscoveredSetResources:(id)resources forInteraction:(id)interaction
{
  v19 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  interactionCopy = interaction;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [resourcesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        discoveredResources = [interactionCopy discoveredResources];
        toResourceSpecifier = [v11 toResourceSpecifier];
        [discoveredResources addObject:toResourceSpecifier];

        ++v10;
      }

      while (v8 != v10);
      v8 = [resourcesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (unsigned)determineSyncOperationForDiscoveredSet:(id)set forInteraction:(id)interaction outFetchRequest:(id *)request
{
  v31 = *MEMORY[0x1E69E9840];
  setCopy = set;
  interactionCopy = interaction;
  readAcccess = self->_readAcccess;
  v24 = 0;
  v10 = [(CCDataResourceReadAccess *)readAcccess databaseReadAccessForSet:setCopy error:&v24];
  v11 = v24;
  if (v10)
  {
    fileTransferDirectory = [(CCRapportManager *)self->_rapportManager fileTransferDirectory];
    v13 = [CCSetVersionedMergeable readOnlyInstanceForSet:setCopy mergeableDeltasFileURL:fileTransferDirectory database:v10];
  }

  else
  {
    fileTransferDirectory = __biome_log_for_category();
    if (os_log_type_enabled(fileTransferDirectory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v27 = 2112;
      v28 = setCopy;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1DA444000, fileTransferDirectory, OS_LOG_TYPE_DEFAULT, "%@: No database access for discovered set: %@ (error: %@)", buf, 0x20u);
    }

    v13 = 0;
  }

  device = [interactionCopy device];
  v15 = [(CCRapportSyncEngine *)self syncOperationForDiscoveredSet:setCopy withDevice:device versionedMergeable:v13 readAccessError:v11];

  if ((v15 - 2) >= 2)
  {
    if (v15 == 1)
    {
      goto LABEL_10;
    }

    if (v15)
    {
      v17 = 0;
      goto LABEL_13;
    }

    if (v13)
    {
LABEL_10:
      stateVector = [v13 stateVector];
    }

    else
    {
      stateVector = +[CCSetVersionedMergeable emptyStateVector];
    }

    v17 = stateVector;
LABEL_13:

    v23 = 0;
    v18 = [objc_alloc(MEMORY[0x1E6993A50]) initWithSet:setCopy error:&v23];
    v11 = v23;
    if (v18)
    {
      v19 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:interactionCopy];
      v20 = [CCFetchMergeableDeltasRequest fetchMergableDeltasRequestFromPeerToPeerMessage:v19 set:v18 stateVector:v17 atomBatchVersion:3 requestOptions:0];
      if (request)
      {
        v20 = v20;
        *request = v20;
      }
    }

    else
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy2 = self;
        v27 = 2112;
        v28 = setCopy;
        v29 = 2112;
        v30 = v11;
        _os_log_error_impl(&dword_1DA444000, v19, OS_LOG_TYPE_ERROR, "%@: Failed to downcast discovered set: %@ error: %@", buf, 0x20u);
      }
    }
  }

  return v15;
}

- (unsigned)syncOperationForDiscoveredSet:(id)set withDevice:(id)device versionedMergeable:(id)mergeable readAccessError:(id)error
{
  v60 = *MEMORY[0x1E69E9840];
  setCopy = set;
  deviceCopy = device;
  mergeableCopy = mergeable;
  errorCopy = error;
  discoveryErrorCode = [setCopy discoveryErrorCode];
  if (discoveryErrorCode == 12)
  {
    v15 = __biome_log_for_category();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      v17 = 3;
      goto LABEL_35;
    }

    *buf = 138412546;
    selfCopy11 = self;
    v52 = 2112;
    v53 = setCopy;
    v16 = "%@: will skip sync due to discovery error for set: %@";
LABEL_4:
    _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
    goto LABEL_5;
  }

  v18 = discoveryErrorCode;
  if (mergeableCopy)
  {
    cascadeDeviceUUID = [deviceCopy cascadeDeviceUUID];
    v15 = [mergeableCopy storedActiveDeviceSiteWithDeviceUUID:cascadeDeviceUUID];

    if (v15)
    {
      deviceSite = [setCopy deviceSite];
      if (deviceSite)
      {
        resourceGeneration = [v15 resourceGeneration];
        resourceGeneration2 = [deviceSite resourceGeneration];
        v23 = [resourceGeneration isEqual:resourceGeneration2];

        if ((v23 & 1) == 0)
        {
          deltaGeneration = __biome_log_for_category();
          if (os_log_type_enabled(deltaGeneration, OS_LOG_TYPE_DEFAULT))
          {
            resourceGeneration3 = [v15 resourceGeneration];
            resourceGeneration4 = [deviceSite resourceGeneration];
            *buf = 138412802;
            selfCopy11 = self;
            v52 = 2112;
            v53 = resourceGeneration3;
            v54 = 2112;
            v55 = resourceGeneration4;
            _os_log_impl(&dword_1DA444000, deltaGeneration, OS_LOG_TYPE_DEFAULT, "%@: resourceGeneration (%@) is out of sync with discovered (%@)", buf, 0x20u);
          }

          goto LABEL_33;
        }

        expirationDate = [v15 expirationDate];
        [expirationDate timeIntervalSinceNow];
        v26 = v25;

        if (v26 >= 3600.0)
        {
          deltaGeneration = [v15 deltaGeneration];
          deltaGeneration2 = [deviceSite deltaGeneration];
          if ([deltaGeneration2 longLongValue]>= 1 && [deltaGeneration2 isEqual:deltaGeneration])
          {
            v49 = deltaGeneration2;
            expirationDate2 = [deviceSite expirationDate];
            expirationDate3 = [v15 expirationDate];
            [expirationDate2 timeIntervalSinceDate:expirationDate3];
            v43 = v42;

            v44 = __biome_log_for_category();
            v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
            if (v43 >= 86400.0)
            {
              if (v45)
              {
                expirationDate4 = [v15 expirationDate];
                *buf = 138412802;
                selfCopy11 = self;
                v52 = 2112;
                v53 = deltaGeneration;
                v54 = 2112;
                v55 = expirationDate4;
                _os_log_impl(&dword_1DA444000, v44, OS_LOG_TYPE_DEFAULT, "%@: deltaGeneration (%@) already synced - stored expiration date (%@) to be extended", buf, 0x20u);
              }

              v17 = 2;
            }

            else
            {
              if (v45)
              {
                expirationDate5 = [v15 expirationDate];
                [deviceSite expirationDate];
                *buf = 138413314;
                selfCopy11 = self;
                v52 = 2112;
                v53 = deltaGeneration;
                v54 = 2112;
                v55 = expirationDate5;
                v56 = 2048;
                v57 = 0x40F5180000000000;
                v59 = v58 = 2112;
                v47 = v59;
                _os_log_impl(&dword_1DA444000, v44, OS_LOG_TYPE_DEFAULT, "%@: deltaGeneration (%@) already synced - stored expiration date (%@) is within the skip attestation interval (%lfs) of discovered (%@)", buf, 0x34u);
              }

              v17 = 3;
            }

            deltaGeneration2 = v49;
          }

          else
          {
            v44 = __biome_log_for_category();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              selfCopy11 = self;
              v52 = 2112;
              v53 = deltaGeneration;
              v54 = 2112;
              v55 = deltaGeneration2;
              _os_log_impl(&dword_1DA444000, v44, OS_LOG_TYPE_DEFAULT, "%@: deltaGeneration (%@) out of sync with discovered (%@)", buf, 0x20u);
            }

            v17 = 1;
          }

          goto LABEL_34;
        }

        deltaGeneration = __biome_log_for_category();
        if (os_log_type_enabled(deltaGeneration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy11 = self;
          v52 = 2112;
          v53 = v15;
          v28 = "%@: Expiration is imminent for stored device site: %@";
          v29 = deltaGeneration;
          v30 = 22;
LABEL_30:
          _os_log_impl(&dword_1DA444000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
        }
      }

      else
      {
        deltaGeneration = __biome_log_for_category();
        if (os_log_type_enabled(deltaGeneration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy11 = self;
          v52 = 2112;
          v53 = v15;
          v54 = 2112;
          v55 = setCopy;
          v28 = "%@: Discovery response missing device site (found active stored site): %@ for set: %@";
          v29 = deltaGeneration;
          v30 = 32;
          goto LABEL_30;
        }
      }

LABEL_33:
      v17 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      cascadeDeviceUUID2 = [deviceCopy cascadeDeviceUUID];
      *buf = 138412802;
      selfCopy11 = self;
      v52 = 2112;
      v53 = cascadeDeviceUUID2;
      v54 = 2112;
      v55 = setCopy;
      _os_log_impl(&dword_1DA444000, v31, OS_LOG_TYPE_DEFAULT, "%@: Found no active stored equivalent for peer deviceUUID: %@ in set: %@", buf, 0x20u);
    }

    if (v18 == 14 || v18 == 17)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (discoveryErrorCode == 17)
    {
      v15 = __biome_log_for_category();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      *buf = 138412546;
      selfCopy11 = self;
      v52 = 2112;
      v53 = setCopy;
      v16 = "%@: will skip omitted set: %@ without local database access";
      goto LABEL_4;
    }

    v34 = [(CCRapportSyncEngine *)self syncErrorCodeFromReadAccessError:errorCopy];
    v15 = __biome_log_for_category();
    v35 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v18 == 18 && v34 == 14)
    {
      if (!v35)
      {
        goto LABEL_5;
      }

      *buf = 138412546;
      selfCopy11 = self;
      v52 = 2112;
      v53 = setCopy;
      v16 = "%@: will skip empty set: %@ with nonexistent local database";
      goto LABEL_4;
    }

    if (v35)
    {
      *buf = 138412546;
      selfCopy11 = self;
      v52 = 2112;
      v53 = setCopy;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "%@: full sync required for set: %@ without local database access", buf, 0x16u);
    }

    v17 = 0;
  }

LABEL_35:

  return v17;
}

- (id)buildDoneFetchingMergeableDeltasMessageForInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:interactionCopy];
  reason = [interactionCopy reason];

  v7 = [CCSignalDoneFetchingMergeableDeltas doneFetchingMergeableDeltasMessageFromPeerToPeerMessage:v5 isReciprocal:reason == 4];

  return v7;
}

- (BOOL)didRemoteDeviceInitiateSyncWithMessage:(id)message beforeLocalInteraction:(id)interaction
{
  v26 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  [message walltime];
  if (v7 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    v8 = v7;
    [interactionCopy initiatingRequestSentWalltime];
    v10 = v9;
    v11 = v8 < v9;
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v8 >= v10)
      {
        v13 = @" NOT";
      }

      else
      {
        v13 = &stru_1F55F1328;
      }

      [interactionCopy initiatingRequestSentWalltime];
      v16 = 138413314;
      selfCopy = self;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v14;
      v24 = 2112;
      v25 = interactionCopy;
      _os_log_impl(&dword_1DA444000, v12, OS_LOG_TYPE_DEFAULT, "%@: Remote device DID%@ initiate sync (%lf) prior to our local interaction (%lf): %@", &v16, 0x34u);
    }
  }

  return v11;
}

- (id)validateInRequest:(id)request inOptions:(id)options inResponseHandler:(id)handler isInitiatingRequest:(BOOL)initiatingRequest outPlatform:(int64_t *)platform
{
  initiatingRequestCopy = initiatingRequest;
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  rapportManager = self->_rapportManager;
  v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69C6BF0]];
  v17 = [(CCRapportManager *)rapportManager deviceWithIdentifier:v16];

  if (v17)
  {
    v18 = [[CCPeerToPeerMessage alloc] initFromDictionary:requestCopy];
    if (initiatingRequestCopy)
    {
      v19 = [(CCRapportSyncSession *)self->_currentSession interactionOfType:1 withDevice:v17];
      if ([v19 isRunning])
      {
        v36 = CCRapportSyncError(11);
        v20 = [(CCRapportSyncEngine *)self didRemoteDeviceInitiateSyncWithMessage:v18 beforeLocalInteraction:v19];
        v21 = __biome_log_for_category();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (!v20)
        {
          v26 = v36;
          if (v22)
          {
            *buf = 138412802;
            selfCopy2 = self;
            v39 = 2112;
            v40 = v36;
            v41 = 2112;
            v42 = v19;
            _os_log_impl(&dword_1DA444000, v21, OS_LOG_TYPE_DEFAULT, "%@: Responding with %@ due to existing interaction with device: %@", buf, 0x20u);
          }

          (*(handlerCopy + 2))(handlerCopy, 0, 0, v36);
          goto LABEL_32;
        }

        if (v22)
        {
          *buf = 138412546;
          selfCopy2 = self;
          v39 = 2112;
          v40 = v19;
          _os_log_impl(&dword_1DA444000, v21, OS_LOG_TYPE_DEFAULT, "%@: Yielding to device which started sync before us; canceling client interaction: %@", buf, 0x16u);
        }

        [(CCRapportSyncSession *)self->_currentSession submitInteractionType:0 withDevice:v17];
        [(CCRapportSyncSession *)self->_currentSession cancelInteractionType:1 withDevice:v17 dueToError:v36];
      }

      else
      {
        [(CCRapportSyncSession *)self->_currentSession submitInteractionType:0 withDevice:v17];
      }
    }

    v19 = [(CCRapportSyncSession *)self->_currentSession interactionOfType:0 withDevice:v17];
    if ([v19 isRunning])
    {
      if (platform)
      {
        v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69C6BF8]];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = [optionsCopy description];
          v29 = CCRapportSyncErrorWithDetails(5, 0, v28);

          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
          }

          (*(handlerCopy + 2))(handlerCopy, 0, 0, v29);
          goto LABEL_33;
        }

        *platform = BMDevicePlatformFromModelString();
      }

      if ([v18 protocolVersion] == 4 || objc_msgSend(v18, "protocolVersion") == 5)
      {
        [v19 cancelRapportRequestTimeout];
        v19 = v19;
        v24 = v19;
LABEL_34:

        goto LABEL_35;
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatched protocol version %lu, expected %d", objc_msgSend(v18, "protocolVersion"), -[CCRapportSyncEngine protocolVersion](self, "protocolVersion")];
      v26 = CCRapportSyncErrorWithDetails(4, 0, v31);

      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
      }

      v33 = [(CCRapportSyncEngine *)self buildBasePeerToPeerMessageForInteraction:v19];
      dictionaryRepresentation = [v33 dictionaryRepresentation];
      (*(handlerCopy + 2))(handlerCopy, dictionaryRepresentation, 0, v26);
    }

    else
    {
      v26 = CCRapportSyncError(8);
      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);
      [(CCRapportSyncSession *)self->_currentSession cancelInteractionType:0 withDevice:v17 dueToError:v26];
    }

LABEL_32:

LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v23 = __biome_log_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
  }

  v18 = CCRapportSyncError(7);
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);
  v24 = 0;
LABEL_35:

  return v24;
}

- (id)setDiscoveryRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke;
  v5[3] = &unk_1E85C2EE0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x1DA74EA40](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v27 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[5]);
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = WeakRetained;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v43 = v27;
    _os_log_impl(&dword_1DA444000, v10, OS_LOG_TYPE_DEFAULT, "%@: received set discovery request %@ %@", buf, 0x20u);
  }

  v37 = 0;
  v11 = [*(a1 + 32) validateInRequest:v7 inOptions:v27 inResponseHandler:v8 isInitiatingRequest:1 outPlatform:&v37];
  if (v11)
  {
    v26 = [[CCSetDiscoveryRequest alloc] initFromDictionary:v7];
    v25 = [(dispatch_queue_t *)WeakRetained buildBasePeerToPeerMessageForInteraction:v11];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOWORD(v43) = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (([v26 requestOptions] & 2) != 0)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = CCRapportSyncOptionsDescription([v26 requestOptions]);
        *v38 = 138412546;
        v39 = WeakRetained;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_1DA444000, v17, OS_LOG_TYPE_DEFAULT, "%@: Skipping set enumeration per request options: %@", v38, 0x16u);
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E69939C8]) initWithReadAccess:WeakRetained[3]];
      v35 = 0;
      v14 = [*(a1 + 32) setIdentifiersSupportingOutboundSync];
      v15 = [v26 startAfterSet];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_70;
      v28[3] = &unk_1E85C2EB8;
      v29 = v26;
      v30 = WeakRetained;
      v32 = v36;
      v33 = buf;
      v34 = v37;
      v31 = v12;
      v16 = [v13 enumerateAllSets:&v35 withOptions:3 setIdentifiers:v14 descriptors:0 startAfterSet:v15 usingBlock:v28];
      v17 = v35;

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      if ((v18 & 1) == 0)
      {
        v19 = __biome_log_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_cold_1();
        }
      }
    }

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v12 count];
      *v38 = 138412546;
      v39 = WeakRetained;
      v40 = 1024;
      LODWORD(v41) = v22;
      _os_log_impl(&dword_1DA444000, v21, OS_LOG_TYPE_DEFAULT, "%@: Responding to set discovery request with %u set(s) matching request criteria", v38, 0x12u);
    }

    v23 = [CCSetDiscoveryResponse setDiscoveryResponseFromPeerToPeerMessage:v25 discoveredSets:v12 responseOptions:*(*&buf[8] + 24)];
    v24 = [v23 dictionaryRepresentation];
    (*(v8 + 2))(v8, v24, 0, 0);

    [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.setDiscoveryRequest"];
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_70(uint64_t a1, void *a2, _BYTE *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E6993A70] setConfigurationForItemType:{objc_msgSend(v5, "itemType")}];
  v7 = [*(a1 + 32) setUUIDsToDiscover];
  v8 = [v6 setUUID];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [v6 syncPolicy];
    if ([v10 supportsSyncingWithPlatform:*(a1 + 72) overTransport:2 inDirection:2])
    {
      v11 = [*(a1 + 32) sizeThreshold];
      if (v11 && (v12 = v11, v13 = *(*(*(a1 + 56) + 8) + 24), [*(a1 + 32) sizeThreshold], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedLongValue"), v14, v12, v13 > v15))
      {
        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(*(a1 + 56) + 8) + 24);
          v18 = *(a1 + 40);
          v19 = [*(a1 + 32) sizeThreshold];
          v20 = CCRapportSyncOptionsDescription(4);
          v28 = 138413058;
          v29 = v18;
          v30 = 2048;
          v31 = v17;
          v32 = 2112;
          v33 = v19;
          v34 = 2112;
          v35 = v20;
          _os_log_impl(&dword_1DA444000, v16, OS_LOG_TYPE_DEFAULT, "%@: Cumulative response size (%lu) exceeds requested size threshold: %@. Stopping enumeration and setting %@", &v28, 0x2Au);
        }

        *(*(*(a1 + 64) + 8) + 24) |= 4u;
        *a3 = 1;
      }

      else
      {
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) senderDeviceUUID];
        v23 = [v21 readSetForDiscovery:v5 senderDeviceUUID:v22];

        if (v23)
        {
          v24 = __biome_log_for_category();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 40);
            v26 = BMDevicePlatformGetDescription();
            v28 = 138412802;
            v29 = v25;
            v30 = 2112;
            v31 = v23;
            v32 = 2112;
            v33 = v26;
            _os_log_impl(&dword_1DA444000, v24, OS_LOG_TYPE_DEFAULT, "%@: discovered syncable set %@ for platform %@", &v28, 0x20u);
          }

          v27 = [v23 relayedDeviceSites];
          *(*(*(a1 + 56) + 8) + 24) += [v27 count] + 1;

          [*(a1 + 48) addObject:v23];
        }
      }
    }
  }
}

- (id)readSetForDiscovery:(id)discovery senderDeviceUUID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  discoveryCopy = discovery;
  dCopy = d;
  readAcccess = self->_readAcccess;
  v24 = 0;
  v9 = [(CCDataResourceReadAccess *)readAcccess databaseReadAccessForSet:discoveryCopy error:&v24];
  v10 = v24;
  if (v9)
  {
    fileTransferDirectory = [(CCRapportManager *)self->_rapportManager fileTransferDirectory];
    v12 = [CCSetVersionedMergeable readOnlyInstanceForSet:discoveryCopy mergeableDeltasFileURL:fileTransferDirectory database:v9];

    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1209600.0];
    v14 = [v12 localDeviceSiteAddingExpirationDate:v13];

    if (v14)
    {
      v15 = [v12 relayedDeviceSitesExcludingRequestingDeviceUUID:dCopy];
      if ([v12 hasNoPresentContent])
      {
        v16 = 18;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = 16;
    }
  }

  else
  {
    v16 = [(CCRapportSyncEngine *)self syncErrorCodeFromReadAccessError:v10];
    v15 = 0;
    v14 = 0;
  }

  v23 = v10;
  v17 = [[CCDiscoveredSet alloc] initWithSet:discoveryCopy deviceSite:v14 relayedDeviceSites:v15 discoveryErrorCode:v16 error:&v23];
  v18 = v23;

  if (!v17 || v18)
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      discoveryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"while handling set discovery request for set %@", discoveryCopy];
      v21 = CCRapportSyncErrorWithDetails(v16, v18, discoveryCopy);
      *buf = 138412546;
      selfCopy = self;
      v27 = 2112;
      v28 = v21;
      _os_log_error_impl(&dword_1DA444000, v19, OS_LOG_TYPE_ERROR, "%@: %@", buf, 0x16u);
    }
  }

  return v17;
}

- (id)fetchMergeableDeltasRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke;
  v5[3] = &unk_1E85C2EE0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x1DA74EA40](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(*(WeakRetained + 5));
  v97 = 0;
  v11 = [*(a1 + 32) validateInRequest:v7 inOptions:v8 inResponseHandler:v9 isInitiatingRequest:0 outPlatform:&v97];
  if (v11)
  {
    v12 = [[CCFetchMergeableDeltasRequest alloc] initFromDictionary:v7];
    v13 = [WeakRetained buildBasePeerToPeerMessageForInteraction:v11];
    v14 = [v12 set];
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v99 = WeakRetained;
      v100 = 2112;
      v101 = v14;
      v102 = 2112;
      v103 = v7;
      v104 = 2112;
      v105 = v8;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "%@: received fetch mergeable deltas request for set: %@ %@ %@", buf, 0x2Au);
    }

    v92 = [MEMORY[0x1E6993A70] setConfigurationForItemType:{objc_msgSend(v14, "itemType")}];
    v91 = [v92 syncPolicy];
    if ([v91 supportsSyncingWithPlatform:v97 overTransport:2 inDirection:2])
    {
      v87 = v13;
      v88 = v12;
      v16 = v8;
      v17 = *(WeakRetained + 3);
      v96 = 0;
      v18 = [v17 databaseReadAccessForSet:v14 error:&v96];
      v19 = v96;
      v20 = v14;
      v86 = v18;
      v89 = v19;
      if (v18)
      {
        v21 = [*(WeakRetained + 2) fileTransferDirectory];
        v22 = [CCSetVersionedMergeable readOnlyInstanceForSet:v14 mergeableDeltasFileURL:v21 database:v18];

        v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1209600.0];
        v24 = [v22 localDeviceSiteAddingExpirationDate:v23];

        v83 = v24;
        v84 = v22;
        if (v24)
        {
          v8 = v16;
          v25 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69C6BE0]];
          v13 = v87;
          if (v25)
          {
            v26 = __biome_log_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v99 = WeakRetained;
              v100 = 2112;
              v101 = v14;
              v102 = 2112;
              v103 = v25;
              _os_log_impl(&dword_1DA444000, v26, OS_LOG_TYPE_DEFAULT, "%@: preparing outgoing file transfer session to send deltas for set %@ from device %@", buf, 0x20u);
            }

            v27 = *(WeakRetained + 2);
            v28 = [v11 device];
            v29 = [v88 peerPublicKey];
            v30 = v25;
            v31 = v29;
            v95[1] = 0;
            v80 = v30;
            v32 = [v27 fulfillFileTransferSessionFromClientDevice:v28 withTargetDeviceID:? peerPublicKey:? error:?];
            v81 = 0;

            v33 = __biome_log_for_category();
            v34 = v33;
            v82 = v32;
            if (v32)
            {
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v99 = WeakRetained;
                v100 = 2112;
                v101 = v32;
                _os_log_impl(&dword_1DA444000, v34, OS_LOG_TYPE_DEFAULT, "%@: file transfer session initiated: %@", buf, 0x16u);
              }

              v35 = [v32 peerPublicKey];
              v36 = [CCFetchMergeableDeltasResponse fetchMergeableDeltasResponseFromPeerToPeerMessage:v87 peerPublicKey:v35];

              v76 = v36;
              v37 = [v36 dictionaryRepresentation];
              (*(v9 + 2))(v9, v37, 0, 0);

              v38 = [v88 stateVector];
              v77 = [v88 atomBatchVersion];
              v39 = [v88 senderDeviceUUID];
              v79 = [v84 relayedDeviceSitesExcludingRequestingDeviceUUID:v39];

              v75 = v38;
              v40 = [v84 mergeableDeltaAfterStateVector:v38 atomBatchVersion:v77 options:{objc_msgSend(v88, "requestOptions")}];
              v41 = MEMORY[0x1E695B990];
              v42 = [v40 metadata];
              v95[0] = v89;
              v78 = [v41 encodeMergeableDeltaMetadata:v42 withError:v95];
              v74 = v95[0];

              v43 = objc_opt_new();
              v44 = [v40 fileURL];
              v45 = [v44 lastPathComponent];
              [v43 setFilename:v45];

              v13 = v87;
              v46 = [v40 fileURL];
              [v43 setItemURL:v46];

              v93[0] = MEMORY[0x1E69E9820];
              v93[1] = 3221225472;
              v93[2] = __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke_83;
              v93[3] = &unk_1E85C2948;
              v93[4] = WeakRetained;
              v90 = v40;
              v94 = v90;
              [v43 setCompletionHandler:v93];
              v73 = [CCMergeableDeltaFileTransferMessageMetadata mergeableDeltaFileTransferMessageMetadataFromPeerToPeerMessage:v87 set:v14 mergeableDeltaMetadataVectors:v78 fileFormatVersion:1 deviceSite:v83 relayedDeviceSites:v79];
              v47 = [v73 dictionaryRepresentation];
              [v43 setMetadata:v47];

              v48 = __biome_log_for_category();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v99 = WeakRetained;
                v100 = 2112;
                v101 = v43;
                v102 = 2112;
                v103 = v82;
                _os_log_impl(&dword_1DA444000, v48, OS_LOG_TYPE_DEFAULT, "%@: adding items %@ to file transfer session %@", buf, 0x20u);
              }

              v49 = v82;
              [v82 addItem:v43];
              [v82 activate];
              [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];

              v50 = v74;
              v25 = v80;
            }

            else
            {
              v13 = v87;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
              }

              v72 = [v87 dictionaryRepresentation];
              (*(v9 + 2))(v9, v72, 0, v81);

              [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
              v50 = v89;
              v25 = v80;
              v49 = 0;
            }

            v65 = v86;
            v71 = v81;
          }

          else
          {
            v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@" missing inOptions[RPOptionSenderFileTransferTargetID] in fetchMergeableDeltas for set %@", v14];
            v68 = CCRapportSyncErrorWithDetails(19, 0, v67);

            v69 = __biome_log_for_category();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
            }

            v70 = [v87 dictionaryRepresentation];
            (*(v9 + 2))(v9, v70, 0, v68);

            [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
            v65 = v86;
            v71 = v68;
            v50 = v89;
          }

          v89 = v50;
        }

        else
        {
          v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"while handling fetchMergeableDeltas for set %@", v14];
          v62 = CCRapportSyncErrorWithDetails(16, 0, v61);

          v63 = __biome_log_for_category();
          v13 = v87;
          v8 = v16;
          v25 = v62;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
          }

          v64 = [v87 dictionaryRepresentation];
          (*(v9 + 2))(v9, v64, 0, v62);

          [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
          v65 = v86;
        }

        v58 = v84;
      }

      else
      {
        v55 = v19;
        v56 = [WeakRetained syncErrorCodeFromReadAccessError:v19];
        v85 = v20;
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"while handling fetchMergeableDeltas for set %@", v20];
        v58 = CCRapportSyncErrorWithDetails(v56, v55, v57);

        v59 = __biome_log_for_category();
        v60 = v59;
        if (v56 == 14)
        {
          v13 = v87;
          v8 = v16;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v99 = WeakRetained;
            v100 = 2112;
            v101 = v89;
            _os_log_impl(&dword_1DA444000, v60, OS_LOG_TYPE_DEFAULT, "%@: received fetchMergeableDeltas for nonexistent set: %@", buf, 0x16u);
          }
        }

        else
        {
          v13 = v87;
          v8 = v16;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
          }
        }

        v66 = [v13 dictionaryRepresentation];
        (*(v9 + 2))(v9, v66, 0, v58);

        [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
        v14 = v85;
        v65 = 0;
      }

      v12 = v88;

      v52 = v89;
    }

    else
    {
      v51 = BMDevicePlatformGetDescription();
      v52 = CCRapportSyncErrorWithDetails(15, 0, v51);

      v53 = __biome_log_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [CCRapportSyncEngine validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:];
      }

      v54 = [v13 dictionaryRepresentation];
      (*(v9 + 2))(v9, v54, 0, v52);

      [v11 setTimeoutForRapportRequest:@"com.apple.biomesyncd.cascade.fetchMergeableDeltas"];
    }
  }
}

void __57__CCRapportSyncEngine_fetchMergeableDeltasRequestHandler__block_invoke_83(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = @"successfully";
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) fileURL];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1DA444000, v4, OS_LOG_TYPE_DEFAULT, "%@: item completion handler invoked %@ for url %@", &v11, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);
  v10 = [v8 fileURL];
  [v9 deleteMergeableDeltaFileURL:v10];
}

- (id)doneFetchingMergeableDeltasRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CCRapportSyncEngine_doneFetchingMergeableDeltasRequestHandler__block_invoke;
  v5[3] = &unk_1E85C2EE0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x1DA74EA40](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __64__CCRapportSyncEngine_doneFetchingMergeableDeltasRequestHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[5]);
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = WeakRetained;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "%@: received done fetching mergeable deltas message %@ %@", &v16, 0x20u);
  }

  v12 = [*(a1 + 32) validateInRequest:v7 inOptions:v8 inResponseHandler:v9 isInitiatingRequest:1 outPlatform:0];
  if (v12)
  {
    v13 = [[CCSignalDoneFetchingMergeableDeltas alloc] initFromDictionary:v7];
    if (([v13 isReciprocalRequest] & 1) == 0)
    {
      v14 = WeakRetained[8];
      v15 = [v12 device];
      [v14 submitInteractionType:1 withDevice:v15 reason:4];
    }

    (*(v9 + 2))(v9, MEMORY[0x1E695E0F8], 0, 0);
    [v12 complete];
  }
}

- (unint64_t)syncErrorCodeFromReadAccessError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqual:*MEMORY[0x1E69939A0]];

  if (v5)
  {
    if ([errorCopy code] == 4)
    {
      v6 = 14;
    }

    else
    {
      v6 = 12;
    }
  }

  else
  {
    v6 = 12;
  }

  return v6;
}

- (id)setUUIDsSupportingInboundSync
{
  if (setUUIDsSupportingInboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setUUIDsSupportingInboundSync];
  }

  v3 = setUUIDsSupportingInboundSync_inboundSetUUIDs;

  return v3;
}

void __52__CCRapportSyncEngine_setUUIDsSupportingInboundSync__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:1];

        if (v8)
        {
          v9 = [v6 setUUID];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setUUIDsSupportingInboundSync_inboundSetUUIDs;
  setUUIDsSupportingInboundSync_inboundSetUUIDs = v10;
}

- (id)setIdentifiersSupportingInboundSync
{
  if (setIdentifiersSupportingInboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setIdentifiersSupportingInboundSync];
  }

  v3 = setIdentifiersSupportingInboundSync_inboundSetIdentifiers;

  return v3;
}

void __58__CCRapportSyncEngine_setIdentifiersSupportingInboundSync__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:1];

        if (v8)
        {
          v9 = [v6 setIdentifier];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setIdentifiersSupportingInboundSync_inboundSetIdentifiers;
  setIdentifiersSupportingInboundSync_inboundSetIdentifiers = v10;
}

- (id)setUUIDsSupportingOutboundSync
{
  if (setUUIDsSupportingOutboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setUUIDsSupportingOutboundSync];
  }

  v3 = setUUIDsSupportingOutboundSync_outboundSetUUIDs;

  return v3;
}

void __53__CCRapportSyncEngine_setUUIDsSupportingOutboundSync__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:2];

        if (v8)
        {
          v9 = [v6 setUUID];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setUUIDsSupportingOutboundSync_outboundSetUUIDs;
  setUUIDsSupportingOutboundSync_outboundSetUUIDs = v10;
}

- (id)setIdentifiersSupportingOutboundSync
{
  if (setIdentifiersSupportingOutboundSync_onceToken != -1)
  {
    [CCRapportSyncEngine setIdentifiersSupportingOutboundSync];
  }

  v3 = setIdentifiersSupportingOutboundSync_outboundSetIdentifiers;

  return v3;
}

void __59__CCRapportSyncEngine_setIdentifiersSupportingOutboundSync__block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 syncPolicy];
        v8 = [v7 supportsTransport:2 direction:2];

        if (v8)
        {
          v9 = [v6 setIdentifier];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = [v0 copy];
  v11 = setIdentifiersSupportingOutboundSync_outboundSetIdentifiers;
  setIdentifiersSupportingOutboundSync_outboundSetIdentifiers = v10;
}

- (BOOL)currentPlatformHasSetsSupportingSync:(id *)sync
{
  setUUIDsSupportingInboundSync = [(CCRapportSyncEngine *)self setUUIDsSupportingInboundSync];
  v5 = [setUUIDsSupportingInboundSync count];
  v6 = v5 != 0;
  if (!v5)
  {
    setUUIDsSupportingOutboundSync = [(CCRapportSyncEngine *)self setUUIDsSupportingOutboundSync];
    v8 = [setUUIDsSupportingOutboundSync count];

    if (v8)
    {
      return 1;
    }

    v10 = MEMORY[0x1E696AEC0];
    [MEMORY[0x1E698E9A0] platform];
    v11 = BMDevicePlatformToString();
    v12 = [v10 stringWithFormat:@"The current device platform (%@) has no inbound or outbound sets configured for sync", v11];
    setUUIDsSupportingInboundSync = CCRapportSyncErrorWithDetails(15, 0, v12);

    CCSetError();
  }

  return v6;
}

- (BOOL)rapportManager:(id)manager isDeviceSupported:(id)supported
{
  v18 = *MEMORY[0x1E69E9840];
  supportedCopy = supported;
  platform = [MEMORY[0x1E698E9A0] platform];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  syncableSetConfigurations = [MEMORY[0x1E6993A70] syncableSetConfigurations];
  v7 = [syncableSetConfigurations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(syncableSetConfigurations);
        }

        syncPolicy = [*(*(&v13 + 1) + 8 * v10) syncPolicy];
        [syncPolicy supportsSyncingWithPlatform:objc_msgSend(supportedCopy overTransport:"platform") inDirection:2 fromPlatform:{3, platform}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [syncableSetConfigurations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return 0;
}

- (void)rapportManager:(id)manager didLoseNearbyCCRapportDevice:(id)device
{
  currentSession = self->_currentSession;
  deviceCopy = device;
  v6 = CCRapportSyncError(7);
  [(CCRapportSyncSession *)currentSession cancelInteractionType:1 withDevice:deviceCopy dueToError:v6];
}

- (void)initWithQueue:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  LODWORD(v8) = 138412546;
  *(&v8 + 4) = objc_opt_class();
  OUTLINED_FUNCTION_2_1();
  *v9 = a1;
  OUTLINED_FUNCTION_3_0(&dword_1DA444000, v2, v3, "%@ cannot be initialized. Failed to read local device UUID: %@", v4, v5, v6, v7, v8, DWORD2(v8), *&v9[2]);
}

- (void)_failToActivateSessionWithError:activationHandler:sessionCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendFetchMergeableDeltasRequest:forInteraction:continueSync:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __83__CCRapportSyncEngine_sendFetchMergeableDeltasRequest_forInteraction_continueSync___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)handleIncomingMergeableDeltaFileTransfer:(uint64_t)a1 fromDevice:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  LODWORD(v11) = 138412546;
  *(&v11 + 4) = a1;
  OUTLINED_FUNCTION_2_1();
  *v12 = v4;
  OUTLINED_FUNCTION_3_0(&dword_1DA444000, v5, v6, "%@: cannot determine set or device from incoming file transfer metadata %@", v7, v8, v9, v10, v11, DWORD2(v11), *&v12[2]);
}

- (void)handleIncomingMergeableDeltaFileTransfer:(uint64_t)a1 fromDevice:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "fileFormatVersion")}];
  LODWORD(v11) = 138412546;
  *(&v11 + 4) = a1;
  OUTLINED_FUNCTION_2_1();
  *v12 = v4;
  OUTLINED_FUNCTION_3_0(&dword_1DA444000, v5, v6, "%@: unsupported file format version %@", v7, v8, v9, v10, v11, DWORD2(v11), *&v12[2]);
}

- (void)addOmittedSetsFromSetDiscovery:forInteraction:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateInRequest:inOptions:inResponseHandler:isInitiatingRequest:outPlatform:.cold.4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __49__CCRapportSyncEngine_setDiscoveryRequestHandler__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end