@interface FPDXPCDomainServicer
- (FPDExtensionSessionProtocol)sessionOrNil;
- (FPDXPCDomainServicer)initWithServer:(id)server providerDomainID:(id)d domain:(id)domain connection:(id)connection;
- (id)__providerIfExists;
- (id)description;
- (id)domainOrNil:(unint64_t *)nil;
- (id)newFileProviderProxy;
- (id)providerOrNilWithReason:(unint64_t *)reason;
- (void)_registerLifetimeExtension;
- (void)_t_setFilePresenterObserver:(id)observer;
- (void)_unregisterLifetimeExtension;
- (void)currentMaterializedSetSyncAnchorWithCompletionHandler:(id)handler;
- (void)currentPendingSetSyncAnchorWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)identifiers indexReason:(int64_t)reason completionHandler:(id)handler;
- (void)didChangeItemID:(id)d completionHandler:(id)handler;
- (void)enumerateMaterializedSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler;
- (void)enumeratePendingSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler;
- (void)evictItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getDiagnosticAttributesForItems:(id)items completionHandler:(id)handler;
- (void)ingestFromCacheItemWithIdentifier:(id)identifier requestedFields:(unint64_t)fields completionHandler:(id)handler;
- (void)invalidate;
- (void)listAvailableTestingOperationsWithCompletionHandler:(id)handler;
- (void)materializeItemWithIdentifier:(id)identifier requestedRange:(_NSRange)range completionHandler:(id)handler;
- (void)reimportItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestDiagnosticCollectionForItemWithIdentifier:(id)identifier errorReason:(id)reason completionHandler:(id)handler;
- (void)resolveItemID:(id)d completionHandler:(id)handler;
- (void)runTestingOperations:(id)operations completionHandler:(id)handler;
- (void)setDomainEjectable:(BOOL)ejectable completionHandler:(id)handler;
- (void)signalErrorResolved:(id)resolved completionHandler:(id)handler;
- (void)startAccessingServiceWithName:(id)name itemID:(id)d completionHandler:(id)handler;
- (void)startExtendingLifetime;
- (void)stateDirectoryWithCompletionHandler:(id)handler;
- (void)subscribeToDownloadProgressUpdates:(id)updates completionHandler:(id)handler;
- (void)subscribeToUploadProgressUpdates:(id)updates completionHandler:(id)handler;
- (void)temporaryDirectoryWithCompletionHandler:(id)handler;
- (void)waitForChangesOnItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)waitForStabilizationWithMode:(unint64_t)mode completionHandler:(id)handler;
@end

@implementation FPDXPCDomainServicer

- (id)__providerIfExists
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  provider = selfCopy->__provider;
  if (provider && ![(FPDProvider *)provider invalidated])
  {
    v4 = selfCopy->__provider;
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)startExtendingLifetime
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FPDXPCDomainServicer.m" lineNumber:215 description:@"it's unsupported to call -_startAccessingProviderEndpointForProtocolName:itemURL:completionHandler: twice"];
}

- (void)_registerLifetimeExtension
{
  sessionOrNil = [(FPDXPCDomainServicer *)self sessionOrNil];
  [sessionOrNil registerLifetimeExtensionForObject:self->_lifetimeExtender];

  self->_isALifetimerExtender = 1;
}

- (FPDExtensionSessionProtocol)sessionOrNil
{
  v2 = [(FPDXPCDomainServicer *)self domainOrNil:0];
  session = [v2 session];

  return session;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fp_obfuscatedProviderDomainID = [(NSString *)self->_providerDomainID fp_obfuscatedProviderDomainID];
  [(FPDXPCDomainServicer *)self pid];
  v6 = FPExecutableNameForProcessIdentifier();
  v7 = [v3 stringWithFormat:@"<%@:%p:%@> for %@[%d]", v4, self, fp_obfuscatedProviderDomainID, v6, -[FPDXPCDomainServicer pid](self, "pid")];

  return v7;
}

- (void)_unregisterLifetimeExtension
{
  if (self->_isALifetimerExtender)
  {
    self->_isALifetimerExtender = 0;
    sessionOrNil = [(FPDXPCDomainServicer *)self sessionOrNil];
    if (sessionOrNil)
    {
      v5 = sessionOrNil;
      [sessionOrNil asyncUnregisterLifetimeExtensionForObject:self->_lifetimeExtender];
      sessionOrNil = v5;
    }
  }
}

- (void)dealloc
{
  [(FPDXPCDomainServicer *)self invalidate];
  v3.receiver = self;
  v3.super_class = FPDXPCDomainServicer;
  [(FPDXPCDomainServicer *)&v3 dealloc];
}

- (void)invalidate
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] invalidating %@", &v2, 0xCu);
}

- (FPDXPCDomainServicer)initWithServer:(id)server providerDomainID:(id)d domain:(id)domain connection:(id)connection
{
  serverCopy = server;
  dCopy = d;
  domainCopy = domain;
  connectionCopy = connection;
  v31.receiver = self;
  v31.super_class = FPDXPCDomainServicer;
  v14 = [(FPDXPCDomainServicer *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_server, serverCopy);
    objc_storeStrong(&v15->_providerDomainID, d);
    objc_storeWeak(&v15->_domain, domainCopy);
    v16 = [domainCopy log];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      log = v15->_log;
      v15->_log = v18;
    }

    else
    {
      log = [dCopy fp_obfuscatedProviderDomainID];
      [log UTF8String];
      v20 = fpfs_create_log_for_provider();
      v21 = v15->_log;
      v15->_log = v20;
    }

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("FPDXPCDomainServicer request queue", v22);
    requestQueue = v15->_requestQueue;
    v15->_requestQueue = v23;

    objc_storeWeak(&v15->_connection, connectionCopy);
    v25 = objc_opt_new();
    lifetimeExtender = v15->_lifetimeExtender;
    v15->_lifetimeExtender = v25;

    -[FPDXPCDomainServicerLifetimeExtender setRequestEffectivePID:](v15->_lifetimeExtender, "setRequestEffectivePID:", [connectionCopy processIdentifier]);
    v27 = MEMORY[0x1E696AEC0];
    v28 = FPExecutableNameForProcessIdentifier();
    v29 = [v27 stringWithFormat:@"servicer for %@", v28];
    [(FPDXPCDomainServicerLifetimeExtender *)v15->_lifetimeExtender setPrettyDescription:v29];
  }

  return v15;
}

- (id)providerOrNilWithReason:(unint64_t *)reason
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  __providerIfExists = [(FPDXPCDomainServicer *)selfCopy __providerIfExists];
  v6 = __providerIfExists;
  if (!__providerIfExists)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_server);

    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&selfCopy->_server);
      extensionManager = [v8 extensionManager];
      fp_toProviderID = [(NSString *)selfCopy->_providerDomainID fp_toProviderID];
      v11 = [extensionManager providerWithIdentifier:fp_toProviderID reason:reason];
      provider = selfCopy->__provider;
      selfCopy->__provider = v11;
    }

    if (selfCopy->_isALifetimerExtender)
    {
      [(FPDXPCDomainServicer *)selfCopy _registerLifetimeExtension];
    }

    v6 = selfCopy->__provider;
  }

  v13 = v6;

  objc_sync_exit(selfCopy);

  return v13;
}

- (id)domainOrNil:(unint64_t *)nil
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_domain);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&selfCopy->_domain);
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v7 = [(FPDXPCDomainServicer *)selfCopy providerOrNilWithReason:nil];
    if (v7)
    {
      fp_toDomainIdentifier = [(NSString *)selfCopy->_providerDomainID fp_toDomainIdentifier];
      v6 = [(FPDXPCDomainServicer *)v7 domainForIdentifier:fp_toDomainIdentifier reason:nil];
    }

    else
    {
      v6 = 0;
    }

    selfCopy = v7;
  }

  return v6;
}

- (id)newFileProviderProxy
{
  sessionOrNil = [(FPDXPCDomainServicer *)self sessionOrNil];
  if (sessionOrNil)
  {
    v4 = [sessionOrNil newFileProviderProxyWithTimeout:-[FPDXPCDomainServicer pid](self pid:{"pid"), 180.0}];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69674B0]);
    v6 = FPProviderNotFoundError();
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (not found)", self->_providerDomainID];
    v4 = [v5 initWithConnection:0 protocol:&unk_1F4C8C390 orError:v6 name:v7 requestPid:{-[FPDXPCDomainServicer pid](self, "pid")}];
  }

  return v4;
}

- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)identifiers indexReason:(int64_t)reason completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  fp_toDomainIdentifier = [(NSString *)self->_providerDomainID fp_toDomainIdentifier];
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1D0;
  block[4] = self;
  v16 = identifiersCopy;
  v18 = handlerCopy;
  reasonCopy = reason;
  v17 = fp_toDomainIdentifier;
  v12 = handlerCopy;
  v13 = fp_toDomainIdentifier;
  v14 = identifiersCopy;
  dispatch_sync(requestQueue, block);
}

void __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newFileProviderProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2;
  v6[3] = &unk_1E83BE1A8;
  v6[4] = *(a1 + 32);
  v5 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 deleteSearchableItemsWithSpotlightDomainIdentifiers:v3 domainIdentifier:v4 indexReason:v5 completionHandler:v6];
}

void __106__FPDXPCDomainServicer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer deleteSearchableItemsWithSpotlightDomainIdentifiers:indexReason:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)didChangeItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = dCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke(uint64_t a1)
{
  v10 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v10];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_241;
    v6[3] = &unk_1E83BE1A8;
    v6[4] = *(a1 + 32);
    v5 = &v7;
    v7 = *(a1 + 48);
    [v2 didChangeItemID:v3 request:v4 completionHandler:v6];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_2;
    v8[3] = &unk_1E83BE1A8;
    v8[4] = *(a1 + 32);
    v5 = &v9;
    v9 = *(a1 + 48);
    v4 = FPProviderNotFoundError();
    __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_2(v8, v4);
  }
}

void __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer didChangeItemID:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __58__FPDXPCDomainServicer_didChangeItemID_completionHandler___block_invoke_241(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer didChangeItemID:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)resolveItemID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = dCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v12];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = *(a1 + 40);
    v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_242;
    v8[3] = &unk_1E83BE220;
    v8[4] = *(a1 + 32);
    v7 = &v9;
    v9 = *(a1 + 48);
    [v4 URLForItemID:v5 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v6 completionHandler:v8];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = *(a1 + 32);
    v7 = &v11;
    v11 = *(a1 + 48);
    v4 = FPProviderNotFoundError();
    __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_2(v10, v4);
  }
}

void __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer resolveItemID:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __56__FPDXPCDomainServicer_resolveItemID_completionHandler___block_invoke_242(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v16 = fpfs_adopt_log();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = FPPopLogSectionForBlock();
    v14 = *(a1 + 32);
    v15 = [v8 url];
    *buf = 134219010;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    v21 = 2080;
    v22 = "[FPDXPCDomainServicer resolveItemID:completionHandler:]_block_invoke";
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  v11 = *(a1 + 40);
  v12 = [v8 url];
  (*(v11 + 16))(v11, v12, v7);

  __fp_pop_log();
}

- (void)setDomainEjectable:(BOOL)ejectable completionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke;
  block[3] = &unk_1E83BE248;
  block[4] = self;
  v10 = handlerCopy;
  ejectableCopy = ejectable;
  v8 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) providerOrNilWithReason:&v13];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) providerDomainID];
    v5 = [v4 fp_toDomainIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_244;
    v9[3] = &unk_1E83BE1A8;
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v7 = &v10;
    v10 = v6;
    [v2 setEjectable:v3 forDomainIdentifier:v5 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v7 = &v12;
    v12 = v8;
    v4 = FPProviderNotFoundError();
    __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_2(v11, v4);
  }
}

void __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer setDomainEjectable:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __61__FPDXPCDomainServicer_setDomainEjectable_completionHandler___block_invoke_244(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained signalProviderChanges];

  v8 = fpfs_adopt_log();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = FPPopLogSectionForBlock();
    v7 = *(a1 + 32);
    *buf = 134218754;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[FPDXPCDomainServicer setDomainEjectable:completionHandler:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)ingestFromCacheItemWithIdentifier:(id)identifier requestedFields:(unint64_t)fields completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke;
  v13[3] = &unk_1E83BE270;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = handlerCopy;
  fieldsCopy = fields;
  v11 = identifierCopy;
  v12 = handlerCopy;
  dispatch_sync(requestQueue, v13);
}

void __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v24];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E69673A0]);
      v7 = [v3 providerDomainID];
      v8 = [v6 initWithProviderDomainID:v7 itemIdentifier:*(a1 + 40)];

      v9 = [v3 defaultBackend];
      v10 = *(a1 + 56);
      v11 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_248;
      v19[3] = &unk_1E83BE1A8;
      v19[4] = *(a1 + 32);
      v20 = *(a1 + 48);
      [v9 ingestFromCacheItemWithID:v8 requestedFields:v10 request:v11 completionHandler:v19];
    }

    else
    {
      v21 = fpfs_adopt_log();
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v16 = FPPopLogSectionForBlock();
        v17 = *(a1 + 32);
        v18 = FPNotSupportedError();
        *buf = 134218754;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        v29 = 2080;
        v30 = "[FPDXPCDomainServicer ingestFromCacheItemWithIdentifier:requestedFields:completionHandler:]_block_invoke";
        v31 = 2112;
        v32 = v18;
        _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v14 = *(a1 + 48);
      v15 = FPNotSupportedError();
      (*(v14 + 16))(v14, v15);

      __fp_pop_log();
    }
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2;
    v22[3] = &unk_1E83BE1A8;
    v22[4] = *(a1 + 32);
    v23 = *(a1 + 48);
    v12 = FPProviderNotFoundError();
    __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2(v22, v12);
  }
}

void __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer ingestFromCacheItemWithIdentifier:requestedFields:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __92__FPDXPCDomainServicer_ingestFromCacheItemWithIdentifier_requestedFields_completionHandler___block_invoke_248(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer ingestFromCacheItemWithIdentifier:requestedFields:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)reimportItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = identifierCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v12];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69673A0]);
    v4 = [v2 providerDomainID];
    v5 = [v3 initWithProviderDomainID:v4 itemIdentifier:*(a1 + 40)];

    v6 = [v2 defaultBackend];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_249;
    v8[3] = &unk_1E83BE1A8;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [v6 reimportItemsBelowItemWithID:v5 markItemDataless:0 completionHandler:v8];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v7 = FPProviderNotFoundError();
    __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(v10, v7);
  }
}

void __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer reimportItemsBelowItemWithIdentifier:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __79__FPDXPCDomainServicer_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_249(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer reimportItemsBelowItemWithIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)evictItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = identifierCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v13];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69673A0]);
    v4 = [v2 providerDomainID];
    v5 = [v3 initWithProviderDomainID:v4 itemIdentifier:*(a1 + 40)];

    v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    [v6 setProviderInitiated:1];
    v7 = [v2 defaultBackend];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_250;
    v9[3] = &unk_1E83BE1A8;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    [v7 evictItemWithID:v5 evictionReason:4 request:v6 completionHandler:v9];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83BE1A8;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    v8 = FPProviderNotFoundError();
    __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_2(v11, v8);
  }
}

void __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer evictItemWithIdentifier:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __66__FPDXPCDomainServicer_evictItemWithIdentifier_completionHandler___block_invoke_250(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer evictItemWithIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)materializeItemWithIdentifier:(id)identifier requestedRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke;
  block[3] = &unk_1E83BE298;
  v16 = handlerCopy;
  v17 = location;
  v18 = length;
  block[4] = self;
  v15 = identifierCopy;
  v12 = identifierCopy;
  v13 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v20];
  if (v2)
  {
    if (*(a1 + 56) == 0x7FFFFFFFFFFFFFFFLL || (fpfs_supports_partial_materialization() & 1) != 0)
    {
      v3 = objc_alloc(MEMORY[0x1E69673A0]);
      v4 = [v2 providerDomainID];
      v5 = [v3 initWithProviderDomainID:v4 itemIdentifier:*(a1 + 40)];

      v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
      [v6 setProviderInitiated:1];
      v7 = [v2 defaultBackend];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_251;
      v15[3] = &unk_1E83BE1A8;
      v15[4] = *(a1 + 32);
      v16 = *(a1 + 48);
      [v7 materializeItemWithID:v5 requestedRange:*(a1 + 56) request:*(a1 + 64) completionHandler:{v6, v15}];
    }

    else
    {
      v17 = fpfs_adopt_log();
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = FPPopLogSectionForBlock();
        v13 = *(a1 + 32);
        v14 = FPNotSupportedError();
        *buf = 134218754;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        v25 = 2080;
        v26 = "[FPDXPCDomainServicer materializeItemWithIdentifier:requestedRange:completionHandler:]_block_invoke";
        v27 = 2112;
        v28 = v14;
        _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v10 = *(a1 + 48);
      v11 = FPNotSupportedError();
      (*(v10 + 16))(v10, v11);

      __fp_pop_log();
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_2;
    v18[3] = &unk_1E83BE1A8;
    v18[4] = *(a1 + 32);
    v19 = *(a1 + 48);
    v8 = FPProviderNotFoundError();
    __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_2(v18, v8);
  }
}

void __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer materializeItemWithIdentifier:requestedRange:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __87__FPDXPCDomainServicer_materializeItemWithIdentifier_requestedRange_completionHandler___block_invoke_251(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer materializeItemWithIdentifier:requestedRange:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)enumerateMaterializedSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler
{
  anchorCopy = anchor;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke;
  v13[3] = &unk_1E83BE270;
  v13[4] = self;
  v14 = anchorCopy;
  v15 = handlerCopy;
  sizeCopy = size;
  v11 = anchorCopy;
  v12 = handlerCopy;
  dispatch_sync(requestQueue, v13);
}

void __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v12];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_252;
    v8[3] = &unk_1E83BE2C0;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v6 = &v9;
    v7 = *(a1 + 56);
    v9 = *(a1 + 48);
    [v4 enumerateMaterializedSetFromSyncAnchor:v5 suggestedBatchSize:v7 completionHandler:v8];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = *(a1 + 32);
    v6 = &v11;
    v11 = *(a1 + 48);
    v4 = FPProviderNotFoundError();
    __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(v10, v4);
  }
}

void __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134220034;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer enumerateMaterializedSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = MEMORY[0x1E695E0F0];
    v16 = 2112;
    v17 = MEMORY[0x1E695E0F0];
    v18 = 1024;
    v19 = 0;
    v20 = 2112;
    v21 = 0;
    v22 = 2112;
    v23 = 0;
    v24 = 2112;
    v25 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %@, %@, %@", buf, 0x58u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __100__FPDXPCDomainServicer_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_252(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6, void *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21 = fpfs_adopt_log();
  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = FPPopLogSectionForBlock();
    v20 = *(a1 + 32);
    *buf = 134220034;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    v26 = 2080;
    v27 = "[FPDXPCDomainServicer enumerateMaterializedSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke";
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    v32 = 1024;
    v33 = a4;
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    _os_log_debug_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %@, %@, %@", buf, 0x58u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)currentMaterializedSetSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(requestQueue, v7);
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v12];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_254;
    v8[3] = &unk_1E83BE2E8;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v6 = &v9;
    v9 = v5;
    [v4 currentMaterializedSetSyncAnchorWithCompletionHandler:v8];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE1A8;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v6 = &v11;
    v11 = v7;
    v4 = FPProviderNotFoundError();
    __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2(v10, v4);
  }
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_254(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer currentMaterializedSetSyncAnchorWithCompletionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)enumeratePendingSetFromSyncAnchor:(id)anchor suggestedBatchSize:(int64_t)size completionHandler:(id)handler
{
  anchorCopy = anchor;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke;
  v13[3] = &unk_1E83BE270;
  v13[4] = self;
  v14 = anchorCopy;
  v15 = handlerCopy;
  sizeCopy = size;
  v11 = anchorCopy;
  v12 = handlerCopy;
  dispatch_sync(requestQueue, v13);
}

void __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v12];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_256;
    v8[3] = &unk_1E83BE338;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v6 = &v9;
    v7 = *(a1 + 56);
    v9 = *(a1 + 48);
    [v4 enumeratePendingSetFromSyncAnchor:v5 suggestedBatchSize:v7 completionHandler:v8];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = *(a1 + 32);
    v6 = &v11;
    v11 = *(a1 + 48);
    v4 = FPProviderNotFoundError();
    __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(v10, v4);
  }
}

void __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134220546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer enumeratePendingSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = MEMORY[0x1E695E0F0];
    v16 = 2112;
    v17 = MEMORY[0x1E695E0F0];
    v18 = 1024;
    v19 = 0;
    v20 = 1024;
    v21 = 0;
    v22 = 2048;
    v23 = 0;
    v24 = 2112;
    v25 = 0;
    v26 = 2112;
    v27 = 0;
    v28 = 2112;
    v29 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %{BOOL}d, %lf, %@, %@, %@", buf, 0x68u);
  }

  (*(*(a1 + 40) + 16))(0.0);
  __fp_pop_log();
}

void __95__FPDXPCDomainServicer_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler___block_invoke_256(uint64_t a1, void *a2, void *a3, int a4, int a5, void *a6, void *a7, void *a8, double a9)
{
  v48 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v25 = fpfs_adopt_log();
  v22 = fp_current_or_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = FPPopLogSectionForBlock();
    v24 = *(a1 + 32);
    *buf = 134220546;
    v27 = v23;
    v28 = 2112;
    v29 = v24;
    v30 = 2080;
    v31 = "[FPDXPCDomainServicer enumeratePendingSetFromSyncAnchor:suggestedBatchSize:completionHandler:]_block_invoke";
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    v36 = 1024;
    v37 = a4;
    v38 = 1024;
    v39 = a5;
    v40 = 2048;
    v41 = a9;
    v42 = 2112;
    v43 = v19;
    v44 = 2112;
    v45 = v20;
    v46 = 2112;
    v47 = v21;
    _os_log_debug_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %{BOOL}d, %{BOOL}d, %lf, %@, %@, %@", buf, 0x68u);
  }

  (*(*(a1 + 40) + 16))(a9);
  __fp_pop_log();
}

- (void)currentPendingSetSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(requestQueue, v7);
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v12];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_258;
    v8[3] = &unk_1E83BE360;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v6 = &v9;
    v9 = v5;
    [v4 currentPendingSetSyncAnchorWithCompletionHandler:v8];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E83BE1A8;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v6 = &v11;
    v11 = v7;
    v4 = FPProviderNotFoundError();
    __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2(v10, v4);
  }
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    FPPopLogSectionForBlock();
    __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))(0.0);
  __fp_pop_log();
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_258(uint64_t a1, int a2, void *a3, double a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v11 = fpfs_adopt_log();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = FPPopLogSectionForBlock();
    v10 = *(a1 + 32);
    *buf = 134219266;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2080;
    v17 = "[FPDXPCDomainServicer currentPendingSetSyncAnchorWithCompletionHandler:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = v7;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %lf, %@", buf, 0x3Au);
  }

  (*(*(a1 + 40) + 16))(a4);
  __fp_pop_log();
}

- (void)waitForChangesOnItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = identifierCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v21];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v3 defaultBackend];
      v7 = *(a1 + 40);
      v8 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_262;
      v16[3] = &unk_1E83BE1A8;
      v16[4] = *(a1 + 32);
      v17 = *(a1 + 48);
      [v6 waitForChangesOnItemsBelowItemWithIdentifier:v7 request:v8 completionHandler:v16];
    }

    else
    {
      v18 = fpfs_adopt_log();
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = FPPopLogSectionForBlock();
        v14 = *(a1 + 32);
        v15 = FPNotSupportedError();
        *buf = 134218754;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        v26 = 2080;
        v27 = "[FPDXPCDomainServicer waitForChangesOnItemsBelowItemWithIdentifier:completionHandler:]_block_invoke";
        v28 = 2112;
        v29 = v15;
        _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
      }

      v11 = *(a1 + 48);
      v12 = FPNotSupportedError();
      (*(v11 + 16))(v11, v12);

      __fp_pop_log();
    }
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
    v19[3] = &unk_1E83BE1A8;
    v19[4] = *(a1 + 32);
    v20 = *(a1 + 48);
    v9 = FPProviderNotFoundError();
    __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(v19, v9);
  }
}

void __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer waitForChangesOnItemsBelowItemWithIdentifier:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __87__FPDXPCDomainServicer_waitForChangesOnItemsBelowItemWithIdentifier_completionHandler___block_invoke_262(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer waitForChangesOnItemsBelowItemWithIdentifier:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)waitForStabilizationWithMode:(unint64_t)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke;
  block[3] = &unk_1E83BE388;
  block[4] = self;
  v10 = handlerCopy;
  modeCopy = mode;
  v8 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke(uint64_t a1)
{
  v14 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v14];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_263;
    v10[3] = &unk_1E83BE1A8;
    v10[4] = *(a1 + 32);
    v8 = &v11;
    v11 = v6;
    [v4 waitForStabilizationForRequest:v5 mode:v7 completionHandler:v10];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_2;
    v12[3] = &unk_1E83BE1A8;
    v9 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v8 = &v13;
    v13 = v9;
    v4 = FPProviderNotFoundError();
    __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_2(v12, v4);
  }
}

void __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer waitForStabilizationWithMode:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __71__FPDXPCDomainServicer_waitForStabilizationWithMode_completionHandler___block_invoke_263(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer waitForStabilizationWithMode:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)signalErrorResolved:(id)resolved completionHandler:(id)handler
{
  resolvedCopy = resolved;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = resolvedCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = resolvedCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke(id *a1)
{
  v16 = 0;
  v2 = [a1[4] domainOrNil:&v16];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_264;
    block[3] = &unk_1E83BE3B0;
    v10 = v3;
    v5 = a1[5];
    v6 = a1[4];
    v11 = v5;
    v12 = v6;
    v13 = a1[6];
    dispatch_async(v4, block);

    v7 = v10;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2;
    v14[3] = &unk_1E83BE1A8;
    v14[4] = a1[4];
    v15 = a1[6];
    v8 = FPProviderNotFoundError();
    __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2(v14, v8);

    v7 = v15;
  }
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer signalErrorResolved:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_264(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultBackend];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) defaultBackend];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2_267;
    v14[3] = &unk_1E83BE1A8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v14[4] = *(a1 + 48);
    v15 = v6;
    [v4 signalErrorResolved:v5 completionHandler:v14];
  }

  else
  {
    v13 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock();
      v11 = *(a1 + 48);
      v12 = FPNotSupportedError();
      *buf = 134218754;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2080;
      v21 = "[FPDXPCDomainServicer signalErrorResolved:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v12;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v8 = *(a1 + 56);
    v9 = FPNotSupportedError();
    (*(v8 + 16))(v8, v9);

    __fp_pop_log();
  }
}

void __62__FPDXPCDomainServicer_signalErrorResolved_completionHandler___block_invoke_2_267(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer signalErrorResolved:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)temporaryDirectoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(requestQueue, v7);
}

void __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v23];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 volume];
    v20 = 0;
    v5 = [v4 temporaryDirectoryURL:v3 error:&v20];
    v6 = v20;

    if (v5)
    {
      v19 = v6;
      v7 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v19];
      v8 = v19;

      v17 = fpfs_adopt_log();
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = FPPopLogSectionForBlock();
        v14 = *(a1 + 32);
        *buf = 134219010;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v28 = 2080;
        v29 = "[FPDXPCDomainServicer temporaryDirectoryWithCompletionHandler:]_block_invoke";
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v8;
        _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();
    }

    else
    {
      v18 = fpfs_adopt_log();
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = FPPopLogSectionForBlock();
        v16 = *(a1 + 32);
        *buf = 134219010;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2080;
        v29 = "[FPDXPCDomainServicer temporaryDirectoryWithCompletionHandler:]_block_invoke";
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = v6;
        _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();

      v8 = v6;
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke_2;
    v21[3] = &unk_1E83BE1A8;
    v10 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v10;
    v11 = FPProviderNotFoundError();
    __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke_2(v21, v11);
  }
}

void __64__FPDXPCDomainServicer_temporaryDirectoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer temporaryDirectoryWithCompletionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)stateDirectoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(requestQueue, v7);
}

void __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v23];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 volume];
    v20 = 0;
    v5 = [v4 stateDirectoryURL:v3 error:&v20];
    v6 = v20;

    if (v5)
    {
      v19 = v6;
      v7 = [MEMORY[0x1E6967408] wrapperWithURL:v5 readonly:0 error:&v19];
      v8 = v19;

      v17 = fpfs_adopt_log();
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = FPPopLogSectionForBlock();
        v14 = *(a1 + 32);
        *buf = 134219010;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v28 = 2080;
        v29 = "[FPDXPCDomainServicer stateDirectoryWithCompletionHandler:]_block_invoke";
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v8;
        _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();
    }

    else
    {
      v18 = fpfs_adopt_log();
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = FPPopLogSectionForBlock();
        v16 = *(a1 + 32);
        *buf = 134219010;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2080;
        v29 = "[FPDXPCDomainServicer stateDirectoryWithCompletionHandler:]_block_invoke";
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = v6;
        _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      (*(*(a1 + 40) + 16))();
      __fp_pop_log();

      v8 = v6;
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke_2;
    v21[3] = &unk_1E83BE1A8;
    v10 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v10;
    v11 = FPProviderNotFoundError();
    __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke_2(v21, v11);
  }
}

void __60__FPDXPCDomainServicer_stateDirectoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer stateDirectoryWithCompletionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)listAvailableTestingOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(requestQueue, v7);
}

void __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v34];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v45[0] = *MEMORY[0x1E69675A8];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v5 = [WeakRetained fp_hasOneOfEntitlements:v4 nonSandboxedAccess:0 logLevel:2];

    if (v5)
    {
      v6 = [v2 nsDomain];
      v7 = ([v6 testingModes] & 2) == 0;

      if (v7)
      {
        v31 = fpfs_adopt_log();
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v23 = FPPopLogSectionForBlock();
          v24 = *(a1 + 32);
          v25 = FPNotSupportedError();
          *buf = 134219010;
          v36 = v23;
          v37 = 2112;
          v38 = v24;
          v39 = 2080;
          v40 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = v25;
          _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      else
      {
        v16 = [v2 defaultBackend];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = [v2 defaultBackend];
          v19 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_272;
          v29[3] = &unk_1E83BE3D8;
          v29[4] = *(a1 + 32);
          v30 = *(a1 + 40);
          [v18 listAvailableTestingOperationsWithRequest:v19 completionHandler:v29];

          goto LABEL_11;
        }

        v31 = fpfs_adopt_log();
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v26 = FPPopLogSectionForBlock();
          v27 = *(a1 + 32);
          v28 = FPNotSupportedError();
          *buf = 134219010;
          v36 = v26;
          v37 = 2112;
          v38 = v27;
          v39 = 2080;
          v40 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = v28;
          _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      v9 = *(a1 + 40);
      v10 = FPNotSupportedError();
      (*(v9 + 16))(v9, 0, v10);

      __fp_pop_log();
    }

    else
    {
      v31 = fpfs_adopt_log();
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v20 = FPPopLogSectionForBlock();
        v21 = *(a1 + 32);
        v22 = FPNotPermittedError();
        *buf = 134219010;
        v36 = v20;
        v37 = 2112;
        v38 = v21;
        v39 = 2080;
        v40 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
        v41 = 2112;
        v42 = 0;
        v43 = 2112;
        v44 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v14 = *(a1 + 40);
      v15 = FPNotPermittedError();
      (*(v14 + 16))(v14, 0, v15);

      __fp_pop_log();
    }
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_2;
    v32[3] = &unk_1E83BE1A8;
    v11 = *(a1 + 40);
    v32[4] = *(a1 + 32);
    v33 = v11;
    v12 = FPProviderNotFoundError();
    __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_2(v32, v12);
  }

LABEL_11:
}

void __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __76__FPDXPCDomainServicer_listAvailableTestingOperationsWithCompletionHandler___block_invoke_272(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer listAvailableTestingOperationsWithCompletionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)runTestingOperations:(id)operations completionHandler:(id)handler
{
  operationsCopy = operations;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = operationsCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = operationsCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v34];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v45[0] = *MEMORY[0x1E69675A8];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v5 = [WeakRetained fp_hasOneOfEntitlements:v4 nonSandboxedAccess:0 logLevel:2];

    if (v5)
    {
      v6 = [v2 nsDomain];
      v7 = ([v6 testingModes] & 2) == 0;

      if (v7)
      {
        v31 = fpfs_adopt_log();
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v23 = FPPopLogSectionForBlock();
          v24 = *(a1 + 32);
          v25 = FPNotSupportedError();
          *buf = 134219010;
          v36 = v23;
          v37 = 2112;
          v38 = v24;
          v39 = 2080;
          v40 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = v25;
          _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      else
      {
        v15 = [v2 defaultBackend];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [v2 defaultBackend];
          v18 = *(a1 + 40);
          v19 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_276;
          v29[3] = &unk_1E83BE400;
          v29[4] = *(a1 + 32);
          v30 = *(a1 + 48);
          [v17 runTestingOperations:v18 request:v19 completionHandler:v29];

          goto LABEL_11;
        }

        v31 = fpfs_adopt_log();
        v8 = fp_current_or_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v26 = FPPopLogSectionForBlock();
          v27 = *(a1 + 32);
          v28 = FPNotSupportedError();
          *buf = 134219010;
          v36 = v26;
          v37 = 2112;
          v38 = v27;
          v39 = 2080;
          v40 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
          v41 = 2112;
          v42 = 0;
          v43 = 2112;
          v44 = v28;
          _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }
      }

      v9 = *(a1 + 48);
      v10 = FPNotSupportedError();
      (*(v9 + 16))(v9, 0, v10);

      __fp_pop_log();
    }

    else
    {
      v31 = fpfs_adopt_log();
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v20 = FPPopLogSectionForBlock();
        v21 = *(a1 + 32);
        v22 = FPNotPermittedError();
        *buf = 134219010;
        v36 = v20;
        v37 = 2112;
        v38 = v21;
        v39 = 2080;
        v40 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
        v41 = 2112;
        v42 = 0;
        v43 = 2112;
        v44 = v22;
        _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v13 = *(a1 + 48);
      v14 = FPNotPermittedError();
      (*(v13 + 16))(v13, 0, v14);

      __fp_pop_log();
    }
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_2;
    v32[3] = &unk_1E83BE1A8;
    v32[4] = *(a1 + 32);
    v33 = *(a1 + 48);
    v11 = FPProviderNotFoundError();
    __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_2(v32, v11);
  }

LABEL_11:
}

void __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __63__FPDXPCDomainServicer_runTestingOperations_completionHandler___block_invoke_276(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer runTestingOperations:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)subscribeToUploadProgressUpdates:(id)updates completionHandler:(id)handler
{
  updatesCopy = updates;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = updatesCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = updatesCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke(id *a1)
{
  v16 = 0;
  v2 = [a1[4] domainOrNil:&v16];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_278;
    block[3] = &unk_1E83BE3B0;
    v10 = v3;
    v5 = a1[5];
    v6 = a1[4];
    v11 = v5;
    v12 = v6;
    v13 = a1[6];
    dispatch_async(v4, block);

    v7 = v10;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2;
    v14[3] = &unk_1E83BE1A8;
    v14[4] = a1[4];
    v15 = a1[6];
    v8 = FPProviderNotFoundError();
    __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2(v14, v8);

    v7 = v15;
  }
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer subscribeToUploadProgressUpdates:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_278(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultBackend];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) defaultBackend];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2_281;
    v14[3] = &unk_1E83BE428;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v14[4] = *(a1 + 48);
    v16 = v6;
    v15 = *(a1 + 40);
    [v4 subscribeToUploadProgressUpdates:v5 completionHandler:v14];
  }

  else
  {
    v13 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock();
      v11 = *(a1 + 48);
      v12 = FPNotSupportedError();
      *buf = 134218754;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2080;
      v22 = "[FPDXPCDomainServicer subscribeToUploadProgressUpdates:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v12;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v8 = *(a1 + 56);
    v9 = FPNotSupportedError();
    (*(v8 + 16))(v8, v9);

    __fp_pop_log();
  }
}

void __75__FPDXPCDomainServicer_subscribeToUploadProgressUpdates_completionHandler___block_invoke_2_281(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v7 = fpfs_adopt_log();
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = FPPopLogSectionForBlock();
      v6 = *(a1 + 32);
      *buf = 134218754;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2080;
      v13 = "[FPDXPCDomainServicer subscribeToUploadProgressUpdates:completionHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  }
}

- (void)subscribeToDownloadProgressUpdates:(id)updates completionHandler:(id)handler
{
  updatesCopy = updates;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = updatesCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = updatesCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke(id *a1)
{
  v16 = 0;
  v2 = [a1[4] domainOrNil:&v16];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_282;
    block[3] = &unk_1E83BE3B0;
    v10 = v3;
    v5 = a1[5];
    v6 = a1[4];
    v11 = v5;
    v12 = v6;
    v13 = a1[6];
    dispatch_async(v4, block);

    v7 = v10;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2;
    v14[3] = &unk_1E83BE1A8;
    v14[4] = a1[4];
    v15 = a1[6];
    v8 = FPProviderNotFoundError();
    __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2(v14, v8);

    v7 = v15;
  }
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer subscribeToDownloadProgressUpdates:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_282(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) defaultBackend];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) defaultBackend];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2_285;
    v14[3] = &unk_1E83BE428;
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v14[4] = *(a1 + 48);
    v16 = v6;
    v15 = *(a1 + 40);
    [v4 subscribeToDownloadProgressUpdates:v5 completionHandler:v14];
  }

  else
  {
    v13 = fpfs_adopt_log();
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = FPPopLogSectionForBlock();
      v11 = *(a1 + 48);
      v12 = FPNotSupportedError();
      *buf = 134218754;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2080;
      v22 = "[FPDXPCDomainServicer subscribeToDownloadProgressUpdates:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v12;
      _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v8 = *(a1 + 56);
    v9 = FPNotSupportedError();
    (*(v8 + 16))(v8, v9);

    __fp_pop_log();
  }
}

void __77__FPDXPCDomainServicer_subscribeToDownloadProgressUpdates_completionHandler___block_invoke_2_285(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v7 = fpfs_adopt_log();
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = FPPopLogSectionForBlock();
      v6 = *(a1 + 32);
      *buf = 134218754;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2080;
      v13 = "[FPDXPCDomainServicer subscribeToDownloadProgressUpdates:completionHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v3;
      _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    __fp_pop_log();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  }
}

- (void)startAccessingServiceWithName:(id)name itemID:(id)d completionHandler:(id)handler
{
  nameCopy = name;
  dCopy = d;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke;
  v15[3] = &unk_1E83BE4A0;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = handlerCopy;
  v12 = nameCopy;
  v13 = dCopy;
  v14 = handlerCopy;
  dispatch_sync(requestQueue, v15);
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke(uint64_t a1)
{
  v15 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v15];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 defaultBackend];
    v5 = *(a1 + 40);
    v6 = +[FPDRequest requestForPID:](FPDRequest, "requestForPID:", [*(a1 + 32) pid]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286;
    v9[3] = &unk_1E83BE478;
    v9[4] = *(a1 + 32);
    v7 = &v12;
    v12 = *(a1 + 56);
    v10 = *(a1 + 48);
    v11 = v3;
    [v4 fetchServicesForItemID:v5 allowRestrictedSources:1 request:v6 completionHandler:v9];

    v8 = v10;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_2;
    v13[3] = &unk_1E83BE1A8;
    v13[4] = *(a1 + 32);
    v7 = &v14;
    v14 = *(a1 + 56);
    v8 = FPProviderNotFoundError();
    __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_2(v13, v8);
  }
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219266;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = 0;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286(uint64_t a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v35 + 1) + 8 * i) serviceName];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v18 = objc_opt_new();
            [v18 setRequestEffectivePID:{objc_msgSend(*(*(a1 + 32) + 56), "requestEffectivePID")}];
            v19 = MEMORY[0x1E696AEC0];
            v20 = *(a1 + 40);
            [*(*(a1 + 32) + 56) requestEffectivePID];
            v21 = FPExecutableNameForProcessIdentifier();
            v22 = [v19 stringWithFormat:@"service %@ for %@[%u]", v20, v21, objc_msgSend(*(*(a1 + 32) + 56), "requestEffectivePID")];
            [v18 setPrettyDescription:v22];

            v23 = [*(a1 + 48) session];
            objc_initWeak(&location, v23);

            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_294;
            v33[3] = &unk_1E83BE450;
            objc_copyWeak(&v34, &location);
            [v18 setStopBlock:v33];
            if (!v18)
            {
              __assert_rtn("[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke_2", "FPDXPCDomainServicer.m", 701, "extender");
            }

            v24 = [*(a1 + 48) session];
            [v24 registerLifetimeExtensionForObject:v18];

            v32 = fpfs_adopt_log();
            v25 = fp_current_or_default_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v28 = FPPopLogSectionForBlock();
              v29 = *(a1 + 32);
              *buf = 134219266;
              v42 = v28;
              v43 = 2112;
              v44 = v29;
              v45 = 2080;
              v46 = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke_2";
              v47 = 2112;
              v48 = v7;
              v49 = 2112;
              v50 = v18;
              v51 = 2112;
              v52 = 0;
              _os_log_debug_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
            }

            (*(*(a1 + 56) + 16))();
            __fp_pop_log();

            objc_destroyWeak(&v34);
            objc_destroyWeak(&location);

            goto LABEL_24;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    location = fpfs_adopt_log();
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      FPPopLogSectionForBlock();
      __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286_cold_1();
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

  else
  {
    if (!v9)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286_cold_2(v26);
      }

      v10 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"error"];
    }

    location = fpfs_adopt_log();
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = FPPopLogSectionForBlock();
      v31 = *(a1 + 32);
      *buf = 134219266;
      v42 = v30;
      v43 = 2112;
      v44 = v31;
      v45 = 2080;
      v46 = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke";
      v47 = 2112;
      v48 = 0;
      v49 = 2112;
      v50 = 0;
      v51 = 2112;
      v52 = v10;
      _os_log_debug_impl(&dword_1CEFC7000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", buf, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
    __fp_pop_log();
  }

LABEL_24:
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_294(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unregisterLifetimeExtensionForObject:v3];
}

- (void)getDiagnosticAttributesForItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke;
  block[3] = &unk_1E83BE1F8;
  v12 = itemsCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = itemsCopy;
  v10 = handlerCopy;
  dispatch_sync(requestQueue, block);
}

void __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke(uint64_t a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v28];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v39[0] = *MEMORY[0x1E6967560];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    v5 = [WeakRetained fp_hasOneOfEntitlements:v4 nonSandboxedAccess:0 logLevel:2];

    if (v5)
    {
      v6 = [v2 defaultBackend];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [v2 defaultBackend];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_301;
        v23[3] = &unk_1E83BE3D8;
        v9 = *(a1 + 40);
        v23[4] = *(a1 + 32);
        v24 = *(a1 + 48);
        [v8 getDiagnosticAttributesForItems:v9 completionHandler:v23];
      }

      else
      {
        v25 = fpfs_adopt_log();
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v20 = FPPopLogSectionForBlock();
          v21 = *(a1 + 32);
          v22 = FPNotSupportedError();
          *buf = 134219010;
          v30 = v20;
          v31 = 2112;
          v32 = v21;
          v33 = 2080;
          v34 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke";
          v35 = 2112;
          v36 = 0;
          v37 = 2112;
          v38 = v22;
          _os_log_debug_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
        }

        v15 = *(a1 + 48);
        v16 = FPNotSupportedError();
        (*(v15 + 16))(v15, 0, v16);

        __fp_pop_log();
      }
    }

    else
    {
      v25 = fpfs_adopt_log();
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = FPPopLogSectionForBlock();
        v18 = *(a1 + 32);
        v19 = FPNotPermittedError();
        *buf = 134219010;
        v30 = v17;
        v31 = 2112;
        v32 = v18;
        v33 = 2080;
        v34 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke";
        v35 = 2112;
        v36 = 0;
        v37 = 2112;
        v38 = v19;
        _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
      }

      v12 = *(a1 + 48);
      v13 = FPNotPermittedError();
      (*(v12 + 16))(v12, 0, v13);

      __fp_pop_log();
    }
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_2;
    v26[3] = &unk_1E83BE1A8;
    v26[4] = *(a1 + 32);
    v27 = *(a1 + 48);
    v10 = FPProviderNotFoundError();
    __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_2(v26, v10);
  }
}

void __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134219010;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __74__FPDXPCDomainServicer_getDiagnosticAttributesForItems_completionHandler___block_invoke_301(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v10 = fpfs_adopt_log();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = FPPopLogSectionForBlock();
    v9 = *(a1 + 32);
    *buf = 134219010;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2080;
    v16 = "[FPDXPCDomainServicer getDiagnosticAttributesForItems:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@", buf, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

- (void)_t_setFilePresenterObserver:(id)observer
{
  observerCopy = observer;
  requestQueue = self->_requestQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(requestQueue, v7);
}

void __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke(uint64_t a1)
{
  v10 = 0;
  v2 = [*(a1 + 32) providerOrNilWithReason:&v10];
  if (v2)
  {
    [*(*(a1 + 32) + 48) finishObserving];
    v3 = [v2 domainForIdentifier:*MEMORY[0x1E6967178] reason:0];
    v4 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v3 path:"filePresenters"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke_3;
    v8[3] = &unk_1E83BE4C8;
    v9 = *(a1 + 40);
    v5 = [v4 addObserverBlock:v8];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;
  }

  else
  {
    v3 = FPProviderNotFoundError();
  }
}

void __52__FPDXPCDomainServicer__t_setFilePresenterObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a1;
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = v2;
  v4 = [v2 allValues];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 presentedItemURL];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = fp_current_or_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v9;
            _os_log_error_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_ERROR, "[ERROR] nil presentedItemURL for presenter: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  [*(v12 + 32) observePresentedFilesDidChange:v3];
}

- (void)requestDiagnosticCollectionForItemWithIdentifier:(id)identifier errorReason:(id)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  requestQueue = self->_requestQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke;
  v9[3] = &unk_1E83BE310;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_sync(requestQueue, v9);
}

void __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v2 = [*(a1 + 32) domainOrNil:&v14];
  if (v2)
  {
    v11 = fpfs_adopt_log();
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = FPPopLogSectionForBlock();
      v9 = *(a1 + 32);
      v10 = FPNotSupportedError();
      *buf = 134218754;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2080;
      v20 = "[FPDXPCDomainServicer requestDiagnosticCollectionForItemWithIdentifier:errorReason:completionHandler:]_block_invoke";
      v21 = 2112;
      v22 = v10;
      _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
    }

    v4 = *(a1 + 40);
    v5 = FPNotSupportedError();
    (*(v4 + 16))(v4, v5);

    __fp_pop_log();
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke_2;
    v12[3] = &unk_1E83BE1A8;
    v6 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v6;
    v7 = FPProviderNotFoundError();
    __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke_2(v12, v7);
  }
}

void __103__FPDXPCDomainServicer_requestDiagnosticCollectionForItemWithIdentifier_errorReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = FPPopLogSectionForBlock();
    v6 = *(a1 + 32);
    *buf = 134218754;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "[FPDXPCDomainServicer requestDiagnosticCollectionForItemWithIdentifier:errorReason:completionHandler:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", buf, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
  __fp_pop_log();
}

void __78__FPDXPCDomainServicer_currentMaterializedSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8523e-34, v0, v1, v2);
  *(v3 + 24) = "[FPDXPCDomainServicer currentMaterializedSetSyncAnchorWithCompletionHandler:]_block_invoke_2";
  *(v3 + 32) = v4;
  *(v3 + 34) = 0;
  _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@", v5, 0x2Au);
}

void __73__FPDXPCDomainServicer_currentPendingSetSyncAnchorWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8526e-34, v0, v1, v2);
  *(v3 + 24) = "[FPDXPCDomainServicer currentPendingSetSyncAnchorWithCompletionHandler:]_block_invoke_2";
  *(v3 + 32) = 1024;
  *(v3 + 34) = 0;
  *(v3 + 38) = 2048;
  *(v3 + 40) = 0;
  *(v3 + 48) = v4;
  *(v3 + 50) = 0;
  _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %{BOOL}d, %lf, %@", v5, 0x3Au);
}

void __79__FPDXPCDomainServicer_startAccessingServiceWithName_itemID_completionHandler___block_invoke_286_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_0(3.8526e-34, v0, v1, v2);
  *(v3 + 24) = "[FPDXPCDomainServicer startAccessingServiceWithName:itemID:completionHandler:]_block_invoke";
  *(v3 + 32) = v4;
  *(v3 + 34) = 0;
  *(v3 + 42) = v4;
  *(v3 + 44) = 0;
  *(v3 + 52) = v4;
  *(v3 + 54) = 0;
  _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@, reply of %s %@, %@, %@", v5, 0x3Eu);
}

@end