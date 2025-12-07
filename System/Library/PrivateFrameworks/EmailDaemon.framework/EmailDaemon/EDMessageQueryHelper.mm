@interface EDMessageQueryHelper
+ (OS_os_log)log;
- (BOOL)updateDisplayDate;
- (EDMessageQueryHelper)initWithQuery:(id)query initialBatchSize:(int64_t)size maximumBatchSize:(int64_t)batchSize messagePersistence:(id)persistence hookRegistry:(id)registry searchProvider:(id)provider scheduler:(id)scheduler remindMeNotificationController:(id)self0 delegate:(id)self1 shouldReconcileJournal:(BOOL)self2 shouldAddMessagesSynchronously:(BOOL)self3 keepMessagesInListOnBucketChange:(BOOL)self4;
- (EDMessageQueryHelperDelegate)delegate;
- (id)_persistedMessagesFromSendersWithAddresses:(id)addresses;
- (id)_predicateWithAdditionalPredicates:(id)predicates;
- (id)_snippetsByObjectIDForMessages:(id)messages itemSnippetData:(id)data max:(unint64_t)max snippetMessageObjectIDsByConversation:(id *)conversation;
- (id)_transformAndFilterMessages:(id)messages includeDeleted:(BOOL)deleted;
- (id)_unjournaledMessagesForMessages:(id)messages;
- (id)messagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit;
- (id)sortableMessagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit;
- (void)_calculateAndReportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key changeBlock:(id)block;
- (void)_calculateAndReportLabelChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key;
- (void)_foundMessages:(id)messages inRemoteSearch:(BOOL)search foundInLocalIndex:(BOOL)index;
- (void)_getInitialResults;
- (void)_performBlockAfterGenerationCheck:(id)check generation:(id)generation keyPaths:(id)paths removedMessages:(id)messages changedMessages:(id)changedMessages addedMessages:(id)addedMessages;
- (void)_persistenceDidDeleteMessages:(id)messages includeMessagesWithDeletedFlag:(BOOL)flag;
- (void)_persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window;
- (void)_reportChangesForCurrentlyMatchingMessages:(id)messages previouslyMatchingMessages:(id)matchingMessages keyPaths:(id)paths generation:(id)generation;
- (void)_reportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key keyPaths:(id)paths generation:(id)generation;
- (void)_startLiveSearchQuery;
- (void)_updateDisplayDateForMessagesIfNeeded;
- (void)controller:(id)controller messageTimerFired:(id)fired;
- (void)dealloc;
- (void)localSearchDidFail;
- (void)localSearchDidFindMessages:(id)messages itemSnippetData:(id)data rankingSignals:(id)signals;
- (void)localSearchDidFindTopHits:(id)hits itemSnippetData:(id)data rankingSignals:(id)signals instantAnswer:(id)answer;
- (void)localSearchDidFinish;
- (void)localSearchDidFinishTopHitsQuery:(int)query;
- (void)localSearchDidHaveQueryEmbedding:(BOOL)embedding;
- (void)localSearchDidHaveTopHitsQueryEmbedding:(BOOL)embedding;
- (void)persistenceDidAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages generationWindow:(id)window;
- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidChangeBusinessIDForMessages:(id)messages fromBusinessID:(int64_t)d;
- (void)persistenceDidChangeCategorizationForMessages:(id)messages userInitiated:(BOOL)initiated generationWindow:(id)window;
- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)level conversationID:(int64_t)d generationWindow:(id)window;
- (void)persistenceDidChangeFlags:(id)flags messages:(id)messages generationWindow:(id)window;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window;
- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window;
- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)ls generationWindow:(id)window;
- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidNotChangeCategorizationForMessages:(id)messages;
- (void)persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)messages;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation;
- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window;
- (void)persistenceIsChangingConversationID:(int64_t)d messages:(id)messages generationWindow:(id)window;
- (void)persistenceWillAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages;
- (void)persistenceWillChangeCategorizationForMessages:(id)messages;
- (void)persistenceWillChangeConversationID:(int64_t)d messages:(id)messages;
- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages;
- (void)persistenceWillChangeReadLaterDate:(id)date messages:(id)messages;
- (void)persistenceWillUpdateAuthenticationStateForMessages:(id)messages;
- (void)persistenceWillUpdateDisplayDateForMessages:(id)messages;
- (void)remoteSearchDidFindMessages:(id)messages inLocalIndex:(BOOL)index;
- (void)remoteSearchDidFinish;
- (void)start;
@end

@implementation EDMessageQueryHelper

- (void)start
{
  if (atomic_exchange(&self->_didStart._Value, 1u))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageQueryHelper.m" lineNumber:133 description:{@"Trying to start EDMessageQueryHelper %p that was already started.", self}];
  }

  remindMeNotificationController = [(EDMessageQueryHelper *)self remindMeNotificationController];
  v4 = [remindMeNotificationController addRemindMeObserver:self];

  cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
  [cancelationToken addCancelable:v4];

  hookRegistry = [(EDMessageQueryHelper *)self hookRegistry];
  objc_initWeak(&location, hookRegistry);
  v7 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__EDMessageQueryHelper_start__block_invoke;
  v10[3] = &unk_1E8250098;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [v7 performVoucherPreservingBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __29__EDMessageQueryHelper_start__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _updateDisplayDateForMessagesIfNeeded];
  [WeakRetained registerMessageChangeHookResponder:*(a1 + 32)];
  [WeakRetained registerCategoryChangeHookResponder:*(a1 + 32)];
  [WeakRetained registerBusinessChangeHookResponder:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) cancelationToken];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __29__EDMessageQueryHelper_start__block_invoke_2;
  v29[3] = &unk_1E8255050;
  objc_copyWeak(&v30, &location);
  objc_copyWeak(&v31, (a1 + 40));
  [v3 addCancelationBlock:v29];

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v4 = [*(a1 + 32) query];
  if (([v4 queryOptions] & 0x20) == 0)
  {

LABEL_7:
    [*(a1 + 32) _getInitialResults];
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) query];
  v6 = ([v5 queryOptions] & 4) == 0;

  if (!v6)
  {
    goto LABEL_7;
  }

  [*(a1 + 32) setReturningInitialResults:1];
  v7 = [*(a1 + 32) query];
  v8 = ([v7 queryOptions] & 0x2000) == 0;

  if (v8)
  {
    [*(a1 + 32) _startLiveSearchQuery];
  }

  else
  {
    v19 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = [v20 query];
      *buf = 134218242;
      v34 = v20;
      v35 = 2114;
      v36 = v21;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "%p: Starting top hits query %{public}@", buf, 0x16u);
    }

    v22 = [*(a1 + 32) searchProvider];
    v23 = [v22 localSearchProvider];
    v24 = [*(a1 + 32) query];
    v25 = *(a1 + 32);
    v28[5] = MEMORY[0x1E69E9820];
    v28[6] = 3221225472;
    v28[7] = __29__EDMessageQueryHelper_start__block_invoke_36;
    v28[8] = &unk_1E8250260;
    v28[9] = v25;
    v26 = [v23 topHitsSearchWithQuery:v24 delegate:? completion:?];

    v27 = [*(a1 + 32) cancelationToken];
    [v27 addCancelable:v26];
  }

LABEL_8:
  v9 = [*(a1 + 32) query];
  v10 = ([v9 queryOptions] & 2) == 0;

  if (!v10)
  {
    v11 = [*(a1 + 32) searchProvider];
    v12 = [v11 remoteSearchProvider];

    v13 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Performing Remote Search (Search Indexer + Server Search)", buf, 2u);
    }

    v14 = [*(a1 + 32) query];
    v15 = [v12 fetchRemoteMessagesWithQuery:v14 delegate:*(a1 + 32)];

    v16 = *(a1 + 32);
    if (v15)
    {
      v17 = [v16 cancelationToken];
      [v17 addCancelable:v15];
    }

    else
    {
      v18 = [v16 scheduler];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __29__EDMessageQueryHelper_start__block_invoke_37;
      v28[3] = &unk_1E8250260;
      v28[4] = *(a1 + 32);
      [v18 performSyncBlock:v28];
    }
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __29__EDMessageQueryHelper_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 unregisterHookResponder:v4];

    WeakRetained = v4;
  }
}

- (void)_updateDisplayDateForMessagesIfNeeded
{
  if ([(EDMessageQueryHelper *)self updateDisplayDate])
  {
    messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
    query = [(EDMessageQueryHelper *)self query];
    [messagePersistence updateBeforeDisplayForMessagesMatchingQuery:query];
  }
}

- (BOOL)updateDisplayDate
{
  query = [(EDMessageQueryHelper *)self query];
  targetClassOptions = [query targetClassOptions];
  v4 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9D8]];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)_getInitialResults
{
  v46 = *MEMORY[0x1E69E9840];
  if ([(EDMessageQueryHelper *)self shouldReconcileJournal])
  {
    messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
    [messagePersistence reconcileJournalWithCompletionBlock:0];
  }

  v5 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    query = [(EDMessageQueryHelper *)self query];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = query;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Getting initial results for message query %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v43 = __Block_byref_object_copy__27;
  v44 = __Block_byref_object_dispose__27;
  v45 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke;
  aBlock[3] = &unk_1E82550A0;
  aBlock[4] = self;
  aBlock[5] = buf;
  aBlock[6] = &v32;
  v7 = _Block_copy(aBlock);
  query2 = [(EDMessageQueryHelper *)self query];
  v9 = ([query2 queryOptions] & 4) == 0;

  if (v9)
  {
    query3 = [(EDMessageQueryHelper *)self query];
    if (([query3 queryOptions] & 0x20) != 0)
    {
      searchProvider = [(EDMessageQueryHelper *)self searchProvider];
      localSearchProvider = [searchProvider localSearchProvider];
      v13 = localSearchProvider == 0;

      if (v13)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageQueryHelper.m" lineNumber:250 description:@"Spotlight search query sent to handler without spotlight access"];
      }

      searchProvider2 = [(EDMessageQueryHelper *)self searchProvider];
      localSearchProvider2 = [searchProvider2 localSearchProvider];
      v16 = [localSearchProvider2 persistenceQueryForSearchableIndexQuery:query3];

      query3 = v16;
    }

    messagePersistence2 = [(EDMessageQueryHelper *)self messagePersistence];
    maximumBatchSize = [(EDMessageQueryHelper *)self maximumBatchSize];
    initialBatchSize = [(EDMessageQueryHelper *)self initialBatchSize];
    cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
    [messagePersistence2 iterateMessagesMatchingQuery:query3 batchSize:maximumBatchSize firstBatchSize:initialBatchSize limit:0x7FFFFFFFFFFFFFFFLL cancelationToken:cancelationToken handler:v7];

    v21 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v33[3];
      query4 = [(EDMessageQueryHelper *)self query];
      *v36 = 134218498;
      selfCopy = self;
      v38 = 2048;
      v39 = v22;
      v40 = 2112;
      v41 = query4;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "%p: found %lu initial results for message query %@", v36, 0x20u);
    }
  }

  delegate = [(EDMessageQueryHelper *)self delegate];
  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke_46;
  v29[3] = &unk_1E8250128;
  v29[4] = self;
  v26 = delegate;
  v30 = v26;
  [scheduler performSyncBlock:v29];

  initialResultsPromise = [(EDMessageQueryHelper *)self initialResultsPromise];
  [initialResultsPromise finishWithResult:MEMORY[0x1E695E118]];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(buf, 8);
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDMessageQueryHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_65 != -1)
  {
    dispatch_once(&log_onceToken_65, block);
  }

  v2 = log_log_65;

  return v2;
}

- (void)dealloc
{
  [(EDMessageQueryHelper *)self cancel];
  v3.receiver = self;
  v3.super_class = EDMessageQueryHelper;
  [(EDMessageQueryHelper *)&v3 dealloc];
}

- (EDMessageQueryHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __27__EDMessageQueryHelper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_65;
  log_log_65 = v1;
}

- (EDMessageQueryHelper)initWithQuery:(id)query initialBatchSize:(int64_t)size maximumBatchSize:(int64_t)batchSize messagePersistence:(id)persistence hookRegistry:(id)registry searchProvider:(id)provider scheduler:(id)scheduler remindMeNotificationController:(id)self0 delegate:(id)self1 shouldReconcileJournal:(BOOL)self2 shouldAddMessagesSynchronously:(BOOL)self3 keepMessagesInListOnBucketChange:(BOOL)self4
{
  queryCopy = query;
  persistenceCopy = persistence;
  registryCopy = registry;
  providerCopy = provider;
  schedulerCopy = scheduler;
  controllerCopy = controller;
  obj = delegate;
  v58.receiver = self;
  v58.super_class = EDMessageQueryHelper;
  v21 = [(EDMessageQueryHelper *)&v58 init];
  p_isa = &v21->super.isa;
  v23 = v21;
  if (v21)
  {
    v21->_noLongerMatchingMessagesLock._os_unfair_lock_opaque = 0;
    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    noLongerMatchingMessages = v23->_noLongerMatchingMessages;
    v23->_noLongerMatchingMessages = v24;

    v26 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    cancelationToken = v23->_cancelationToken;
    v23->_cancelationToken = v26;

    v28 = [queryCopy copy];
    query = v23->_query;
    v23->_query = v28;

    v23->_initialBatchSize = size;
    v23->_maximumBatchSize = batchSize;
    objc_storeStrong(p_isa + 7, persistence);
    objc_storeStrong(p_isa + 8, registry);
    objc_storeStrong(p_isa + 9, provider);
    objc_storeStrong(p_isa + 11, scheduler);
    objc_storeWeak(p_isa + 12, obj);
    objc_storeStrong(p_isa + 10, controller);
    if (journal)
    {
      v30 = ([queryCopy queryOptions] >> 3) & 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v23->_shouldReconcileJournal = v30;
    v23->_addMessagesSynchronously = synchronously;
    v23->_keepMessagesInListOnBucketChange = change;
    if (_os_feature_enabled_impl())
    {
      v31 = -[EDMessageQueryEvaluator initWithQuery:messagePersistence:filterMessagesByID:]([EDMessageQueryEvaluator alloc], "initWithQuery:messagePersistence:filterMessagesByID:", queryCopy, p_isa[7], ([queryCopy queryOptions] >> 5) & 1);
    }

    else
    {
      v31 = [[EDMessageQueryEvaluator alloc] initWithQuery:queryCopy messagePersistence:p_isa[7] filterMessagesByID:0];
    }

    queryEvaluator = v23->_queryEvaluator;
    v23->_queryEvaluator = v31;

    promise = [MEMORY[0x1E699B868] promise];
    initialResultsPromise = v23->_initialResultsPromise;
    v23->_initialResultsPromise = promise;

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingFlagChangesKey-%p", objc_opt_class(), v23];
    pendingFlagChangesKey = v23->_pendingFlagChangesKey;
    v23->_pendingFlagChangesKey = v35;

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingConversationIDChangeKey-%p", objc_opt_class(), v23];
    pendingConversationIDChangesKey = v23->_pendingConversationIDChangesKey;
    v23->_pendingConversationIDChangesKey = v37;

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingReadLaterDateChangesKey-%p", objc_opt_class(), v23];
    pendingReadLaterDateChangesKey = v23->_pendingReadLaterDateChangesKey;
    v23->_pendingReadLaterDateChangesKey = v39;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingDisplayDateChangesKey-%p", objc_opt_class(), v23];
    pendingDisplayDateChangesKey = v23->_pendingDisplayDateChangesKey;
    v23->_pendingDisplayDateChangesKey = v41;

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingCategorizationChangesKey-%p", objc_opt_class(), v23];
    pendingCategorizationChangesKey = v23->_pendingCategorizationChangesKey;
    v23->_pendingCategorizationChangesKey = v43;

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingCategorizationChangesKey-%p", objc_opt_class(), v23];
    pendingAuthenticationChangesKey = v23->_pendingAuthenticationChangesKey;
    v23->_pendingAuthenticationChangesKey = v45;

    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingLabelChangesKey-%p", objc_opt_class(), v23];
    pendingLabelChangesKey = v23->_pendingLabelChangesKey;
    v23->_pendingLabelChangesKey = v47;

    if (([queryCopy queryOptions] & 0x20) != 0)
    {
      v49 = objc_alloc_init(EDLocalSearchInfoCollector);
      localSearchInfoCollector = v23->_localSearchInfoCollector;
      v23->_localSearchInfoCollector = v49;
    }
  }

  return v23;
}

uint64_t __29__EDMessageQueryHelper_start__block_invoke_36(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 query];
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%p: Finished top hits query %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) _startLiveSearchQuery];
}

void __29__EDMessageQueryHelper_start__block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperDidFinishRemoteSearch:*(a1 + 32)];
}

- (void)_startLiveSearchQuery
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    query = [(EDMessageQueryHelper *)self query];
    v11 = 134218242;
    selfCopy = self;
    v13 = 2114;
    v14 = query;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Starting live query %{public}@", &v11, 0x16u);
  }

  [(EDMessageQueryHelper *)self setSnippetDataBudgetRemaining:500];
  searchProvider = [(EDMessageQueryHelper *)self searchProvider];
  localSearchProvider = [searchProvider localSearchProvider];
  query2 = [(EDMessageQueryHelper *)self query];
  v8 = [localSearchProvider liveSearchWithQuery:query2 delegate:self];
  [(EDMessageQueryHelper *)self setSearchQuery:v8];

  cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
  searchQuery = [(EDMessageQueryHelper *)self searchQuery];
  [cancelationToken addCancelable:searchQuery];
}

void __42__EDMessageQueryHelper__getInitialResults__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cancelationToken];
  v8 = [v7 isCanceled];

  if ((v8 & 1) == 0)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (v9)
    {
      [v9 timeIntervalSinceNow];
      if (v10 < -5.0)
      {
        EFSaveTailspin();
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }

    if ([v5 count])
    {
      v13 = [*(a1 + 32) scheduler];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __42__EDMessageQueryHelper__getInitialResults__block_invoke_2;
      v20[3] = &unk_1E8255078;
      v20[4] = *(a1 + 32);
      v14 = v5;
      v15 = *(a1 + 48);
      v21 = v14;
      v22 = v15;
      [v13 performSyncBlock:v20];

      *(*(*(a1 + 48) + 8) + 24) += [v14 count];
    }

    else if (!v5)
    {
      v16 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v18 = [v6 ef_publicDescription];
        v19 = [*(a1 + 32) query];
        *buf = 134218498;
        v24 = v17;
        v25 = 2114;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "%p: Received error %{public}@ while performing initial query: %@", buf, 0x20u);
      }
    }
  }
}

void __42__EDMessageQueryHelper__getInitialResults__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didFindMessages:*(a1 + 40) searchInfo:0 forInitialBatch:*(*(*(a1 + 48) + 8) + 24) == 0];
}

void __42__EDMessageQueryHelper__getInitialResults__block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelationToken];
  v3 = [v2 isCanceled];

  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v4 queryHelperDidFindAllMessages:v5 localSearchInfoCollector:0];
  }
}

- (id)_predicateWithAdditionalPredicates:(id)predicates
{
  v23[2] = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  if (_os_feature_enabled_impl() && (-[EDMessageQueryHelper query](self, "query"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 queryOptions], v5, (v6 & 0x20) != 0))
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    persistentIDsForFilterSet = [queryEvaluator persistentIDsForFilterSet];

    predicate2 = [EDMessageListItemPredicates predicateForMessagesWithPersistentIDs:persistentIDsForFilterSet];
  }

  else
  {
    query = [(EDMessageQueryHelper *)self query];
    os_unfair_lock_lock(&self->_noLongerMatchingMessagesLock);
    allObjects = [(NSMutableSet *)self->_noLongerMatchingMessages allObjects];
    v9 = [allObjects ef_mapSelector:sel_objectID];

    os_unfair_lock_unlock(&self->_noLongerMatchingMessagesLock);
    if ([v9 count])
    {
      v10 = [MEMORY[0x1E699AD30] predicateForMessagesWithObjectIDs:v9];
      v11 = MEMORY[0x1E696AB28];
      predicate = [query predicate];
      v23[0] = predicate;
      v23[1] = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      predicate2 = [v11 orPredicateWithSubpredicates:v13];
    }

    else
    {
      predicate2 = [query predicate];
    }
  }

  v17 = MEMORY[0x1E696AB28];
  v22[0] = predicate2;
  v22[1] = predicatesCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  ef_flatten = [v18 ef_flatten];
  v20 = [v17 andPredicateWithSubpredicates:ef_flatten];

  return v20;
}

- (id)messagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit
{
  v31 = *MEMORY[0x1E69E9840];
  predicatesCopy = predicates;
  v5 = [(EDMessageQueryHelper *)self _predicateWithAdditionalPredicates:?];
  if (_os_feature_enabled_impl())
  {
    query = [(EDMessageQueryHelper *)self query];
    queryOptions = [query queryOptions];
    v8 = objc_alloc(MEMORY[0x1E699AE28]);
    targetClass = [query targetClass];
    sortDescriptors = [query sortDescriptors];
    limit = [query limit];
    targetClassOptions = [query targetClassOptions];
    label = [query label];
    v14 = [v8 initWithTargetClass:targetClass predicate:v5 sortDescriptors:sortDescriptors suggestion:0 limit:limit queryOptions:queryOptions & 0xFFFFFFFFFFFFFFDFLL targetClassOptions:targetClassOptions label:label];
  }

  else
  {
    query2 = [(EDMessageQueryHelper *)self query];
    targetClassOptions = [query2 queryWithPredicate:v5];

    if (([targetClassOptions queryOptions] & 0x20) == 0)
    {
      goto LABEL_6;
    }

    query = [(EDMessageQueryHelper *)self searchProvider];
    sortDescriptors = [query localSearchProvider];
    v14 = [sortDescriptors persistenceQueryForSearchableIndexQuery:targetClassOptions];
  }

  targetClassOptions = v14;
LABEL_6:
  v16 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    predicate = [targetClassOptions predicate];
    ef_publicDescription = [predicate ef_publicDescription];
    *buf = 138412802;
    v26 = v17;
    v27 = 2048;
    selfCopy = self;
    v29 = 2112;
    v30 = ef_publicDescription;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "<%@ %p> Fetching messages matching query %@", buf, 0x20u);
  }

  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v21 = [messagePersistence messagesMatchingQuery:targetClassOptions limit:limit];

  return v21;
}

- (id)sortableMessagesWithAdditionalPredicates:(id)predicates limit:(int64_t)limit
{
  v6 = [(EDMessageQueryHelper *)self _predicateWithAdditionalPredicates:predicates];
  query = [(EDMessageQueryHelper *)self query];
  v8 = [query queryWithTargetClass:objc_opt_class() predicate:v6];

  if ((_os_feature_enabled_impl() & 1) == 0 && ([v8 queryOptions] & 0x20) != 0)
  {
    searchProvider = [(EDMessageQueryHelper *)self searchProvider];
    localSearchProvider = [searchProvider localSearchProvider];
    v11 = [localSearchProvider persistenceQueryForSearchableIndexQuery:v8];

    v8 = v11;
  }

  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v13 = [messagePersistence sortableMessagesMatchingQuery:v8 limit:limit];

  return v13;
}

- (void)_foundMessages:(id)messages inRemoteSearch:(BOOL)search foundInLocalIndex:(BOOL)index
{
  indexCopy = index;
  searchCopy = search;
  v51 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  [queryEvaluator addMessagesToFilterSet:messagesCopy];

  query = [(EDMessageQueryHelper *)self query];
  sortDescriptors = [query sortDescriptors];
  firstObject = [sortDescriptors firstObject];
  ascending = [firstObject ascending];

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke;
  v42[3] = &__block_descriptor_33_e55_q24__0___EDPersistedMessage__8___EDPersistedMessage__16l;
  v43 = ascending;
  v14 = [messagesCopy sortedArrayWithOptions:16 usingComparator:v42];

  v15 = v14;
  if (searchCopy)
  {
    searchProvider = [(EDMessageQueryHelper *)self searchProvider];
    remoteSearchProvider = [searchProvider remoteSearchProvider];

    if (indexCopy || !remoteSearchProvider)
    {
      v21 = v14;
    }

    else
    {
      searchProvider2 = [(EDMessageQueryHelper *)self searchProvider];
      remoteSearchProvider2 = [searchProvider2 remoteSearchProvider];
      query2 = [(EDMessageQueryHelper *)self query];
      v21 = [remoteSearchProvider2 verifyResults:v15 query:query2];
    }

    queryEvaluator2 = [(EDMessageQueryHelper *)self queryEvaluator];
    v24 = [queryEvaluator2 transformMessages:v21];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = v24;
    v25 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v25)
    {
      v26 = *v39;
      if (indexCopy)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      do
      {
        v28 = 0;
        do
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v38 + 1) + 8 * v28++) setSearchResultType:v27];
        }

        while (v25 != v28);
        v25 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v22 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v14 includeDeleted:0];
  }

  if ([v22 count])
  {
    v29 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v22 count];
      query3 = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      selfCopy = self;
      v46 = 1024;
      v47 = v30;
      v48 = 2114;
      v49 = query3;
      _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "%p: Adding %u filtered messages: %{public}@", buf, 0x1Cu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke_56;
    aBlock[3] = &unk_1E8250720;
    v35 = v22;
    v36 = v15;
    selfCopy2 = self;
    v32 = _Block_copy(aBlock);
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v32];
    }

    else
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performBlock:v32];
    }
  }
}

uint64_t __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 persistedMessageID];
  v7 = [v6 databaseID];

  v8 = [v5 persistedMessageID];
  v9 = [v8 databaseID];

  if (v7 != v9)
  {
    if (*(a1 + 32) == 1)
    {
      if (v7 < v9)
      {
LABEL_5:
        v10 = -1;
        goto LABEL_8;
      }
    }

    else if (v7 > v9)
    {
      goto LABEL_5;
    }

    v10 = 1;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

void __72__EDMessageQueryHelper__foundMessages_inRemoteSearch_foundInLocalIndex___block_invoke_56(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = EFFetchSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = [*(a1 + 40) count];
    v10[0] = 67109120;
    v10[1] = v6;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "QueryHelperDidAddMessages Callback", "count=%{signpost.description:attribute}u ", v10, 8u);
  }

  v7 = [*(a1 + 48) delegate];
  [v7 queryHelper:*(a1 + 48) didAddMessages:*(a1 + 32) searchInfo:0];

  v8 = v5;
  v9 = v8;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_END, v3, "QueryHelperDidAddMessages Callback", "", v10, 2u);
  }
}

- (id)_unjournaledMessagesForMessages:(id)messages
{
  v3 = [messages ef_filter:&__block_literal_global_58];

  return v3;
}

- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window
{
  v16 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0)
  {
    if (!_os_feature_enabled_impl() || (-[EDMessageQueryHelper query](self, "query"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 queryOptions], v8, (v9 & 0x20) == 0))
    {
      v10 = EFFetchSignpostLog();
      if (os_signpost_enabled(v10))
      {
        v12 = 134218240;
        selfCopy = self;
        v14 = 1024;
        v15 = [MEMORY[0x1E699B858] bucketMessageCount:{objc_msgSend(messagesCopy, "count")}];
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryHelperDidAddMessages", "helper=%p count=%u ", &v12, 0x12u);
      }

      v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

      messagesCopy = v11;
      [(EDMessageQueryHelper *)self _foundMessages:v11 inRemoteSearch:0 foundInLocalIndex:0];
    }
  }
}

- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(id)ls generationWindow:(id)window
{
  v10 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v6 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[EDMessageQueryHelper persistenceDidDeleteAllMessagesInMailboxesWithURLs:generationWindow:].cold.1(self, [lsCopy count], buf, v6);
  }

  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__EDMessageQueryHelper_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke;
  v8[3] = &unk_1E8250260;
  v8[4] = self;
  [scheduler performBlock:v8];
}

void __92__EDMessageQueryHelper_persistenceDidDeleteAllMessagesInMailboxesWithURLs_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperNeedsRestart:*(a1 + 32)];
}

- (void)persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window
{
  v25 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  windowCopy = window;
  initialResultsPromise = [(EDMessageQueryHelper *)self initialResultsPromise];
  future = [initialResultsPromise future];

  resultIfAvailable = [future resultIfAvailable];

  if (!resultIfAvailable)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [messagesCopy count];
      query = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      selfCopy = self;
      v21 = 1024;
      v22 = v12;
      v23 = 2112;
      v24 = query;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: Holding %u reconciled persisted messages until initial results: %@", buf, 0x1Cu);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__EDMessageQueryHelper_persistenceDidReconcileJournaledMessages_generationWindow___block_invoke;
  v16[3] = &unk_1E82550E8;
  v16[4] = self;
  v14 = messagesCopy;
  v17 = v14;
  v15 = windowCopy;
  v18 = v15;
  [future addSuccessBlock:v16];
}

- (void)_persistenceDidReconcileJournaledMessages:(id)messages generationWindow:(id)window
{
  v27 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 0x20) != 0)
  {
    v8 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update for a Spotlight query result.", buf, 2u);
    }
  }

  else
  {
    v8 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:messagesCopy includeDeleted:0];
    if ([v8 count])
    {
      v9 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 count];
        query2 = [(EDMessageQueryHelper *)self query];
        *buf = 134218498;
        selfCopy = self;
        v23 = 1024;
        v24 = v10;
        v25 = 2112;
        v26 = query2;
        _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Reconciled %u filtered messages: %@", buf, 0x1Cu);
      }

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __83__EDMessageQueryHelper__persistenceDidReconcileJournaledMessages_generationWindow___block_invoke;
      v18 = &unk_1E8250128;
      selfCopy2 = self;
      v12 = v8;
      v20 = v12;
      v13 = _Block_copy(&v15);
      if ([(EDMessageQueryHelper *)self addMessagesSynchronously:v15])
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performSyncBlock:v13];
      }

      else
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performBlock:v13];
      }

      v8 = v12;
    }
  }
}

void __83__EDMessageQueryHelper__persistenceDidReconcileJournaledMessages_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didAddMessages:*(a1 + 40) searchInfo:0];
}

- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages
{
  flagsCopy = flags;
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0 && (![flagsCopy deletedChanged] || (objc_msgSend(flagsCopy, "deleted") & 1) == 0))
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    v12 = [queryEvaluator transformAndFilterMessages:messagesCopy];

    pendingFlagChangesKey = [(EDMessageQueryHelper *)self pendingFlagChangesKey];
    [threadDictionary setObject:v12 forKeyedSubscript:pendingFlagChangesKey];
  }
}

- (void)persistenceDidChangeFlags:(id)flags messages:(id)messages generationWindow:(id)window
{
  flagsCopy = flags;
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  LOBYTE(messages) = [query queryOptions];

  if ((messages & 4) != 0)
  {
    v10 = messagesCopy;
  }

  else
  {
    v10 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

    if ([flagsCopy deletedChanged] && objc_msgSend(flagsCopy, "deleted"))
    {
      [(EDMessageQueryHelper *)self _persistenceDidDeleteMessages:v10 includeMessagesWithDeletedFlag:1];
    }

    else
    {
      pendingFlagChangesKey = [(EDMessageQueryHelper *)self pendingFlagChangesKey];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __76__EDMessageQueryHelper_persistenceDidChangeFlags_messages_generationWindow___block_invoke;
      v12[3] = &unk_1E8255110;
      v12[4] = self;
      [(EDMessageQueryHelper *)self _calculateAndReportChangesForPersistedMessages:v10 withPendingChangesKey:pendingFlagChangesKey changeBlock:v12];
    }
  }
}

void __76__EDMessageQueryHelper_persistenceDidChangeFlags_messages_generationWindow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) delegate];
  [v6 queryHelper:*(a1 + 32) messageFlagsDidChangeForMessages:v5 previousMessages:v7];
}

- (void)persistenceWillChangeReadLaterDate:(id)date messages:(id)messages
{
  messagesCopy = messages;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v8 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  pendingReadLaterDateChangesKey = [(EDMessageQueryHelper *)self pendingReadLaterDateChangesKey];
  [threadDictionary setObject:v8 forKeyedSubscript:pendingReadLaterDateChangesKey];
}

- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window
{
  v13[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  windowCopy = window;
  pendingReadLaterDateChangesKey = [(EDMessageQueryHelper *)self pendingReadLaterDateChangesKey];
  v13[0] = *MEMORY[0x1E699A958];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(windowCopy, "latestGeneration")}];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:messagesCopy withPendingChangesKey:pendingReadLaterDateChangesKey keyPaths:v11 generation:v12];
}

- (void)persistenceDidChangeConversationNotificationLevel:(int64_t)level conversationID:(int64_t)d generationWindow:(id)window
{
  v8 = [(EDMessageQueryHelper *)self scheduler:level];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__EDMessageQueryHelper_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke;
  v9[3] = &unk_1E8255138;
  v9[4] = self;
  v9[5] = level;
  v9[6] = d;
  [v8 performBlock:v9];
}

void __106__EDMessageQueryHelper_persistenceDidChangeConversationNotificationLevel_conversationID_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) conversationNotificationLevelDidChangeForConversation:*(a1 + 40) conversationID:*(a1 + 48)];
}

- (void)persistenceDidDeleteMessages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  v6 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  [EDMessageQueryHelper _persistenceDidDeleteMessages:"_persistenceDidDeleteMessages:includeMessagesWithDeletedFlag:" includeMessagesWithDeletedFlag:?];
}

- (void)_persistenceDidDeleteMessages:(id)messages includeMessagesWithDeletedFlag:(BOOL)flag
{
  flagCopy = flag;
  v40[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v7 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:messagesCopy includeDeleted:flagCopy];
  if ([v7 count])
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    [queryEvaluator removeMessagesFromFilterSet:messagesCopy];

    os_unfair_lock_lock(&self->_noLongerMatchingMessagesLock);
    [(NSMutableSet *)self->_noLongerMatchingMessages ef_removeObjectsInArray:v7];
    os_unfair_lock_unlock(&self->_noLongerMatchingMessagesLock);
    v25 = [v7 ef_mapSelector:sel_objectID];
    v26 = [MEMORY[0x1E699AD30] predicateForMessagesWithObjectIDs:?];
    v40[0] = v26;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v10 = [(EDMessageQueryHelper *)self messagesWithAdditionalPredicates:v9 limit:0x7FFFFFFFFFFFFFFFLL];

    if ([v10 count])
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v34 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v13)
      {
        v14 = *v32;
        do
        {
          v15 = 0;
          do
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v12);
            }

            objectID = [*(*(&v31 + 1) + 8 * v15) objectID];
            [v11 addObject:objectID];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v13);
      }

      v17 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        query = [(EDMessageQueryHelper *)self query];
        *buf = 134218498;
        selfCopy2 = self;
        v37 = 2114;
        *v38 = v11;
        *&v38[8] = 2114;
        *&v38[10] = query;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Not deleting objectIDs with still existent duplicates: %{public}@\n%{public}@", buf, 0x20u);
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __85__EDMessageQueryHelper__persistenceDidDeleteMessages_includeMessagesWithDeletedFlag___block_invoke;
      v29[3] = &unk_1E8250858;
      v19 = v11;
      v30 = v19;
      v20 = [v7 ef_filter:v29];

      v7 = v20;
    }

    if ([v7 count])
    {
      v21 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v7 count];
        query2 = [(EDMessageQueryHelper *)self query];
        *buf = 134218498;
        selfCopy2 = self;
        v37 = 1024;
        *v38 = v22;
        *&v38[4] = 2112;
        *&v38[6] = query2;
        _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "%p: Deleting %u filtered messages: %@", buf, 0x1Cu);
      }

      scheduler = [(EDMessageQueryHelper *)self scheduler];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __85__EDMessageQueryHelper__persistenceDidDeleteMessages_includeMessagesWithDeletedFlag___block_invoke_64;
      v27[3] = &unk_1E8250128;
      v27[4] = self;
      v28 = v7;
      [scheduler performBlock:v27];
    }
  }
}

uint64_t __85__EDMessageQueryHelper__persistenceDidDeleteMessages_includeMessagesWithDeletedFlag___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __85__EDMessageQueryHelper__persistenceDidDeleteMessages_includeMessagesWithDeletedFlag___block_invoke_64(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didDeleteMessages:*(a1 + 40)];
}

- (void)persistenceWillChangeConversationID:(int64_t)d messages:(id)messages
{
  messagesCopy = messages;
  v15 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  v7 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v15 includeDeleted:0];
  if ([v7 count])
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    pendingConversationIDChangesKey = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
    v11 = [threadDictionary objectForKeyedSubscript:pendingConversationIDChangesKey];

    if (v11)
    {
      pendingConversationIDChangesKey2 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      [v11 setObject:v7 forKeyedSubscript:pendingConversationIDChangesKey2];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
      v11 = [v13 initWithObjectsAndKeys:{v7, v14, 0}];

      pendingConversationIDChangesKey2 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
      [threadDictionary setObject:v11 forKeyedSubscript:pendingConversationIDChangesKey2];
    }
  }
}

- (void)persistenceIsChangingConversationID:(int64_t)d messages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  v8 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  pendingConversationIDChangesKey = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
  v12 = [threadDictionary objectForKeyedSubscript:pendingConversationIDChangesKey];

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v14 = [v12 objectForKeyedSubscript:v13];

  v15 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v8 includeDeleted:0];
  if ([v15 count] || objc_msgSend(v14, "count"))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    [v12 setObject:0 forKeyedSubscript:v16];

    if (![v12 count])
    {
      pendingConversationIDChangesKey2 = [(EDMessageQueryHelper *)self pendingConversationIDChangesKey];
      [threadDictionary setObject:0 forKeyedSubscript:pendingConversationIDChangesKey2];
    }

    scheduler = [(EDMessageQueryHelper *)self scheduler];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __86__EDMessageQueryHelper_persistenceIsChangingConversationID_messages_generationWindow___block_invoke;
    v19[3] = &unk_1E8255160;
    v20 = v15;
    selfCopy = self;
    dCopy = d;
    v22 = v14;
    [scheduler performBlock:v19];
  }
}

void __86__EDMessageQueryHelper_persistenceIsChangingConversationID_messages_generationWindow___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v6 = [*(a1 + 40) delegate];
    [v6 queryHelper:*(a1 + 40) conversationIDDidChangeForMessages:*(a1 + 32) fromConversationID:*(a1 + 56)];
  }

  v2 = [*(a1 + 32) count];
  if (v2 != [*(a1 + 48) count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(a1 + 48)];
    [v7 ef_removeObjectsInArray:*(a1 + 32)];
    if ([v7 count])
    {
      v3 = [*(a1 + 40) delegate];
      v4 = *(a1 + 40);
      v5 = [v7 allObjects];
      [v3 queryHelper:v4 didDeleteMessages:v5];
    }
  }
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window
{
  v34 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (([messageCopy isJournaled] & 1) == 0)
  {
    v29 = messageCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v11 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v10 includeDeleted:0];
    firstObject = [v11 firstObject];

    if (firstObject)
    {
      v13 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [firstObject objectID];
        globalMessageID = [objectID globalMessageID];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = messageCopy;
        *&buf[22] = 2048;
        *&buf[24] = d;
        *&buf[32] = 2048;
        *&buf[34] = globalMessageID;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Updating global message id for message: %{public}@ oldGlobalMessageID %llu newGlobalMessageID %llu", buf, 0x2Au);
      }

      v16 = objc_alloc(MEMORY[0x1E699ADA8]);
      objectID2 = [firstObject objectID];
      mailboxScope = [objectID2 mailboxScope];
      v19 = [v16 initWithGlobalMessageID:d mailboxScope:mailboxScope];

      objectID3 = [firstObject objectID];
      LOBYTE(v16) = [objectID3 isEqual:v19];

      if (v16)
      {
        v21 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          itemID = [firstObject itemID];
          *buf = 134218754;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = itemID;
          *&buf[22] = 2112;
          *&buf[24] = firstObject;
          *&buf[32] = 2112;
          *&buf[34] = v19;
          _os_log_debug_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEBUG, "%p: itemID not changed %@\nchangedMessage %@\noldObjectID %@", buf, 0x2Au);
        }

        memset(buf, 170, sizeof(buf));
        *&buf[32] = 0;
        *v31 = 0xE00000001;
        v32 = 1;
        v33 = getpid();
        v28 = 648;
        if (!sysctl(v31, 4u, buf, &v28, 0, 0) && (*&buf[32] & 0x800) != 0)
        {
          __debugbreak();
          JUMPOUT(0x1C62FC44CLL);
        }
      }

      else
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __102__EDMessageQueryHelper_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke;
        v24[3] = &unk_1E8255160;
        v24[4] = self;
        v25 = firstObject;
        v26 = v19;
        iDCopy = iD;
        [scheduler performBlock:v24];
      }
    }
  }
}

void __102__EDMessageQueryHelper_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) objectIDDidChangeForMessage:*(a1 + 40) oldObjectID:*(a1 + 48) oldConversationID:*(a1 + 56)];
}

- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window
{
  v19[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  messageCopy = message;
  if (([messageCopy isJournaled] & 1) == 0)
  {
    query = [(EDMessageQueryHelper *)self query];
    queryOptions = [query queryOptions];

    if ((queryOptions & 4) == 0)
    {
      v19[0] = messageCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v12 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v11 includeDeleted:0];

      if ([v12 count])
      {
        objc_initWeak(&location, self);
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke;
        v14[3] = &unk_1E8255188;
        objc_copyWeak(&v17, &location);
        v15 = propertiesCopy;
        v16 = v12;
        [scheduler performBlock:v14];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cancelationToken];
    v5 = [v4 isCanceled];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) ef_compactMap:&__block_literal_global_69];
      if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && [v6 containsObject:*MEMORY[0x1E699A8C0]])
      {
        v7 = [v6 arrayByAddingObject:*MEMORY[0x1E699A900]];

        v6 = v7;
      }

      if ([v6 count])
      {
        v8 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(a1 + 40);
          v11 = 134218498;
          v12 = v3;
          v13 = 2112;
          v14 = v10;
          v15 = 2112;
          v16 = v6;
          _os_log_debug_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEBUG, "%p: persistenceDidUpdateProperties %@\nkeyPaths %@", &v11, 0x20u);
        }

        v9 = [v3 delegate];
        [v9 queryHelper:v3 didUpdateMessages:*(a1 + 40) forKeyPaths:v6];
      }
    }
  }
}

id __80__EDMessageQueryHelper_persistenceDidUpdateProperties_message_generationWindow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:*MEMORY[0x1E699B1D0]])
  {
    v3 = MEMORY[0x1E699A9A0];
LABEL_13:
    v4 = *v3;
    goto LABEL_14;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E699B1D8]])
  {
    v3 = MEMORY[0x1E699A9A8];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:@"GeneratedSummary"])
  {
    v3 = MEMORY[0x1E699A8C0];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:*MEMORY[0x1E699B1C8]])
  {
    v3 = MEMORY[0x1E699A8E0];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:@"AuthenticationState"])
  {
    v3 = MEMORY[0x1E699A810];
    goto LABEL_13;
  }

  if ([v2 isEqualToString:@"BrandIndicatorLocation"])
  {
    v3 = MEMORY[0x1E699A828];
    goto LABEL_13;
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (void)persistenceWillUpdateDisplayDateForMessages:(id)messages
{
  messagesCopy = messages;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v7 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  pendingDisplayDateChangesKey = [(EDMessageQueryHelper *)self pendingDisplayDateChangesKey];
  [threadDictionary setObject:v7 forKeyedSubscript:pendingDisplayDateChangesKey];
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation
{
  v11[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  pendingDisplayDateChangesKey = [(EDMessageQueryHelper *)self pendingDisplayDateChangesKey];
  v11[0] = *MEMORY[0x1E699A888];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:generation];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:messagesCopy withPendingChangesKey:pendingDisplayDateChangesKey keyPaths:v9 generation:v10];
}

- (void)persistenceWillUpdateAuthenticationStateForMessages:(id)messages
{
  messagesCopy = messages;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v7 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  pendingAuthenticationChangesKey = [(EDMessageQueryHelper *)self pendingAuthenticationChangesKey];
  [threadDictionary setObject:v7 forKeyedSubscript:pendingAuthenticationChangesKey];
}

- (void)persistenceDidUpdateAuthenticationStateForMessages:(id)messages
{
  v7[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  pendingAuthenticationChangesKey = [(EDMessageQueryHelper *)self pendingAuthenticationChangesKey];
  v7[0] = *MEMORY[0x1E699A810];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:messagesCopy withPendingChangesKey:pendingAuthenticationChangesKey keyPaths:v6 generation:0];
}

- (void)persistenceWillAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages
{
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  if (([query queryOptions] & 0x20) != 0)
  {
  }

  else
  {
    query2 = [(EDMessageQueryHelper *)self query];
    queryOptions = [query2 queryOptions];

    if ((queryOptions & 4) == 0)
    {
      *buf = 0;
      v30 = buf;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__27;
      v33 = __Block_byref_object_dispose__27;
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      threadDictionary = [currentThread threadDictionary];

      queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
      v12 = [queryEvaluator transformMessages:messagesCopy];

      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy__27;
      v27[4] = __Block_byref_object_dispose__27;
      v13 = MEMORY[0x1E695DF70];
      queryEvaluator2 = [(EDMessageQueryHelper *)self queryEvaluator];
      v26 = 0;
      v15 = [queryEvaluator2 filterMessages:v12 unmatchedMessages:&v26];
      v16 = v26;
      v28 = [v13 arrayWithArray:v15];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke;
      aBlock[3] = &unk_1E82551D8;
      v17 = v16;
      v22 = v17;
      selfCopy = self;
      v24 = v27;
      v25 = buf;
      v18 = _Block_copy(aBlock);
      if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performSyncBlock:v18];
      }

      else
      {
        scheduler = [(EDMessageQueryHelper *)self scheduler];
        [scheduler performBlock:v18];
      }

      _Block_object_dispose(v27, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_11;
    }
  }

  v20 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update.", buf, 2u);
  }

LABEL_11:
}

void __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    os_unfair_lock_lock(v2 + 6);
    v3 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke_2;
    v7[3] = &unk_1E82551B0;
    v8 = *(a1 + 40);
    [v3 enumerateObjectsUsingBlock:v7];
    os_unfair_lock_unlock(v2 + 6);
  }

  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = [*(a1 + 40) pendingLabelChangesKey];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

void __71__EDMessageQueryHelper_persistenceWillAddLabels_removeLabels_messages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:?])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

- (void)persistenceDidAddLabels:(id)labels removeLabels:(id)removeLabels messages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  if (([query queryOptions] & 0x20) != 0)
  {
  }

  else
  {
    query2 = [(EDMessageQueryHelper *)self query];
    queryOptions = [query2 queryOptions];

    if ((queryOptions & 4) == 0)
    {
      v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

      pendingLabelChangesKey = [(EDMessageQueryHelper *)self pendingLabelChangesKey];
      [(EDMessageQueryHelper *)self _calculateAndReportLabelChangesForPersistedMessages:v11 withPendingChangesKey:pendingLabelChangesKey];

      messagesCopy = v11;
      goto LABEL_8;
    }
  }

  v13 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update.", v14, 2u);
  }

LABEL_8:
}

- (void)persistenceWillChangeCategorizationForMessages:(id)messages
{
  messagesCopy = messages;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    v9 = [queryEvaluator transformAndFilterMessages:messagesCopy];

    pendingCategorizationChangesKey = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    [threadDictionary setObject:v9 forKeyedSubscript:pendingCategorizationChangesKey];
  }
}

- (void)persistenceDidChangeCategorizationForMessages:(id)messages userInitiated:(BOOL)initiated generationWindow:(id)window
{
  v16[2] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  windowCopy = window;
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) != 0)
  {
    v11 = messagesCopy;
  }

  else
  {
    v11 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

    pendingCategorizationChangesKey = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    v13 = *MEMORY[0x1E699A848];
    v16[0] = *MEMORY[0x1E699A850];
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(windowCopy, "latestGeneration")}];
    [(EDMessageQueryHelper *)self _reportChangesForPersistedMessages:v11 withPendingChangesKey:pendingCategorizationChangesKey keyPaths:v14 generation:v15];
  }
}

- (void)persistenceDidNotChangeCategorizationForMessages:(id)messages
{
  query = [(EDMessageQueryHelper *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 4) == 0)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];
    pendingCategorizationChangesKey = [(EDMessageQueryHelper *)self pendingCategorizationChangesKey];
    [threadDictionary setObject:0 forKeyedSubscript:pendingCategorizationChangesKey];
  }
}

- (void)persistenceDidChangeBusinessIDForMessages:(id)messages fromBusinessID:(int64_t)d
{
  messagesCopy = messages;
  v7 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  query = [(EDMessageQueryHelper *)self query];
  LOBYTE(messagesCopy) = [query queryOptions];

  if ((messagesCopy & 4) == 0)
  {
    v9 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:v7 includeDeleted:0];
    if ([v9 count])
    {
      objc_initWeak(&location, self);
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke;
      v11[3] = &unk_1E8255200;
      objc_copyWeak(v13, &location);
      v12 = v9;
      v13[1] = d;
      [scheduler performBlock:v11];

      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

void __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cancelationToken];
    v5 = [v4 isCanceled];

    if ((v5 & 1) == 0)
    {
      v6 = +[EDMessageQueryHelper log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke_cold_1(v3, a1, v6);
      }

      v7 = [v3 delegate];
      [v7 queryHelper:v3 businessIDDidChangeForMessages:*(a1 + 32) fromBusinessID:*(a1 + 48)];
    }
  }
}

- (void)_reportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key keyPaths:(id)paths generation:(id)generation
{
  messagesCopy = messages;
  keyCopy = key;
  pathsCopy = paths;
  generationCopy = generation;
  v19 = [(EDMessageQueryHelper *)self _unjournaledMessagesForMessages:messagesCopy];

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v15 = [queryEvaluator transformAndFilterMessages:v19];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v18 = [threadDictionary objectForKeyedSubscript:keyCopy];
  [threadDictionary setObject:0 forKeyedSubscript:keyCopy];
  [(EDMessageQueryHelper *)self _reportChangesForCurrentlyMatchingMessages:v15 previouslyMatchingMessages:v18 keyPaths:pathsCopy generation:generationCopy];
}

- (void)_reportChangesForCurrentlyMatchingMessages:(id)messages previouslyMatchingMessages:(id)matchingMessages keyPaths:(id)paths generation:(id)generation
{
  v45 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  matchingMessagesCopy = matchingMessages;
  pathsCopy = paths;
  generationCopy = generation;
  query = [(EDMessageQueryHelper *)self query];
  LOBYTE(paths) = [query queryOptions];

  if ((paths & 0x20) != 0)
  {
    v21 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update for a Spotlight query result.", buf, 2u);
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:messagesCopy];
    v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:matchingMessagesCopy];
    v15 = [v13 mutableCopy];
    [v15 intersectSet:v14];
    [v13 minusSet:v15];
    [v14 minusSet:v15];
    v16 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 134219266;
      selfCopy = self;
      v35 = 2114;
      v36 = v17;
      v37 = 2114;
      v38 = pathsCopy;
      v39 = 2048;
      v40 = [v14 count];
      v41 = 2048;
      v42 = [v13 count];
      v43 = 2048;
      v44 = [v15 count];
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - schedule changes for keyPaths:%{public}@ removed=%lu added=%lu changed=%lu", buf, 0x3Eu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__EDMessageQueryHelper__reportChangesForCurrentlyMatchingMessages_previouslyMatchingMessages_keyPaths_generation___block_invoke;
    aBlock[3] = &unk_1E8252D78;
    v18 = v14;
    v28 = v18;
    selfCopy2 = self;
    v19 = v15;
    v30 = v19;
    v20 = pathsCopy;
    v31 = v20;
    v21 = v13;
    v32 = v21;
    v22 = _Block_copy(aBlock);
    if ([v21 count]&& [(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v22];
    }

    else
    {
      [(EDMessageQueryHelper *)self _performBlockAfterGenerationCheck:v22 generation:generationCopy keyPaths:v20 removedMessages:v18 changedMessages:v19 addedMessages:v21];
    }
  }
}

void __114__EDMessageQueryHelper__reportChangesForCurrentlyMatchingMessages_previouslyMatchingMessages_keyPaths_generation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v8 = [*(a1 + 40) delegate];
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) allObjects];
    [v8 queryHelper:v2 didDeleteMessages:v3];
  }

  if ([*(a1 + 48) count])
  {
    v9 = [*(a1 + 40) delegate];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) allObjects];
    [v9 queryHelper:v4 didUpdateMessages:v5 forKeyPaths:*(a1 + 56)];
  }

  if ([*(a1 + 64) count])
  {
    v10 = [*(a1 + 40) delegate];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 64) allObjects];
    [v10 queryHelper:v6 didAddMessages:v7 searchInfo:0];
  }
}

- (void)_performBlockAfterGenerationCheck:(id)check generation:(id)generation keyPaths:(id)paths removedMessages:(id)messages changedMessages:(id)changedMessages addedMessages:(id)addedMessages
{
  v64 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  generationCopy = generation;
  pathsCopy = paths;
  messagesCopy = messages;
  changedMessagesCopy = changedMessages;
  addedMessagesCopy = addedMessages;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __124__EDMessageQueryHelper__performBlockAfterGenerationCheck_generation_keyPaths_removedMessages_changedMessages_addedMessages___block_invoke;
  v41[3] = &unk_1E8255228;
  v41[4] = &v42;
  [messagePersistence performDatabaseReadBlock:v41];

  if (generationCopy && (v21 = v43[3], v21 <= [generationCopy longLongValue]))
  {
    v23 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v32 = pathsCopy;
      v24 = NSStringFromSelector(a2);
      v31 = [messagesCopy count];
      v25 = [addedMessagesCopy count];
      v26 = [changedMessagesCopy count];
      v27 = v43[3];
      longLongValue = [generationCopy longLongValue];
      *buf = 134220034;
      selfCopy = self;
      v48 = 2114;
      v49 = v24;
      v50 = 2114;
      v51 = v32;
      v52 = 2048;
      v53 = v31;
      v54 = 2048;
      v55 = v25;
      v56 = 2048;
      v57 = v26;
      v58 = 2048;
      v59 = 0x3FC0000000000000;
      v60 = 2048;
      v61 = v27;
      pathsCopy = v32;
      v62 = 2048;
      v63 = longLongValue;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - rescheduling changes for keyPaths:%{public}@ removed=%lu added=%lu changed=%lu after %.3f due to generation %lld not being higher than generation window of the change %lld", buf, 0x5Cu);
    }

    scheduler = [(EDMessageQueryHelper *)self scheduler];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __124__EDMessageQueryHelper__performBlockAfterGenerationCheck_generation_keyPaths_removedMessages_changedMessages_addedMessages___block_invoke_74;
    v34[3] = &unk_1E8255250;
    v34[4] = self;
    v40 = checkCopy;
    v35 = generationCopy;
    v36 = pathsCopy;
    v37 = messagesCopy;
    v38 = changedMessagesCopy;
    v39 = addedMessagesCopy;
    v30 = [scheduler afterDelay:v34 performBlock:0.125];
  }

  else
  {
    scheduler2 = [(EDMessageQueryHelper *)self scheduler];
    [scheduler2 performBlock:checkCopy];
  }

  _Block_object_dispose(&v42, 8);
}

- (id)_persistedMessagesFromSendersWithAddresses:(id)addresses
{
  v19[2] = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  query = [(EDMessageQueryHelper *)self query];
  predicate = [query predicate];
  v7 = [MEMORY[0x1E699ADA0] predicateForMessagesWithSenders:addressesCopy];
  v8 = objc_alloc(MEMORY[0x1E696AB28]);
  v19[0] = predicate;
  v19[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v10 = [v8 initWithType:1 subpredicates:v9];

  v11 = objc_alloc(MEMORY[0x1E699AE28]);
  targetClass = [query targetClass];
  queryOptions = [query queryOptions];
  targetClassOptions = [query targetClassOptions];
  v15 = [v11 initWithTargetClass:targetClass predicate:v10 sortDescriptors:MEMORY[0x1E695E0F0] limit:0 queryOptions:queryOptions targetClassOptions:targetClassOptions label:0];

  messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
  v17 = [messagePersistence persistedMessagesMatchingQuery:v15 limit:0];

  return v17;
}

- (void)_calculateAndReportChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key changeBlock:(id)block
{
  v90 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  keyCopy = key;
  v43 = messagesCopy;
  blockCopy = block;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v49 = [queryEvaluator transformMessages:messagesCopy];

  queryEvaluator2 = [(EDMessageQueryHelper *)self queryEvaluator];
  selfCopy = self;
  v87 = 0;
  v52 = [queryEvaluator2 filterMessages:v49 unmatchedMessages:&v87];
  v45 = v87;

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v41 = [threadDictionary objectForKeyedSubscript:keyCopy];
  [threadDictionary setObject:0 forKeyedSubscript:keyCopy];
  v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v12 = v41;
  v13 = [v12 countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (v13)
  {
    v14 = *v84;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v84 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v83 + 1) + 8 * i);
        objectID = [v16 objectID];
        [v53 setObject:v16 forKeyedSubscript:objectID];
      }

      v13 = [v12 countByEnumeratingWithState:&v83 objects:v89 count:16];
    }

    while (v13);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke;
  aBlock[3] = &unk_1E8255278;
  v42 = v53;
  v82 = v42;
  v51 = _Block_copy(aBlock);
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__27;
  v79 = __Block_byref_object_dispose__27;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__27;
  v73 = __Block_byref_object_dispose__27;
  v74 = 0;
  if ([v12 count] || objc_msgSend(v52, "count"))
  {
    v50 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = v49;
    v19 = 0;
    v20 = [v18 countByEnumeratingWithState:&v65 objects:v88 count:16];
    if (v20)
    {
      v21 = *v66;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v66 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v65 + 1) + 8 * j);
          v24 = [v12 containsObject:v23];
          v25 = [v52 containsObject:v23];
          v26 = v25;
          if (v24)
          {
            v27 = v76[5];
            if (!v27)
            {
              v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v29 = v76[5];
              v76[5] = v28;

              v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v31 = v70[5];
              v70[5] = v30;

              v27 = v76[5];
            }

            v51[2](v51, v27, v70[5], v23);
            if ((v26 & 1) == 0)
            {
              [v50 addObject:v23];
            }
          }

          else if (v25)
          {
            if (!v19)
            {
              v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v19 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v65 objects:v88 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v19 = 0;
    v50 = 0;
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_77;
  v54[3] = &unk_1E82552C8;
  v32 = v12;
  v55 = v32;
  v33 = v52;
  v56 = v33;
  v34 = v50;
  v57 = v34;
  v58 = selfCopy;
  v35 = v19;
  v59 = v35;
  v63 = &v75;
  v64 = &v69;
  v36 = v51;
  v61 = v36;
  v37 = v45;
  v60 = v37;
  v38 = blockCopy;
  v62 = v38;
  v39 = _Block_copy(v54);
  if ([v35 count] && -[EDMessageQueryHelper addMessagesSynchronously](selfCopy, "addMessagesSynchronously"))
  {
    scheduler = [(EDMessageQueryHelper *)selfCopy scheduler];
    [scheduler performSyncBlock:v39];
  }

  else
  {
    scheduler = [(EDMessageQueryHelper *)selfCopy scheduler];
    [scheduler performBlock:v39];
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v75, 8);
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [a2 addObject:v8];
  v9 = *(a1 + 32);
  v10 = [v8 objectID];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    [v7 addObject:v11];
  }

  else
  {
    v12 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 ef_publicDescription];
      __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_cold_1(v13, v14, v12);
    }
  }
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_77(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    if ([*(a1 + 48) count])
    {
      v2 = *(a1 + 56);
      os_unfair_lock_lock(v2 + 6);
      [*(*(a1 + 56) + 16) unionSet:*(a1 + 48)];
      os_unfair_lock_unlock(v2 + 6);
    }

    if ([*(a1 + 64) count])
    {
      v3 = (*(a1 + 56) + 24);
      os_unfair_lock_lock(v3);
      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_2;
      v24[3] = &unk_1E82552A0;
      v5 = *(a1 + 64);
      v24[4] = *(a1 + 56);
      v27 = *(a1 + 96);
      v26 = *(a1 + 80);
      v6 = v4;
      v25 = v6;
      [v5 enumerateObjectsUsingBlock:v24];
      [*(a1 + 64) removeObjectsAtIndexes:v6];

LABEL_7:
      os_unfair_lock_unlock(v3);
    }
  }

  else if ([*(a1 + 72) count])
  {
    v3 = (*(a1 + 56) + 24);
    os_unfair_lock_lock(v3);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(a1 + 72);
    v10 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(a1 + 56) + 16) containsObject:*(*(&v20 + 1) + 8 * i)])
          {
            if (!*(*(*(a1 + 96) + 8) + 40))
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v14 = *(*(a1 + 96) + 8);
              v15 = *(v14 + 40);
              *(v14 + 40) = v13;

              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v17 = *(*(a1 + 104) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = v16;
            }

            (*(*(a1 + 80) + 16))();
          }
        }

        v10 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v10);
    }

    goto LABEL_7;
  }

  v7 = [*(a1 + 56) query];
  v8 = ([v7 queryOptions] & 0x20) == 0;

  if (!v8)
  {
    v9 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Skip updating the message list update for a Spotlight query result.", v19, 2u);
    }

    goto LABEL_15;
  }

  if ([*(*(*(a1 + 96) + 8) + 40) count])
  {
    (*(*(a1 + 88) + 16))();
  }

  if ([*(a1 + 64) count])
  {
    v9 = [*(a1 + 56) delegate];
    [v9 queryHelper:*(a1 + 56) didAddMessages:*(a1 + 64) searchInfo:0];
LABEL_15:
  }
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:?])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    (*(*(a1 + 48) + 16))();
    [*(*(a1 + 32) + 16) removeObject:v11];
    [*(a1 + 40) addIndex:a3];
  }
}

- (void)_calculateAndReportLabelChangesForPersistedMessages:(id)messages withPendingChangesKey:(id)key
{
  messagesCopy = messages;
  keyCopy = key;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v9 = [queryEvaluator transformAndFilterMessages:messagesCopy];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v12 = [threadDictionary objectForKeyedSubscript:keyCopy];
  [threadDictionary setObject:0 forKeyedSubscript:keyCopy];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__27;
  v29[4] = __Block_byref_object_dispose__27;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__27;
  v27 = __Block_byref_object_dispose__27;
  v28 = 0;
  if ([v12 count] || objc_msgSend(v9, "count"))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke;
    v20[3] = &unk_1E82551B0;
    v13 = v9;
    v21 = v13;
    v22 = &v23;
    [v12 enumerateObjectsUsingBlock:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_2;
    v17[3] = &unk_1E82551B0;
    v18 = v12;
    v19 = v29;
    [v13 enumerateObjectsUsingBlock:v17];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_3;
  aBlock[3] = &unk_1E8255318;
  aBlock[4] = self;
  aBlock[5] = &v23;
  aBlock[6] = v29;
  v14 = _Block_copy(aBlock);
  if ([v24[5] count] || objc_msgSend(v9, "count"))
  {
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v14];
    }

    else
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performBlock:v14];
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_3(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = *(a1 + 32);
    os_unfair_lock_lock(v2 + 6);
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_4;
    v6[3] = &unk_1E82552F0;
    v6[4] = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v6];
    os_unfair_lock_unlock(v2 + 6);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v4 = [*(a1 + 32) delegate];
    [v4 queryHelper:*(a1 + 32) didAddMessages:*(*(*(a1 + 48) + 8) + 40) searchInfo:0];
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v5 = [*(a1 + 32) delegate];
    [v5 queryHelper:*(a1 + 32) didDeleteMessages:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void __98__EDMessageQueryHelper__calculateAndReportLabelChangesForPersistedMessages_withPendingChangesKey___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 16) containsObject:?])
  {
    [*(*(a1 + 32) + 16) removeObject:v3];
  }
}

- (void)remoteSearchDidFinish
{
  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EDMessageQueryHelper_remoteSearchDidFinish__block_invoke;
  v4[3] = &unk_1E8250260;
  v4[4] = self;
  [scheduler performBlock:v4];
}

void __45__EDMessageQueryHelper_remoteSearchDidFinish__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelperDidFinishRemoteSearch:*(a1 + 32)];
}

- (void)remoteSearchDidFindMessages:(id)messages inLocalIndex:(BOOL)index
{
  indexCopy = index;
  v15 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v7 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &stru_1F45B4608;
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    if (indexCopy)
    {
      v8 = @" local index";
    }

    v12 = v8;
    v13 = 2112;
    v14 = messagesCopy;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Found %@ messages in remote search: %@", &v9, 0x20u);
  }

  [(EDMessageQueryHelper *)self _foundMessages:messagesCopy inRemoteSearch:1 foundInLocalIndex:indexCopy];
}

- (void)localSearchDidFinish
{
  v12 = *MEMORY[0x1E69E9840];
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector setLiveSearchQueryStatus:1];

  v4 = +[EDMessageQueryHelper log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    query = [(EDMessageQueryHelper *)self query];
    *buf = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = query;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p: Finished live query %{public}@", buf, 0x16u);
  }

  [(EDMessageQueryHelper *)self setReturningInitialResults:0];
  scheduler = [(EDMessageQueryHelper *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__EDMessageQueryHelper_localSearchDidFinish__block_invoke;
  v7[3] = &unk_1E8250260;
  v7[4] = self;
  [scheduler performBlock:v7];
}

void __44__EDMessageQueryHelper_localSearchDidFinish__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 localSearchInfoCollector];
  [v4 queryHelperDidFindAllMessages:v2 localSearchInfoCollector:v3];
}

- (void)localSearchDidFail
{
  *buf = 134218242;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "%p: Failed live query %{public}@", buf, 0x16u);
}

void __42__EDMessageQueryHelper_localSearchDidFail__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 localSearchInfoCollector];
  [v4 queryHelperDidFailInitialLoad:v2 localSearchInfoCollector:v3];
}

- (void)localSearchDidFinishTopHitsQuery:(int)query
{
  v3 = *&query;
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector setTopHitsQueryStatus:v3];
}

- (void)localSearchDidHaveTopHitsQueryEmbedding:(BOOL)embedding
{
  embeddingCopy = embedding;
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector setHasTopHitsQueryEmbedding:embeddingCopy];
}

- (void)localSearchDidHaveQueryEmbedding:(BOOL)embedding
{
  embeddingCopy = embedding;
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector setHasLiveSearchQueryEmbedding:embeddingCopy];
}

- (void)localSearchDidFindMessages:(id)messages itemSnippetData:(id)data rankingSignals:(id)signals
{
  v53 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dataCopy = data;
  signalsCopy = signals;
  if ([(EDMessageQueryHelper *)self returningInitialResults])
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    [queryEvaluator addMessagesToFilterSet:messagesCopy];

    v34 = [(EDMessageQueryHelper *)self _transformAndFilterMessages:messagesCopy includeDeleted:0];
    if ([(EDMessageQueryHelper *)self snippetDataBudgetRemaining])
    {
      v43 = 0;
      v11 = [(EDMessageQueryHelper *)self _snippetsByObjectIDForMessages:v34 itemSnippetData:dataCopy max:[(EDMessageQueryHelper *)self snippetDataBudgetRemaining] snippetMessageObjectIDsByConversation:&v43];
      v12 = v43;
      v13 = [v11 count];
      if (v13 <= [(EDMessageQueryHelper *)self snippetDataBudgetRemaining])
      {
        -[EDMessageQueryHelper setSnippetDataBudgetRemaining:](self, "setSnippetDataBudgetRemaining:", -[EDMessageQueryHelper snippetDataBudgetRemaining](self, "snippetDataBudgetRemaining") - [v11 count]);
        v16 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          snippetDataBudgetRemaining = [(EDMessageQueryHelper *)self snippetDataBudgetRemaining];
          v18 = [v11 count];
          query = [(EDMessageQueryHelper *)self query];
          *buf = 134218754;
          selfCopy2 = self;
          v47 = 2048;
          v48 = snippetDataBudgetRemaining;
          v49 = 2048;
          v50 = v18;
          v51 = 2114;
          v52 = query;
          _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: %lu remaining budget after %lu snippet data for query: %{public}@", buf, 0x2Au);
        }

        v15 = v11;
      }

      else
      {
        v14 = +[EDMessageQueryHelper log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v31 = [v11 count];
          snippetDataBudgetRemaining2 = [(EDMessageQueryHelper *)self snippetDataBudgetRemaining];
          query2 = [(EDMessageQueryHelper *)self query];
          *buf = 134218754;
          selfCopy2 = self;
          v47 = 2048;
          v48 = v31;
          v49 = 2048;
          v50 = snippetDataBudgetRemaining2;
          v51 = 2114;
          v52 = query2;
          _os_log_fault_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_FAULT, "%p: Got %lu snippet data with %lu remaining budget for query: %{public}@", buf, 0x2Au);
        }

        v15 = v11;
        [(EDMessageQueryHelper *)self setSnippetDataBudgetRemaining:0];
      }
    }

    else
    {
      v15 = 0;
      v12 = 0;
    }

    localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
    [localSearchInfoCollector processRankingSignalsBySearchableItemID:signalsCopy forMessages:v34];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v34;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        v24 = 0;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v39 + 1) + 8 * v24++) setSearchResultType:2];
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v22);
    }

    v25 = [EDMessageSearchInfo searchInfoWithInstantAnswer:0 snippetsByObjectID:v15 snippetMessageObjectIDsByConversation:v12];
    cancelationToken = [(EDMessageQueryHelper *)self cancelationToken];
    scheduler = [(EDMessageQueryHelper *)self scheduler];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __82__EDMessageQueryHelper_localSearchDidFindMessages_itemSnippetData_rankingSignals___block_invoke;
    v36[3] = &unk_1E8255340;
    v36[4] = self;
    v28 = v21;
    v37 = v28;
    v29 = v25;
    v38 = v29;
    v30 = [scheduler performCancelableBlock:v36];
    [cancelationToken addCancelable:v30];
  }

  else
  {
    [(EDMessageQueryHelper *)self _foundMessages:messagesCopy inRemoteSearch:0 foundInLocalIndex:0];
  }
}

void __82__EDMessageQueryHelper_localSearchDidFindMessages_itemSnippetData_rankingSignals___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 queryHelper:*(a1 + 32) didFindMessages:*(a1 + 40) searchInfo:*(a1 + 48) forInitialBatch:1];
}

- (void)localSearchDidFindTopHits:(id)hits itemSnippetData:(id)data rankingSignals:(id)signals instantAnswer:(id)answer
{
  v59 = *MEMORY[0x1E69E9840];
  hitsCopy = hits;
  dataCopy = data;
  signalsCopy = signals;
  answerCopy = answer;
  if (answerCopy)
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 134218498;
      selfCopy2 = self;
      v57 = 2114;
      *v58 = v12;
      *&v58[8] = 2114;
      *&v58[10] = answerCopy;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p: %{public}@ - instantAnswers for objectID:%{public}@", buf, 0x20u);
    }
  }

  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  [queryEvaluator addMessagesToFilterSet:hitsCopy];
  [queryEvaluator transformMessages:hitsCopy includeDeleted:0];
  v40 = v53 = 0;
  v37 = [EDMessageQueryHelper _snippetsByObjectIDForMessages:"_snippetsByObjectIDForMessages:itemSnippetData:max:snippetMessageObjectIDsByConversation:" itemSnippetData:? max:? snippetMessageObjectIDsByConversation:?];
  v36 = v53;
  localSearchInfoCollector = [(EDMessageQueryHelper *)self localSearchInfoCollector];
  [localSearchInfoCollector processRankingSignalsBySearchableItemID:signalsCopy forMessages:v40];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v40;
  v14 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v14)
  {
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        [v17 setSearchResultType:3];
        searchableMessageID = [v17 searchableMessageID];
        stringValue = [searchableMessageID stringValue];
        v20 = [signalsCopy objectForKeyedSubscript:stringValue];

        if (v20)
        {
          l1Score = [v20 l1Score];
          l2Score = [v20 l2Score];
          v23 = MEMORY[0x1E696AD98];
          [l1Score doubleValue];
          v25 = v24;
          [l2Score doubleValue];
          v27 = [v23 numberWithDouble:v25 + v26];
          [v17 setSearchRelevanceScore:v27];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v14);
  }

  if ([obj count])
  {
    v28 = [EDMessageSearchInfo searchInfoWithInstantAnswer:answerCopy snippetsByObjectID:v37 snippetMessageObjectIDsByConversation:v36];
    v29 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [obj count];
      query = [(EDMessageQueryHelper *)self query];
      *buf = 134218498;
      selfCopy2 = self;
      v57 = 1024;
      *v58 = v30;
      *&v58[4] = 2114;
      *&v58[6] = query;
      _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "%p: Adding %u filtered messages: %{public}@", buf, 0x1Cu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__EDMessageQueryHelper_localSearchDidFindTopHits_itemSnippetData_rankingSignals_instantAnswer___block_invoke;
    aBlock[3] = &unk_1E8250AB8;
    v45 = obj;
    v46 = hitsCopy;
    selfCopy3 = self;
    v32 = v28;
    v48 = v32;
    v33 = _Block_copy(aBlock);
    if ([(EDMessageQueryHelper *)self addMessagesSynchronously])
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performSyncBlock:v33];
    }

    else
    {
      scheduler = [(EDMessageQueryHelper *)self scheduler];
      [scheduler performBlock:v33];
    }
  }
}

void __95__EDMessageQueryHelper_localSearchDidFindTopHits_itemSnippetData_rankingSignals_instantAnswer___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = EFFetchSignpostLog();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = [*(a1 + 40) count];
    v10[0] = 67109120;
    v10[1] = v6;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "QueryHelperDidAddMessages Callback", "count=%{signpost.description:attribute}u ", v10, 8u);
  }

  v7 = [*(a1 + 48) delegate];
  [v7 queryHelper:*(a1 + 48) didAddMessages:*(a1 + 32) searchInfo:*(a1 + 56)];

  v8 = v5;
  v9 = v8;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_END, v3, "QueryHelperDidAddMessages Callback", "", v10, 2u);
  }
}

- (void)controller:(id)controller messageTimerFired:(id)fired
{
  v13[1] = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  if ([(EDMessageQueryHelper *)self updateDisplayDate])
  {
    queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
    v13[0] = firedCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [queryEvaluator transformAndFilterMessages:v7];
    firstObject = [v8 firstObject];

    if (firstObject)
    {
      messagePersistence = [(EDMessageQueryHelper *)self messagePersistence];
      v12 = firedCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      [messagePersistence updateBeforeDisplayForPersistedMessages:v11];
    }
  }
}

- (id)_transformAndFilterMessages:(id)messages includeDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v25 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  queryEvaluator = [(EDMessageQueryHelper *)self queryEvaluator];
  v8 = [queryEvaluator transformMessages:messagesCopy includeDeleted:deletedCopy];
  v17 = 0;
  v9 = [queryEvaluator filterMessages:v8 unmatchedMessages:&v17];
  v10 = v17;
  if ([v10 count])
  {
    v11 = +[EDMessageQueryHelper log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2112;
      v22 = messagesCopy;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEBUG, "%p: messages %@, unmatched %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_noLongerMatchingMessagesLock);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__EDMessageQueryHelper__transformAndFilterMessages_includeDeleted___block_invoke;
    v16[3] = &unk_1E8250858;
    v16[4] = self;
    v12 = [v10 ef_filter:v16];
    os_unfair_lock_unlock(&self->_noLongerMatchingMessagesLock);
    if ([v12 count])
    {
      v18[0] = v9;
      v18[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      ef_flatten = [v13 ef_flatten];

      v9 = ef_flatten;
    }
  }

  return v9;
}

- (id)_snippetsByObjectIDForMessages:(id)messages itemSnippetData:(id)data max:(unint64_t)max snippetMessageObjectIDsByConversation:(id *)conversation
{
  v44 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dataCopy = data;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__27;
  v41 = __Block_byref_object_dispose__27;
  v42 = objc_opt_new();
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__27;
  v35 = __Block_byref_object_dispose__27;
  v36 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = dataCopy;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        snippetHints = [v15 snippetHints];
        searchableItemIdentifier = [v15 searchableItemIdentifier];
        [v10 setObject:snippetHints forKeyedSubscript:searchableItemIdentifier];
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v12);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __113__EDMessageQueryHelper__snippetsByObjectIDForMessages_itemSnippetData_max_snippetMessageObjectIDsByConversation___block_invoke;
  v22[3] = &unk_1E8255368;
  v24 = &v37;
  v18 = v10;
  v23 = v18;
  v25 = &v31;
  maxCopy = max;
  [messagesCopy enumerateObjectsUsingBlock:v22];
  if (conversation)
  {
    *conversation = v32[5];
  }

  v19 = v38[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v19;
}

void __113__EDMessageQueryHelper__snippetsByObjectIDForMessages_itemSnippetData_max_snippetMessageObjectIDsByConversation___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v7 = [v18 objectID];
  v8 = [v18 searchableMessageID];
  v9 = a1[4];
  v10 = [v8 stringValue];
  v11 = [v9 objectForKeyedSubscript:v10];
  [*(*(a1[5] + 8) + 40) setObject:v11 forKeyedSubscript:v7];

  v12 = *(*(a1[6] + 8) + 40);
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "conversationID")}];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    [v14 addObject:v7];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
    v16 = *(*(a1[6] + 8) + 40);
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v18, "conversationID")}];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v14 = v15;
  }

  if (a1[7] - 1 == a3)
  {
    *a4 = 1;
  }
}

- (void)persistenceDidDeleteAllMessagesInMailboxesWithURLs:(uint8_t *)buf generationWindow:(os_log_t)log .cold.1(uint64_t a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: Did delete all messages in %u mailbox(es). Requesting restart.", buf, 0x12u);
}

void __81__EDMessageQueryHelper_persistenceDidChangeBusinessIDForMessages_fromBusinessID___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: persistenceDidUpdateBusinessIDForMessages %@", &v4, 0x16u);
}

void __105__EDMessageQueryHelper__calculateAndReportChangesForPersistedMessages_withPendingChangesKey_changeBlock___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Unable to find previous message: %{public}@", buf, 0xCu);
}

@end