@interface FPSpotlightIndexer
+ (id)indexerPropertyOfClass:(Class)class forKey:(id)key supportURL:(id)l;
+ (void)setIndexerProperty:(id)property forKey:(id)key supportURL:(id)l;
- (FPSpotlightDropIndexDelegate)dropIndexDelegate;
- (FPSpotlightIndexer)initWithDomain:(id)domain providerDomain:(id)providerDomain indexName:(id)name log:(id)log supportURL:(id)l dropIndexDelegate:(id)delegate;
- (FPSpotlightIndexer)initWithDomain:(id)domain providerDomain:(id)providerDomain log:(id)log supportURL:(id)l dropIndexDelegate:(id)delegate;
- (FPXDomainContext)domainContext;
- (id)_fetchClientStateIfNeeded;
- (id)description;
- (void)_fetchCurrentIndexingAnchorWithCompletionHandler:(id)handler;
- (void)_indexOneBatchFromAnchor:(id)anchor toAnchor:(id)toAnchor updatedItems:(id)items deletedItems:(id)deletedItems completionHandler:(id)handler;
- (void)_indexOneBatchWithCompletionHandler:(id)handler;
- (void)_indexOutOfBandUpdatedItems:(id)items deletedItems:(id)deletedItems indexReason:(int64_t)reason completionHandler:(id)handler;
- (void)_invalidate;
- (void)clearIndexState;
- (void)dealloc;
- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)identifiers indexReason:(int64_t)reason completionHandler:(id)handler;
- (void)dropIndexAndInvalidateWithDropReason:(unint64_t)reason completionHandler:(id)handler;
- (void)dropIndexInQueue:(id)queue dropReason:(unint64_t)reason completionHandler:(id)handler;
- (void)dumpStateTo:(id)to;
- (void)fetchCurrentIndexingAnchorWithCompletionHandler:(id)handler;
- (void)indexOneBatchFromAnchor:(id)anchor toAnchor:(id)toAnchor updatedItems:(id)items deletedItems:(id)deletedItems completionHandler:(id)handler;
- (void)indexOneBatchWithCompletionHandler:(id)handler;
- (void)indexOutOfBandUpdatedItems:(id)items deletedItems:(id)deletedItems indexReason:(int64_t)reason completionHandler:(id)handler;
- (void)invalidate;
- (void)invalidateAsync;
- (void)learnNewIndexState:(id)state;
- (void)pause;
- (void)resume;
@end

@implementation FPSpotlightIndexer

- (FPXDomainContext)domainContext
{
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);

  return WeakRetained;
}

- (id)_fetchClientStateIfNeeded
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = fpfs_adopt_log(self->_log);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v35 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v10 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v11 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v11 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v14 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v14 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v34 = 0;
  v15 = [currentPersona copyCurrentPersonaContextWithError:&v34];
  v16 = v34;
  v17 = v35;
  v35 = v15;

  if (v16)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v19 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v19 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v22 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v22)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v30 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      v37 = personaIdentifier4;
      v38 = 2112;
      v39 = v22;
      _os_log_error_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  if (self->_clientState == 1)
  {
    self->_clientState = 2;
    v24 = [FPSpotlightFetchClientStateOperation alloc];
    index = self->_index;
    indexName = self->_indexName;
    spotlightDomainIdentifier = [(NSFileProviderDomain *)self->_domain spotlightDomainIdentifier];
    v28 = [(FPSpotlightFetchClientStateOperation *)v24 initWithIndexer:self index:index indexName:indexName spotlightDomainIdentifier:spotlightDomainIdentifier reason:@"indexing one batch" supportURL:self->_supportURL];

    [(FPOperation *)v28 setCallbackQueue:self->_workloop];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __47__FPSpotlightIndexer__fetchClientStateIfNeeded__block_invoke;
    v33[3] = &unk_1E793A560;
    v33[4] = self;
    [(FPOperation *)v28 setFinishedBlock:v33];
    [(FPSpotlightFetchClientStateOperation *)v28 setQualityOfService:17];
    objc_storeStrong(&self->_fetchStateOperation, v28);
  }

  else
  {
    v28 = 0;
  }

  _FPRestorePersona(&v35);

  return v28;
}

void __47__FPSpotlightIndexer__fetchClientStateIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  v7 = *(a1 + 32);
  if (a3)
  {
    [v7 clearIndexState];
  }

  else
  {
    [v7 learnNewIndexState:v8];
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 104));
}

- (FPSpotlightIndexer)initWithDomain:(id)domain providerDomain:(id)providerDomain indexName:(id)name log:(id)log supportURL:(id)l dropIndexDelegate:(id)delegate
{
  domainCopy = domain;
  providerDomainCopy = providerDomain;
  nameCopy = name;
  lCopy = l;
  delegateCopy = delegate;
  if ([getCSSearchableIndexClass() isIndexingAvailable])
  {
    v40.receiver = self;
    v40.super_class = FPSpotlightIndexer;
    v19 = [(FPSpotlightIndexer *)&v40 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_domain, domain);
      objc_storeStrong(&v20->_providerDomain, providerDomain);
      objc_storeStrong(&v20->_indexName, name);
      objc_storeStrong(&v20->_supportURL, l);
      identifier = [domainCopy identifier];
      v22 = identifier;
      if (identifier)
      {
        v23 = identifier;
      }

      else
      {
        v23 = @"NSFileProviderDomainDefaultIdentifier";
      }

      objc_storeStrong(&v20->_domainID, v23);

      v24 = dispatch_workloop_create("spotlight-indexer");
      workloop = v20->_workloop;
      v20->_workloop = v24;

      v26 = objc_opt_new();
      operationQueue = v20->_operationQueue;
      v20->_operationQueue = v26;

      [(NSOperationQueue *)v20->_operationQueue setMaxConcurrentOperationCount:1];
      objc_storeWeak(&v20->_dropIndexDelegate, delegateCopy);
      v28 = objc_alloc(getCSSearchableIndexClass());
      indexName = v20->_indexName;
      v30 = *MEMORY[0x1E696A388];
      topLevelBundleIdentifier = [providerDomainCopy topLevelBundleIdentifier];
      v32 = [v28 initWithName:indexName protectionClass:v30 bundleIdentifier:topLevelBundleIdentifier];
      index = v20->_index;
      v20->_index = v32;

      v20->_clientState = 1;
      v34 = dispatch_semaphore_create(0);
      clientStateSemaphore = v20->_clientStateSemaphore;
      v20->_clientStateSemaphore = v34;

      v20->_paused = 0;
      v36 = dispatch_semaphore_create(0);
      pausedStateSemaphore = v20->_pausedStateSemaphore;
      v20->_pausedStateSemaphore = v36;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FPSpotlightIndexer)initWithDomain:(id)domain providerDomain:(id)providerDomain log:(id)log supportURL:(id)l dropIndexDelegate:(id)delegate
{
  domainCopy = domain;
  providerDomainCopy = providerDomain;
  logCopy = log;
  lCopy = l;
  delegateCopy = delegate;
  v17 = MEMORY[0x1E696AEC0];
  providerID = [providerDomainCopy providerID];
  v19 = [v17 stringWithFormat:@"com.apple.FileProvider/%@", providerID];

  if (domainCopy)
  {
    spotlightDomainIdentifier = [domainCopy spotlightDomainIdentifier];
    v21 = [v19 stringByAppendingPathComponent:spotlightDomainIdentifier];

    v19 = v21;
  }

  v22 = [(FPSpotlightIndexer *)self initWithDomain:domainCopy providerDomain:providerDomainCopy indexName:v19 log:logCopy supportURL:lCopy dropIndexDelegate:delegateCopy];

  return v22;
}

- (void)dealloc
{
  if (self->_vendorEnumerator)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPSpotlightIndexer.m" lineNumber:194 description:@"should call -invalidate"];
  }

  if (self->_paused)
  {
    dispatch_semaphore_signal(self->_pausedStateSemaphore);
  }

  v5.receiver = self;
  v5.super_class = FPSpotlightIndexer;
  [(FPSpotlightIndexer *)&v5 dealloc];
}

- (id)description
{
  if (self->_clientState == 3)
  {
    v3 = &stru_1F1F94B20;
  }

  else
  {
    v3 = @" not-ready";
  }

  if ([(NSOperationQueue *)self->_operationQueue isSuspended])
  {
    v4 = @" suspended";
  }

  else
  {
    v4 = &stru_1F1F94B20;
  }

  if (self->_paused)
  {
    v5 = @" paused";
  }

  else
  {
    v5 = &stru_1F1F94B20;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%@ %p %@%@%@ [%lu ops]>", objc_opt_class(), self->_indexName, self, v3, v4, v5, -[NSOperationQueue operationCount](self->_operationQueue, "operationCount")];
}

- (void)clearIndexState
{
  dispatch_assert_queue_V2(self->_workloop);
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightIndexer clearIndexState];
  }

  lastIndexState = self->_lastIndexState;
  self->_lastIndexState = 0;
  self->_clientState = 1;
}

- (void)learnNewIndexState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_workloop);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightIndexer learnNewIndexState:];
  }

  lastIndexState = self->_lastIndexState;
  self->_lastIndexState = stateCopy;
  self->_clientState = 3;
}

- (void)_indexOneBatchWithCompletionHandler:(id)handler
{
  v72 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v4 = fpfs_adopt_log(self->_log);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v67 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v11 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v12 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v15 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v66 = 0;
  v16 = [currentPersona copyCurrentPersonaContextWithError:&v66];
  v17 = v66;
  v18 = v67;
  v67 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v20 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v23 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v44 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      *&buf[4] = personaIdentifier4;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  if (self->_vendorEnumerator || [(FPProviderDomain *)self->_providerDomain isUsingFPFS])
  {
    goto LABEL_19;
  }

  v25 = objc_loadWeakRetained(&self->_domainContext);
  if (!v25)
  {
    __assert_rtn("[FPSpotlightIndexer _indexOneBatchWithCompletionHandler:]", "FPSpotlightIndexer.m", 273, "self->_domainContext");
  }

  domainContext = [(FPSpotlightIndexer *)self domainContext];
  vendorInstance = [domainContext vendorInstance];
  v28 = +[NSFileProviderRequest requestFromTheSystem];
  v65 = 0;
  v29 = [vendorInstance enumeratorForContainerItemIdentifier:@"NSFileProviderWorkingSetContainerItemIdentifier" request:v28 error:&v65];
  _fetchClientStateIfNeeded = v65;
  vendorEnumerator = self->_vendorEnumerator;
  self->_vendorEnumerator = v29;

  if (self->_vendorEnumerator)
  {

LABEL_19:
    _fetchClientStateIfNeeded = [(FPSpotlightIndexer *)self _fetchClientStateIfNeeded];
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v61 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v69 = __Block_byref_object_copy__2;
    v70 = __Block_byref_object_dispose__2;
    v71 = 0;
    v32 = [[FPSpotlightFetchOneBatchFromWorkingSetOperation alloc] initWithIndexer:self queue:self->_workloop];
    [(FPSpotlightFetchOneBatchFromWorkingSetOperation *)v32 setQualityOfService:17];
    if (self->_fetchStateOperation)
    {
      [(FPSpotlightFetchOneBatchFromWorkingSetOperation *)v32 addDependency:?];
    }

    v33 = [[FPSpotlightIndexOneBatchOperation alloc] initWithIndexer:self isInitialIndexing:0 isOutOfBandIndexing:0 queue:self->_workloop];
    [(FPSpotlightIndexOneBatchOperation *)v33 setIndexReason:1];
    objc_initWeak(&location, self);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke_84;
    v54[3] = &unk_1E793A5B0;
    objc_copyWeak(&v58, &location);
    v56 = buf;
    v57 = v60;
    v55 = handlerCopy;
    [(FPOperation *)v33 setFinishedBlock:v54];
    [(FPSpotlightIndexOneBatchOperation *)v33 setQualityOfService:17];
    if (self->_fetchStateOperation)
    {
      [(FPSpotlightIndexOneBatchOperation *)v33 addDependency:?];
    }

    objc_initWeak(&from, v32);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke_3;
    v48[3] = &unk_1E793A5D8;
    objc_copyWeak(&v52, &from);
    v34 = v33;
    v49 = v34;
    v50 = v60;
    v51 = buf;
    [(FPOperation *)v32 setFinishedBlock:v48];
    if (_fetchClientStateIfNeeded)
    {
      v35 = fp_current_or_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
      }

      [(NSOperationQueue *)self->_operationQueue addOperation:_fetchClientStateIfNeeded];
    }

    v36 = fp_current_or_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
    }

    operationQueue = self->_operationQueue;
    p_operationQueue = &self->_operationQueue;
    [(NSOperationQueue *)operationQueue addOperation:v32];
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
    }

    [(NSOperationQueue *)*p_operationQueue addOperation:v34];
    objc_destroyWeak(&v52);
    objc_destroyWeak(&from);

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v60, 8);
    goto LABEL_32;
  }

  if ([_fetchClientStateIfNeeded fp_isFileProviderError:-1000])
  {
    v40 = fp_current_or_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      fp_prettyDescription = [_fetchClientStateIfNeeded fp_prettyDescription];
      *buf = 138412290;
      *&buf[4] = fp_prettyDescription;
      _os_log_impl(&dword_1AAAE1000, v40, OS_LOG_TYPE_DEFAULT, "[WARNING] can't create vendor enumerator: %@", buf, 0xCu);
    }

    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke;
    v62[3] = &unk_1E7939800;
    v64 = handlerCopy;
    _fetchClientStateIfNeeded = _fetchClientStateIfNeeded;
    v63 = _fetchClientStateIfNeeded;
    [(FPSpotlightIndexer *)self dropIndexWithDropReason:12 completionHandler:v62];
  }

  else
  {
    v42 = fp_current_or_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      fp_prettyDescription2 = [_fetchClientStateIfNeeded fp_prettyDescription];
      [(FPSpotlightIndexer *)fp_prettyDescription2 _indexOneBatchWithCompletionHandler:buf, v42];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, _fetchClientStateIfNeeded);
  }

LABEL_32:

  _FPRestorePersona(&v67);
}

void __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke_84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  v6 = [v4 fp_isFileProviderError:-1000];
  if ([v4 fp_isFileProviderError:-1002])
  {
    v7 = 1;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = [v4 fp_isFileProviderError:-1002];
    if (v4)
    {
      goto LABEL_7;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_7:
    v8 = v6 | v7;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v8 = 1;
  if (v6)
  {
LABEL_8:
    v9 = 0;
    if ((v8 & 1) == 0)
    {
LABEL_9:
      (*(*(a1 + 32) + 16))();
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = v7 | *(*(*(a1 + 48) + 8) + 24);
  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (v6)
  {
    v10 = 12;
  }

  else
  {
    v10 = 8;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E793A588;
  v13 = *(a1 + 32);
  v14 = v9 & 1;
  v12 = v4;
  [WeakRetained dropIndexWithDropReason:v10 completionHandler:v11];

LABEL_16:
}

void __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    __58__FPSpotlightIndexer__indexOneBatchWithCompletionHandler___block_invoke_3_cold_1();
  }

  v7 = WeakRetained;
  v8 = [WeakRetained updatedItems];
  [*(a1 + 32) setUpdatedItems:v8];

  v9 = [v7 deletedItemIDs];
  [*(a1 + 32) setDeletedItemIDs:v9];

  [*(a1 + 32) setPassExpectedState:1];
  v10 = [v7 nextAnchor];
  [*(a1 + 32) setNextAnchor:v10];

  [*(a1 + 32) setFetchError:v5];
  *(*(*(a1 + 40) + 8) + 24) = [v7 hasMore];
  v11 = [v7 nextAnchor];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (void)indexOneBatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  domainContext = [(FPSpotlightIndexer *)self domainContext];
  workloop = self->_workloop;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FPSpotlightIndexer_indexOneBatchWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7939210;
  v10 = domainContext;
  selfCopy = self;
  v12 = handlerCopy;
  v7 = handlerCopy;
  v8 = domainContext;
  dispatch_async(workloop, block);
}

uint64_t __57__FPSpotlightIndexer_indexOneBatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 40) + 152) isUsingFPFS])
  {
    __57__FPSpotlightIndexer_indexOneBatchWithCompletionHandler___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _indexOneBatchWithCompletionHandler:v3];
}

- (void)_indexOneBatchFromAnchor:(id)anchor toAnchor:(id)toAnchor updatedItems:(id)items deletedItems:(id)deletedItems completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  toAnchorCopy = toAnchor;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  handlerCopy = handler;
  v13 = fpfs_adopt_log(self->_log);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v58 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v19 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  v20 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v20 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v23 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v23 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v57 = 0;
  v24 = [currentPersona copyCurrentPersonaContextWithError:&v57];
  v25 = v57;
  v26 = v58;
  v58 = v24;

  if (v25)
  {
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v28 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v28 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v31 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v31)
  {
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v41 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *location = 138412546;
      *&location[4] = personaIdentifier4;
      v60 = 2112;
      v61 = v31;
      _os_log_error_impl(&dword_1AAAE1000, v32, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", location, 0x16u);
    }
  }

LABEL_14:
  _fetchClientStateIfNeeded = [(FPSpotlightIndexer *)self _fetchClientStateIfNeeded];
  v34 = [[FPSpotlightIndexOneBatchOperation alloc] initWithIndexer:self isInitialIndexing:0 isOutOfBandIndexing:0 queue:self->_workloop];
  [(FPSpotlightIndexOneBatchOperation *)v34 setUpdatedItems:itemsCopy];
  [(FPSpotlightIndexOneBatchOperation *)v34 setSearchableItems:0];
  [(FPSpotlightIndexOneBatchOperation *)v34 setDeletedItemIDs:deletedItemsCopy];
  [(FPSpotlightIndexOneBatchOperation *)v34 setFetchError:0];
  [(FPSpotlightIndexOneBatchOperation *)v34 setIndexReason:0];
  [(FPSpotlightIndexOneBatchOperation *)v34 setPassExpectedState:1];
  v35 = [[FPSpotlightIndexState alloc] initWithPage:toAnchorCopy changeToken:anchorCopy];
  dataRepresentation = [(FPSpotlightIndexState *)v35 dataRepresentation];
  [(FPSpotlightIndexOneBatchOperation *)v34 setNextAnchor:dataRepresentation];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke;
  v55[3] = &unk_1E793A600;
  v37 = anchorCopy;
  v56 = v37;
  [(FPSpotlightIndexOneBatchOperation *)v34 setCanIndexFromCurrentState:v55];
  objc_initWeak(location, self);
  objc_initWeak(&from, v34);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_90;
  v50[3] = &unk_1E793A628;
  objc_copyWeak(&v52, location);
  v38 = v45;
  v51 = v38;
  objc_copyWeak(&v53, &from);
  [(FPOperation *)v34 setFinishedBlock:v50];
  [(FPSpotlightIndexOneBatchOperation *)v34 setQualityOfService:17];
  if (self->_fetchStateOperation)
  {
    [(FPSpotlightIndexOneBatchOperation *)v34 addDependency:?];
  }

  if (_fetchClientStateIfNeeded)
  {
    v39 = fp_current_or_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
    }

    [(NSOperationQueue *)self->_operationQueue addOperation:_fetchClientStateIfNeeded];
  }

  v40 = fp_current_or_default_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v34];
  objc_destroyWeak(&v53);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  _FPRestorePersona(&v58);
}

uint64_t __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [FPSpotlightIndexState stateWithData:v4];
    v6 = v5;
    if (v5 && ([v5 lastPage], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      if (*(a1 + 32))
      {
        v8 = [v6 lastPage];
        v9 = tokensAreEqual(v8, *(a1 + 32));

        if (v9)
        {
          v10 = 1;
          goto LABEL_16;
        }

        v15 = [v6 lastChangeToken];
        v16 = tokensAreEqual(v15, *(a1 + 32));

        v17 = fp_current_or_default_log();
        v11 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_1();
        }
      }

      else
      {
        v13 = [v6 lastChangeToken];

        v14 = fp_current_or_default_log();
        v11 = v14;
        if (!v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
LABEL_28:
            __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_2();
          }

LABEL_29:
          v10 = 1;
          goto LABEL_15;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_3();
        }
      }
    }

    else
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_5();
      }
    }

    v10 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (!*(a1 + 32))
  {
    v10 = 1;
    goto LABEL_18;
  }

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_6();
  }

  v10 = 0;
LABEL_16:

LABEL_18:
  return v10;
}

void __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_90(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v8 = [v6 fp_isFileProviderError:-1000];
    if ([v6 fp_isFileProviderError:-1002] & 1) != 0 || ((v8 | objc_msgSend(v6, "fp_isFileProviderError:", -1002)))
    {
      if (v8)
      {
        v9 = 12;
      }

      else
      {
        v9 = 8;
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_2;
      v14[3] = &unk_1E7939800;
      v16 = a1[4];
      v15 = v6;
      [WeakRetained dropIndexWithDropReason:v9 completionHandler:v14];
    }

    else
    {
      v10 = objc_loadWeakRetained(a1 + 6);
      if (!v10)
      {
        __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_90_cold_1();
      }

      v11 = v10;
      v12 = a1[4];
      v13 = [v10 searchableItems];
      v12[2](v12, v13, v6);
    }
  }
}

- (void)indexOneBatchFromAnchor:(id)anchor toAnchor:(id)toAnchor updatedItems:(id)items deletedItems:(id)deletedItems completionHandler:(id)handler
{
  anchorCopy = anchor;
  toAnchorCopy = toAnchor;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  handlerCopy = handler;
  workloop = self->_workloop;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __99__FPSpotlightIndexer_indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke;
  v23[3] = &unk_1E793A650;
  v23[4] = self;
  v24 = anchorCopy;
  v25 = toAnchorCopy;
  v26 = itemsCopy;
  v27 = deletedItemsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = deletedItemsCopy;
  v20 = itemsCopy;
  v21 = toAnchorCopy;
  v22 = anchorCopy;
  dispatch_async(workloop, v23);
}

uint64_t __99__FPSpotlightIndexer_indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke(void *a1)
{
  if (([*(a1[4] + 152) isUsingFPFS] & 1) == 0)
  {
    __99__FPSpotlightIndexer_indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_1();
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];

  return [v2 _indexOneBatchFromAnchor:v3 toAnchor:v4 updatedItems:v5 deletedItems:v6 completionHandler:v7];
}

- (void)_indexOutOfBandUpdatedItems:(id)items deletedItems:(id)deletedItems indexReason:(int64_t)reason completionHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  handlerCopy = handler;
  v10 = fpfs_adopt_log(self->_log);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v49 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v16 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v17 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v17 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v20 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v20 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v48 = 0;
  v21 = [currentPersona copyCurrentPersonaContextWithError:&v48];
  v22 = v48;
  v23 = v49;
  v49 = v21;

  if (v22)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v25 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v25 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v28 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v28)
  {
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v37 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      v51 = personaIdentifier4;
      v52 = 2112;
      v53 = v28;
      _os_log_error_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  _fetchClientStateIfNeeded = [(FPSpotlightIndexer *)self _fetchClientStateIfNeeded];
  [_fetchClientStateIfNeeded setQualityOfService:qos_class_self()];
  v31 = [[FPSpotlightIndexOneBatchOperation alloc] initWithIndexer:self isInitialIndexing:0 isOutOfBandIndexing:1 queue:self->_workloop];
  [(FPSpotlightIndexOneBatchOperation *)v31 setUpdatedItems:itemsCopy];
  [(FPSpotlightIndexOneBatchOperation *)v31 setDeletedItemIDs:deletedItemsCopy];
  [(FPSpotlightIndexOneBatchOperation *)v31 setFetchError:0];
  [(FPSpotlightIndexOneBatchOperation *)v31 setNextAnchor:0];
  [(FPSpotlightIndexOneBatchOperation *)v31 setIndexReason:reason];
  [(FPSpotlightIndexOneBatchOperation *)v31 setQualityOfService:qos_class_self()];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __93__FPSpotlightIndexer__indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke;
  v44[3] = &unk_1E793A678;
  v32 = itemsCopy;
  v45 = v32;
  v33 = deletedItemsCopy;
  v46 = v33;
  v34 = handlerCopy;
  v47 = v34;
  [(FPOperation *)v31 setFinishedBlock:v44];
  if (_fetchClientStateIfNeeded)
  {
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
    }

    [(NSOperationQueue *)self->_operationQueue addOperation:_fetchClientStateIfNeeded];
  }

  v36 = fp_current_or_default_log();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v31];
  _FPRestorePersona(&v49);
}

void __93__FPSpotlightIndexer__indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __93__FPSpotlightIndexer__indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke_cold_1(a1, v4, v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)indexOutOfBandUpdatedItems:(id)items deletedItems:(id)deletedItems indexReason:(int64_t)reason completionHandler:(id)handler
{
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  handlerCopy = handler;
  domainContext = [(FPSpotlightIndexer *)self domainContext];
  workloop = self->_workloop;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__FPSpotlightIndexer_indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke;
  v19[3] = &unk_1E793A6A0;
  v20 = domainContext;
  selfCopy = self;
  v22 = itemsCopy;
  v23 = deletedItemsCopy;
  v24 = handlerCopy;
  reasonCopy = reason;
  v15 = handlerCopy;
  v16 = deletedItemsCopy;
  v17 = itemsCopy;
  v18 = domainContext;
  dispatch_async(workloop, v19);
}

- (void)_fetchCurrentIndexingAnchorWithCompletionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v4 = fpfs_adopt_log(self->_log);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v39 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v11 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v12 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v15 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v15 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v38 = 0;
  v16 = [currentPersona copyCurrentPersonaContextWithError:&v38];
  v17 = v38;
  v18 = v39;
  v39 = v16;

  if (v17)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v20 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v20 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v23 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v23)
  {
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v31 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *location = 138412546;
      *&location[4] = personaIdentifier4;
      v41 = 2112;
      v42 = v23;
      _os_log_error_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", location, 0x16u);
    }
  }

LABEL_14:
  _fetchClientStateIfNeeded = [(FPSpotlightIndexer *)self _fetchClientStateIfNeeded];
  objc_initWeak(location, self);
  v26 = MEMORY[0x1E696AAE0];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71__FPSpotlightIndexer__fetchCurrentIndexingAnchorWithCompletionHandler___block_invoke;
  v35[3] = &unk_1E793A6C8;
  objc_copyWeak(&v37, location);
  v27 = handlerCopy;
  v36 = v27;
  v28 = [v26 blockOperationWithBlock:v35];
  [v28 setQualityOfService:17];
  [v28 setName:@"ReturnCurrentAnchor"];
  if (self->_fetchStateOperation)
  {
    [v28 addDependency:?];
  }

  if (_fetchClientStateIfNeeded)
  {
    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
    }

    [(NSOperationQueue *)self->_operationQueue addOperation:_fetchClientStateIfNeeded];
  }

  v30 = fp_current_or_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightIndexer _indexOneBatchWithCompletionHandler:];
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v28];
  objc_destroyWeak(&v37);
  objc_destroyWeak(location);

  _FPRestorePersona(&v39);
}

void __71__FPSpotlightIndexer__fetchCurrentIndexingAnchorWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = WeakRetained[8];
    if (v3)
    {
      if ([v3 length])
      {
        v4 = [FPSpotlightIndexState stateWithData:v9[8]];
        if (v4)
        {
          v5 = v4;
          v6 = *(a1 + 32);
          v7 = [v4 lastPage];
          (*(v6 + 16))(v6, v7, 0);

LABEL_9:
          WeakRetained = v9;
          goto LABEL_10;
        }
      }

      v8 = *(*(a1 + 32) + 16);
    }

    else
    {
      v8 = *(*(a1 + 32) + 16);
    }

    v8();
    goto LABEL_9;
  }

LABEL_10:
}

- (void)fetchCurrentIndexingAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workloop = self->_workloop;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__FPSpotlightIndexer_fetchCurrentIndexingAnchorWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939128;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workloop, v7);
}

uint64_t __70__FPSpotlightIndexer_fetchCurrentIndexingAnchorWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 152) isUsingFPFS] & 1) == 0)
  {
    __70__FPSpotlightIndexer_fetchCurrentIndexingAnchorWithCompletionHandler___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _fetchCurrentIndexingAnchorWithCompletionHandler:v3];
}

- (void)pause
{
  workloop = self->_workloop;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__FPSpotlightIndexer_pause__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async_and_wait(workloop, block);
}

void __27__FPSpotlightIndexer_pause__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = fpfs_adopt_log(*(*(a1 + 32) + 160));
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];

  v44 = 0;
  v5 = [v4 userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained((*v1 + 168));
  v7 = [WeakRetained domain];
  v8 = [v7 personaIdentifier];
  v9 = v8;
  if (v5 == v8)
  {

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  v10 = objc_loadWeakRetained((*v1 + 168));
  v11 = [v10 domain];
  v12 = [v11 personaIdentifier];
  v13 = [v5 isEqualToString:v12];

  if ((v13 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v43 = 0;
  v14 = [v4 copyCurrentPersonaContextWithError:&v43];
  v15 = v43;
  v16 = v44;
  v44 = v14;

  if (v15)
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v18 = objc_loadWeakRetained((*v1 + 168));
  v19 = [v18 domain];
  v20 = [v19 personaIdentifier];
  v21 = [v4 generateAndRestorePersonaContextWithPersonaUniqueString:v20];

  if (v21)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_loadWeakRetained((*v1 + 168));
      v39 = [v38 domain];
      v40 = [v39 personaIdentifier];
      *location = 138412546;
      *&location[4] = v40;
      v46 = 2112;
      v47 = v21;
      _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", location, 0x16u);
    }
  }

LABEL_14:
  if (*(*v1 + 120) == 1)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __27__FPSpotlightIndexer_pause__block_invoke_cold_3(v1, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else
  {
    *(*v1 + 120) = 1;
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __27__FPSpotlightIndexer_pause__block_invoke_cold_2(v1, v30, v31, v32, v33, v34, v35, v36);
    }

    objc_initWeak(location, *v1);
    v37 = *(*v1 + 48);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __27__FPSpotlightIndexer_pause__block_invoke_97;
    v41[3] = &unk_1E7939010;
    objc_copyWeak(&v42, location);
    [v37 addBarrierBlock:v41];
    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
  }

  _FPRestorePersona(&v44);
}

void __27__FPSpotlightIndexer_pause__block_invoke_97(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_semaphore_wait(WeakRetained[16], 0xFFFFFFFFFFFFFFFFLL);
    WeakRetained = v2;
    *(v2 + 120) = 0;
  }
}

- (void)resume
{
  workloop = self->_workloop;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__FPSpotlightIndexer_resume__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async_and_wait(workloop, block);
}

void __28__FPSpotlightIndexer_resume__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = fpfs_adopt_log(*(*(a1 + 32) + 160));
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];

  v34 = 0;
  v5 = [v4 userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained((*v1 + 168));
  v7 = [WeakRetained domain];
  v8 = [v7 personaIdentifier];
  v9 = v8;
  if (v5 == v8)
  {

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  v10 = objc_loadWeakRetained((*v1 + 168));
  v11 = [v10 domain];
  v12 = [v11 personaIdentifier];
  v13 = [v5 isEqualToString:v12];

  if ((v13 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v33 = 0;
  v14 = [v4 copyCurrentPersonaContextWithError:&v33];
  v15 = v33;
  v16 = v34;
  v34 = v14;

  if (v15)
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v18 = objc_loadWeakRetained((*v1 + 168));
  v19 = [v18 domain];
  v20 = [v19 personaIdentifier];
  v21 = [v4 generateAndRestorePersonaContextWithPersonaUniqueString:v20];

  if (v21)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_loadWeakRetained((*v1 + 168));
      v31 = [v30 domain];
      v32 = [v31 personaIdentifier];
      *buf = 138412546;
      v36 = v32;
      v37 = 2112;
      v38 = v21;
      _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  if (*(*v1 + 120) == 1)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __28__FPSpotlightIndexer_resume__block_invoke_cold_2(v1, v23, v24, v25, v26, v27, v28, v29);
    }

    dispatch_semaphore_signal(*(*v1 + 128));
  }

  _FPRestorePersona(&v34);
}

- (void)_invalidate
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = fpfs_adopt_log(self->_log);
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v30 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  WeakRetained = objc_loadWeakRetained(&self->_domainContext);
  domain = [WeakRetained domain];
  personaIdentifier = [domain personaIdentifier];
  v10 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v11 = objc_loadWeakRetained(&self->_domainContext);
  domain2 = [v11 domain];
  personaIdentifier2 = [domain2 personaIdentifier];
  v14 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v14 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v29 = 0;
  v15 = [currentPersona copyCurrentPersonaContextWithError:&v29];
  v16 = v29;
  v17 = v30;
  v30 = v15;

  if (v16)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightIndexer _fetchClientStateIfNeeded];
    }
  }

  v19 = objc_loadWeakRetained(&self->_domainContext);
  domain3 = [v19 domain];
  personaIdentifier3 = [domain3 personaIdentifier];
  v22 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v22)
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_loadWeakRetained(&self->_domainContext);
      domain4 = [v26 domain];
      personaIdentifier4 = [domain4 personaIdentifier];
      *buf = 138412546;
      v32 = personaIdentifier4;
      v33 = 2112;
      v34 = v22;
      _os_log_error_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  dispatch_assert_queue_V2(self->_workloop);
  v24 = fp_current_or_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightIndexer _invalidate];
  }

  self->_isCanceled = 1;
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSFileProviderEnumerator *)self->_vendorEnumerator invalidate];
  vendorEnumerator = self->_vendorEnumerator;
  self->_vendorEnumerator = 0;

  _FPRestorePersona(&v30);
}

- (void)invalidate
{
  workloop = self->_workloop;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__FPSpotlightIndexer_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async_and_wait(workloop, block);
}

- (void)invalidateAsync
{
  workloop = self->_workloop;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FPSpotlightIndexer_invalidateAsync__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(workloop, block);
}

- (void)deleteSearchableItemsWithSpotlightDomainIdentifiers:(id)identifiers indexReason:(int64_t)reason completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  date = [MEMORY[0x1E695DF00] date];
  index = self->_index;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke;
  v15[3] = &unk_1E7939C78;
  v15[4] = self;
  v16 = identifiersCopy;
  v17 = date;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = date;
  v14 = identifiersCopy;
  [(CSSearchableIndex *)index deleteSearchableItemsWithDomainIdentifiers:v14 reason:reason completionHandler:v15];
}

void __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2;
  block[3] = &unk_1E793A6F0;
  v12 = v3;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

uint64_t __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2_cold_1(a1, v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2_cold_2(a1, v5);
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)dropIndexInQueue:(id)queue dropReason:(unint64_t)reason completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  workloop = self->_workloop;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__FPSpotlightIndexer_dropIndexInQueue_dropReason_completionHandler___block_invoke;
  v13[3] = &unk_1E793A010;
  v15 = handlerCopy;
  reasonCopy = reason;
  v13[4] = self;
  v14 = queueCopy;
  v11 = queueCopy;
  v12 = handlerCopy;
  fp_dispatch_async_with_logs(workloop, v13);
}

void __68__FPSpotlightIndexer_dropIndexInQueue_dropReason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) spotlightDomainIdentifier];
  if (v2)
  {
    v3 = [*(*(a1 + 32) + 144) spotlightDomainIdentifier];
  }

  else
  {
    v3 = @"NSFileProviderDomainDefaultIdentifier";
  }

  v4 = v3;

  v5 = [FPSpotlightDropIndexOperation alloc];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  v8 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((v6 + 176));
  v10 = [(FPSpotlightDropIndexOperation *)v5 initWithIndexer:v6 index:v7 spotlightDomainIdentifier:v4 dropReason:v8 delegate:WeakRetained];

  [(FPOperation *)v10 setCallbackQueue:*(*(a1 + 32) + 40)];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68__FPSpotlightIndexer_dropIndexInQueue_dropReason_completionHandler___block_invoke_2;
  v15 = &unk_1E793A718;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  [(FPOperation *)v10 setFinishedBlock:&v12];
  v11 = *(a1 + 40);
  if (v11)
  {
    [v11 addOperation:{v10, v12, v13, v14, v15, v16}];
  }

  else
  {
    [(FPOperation *)v10 start:v12];
  }
}

void __68__FPSpotlightIndexer_dropIndexInQueue_dropReason_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__FPSpotlightIndexer_dropIndexInQueue_dropReason_completionHandler___block_invoke_2_cold_1();
    }
  }

  [*(a1 + 32) clearIndexState];
  (*(*(a1 + 40) + 16))();
}

- (void)dropIndexAndInvalidateWithDropReason:(unint64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__FPSpotlightIndexer_dropIndexAndInvalidateWithDropReason_completionHandler___block_invoke;
  v8[3] = &unk_1E7939170;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FPSpotlightIndexer *)self dropIndexWithDropReason:reason completionHandler:v8];
}

void __77__FPSpotlightIndexer_dropIndexAndInvalidateWithDropReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)dumpStateTo:(id)to
{
  toCopy = to;
  if (self->_clientState == 2)
  {
    clientStateSemaphore = self->_clientStateSemaphore;
    v6 = dispatch_time(0, 5000000000);
    v7 = dispatch_semaphore_wait(clientStateSemaphore, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = dispatch_semaphore_create(0);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__2;
  v23[4] = __Block_byref_object_dispose__2;
  v24 = 0;
  workloop = self->_workloop;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPSpotlightIndexer_dumpStateTo___block_invoke;
  block[3] = &unk_1E7939198;
  v21 = v8;
  v22 = v23;
  block[4] = self;
  v10 = v8;
  dispatch_async(workloop, block);
  v11 = dispatch_time(0, 5000000000);
  v12 = dispatch_semaphore_wait(v10, v11);
  v13 = self->_workloop;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__FPSpotlightIndexer_dumpStateTo___block_invoke_3;
  v15[3] = &unk_1E793A208;
  v18 = v23;
  v19 = v12 | v7;
  v16 = toCopy;
  selfCopy = self;
  v14 = toCopy;
  dispatch_async_and_wait(v13, v15);

  _Block_object_dispose(v23, 8);
}

void __34__FPSpotlightIndexer_dumpStateTo___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 72) == 3)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), *(v2 + 64));
    v3 = a1[5];

    dispatch_semaphore_signal(v3);
  }

  else
  {
    v4 = [*(v2 + 144) spotlightDomainIdentifier];
    if (v4)
    {
      v5 = [*(a1[4] + 144) spotlightDomainIdentifier];
    }

    else
    {
      v5 = @"NSFileProviderDomainDefaultIdentifier";
    }

    v6 = v5;

    v7 = [[FPSpotlightFetchClientStateOperation alloc] initWithIndexer:a1[4] index:*(a1[4] + 32) indexName:*(a1[4] + 8) spotlightDomainIdentifier:v6 reason:@"dumping state" supportURL:*(a1[4] + 112)];
    [*(a1[4] + 48) addOperation:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__FPSpotlightIndexer_dumpStateTo___block_invoke_2;
    v10[3] = &unk_1E793A740;
    v9 = *(a1 + 5);
    v8 = v9;
    v11 = v9;
    [(FPOperation *)v7 setFinishedBlock:v10];
  }
}

void __34__FPSpotlightIndexer_dumpStateTo___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __34__FPSpotlightIndexer_dumpStateTo___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = 0;
  }

  else if (*(a1 + 56))
  {
    v2 = @"timed out while fetching token";
  }

  else
  {
    v2 = @"none";
  }

  v3 = *(a1 + 32);
  v4 = [(__CFString *)v2 description];
  v5 = [v4 UTF8String];
  if (v5)
  {
    [v3 write:{@"      change token: %s\n", v5}];
  }

  else
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) description];
    [v3 write:{@"      change token: %s\n", objc_msgSend(v6, "UTF8String")}];
  }

  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 40) + 48) operations];
  v9 = [v8 description];
  [v7 write:{@"      operation: %s\n", objc_msgSend(v9, "UTF8String")}];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) description];
  [v10 write:{@"      description: %@\n", v11}];
}

+ (void)setIndexerProperty:(id)property forKey:(id)key supportURL:(id)l
{
  v30 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  keyCopy = key;
  lCopy = l;
  if (!keyCopy)
  {
    [FPSpotlightIndexer setIndexerProperty:a2 forKey:self supportURL:?];
  }

  v12 = [lCopy URLByAppendingPathComponent:@"Indexer.plist" isDirectory:0];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v12];
  v15 = [v14 objectForKey:keyCopy];
  if (([propertyCopy isEqual:v15] & 1) == 0)
  {
    v16 = [v14 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;

    [v19 setValue:propertyCopy forKey:keyCopy];
    v23 = 0;
    v20 = [v19 writeToURL:v12 error:&v23];
    v21 = v23;
    if ((v20 & 1) == 0)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v25 = keyCopy;
        v26 = 2112;
        v27 = propertyCopy;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to store indexer value (%@) %@: %@", buf, 0x20u);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

+ (id)indexerPropertyOfClass:(Class)class forKey:(id)key supportURL:(id)l
{
  keyCopy = key;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = MEMORY[0x1E695DF20];
  v11 = [lCopy URLByAppendingPathComponent:@"Indexer.plist" isDirectory:0];
  v12 = [v10 dictionaryWithContentsOfURL:v11];

  objc_sync_exit(selfCopy);
  v13 = [v12 objectForKey:keyCopy];
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (FPSpotlightDropIndexDelegate)dropIndexDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dropIndexDelegate);

  return WeakRetained;
}

- (void)_indexOneBatchWithCompletionHandler:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] can't create vendor enumerator: %@", buf, 0xCu);
}

- (void)_indexOneBatchWithCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_5_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] scheduling %@ on %@");
}

void __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __100__FPSpotlightIndexer__indexOneBatchFromAnchor_toAnchor_updatedItems_deletedItems_completionHandler___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __93__FPSpotlightIndexer__indexOutOfBandUpdatedItems_deletedItems_indexReason_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) count];
  v7 = [*(a1 + 40) count];
  v8[0] = 67109634;
  v8[1] = v6;
  v9 = 1024;
  v10 = v7;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] out-of-band indexing of (%u updates, %u deletions, completed with error %@", v8, 0x18u);
}

void __27__FPSpotlightIndexer_pause__block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] %@: pausing", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __27__FPSpotlightIndexer_pause__block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] %@: already paused", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __28__FPSpotlightIndexer_resume__block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, a2, a3, "[DEBUG] %@: resuming", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*a2 fp_prettyDescription];
  [*(a1 + 56) timeIntervalSinceNow];
  v9 = 138413058;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2048;
  v16 = -v8;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] [spotlight] %@: failed deleting searchable items with domain identifiers %@: %@ in %.3fs", &v9, 0x2Au);
}

void __104__FPSpotlightIndexer_deleteSearchableItemsWithSpotlightDomainIdentifiers_indexReason_completionHandler___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 56) timeIntervalSinceNow];
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2048;
  v11 = -v5;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] [spotlight] %@: deleted searchable items with domain identifiers %@ in %.3fs", &v6, 0x20u);
}

+ (void)setIndexerProperty:(uint64_t)a1 forKey:(uint64_t)a2 supportURL:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSpotlightIndexer.m" lineNumber:817 description:@"nil key"];
}

@end