@interface EDMessageQueryHandler
+ (OS_os_log)log;
+ (id)findMessagesByPreviousObjectIDForAddedMessages:(id)messages messageSource:(id)source comparator:(id)comparator;
- (BOOL)_hasUrgentSectionPredicateForQuery:(id)query;
- (BOOL)_queryHelperIsCurrent:(id)current;
- (BOOL)start;
- (EDMessageQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller searchProvider:(id)provider observer:(id)observer observationIdentifier:(id)identifier observationResumer:(id)self0;
- (id)_createChangesForMessagesWithConversationID:(int64_t)d block:(id)block;
- (id)_extraInfoForMessages:(id)messages messagesToPrecache:(id)precache outObjectIDs:(id *)ds searchInfo:(id)info;
- (id)_extraInfoFromLocalSearchInfoCollector:(id)collector;
- (id)_getResultsObserver;
- (id)_messageItemIDsBySectionFromMessages:(id)messages;
- (id)_messagesBeforeMessageWithObjectID:(id)d fromMessagesFromQueryHelper:(id)helper afterRequestedMessage:(id *)message;
- (id)_messagesForInitialBatchWithMessagesFromQueryHelper:(id)helper requestedMessage:(id *)message;
- (id)_objectIDsAndUnreadObjectIDsFromMessages:(id)messages unreadObjectIDs:(id *)ds;
- (id)_oldestItemQueryForMailbox:(id)mailbox;
- (id)_queryWithUpdatedSortDescriptorFromQuery:(id)query;
- (id)_requestedItemObjectID;
- (id)_sortMessagesBySections:(id)sections;
- (id)findMessagesByPreviousObjectIDForAddedMessages:(id)messages helper:(id)helper;
- (id)itemIDsForStateCaptureWithErrorString:(id *)string;
- (id)labelForStateCapture;
- (void)_contentProtectionChangedToLocked;
- (void)_contentProtectionChangedToUnlocked;
- (void)_createHelper;
- (void)_initializeOldestMessagesByMailbox;
- (void)_oldestMessagesByMailboxObjectIDsWasUpdated;
- (void)_oldestMessagesNeedUpdate;
- (void)_reportFoundMessages:(id)messages before:(id)before messagesToPrecache:(id)precache searchInfo:(id)info;
- (void)_restartHelper;
- (void)_updateOldestMessagesForMailboxes:(id)mailboxes cancelationToken:(id)token;
- (void)cancel;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d;
- (void)queryHelper:(id)helper conversationIDDidChangeForMessages:(id)messages fromConversationID:(int64_t)d;
- (void)queryHelper:(id)helper conversationNotificationLevelDidChangeForConversation:(int64_t)conversation conversationID:(int64_t)d;
- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info;
- (void)queryHelper:(id)helper didDeleteMessages:(id)messages;
- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch;
- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths;
- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages;
- (void)queryHelper:(id)helper objectIDDidChangeForMessage:(id)message oldObjectID:(id)d oldConversationID:(int64_t)iD;
- (void)queryHelperDidFailInitialLoad:(id)load localSearchInfoCollector:(id)collector;
- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector;
- (void)queryHelperDidFinishRemoteSearch:(id)search;
- (void)queryHelperNeedsRestart:(id)restart;
@end

@implementation EDMessageQueryHandler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EDMessageQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_64 != -1)
  {
    dispatch_once(&log_onceToken_64, block);
  }

  v2 = log_log_64;

  return v2;
}

void __28__EDMessageQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_64;
  log_log_64 = v1;
}

- (EDMessageQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller searchProvider:(id)provider observer:(id)observer observationIdentifier:(id)identifier observationResumer:(id)self0
{
  v74[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  persistenceCopy = persistence;
  registryCopy = registry;
  controllerCopy = controller;
  providerCopy = provider;
  observerCopy = observer;
  identifierCopy = identifier;
  resumerCopy = resumer;
  if ([(EDMessageQueryHandler *)self _hasUrgentSectionPredicateForQuery:queryCopy])
  {
    v18 = [(EDMessageQueryHandler *)self _queryWithUpdatedSortDescriptorFromQuery:queryCopy];

    queryCopy = v18;
  }

  v73.receiver = self;
  v73.super_class = EDMessageQueryHandler;
  v19 = [(EDMessageRepositoryQueryHandler *)&v73 initWithQuery:queryCopy messagePersistence:persistenceCopy hookRegistry:registryCopy remindMeNotificationController:controllerCopy observer:observerCopy observationIdentifier:identifierCopy];
  v20 = v19;
  v21 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_searchProvider, provider);
    if (resumerCopy)
    {
      objc_storeStrong(&v20->_observerResumer, resumer);
      v22 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.EmailDaemon.EDMessageQueryHandler.resumeClientScheduler"];
      resumeClientScheduler = v21->_resumeClientScheduler;
      v21->_resumeClientScheduler = v22;

      v24 = objc_alloc(MEMORY[0x1E699B7A8]);
      v25 = v21->_resumeClientScheduler;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __167__EDMessageQueryHandler_initWithQuery_messagePersistence_hookRegistry_remindMeNotificationController_searchProvider_observer_observationIdentifier_observationResumer___block_invoke;
      v71[3] = &unk_1E8254CC8;
      v72 = resumerCopy;
      v26 = [v24 initWithTimeInterval:v25 scheduler:0 startAfter:v71 block:1.0];
      resumeClientDebouncer = v21->_resumeClientDebouncer;
      v21->_resumeClientDebouncer = v26;
    }

    v28 = MEMORY[0x1E699B978];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.%p", objc_opt_class(), v21];
    v30 = [v28 serialDispatchQueueSchedulerWithName:v29 qualityOfService:25];
    scheduler = v21->_scheduler;
    v21->_scheduler = v30;

    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_create("com.apple.email.EDMessageQueryHandler.contentProtection", v32);
    contentProtectionQueue = v20->_contentProtectionQueue;
    v20->_contentProtectionQueue = v33;

    dispatch_queue_set_specific(v20->_contentProtectionQueue, &kContentProtectionQueueKey_0, v21, 0);
    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("com.apple.email.EDMessageQueryHandler.result", v35);
    resultQueue = v21->_resultQueue;
    v21->_resultQueue = v36;

    v38 = objc_alloc(MEMORY[0x1E699AC58]);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v38 initWithTitle:v40 delegate:v21];
    stateCapturer = v21->_stateCapturer;
    v21->_stateCapturer = v41;

    v43 = MEMORY[0x1E699ADA0];
    query = [(EDMessageRepositoryQueryHandler *)v21 query];
    predicate = [query predicate];
    v46 = [v43 predicateFromPredicate:predicate ignoringKeyPaths:MEMORY[0x1E695E0F0]];

    v47 = MEMORY[0x1E699ADA0];
    v74[0] = *MEMORY[0x1E699A8D8];
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
    v49 = [v47 predicateFromPredicate:v46 ignoringKeyPaths:v48];

    if (([v46 isEqual:v49] & 1) == 0)
    {
      v21->_hasUrgentPredicate = 1;
    }

    v50 = [EDSectionQueryItemHelper sectionQueryItemHelperWithQuery:queryCopy];
    sectionQueryHelper = v20->_sectionQueryHelper;
    v20->_sectionQueryHelper = v50;

    if (v20->_sectionQueryHelper)
    {
      query2 = [(EDMessageRepositoryQueryHandler *)v21 query];
      sortDescriptors = [query2 sortDescriptors];
      v54 = EFComparatorFromSortDescriptors();
      v55 = _Block_copy(v54);
    }

    else
    {
      v55 = 0;
    }

    v56 = [(EDSectionQueryItemHelper *)v21->_sectionQueryHelper comparatorForItemComparator:v55];
    v57 = v56;
    if (!v56)
    {
      v56 = v55;
    }

    v58 = _Block_copy(v56);
    comparator = v21->_comparator;
    v21->_comparator = v58;

    if (([queryCopy queryOptions] & 0x20) != 0)
    {
      v60 = objc_alloc(MEMORY[0x1E699B7F0]);
      v61 = [[_EDMessageQueryHandlerList alloc] initWithQuery:queryCopy];
      v62 = [v60 initWithObject:v61];
      messageList = v21->_messageList;
      v21->_messageList = v62;
    }
  }

  return v21;
}

- (BOOL)start
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = EDMessageQueryHandler;
  start = [(EDMessageRepositoryQueryHandler *)&v12 start];
  v4 = +[EDMessageQueryHandler log];
  v5 = v4;
  if (start)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218242;
      selfCopy2 = self;
      v15 = 2112;
      v16 = query;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Starting with query '%@'", buf, 0x16u);
    }

    v11.receiver = self;
    v11.super_class = EDMessageQueryHandler;
    [(EDMessageRepositoryQueryHandler *)&v11 start];
    contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__EDMessageQueryHandler_start__block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(contentProtectionQueue, block);

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      contentProtectionQueue2 = [(EDMessageQueryHandler *)self contentProtectionQueue];
      EFRegisterContentProtectionObserver();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "%p: Ignoring subsequent call to -start.", buf, 0xCu);
    }
  }

  return start;
}

void *__30__EDMessageQueryHandler_start__block_invoke(uint64_t a1)
{
  if ((EFProtectedDataAvailable() & 1) != 0 || (result = _os_feature_enabled_impl(), result))
  {
    v3 = *(a1 + 32);

    return [v3 _createHelper];
  }

  return result;
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = EDMessageQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v7 cancel];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__EDMessageQueryHandler_cancel__block_invoke;
  aBlock[3] = &unk_1E8250260;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (dispatch_get_specific(&kContentProtectionQueueKey_0))
  {
    v3[2](v3);
  }

  else
  {
    contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
    dispatch_sync(contentProtectionQueue, v3);
  }

  v5 = EFAtomicObjectRelease();
  [v5 cancel];
}

void __31__EDMessageQueryHandler_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidCancel:1];
  v2 = [*(a1 + 32) currentQueryHelper];
  [v2 cancel];
}

- (void)dealloc
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  v3.receiver = self;
  v3.super_class = EDMessageQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v3 dealloc];
}

- (BOOL)_hasUrgentSectionPredicateForQuery:(id)query
{
  targetClassOptions = [query targetClassOptions];
  v4 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];

  allValues = [v4 allValues];
  v6 = [allValues ef_any:&__block_literal_global_57];

  return v6;
}

- (id)_queryWithUpdatedSortDescriptorFromQuery:(id)query
{
  queryCopy = query;
  sortDescriptors = [queryCopy sortDescriptors];
  v5 = [sortDescriptors mutableCopy];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E699A900] ascending:0];
  [v5 insertObject:v6 atIndex:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__EDMessageQueryHandler__queryWithUpdatedSortDescriptorFromQuery___block_invoke;
  v10[3] = &unk_1E8254CF8;
  v7 = v5;
  v11 = v7;
  v8 = [queryCopy queryWithBuilder:v10];

  return v8;
}

- (id)_getResultsObserver
{
  resumeClientDebouncer = [(EDMessageQueryHandler *)self resumeClientDebouncer];
  null = [MEMORY[0x1E695DFB0] null];
  [resumeClientDebouncer debounceResult:null];

  return [(EDMessageRepositoryQueryHandler *)self resultsObserver];
}

- (void)_restartHelper
{
  v10 = *MEMORY[0x1E69E9840];
  contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  v4 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    currentQueryHelper = [(EDMessageQueryHandler *)self currentQueryHelper];
    v6 = 134218240;
    selfCopy = self;
    v8 = 2048;
    v9 = currentQueryHelper;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "%p: (Re-)starting the helper (old = %p).", &v6, 0x16u);
  }

  [(EDMessageQueryHandler *)self _createHelper];
}

- (void)_createHelper
{
  OUTLINED_FUNCTION_2();
  *v1 = 134218240;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v3;
  _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "%p: Created helper %p", v4, 0x16u);
}

void __38__EDMessageQueryHandler__createHelper__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observerWillRestart:*(a1 + 32)];
}

- (BOOL)_queryHelperIsCurrent:(id)current
{
  currentCopy = current;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EDMessageQueryHandler__queryHelperIsCurrent___block_invoke;
  block[3] = &unk_1E8251C08;
  selfCopy = self;
  v11 = &v12;
  v9 = currentCopy;
  v6 = currentCopy;
  dispatch_sync(contentProtectionQueue, block);

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return self;
}

void __47__EDMessageQueryHandler__queryHelperIsCurrent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentQueryHelper];
  *(*(*(a1 + 48) + 8) + 24) = v2 == v3;
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  if ((changed - 1) >= 2)
  {
    if (!changed)
    {
      [(EDMessageQueryHandler *)self _contentProtectionChangedToUnlocked:0];
    }
  }

  else
  {
    [(EDMessageQueryHandler *)self _contentProtectionChangedToLocked];
  }
}

- (void)_contentProtectionChangedToLocked
{
  contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  if (![(EDMessageQueryHandler *)self isInitialized])
  {
    currentQueryHelper = [(EDMessageQueryHandler *)self currentQueryHelper];
    [(EDMessageQueryHandler *)self setCurrentQueryHelper:0];
    v3 = EFAtomicObjectRelease();
    [v3 cancel];
    [currentQueryHelper cancel];
  }
}

- (void)_contentProtectionChangedToUnlocked
{
  contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
  dispatch_assert_queue_V2(contentProtectionQueue);

  if (![(EDMessageQueryHandler *)self didCancel]&& ![(EDMessageQueryHandler *)self isInitialized])
  {

    [(EDMessageQueryHandler *)self _restartHelper];
  }
}

- (id)_objectIDsAndUnreadObjectIDsFromMessages:(id)messages unreadObjectIDs:(id *)ds
{
  v23 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objectID = [v11 objectID];
        [array addObject:objectID];
        flags = [v11 flags];
        read = [flags read];

        if ((read & 1) == 0)
        {
          [array2 addObject:objectID];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (ds)
  {
    v15 = array2;
    *ds = array2;
  }

  return array;
}

- (id)_requestedItemObjectID
{
  query = [(EDMessageRepositoryQueryHandler *)self query];
  targetClassOptions = [query targetClassOptions];
  v4 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9E0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_messagesForInitialBatchWithMessagesFromQueryHelper:(id)helper requestedMessage:(id *)message
{
  v29[1] = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  _requestedItemObjectID = [(EDMessageQueryHandler *)self _requestedItemObjectID];
  if (_requestedItemObjectID)
  {
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = _requestedItemObjectID;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Looking for requested message with objectID: %{public}@", buf, 0xCu);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __94__EDMessageQueryHandler__messagesForInitialBatchWithMessagesFromQueryHelper_requestedMessage___block_invoke;
    v25[3] = &unk_1E8250858;
    v9 = _requestedItemObjectID;
    v26 = v9;
    firstObject = [helperCopy ef_firstObjectPassingTest:v25];
    if (firstObject)
    {
      [(EDMessageQueryHandler *)self setDidFindRequestedItemForInitialBatch:1];
      v11 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [firstObject objectID];
        *buf = 138543362;
        v28 = objectID;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Found requested message in initial batch: objectID=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v14 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v9;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Requested message not in initial batch, fetching separately: %{public}@", buf, 0xCu);
      }

      messagePersistence = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
      v29[0] = v9;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v17 = [messagePersistence messagesForMessageObjectIDs:v16 missedMessageObjectIDs:0];
      firstObject = [v17 firstObject];

      if (firstObject)
      {
        objectID2 = [firstObject objectID];
        v19 = [objectID2 isEqual:v9];

        if (v19)
        {
          v20 = +[EDMessageQueryHandler log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            objectID3 = [firstObject objectID];
            *buf = 138543362;
            v28 = objectID3;
            _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Successfully fetched requested message: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v20 = +[EDMessageQueryHandler log];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [firstObject objectID];
            objc_claimAutoreleasedReturnValue();
            [EDMessageQueryHandler _messagesForInitialBatchWithMessagesFromQueryHelper:requestedMessage:];
          }
        }

        v22 = [helperCopy mutableCopy];
        [v22 addObject:firstObject];
        v11 = helperCopy;
        helperCopy = v22;
      }

      else
      {
        v11 = +[EDMessageQueryHandler log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [EDMessageQueryHandler _messagesForInitialBatchWithMessagesFromQueryHelper:v9 requestedMessage:v11];
        }

        firstObject = 0;
      }
    }

    if (message)
    {
      v23 = firstObject;
      *message = firstObject;
    }

    v13 = helperCopy;
  }

  else
  {
    [(EDMessageQueryHandler *)self setDidFindRequestedItemForInitialBatch:1];
    if (message)
    {
      *message = 0;
    }

    v13 = helperCopy;
  }

  return v13;
}

uint64_t __94__EDMessageQueryHandler__messagesForInitialBatchWithMessagesFromQueryHelper_requestedMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_messagesBeforeMessageWithObjectID:(id)d fromMessagesFromQueryHelper:(id)helper afterRequestedMessage:(id *)message
{
  dCopy = d;
  helperCopy = helper;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__EDMessageQueryHandler__messagesBeforeMessageWithObjectID_fromMessagesFromQueryHelper_afterRequestedMessage___block_invoke;
  v14[3] = &unk_1E8254D20;
  v9 = dCopy;
  v15 = v9;
  v10 = [helperCopy indexOfObjectPassingTest:v14];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (message)
    {
      *message = 0;
    }

    v11 = helperCopy;
  }

  else
  {
    if (message)
    {
      *message = [helperCopy ef_suffix:{objc_msgSend(helperCopy, "count") + ~v10}];
    }

    v11 = [helperCopy ef_prefix:v10];
  }

  v12 = v11;

  return v12;
}

uint64_t __110__EDMessageQueryHandler__messagesBeforeMessageWithObjectID_fromMessagesFromQueryHelper_afterRequestedMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_extraInfoForMessages:(id)messages messagesToPrecache:(id)precache outObjectIDs:(id *)ds searchInfo:(id)info
{
  v42 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  precacheCopy = precache;
  infoCopy = info;
  v38 = 0;
  v31 = messagesCopy;
  v33 = [(EDMessageQueryHandler *)self _objectIDsAndUnreadObjectIDsFromMessages:messagesCopy unreadObjectIDs:&v38];
  v29 = v38;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = dictionary;
  if (v29)
  {
    [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x1E699A7E0]];
  }

  if ([precacheCopy count])
  {
    [v12 setObject:precacheCopy forKeyedSubscript:*MEMORY[0x1E699A7F0]];
  }

  v30 = [(EDMessageQueryHandler *)self _messageItemIDsBySectionFromMessages:v31];
  if ([v30 count])
  {
    v13 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v30;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Returning section info %{public}@", buf, 0xCu);
    }

    [v12 setObject:v30 forKeyedSubscript:*MEMORY[0x1E699A800]];
  }

  instantAnswer = [infoCopy instantAnswer];
  [v12 setObject:instantAnswer forKeyedSubscript:*MEMORY[0x1E699A7E8]];

  snippetsByObjectID = [infoCopy snippetsByObjectID];
  v16 = [snippetsByObjectID count];

  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = v33;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v19)
    {
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          snippetsByObjectID2 = [infoCopy snippetsByObjectID];
          v24 = [snippetsByObjectID2 objectForKeyedSubscript:v22];
          [v17 setObject:v24 forKeyedSubscript:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v19);
    }

    [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x1E699A7D8]];
  }

  if (v28)
  {
    v25 = v33;
    *v28 = v33;
  }

  return v12;
}

- (id)_extraInfoFromLocalSearchInfoCollector:(id)collector
{
  v22 = *MEMORY[0x1E69E9840];
  collectorCopy = collector;
  if (collectorCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__26;
    v16 = __Block_byref_object_dispose__26;
    v17 = 0;
    messageList = [(EDMessageQueryHandler *)self messageList];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__EDMessageQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke;
    v11[3] = &unk_1E8254D48;
    v11[4] = &v12;
    [messageList performWhileLocked:v11];

    v6 = [collectorCopy localSearchInfoForMessageObjectIDs:v13[5]];
    v7 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Returning local search info %{public}@", buf, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v8 initWithObjectsAndKeys:{v6, *MEMORY[0x1E699A808], 0}];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __64__EDMessageQueryHandler__extraInfoFromLocalSearchInfoCollector___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 allMessageObjectIDs];
  v4 = [v3 ef_prefix:*MEMORY[0x1E69ADD58]];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_messageItemIDsBySectionFromMessages:(id)messages
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__EDMessageQueryHandler__messageItemIDsBySectionFromMessages___block_invoke;
  v6[3] = &unk_1E8254D70;
  v6[4] = self;
  v3 = [messages ef_groupBy:v6];
  v4 = [v3 ef_mapValues:&__block_literal_global_41];

  return v4;
}

id __62__EDMessageQueryHandler__messageItemIDsBySectionFromMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sectionQueryHelper];
  v5 = [v4 sectionIdentifierForItem:v3];

  return v5;
}

id __62__EDMessageQueryHandler__messageItemIDsBySectionFromMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_objectID];
  v3 = [v2 ef_mapSelector:sel_collectionItemID];

  return v3;
}

- (id)_sortMessagesBySections:(id)sections
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sectionsCopy = sections;
  v5 = [sectionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(sectionsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        sectionQueryHelper = [(EDMessageQueryHandler *)self sectionQueryHelper];
        [sectionQueryHelper updateSectionForItem:v8];
      }

      v5 = [sectionsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  comparator = [(EDMessageQueryHandler *)self comparator];
  if (comparator)
  {
    v11 = [sectionsCopy sortedArrayWithOptions:16 usingComparator:comparator];
  }

  else
  {
    v11 = sectionsCopy;
  }

  v12 = v11;

  return v12;
}

- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch
{
  batchCopy = batch;
  v29[1] = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  infoCopy = info;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    messageList = [(EDMessageQueryHandler *)self messageList];

    if (messageList)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      messageList2 = [(EDMessageQueryHandler *)self messageList];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __80__EDMessageQueryHandler_queryHelper_didFindMessages_searchInfo_forInitialBatch___block_invoke;
      v24[3] = &unk_1E8254D48;
      v24[4] = &v25;
      [messageList2 performWhileLocked:v24];

      if (*(v26 + 24) == 1)
      {
        [(EDMessageQueryHandler *)self queryHelper:helperCopy didAddMessages:messagesCopy searchInfo:infoCopy];
        _Block_object_dispose(&v25, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(&v25, 8);
    }

    v15 = [(EDMessageQueryHandler *)self _sortMessagesBySections:messagesCopy];

    if (batchCopy)
    {
      v23 = 0;
      v16 = [(EDMessageQueryHandler *)self _messagesForInitialBatchWithMessagesFromQueryHelper:v15 requestedMessage:&v23];
      _requestedItemObjectID = v23;

      if (_requestedItemObjectID)
      {
        v29[0] = _requestedItemObjectID;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      }

      else
      {
        v18 = 0;
      }

      [(EDMessageQueryHandler *)self _reportFoundMessages:v16 before:0 messagesToPrecache:v18 searchInfo:infoCopy];
    }

    else
    {
      if ([(EDMessageQueryHandler *)self didFindRequestedItemForInitialBatch])
      {
        v16 = v15;
        [(EDMessageQueryHandler *)self _reportFoundMessages:v15 before:0 messagesToPrecache:0 searchInfo:infoCopy];
LABEL_19:
        messageList3 = [(EDMessageQueryHandler *)self messageList];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __80__EDMessageQueryHandler_queryHelper_didFindMessages_searchInfo_forInitialBatch___block_invoke_2;
        v20[3] = &unk_1E8254D98;
        messagesCopy = v16;
        v21 = messagesCopy;
        [messageList3 performWhileLocked:v20];

        goto LABEL_20;
      }

      _requestedItemObjectID = [(EDMessageQueryHandler *)self _requestedItemObjectID];
      v22 = 0;
      v16 = [(EDMessageQueryHandler *)self _messagesBeforeMessageWithObjectID:_requestedItemObjectID fromMessagesFromQueryHelper:v15 afterRequestedMessage:&v22];
      v18 = v22;

      if ([v16 count])
      {
        [(EDMessageQueryHandler *)self _reportFoundMessages:v16 before:_requestedItemObjectID messagesToPrecache:0 searchInfo:infoCopy];
      }

      if ([v18 count])
      {
        [(EDMessageQueryHandler *)self _reportFoundMessages:v18 before:0 messagesToPrecache:0 searchInfo:infoCopy];
        [(EDMessageQueryHandler *)self setDidFindRequestedItemForInitialBatch:1];
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __80__EDMessageQueryHandler_queryHelper_didFindMessages_searchInfo_forInitialBatch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasItemsInList];
}

- (void)_reportFoundMessages:(id)messages before:(id)before messagesToPrecache:(id)precache searchInfo:(id)info
{
  v44 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  beforeCopy = before;
  v33 = 0;
  v26 = messagesCopy;
  precacheCopy = precache;
  infoCopy = info;
  v12 = [(EDMessageQueryHandler *)self _extraInfoForMessages:messagesCopy messagesToPrecache:precacheCopy outObjectIDs:&v33 searchInfo:?];
  v13 = v33;
  v14 = [v13 count];
  if (v14 > 0xA)
  {
    v15 = [v13 ef_prefix:5];
    v17 = [v13 ef_suffix:5];
    v18 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134219010;
      selfCopy2 = self;
      v36 = 2048;
      v37 = v14;
      v38 = 2114;
      v39 = v15;
      v40 = 2114;
      v41 = v17;
      v42 = 2114;
      v43 = query;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Found %lu objectIDs starting with: %{public}@\nending with:\n%{public}@\n%{public}@", buf, 0x34u);
    }
  }

  else
  {
    v15 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      query2 = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218754;
      selfCopy2 = self;
      v36 = 2048;
      v37 = v14;
      v38 = 2114;
      v39 = v13;
      v40 = 2114;
      v41 = query2;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "%p: Found %lu objectIDs: %{public}@\n%{public}@", buf, 0x2Au);
    }
  }

  v20 = +[EDMessageQueryHandler log];
  v21 = [(EDMessageRepositoryQueryHandler *)self _distinctObjectIDs:v13 queryHandlerLog:v20];

  resultQueue = [(EDMessageQueryHandler *)self resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__EDMessageQueryHandler__reportFoundMessages_before_messagesToPrecache_searchInfo___block_invoke;
  block[3] = &unk_1E8250AB8;
  block[4] = self;
  v30 = v21;
  v31 = beforeCopy;
  v32 = v12;
  v23 = v12;
  v24 = beforeCopy;
  v25 = v21;
  dispatch_sync(resultQueue, block);
}

void __83__EDMessageQueryHandler__reportFoundMessages_before_messagesToPrecache_searchInfo___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedAddedObjectIDs:*(a1 + 40) before:*(a1 + 48) extraInfo:*(a1 + 56)];
}

- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector
{
  v21 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  collectorCopy = collector;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:messagesCopy])
  {
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218242;
      selfCopy = self;
      v19 = 2114;
      v20 = query;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Finished initial load\n%{public}@", buf, 0x16u);
    }

    [(EDMessageQueryHandler *)self setIsInitialized:1];
    [(EDMessageQueryHandler *)self setHasEverReconciledJournal:1];
    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __80__EDMessageQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke;
    v14 = &unk_1E8250128;
    selfCopy2 = self;
    v16 = collectorCopy;
    dispatch_sync(resultQueue, &v11);

    [(EDMessageQueryHandler *)self _initializeOldestMessagesByMailbox:v11];
  }
}

void __80__EDMessageQueryHandler_queryHelperDidFindAllMessages_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) _getResultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFinishInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelperDidFailInitialLoad:(id)load localSearchInfoCollector:(id)collector
{
  v12 = *MEMORY[0x1E69E9840];
  loadCopy = load;
  collectorCopy = collector;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:loadCopy])
  {
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EDMessageRepositoryQueryHandler *)self query];
      objc_claimAutoreleasedReturnValue();
      [EDMessageQueryHandler queryHelperDidFailInitialLoad:localSearchInfoCollector:];
    }

    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__EDMessageQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke;
    v10[3] = &unk_1E8250128;
    v10[4] = self;
    v11 = collectorCopy;
    dispatch_sync(resultQueue, v10);
  }
}

void __80__EDMessageQueryHandler_queryHelperDidFailInitialLoad_localSearchInfoCollector___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _extraInfoFromLocalSearchInfoCollector:*(a1 + 40)];
  v2 = [*(a1 + 32) _getResultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observerDidFailInitialLoad:v3 extraInfo:v4];
}

- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info
{
  v37 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  infoCopy = info;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v11 = [(EDMessageQueryHandler *)self _sortMessagesBySections:messagesCopy];

    messageList = [(EDMessageQueryHandler *)self messageList];

    if (messageList)
    {
      v13 = objc_opt_new();
      messageList2 = [(EDMessageQueryHandler *)self messageList];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke;
      v26[3] = &unk_1E8254DE8;
      v15 = v11;
      v27 = v15;
      selfCopy = self;
      v29 = infoCopy;
      v16 = v13;
      v30 = v16;
      [messageList2 performWhileLocked:v26];

      if ([v16 count])
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_47;
        v24[3] = &unk_1E8250858;
        v25 = v16;
        v17 = [v15 ef_filter:v24];

        v11 = v17;
      }

      else
      {
        v11 = v15;
      }
    }

    v18 = [(EDMessageQueryHandler *)self findMessagesByPreviousObjectIDForAddedMessages:v11 helper:helperCopy];
    v19 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v11 count];
      v21 = [v18 count];
      *buf = 134218496;
      selfCopy2 = self;
      v33 = 1024;
      v34 = v20;
      v35 = 1024;
      v36 = v21;
      _os_log_debug_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEBUG, "%p: Did add %u messages. %u groups.", buf, 0x18u);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_48;
    v22[3] = &unk_1E8254E10;
    v22[4] = self;
    v23 = infoCopy;
    [v18 enumerateKeysAndObjectsUsingBlock:v22];
    [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate];
  }

  else
  {
    v11 = messagesCopy;
  }
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 movesForExistingMessages:*(a1 + 32)];
  if ([v3 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_2;
    v5[3] = &unk_1E8254DC0;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 40);
    v6 = v4;
    v7 = *(a1 + 56);
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 ef_mapSelector:sel_objectID];
  v8 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v9 query];
    v17 = 134218754;
    v18 = v9;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Moving objectIDs: %{public}@ before: %{public}@\n%{public}@", &v17, 0x2Au);
  }

  v11 = [*(a1 + 32) _extraInfoForMessages:v6 messagesToPrecache:0 outObjectIDs:0 searchInfo:*(a1 + 40)];
  v12 = [MEMORY[0x1E695DFB0] null];
  if (v12 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13;

  v15 = [*(a1 + 32) _getResultsObserver];
  v16 = [*(a1 + 32) observationIdentifier];
  [v15 observer:v16 matchedMovedObjectIDs:v7 before:v14 extraInfo:v11];

  [*(a1 + 48) addObjectsFromArray:v6];
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = 0;
  v7 = [*(a1 + 32) _extraInfoForMessages:v6 messagesToPrecache:0 outObjectIDs:&v26 searchInfo:*(a1 + 40)];
  v8 = v26;
  v9 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [v10 query];
    *buf = 134218754;
    v28 = v10;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v5;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Adding objectIDs: %{public}@ before: %{public}@\n%{public}@", buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  if (v12 == v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13;

  v15 = *(a1 + 32);
  v16 = +[EDMessageQueryHandler log];
  v17 = [v15 _distinctObjectIDs:v8 queryHandlerLog:v16];

  v18 = [*(a1 + 32) resultQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_49;
  block[3] = &unk_1E8250AB8;
  block[4] = *(a1 + 32);
  v23 = v17;
  v24 = v14;
  v25 = v7;
  v19 = v7;
  v20 = v14;
  v21 = v17;
  dispatch_sync(v18, block);
}

void __63__EDMessageQueryHandler_queryHelper_didAddMessages_searchInfo___block_invoke_49(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedAddedObjectIDs:*(a1 + 40) before:*(a1 + 48) extraInfo:*(a1 + 56)];
}

- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages
{
  v35 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helper])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = messagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x1E699AD98]);
          flags = [v12 flags];
          [v13 setFlags:flags];

          objectID = [v12 objectID];
          [v7 setObject:v13 forKeyedSubscript:objectID];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v9);
    }

    v16 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v7 allKeys];
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      selfCopy = self;
      v30 = 2114;
      v31 = allKeys;
      v32 = 2114;
      v33 = query;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: Changing flags for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__EDMessageQueryHandler_queryHelper_messageFlagsDidChangeForMessages_previousMessages___block_invoke;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v23 = v7;
    v20 = v7;
    dispatch_sync(resultQueue, block);
  }
}

void __87__EDMessageQueryHandler_queryHelper_messageFlagsDidChangeForMessages_previousMessages___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (void)queryHelper:(id)helper objectIDDidChangeForMessage:(id)message oldObjectID:(id)d oldConversationID:(int64_t)iD
{
  helperCopy = helper;
  messageCopy = message;
  dCopy = d;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__EDMessageQueryHandler_queryHelper_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke;
    block[3] = &unk_1E8250720;
    block[4] = self;
    v14 = dCopy;
    v15 = messageCopy;
    dispatch_sync(resultQueue, block);
  }
}

void __95__EDMessageQueryHandler_queryHelper_objectIDDidChangeForMessage_oldObjectID_oldConversationID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) objectID];
  [v5 observer:v2 replacedExistingObjectID:v3 withNewObjectID:v4];
}

- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths
{
  v36 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  pathsCopy = paths;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    if (-[EDMessageQueryHandler hasUrgentPredicate](self, "hasUrgentPredicate") && [pathsCopy containsObject:*MEMORY[0x1E699A8C0]])
    {
      if (([messagesCopy ef_all:&__block_literal_global_52_0] & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageQueryHandler.m" lineNumber:642 description:@"Messages matched the urgent query without the urgent flag being set"];
      }

      [(EDMessageQueryHandler *)self queryHelper:helperCopy didAddMessages:messagesCopy searchInfo:0];
    }

    else
    {
      v23 = [MEMORY[0x1E699AD98] changesForKeyPaths:pathsCopy ofItems:messagesCopy];
      v12 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v23 allKeys];
        query = [(EDMessageRepositoryQueryHandler *)self query];
        *buf = 134218754;
        selfCopy = self;
        v30 = 2114;
        v31 = pathsCopy;
        v32 = 2114;
        v33 = allKeys;
        v34 = 2114;
        v35 = query;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: Changing key paths: %{public}@ for objectIDs: %{public}@\n%{public}@", buf, 0x2Au);
      }

      if ([(EDMessageRepositoryQueryHandler *)self keyPathsAffectSorting:pathsCopy])
      {
        v15 = [(EDMessageQueryHandler *)self _sortMessagesBySections:messagesCopy];

        v16 = [(EDMessageQueryHandler *)self findMessagesByPreviousObjectIDForAddedMessages:v15 helper:helperCopy];
        messagesCopy = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = [(EDMessageQueryHandler *)self _extraInfoForMessages:messagesCopy messagesToPrecache:0 outObjectIDs:0 searchInfo:0];
      resultQueue = [(EDMessageQueryHandler *)self resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_60;
      block[3] = &unk_1E8250AB8;
      block[4] = self;
      v19 = v23;
      v25 = v19;
      v20 = v16;
      v26 = v20;
      v21 = v17;
      v27 = v21;
      dispatch_sync(resultQueue, block);

      if ([v20 count])
      {
        [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate];
      }
    }
  }
}

uint64_t __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 generatedSummary];
  v3 = [v2 urgent];

  return v3;
}

void __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_60(uint64_t a1)
{
  v2 = [*(a1 + 32) _getResultsObserver];
  v3 = [*(a1 + 32) observationIdentifier];
  [v2 observer:v3 matchedChangesForObjectIDs:*(a1 + 40)];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_2;
  v5[3] = &unk_1E8254E10;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __67__EDMessageQueryHandler_queryHelper_didUpdateMessages_forKeyPaths___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 ef_mapSelector:sel_objectID];
  v8 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v9 query];
    v16 = 134218754;
    v17 = v9;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Adding objectIDs: %{public}@ before: %{public}@\n%{public}@", &v16, 0x2Au);
  }

  v11 = [MEMORY[0x1E695DFB0] null];
  if (v11 == v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  v14 = [*(a1 + 32) _getResultsObserver];
  v15 = [*(a1 + 32) observationIdentifier];
  [v14 observer:v15 matchedMovedObjectIDs:v7 before:v13 extraInfo:*(a1 + 40)];
}

- (void)queryHelper:(id)helper didDeleteMessages:(id)messages
{
  v24 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helper])
  {
    v7 = [messagesCopy ef_mapSelector:sel_objectID];
    v8 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      selfCopy = self;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = query;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Deleting objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __55__EDMessageQueryHandler_queryHelper_didDeleteMessages___block_invoke;
    v15 = &unk_1E8250128;
    selfCopy2 = self;
    v11 = v7;
    v17 = v11;
    dispatch_sync(resultQueue, &v12);

    [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate:v12];
  }
}

void __55__EDMessageQueryHandler_queryHelper_didDeleteMessages___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedDeletedObjectIDs:*(a1 + 40)];
}

- (void)queryHelper:(id)helper conversationIDDidChangeForMessages:(id)messages fromConversationID:(int64_t)d
{
  v35 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helper])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = messagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v9)
    {
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E699AD98]);
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "conversationID")}];
          [v13 setConversationID:v14];

          objectID = [v12 objectID];
          [v7 setObject:v13 forKeyedSubscript:objectID];
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v9);
    }

    v16 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v7 allKeys];
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      selfCopy = self;
      v30 = 2114;
      v31 = allKeys;
      v32 = 2114;
      v33 = query;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p: Changing conversationID for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__EDMessageQueryHandler_queryHelper_conversationIDDidChangeForMessages_fromConversationID___block_invoke;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v23 = v7;
    v20 = v7;
    dispatch_sync(resultQueue, block);
  }
}

void __91__EDMessageQueryHandler_queryHelper_conversationIDDidChangeForMessages_fromConversationID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d
{
  v36 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helper])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = messagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = objc_alloc_init(MEMORY[0x1E699AD98]);
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v12, "businessID")}];
          [v13 setBusinessID:v14];

          businessLogoID = [v12 businessLogoID];
          [v13 setBusinessLogoID:businessLogoID];

          objectID = [v12 objectID];
          [v7 setObject:v13 forKeyedSubscript:objectID];
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v9);
    }

    v17 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v7 allKeys];
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      selfCopy = self;
      v31 = 2114;
      v32 = allKeys;
      v33 = 2114;
      v34 = query;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p: Changing businessID for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__EDMessageQueryHandler_queryHelper_businessIDDidChangeForMessages_fromBusinessID___block_invoke;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v24 = v7;
    v21 = v7;
    dispatch_sync(resultQueue, block);
  }
}

void __83__EDMessageQueryHandler_queryHelper_businessIDDidChangeForMessages_fromBusinessID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (id)_createChangesForMessagesWithConversationID:(int64_t)d block:(id)block
{
  v25[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = [MEMORY[0x1E699ADA0] predicateForMessagesInConversation:d];
  currentQueryHelper = [(EDMessageQueryHandler *)self currentQueryHelper];
  v25[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v19 = [currentQueryHelper messagesWithAdditionalPredicates:v9 limit:0x7FFFFFFFFFFFFFFFLL];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v19;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = blockCopy[2](blockCopy);
        objectID = [v15 objectID];
        [v10 setObject:v16 forKeyedSubscript:objectID];
      }

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v10;
}

- (void)queryHelper:(id)helper conversationNotificationLevelDidChangeForConversation:(int64_t)conversation conversationID:(int64_t)d
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:helper])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke;
    v16[3] = &__block_descriptor_40_e30___EMMessageListItemChange_8__0l;
    v16[4] = conversation;
    v8 = [(EDMessageQueryHandler *)self _createChangesForMessagesWithConversationID:d block:v16];
    v9 = +[EDMessageQueryHandler log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v8 allKeys];
      query = [(EDMessageRepositoryQueryHandler *)self query];
      *buf = 134218498;
      selfCopy = self;
      v19 = 2114;
      v20 = allKeys;
      v21 = 2114;
      v22 = query;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%p: Changing flags for objectIDs: %{public}@\n%{public}@", buf, 0x20u);
    }

    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke_64;
    block[3] = &unk_1E8250128;
    block[4] = self;
    v15 = v8;
    v13 = v8;
    dispatch_sync(resultQueue, block);
  }
}

id __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699AD98]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  [v2 setConversationNotificationLevel:v3];

  return v2;
}

void __106__EDMessageQueryHandler_queryHelper_conversationNotificationLevelDidChangeForConversation_conversationID___block_invoke_64(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observer:v2 matchedChangesForObjectIDs:*(a1 + 40)];
}

- (void)queryHelperDidFinishRemoteSearch:(id)search
{
  searchCopy = search;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:searchCopy])
  {
    resultQueue = [(EDMessageQueryHandler *)self resultQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EDMessageQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_sync(resultQueue, block);
  }
}

void __58__EDMessageQueryHandler_queryHelperDidFinishRemoteSearch___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  [v3 observerDidFinishRemoteSearch:v2];
}

- (void)queryHelperNeedsRestart:(id)restart
{
  restartCopy = restart;
  if ([(EDMessageQueryHandler *)self _queryHelperIsCurrent:restartCopy])
  {
    contentProtectionQueue = [(EDMessageQueryHandler *)self contentProtectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__EDMessageQueryHandler_queryHelperNeedsRestart___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_async(contentProtectionQueue, block);
  }
}

- (void)_initializeOldestMessagesByMailbox
{
  query = [(EDMessageRepositoryQueryHandler *)self query];
  queryOptions = [query queryOptions];

  if (queryOptions)
  {
    if (self->_oldestMessageIDsByMailboxObjectIDs)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageQueryHandler.m" lineNumber:773 description:@"_oldestMessageIDsByMailboxObjectIDs should be only initialized once"];
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    oldestMessageIDsByMailboxObjectIDs = self->_oldestMessageIDsByMailboxObjectIDs;
    self->_oldestMessageIDsByMailboxObjectIDs = dictionary;

    [(EDMessageQueryHandler *)self _oldestMessagesNeedUpdate];
  }
}

- (void)_oldestMessagesNeedUpdate
{
  if (self->_oldestMessageIDsByMailboxObjectIDs)
  {
    v3 = EFAtomicObjectLoad();
    [v3 cancel];
    v4 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    v5 = EFAtomicObjectSetIfIdentical();

    objc_initWeak(&location, self);
    scheduler = [(EDMessageQueryHandler *)self scheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__EDMessageQueryHandler__oldestMessagesNeedUpdate__block_invoke;
    v9[3] = &unk_1E8250098;
    objc_copyWeak(&v11, &location);
    v7 = v5;
    v10 = v7;
    v8 = [scheduler afterDelay:v9 performBlock:2.0];
    [v7 addCancelable:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __50__EDMessageQueryHandler__oldestMessagesNeedUpdate__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDMessageQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained mailboxes];
    v7 = 134218240;
    v8 = WeakRetained;
    v9 = 1024;
    v10 = [v4 count];
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%p: Updating oldest messages for %u mailboxes", &v7, 0x12u);
  }

  v5 = [WeakRetained mailboxes];
  [WeakRetained _updateOldestMessagesForMailboxes:v5 cancelationToken:*(a1 + 32)];

  v6 = EFAtomicObjectReleaseIfIdentical();
}

- (void)_updateOldestMessagesForMailboxes:(id)mailboxes cancelationToken:(id)token
{
  v33 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  tokenCopy = token;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = mailboxesCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v19 = 0;
    v21 = v7;
    v22 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      messagePersistence = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
      v12 = [(EDMessageQueryHandler *)self _oldestItemQueryForMailbox:v9];
      v13 = [messagePersistence messagesMatchingQuery:v12 limit:1 cancelationToken:tokenCopy];
      firstObject = [v13 firstObject];

      isCanceled = [tokenCopy isCanceled];
      if ((isCanceled & 1) == 0)
      {
        objectID = [firstObject objectID];
        v17 = [(NSMutableDictionary *)self->_oldestMessageIDsByMailboxObjectIDs objectForKeyedSubscript:v9];
        if (objectID != v17 && ([objectID isEqual:v17] & 1) == 0)
        {
          v18 = +[EDMessageQueryHandler log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy = self;
            v30 = 2112;
            v31 = v9;
            _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "%p: Updated oldest message for mailbox ID %@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_oldestMessageIDsByMailboxObjectIDs setObject:objectID forKeyedSubscript:v9];
          v19 = 1;
        }
      }

      objc_autoreleasePoolPop(v10);
      if (isCanceled)
      {
        break;
      }

      if (v21 == ++v8)
      {
        v21 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (v19)
    {
      [(EDMessageQueryHandler *)self _oldestMessagesByMailboxObjectIDsWasUpdated];
    }
  }

  else
  {
  }
}

- (id)_oldestItemQueryForMailbox:(id)mailbox
{
  v20[2] = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  query = [(EDMessageRepositoryQueryHandler *)self query];
  predicate = [query predicate];
  v7 = [predicate copy];

  v8 = [MEMORY[0x1E699ADA0] predicateForMessagesInMailboxWithObjectID:mailboxCopy];
  v9 = [MEMORY[0x1E699ADA0] sortDescriptorForDateAscending:1];
  v10 = objc_alloc(MEMORY[0x1E699AE28]);
  query2 = [(EDMessageRepositoryQueryHandler *)self query];
  targetClass = [query2 targetClass];
  v13 = MEMORY[0x1E696AB28];
  v20[0] = v7;
  v20[1] = v8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  v19 = v9;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v17 = [v10 initWithTargetClass:targetClass predicate:v15 sortDescriptors:v16];

  return v17;
}

- (void)_oldestMessagesByMailboxObjectIDsWasUpdated
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "%p: Oldest messages updated", &v2, 0xCu);
}

void __68__EDMessageQueryHandler__oldestMessagesByMailboxObjectIDsWasUpdated__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _getResultsObserver];
  v2 = [*(a1 + 32) observationIdentifier];
  v3 = [*(a1 + 32) oldestMessageIDsByMailboxObjectIDs];
  [v4 observer:v2 matchedOldestItemsUpdatedForMailboxes:v3];
}

- (id)findMessagesByPreviousObjectIDForAddedMessages:(id)messages helper:(id)helper
{
  v28 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  helperCopy = helper;
  messageList = [(EDMessageQueryHandler *)self messageList];

  if (messageList)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__26;
    v26 = __Block_byref_object_dispose__26;
    v27 = 0;
    messageList2 = [(EDMessageQueryHandler *)self messageList];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_helper___block_invoke;
    v19[3] = &unk_1E8254E58;
    v21 = buf;
    v20 = messagesCopy;
    [messageList2 performWhileLocked:v19];

    v10 = *(v23 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = EFFetchSignpostLog();
    v12 = os_signpost_id_make_with_pointer(v11, messagesCopy);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 67109120;
      *&buf[4] = [messagesCopy count];
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "QueryHelper FindMessagesByPreviousID", "count=%{signpost.description:attribute}u ", buf, 8u);
    }

    comparator = [(EDMessageQueryHandler *)self comparator];
    v10 = [EDMessageQueryHandler findMessagesByPreviousObjectIDForAddedMessages:messagesCopy messageSource:helperCopy comparator:comparator];

    v16 = v14;
    v17 = v16;
    if (v12 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v17, OS_SIGNPOST_INTERVAL_END, v12, "QueryHelper FindMessagesByPreviousID", "", buf, 2u);
    }
  }

  return v10;
}

void __79__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_helper___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 insertMessagesReturningMessagesByPreviousObjectID:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)findMessagesByPreviousObjectIDForAddedMessages:(id)messages messageSource:(id)source comparator:(id)comparator
{
  v106[1] = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  sourceCopy = source;
  comparatorCopy = comparator;
  v55 = messagesCopy;
  if ([messagesCopy count])
  {
    query = [sourceCopy query];
    sortDescriptors = [query sortDescriptors];
    if ([sortDescriptors count])
    {
      v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!comparatorCopy)
      {
        comparatorCopy = EFComparatorFromSortDescriptors();
      }

      v53 = comparatorCopy;
      v49 = [messagesCopy sortedArrayWithOptions:16 usingComparator:comparatorCopy];
      v47 = [v49 ef_mapSelector:sel_objectID];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke;
      aBlock[3] = &unk_1E8254EA8;
      v9 = sortDescriptors;
      v98 = v9;
      v48 = _Block_copy(aBlock);
      v10 = [v49 count];
      if (v10 >= 290)
      {
        v11 = 290;
      }

      else
      {
        v11 = v10;
      }

      firstObject = [v49 firstObject];
      v13 = v48[2](v48, firstObject, 1);
      v104 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
      v51 = [sourceCopy sortableMessagesWithAdditionalPredicates:v14 limit:v11 + 10];

      v15 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v51, "count")}];
      v93 = 0;
      v94 = &v93;
      v95 = 0x2020000000;
      v96 = 0;
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_3;
      v89[3] = &unk_1E8254EF8;
      v89[4] = v51;
      v45 = v15;
      v90 = v45;
      v16 = v47;
      v91 = v16;
      v92 = &v93;
      v63 = _Block_copy(v89);
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_5;
      v87[3] = &unk_1E8254F20;
      v62 = v9;
      v88 = v62;
      v17 = _Block_copy(v87);
      v83 = 0;
      v84 = &v83;
      v85 = 0x2020000000;
      v86 = 0;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_6;
      v80[3] = &unk_1E8254F48;
      v80[4] = v60;
      v46 = v17;
      v80[5] = v64;
      v81 = v46;
      v82 = &v83;
      v59 = _Block_copy(v80);
      v74 = 0;
      v75 = &v74;
      v76 = 0x3032000000;
      v77 = __Block_byref_object_copy__26;
      v78 = __Block_byref_object_dispose__26;
      v79 = 0;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_7;
      v69[3] = &unk_1E8254F70;
      v73 = &v74;
      v43 = v16;
      v70 = v43;
      v44 = v48;
      v72 = v44;
      v71 = sourceCopy;
      v58 = _Block_copy(v69);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v49;
      v18 = [obj countByEnumeratingWithState:&v65 objects:v103 count:16];
      if (v18)
      {
        v19 = *v66;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v66 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v65 + 1) + 8 * i);
            v22 = v63[2](v63, v21);
            if (!v22)
            {
              v22 = v59[2](v59, v21);
              if (!v22)
              {
                v22 = v58[2](v58, v21);
              }
            }

            null = [MEMORY[0x1E695DFB0] null];
            v24 = null;
            if (v22 == null)
            {

LABEL_24:
              null2 = [MEMORY[0x1E695DFB0] null];
              goto LABEL_25;
            }

            objectID = [v22 objectID];
            v26 = objectID == 0;

            if (v26)
            {
              goto LABEL_24;
            }

            null2 = [v22 objectID];
            [v60 addObject:v22];
            itemID = [v21 itemID];
            collectionItemID = [null2 collectionItemID];
            if ([itemID isEqual:collectionItemID])
            {
              v30 = +[EDMessageQueryHandler log];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v32 = v75[5];
                *buf = 134218754;
                selfCopy2 = self;
                v101 = 2114;
                *v102 = v21;
                *&v102[8] = 2114;
                *&v102[10] = v22;
                *&v102[18] = 2114;
                *&v102[20] = v32;
                _os_log_error_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_ERROR, "%p: Previous message is message itself -- message: %{public}@\nprevious message: %{public}@\nexclude predicate: %{public}@", buf, 0x2Au);
              }
            }

LABEL_25:
            v31 = [v64 objectForKeyedSubscript:null2];
            if (!v31)
            {
              v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v64 setObject:v31 forKeyedSubscript:null2];
            }

            [v31 ef_insertObject:v21 usingSortDescriptors:v62];
          }

          v18 = [obj countByEnumeratingWithState:&v65 objects:v103 count:16];
        }

        while (v18);
      }

      v33 = *(v94 + 6);
      v34 = [obj count];
      v35 = *(v84 + 6);
      v36 = [obj count];
      v37 = +[EDMessageQueryHandler log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v41 = [v51 count];
        v42 = [obj count];
        *buf = 134219008;
        selfCopy2 = self;
        v101 = 1024;
        *v102 = v41;
        *&v102[4] = 2048;
        *&v102[6] = ((v33 * 100.0) / v34);
        *&v102[14] = 2048;
        *&v102[16] = ((v35 * 100.0) / v36);
        *&v102[24] = 1024;
        *&v102[26] = v42;
        _os_log_debug_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEBUG, "%p: Used head-list-lookup (%u entries) for %.3g%%, faster previous-message-lookup for %.3g%% of %u messages.", buf, 0x2Cu);
      }

      v38 = v64;
      _Block_object_dispose(&v74, 8);

      _Block_object_dispose(&v83, 8);
      _Block_object_dispose(&v93, 8);

      null3 = v60;
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v53 = comparatorCopy;
      v105 = null3;
      v106[0] = messagesCopy;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    }
  }

  else
  {
    v54 = comparatorCopy;
    v38 = MEMORY[0x1E695E0F8];
  }

  return v38;
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_2;
  v17 = &unk_1E8254E80;
  v21 = a3;
  v9 = v5;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  [v8 enumerateObjectsUsingBlock:&v14];
  v12 = [MEMORY[0x1E696AE18] ef_orCompoundPredicateWithSubpredicates:{v11, v14, v15, v16, v17}];

  return v12;
}

void __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 ascending];
  v4 = 2;
  if (*(a1 + 56))
  {
    v4 = 3;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = MEMORY[0x1E696ABC8];
  v7 = [v18 key];
  v8 = [v6 expressionForKeyPath:v7];

  v9 = MEMORY[0x1E696ABC8];
  v10 = *(a1 + 32);
  v11 = [v18 key];
  v12 = [v10 valueForKeyPath:v11];
  v13 = [v9 expressionForConstantValue:v12];

  v14 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v8 rightExpression:v13 modifier:0 type:v5 options:0];
  if ([*(a1 + 40) count])
  {
    v15 = [*(a1 + 40) arrayByAddingObject:v14];
    v16 = [MEMORY[0x1E696AE18] ef_andCompoundPredicateWithSubpredicates:v15];

    v14 = v16;
  }

  [*(a1 + 48) addObject:v14];
  v17 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v8 rightExpression:v13 modifier:0 type:4 options:0];
  [*(a1 + 40) addObject:v17];
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectID];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_4;
  v15[3] = &unk_1E8254ED0;
  v7 = v4;
  v16 = v7;
  v8 = [v5 indexOfObjectAtIndexes:v6 options:0 passingTest:v15];
  v9 = *(a1 + 40);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 removeAllIndexes];
  }

  else
  {
    [v9 removeIndexesInRange:{0, v8}];
    for (i = v8 + 1; i < [*(a1 + 32) count]; ++i)
    {
      v10 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v12 = *(a1 + 48);
      v13 = [v10 objectID];
      LOBYTE(v12) = [v12 containsObject:v13];

      if ((v12 & 1) == 0)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        goto LABEL_9;
      }
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v9 = *v20;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      v12 = [v11 key];
      v13 = [v5 valueForKeyPath:v12];

      v14 = [v11 key];
      v15 = [v6 valueForKeyPath:v14];

      v16 = [v13 compare:v15];
      if (v16 == -1)
      {
        v17 = [v11 ascending];
        goto LABEL_14;
      }

      if (v16 == 1)
      {
        v17 = [v11 ascending] ^ 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v17 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v17;
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_6(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        if ((*(*(a1 + 48) + 16))())
        {
          v9 = *(a1 + 40);
          v10 = [v8 objectID];
          v11 = [v9 objectForKeyedSubscript:v10];
          v12 = [v11 firstObject];

          if (v12 && ((*(*(a1 + 48) + 16))() & 1) != 0)
          {
            ++*(*(*(a1 + 56) + 8) + 24);
            v18 = v8;

            goto LABEL_23;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = *(a1 + 40);
  v14 = [MEMORY[0x1E695DFB0] null];
  v4 = [v13 objectForKeyedSubscript:v14];

  v15 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = *v21;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v4);
        }

        if ((*(*(a1 + 48) + 16))())
        {
          ++*(*(*(a1 + 56) + 8) + 24);
          v18 = [MEMORY[0x1E695DFB0] null];
          goto LABEL_23;
        }
      }

      v15 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_23:

  return v18;
}

id __97__EDMessageQueryHandler_findMessagesByPreviousObjectIDForAddedMessages_messageSource_comparator___block_invoke_7(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!*(*(a1[7] + 8) + 40))
  {
    v4 = [MEMORY[0x1E699AD30] predicateForExcludingMessagesWithObjectIDs:a1[4]];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = (*(a1[6] + 16))();
  v8 = a1[5];
  v9 = *(*(a1[7] + 8) + 40);
  v14[0] = v7;
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v11 = [v8 messagesWithAdditionalPredicates:v10 limit:1];
  v12 = [v11 firstObject];

  return v12;
}

- (id)labelForStateCapture
{
  query = [(EDMessageRepositoryQueryHandler *)self query];
  label = [query label];

  return label;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)string
{
  v5 = objc_alloc_init(_EDMessageItemIDCollector);
  query = [(EDMessageRepositoryQueryHandler *)self query];
  messagePersistence = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
  hookRegistry = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
  remindMeNotificationController = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
  searchProvider = [(EDMessageQueryHandler *)self searchProvider];
  v11 = [(_EDMessageItemIDCollector *)v5 collectItemIDsWithQuery:query messagePersistence:messagePersistence hookRegistry:hookRegistry remindMeNotificationController:remindMeNotificationController searchProvider:searchProvider errorString:string];

  return v11;
}

- (void)_messagesForInitialBatchWithMessagesFromQueryHelper:requestedMessage:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  _os_log_fault_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_FAULT, "MISMATCH: Requested objectID %{public}@ but found message with objectID %{public}@", v4, 0x16u);
}

- (void)_messagesForInitialBatchWithMessagesFromQueryHelper:(uint64_t)a1 requestedMessage:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch requested message: %{public}@", &v2, 0xCu);
}

- (void)queryHelperDidFailInitialLoad:localSearchInfoCollector:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 3.8521e-34);
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "%p: Failed initial load\n%{public}@", v4, 0x16u);
}

@end