@interface EDGroupedSenderQueryHandler
+ (id)_comparatorForSortDescriptors:(id)descriptors sectionPredicates:(id)predicates;
+ (id)resolveMergePathsForMergedBusinesses:(id)businesses;
+ (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionPredicates:(id)predicates sectionIdentifier:(id *)identifier;
- (BOOL)_queryHelperIsCurrent:(id)current;
- (BOOL)start;
- (EDGroupedSenderQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence senderPersistence:(id)senderPersistence businessPersistence:(id)businessPersistence businessCloudStorage:(id)storage hookRegistry:(id)registry remindMeNotificationController:(id)controller observer:(id)self0 observationIdentifier:(id)self1 keepMessagesInListOnBucketChange:(BOOL)self2;
- (EMMessageListItemQueryResultsObserver)resultsObserverIfUncanceled;
- (id)_externalBusinessIDForEmailAddress:(id)address;
- (id)_extraInfoForSenderItemIDsBySection:(id)section includePrecachedSendersFromSenders:(id)senders;
- (id)_groupedSenderForEDGroupedSender:(id)sender;
- (id)_groupedSenderForObjectID:(id)d;
- (id)_itemIDsWithSectionChangesFrom:(id)from to:(id)to;
- (id)_messageQueryFromGroupedQuery:(id)query;
- (id)_senderItemIDsBySectionForSenders:(id)senders;
- (id)_updateDifference:(id)difference from:(id)from forChangedGroups:(id)groups;
- (id)groupedSenderForObjectID:(id)d isPersisted:(BOOL *)persisted error:(id *)error;
- (id)messagesForGroupedSender:(id)sender limit:(int64_t)limit;
- (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionIdentifier:(id *)identifier;
- (void)_filterGroupedSenderChanges:(id)changes withVisibleSenders:(id)senders;
- (void)_messagesWereAdded:(id)added toInitialBatch:(BOOL)batch;
- (void)_messagesWereChanged:(id)changed previousMessages:(id)messages forKeyPaths:(id)paths deleted:(BOOL)deleted;
- (void)_notifyObserversOfInsertedSenders:(id)senders senderItemIDsBySection:(id)section previousSender:(id)sender includePrecachedSenders:(BOOL)precachedSenders notifyBlock:(id)block;
- (void)_notifyObserversOfMovedSenders:(id)senders previousSender:(id)sender includePrecachedSenders:(BOOL)precachedSenders notifyBlock:(id)block;
- (void)_notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:(id)from to:(id)to forChangedGroups:(id)groups itemIDsWithSectionChanges:(id)changes includePrecachedSenders:(BOOL)senders logMessage:(id)message;
- (void)_persistenceDidFinishMergingBusinesses;
- (void)cancel;
- (void)persistenceIsMergingBusinessID:(int64_t)d intoBusinessID:(int64_t)iD;
- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d;
- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info;
- (void)queryHelper:(id)helper didDeleteMessages:(id)messages;
- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch;
- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths;
- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages;
- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector;
- (void)queryHelperNeedsRestart:(id)restart;
- (void)tearDown;
- (void)test_tearDown;
- (void)updateUnseenCountsForBusinessesWithExternalIDs:(id)ds;
- (void)updatedBusinessesWithExternalIDs:(id)ds removedBusinessesWithExternalIDs:(id)iDs;
@end

@implementation EDGroupedSenderQueryHandler

void ___ef_log_EDGroupedSenderQueryHandler_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDGroupedSenderQueryHandler");
  v1 = _ef_log_EDGroupedSenderQueryHandler_log;
  _ef_log_EDGroupedSenderQueryHandler_log = v0;
}

- (EDGroupedSenderQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence senderPersistence:(id)senderPersistence businessPersistence:(id)businessPersistence businessCloudStorage:(id)storage hookRegistry:(id)registry remindMeNotificationController:(id)controller observer:(id)self0 observationIdentifier:(id)self1 keepMessagesInListOnBucketChange:(BOOL)self2
{
  queryCopy = query;
  obj = persistence;
  persistenceCopy = persistence;
  senderPersistenceCopy = senderPersistence;
  businessPersistenceCopy = businessPersistence;
  storageCopy = storage;
  registryCopy = registry;
  controllerCopy = controller;
  v55.receiver = self;
  v55.super_class = EDGroupedSenderQueryHandler;
  observerCopy = observer;
  v51 = controllerCopy;
  identifierCopy = identifier;
  v22 = [(EDMessageRepositoryQueryHandler *)&v55 initWithQuery:queryCopy messagePersistence:persistenceCopy hookRegistry:registryCopy remindMeNotificationController:controllerCopy observer:observerCopy observationIdentifier:?];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_senderPersistence, senderPersistence);
    objc_storeStrong(&v23->_messagePersistence, obj);
    objc_storeStrong(&v23->_businessPersistence, businessPersistence);
    objc_storeStrong(&v23->_businessCloudStorage, storage);
    v24 = objc_alloc_init(MEMORY[0x1E699ACF0]);
    unsubscribeDetector = v23->_unsubscribeDetector;
    v23->_unsubscribeDetector = v24;

    v26 = MEMORY[0x1E699ADA0];
    predicate = [queryCopy predicate];
    mailboxPersistence = [persistenceCopy mailboxPersistence];
    v29 = [v26 threadScopeForPredicate:predicate withMailboxTypeResolver:mailboxPersistence];
    threadScope = v23->_threadScope;
    v23->_threadScope = v29;

    v31 = MEMORY[0x1E699B978];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.%@.%p", objc_opt_class(), v23];
    v33 = [v31 serialDispatchQueueSchedulerWithName:v32 qualityOfService:25];
    scheduler = v23->_scheduler;
    v23->_scheduler = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("com.apple.mail.EDGroupedSenderQueryHandler.result", v35);
    resultQueue = v23->_resultQueue;
    v23->_resultQueue = v36;

    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v23->_grouping = [em_userDefaults preferredGroupedSenderGrouping];

    targetClassOptions = [queryCopy targetClassOptions];
    v40 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
    sectionPredicates = v23->_sectionPredicates;
    v23->_sectionPredicates = v40;

    [(EFOrderedDictionary *)v23->_sectionPredicates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_14];
    v23->_groupedSendersLock._os_unfair_lock_opaque = 0;
    v42 = [_EDGroupedSenderList alloc];
    sortDescriptors = [queryCopy sortDescriptors];
    v44 = [EDGroupedSenderQueryHandler _comparatorForSortDescriptors:sortDescriptors sectionPredicates:v23->_sectionPredicates];
    v45 = [(_EDGroupedSenderList *)v42 initWithComparator:v44 grouping:v23->_grouping];
    groupedSenders = v23->_groupedSenders;
    v23->_groupedSenders = v45;

    v23->_keepMessagesInListOnBucketChange = change;
    [storageCopy beginObserving:v23];
    [registryCopy registerMessageChangeHookResponder:v23];
    [registryCopy registerBusinessChangeHookResponder:v23];
  }

  return v23;
}

- (void)updateUnseenCountsForBusinessesWithExternalIDs:(id)ds
{
  v50 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v6 = _ef_log_EDGroupedSenderQueryHandler(groupedSenders);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v45 = objc_opt_class();
    v46 = 2048;
    selfCopy5 = self;
    v48 = 2048;
    v49 = v5;
    v7 = v45;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  v37 = 88;
  os_unfair_lock_lock(&self->_groupedSendersLock);
  v9 = _ef_log_EDGroupedSenderQueryHandler(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *buf = 138412802;
    v45 = v10;
    v46 = 2048;
    selfCopy5 = self;
    v48 = 2048;
    v49 = v5;
    v11 = v10;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  orderedGroupedSenders = [groupedSenders orderedGroupedSenders];
  v13 = [orderedGroupedSenders countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v13)
  {
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(orderedGroupedSenders);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        externalBusinessID = [v16 externalBusinessID];
        v18 = [dsCopy containsObject:externalBusinessID];

        if (v18)
        {
          recalculateUnseenCount = [v16 recalculateUnseenCount];
          objectID = [v16 objectID];
          [v5 setObject:recalculateUnseenCount forKeyedSubscript:objectID];
        }
      }

      v13 = [orderedGroupedSenders countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v13);
  }

  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  v23 = [groupedSenders orderedGroupedSendersWithLimit:limit & ~(limit >> 63)];
  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v5 withVisibleSenders:v23];
  v24 = [v5 count];
  if (v24)
  {
    v25 = _ef_log_EDGroupedSenderQueryHandler(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = [v5 count];
      *buf = 138412802;
      v45 = v26;
      v46 = 2048;
      selfCopy5 = self;
      v48 = 2048;
      v49 = v27;
      _os_log_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after last seen dates changed)", buf, 0x20u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v5];
  }

  v30 = _ef_log_EDGroupedSenderQueryHandler(v24);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_opt_class();
    *buf = 138412802;
    v45 = v31;
    v46 = 2048;
    selfCopy5 = self;
    v48 = 2048;
    v49 = v5;
    v32 = v31;
    _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }

  os_unfair_lock_unlock((self + v37));
  v34 = _ef_log_EDGroupedSenderQueryHandler(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = objc_opt_class();
    *buf = 138412802;
    v45 = v35;
    v46 = 2048;
    selfCopy5 = self;
    v48 = 2048;
    v49 = v5;
    v36 = v35;
    _os_log_impl(&dword_1C61EF000, v34, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for updating unseen counts", buf, 0x20u);
  }
}

- (id)_groupedSenderForObjectID:(id)d
{
  dCopy = d;
  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "businessID")}];
  v7 = [groupedSenders objectForKeyedSubscript:v6];

  return v7;
}

- (id)_groupedSenderForEDGroupedSender:(id)sender
{
  v24 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (senderCopy)
  {
    os_unfair_lock_assert_owner(&self->_groupedSendersLock);
    newestMessage = [senderCopy newestMessage];

    if (!newestMessage)
    {
      v8 = _ef_log_EDGroupedSenderQueryHandler(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v19 = objc_opt_class();
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = senderCopy;
        v13 = v19;
        _os_log_fault_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_FAULT, "<%@ %p> Empty group sender being created: %{public}@", buf, 0x20u);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E699ACC0]);
    objectID = [senderCopy objectID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__EDGroupedSenderQueryHandler__groupedSenderForEDGroupedSender___block_invoke;
    v14[3] = &unk_1E8252378;
    selfCopy2 = self;
    v17 = a2;
    v15 = senderCopy;
    v11 = [v9 initWithObjectID:objectID builder:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __64__EDGroupedSenderQueryHandler__groupedSenderForEDGroupedSender___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) category];
  [v23 setCategory:v3];

  v4 = [*(a1 + 32) date];
  [v23 setDate:v4];

  v5 = [*(a1 + 32) displayDate];
  [v23 setDisplayDate:v5];

  v6 = [*(a1 + 32) readLater];
  [v23 setReadLater:v6];

  v7 = [*(a1 + 32) subject];
  [v23 setSubject:v7];

  [v23 setCount:{objc_msgSend(*(a1 + 32), "count")}];
  [v23 setUnreadCount:{objc_msgSend(*(a1 + 32), "unreadCount")}];
  [v23 setUnseenCount:{objc_msgSend(*(a1 + 32), "unseenCount")}];
  v8 = [*(a1 + 32) groupedSenderMessageListItems];
  [v23 setGroupedSenderMessageListItems:v8];

  [v23 setBusinessID:{objc_msgSend(*(a1 + 32), "businessID")}];
  v9 = [*(a1 + 32) businessLogoID];
  [v23 setBusinessLogoID:v9];

  v10 = [*(a1 + 32) businessDisplayName];
  [v23 setBusinessDisplayName:v10];

  v11 = [*(a1 + 32) summary];
  [v23 setSummary:v11];

  v12 = [*(a1 + 32) senderList];
  [v23 setSenderList:v12];

  v13 = [*(a1 + 32) toList];
  [v23 setToList:v13];

  v14 = [*(a1 + 32) ccList];
  [v23 setCcList:v14];

  v15 = [*(a1 + 32) flags];
  [v23 setFlags:v15];

  [v23 setHasUnflagged:{objc_msgSend(*(a1 + 32), "hasUnflagged")}];
  v16 = [*(a1 + 32) flagColors];
  [v23 setFlagColors:v16];

  [v23 setIsVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v23 setIsBlocked:{objc_msgSend(*(a1 + 32), "isBlocked")}];
  [v23 setSearchResultType:{objc_msgSend(*(a1 + 32), "searchResultType")}];
  v17 = [*(a1 + 32) searchRelevanceScore];
  [v23 setSearchRelevanceScore:v17];

  [v23 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v23 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  [v23 setIsAuthenticated:{objc_msgSend(*(a1 + 32), "isAuthenticated")}];
  [v23 setAllowAuthenticationWarning:{objc_msgSend(*(a1 + 32), "allowAuthenticationWarning")}];
  [v23 setConversationNotificationLevel:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel")}];
  v18 = [*(a1 + 32) mailboxes];
  [v23 setMailboxes:v18];

  v19 = [*(a1 + 32) displayMessageItemID];
  if (!v19)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"EDGroupedSenderQueryHandler.m" lineNumber:194 description:{@"If displayMessageItemID is nil, then it will cause a crash later on in the app"}];
  }

  [v23 setDisplayMessageItemID:v19];
  v20 = [*(a1 + 32) followUp];
  [v23 setFollowUp:v20];

  if ([MEMORY[0x1E699ACE8] preferenceEnabled:59])
  {
    v21 = [*(a1 + 32) brandIndicatorLocation];
    [v23 setBrandIndicatorLocation:v21];
  }
}

- (void)tearDown
{
  [(EDGroupedSenderQueryHandler *)self cancel];
  scheduler = [(EDGroupedSenderQueryHandler *)self scheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EDGroupedSenderQueryHandler_tearDown__block_invoke;
  v5[3] = &unk_1E8250260;
  v5[4] = self;
  [scheduler performBlock:v5];

  v4.receiver = self;
  v4.super_class = EDGroupedSenderQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v4 tearDown];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDGroupedSenderQueryHandler.m" lineNumber:220 description:{@"%s can only be called from unit tests", "-[EDGroupedSenderQueryHandler test_tearDown]"}];
  }

  [(EDGroupedSenderQueryHandler *)self tearDown];
}

- (BOOL)start
{
  v23.receiver = self;
  v23.super_class = EDGroupedSenderQueryHandler;
  start = [(EDMessageRepositoryQueryHandler *)&v23 start];
  if (start)
  {
    messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];

    query = [(EDMessageRepositoryQueryHandler *)self query];
    v6 = [(EDGroupedSenderQueryHandler *)self _messageQueryFromGroupedQuery:query];

    v7 = [EDMessageQueryHelper alloc];
    messagePersistence = [(EDGroupedSenderQueryHandler *)self messagePersistence];
    hookRegistry = [(EDMessageRepositoryQueryHandler *)self hookRegistry];
    scheduler = [(EDGroupedSenderQueryHandler *)self scheduler];
    remindMeNotificationController = [(EDMessageRepositoryQueryHandler *)self remindMeNotificationController];
    BYTE2(v18) = [(EDGroupedSenderQueryHandler *)self keepMessagesInListOnBucketChange];
    LOWORD(v18) = 1;
    v12 = [EDMessageQueryHelper initWithQuery:v7 initialBatchSize:"initWithQuery:initialBatchSize:maximumBatchSize:messagePersistence:hookRegistry:searchProvider:scheduler:remindMeNotificationController:delegate:shouldReconcileJournal:shouldAddMessagesSynchronously:keepMessagesInListOnBucketChange:" maximumBatchSize:v6 messagePersistence:200 hookRegistry:5000 searchProvider:messagePersistence scheduler:hookRegistry remindMeNotificationController:0 delegate:scheduler shouldReconcileJournal:remindMeNotificationController shouldAddMessagesSynchronously:self keepMessagesInListOnBucketChange:v18];

    [(EDGroupedSenderQueryHandler *)self setMessageQueryHelper:v12];
    if (messageQueryHelper)
    {
      resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
      objc_initWeak(&location, resultsObserverIfUncanceled);

      observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
      resultQueue = [(EDGroupedSenderQueryHandler *)self resultQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__EDGroupedSenderQueryHandler_start__block_invoke;
      block[3] = &unk_1E8250098;
      objc_copyWeak(&v21, &location);
      v20 = observationIdentifier;
      v16 = observationIdentifier;
      dispatch_async(resultQueue, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }

    [(EDMessageQueryHelper *)v12 start];
  }

  return start;
}

void __36__EDGroupedSenderQueryHandler_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained observerWillRestart:*(a1 + 32)];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = EDGroupedSenderQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v4 cancel];
  messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
  [messageQueryHelper cancel];

  [(EDGroupedSenderQueryHandler *)self setDidCancel:1];
}

- (EMMessageListItemQueryResultsObserver)resultsObserverIfUncanceled
{
  if ([(EDGroupedSenderQueryHandler *)self didCancel])
  {
    resultsObserver = 0;
  }

  else
  {
    resultsObserver = [(EDMessageRepositoryQueryHandler *)self resultsObserver];
  }

  return resultsObserver;
}

- (void)queryHelperNeedsRestart:(id)restart
{
  restartCopy = restart;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:?])
  {
    [(EDGroupedSenderQueryHandler *)self start];
  }
}

- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector
{
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:?])
  {
    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observerDidFinishInitialLoad:observationIdentifier extraInfo:0];
  }
}

- (void)queryHelper:(id)helper didAddMessages:(id)messages searchInfo:(id)info
{
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereAdded:messagesCopy toInitialBatch:0];
  }
}

- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch
{
  batchCopy = batch;
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereAdded:messagesCopy toInitialBatch:batchCopy];
  }
}

- (void)queryHelper:(id)helper didUpdateMessages:(id)messages forKeyPaths:(id)paths
{
  helperCopy = helper;
  messagesCopy = messages;
  pathsCopy = paths;
  if (-[EDGroupedSenderQueryHandler _queryHelperIsCurrent:](self, "_queryHelperIsCurrent:", helperCopy) && ([pathsCopy count] != 1 || (objc_msgSend(pathsCopy, "containsObject:", *MEMORY[0x1E699A8E0]) & 1) == 0))
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereChanged:messagesCopy previousMessages:0 forKeyPaths:pathsCopy deleted:0];
  }
}

- (void)queryHelper:(id)helper messageFlagsDidChangeForMessages:(id)messages previousMessages:(id)previousMessages
{
  v13[3] = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  messagesCopy = messages;
  previousMessagesCopy = previousMessages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    v11 = *MEMORY[0x1E699A8E8];
    v13[0] = *MEMORY[0x1E699A8A0];
    v13[1] = v11;
    v13[2] = *MEMORY[0x1E699A898];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    [(EDGroupedSenderQueryHandler *)self _messagesWereChanged:messagesCopy previousMessages:previousMessagesCopy forKeyPaths:v12 deleted:0];
  }
}

- (void)queryHelper:(id)helper didDeleteMessages:(id)messages
{
  helperCopy = helper;
  messagesCopy = messages;
  if ([(EDGroupedSenderQueryHandler *)self _queryHelperIsCurrent:helperCopy])
  {
    [(EDGroupedSenderQueryHandler *)self _messagesWereChanged:messagesCopy previousMessages:0 forKeyPaths:0 deleted:1];
  }
}

- (void)queryHelper:(id)helper businessIDDidChangeForMessages:(id)messages fromBusinessID:(int64_t)d
{
  v77 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v68 = v62 = limit & ~(limit >> 63);
  v65 = [v68 orderedGroupedSendersWithLimit:?];
  array = [v65 array];
  v64 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
  firstObject = [messagesCopy firstObject];
  businessID = [firstObject businessID];
  dCopy = d;

  v13 = _ef_log_EDGroupedSenderQueryHandler(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v72 = objc_opt_class();
    v73 = 2048;
    selfCopy7 = self;
    v75 = 2048;
    v76 = v69;
    v14 = v72;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_groupedSendersLock);
  v16 = _ef_log_EDGroupedSenderQueryHandler(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138412802;
    v72 = v17;
    v73 = 2048;
    selfCopy7 = self;
    v75 = 2048;
    v76 = v69;
    v18 = v17;
    _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:businessID];
  v20 = [v68 objectForKeyedSubscript:v19];

  if (v20)
  {
    v21 = [(EDGroupedSender *)v20 addMessages:messagesCopy];
    [v68 updateGroupedSender:v20];
    if (v21)
    {
      objectID = [(EMObject *)v20 objectID];
      [v69 setObject:v21 forKeyedSubscript:objectID];

      [v66 addObject:v20];
    }
  }

  else
  {
    businessPersistence = [(EDGroupedSenderQueryHandler *)self businessPersistence];
    v21 = [businessPersistence businessExternalIDForBusinessID:businessID];

    v24 = [EDGroupedSender alloc];
    query2 = [(EDMessageRepositoryQueryHandler *)self query];
    v25 = [(EDGroupedSenderQueryHandler *)self _messageQueryFromGroupedQuery:?];
    businessPersistence2 = [(EDGroupedSenderQueryHandler *)self businessPersistence];
    messagePersistence = [(EDGroupedSenderQueryHandler *)self messagePersistence];
    businessCloudStorage = [(EDGroupedSenderQueryHandler *)self businessCloudStorage];
    unsubscribeDetector = [(EDGroupedSenderQueryHandler *)self unsubscribeDetector];
    v20 = [(EDGroupedSender *)v24 initWithBusinessID:businessID externalBusinessID:v21 messages:messagesCopy originatingQuery:v25 businessPersistence:businessPersistence2 messagePersistence:messagePersistence businessCloudStorage:businessCloudStorage unsubscribeDetector:unsubscribeDetector];

    displayMessageItemID = [(EDGroupedSender *)v20 displayMessageItemID];

    if (displayMessageItemID)
    {
      [v68 addGroupedSender:v20];
      [v66 addObject:v20];
    }

    else
    {
      v32 = _ef_log_EDGroupedSenderQueryHandler(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        *buf = 138412802;
        v72 = v59;
        v73 = 2048;
        selfCopy7 = self;
        v75 = 2048;
        v76 = businessID;
        v60 = v59;
        _os_log_error_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating group sender with displayMessageItemID equals nil for BusinessID:%lld", buf, 0x20u);
      }
    }
  }

  v33 = [MEMORY[0x1E696AD98] numberWithLongLong:dCopy];
  v34 = [v68 objectForKeyedSubscript:v33];

  if (v34)
  {
    v70 = 0;
    v36 = [v34 removeMessages:messagesCopy isGroupEmpty:&v70 messageProvider:self];
    v37 = v36;
    if (v70 == 1)
    {
      v38 = _ef_log_EDGroupedSenderQueryHandler(v36);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        *buf = 138412802;
        v72 = v39;
        v73 = 2048;
        selfCopy7 = self;
        v75 = 2114;
        v76 = v34;
        v40 = v39;
        _os_log_impl(&dword_1C61EF000, v38, OS_LOG_TYPE_DEFAULT, "<%@ %p> Removed messages from group and it's now empty for sender:%{public}@", buf, 0x20u);
      }

      [v68 removeGroupedSender:v34];
    }

    if (v37)
    {
      [v68 updateGroupedSender:v34];
      objectID2 = [v34 objectID];
      [v69 setObject:v37 forKeyedSubscript:objectID2];

      [v66 addObject:v34];
    }
  }

  v42 = _ef_log_EDGroupedSenderQueryHandler(v35);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_opt_class();
    *buf = 138412802;
    v72 = v43;
    v73 = 2048;
    selfCopy7 = self;
    v75 = 2048;
    v76 = v69;
    v44 = v43;
    _os_log_impl(&dword_1C61EF000, v42, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupedSendersLock);
  v46 = _ef_log_EDGroupedSenderQueryHandler(v45);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_opt_class();
    *buf = 138412802;
    v72 = v47;
    v73 = 2048;
    selfCopy7 = self;
    v75 = 2048;
    v76 = v69;
    v48 = v47;
    _os_log_impl(&dword_1C61EF000, v46, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for updating business IDs", buf, 0x20u);
  }

  v49 = [v68 orderedGroupedSendersWithLimit:v62];
  array2 = [v65 array];
  v51 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v69 withVisibleSenders:v49];
  v52 = [v69 count];
  if (v52)
  {
    v53 = _ef_log_EDGroupedSenderQueryHandler(v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = objc_opt_class();
      v55 = [v69 count];
      *buf = 138412802;
      v72 = v54;
      v73 = 2048;
      selfCopy7 = self;
      v75 = 2048;
      v76 = v55;
      _os_log_impl(&dword_1C61EF000, v53, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after businessID was changed for messages)", buf, 0x20u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v69];
  }

  v58 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v64 to:v51];
  [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v65 to:v49 forChangedGroups:v66 itemIDsWithSectionChanges:v58 includePrecachedSenders:0 logMessage:@"after businessID was changed for messages"];
}

- (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionIdentifier:(id *)identifier
{
  senderCopy = sender;
  sectionPredicates = [(EDGroupedSenderQueryHandler *)self sectionPredicates];
  v8 = [EDGroupedSenderQueryHandler _sectionIndexForGroupedSender:senderCopy sectionPredicates:sectionPredicates sectionIdentifier:identifier];

  return v8;
}

+ (unint64_t)_sectionIndexForGroupedSender:(id)sender sectionPredicates:(id)predicates sectionIdentifier:(id *)identifier
{
  senderCopy = sender;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = *MEMORY[0x1E699A7F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__EDGroupedSenderQueryHandler__sectionIndexForGroupedSender_sectionPredicates_sectionIdentifier___block_invoke;
  v11[3] = &unk_1E82523A0;
  v8 = senderCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v19;
  [predicates enumerateKeysAndObjectsUsingBlock:v11];
  if (identifier)
  {
    *identifier = v20[5];
  }

  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __97__EDGroupedSenderQueryHandler__sectionIndexForGroupedSender_sectionPredicates_sectionIdentifier___block_invoke(void *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v10 = a3;
  if ([a4 evaluateWithObject:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = a2;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a5 = 1;
  }
}

+ (id)_comparatorForSortDescriptors:(id)descriptors sectionPredicates:(id)predicates
{
  descriptorsCopy = descriptors;
  predicatesCopy = predicates;
  v8 = EFComparatorFromSortDescriptors();
  if ([predicatesCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__EDGroupedSenderQueryHandler__comparatorForSortDescriptors_sectionPredicates___block_invoke;
    aBlock[3] = &unk_1E82523C8;
    selfCopy = self;
    v12 = predicatesCopy;
    v13 = v8;
    v9 = _Block_copy(aBlock);
  }

  else
  {
    v9 = _Block_copy(v8);
  }

  return v9;
}

uint64_t __79__EDGroupedSenderQueryHandler__comparatorForSortDescriptors_sectionPredicates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 48) _sectionIndexForGroupedSender:v5 sectionPredicates:*(a1 + 32) sectionIdentifier:0];
  v8 = [*(a1 + 48) _sectionIndexForGroupedSender:v6 sectionPredicates:*(a1 + 32) sectionIdentifier:0];
  if (v7 == v8)
  {
    v9 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *MEMORY[0x1E699A7F8];
    v11 = -1;
    if (v7 < v8)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v8 != v10)
    {
      v11 = v12;
    }

    if (v7 == v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = v11;
    }
  }

  return v9;
}

- (void)_messagesWereAdded:(id)added toInitialBatch:(BOOL)batch
{
  batchCopy = batch;
  v40 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  [(EDGroupedSenderQueryHandler *)self grouping];
  v29 = _groupMessagesBySender(self, addedCopy);
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = limit & ~(limit >> 63);
  v10 = [groupedSenders orderedGroupedSendersWithLimit:{v9, groupedSenders}];
  array = [v10 array];
  v28 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __65__EDGroupedSenderQueryHandler__messagesWereAdded_toInitialBatch___block_invoke;
  v30[3] = &unk_1E82523F0;
  v30[4] = self;
  v12 = v25;
  v31 = v12;
  v13 = groupedSenders;
  v32 = v13;
  v14 = v27;
  v33 = v14;
  [v29 enumerateKeysAndObjectsUsingBlock:v30];
  v15 = [v13 orderedGroupedSendersWithLimit:v9];
  array2 = [v10 array];
  v17 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v12 withVisibleSenders:v15];
  v18 = [v12 count];
  if (v18)
  {
    v19 = _ef_log_EDGroupedSenderQueryHandler(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = [v12 count];
      *buf = 138412802;
      v35 = v20;
      v36 = 2048;
      selfCopy = self;
      v38 = 2048;
      v39 = v21;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after messages were added)", buf, 0x20u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v12];
  }

  v24 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v28 to:v17];
  [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v10 to:v15 forChangedGroups:v14 itemIDsWithSectionChanges:v24 includePrecachedSenders:batchCopy logMessage:@"after messages were added"];
}

void __65__EDGroupedSenderQueryHandler__messagesWereAdded_toInitialBatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v59 = a2;
  v5 = a3;
  v6 = [v5 ef_filter:&__block_literal_global_48];

  v7 = [v6 count];
  v8 = _ef_log_EDGroupedSenderQueryHandler(v7);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138412802;
      v61 = v10;
      v62 = 2048;
      v63 = v11;
      v64 = 2048;
      v65 = v12;
      v13 = v10;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for adding messages", buf, 0x20u);
    }

    v58 = *(a1 + 32);
    os_unfair_lock_lock(v58 + 22);
    v15 = _ef_log_EDGroupedSenderQueryHandler(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138412802;
      v61 = v16;
      v62 = 2048;
      v63 = v17;
      v64 = 2048;
      v65 = v18;
      v19 = v16;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for adding messages", buf, 0x20u);
    }

    v20 = [*(a1 + 48) objectForKeyedSubscript:v59];
    v21 = v20;
    if (v20)
    {
      v22 = [(EDGroupedSender *)v20 addMessages:v6];
      if (v22)
      {
        [*(a1 + 48) updateGroupedSender:v21];
        v23 = *(a1 + 40);
        v24 = [(EMObject *)v21 objectID];
        [v23 setObject:v22 forKeyedSubscript:v24];

        [*(a1 + 56) addObject:v21];
      }
    }

    else
    {
      v28 = *(a1 + 32);
      v29 = [v6 firstObject];
      v30 = [v29 senderAddress];
      v22 = [v28 _externalBusinessIDForEmailAddress:v30];

      v31 = [EDGroupedSender alloc];
      v57 = [v6 firstObject];
      v32 = [v57 businessID];
      v33 = *(a1 + 32);
      v56 = [v33 query];
      v34 = [v33 _messageQueryFromGroupedQuery:?];
      v35 = [*(a1 + 32) businessPersistence];
      v36 = [*(a1 + 32) messagePersistence];
      v37 = [*(a1 + 32) businessCloudStorage];
      v38 = [*(a1 + 32) unsubscribeDetector];
      v21 = [(EDGroupedSender *)v31 initWithBusinessID:v32 externalBusinessID:v22 messages:v6 originatingQuery:v34 businessPersistence:v35 messagePersistence:v36 businessCloudStorage:v37 unsubscribeDetector:v38];

      v39 = [(EDGroupedSender *)v21 displayMessageItemID];

      if (v39)
      {
        [*(a1 + 48) addGroupedSender:v21];
        [*(a1 + 56) addObject:v21];
      }

      else
      {
        v41 = _ef_log_EDGroupedSenderQueryHandler(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_opt_class();
          v54 = *(a1 + 32);
          *buf = 138412802;
          v61 = v53;
          v62 = 2048;
          v63 = v54;
          v64 = 2114;
          v65 = v59;
          v55 = v53;
          _os_log_error_impl(&dword_1C61EF000, v41, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating group sender with displayMessageItemID equals nil for BusinessID:%{public}@", buf, 0x20u);
        }
      }
    }

    v43 = _ef_log_EDGroupedSenderQueryHandler(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      v45 = *(a1 + 32);
      v46 = *(a1 + 40);
      *buf = 138412802;
      v61 = v44;
      v62 = 2048;
      v63 = v45;
      v64 = 2048;
      v65 = v46;
      v47 = v44;
      _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for adding messages", buf, 0x20u);
    }

    os_unfair_lock_unlock(v58 + 22);
    v9 = _ef_log_EDGroupedSenderQueryHandler(v48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v49 = objc_opt_class();
      v50 = *(a1 + 32);
      v51 = *(a1 + 40);
      *buf = 138412802;
      v61 = v49;
      v62 = 2048;
      v63 = v50;
      v64 = 2048;
      v65 = v51;
      v52 = v49;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for adding messages", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    v26 = *(a1 + 32);
    *buf = 138412802;
    v61 = v25;
    v62 = 2048;
    v63 = v26;
    v64 = 2114;
    v65 = v59;
    v27 = v25;
    _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating empty group sender for BusinessID:%{public}@", buf, 0x20u);
  }
}

uint64_t __65__EDGroupedSenderQueryHandler__messagesWereAdded_toInitialBatch___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 deleted];

  return v3 ^ 1u;
}

- (void)_messagesWereChanged:(id)changed previousMessages:(id)messages forKeyPaths:(id)paths deleted:(BOOL)deleted
{
  deletedCopy = deleted;
  v73 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  messagesCopy = messages;
  pathsCopy = paths;
  v10 = _ef_log_EDGroupedSenderQueryHandler(pathsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138413314;
    v64 = v11;
    v65 = 2048;
    selfCopy2 = self;
    v67 = 2114;
    v68 = v12;
    v69 = 2114;
    v70 = pathsCopy;
    v71 = 1024;
    v72 = deletedCopy;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> %{public}@: keyPaths:%{public}@ delete:%{BOOL}d", buf, 0x30u);
  }

  [(EDGroupedSenderQueryHandler *)self grouping];
  v47 = _groupMessagesBySender(self, changedCopy);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v14 = messagesCopy;
  v15 = [v14 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v15)
  {
    v16 = *v59;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v58 + 1) + 8 * i);
        objectID = [v18 objectID];
        [v13 setObject:v18 forKeyedSubscript:objectID];
      }

      v15 = [v14 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v15);
  }

  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  query = [(EDMessageRepositoryQueryHandler *)self query];
  limit = [query limit];

  groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = limit & ~(limit >> 63);
  v50 = [groupedSenders orderedGroupedSendersWithLimit:v22];
  array = [v50 array];
  v45 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke;
  v51[3] = &unk_1E8252440;
  v51[4] = self;
  v24 = v42;
  v52 = v24;
  v25 = groupedSenders;
  v53 = v25;
  v57 = deletedCopy;
  v40 = v13;
  v54 = v40;
  v39 = pathsCopy;
  v55 = v39;
  v26 = v41;
  v56 = v26;
  [v47 enumerateKeysAndObjectsUsingBlock:v51];
  v27 = [v25 orderedGroupedSendersWithLimit:v22];
  array2 = [v50 array];
  v29 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

  [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v24 withVisibleSenders:v27];
  v30 = [v24 count];
  if (v30)
  {
    v31 = _ef_log_EDGroupedSenderQueryHandler(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = [v24 count];
      v34 = @"changed";
      *buf = 138413058;
      v64 = v32;
      if (deletedCopy)
      {
        v34 = @"deleted";
      }

      v65 = 2048;
      selfCopy2 = self;
      v67 = 2048;
      v68 = v33;
      v69 = 2114;
      v70 = v34;
      _os_log_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after messages were %{public}@)", buf, 0x2Au);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v24];
  }

  v37 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v45 to:v29];
  if (deletedCopy)
  {
    v38 = @"after messages were deleted";
  }

  else
  {
    v38 = @"after messages were changed";
  }

  [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v50 to:v27 forChangedGroups:v26 itemIDsWithSectionChanges:v37 includePrecachedSenders:0 logMessage:v38];
}

void __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v69 = a2;
  v5 = a3;
  v6 = [v5 count];
  v7 = _ef_log_EDGroupedSenderQueryHandler(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v76 = v9;
      v77 = 2048;
      v78 = v10;
      v79 = 2048;
      v80 = v11;
      v12 = v9;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for updating messages", buf, 0x20u);
    }

    v68 = *(a1 + 32);
    os_unfair_lock_lock(v68 + 22);
    v14 = _ef_log_EDGroupedSenderQueryHandler(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138412802;
      v76 = v15;
      v77 = 2048;
      v78 = v16;
      v79 = 2048;
      v80 = v17;
      v18 = v15;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for updating messages", buf, 0x20u);
    }

    v19 = [*(a1 + 48) objectForKeyedSubscript:v69];
    v20 = v19;
    if (v19)
    {
      if (*(a1 + 80))
      {
        v74 = 0;
        v21 = [(EDGroupedSender *)v19 removeMessages:v5 isGroupEmpty:&v74 messageProvider:*(a1 + 32)];
        v22 = v21;
        if (v74 == 1)
        {
          v23 = _ef_log_EDGroupedSenderQueryHandler(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = objc_opt_class();
            v25 = *(a1 + 32);
            *buf = 138412802;
            v76 = v24;
            v77 = 2048;
            v78 = v25;
            v79 = 2114;
            v80 = v20;
            v26 = v24;
            _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "<%@ %p> Remove messages from group and it's now empty for sender:%{public}@", buf, 0x20u);
          }

          [*(a1 + 48) removeGroupedSender:v20];
        }
      }

      else
      {
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke_53;
        v70[3] = &unk_1E8252418;
        v31 = *(a1 + 56);
        v32 = *(a1 + 32);
        v71 = v31;
        v72 = v32;
        v73 = *(a1 + 64);
        v33 = [v5 ef_map:v70];
        v22 = [(EDGroupedSender *)v20 changeKeyPaths:*(a1 + 64) forMessages:v33 messageProvider:*(a1 + 32)];
      }

      if (v22)
      {
        [*(a1 + 48) updateGroupedSender:v20];
        v34 = *(a1 + 40);
        v35 = [(EMObject *)v20 objectID];
        [v34 setObject:v22 forKeyedSubscript:v35];

        [*(a1 + 72) addObject:v20];
      }

      goto LABEL_27;
    }

    if (*(a1 + 80))
    {
      v30 = _ef_log_EDGroupedSenderQueryHandler(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v60 = objc_opt_class();
        v61 = *(a1 + 32);
        *buf = 138412802;
        v76 = v60;
        v77 = 2048;
        v78 = v61;
        v79 = 2114;
        v80 = v69;
        v62 = v60;
        _os_log_error_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_ERROR, "<%@ %p> Group sender already removed for BusinessID:%{public}@", buf, 0x20u);
      }

      v20 = 0;
      v22 = v30;
    }

    else
    {
      v36 = *(a1 + 32);
      v37 = [v5 firstObject];
      v38 = [v37 senderAddress];
      v22 = [v36 _externalBusinessIDForEmailAddress:v38];

      v39 = [EDGroupedSender alloc];
      v67 = [v5 firstObject];
      v40 = [v67 businessID];
      v41 = *(a1 + 32);
      v66 = [v41 query];
      v42 = [v41 _messageQueryFromGroupedQuery:?];
      v43 = [*(a1 + 32) businessPersistence];
      v44 = [*(a1 + 32) messagePersistence];
      v45 = [*(a1 + 32) businessCloudStorage];
      v46 = [*(a1 + 32) unsubscribeDetector];
      v20 = [(EDGroupedSender *)v39 initWithBusinessID:v40 externalBusinessID:v22 messages:v5 originatingQuery:v42 businessPersistence:v43 messagePersistence:v44 businessCloudStorage:v45 unsubscribeDetector:v46];

      v47 = [(EDGroupedSender *)v20 displayMessageItemID];

      if (v47)
      {
        [*(a1 + 48) addGroupedSender:v20];
        [*(a1 + 72) addObject:v20];
LABEL_27:

        v50 = _ef_log_EDGroupedSenderQueryHandler(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = objc_opt_class();
          v52 = *(a1 + 32);
          v53 = *(a1 + 40);
          *buf = 138412802;
          v76 = v51;
          v77 = 2048;
          v78 = v52;
          v79 = 2048;
          v80 = v53;
          v54 = v51;
          _os_log_impl(&dword_1C61EF000, v50, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for updating messages", buf, 0x20u);
        }

        os_unfair_lock_unlock(v68 + 22);
        v8 = _ef_log_EDGroupedSenderQueryHandler(v55);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v56 = objc_opt_class();
          v57 = *(a1 + 32);
          v58 = *(a1 + 40);
          *buf = 138412802;
          v76 = v56;
          v77 = 2048;
          v78 = v57;
          v79 = 2048;
          v80 = v58;
          v59 = v56;
          _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for updating messages", buf, 0x20u);
        }

        goto LABEL_31;
      }

      v30 = _ef_log_EDGroupedSenderQueryHandler(v48);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v63 = objc_opt_class();
        v64 = *(a1 + 32);
        *buf = 138412802;
        v76 = v63;
        v77 = 2048;
        v78 = v64;
        v79 = 2114;
        v80 = v69;
        v65 = v63;
        _os_log_error_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating group sender with displayMessageItemID equals nil for BusinessID:%{public}@", buf, 0x20u);
      }
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = *(a1 + 32);
    *buf = 138412802;
    v76 = v27;
    v77 = 2048;
    v78 = v28;
    v79 = 2114;
    v80 = v69;
    v29 = v27;
    _os_log_error_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_ERROR, "<%@ %p> Avoid creating empty group sender for BusinessID:%{public}@", buf, 0x20u);
  }

LABEL_31:
}

id __89__EDGroupedSenderQueryHandler__messagesWereChanged_previousMessages_forKeyPaths_deleted___block_invoke_53(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 objectID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v8 = _ef_log_EDGroupedSenderQueryHandler(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v13 = a1[5];
      v12 = a1[6];
      v14 = [v3 ef_publicDescription];
      v15 = 138413058;
      v16 = v11;
      v17 = 2048;
      v18 = v13;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      _os_log_error_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_ERROR, "<%@ %p> No previous message for keyPaths:%{public}@ message: %{public}@", &v15, 0x2Au);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E699B848]) initWithFirst:v6 second:v3];

  return v9;
}

- (id)_updateDifference:(id)difference from:(id)from forChangedGroups:(id)groups
{
  differenceCopy = difference;
  fromCopy = from;
  groupsCopy = groups;
  insertions = [differenceCopy insertions];
  if ([insertions count] != 1)
  {

    goto LABEL_27;
  }

  removals = [differenceCopy removals];
  v11 = [removals count];

  if (v11 != 1)
  {
LABEL_27:
    v40 = differenceCopy;
    goto LABEL_38;
  }

  insertions2 = [differenceCopy insertions];
  firstObject = [insertions2 firstObject];

  removals2 = [differenceCopy removals];
  firstObject2 = [removals2 firstObject];

  index = [firstObject index];
  if (index == [firstObject2 associatedIndex] && (v17 = objc_msgSend(firstObject2, "index"), v17 == objc_msgSend(firstObject, "associatedIndex")))
  {
    v51 = firstObject2;
    v52 = firstObject;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    index2 = [firstObject index];
    associatedIndex = [firstObject associatedIndex];
    if (index2 >= associatedIndex)
    {
      v21 = associatedIndex;
    }

    else
    {
      v21 = index2;
    }

    index3 = [firstObject index];
    associatedIndex2 = [firstObject associatedIndex];
    if (index3 <= associatedIndex2)
    {
      v24 = associatedIndex2;
    }

    else
    {
      v24 = index3;
    }

    index4 = [firstObject index];
    associatedIndex3 = [firstObject associatedIndex];
    if (v24 <= v21)
    {
LABEL_18:
      v29 = fromCopy;
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = v24 - v21;
      if (index4 >= associatedIndex3)
      {
        if (v31)
        {
          v41 = v24 - 1;
          do
          {
            v42 = objc_alloc(MEMORY[0x1E696ADD0]);
            v43 = [v18 objectAtIndexedSubscript:v41 - v21];
            v44 = [v42 initWithObject:v43 type:1 index:v41 + 1 associatedIndex:v41];

            [v30 addObject:v44];
            --v41;
          }

          while (v41 - v21 != -1);
          if (v24 != v21)
          {
            v45 = 0;
            do
            {
              v46 = objc_alloc(MEMORY[0x1E696ADD0]);
              v47 = [v18 objectAtIndexedSubscript:v45];
              v48 = [v46 initWithObject:v47 type:0 index:v21 associatedIndex:v21 + 1];

              [v30 addObject:v48];
              ++v45;
              ++v21;
            }

            while (v24 != v21);
          }
        }
      }

      else if (v31)
      {
        v32 = v24 - 1;
        do
        {
          v33 = objc_alloc(MEMORY[0x1E696ADD0]);
          v34 = [v18 objectAtIndexedSubscript:v32 - v21];
          v35 = [v33 initWithObject:v34 type:1 index:v32 associatedIndex:v32 + 1];

          [v30 addObject:v35];
          --v32;
        }

        while (v32 - v21 != -1);
        if (v24 != v21)
        {
          v36 = 0;
          do
          {
            v37 = objc_alloc(MEMORY[0x1E696ADD0]);
            v38 = [v18 objectAtIndexedSubscript:v36];
            v39 = [v37 initWithObject:v38 type:0 index:v21 + 1 associatedIndex:v21];

            [v30 addObject:v39];
            ++v36;
            ++v21;
          }

          while (v24 != v21);
        }
      }

      v49 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v30];

      differenceCopy = v49;
    }

    else
    {
      v27 = v21;
      while (1)
      {
        v28 = index4 < associatedIndex3 ? v27 : v27 + 1;
        v29 = fromCopy;
        v30 = [fromCopy objectAtIndexedSubscript:v28];
        if (([groupsCopy containsObject:v30] & 1) == 0)
        {
          break;
        }

        [v18 addObject:v30];
        ++v27;

        fromCopy = v29;
        if (v24 == v27)
        {
          goto LABEL_18;
        }
      }
    }

    v40 = differenceCopy;

    fromCopy = v29;
    firstObject2 = v51;
    firstObject = v52;
  }

  else
  {
    v40 = differenceCopy;
  }

LABEL_38:

  return v40;
}

- (void)_notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:(id)from to:(id)to forChangedGroups:(id)groups itemIDsWithSectionChanges:(id)changes includePrecachedSenders:(BOOL)senders logMessage:(id)message
{
  sendersCopy = senders;
  v82 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  groupsCopy = groups;
  changesCopy = changes;
  messageCopy = message;
  v48 = toCopy;
  v43 = fromCopy;
  v44 = groupsCopy;
  v16 = [toCopy differenceFromOrderedSet:fromCopy withOptions:4];
  selfCopy = self;
  v17 = [(EDGroupedSenderQueryHandler *)self _updateDifference:v16 from:fromCopy forChangedGroups:groupsCopy];

  v47 = v17;
  ef_removalsExcludingMoves = [v17 ef_removalsExcludingMoves];
  v19 = [ef_removalsExcludingMoves ef_map:&__block_literal_global_73];

  v45 = v19;
  v20 = [v19 count];
  if (v20)
  {
    v21 = _ef_log_EDGroupedSenderQueryHandler(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = [v45 count];
      v24 = loggableIdentifiers(v45);
      *buf = 138413314;
      v73 = v22;
      v74 = 2048;
      v75 = selfCopy;
      v76 = 2048;
      v77 = v23;
      v78 = 2114;
      v79 = messageCopy;
      v80 = 2114;
      v81 = v24;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu deleted groups (%{public}@):\n%{public}@", buf, 0x34u);
    }

    resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)selfCopy resultsObserverIfUncanceled];
    observationIdentifier = [(EDMessageRepositoryQueryHandler *)selfCopy observationIdentifier];
    [resultsObserverIfUncanceled observer:observationIdentifier matchedDeletedObjectIDs:v45];
  }

  v27 = [changesCopy mutableCopy];
  [v47 ef_groupedInsertionsByObjectForTargetOrderedSet:toCopy inferMoves:1];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  obj = v67 = 0u;
  v28 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v28)
  {
    v50 = *v67;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v67 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v66 + 1) + 8 * i);
        objects = [v30 objects];
        previousObject = [v30 previousObject];
        if ([v30 isMove])
        {
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_74;
          v64[3] = &unk_1E8252488;
          v64[4] = selfCopy;
          v65 = messageCopy;
          [(EDGroupedSenderQueryHandler *)selfCopy _notifyObserversOfMovedSenders:objects previousSender:previousObject includePrecachedSenders:sendersCopy notifyBlock:v64];
        }

        else
        {
          v33 = [(EDGroupedSenderQueryHandler *)selfCopy _senderItemIDsBySectionForSenders:objects];
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_76;
          v62[3] = &unk_1E8252488;
          v62[4] = selfCopy;
          v63 = messageCopy;
          [(EDGroupedSenderQueryHandler *)selfCopy _notifyObserversOfInsertedSenders:objects senderItemIDsBySection:v33 previousSender:previousObject includePrecachedSenders:sendersCopy notifyBlock:v62];
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        objects2 = [v30 objects];
        v35 = [objects2 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v35)
        {
          v36 = *v59;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v59 != v36)
              {
                objc_enumerationMutation(objects2);
              }

              itemID = [*(*(&v58 + 1) + 8 * j) itemID];
              [v27 removeObject:itemID];
            }

            v35 = [objects2 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v35);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v28);
  }

  v39 = [v27 count];
  if (v39)
  {
    v40 = _ef_log_EDGroupedSenderQueryHandler(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      v42 = [v27 count];
      *buf = 138413314;
      v73 = v41;
      v74 = 2048;
      v75 = selfCopy;
      v76 = 2048;
      v77 = v42;
      v78 = 2114;
      v79 = messageCopy;
      v80 = 2114;
      v81 = v27;
      _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu additional groups with section changes (%{public}@):\n%{public}@", buf, 0x34u);
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_77;
    v54[3] = &unk_1E82524B0;
    v55 = v27;
    v56 = selfCopy;
    v57 = v48;
    [v57 enumerateObjectsUsingBlock:v54];
  }
}

id __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = [v2 objectID];

  return v3;
}

void __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _ef_log_EDGroupedSenderQueryHandler(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = [v7 count];
    v14 = *(a1 + 40);
    v15 = loggableIdentifiers(v7);
    v18 = 138413570;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu groups moved after %{public}@ (%{public}@):\n%{public}@", &v18, 0x3Eu);
  }

  v16 = [*(a1 + 32) resultsObserverIfUncanceled];
  v17 = [*(a1 + 32) observationIdentifier];
  [v16 observer:v17 matchedMovedObjectIDs:v7 after:v8 extraInfo:v9];
}

void __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_76(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _ef_log_EDGroupedSenderQueryHandler(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = *(a1 + 32);
    v13 = [v7 count];
    v14 = *(a1 + 40);
    v15 = loggableIdentifiers(v7);
    v18 = 138413570;
    v19 = v11;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v13;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v14;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu groups inserted after %{public}@ (%{public}@):\n%{public}@", &v18, 0x3Eu);
  }

  v16 = [*(a1 + 32) resultsObserverIfUncanceled];
  v17 = [*(a1 + 32) observationIdentifier];
  [v16 observer:v17 matchedAddedObjectIDs:v7 after:v8 extraInfo:v9];
}

void __171__EDGroupedSenderQueryHandler__notifyResultsObserverOfChangesToVisibleGroupedSendersFrom_to_forChangedGroups_itemIDsWithSectionChanges_includePrecachedSenders_logMessage___block_invoke_77(uint64_t a1, void *a2, char *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 itemID];
  LOBYTE(v6) = [v6 containsObject:v7];

  if (v6)
  {
    v8 = *(a1 + 40);
    v18[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v10 = [v8 _senderItemIDsBySectionForSenders:v9];

    v11 = [*(a1 + 40) _extraInfoForSenderItemIDsBySection:v10 includePrecachedSendersFromSenders:0];
    if (a3)
    {
      a3 = [*(a1 + 48) objectAtIndexedSubscript:a3 - 1];
    }

    v12 = [*(a1 + 40) resultsObserverIfUncanceled];
    v13 = [*(a1 + 40) observationIdentifier];
    v14 = [v5 objectID];
    v17 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v16 = [a3 objectID];
    [v12 observer:v13 matchedMovedObjectIDs:v15 after:v16 extraInfo:v11];
  }
}

- (void)_notifyObserversOfMovedSenders:(id)senders previousSender:(id)sender includePrecachedSenders:(BOOL)precachedSenders notifyBlock:(id)block
{
  precachedSendersCopy = precachedSenders;
  sendersCopy = senders;
  senderCopy = sender;
  blockCopy = block;
  v13 = senderCopy;
  v23 = v13;
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{sendersCopy, 0}];
  while ([v14 count])
  {
    lastObject = [v14 lastObject];
    [v14 removeLastObject];
    v16 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:lastObject];
    if ([lastObject count] >= 2)
    {
      v17 = [v16 count];
      if (v17 == 1 && ([v16 allValues], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v7, "count"), v18 == objc_msgSend(sendersCopy, "count")))
      {
      }

      else
      {
        v19 = [v16 count];
        if (v17 == 1)
        {
        }

        if (v19)
        {
          v20 = [lastObject count];
          v21 = [lastObject ef_suffix:v20 - (v20 >> 1)];
          [v14 addObject:v21];

          v22 = [lastObject ef_prefix:v20 >> 1];
          [v14 addObject:v22];
          goto LABEL_12;
        }
      }
    }

    [(EDGroupedSenderQueryHandler *)self _notifyObserversOfInsertedSenders:lastObject senderItemIDsBySection:v16 previousSender:v13 includePrecachedSenders:precachedSendersCopy notifyBlock:blockCopy];
    [lastObject lastObject];
    v13 = v22 = v13;
LABEL_12:
  }
}

- (void)_notifyObserversOfInsertedSenders:(id)senders senderItemIDsBySection:(id)section previousSender:(id)sender includePrecachedSenders:(BOOL)precachedSenders notifyBlock:(id)block
{
  precachedSendersCopy = precachedSenders;
  sendersCopy = senders;
  sectionCopy = section;
  blockCopy = block;
  objectID = [sender objectID];
  v15 = [sendersCopy ef_mapSelector:sel_objectID];
  if (precachedSendersCopy)
  {
    v16 = sendersCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(EDGroupedSenderQueryHandler *)self _extraInfoForSenderItemIDsBySection:sectionCopy includePrecachedSendersFromSenders:v16];
  blockCopy[2](blockCopy, v15, objectID, v17);
}

- (id)_senderItemIDsBySectionForSenders:(id)senders
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__EDGroupedSenderQueryHandler__senderItemIDsBySectionForSenders___block_invoke;
  v6[3] = &unk_1E82524D8;
  v6[4] = self;
  v3 = [senders ef_groupBy:v6];
  v4 = [v3 ef_mapValues:&__block_literal_global_84_0];

  return v4;
}

id __65__EDGroupedSenderQueryHandler__senderItemIDsBySectionForSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _sectionIndexForGroupedSender:a2 sectionIdentifier:&v5];
  v3 = v5;

  return v3;
}

id __65__EDGroupedSenderQueryHandler__senderItemIDsBySectionForSenders___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ef_mapSelector:sel_itemID];

  return v2;
}

- (id)_extraInfoForSenderItemIDsBySection:(id)section includePrecachedSendersFromSenders:(id)senders
{
  sectionCopy = section;
  sendersCopy = senders;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v8 initWithObjectsAndKeys:{sectionCopy, *MEMORY[0x1E699A800], 0}];
  if (sendersCopy)
  {
    query = [(EDMessageRepositoryQueryHandler *)self query];
    targetClassOptions = [query targetClassOptions];
    v12 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9E8]];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      os_unfair_lock_lock(&self->_groupedSendersLock);
      v14 = [sendersCopy ef_prefix:unsignedIntegerValue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __102__EDGroupedSenderQueryHandler__extraInfoForSenderItemIDsBySection_includePrecachedSendersFromSenders___block_invoke;
      v16[3] = &unk_1E8252520;
      v16[4] = self;
      unsignedIntegerValue = [v14 ef_map:v16];

      os_unfair_lock_unlock(&self->_groupedSendersLock);
      if ([unsignedIntegerValue count])
      {
        [v9 setObject:unsignedIntegerValue forKeyedSubscript:*MEMORY[0x1E699A7F0]];
      }
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return v9;
}

id __102__EDGroupedSenderQueryHandler__extraInfoForSenderItemIDsBySection_includePrecachedSendersFromSenders___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _groupedSenderForEDGroupedSender:a2];

  return v2;
}

- (id)_itemIDsWithSectionChangesFrom:(id)from to:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = objc_alloc(MEMORY[0x1E695DFA8]);
  allKeys = [fromCopy allKeys];
  v22 = [v7 initWithArray:allKeys];

  allKeys2 = [toCopy allKeys];
  [v22 addObjectsFromArray:allKeys2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v22;
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x1E695DFD8]);
        v15 = [fromCopy objectForKeyedSubscript:v13];
        v16 = [v14 initWithArray:v15];

        v17 = objc_alloc(MEMORY[0x1E695DFA8]);
        v18 = [toCopy objectForKeyedSubscript:v13];
        v19 = [v17 initWithArray:v18];

        if (([v16 isEqualToSet:v19] & 1) == 0)
        {
          v20 = [v16 mutableCopy];
          [v20 minusSet:v19];
          [v19 minusSet:v16];
          [v6 unionSet:v20];
          [v6 unionSet:v19];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)_filterGroupedSenderChanges:(id)changes withVisibleSenders:(id)senders
{
  changesCopy = changes;
  sendersCopy = senders;
  v7 = [sendersCopy ef_compactMap:&__block_literal_global_91];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__EDGroupedSenderQueryHandler__filterGroupedSenderChanges_withVisibleSenders___block_invoke_2;
  v9[3] = &unk_1E8252568;
  v10 = v7;
  v8 = v7;
  [changesCopy ef_removeObjectsPassingTest:v9];
}

id __78__EDGroupedSenderQueryHandler__filterGroupedSenderChanges_withVisibleSenders___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (id)_messageQueryFromGroupedQuery:(id)query
{
  queryCopy = query;
  v4 = objc_alloc(MEMORY[0x1E699AE28]);
  v5 = objc_opt_class();
  predicate = [queryCopy predicate];
  sortDescriptors = [queryCopy sortDescriptors];
  v8 = [v4 initWithTargetClass:v5 predicate:predicate sortDescriptors:sortDescriptors queryOptions:objc_msgSend(queryCopy label:{"queryOptions"), 0}];

  return v8;
}

- (BOOL)_queryHelperIsCurrent:(id)current
{
  currentCopy = current;
  messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
  LOBYTE(self) = messageQueryHelper == currentCopy;

  return self;
}

- (id)_externalBusinessIDForEmailAddress:(id)address
{
  addressCopy = address;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  preferredGroupedSenderGrouping = [em_userDefaults preferredGroupedSenderGrouping];

  businessPersistence = [(EDGroupedSenderQueryHandler *)self businessPersistence];
  v8 = [businessPersistence businessExternalIDForEmailAddress:addressCopy grouping:preferredGroupedSenderGrouping];

  return v8;
}

- (id)messagesForGroupedSender:(id)sender limit:(int64_t)limit
{
  v27[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v7 = senderCopy;
  if (senderCopy)
  {
    v8 = [MEMORY[0x1E699ADA0] predicateForMessagesForBusinessID:{objc_msgSend(senderCopy, "businessID")}];
    messageQueryHelper = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
    v27[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v11 = [messageQueryHelper messagesWithAdditionalPredicates:v10 limit:limit];

    if (![v11 count])
    {
      v12 = _ef_log_EDGroupedSenderQueryHandler(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        messageQueryHelper2 = [(EDGroupedSenderQueryHandler *)self messageQueryHelper];
        query = [messageQueryHelper2 query];
        v17 = 138413314;
        v18 = v14;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = v7;
        v23 = 2048;
        limitCopy = limit;
        v25 = 2114;
        v26 = query;
        _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "<%@ %p> found 0 messages for grouped sender:%{public}@ limit:%ld query:%{public}@", &v17, 0x34u);
      }
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)groupedSenderForObjectID:(id)d isPersisted:(BOOL *)persisted error:(id *)error
{
  error = [(EDGroupedSenderQueryHandler *)self _groupedSenderForObjectID:d, persisted, error];
  os_unfair_lock_lock(&self->_groupedSendersLock);
  v8 = [(EDGroupedSenderQueryHandler *)self _groupedSenderForEDGroupedSender:error];
  os_unfair_lock_unlock(&self->_groupedSendersLock);
  if (persisted)
  {
    *persisted = 0;
  }

  return v8;
}

- (void)updatedBusinessesWithExternalIDs:(id)ds removedBusinessesWithExternalIDs:(id)iDs
{
  iDsCopy = iDs;
  v6 = [ds mutableCopy];
  [v6 ef_addAbsentObjectsFromArrayAccordingToEquals:iDsCopy];
  [(EDGroupedSenderQueryHandler *)self updateUnseenCountsForBusinessesWithExternalIDs:v6];
}

- (void)persistenceIsMergingBusinessID:(int64_t)d intoBusinessID:(int64_t)iD
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v11 = [threadDictionary objectForKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

  v8 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v12 forKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

    v8 = v12;
  }

  v13 = v8;
  [v8 setObject:iD forKey:d];
}

- (void)_persistenceDidFinishMergingBusinesses
{
  v38 = *MEMORY[0x1E69E9840];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v5 = [threadDictionary objectForKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

  currentThread2 = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:0 forKeyedSubscript:@"EDGroupedSenderQueryHandler.mergedBusinesses"];

  if ([v5 count])
  {
    v8 = [objc_opt_class() resolveMergePathsForMergedBusinesses:v5];

    query = [(EDMessageRepositoryQueryHandler *)self query];
    limit = [query limit];

    groupedSenders = [(EDGroupedSenderQueryHandler *)self groupedSenders];
    v12 = limit & ~(limit >> 63);
    v13 = [groupedSenders orderedGroupedSendersWithLimit:{v12, groupedSenders}];
    array = [v13 array];
    v15 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array];

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __69__EDGroupedSenderQueryHandler__persistenceDidFinishMergingBusinesses__block_invoke;
    v29[3] = &unk_1E82525B0;
    v29[4] = self;
    v17 = v16;
    v30 = v17;
    v18 = groupedSenders;
    v31 = v18;
    enumerateBusinessesInMapTable(v8, v29);
    v19 = [v18 orderedGroupedSendersWithLimit:v12];
    array2 = [v13 array];
    v21 = [(EDGroupedSenderQueryHandler *)self _senderItemIDsBySectionForSenders:array2];

    [(EDGroupedSenderQueryHandler *)self _filterGroupedSenderChanges:v17 withVisibleSenders:v19];
    v22 = [v17 count];
    if (v22)
    {
      v23 = _ef_log_EDGroupedSenderQueryHandler(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = [v17 count];
        *buf = 138412802;
        v33 = v24;
        v34 = 2048;
        selfCopy = self;
        v36 = 2048;
        v37 = v25;
        _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "<%@ %p> Notifying observer of %lu changed groups (after groups were merged)", buf, 0x20u);
      }

      resultsObserverIfUncanceled = [(EDGroupedSenderQueryHandler *)self resultsObserverIfUncanceled];
      observationIdentifier = [(EDMessageRepositoryQueryHandler *)self observationIdentifier];
      [resultsObserverIfUncanceled observer:observationIdentifier matchedChangesForObjectIDs:v17];
    }

    v28 = [(EDGroupedSenderQueryHandler *)self _itemIDsWithSectionChangesFrom:v15 to:v21];
    [(EDGroupedSenderQueryHandler *)self _notifyResultsObserverOfChangesToVisibleGroupedSendersFrom:v13 to:v19 forChangedGroups:0 itemIDsWithSectionChanges:v28 includePrecachedSenders:0 logMessage:@"after groups were merged"];
  }

  else
  {
    v8 = v5;
  }
}

void __69__EDGroupedSenderQueryHandler__persistenceDidFinishMergingBusinesses__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = _ef_log_EDGroupedSenderQueryHandler(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138412802;
    v62 = v7;
    v63 = 2048;
    v64 = v8;
    v65 = 2048;
    v66 = v9;
    v10 = v7;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entering grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  v60 = *(a1 + 32);
  os_unfair_lock_lock(v60 + 22);
  v12 = _ef_log_EDGroupedSenderQueryHandler(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    *buf = 138412802;
    v62 = v13;
    v63 = 2048;
    v64 = v14;
    v65 = 2048;
    v66 = v15;
    v16 = v13;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "<%@ %p> Entered grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  v17 = *(a1 + 48);
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (v19)
  {
    v21 = *(a1 + 48);
    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = [v19 messages];
      v25 = [v23 addMessages:v24];

      [*(a1 + 48) updateGroupedSender:v23];
      if (v25)
      {
        v26 = *(a1 + 40);
        v27 = [v23 objectID];
        [v26 setObject:v25 forKeyedSubscript:v27];
      }
    }

    else
    {
      v25 = [v19 externalBusinessID];
      v31 = [v19 messages];
      v32 = [v31 count] == 0;

      if (v32)
      {
        v34 = _ef_log_EDGroupedSenderQueryHandler(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v55 = objc_opt_class();
          v56 = *(a1 + 32);
          *buf = 138412802;
          v62 = v55;
          v63 = 2048;
          v64 = v56;
          v65 = 2114;
          v66 = v19;
          v57 = v55;
          _os_log_error_impl(&dword_1C61EF000, v34, OS_LOG_TYPE_ERROR, "<%@ %p> Finished Merging Businesses: Found empty messages with old grouped sender:%{public}@", buf, 0x20u);
        }
      }

      v35 = [EDGroupedSender alloc];
      v36 = [v19 messages];
      v37 = *(a1 + 32);
      v58 = [v37 query];
      v59 = [v37 _messageQueryFromGroupedQuery:v58];
      v38 = [*(a1 + 32) businessPersistence];
      v39 = a3;
      v40 = [*(a1 + 32) messagePersistence];
      v41 = [*(a1 + 32) businessCloudStorage];
      v42 = [*(a1 + 32) unsubscribeDetector];
      v23 = [(EDGroupedSender *)v35 initWithBusinessID:v39 externalBusinessID:v25 messages:v36 originatingQuery:v59 businessPersistence:v38 messagePersistence:v40 businessCloudStorage:v41 unsubscribeDetector:v42];

      [*(a1 + 48) addGroupedSender:v23];
    }

    [*(a1 + 48) removeGroupedSender:v19];
  }

  else
  {
    v23 = _ef_log_EDGroupedSenderQueryHandler(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = *(a1 + 32);
      *buf = 138412802;
      v62 = v28;
      v63 = 2048;
      v64 = v29;
      v65 = 2048;
      v66 = a2;
      v30 = v28;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_INFO, "<%@ %p> Ignoring business ID %lld being merged because it does not exist in our groups", buf, 0x20u);
    }
  }

  v44 = _ef_log_EDGroupedSenderQueryHandler(v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = objc_opt_class();
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    *buf = 138412802;
    v62 = v45;
    v63 = 2048;
    v64 = v46;
    v65 = 2048;
    v66 = v47;
    v48 = v45;
    _os_log_impl(&dword_1C61EF000, v44, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exiting grouped sender list %p lock for merging businesses", buf, 0x20u);
  }

  os_unfair_lock_unlock(v60 + 22);
  v50 = _ef_log_EDGroupedSenderQueryHandler(v49);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = objc_opt_class();
    v52 = *(a1 + 32);
    v53 = *(a1 + 40);
    *buf = 138412802;
    v62 = v51;
    v63 = 2048;
    v64 = v52;
    v65 = 2048;
    v66 = v53;
    v54 = v51;
    _os_log_impl(&dword_1C61EF000, v50, OS_LOG_TYPE_DEFAULT, "<%@ %p> Exited grouped sender list %p lock for merging businesses", buf, 0x20u);
  }
}

+ (id)resolveMergePathsForMergedBusinesses:(id)businesses
{
  businessesCopy = businesses;
  v6 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__EDGroupedSenderQueryHandler_resolveMergePathsForMergedBusinesses___block_invoke;
  v12[3] = &unk_1E8252600;
  v7 = v6;
  v13 = v7;
  v15 = a2;
  selfCopy = self;
  v8 = businessesCopy;
  v14 = v8;
  enumerateBusinessesInMapTable(v8, v12);
  v9 = v14;
  v10 = v7;

  return v7;
}

void __68__EDGroupedSenderQueryHandler_resolveMergePathsForMergedBusinesses___block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  if (NSMapGet(*(a1 + 32), a2))
  {
    return;
  }

  if (a2 == a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EDGroupedSenderQueryHandler.m" lineNumber:962 description:@"Cycle while merging businesses"];
  }

  v6 = NSMapGet(*(a1 + 32), a3);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);

    [v8 setObject:v7 forKey:a2];
    return;
  }

  v9 = 0;
  while (1)
  {
    v10 = NSMapGet(*(a1 + 40), a3);
    v11 = v10;
    if (!v10)
    {
      break;
    }

    if (v10 == a2)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EDGroupedSenderQueryHandler.m" lineNumber:976 description:@"Cycle while merging businesses"];

      if (v9)
      {
        goto LABEL_13;
      }

LABEL_12:
      v9 = objc_alloc_init(MEMORY[0x1E699B810]);
      goto LABEL_13;
    }

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_13:
    [v9 addIndex:a3];
    if ([v9 containsIndex:v11])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"EDGroupedSenderQueryHandler.m" lineNumber:983 description:@"Cycle while merging businesses"];
    }

    v12 = NSMapGet(*(a1 + 32), v11);
    v13 = v12;
    a3 = v11;
    if (v12)
    {
      a3 = v12;
      goto LABEL_20;
    }
  }

  v13 = a3;
LABEL_20:
  [*(a1 + 32) setObject:v13 forKey:a2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__EDGroupedSenderQueryHandler_resolveMergePathsForMergedBusinesses___block_invoke_2;
  v17[3] = &unk_1E82525D8;
  v18 = *(a1 + 32);
  v19 = a3;
  [v9 enumerateIndexesUsingBlock:v17];
}

@end