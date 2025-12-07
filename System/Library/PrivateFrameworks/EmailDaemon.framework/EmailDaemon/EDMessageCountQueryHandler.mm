@interface EDMessageCountQueryHandler
+ (OS_os_log)log;
- (BOOL)_moreThan:(uint64_t)than messagesExistWithGlobalMessageID:;
- (EDMessageCountQueryHandler)initWithQuery:(id)query serverCountMailboxScope:(id)scope messagePersistence:(id)persistence hookRegistry:(id)registry observer:(id)observer refireDebounceInterval:(double)interval;
- (id)_filterMessages:(void *)messages potentiallyMatchingMessages:;
- (id)_locked_expandedQueryWithReason:(uint64_t)reason;
- (id)_originalMessagesKeyForKey:(void *)key;
- (id)descriptionForItem:(id)item;
- (id)expandedQuery;
- (id)itemsForStateCaptureWithErrorString:(id *)string;
- (id)labelForStateCapture;
- (uint64_t)_shouldObserveCategorization;
- (uint64_t)_shouldObserveChangeVIPStatus;
- (uint64_t)_shouldObserveDidUpdateFollowUp;
- (uint64_t)_shouldObserveDidUpdateReadLaterDate;
- (uint64_t)_shouldObserveDidUpdateSendLaterDate;
- (void)_decrementLocalCount:(void *)count logMessage:(void *)message generationWindow:;
- (void)_fireCountCalculation;
- (void)_forceUnfreezeAfterMailboxSyncTimeout;
- (void)_incrementLocalCount:(void *)count logMessage:(void *)message generationWindow:;
- (void)_notifyObserverWithLogMessage:(uint64_t)message;
- (void)_persistenceDidDeleteMessages:(uint64_t)messages includeMessagesWithDeletedFlag:(void *)flag generationWindow:;
- (void)_prepareForChangeWithMessages:(void *)messages changeKey:;
- (void)_processChangedMessages:(void *)messages changeKey:(void *)key generationWindow:;
- (void)_reallyScheduleCountCalculationWithReason:(uint64_t)reason generation:;
- (void)_resetExpandedQuery;
- (void)_scheduleCountCalculationWithReason:(uint64_t)reason generation:;
- (void)_scheduleCountForNotificationWithReason:(uint64_t)reason generation:;
- (void)cancel;
- (void)dealloc;
- (void)didSyncMailbox:(id)mailbox;
- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidChangeCategorizationForMessages:(id)messages userInitiated:(BOOL)initiated generationWindow:(id)window;
- (void)persistenceDidChangeFlags:(id)flags messages:(id)messages generationWindow:(id)window;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window;
- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window;
- (void)persistenceDidChangeVIPStatus:(BOOL)status messages:(id)messages;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation;
- (void)persistenceDidUpdateFollowUpForMessages:(id)messages generationWindow:(id)window;
- (void)persistenceDidUpdateLastSyncAndMostRecentStatusCount:(int64_t)count forMailboxWithObjectID:(id)d generationWindow:(id)window;
- (void)persistenceDidUpdateMostRecentStatusCount:(int64_t)count forMailboxWithObjectID:(id)d generationWindow:(id)window;
- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window;
- (void)persistenceDidUpdateSendLaterDate:(id)date messages:(id)messages generationWindow:(id)window;
- (void)persistenceDidUpdateServerCount:(int64_t)count forMailboxWithObjectID:(id)d generationWindow:(id)window;
- (void)persistenceIsAddingMailboxWithDatabaseID:(int64_t)d objectID:(id)iD generationWindow:(id)window;
- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages;
- (void)test_tearDown;
- (void)willSyncMailbox:(id)mailbox;
@end

@implementation EDMessageCountQueryHandler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDMessageCountQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_60 != -1)
  {
    dispatch_once(&log_onceToken_60, block);
  }

  v2 = log_log_60;

  return v2;
}

- (id)expandedQuery
{
  if (self)
  {
    os_unfair_lock_lock((self + 116));
    v2 = *(self + 48);
    if (!v2)
    {
      v3 = [(EDMessageCountQueryHandler *)self _locked_expandedQueryWithReason:?];
      v4 = *(self + 48);
      *(self + 48) = v3;

      v2 = *(self + 48);
    }

    v5 = v2;
    os_unfair_lock_unlock((self + 116));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 136);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 label];
    v7 = v6;
    v8 = &stru_1F45B4608;
    if (v6)
    {
      v8 = v6;
    }

    *buf = 134218242;
    v50 = v3;
    v51 = 2114;
    v52 = v8;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "<%p: %{public}@> Firing count calculation", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[22];
  }

  v10 = v9;
  v11 = [(EDMessageCountQueryHandler *)*(a1 + 32) expandedQuery];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke_65;
  v41[3] = &unk_1E8254360;
  v12 = *(a1 + 32);
  v44 = &v45;
  v41[4] = v12;
  v13 = v10;
  v42 = v13;
  v14 = v11;
  v43 = v14;
  [v13 performDatabaseReadBlock:v41];
  v15 = *(a1 + 32);
  os_unfair_lock_lock(v15 + 28);
  [*(*(a1 + 32) + 56) removeAllIndexes];
  [*(*(a1 + 32) + 64) removeAllIndexes];
  os_unfair_lock_unlock(v15 + 28);
  v16 = *(a1 + 32);
  os_unfair_lock_lock(v16 + 30);
  v17 = *(a1 + 32);
  v18 = *(v17 + 80);
  if (!v18)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"EDMessageCountQueryHandler.m" lineNumber:378 description:@"Decrementing past 0"];

    v17 = *(a1 + 32);
    v18 = *(v17 + 80);
  }

  if (v18 > 1)
  {
    goto LABEL_21;
  }

  if (v46[3] >= *(v17 + 72))
  {
    *(v17 + 80) = 0;
    *(*(a1 + 32) + 88) = 0x3FC0000000000000;
    os_unfair_lock_unlock(v16 + 30);
  }

  else
  {
    v19 = *(v17 + 88);
    *(v17 + 88) = fmin(v19 + v19, 15.0);
    v20 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        v22 = *(v21 + 136);
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v24 = [v23 label];
      v25 = v24;
      v26 = &stru_1F45B4608;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v46[3];
      v28 = *(*(a1 + 32) + 72);
      *buf = 134219010;
      v50 = v21;
      v51 = 2114;
      v52 = v26;
      v53 = 2048;
      v54 = v19;
      v55 = 2048;
      v56 = v27;
      v57 = 2048;
      v58 = v28;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_INFO, "<%p: %{public}@> Rescheduling after %.3f due to generation %lld being lower than minimum required generation %lld", buf, 0x34u);
    }

    if (v19 == 0.0)
    {
      v17 = *(a1 + 32);
LABEL_21:
      *(v17 + 80) = 1;
      *(*(a1 + 32) + 88) = 0x3FC0000000000000;
      os_unfair_lock_unlock(v16 + 30);
      [(EDMessageCountQueryHandler *)*(a1 + 32) _fireCountCalculation];
      goto LABEL_26;
    }

    os_unfair_lock_unlock(v16 + 30);
    v29 = *(a1 + 32);
    if (v29)
    {
      v29 = v29[16];
    }

    v30 = v29;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke_73;
    v40[3] = &unk_1E8250260;
    v40[4] = *(a1 + 32);
    v31 = [v30 afterDelay:v40 performBlock:v19];
  }

LABEL_26:
  [(EDMessageCountQueryHandler *)*(a1 + 32) _notifyObserverWithLogMessage:?];
  v32 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 136);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v36 = [v35 label];
    v37 = v36;
    v38 = &stru_1F45B4608;
    if (v36)
    {
      v38 = v36;
    }

    *buf = 134218242;
    v50 = v33;
    v51 = 2114;
    v52 = v38;
    _os_log_impl(&dword_1C61EF000, v32, OS_LOG_TYPE_INFO, "<%p: %{public}@> Finished count calculation", buf, 0x16u);
  }

  _Block_object_dispose(&v45, 8);
}

- (void)_fireCountCalculation
{
  if (self)
  {
    v2 = *(self + 128);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke;
    v3[3] = &unk_1E8250A90;
    v3[4] = self;
    v3[5] = sel__fireCountCalculation;
    [v2 performBlock:v3];
  }
}

void __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke_65(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v4 = mach_absolute_time();
  v5 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 136);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 label];
    v10 = v9;
    v11 = &stru_1F45B4608;
    *buf = 134218498;
    if (v9)
    {
      v11 = v9;
    }

    v28 = v6;
    v29 = 2114;
    v30 = v11;
    v31 = 2048;
    v32 = *&a2;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "<%p: %{public}@> recalculating unread counts (generation %lld)", buf, 0x20u);
  }

  v12 = [*(a1 + 40) countOfMessagesMatchingQuery:*(a1 + 48)];
  *(*(a1 + 32) + 240) = v12;
  *(*(a1 + 32) + 24) = a2;
  v13 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 136);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [v16 label];
    v18 = mach_absolute_time();
    if (EFGetElapsedTimeSinceAbsoluteTime_onceToken_0 != -1)
    {
      __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke_65_cold_1();
    }

    v19 = &stru_1F45B4608;
    if (v17)
    {
      v19 = v17;
    }

    *buf = 134218754;
    v28 = v14;
    v29 = 2114;
    v30 = v19;
    v31 = 2048;
    v32 = ((v18 - v4) * EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo_0 / *algn_1EDC94D0C) / 1000000000.0;
    v33 = 2048;
    v34 = v12;
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_INFO, "<%p: %{public}@> query took %.04fs localCount:%ld", buf, 0x2Au);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = *(v20 + 152);
    if (v21)
    {
      v22 = v21;
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = *(v23 + 176);
      }

      else
      {
        v24 = 0;
      }

      v25 = [v24 mailboxPersistence];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke_66;
      v26[3] = &unk_1E8254338;
      v26[4] = *(a1 + 32);
      [v25 serverCountsForMailboxScope:v22 block:v26];
    }
  }
}

- (void)cancel
{
  if (self)
  {
    scheduler = self->_scheduler;
  }

  else
  {
    scheduler = 0;
  }

  v4 = scheduler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__EDMessageCountQueryHandler_cancel__block_invoke;
  v6[3] = &unk_1E8250260;
  v6[4] = self;
  [(EFAssertableScheduler *)v4 performBlock:v6];

  mailboxPersistence = [(EDMessagePersistence *)self->_messagePersistence mailboxPersistence];
  [mailboxPersistence removeChangeObserverWithIdentifier:self->_mailboxObserverID];

  [(EFManualCancelationToken *)self->_cancelationToken cancel];
}

void __51__EDMessageCountQueryHandler__fireCountCalculation__block_invoke_66(uint64_t a1, void *a2, int64_t a3, int64_t a4, int64_t a5)
{
  v11 = a2;
  v9 = objc_alloc_init(_EDMailboxServerCount);
  v10 = v9;
  if (v9)
  {
    v9->_serverCount = a3;
    v9->_mostRecentStatusCount = a4;
    v9->_lastSyncStatusCount = a5;
  }

  [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:v11];
}

void __36__EDMessageCountQueryHandler_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSTimer *)self->_mailboxSyncTimer invalidate];
  v3 = self->_scheduler;
  scheduler = [(EFAssertableScheduler *)v3 scheduler];

  v5 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = self->_query;
    label = [(EMQuery *)v10 label];
    v12 = label;
    v13 = &stru_1F45B4608;
    *buf = 134218498;
    if (label)
    {
      v13 = label;
    }

    selfCopy = self;
    v17 = 2114;
    v18 = v13;
    v19 = 2112;
    v20 = scheduler;
    _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "<%p: %{public}@> Checking in scheduler %@", buf, 0x20u);
  }

  if (scheduler)
  {
    checkInScheduler(scheduler);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mailboxPersistence = [(EDMessagePersistence *)self->_messagePersistence mailboxPersistence];
  [mailboxPersistence removeChangeObserverWithIdentifier:self->_mailboxObserverID];

  v8 = EFAtomicObjectRelease();
  v9 = EFAtomicObjectRelease();

  v14.receiver = self;
  v14.super_class = EDMessageCountQueryHandler;
  [(EDMessageCountQueryHandler *)&v14 dealloc];
}

void __33__EDMessageCountQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_60;
  log_log_60 = v1;
}

- (EDMessageCountQueryHandler)initWithQuery:(id)query serverCountMailboxScope:(id)scope messagePersistence:(id)persistence hookRegistry:(id)registry observer:(id)observer refireDebounceInterval:(double)interval
{
  v87 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  scopeCopy = scope;
  persistenceCopy = persistence;
  registryCopy = registry;
  observerCopy = observer;
  v80.receiver = self;
  v80.super_class = EDMessageCountQueryHandler;
  v18 = [(EDMessageCountQueryHandler *)&v80 init];
  v19 = v18;
  if (v18)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v84 = __Block_byref_object_copy__23;
    v85 = __Block_byref_object_dispose__23;
    v86 = 0;
    v20 = defaultSchedulers(v18);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __checkOutScheduler_block_invoke;
    v81[3] = &unk_1E8254400;
    v81[4] = buf;
    [v20 performWhileLocked:v81];

    v73 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    v21 = [MEMORY[0x1E699B988] assertableSchedulerWithScheduler:v73];
    scheduler = v19->_scheduler;
    v19->_scheduler = v21;

    v23 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      label = [queryCopy label];
      v69 = label;
      v70 = &stru_1F45B4608;
      *buf = 134218498;
      *&buf[4] = v19;
      if (label)
      {
        v70 = label;
      }

      *&buf[12] = 2114;
      *&buf[14] = v70;
      *&buf[22] = 2112;
      v84 = v73;
      _os_log_debug_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEBUG, "<%p: %{public}@> Checking out scheduler %@", buf, 0x20u);
    }

    objc_storeStrong(&v19->_query, query);
    v19->_recalculationDelay = 0.125;
    v19->_expandedQueryLock._os_unfair_lock_opaque = 0;
    v19->_recalculationLock._os_unfair_lock_opaque = 0;
    v24 = MEMORY[0x1E699ADA0];
    predicate = [queryCopy predicate];
    v26 = *MEMORY[0x1E699A8E8];
    v82[0] = *MEMORY[0x1E699A8A0];
    v82[1] = v26;
    v82[2] = *MEMORY[0x1E699A898];
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
    v28 = [v24 predicateFromPredicate:predicate ignoringKeyPaths:v27];
    predicateIgnoringFlags = v19->_predicateIgnoringFlags;
    v19->_predicateIgnoringFlags = v28;

    objc_storeStrong(&v19->_serverCountMailboxScope, scope);
    objc_storeWeak(&v19->_resultsObserver, observerCopy);
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    serverCounts = v19->_serverCounts;
    v19->_serverCounts = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mailboxesBeingSynced = v19->_mailboxesBeingSynced;
    v19->_mailboxesBeingSynced = v32;

    objc_storeStrong(&v19->_messagePersistence, persistence);
    objc_storeStrong(&v19->_hookRegistry, registry);
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MailboxObserver-%@", objc_opt_class(), v19];
    v35 = [objc_alloc(MEMORY[0x1E699AE08]) initWithRepresentedObjectID:v34];
    mailboxObserverID = v19->_mailboxObserverID;
    v19->_mailboxObserverID = v35;

    mailboxPersistence = [(EDMessagePersistence *)v19->_messagePersistence mailboxPersistence];
    [mailboxPersistence addChangeObserver:v19 withIdentifier:v19->_mailboxObserverID];

    v19->_seenMessageIDsLock._os_unfair_lock_opaque = 0;
    v38 = objc_alloc_init(MEMORY[0x1E699B810]);
    seenMessageIDs = v19->_seenMessageIDs;
    v19->_seenMessageIDs = v38;

    v40 = objc_alloc_init(MEMORY[0x1E699B810]);
    newMessageIDs = v19->_newMessageIDs;
    v19->_newMessageIDs = v40;

    v42 = [EDUpdateThrottler alloc];
    label2 = [queryCopy label];
    v44 = [(EDUpdateThrottler *)v42 initWithName:label2 delayInterval:10 scalingFactor:1.0];
    updateThrottler = v19->_updateThrottler;
    v19->_updateThrottler = v44;

    v46 = [[EDMessageQueryEvaluator alloc] initWithQuery:queryCopy messagePersistence:v19->_messagePersistence filterMessagesByID:0];
    queryEvaluator = v19->_queryEvaluator;
    v19->_queryEvaluator = v46;

    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingFlagChangesKey-%p", objc_opt_class(), v19];
    pendingFlagChangesKey = v19->_pendingFlagChangesKey;
    v19->_pendingFlagChangesKey = v48;

    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-MessagesPendingCategorizationChangesKey-%p", objc_opt_class(), v19];
    pendingCategorizationChangesKey = v19->_pendingCategorizationChangesKey;
    v19->_pendingCategorizationChangesKey = v50;

    if (interval > 0.0)
    {
      v52 = objc_alloc(MEMORY[0x1E699B7A8]);
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __132__EDMessageCountQueryHandler_initWithQuery_serverCountMailboxScope_messagePersistence_hookRegistry_observer_refireDebounceInterval___block_invoke;
      v77[3] = &unk_1E8254310;
      v78 = v73;
      v53 = v19;
      v79 = v53;
      v54 = [v52 initWithTimeInterval:v78 scheduler:1 startAfter:v77 block:interval];
      refireDebouncer = v53->_refireDebouncer;
      v53->_refireDebouncer = v54;
    }

    [(EDPersistenceHookRegistry *)v19->_hookRegistry registerMailboxChangeHookResponder:v19];
    [(EDPersistenceHookRegistry *)v19->_hookRegistry registerMessageChangeHookResponder:v19];
    [(EDPersistenceHookRegistry *)v19->_hookRegistry registerCategoryChangeHookResponder:v19];
    v56 = MEMORY[0x1E699B7F8];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __132__EDMessageCountQueryHandler_initWithQuery_serverCountMailboxScope_messagePersistence_hookRegistry_observer_refireDebounceInterval___block_invoke_3;
    v74[3] = &unk_1E8250128;
    v75 = registryCopy;
    v57 = v19;
    v76 = v57;
    v58 = [v56 tokenWithCancelationBlock:v74];
    cancelationToken = v57->_cancelationToken;
    v57->_cancelationToken = v58;

    v60 = objc_alloc(MEMORY[0x1E699B7E8]);
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    v63 = [v60 initWithTitle:v62 itemName:@"Messages" headLimit:20 tailLimit:0 delegate:v57];
    stateCapturer = v57->_stateCapturer;
    v57->_stateCapturer = v63;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v57 selector:sel_willSyncMailbox_ name:@"EDNotificationWillSyncMailbox" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v57 selector:sel_didSyncMailbox_ name:@"EDNotificationDidSyncMailbox" object:0];

    [(EDMessageCountQueryHandler *)v57 _scheduleCountCalculationWithReason:0 generation:?];
  }

  return v19;
}

void __132__EDMessageCountQueryHandler_initWithQuery_serverCountMailboxScope_messagePersistence_hookRegistry_observer_refireDebounceInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __132__EDMessageCountQueryHandler_initWithQuery_serverCountMailboxScope_messagePersistence_hookRegistry_observer_refireDebounceInterval___block_invoke_2;
  v6[3] = &unk_1E8250128;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void __132__EDMessageCountQueryHandler_initWithQuery_serverCountMailboxScope_messagePersistence_hookRegistry_observer_refireDebounceInterval___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) first];
  v3 = [*(a1 + 40) second];
  -[EDMessageCountQueryHandler _reallyScheduleCountCalculationWithReason:generation:](v2, v4, [v3 longLongValue]);
}

- (void)_reallyScheduleCountCalculationWithReason:(uint64_t)reason generation:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    reasonCopy = *(self + 72);
    v7 = *(self + 80);
    if (reasonCopy <= reason)
    {
      reasonCopy = reason;
    }

    *(self + 72) = reasonCopy;
    *(self + 80) = v7 + 1;
    os_unfair_lock_unlock((self + 120));
    if (!v7)
    {
      v8 = +[EDMessageCountQueryHandler log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(self + 136);
        label = [v9 label];
        v11 = label;
        v12 = &stru_1F45B4608;
        v13 = 134218754;
        if (label)
        {
          v12 = label;
        }

        selfCopy = self;
        v15 = 2114;
        v16 = v12;
        v17 = 2048;
        reasonCopy2 = reason;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Scheduling count calculation after generation %lld with reason %@", &v13, 0x2Au);
      }

      [(EDMessageCountQueryHandler *)self _fireCountCalculation];
    }
  }
}

- (void)_scheduleCountCalculationWithReason:(uint64_t)reason generation:
{
  v8 = a2;
  if (self)
  {
    if (*(self + 216))
    {
      v5 = MEMORY[0x1E699B848];
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:reason];
      v7 = [v5 pairWithFirst:v8 second:v6];

      [*(self + 216) debounceResult:v7];
    }

    else
    {
      [(EDMessageCountQueryHandler *)self _reallyScheduleCountCalculationWithReason:v8 generation:reason];
    }
  }
}

- (void)test_tearDown
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 128);
  }

  [v5 stopAndWait];
  v6 = *(a3 + 176);
  *(a3 + 176) = 0;
}

- (id)_locked_expandedQueryWithReason:(uint64_t)reason
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason)
  {
    v4 = *(reason + 136);
    v5 = *(reason + 176);
    v6 = [v5 queryWithExpandedMailboxesFromQuery:v4];

    v7 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      label = [v4 label];
      predicate = [v6 predicate];
      v10 = predicate;
      v11 = &stru_1F45B4608;
      v13 = 134218754;
      if (label)
      {
        v11 = label;
      }

      reasonCopy = reason;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v3;
      v19 = 2112;
      v20 = predicate;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "<%p: %{public}@> %{public}@ count handler with query: %@", &v13, 0x2Au);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_resetExpandedQuery
{
  if (self)
  {
    os_unfair_lock_lock((self + 116));
    v2 = [(EDMessageCountQueryHandler *)self _locked_expandedQueryWithReason:?];
    v3 = *(self + 48);
    *(self + 48) = v2;

    os_unfair_lock_unlock((self + 116));
  }
}

- (void)_notifyObserverWithLogMessage:(uint64_t)message
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (message)
  {
    v4 = *(message + 240);
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v5 = *(message + 8);
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke;
    v69[3] = &unk_1E82543B0;
    v69[4] = &v78;
    v69[5] = &v74;
    v69[6] = &v70;
    [v5 enumerateKeysAndObjectsUsingBlock:v69];
    v6 = v79[3];
    v7 = v75[3];
    v8 = v71[3];
    v9 = [*(message + 16) count];
    v10 = v6 + v4 + v7 - v8;
    if (v9)
    {
      v11 = +[EDMessageCountQueryHandler log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v3;
        v59 = v4;
        v53 = v10;
        log = *(message + 136);
        label = [log label];
        v13 = label;
        if (label)
        {
          v14 = label;
        }

        else
        {
          v14 = &stru_1F45B4608;
        }

        v15 = v79[3];
        v16 = v75[3];
        v17 = v71[3];
        v18 = queryDescription(message);
        v19 = mailboxScopeDescription(message);
        *buf = 134220547;
        messageCopy4 = message;
        v84 = 2114;
        v85 = v14;
        v86 = 2114;
        v87 = v56;
        v88 = 2048;
        v89 = v9;
        v90 = 2048;
        v91 = v53;
        v92 = 2048;
        v93 = v59;
        v94 = 2048;
        v95 = v15;
        v96 = 2048;
        v97 = v16;
        v98 = 2048;
        v99 = v17;
        v3 = v56;
        v100 = 2113;
        v101 = v18;
        v102 = 2114;
        v103 = v19;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> %{public}@ (%lu mailboxes being synced): %lld = %lld + %lld + (%lld - %lld)\n%{private}@\n%{public}@", buf, 0x70u);
      }

      goto LABEL_28;
    }

    v68 = 0;
    objc_initWeak(&location, message);
    v20 = *(message + 200);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke_84;
    v65[3] = &unk_1E8252B00;
    objc_copyWeak(&v66, &location);
    v21 = [v20 updateWithBlock:v65 unacknowledgedUpdatesCount:&v68];

    if (v21)
    {
      label2 = [v21 label];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke_89;
      v62[3] = &unk_1E8250098;
      objc_copyWeak(&v64, &location);
      v60 = v4;
      v63 = label2;
      loga = v63;
      [v21 addInvocationBlock:v62];
      v23 = +[EDMessageCountQueryHandler log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v21;
        v57 = v3;
        v24 = v10;
        v49 = *(message + 136);
        label3 = [v49 label];
        v26 = label3;
        if (label3)
        {
          v27 = label3;
        }

        else
        {
          v27 = &stru_1F45B4608;
        }

        v28 = v79[3];
        v29 = v75[3];
        v30 = v71[3];
        v31 = queryDescription(message);
        v32 = mailboxScopeDescription(message);
        *buf = 134220547;
        messageCopy4 = message;
        v84 = 2114;
        v85 = v27;
        v86 = 2114;
        v87 = v57;
        v88 = 2048;
        v89 = v24;
        v90 = 2048;
        v91 = v60;
        v92 = 2048;
        v93 = v28;
        v94 = 2048;
        v95 = v29;
        v10 = v24;
        v96 = 2048;
        v97 = v30;
        v3 = v57;
        v98 = 2114;
        v21 = v54;
        v99 = v54;
        v100 = 2113;
        v101 = v31;
        v102 = 2114;
        v103 = v32;
        _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> %{public}@: %lld = %lld + %lld + (%lld - %lld), %{public}@\n%{private}@\n%{public}@", buf, 0x70u);
      }

      if (v10 < 0)
      {
        v33 = +[EDMessageCountQueryHandler log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v45 = *(message + 136);
          label4 = [v45 label];
          v47 = label4;
          v48 = &stru_1F45B4608;
          if (label4)
          {
            v48 = label4;
          }

          *buf = 134218242;
          messageCopy4 = message;
          v84 = 2114;
          v85 = v48;
          _os_log_error_impl(&dword_1C61EF000, v33, OS_LOG_TYPE_ERROR, "<%p: %{public}@> Total count is negative.", buf, 0x16u);
        }

        v10 = 0;
      }

      if (([*(message + 192) isCanceled] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained((message + 168));
        [WeakRetained countDidChange:v10 acknowledgementToken:v21];
      }

      objc_destroyWeak(&v64);
    }

    else
    {
      v35 = +[EDMessageCountQueryHandler log];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        objc_destroyWeak(&v66);
        objc_destroyWeak(&location);
LABEL_28:
        [(EDMessageCountQueryHandler *)&v70 _notifyObserverWithLogMessage:&v78];
        goto LABEL_29;
      }

      v58 = v3;
      v61 = v4;
      loga = v35;
      v55 = v10;
      v50 = *(message + 136);
      label5 = [v50 label];
      v37 = label5;
      if (label5)
      {
        v38 = label5;
      }

      else
      {
        v38 = &stru_1F45B4608;
      }

      v39 = v68;
      v40 = v79[3];
      v41 = v75[3];
      v42 = v71[3];
      v43 = queryDescription(message);
      v44 = mailboxScopeDescription(message);
      *buf = 134220547;
      messageCopy4 = message;
      v84 = 2114;
      v85 = v38;
      v86 = 2114;
      v87 = v58;
      v88 = 2048;
      v89 = v39;
      v3 = v58;
      v90 = 2048;
      v91 = v55;
      v92 = 2048;
      v93 = v61;
      v94 = 2048;
      v95 = v40;
      v96 = 2048;
      v97 = v41;
      v98 = 2048;
      v99 = v42;
      v100 = 2113;
      v101 = v43;
      v102 = 2114;
      v103 = v44;
      _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> %{public}@ (%lu unacknowledged updates): %lld = %lld + %lld + (%lld - %lld)\n%{private}@\n%{public}@", buf, 0x70u);
    }

    v35 = loga;
    goto LABEL_27;
  }

LABEL_29:
}

- (void)_incrementLocalCount:(void *)count logMessage:(void *)message generationWindow:
{
  v35 = *MEMORY[0x1E69E9840];
  countCopy = count;
  messageCopy = message;
  v9 = messageCopy;
  if (self && a2)
  {
    earliestGeneration = [messageCopy earliestGeneration];
    latestGeneration = [v9 latestGeneration];
    v12 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(self + 136);
      label = [v13 label];
      v15 = label;
      v16 = &stru_1F45B4608;
      *buf = 134219266;
      if (label)
      {
        v16 = label;
      }

      selfCopy = self;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = countCopy;
      v29 = 2048;
      v30 = a2;
      v31 = 2048;
      v32 = earliestGeneration;
      v33 = 2048;
      v34 = latestGeneration;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "<%p: %{public}@> %{public}@: Scheduling increment of %lld (window: %llu:%llu)", buf, 0x3Eu);
    }

    v17 = *(self + 128);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__EDMessageCountQueryHandler__incrementLocalCount_logMessage_generationWindow___block_invoke;
    v18[3] = &unk_1E8254388;
    v20 = latestGeneration;
    v21 = a2;
    v18[4] = self;
    v19 = countCopy;
    v22 = earliestGeneration;
    [v17 performBlock:v18];
  }
}

void __79__EDMessageCountQueryHandler__incrementLocalCount_logMessage_generationWindow___block_invoke(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (a1[6] <= v3)
  {
    v6 = a1[8] > v3;
    v7 = +[EDMessageCountQueryHandler log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = a1[4];
        if (v9)
        {
          v10 = *(v9 + 136);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        v12 = [v11 label];
        v13 = v12;
        v14 = &stru_1F45B4608;
        v15 = *(a1[4] + 24);
        if (v12)
        {
          v14 = v12;
        }

        v16 = a1[8];
        v17 = a1[6];
        v27 = 134219010;
        v28 = v9;
        v29 = 2114;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        v33 = 2048;
        v34 = v16;
        v35 = 2048;
        v36 = v17;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> increment occured during generation window, scheduling full fetch (ours: %llu, window: %llu:%llu)", &v27, 0x34u);
      }

      [(EDMessageCountQueryHandler *)a1[4] _scheduleCountCalculationWithReason:a1[6] generation:?];
    }

    else
    {
      if (v8)
      {
        v18 = a1[4];
        if (v18)
        {
          v19 = *(v18 + 136);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v21 = [v20 label];
        v22 = v21;
        v23 = &stru_1F45B4608;
        v24 = *(a1[4] + 24);
        if (v21)
        {
          v23 = v21;
        }

        v25 = a1[8];
        v26 = a1[6];
        v27 = 134219010;
        v28 = v18;
        v29 = 2114;
        v30 = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 2048;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> increment ignored due to newer resync generation (ours: %llu, window: %llu:%llu)", &v27, 0x34u);
      }
    }
  }

  else
  {
    *(v2 + 240) += a1[7];
    v4 = a1[4];
    v5 = a1[5];

    [(EDMessageCountQueryHandler *)v4 _notifyObserverWithLogMessage:v5];
  }
}

- (void)_decrementLocalCount:(void *)count logMessage:(void *)message generationWindow:
{
  v35 = *MEMORY[0x1E69E9840];
  countCopy = count;
  messageCopy = message;
  v9 = messageCopy;
  if (self && a2)
  {
    earliestGeneration = [messageCopy earliestGeneration];
    latestGeneration = [v9 latestGeneration];
    v12 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(self + 136);
      label = [v13 label];
      v15 = label;
      v16 = &stru_1F45B4608;
      *buf = 134219266;
      if (label)
      {
        v16 = label;
      }

      selfCopy = self;
      v25 = 2114;
      v26 = v16;
      v27 = 2114;
      v28 = countCopy;
      v29 = 2048;
      v30 = a2;
      v31 = 2048;
      v32 = earliestGeneration;
      v33 = 2048;
      v34 = latestGeneration;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "<%p: %{public}@> %{public}@: Scheduling decrement of %lld (window: %llu:%llu)", buf, 0x3Eu);
    }

    v17 = *(self + 128);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__EDMessageCountQueryHandler__decrementLocalCount_logMessage_generationWindow___block_invoke;
    v18[3] = &unk_1E8254388;
    v20 = latestGeneration;
    v21 = a2;
    v18[4] = self;
    v19 = countCopy;
    v22 = earliestGeneration;
    [v17 performBlock:v18];
  }
}

void __79__EDMessageCountQueryHandler__decrementLocalCount_logMessage_generationWindow___block_invoke(uint64_t *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *(v2 + 24);
  if (a1[6] <= v3)
  {
    v6 = a1[8] > v3;
    v7 = +[EDMessageCountQueryHandler log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = a1[4];
        if (v9)
        {
          v10 = *(v9 + 136);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        v12 = [v11 label];
        v13 = v12;
        v14 = &stru_1F45B4608;
        v15 = *(a1[4] + 24);
        if (v12)
        {
          v14 = v12;
        }

        v16 = a1[8];
        v17 = a1[6];
        v27 = 134219010;
        v28 = v9;
        v29 = 2114;
        v30 = v14;
        v31 = 2048;
        v32 = v15;
        v33 = 2048;
        v34 = v16;
        v35 = 2048;
        v36 = v17;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> decrement occured during generation window, scheduling full fetch (ours: %llu, window: %llu:%llu)", &v27, 0x34u);
      }

      [(EDMessageCountQueryHandler *)a1[4] _scheduleCountCalculationWithReason:a1[6] generation:?];
    }

    else
    {
      if (v8)
      {
        v18 = a1[4];
        if (v18)
        {
          v19 = *(v18 + 136);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v21 = [v20 label];
        v22 = v21;
        v23 = &stru_1F45B4608;
        v24 = *(a1[4] + 24);
        if (v21)
        {
          v23 = v21;
        }

        v25 = a1[8];
        v26 = a1[6];
        v27 = 134219010;
        v28 = v18;
        v29 = 2114;
        v30 = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 2048;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> decrement ignored due to newer resync generation (ours: %llu, window: %llu:%llu)", &v27, 0x34u);
      }
    }
  }

  else
  {
    *(v2 + 240) -= a1[7];
    v4 = a1[4];
    v5 = a1[5];

    [(EDMessageCountQueryHandler *)v4 _notifyObserverWithLogMessage:v5];
  }
}

void __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke_84(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && a2)
  {
    v5 = WeakRetained[16];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke_2;
    v6[3] = &unk_1E8250260;
    v6[4] = v4;
    [v5 performBlock:v6];
  }
}

void __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke_89(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (WeakRetained)
    {
      v4 = WeakRetained[17];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 label];
    v7 = v6;
    v8 = &stru_1F45B4608;
    v9 = *(a1 + 32);
    if (v6)
    {
      v8 = v6;
    }

    v10 = 134218498;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Acknowledged update %{public}@", &v10, 0x20u);
  }
}

- (void)willSyncMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  userInfo = [mailboxCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"EDNotificationKeyMailbox"];

  if (self)
  {
    v7 = self->_serverCountMailboxScope;
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    v7 = 0;
    messagePersistence = 0;
  }

  v9 = messagePersistence;
  mailboxPersistence = [(EDMessagePersistence *)v9 mailboxPersistence];
  v11 = [(EMMailboxScope *)v7 scopeContainsMailboxObjectID:v6 mailboxTypeResolver:mailboxPersistence];

  if (v11)
  {
    if (self)
    {
      scheduler = self->_scheduler;
    }

    else
    {
      scheduler = 0;
    }

    v13 = scheduler;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__EDMessageCountQueryHandler_willSyncMailbox___block_invoke;
    v14[3] = &unk_1E8250128;
    v14[4] = self;
    v15 = v6;
    [(EFAssertableScheduler *)v13 performBlock:v14];
  }
}

void __46__EDMessageCountQueryHandler_willSyncMailbox___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 136);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 label];
    v7 = v6;
    v8 = &stru_1F45B4608;
    v9 = *(a1 + 40);
    if (v6)
    {
      v8 = v6;
    }

    *buf = 134218498;
    v20 = v3;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@> Started syncing mailbox %{public}@", buf, 0x20u);
  }

  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v10 = *(a1 + 32);
  v11 = v10[4];
  if (v11)
  {
    [v11 invalidate];
    v10 = *(a1 + 32);
  }

  objc_initWeak(buf, v10);
  v12 = MEMORY[0x1E695DFF0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__EDMessageCountQueryHandler_willSyncMailbox___block_invoke_91;
  v17[3] = &unk_1E82543D8;
  objc_copyWeak(&v18, buf);
  v13 = [v12 timerWithTimeInterval:0 repeats:v17 block:300.0];
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = v13;

  Main = CFRunLoopGetMain();
  CFRunLoopAddTimer(Main, *(*(a1 + 32) + 32), *MEMORY[0x1E695E8E0]);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __46__EDMessageCountQueryHandler_willSyncMailbox___block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [(EDMessageCountQueryHandler *)WeakRetained _forceUnfreezeAfterMailboxSyncTimeout];
  }
}

- (void)_forceUnfreezeAfterMailboxSyncTimeout
{
  if (self)
  {
    v2 = *(self + 128);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __67__EDMessageCountQueryHandler__forceUnfreezeAfterMailboxSyncTimeout__block_invoke;
    v3[3] = &unk_1E8250260;
    v3[4] = self;
    [v2 performBlock:v3];
  }
}

void __67__EDMessageCountQueryHandler__forceUnfreezeAfterMailboxSyncTimeout__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[EDMessageCountQueryHandler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 136);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 label];
    v10 = v9;
    v11 = &stru_1F45B4608;
    if (v9)
    {
      v11 = v9;
    }

    v12 = *(*(a1 + 32) + 16);
    v13 = 134218498;
    v14 = v6;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_fault_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_FAULT, "<%p: %{public}@> Mailbox sync timed out for %{public}@", &v13, 0x20u);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [*(v4 + 16) removeAllObjects];
  v5 = *(*v3 + 32);
  *(*v3 + 32) = 0;

  [(EDMessageCountQueryHandler *)*v3 _notifyObserverWithLogMessage:?];
}

- (void)didSyncMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  userInfo = [mailboxCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"EDNotificationKeyMailbox"];

  if (self)
  {
    scheduler = self->_scheduler;
  }

  else
  {
    scheduler = 0;
  }

  v8 = scheduler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__EDMessageCountQueryHandler_didSyncMailbox___block_invoke;
  v10[3] = &unk_1E8250128;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(EFAssertableScheduler *)v8 performBlock:v10];
}

void __45__EDMessageCountQueryHandler_didSyncMailbox___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 16) count])
    {
      [*(*(a1 + 32) + 32) invalidate];
      v2 = *(a1 + 32);
      v3 = *(v2 + 32);
      *(v2 + 32) = 0;
    }

    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [*(a1 + 40) ef_publicDescription];
    v6 = [v4 initWithFormat:@"Finished syncing mailbox %@", v5];

    [(EDMessageCountQueryHandler *)*(a1 + 32) _notifyObserverWithLogMessage:v6];
  }
}

- (id)_originalMessagesKeyForKey:(void *)key
{
  v3 = a2;
  v4 = v3;
  if (key)
  {
    key = [v3 stringByAppendingString:@"Original"];
  }

  return key;
}

- (void)_prepareForChangeWithMessages:(void *)messages changeKey:
{
  v48 = *MEMORY[0x1E69E9840];
  v36 = a2;
  messagesCopy = messages;
  if (self)
  {
    v5 = [v36 count];
    v6 = _os_feature_enabled_impl();
    v7 = 5;
    if (v6)
    {
      v7 = 100;
    }

    if (v5 > v7)
    {
      messagesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Prepare for change. changesKey:%@", messagesCopy];
      [(EDMessageCountQueryHandler *)self _scheduleCountCalculationWithReason:messagesCopy generation:0];

      goto LABEL_25;
    }

    v9 = [*(self + 160) transformMessages:v36];
    os_unfair_lock_lock((self + 112));
    v45 = 0;
    v33 = v9;
    v10 = [(EDMessageCountQueryHandler *)self _filterMessages:v9 potentiallyMatchingMessages:&v45];
    v34 = v45;
    v11 = [v10 count];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v13)
    {
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(self + 56);
          objectID = [*(*(&v41 + 1) + 8 * i) objectID];
          [v16 addIndex:{objc_msgSend(objectID, "globalMessageID")}];
        }

        v13 = [v12 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v13);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v34;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (!v19)
    {
LABEL_24:

      os_unfair_lock_unlock((self + 112));
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      threadDictionary = [currentThread threadDictionary];
      [threadDictionary setObject:v27 forKeyedSubscript:messagesCopy];

      currentThread2 = [MEMORY[0x1E696AF00] currentThread];
      threadDictionary2 = [currentThread2 threadDictionary];
      v32 = [(EDMessageCountQueryHandler *)self _originalMessagesKeyForKey:messagesCopy];
      [threadDictionary2 setObject:v36 forKeyedSubscript:v32];

      goto LABEL_25;
    }

    v20 = *v38;
LABEL_15:
    v21 = 0;
    while (1)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v37 + 1) + 8 * v21);
      objectID2 = [v22 objectID];
      globalMessageID = [objectID2 globalMessageID];

      if ([*(self + 56) containsIndex:globalMessageID])
      {
        goto LABEL_21;
      }

      objectID3 = [v22 objectID];
      v26 = -[EDMessageCountQueryHandler _moreThan:messagesExistWithGlobalMessageID:](self, 0, [objectID3 globalMessageID]);

      if (v26)
      {
        break;
      }

LABEL_22:
      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (!v19)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }
    }

    [*(self + 56) addIndex:globalMessageID];
LABEL_21:
    ++v11;
    goto LABEL_22;
  }

LABEL_25:
}

- (id)_filterMessages:(void *)messages potentiallyMatchingMessages:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 160);
    v14 = 0;
    v7 = [v6 filterMessages:v5 unmatchedMessages:&v14];
    v8 = v14;

    v9 = *(self + 144);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__EDMessageCountQueryHandler__filterMessages_potentiallyMatchingMessages___block_invoke;
    v12[3] = &unk_1E8250858;
    v13 = v9;
    v10 = v9;
    *messages = [v8 ef_filter:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_moreThan:(uint64_t)than messagesExistWithGlobalMessageID:
{
  if (!self)
  {
    return 0;
  }

  v6 = *(self + 176);
  expandedQuery = [(EDMessageCountQueryHandler *)self expandedQuery];
  v8 = [v6 countOfMessagesWithGlobalMessageID:than matchingQuery:expandedQuery] > a2;

  return v8;
}

- (void)_processChangedMessages:(void *)messages changeKey:(void *)key generationWindow:
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a2;
  messagesCopy = messages;
  keyCopy = key;
  if (self)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v41 = threadDictionary;
    v36 = [threadDictionary objectForKeyedSubscript:messagesCopy];
    v38 = [(EDMessageCountQueryHandler *)self _originalMessagesKeyForKey:messagesCopy];
    v40 = [threadDictionary objectForKeyedSubscript:?];

    [threadDictionary setObject:0 forKeyedSubscript:messagesCopy];
    [threadDictionary setObject:0 forKeyedSubscript:v38];
    if (!v40)
    {
      goto LABEL_6;
    }

    v10 = [v40 count];
    v11 = _os_feature_enabled_impl();
    v12 = 5;
    if (v11)
    {
      v12 = 100;
    }

    if (v10 <= v12)
    {
      v14 = [*(self + 160) transformMessages:v40];
      os_unfair_lock_lock((self + 112));
      v50 = 0;
      v34 = v14;
      v15 = [(EDMessageCountQueryHandler *)self _filterMessages:v14 potentiallyMatchingMessages:&v50];
      v35 = v50;
      v16 = [v15 count];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v18)
      {
        v19 = *v47;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(self + 56);
            objectID = [*(*(&v46 + 1) + 8 * i) objectID];
            [v21 addIndex:{objc_msgSend(objectID, "globalMessageID")}];
          }

          v18 = [v17 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v18);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = v35;
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v24)
      {
        v25 = *v43;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v42 + 1) + 8 * j);
            objectID2 = [v27 objectID];
            globalMessageID = [objectID2 globalMessageID];

            if ([*(self + 56) containsIndex:globalMessageID])
            {
              objectID3 = [v27 objectID];
              v31 = -[EDMessageCountQueryHandler _moreThan:messagesExistWithGlobalMessageID:](self, 0, [objectID3 globalMessageID]);

              if (v31)
              {
                ++v16;
              }

              else
              {
                [*(self + 56) removeIndex:globalMessageID];
                [*(self + 64) removeIndex:globalMessageID];
              }
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v24);
      }

      os_unfair_lock_unlock((self + 112));
      integerValue = [v36 integerValue];
      if (v16 != integerValue)
      {
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Changed messages from %lld matches to %lld matches", integerValue, v16];
        if (v16 <= integerValue)
        {
          [(EDMessageCountQueryHandler *)self _decrementLocalCount:v33 logMessage:keyCopy generationWindow:?];
        }

        else
        {
          [(EDMessageCountQueryHandler *)self _incrementLocalCount:v33 logMessage:keyCopy generationWindow:?];
        }
      }
    }

    else
    {
LABEL_6:
      messagesCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process change. changesKey:%@", messagesCopy];
      -[EDMessageCountQueryHandler _scheduleCountCalculationWithReason:generation:](self, messagesCopy, [keyCopy latestGeneration]);
    }
  }

  else
  {
    v40 = v7;
  }
}

- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  windowCopy = window;
  if ([messagesCopy count])
  {
    if (self)
    {
      queryEvaluator = self->_queryEvaluator;
    }

    else
    {
      queryEvaluator = 0;
    }

    messagesCopy = [(EDMessageQueryEvaluator *)queryEvaluator transformMessages:messagesCopy, messagesCopy];
    v12 = 0;
    v9 = [(EDMessageCountQueryHandler *)self _filterMessages:messagesCopy potentiallyMatchingMessages:&v12];
    v10 = v12;
    if ([v9 count] || objc_msgSend(v10, "count"))
    {
      -[EDMessageCountQueryHandler _scheduleCountCalculationWithReason:generation:](self, @"Persistence did add messages", [windowCopy latestGeneration]);
    }
  }
}

- (void)persistenceWillChangeFlags:(id)flags messages:(id)messages
{
  flagsCopy = flags;
  messagesCopy = messages;
  if (![flagsCopy deletedChanged] || (objc_msgSend(flagsCopy, "deleted") & 1) == 0)
  {
    v7 = MEMORY[0x1E699ADA0];
    expandedQuery = [(EDMessageCountQueryHandler *)self expandedQuery];
    predicate = [expandedQuery predicate];
    LODWORD(v7) = [v7 predicate:predicate appliesToFlagChange:flagsCopy];

    if (v7)
    {
      if (self)
      {
        Property = objc_getProperty(self, v10, 224, 1);
      }

      else
      {
        Property = 0;
      }

      [(EDMessageCountQueryHandler *)self _prepareForChangeWithMessages:messagesCopy changeKey:Property];
    }
  }
}

- (void)persistenceDidChangeFlags:(id)flags messages:(id)messages generationWindow:(id)window
{
  flagsCopy = flags;
  messagesCopy = messages;
  windowCopy = window;
  if ([flagsCopy deletedChanged] && objc_msgSend(flagsCopy, "deleted"))
  {
    [(EDMessageCountQueryHandler *)self _persistenceDidDeleteMessages:messagesCopy includeMessagesWithDeletedFlag:1 generationWindow:windowCopy];
  }

  else
  {
    v10 = MEMORY[0x1E699ADA0];
    expandedQuery = [(EDMessageCountQueryHandler *)self expandedQuery];
    predicate = [expandedQuery predicate];
    LODWORD(v10) = [v10 predicate:predicate appliesToFlagChange:flagsCopy];

    if (v10)
    {
      if (self)
      {
        Property = objc_getProperty(self, v13, 224, 1);
      }

      else
      {
        Property = 0;
      }

      [(EDMessageCountQueryHandler *)self _processChangedMessages:messagesCopy changeKey:Property generationWindow:windowCopy];
    }
  }
}

- (void)_persistenceDidDeleteMessages:(uint64_t)messages includeMessagesWithDeletedFlag:(void *)flag generationWindow:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  flagCopy = flag;
  if (self)
  {
    v25 = [*(self + 160) transformAndFilterMessages:v7 includeDeleted:messages];
    v8 = [v7 count];
    v9 = _os_feature_enabled_impl();
    v10 = 5;
    if (v9)
    {
      v10 = 100;
    }

    if (v8 <= v10)
    {
      os_unfair_lock_lock((self + 112));
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = v25;
      v12 = 0;
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v13)
      {
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            objectID = [v16 objectID];
            globalMessageID = [objectID globalMessageID];

            objectID2 = [v16 objectID];
            LODWORD(objectID) = -[EDMessageCountQueryHandler _moreThan:messagesExistWithGlobalMessageID:](self, 0, [objectID2 globalMessageID]);

            if (objectID)
            {
              [*(self + 56) addIndex:globalMessageID];
            }

            else
            {
              if ([*(self + 64) containsIndex:globalMessageID])
              {
                [*(self + 64) removeIndex:globalMessageID];
              }

              else
              {
                ++v12;
              }

              [*(self + 56) removeIndex:globalMessageID];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v13);
      }

      os_unfair_lock_unlock((self + 112));
      if (v12)
      {
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Deleted %lld messages", v12];
        [(EDMessageCountQueryHandler *)self _decrementLocalCount:v12 logMessage:v20 generationWindow:flagCopy];
      }

      else
      {
        v20 = +[EDMessageCountQueryHandler log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(self + 136);
          label = [v21 label];
          v23 = label;
          v24 = &stru_1F45B4608;
          *buf = 134218498;
          if (label)
          {
            v24 = label;
          }

          selfCopy = self;
          v33 = 2114;
          v34 = v24;
          v35 = 2114;
          v36 = v11;
          _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "<%p: %{public}@>: Count is already 0, did not decrementLocalCount. nonmatchingMessages: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      -[EDMessageCountQueryHandler _scheduleCountCalculationWithReason:generation:](self, @"Persistence did delete messages", [flagCopy latestGeneration]);
    }
  }
}

- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window
{
  v24[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  messageCopy = message;
  windowCopy = window;
  if (([propertiesCopy containsObject:*MEMORY[0x1E699B1C8]] & 1) != 0 && objc_msgSend(messageCopy, "numberOfAttachments"))
  {
    if (self)
    {
      query = self->_query;
    }

    else
    {
      query = 0;
    }

    v12 = MEMORY[0x1E699ADA0];
    predicate = [(EMQuery *)query predicate];
    v14 = [v12 predicateFromPredicate:predicate ignoringKeyPaths:MEMORY[0x1E695E0F0]];

    v15 = MEMORY[0x1E699ADA0];
    v24[0] = *MEMORY[0x1E699A8E0];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v17 = [v15 predicateFromPredicate:v14 ignoringKeyPaths:v16];

    if ([v14 isEqual:v17])
    {
      goto LABEL_12;
    }

    os_unfair_lock_lock(&self->_seenMessageIDsLock);
    globalMessageID = [messageCopy globalMessageID];
    if (([(EFMutableInt64Set *)self->_seenMessageIDs containsIndex:globalMessageID]& 1) == 0)
    {
      queryEvaluator = self->_queryEvaluator;
      v23 = messageCopy;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      v21 = [(EDMessageQueryEvaluator *)queryEvaluator transformAndFilterMessages:v20];

      if ([v21 count])
      {
        [(EFMutableInt64Set *)self->_seenMessageIDs addIndex:globalMessageID];
        v22 = -[EDMessageCountQueryHandler _moreThan:messagesExistWithGlobalMessageID:](self, 1, [messageCopy globalMessageID]);

        os_unfair_lock_unlock(&self->_seenMessageIDsLock);
        if (!v22)
        {
          [(EDMessageCountQueryHandler *)self _incrementLocalCount:@"New match after changing number of attachments" logMessage:windowCopy generationWindow:?];
        }

        goto LABEL_12;
      }
    }

    os_unfair_lock_unlock(&self->_seenMessageIDsLock);
LABEL_12:
  }
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window
{
  v16[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  windowCopy = window;
  os_unfair_lock_lock(&self->_seenMessageIDsLock);
  if ([(EFMutableInt64Set *)self->_seenMessageIDs containsIndex:d])
  {
    [(EFMutableInt64Set *)self->_seenMessageIDs removeIndex:d];
  }

  else
  {
    queryEvaluator = self->_queryEvaluator;
    v16[0] = messageCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = [(EDMessageQueryEvaluator *)queryEvaluator transformAndFilterMessages:v12];

    LOBYTE(v12) = [v13 count] == 0;
    if (v12)
    {
      os_unfair_lock_unlock(&self->_seenMessageIDsLock);
      goto LABEL_9;
    }
  }

  globalMessageID = [messageCopy globalMessageID];
  if (([(EFMutableInt64Set *)self->_seenMessageIDs containsIndex:globalMessageID]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_seenMessageIDsLock);
LABEL_7:
    [(EDMessageCountQueryHandler *)self _decrementLocalCount:@"Changed message ID to one we've already counted" logMessage:windowCopy generationWindow:?];
    goto LABEL_9;
  }

  [(EFMutableInt64Set *)self->_seenMessageIDs addIndex:globalMessageID];
  v15 = -[EDMessageCountQueryHandler _moreThan:messagesExistWithGlobalMessageID:](self, 1, [messageCopy globalMessageID]);
  os_unfair_lock_unlock(&self->_seenMessageIDsLock);
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_9:
}

- (void)_scheduleCountForNotificationWithReason:(uint64_t)reason generation:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self && ([self[24] isCanceled] & 1) == 0)
  {
    v6 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self[17];
      label = [v7 label];
      v9 = label;
      v10 = &stru_1F45B4608;
      *buf = 134218498;
      if (label)
      {
        v10 = label;
      }

      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "<%p: %{public}@> %{public}@, refreshing query", buf, 0x20u);
    }

    v11 = self[16];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__EDMessageCountQueryHandler__scheduleCountForNotificationWithReason_generation___block_invoke;
    v12[3] = &unk_1E8251A78;
    v12[4] = self;
    v13 = v5;
    reasonCopy = reason;
    [v11 performBlock:v12];
  }
}

void __81__EDMessageCountQueryHandler__scheduleCountForNotificationWithReason_generation___block_invoke(uint64_t *a1)
{
  [(EDMessageCountQueryHandler *)a1[4] _resetExpandedQuery];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  [(EDMessageCountQueryHandler *)v2 _scheduleCountCalculationWithReason:v3 generation:v4];
}

- (uint64_t)_shouldObserveChangeVIPStatus
{
  if (!self)
  {
    return 0;
  }

  predicate = [*(self + 136) predicate];
  predicateFormat = [predicate predicateFormat];

  v3 = [MEMORY[0x1E699ADA0] predicateForIsVIP:1];
  predicateFormat2 = [v3 predicateFormat];

  v5 = [predicateFormat containsString:predicateFormat2];
  return v5;
}

- (void)persistenceDidChangeVIPStatus:(BOOL)status messages:(id)messages
{
  if ([(EDMessageCountQueryHandler *)self _shouldObserveChangeVIPStatus])
  {
    v6 = NSStringFromSelector(a2);
    [(EDMessageCountQueryHandler *)&self->super.isa _scheduleCountForNotificationWithReason:v6 generation:0];
  }
}

- (uint64_t)_shouldObserveDidUpdateReadLaterDate
{
  if (!self)
  {
    return 0;
  }

  predicate = [*(self + 136) predicate];
  if ([predicate ef_containsKeyPath:*MEMORY[0x1E699A958]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [predicate ef_containsKeyPath:*MEMORY[0x1E699A960]];
  }

  return v2;
}

- (uint64_t)_shouldObserveDidUpdateSendLaterDate
{
  if (!self)
  {
    return 0;
  }

  predicate = [*(self + 136) predicate];
  v2 = [predicate ef_containsKeyPath:*MEMORY[0x1E699A978]];

  return v2;
}

- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window
{
  windowCopy = window;
  if ([(EDMessageCountQueryHandler *)self _shouldObserveDidUpdateReadLaterDate])
  {
    v8 = NSStringFromSelector(a2);
    -[EDMessageCountQueryHandler _scheduleCountForNotificationWithReason:generation:](&self->super.isa, v8, [windowCopy latestGeneration]);
  }
}

- (void)persistenceDidUpdateSendLaterDate:(id)date messages:(id)messages generationWindow:(id)window
{
  windowCopy = window;
  if ([(EDMessageCountQueryHandler *)self _shouldObserveDidUpdateSendLaterDate])
  {
    v7 = NSStringFromSelector(a2);
    -[EDMessageCountQueryHandler _scheduleCountForNotificationWithReason:generation:](&self->super.isa, v7, [windowCopy latestGeneration]);
  }
}

- (uint64_t)_shouldObserveDidUpdateFollowUp
{
  if (!self)
  {
    return 0;
  }

  predicate = [*(self + 136) predicate];
  if ([predicate ef_containsKeyPath:*MEMORY[0x1E699A8B8]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [predicate ef_containsKeyPath:*MEMORY[0x1E699A8B0]];
  }

  return v2;
}

- (void)persistenceDidUpdateFollowUpForMessages:(id)messages generationWindow:(id)window
{
  windowCopy = window;
  if ([(EDMessageCountQueryHandler *)self _shouldObserveDidUpdateFollowUp])
  {
    v6 = NSStringFromSelector(a2);
    -[EDMessageCountQueryHandler _scheduleCountForNotificationWithReason:generation:](&self->super.isa, v6, [windowCopy latestGeneration]);
  }
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation
{
  if ([(EDMessageCountQueryHandler *)self _shouldObserveDidUpdateReadLaterDate])
  {

    [(EDMessageCountQueryHandler *)&self->super.isa _scheduleCountForNotificationWithReason:generation generation:?];
  }
}

- (uint64_t)_shouldObserveCategorization
{
  if (!self)
  {
    return 0;
  }

  predicate = [*(self + 136) predicate];
  v2 = [predicate ef_containsKeyPath:*MEMORY[0x1E699A850]];

  return v2;
}

- (void)persistenceDidChangeCategorizationForMessages:(id)messages userInitiated:(BOOL)initiated generationWindow:(id)window
{
  messagesCopy = messages;
  windowCopy = window;
  if ([(EDMessageCountQueryHandler *)self _shouldObserveCategorization])
  {
    if (self)
    {
      Property = objc_getProperty(self, v8, 232, 1);
    }

    else
    {
      Property = 0;
    }

    [(EDMessageCountQueryHandler *)self _processChangedMessages:messagesCopy changeKey:Property generationWindow:windowCopy];
  }
}

- (void)persistenceIsAddingMailboxWithDatabaseID:(int64_t)d objectID:(id)iD generationWindow:(id)window
{
  v38 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  windowCopy = window;
  if (self)
  {
    v9 = self->_serverCountMailboxScope;
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    v9 = 0;
    messagePersistence = 0;
  }

  v11 = messagePersistence;
  mailboxPersistence = [(EDMessagePersistence *)v11 mailboxPersistence];
  v13 = [(EMMailboxScope *)v9 scopeContainsMailboxObjectID:iDCopy mailboxTypeResolver:mailboxPersistence];

  if (v13)
  {
    earliestGeneration = [windowCopy earliestGeneration];
    latestGeneration = [windowCopy latestGeneration];
    v16 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        query = self->_query;
      }

      else
      {
        query = 0;
      }

      v18 = query;
      label = [(EMQuery *)v18 label];
      v20 = label;
      v21 = &stru_1F45B4608;
      *buf = 134219010;
      if (label)
      {
        v21 = label;
      }

      selfCopy = self;
      v30 = 2114;
      v31 = v21;
      v32 = 2114;
      v33 = iDCopy;
      v34 = 2048;
      v35 = earliestGeneration;
      v36 = 2048;
      v37 = latestGeneration;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_INFO, "<%p: %{public}@> Adding mailbox %{public}@ (window: %llu:%llu)", buf, 0x34u);
    }

    if (self)
    {
      scheduler = self->_scheduler;
    }

    else
    {
      scheduler = 0;
    }

    v23 = scheduler;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __97__EDMessageCountQueryHandler_persistenceIsAddingMailboxWithDatabaseID_objectID_generationWindow___block_invoke;
    v24[3] = &unk_1E8252DA0;
    v26 = latestGeneration;
    v24[4] = self;
    v25 = iDCopy;
    v27 = earliestGeneration;
    [(EFAssertableScheduler *)v23 performBlock:v24];
  }
}

void __97__EDMessageCountQueryHandler_persistenceIsAddingMailboxWithDatabaseID_objectID_generationWindow___block_invoke(uint64_t *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 24);
  if (a1[6] <= v2)
  {
    v3 = a1[7] > v2;
    osloga = +[EDMessageCountQueryHandler log];
    v4 = os_log_type_enabled(osloga, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v4)
      {
        v5 = a1[4];
        if (v5)
        {
          v6 = *(v5 + 136);
        }

        else
        {
          v6 = 0;
        }

        v7 = v6;
        v8 = [v7 label];
        v9 = v8;
        v10 = &stru_1F45B4608;
        v11 = *(a1[4] + 24);
        if (v8)
        {
          v10 = v8;
        }

        v13 = a1[6];
        v12 = a1[7];
        *buf = 134219010;
        v26 = v5;
        v27 = 2114;
        v28 = v10;
        v29 = 2048;
        v30 = v11;
        v31 = 2048;
        v32 = v12;
        v33 = 2048;
        v34 = v13;
        _os_log_impl(&dword_1C61EF000, osloga, OS_LOG_TYPE_INFO, "<%p: %{public}@> add-mailbox occured during generation window, scheduling full fetch (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }

      [(EDMessageCountQueryHandler *)a1[4] _scheduleCountCalculationWithReason:a1[6] generation:?];
    }

    else
    {
      if (v4)
      {
        v14 = a1[4];
        if (v14)
        {
          v15 = *(v14 + 136);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = [v16 label];
        v18 = v17;
        v19 = &stru_1F45B4608;
        v20 = *(a1[4] + 24);
        if (v17)
        {
          v19 = v17;
        }

        v22 = a1[6];
        v21 = a1[7];
        *buf = 134219010;
        v26 = v14;
        v27 = 2114;
        v28 = v19;
        v29 = 2048;
        v30 = v20;
        v31 = 2048;
        v32 = v21;
        v33 = 2048;
        v34 = v22;
        _os_log_impl(&dword_1C61EF000, osloga, OS_LOG_TYPE_INFO, "<%p: %{public}@> add-mailbox notification expired by new generation (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }
    }
  }

  else
  {
    oslog = objc_alloc_init(_EDMailboxServerCount);
    [*(a1[4] + 8) setObject:? forKeyedSubscript:?];
  }
}

- (void)persistenceDidUpdateServerCount:(int64_t)count forMailboxWithObjectID:(id)d generationWindow:(id)window
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  windowCopy = window;
  if (self)
  {
    v10 = self->_serverCountMailboxScope;
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    v10 = 0;
    messagePersistence = 0;
  }

  v12 = messagePersistence;
  mailboxPersistence = [(EDMessagePersistence *)v12 mailboxPersistence];
  v14 = [(EMMailboxScope *)v10 scopeContainsMailboxObjectID:dCopy mailboxTypeResolver:mailboxPersistence];

  if (v14)
  {
    earliestGeneration = [windowCopy earliestGeneration];
    latestGeneration = [windowCopy latestGeneration];
    v17 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        query = self->_query;
      }

      else
      {
        query = 0;
      }

      v19 = query;
      label = [(EMQuery *)v19 label];
      ef_publicDescription = [dCopy ef_publicDescription];
      v22 = ef_publicDescription;
      v23 = &stru_1F45B4608;
      *buf = 134219266;
      if (label)
      {
        v23 = label;
      }

      selfCopy = self;
      v33 = 2114;
      v34 = v23;
      v35 = 2048;
      countCopy = count;
      v37 = 2114;
      v38 = ef_publicDescription;
      v39 = 2048;
      v40 = earliestGeneration;
      v41 = 2048;
      v42 = latestGeneration;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_INFO, "<%p: %{public}@> server-count set %lld for %{public}@ (window: %llu:%llu)", buf, 0x3Eu);
    }

    if (self)
    {
      scheduler = self->_scheduler;
    }

    else
    {
      scheduler = 0;
    }

    v25 = scheduler;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __102__EDMessageCountQueryHandler_persistenceDidUpdateServerCount_forMailboxWithObjectID_generationWindow___block_invoke;
    v26[3] = &unk_1E8254388;
    v28 = latestGeneration;
    v26[4] = self;
    v27 = dCopy;
    countCopy2 = count;
    v30 = earliestGeneration;
    [(EFAssertableScheduler *)v25 performBlock:v26];
  }
}

void __102__EDMessageCountQueryHandler_persistenceDidUpdateServerCount_forMailboxWithObjectID_generationWindow___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (*(a1 + 48) <= v3)
  {
    v9 = *(a1 + 64) > v3;
    loga = +[EDMessageCountQueryHandler log];
    v10 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = *(v11 + 136);
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [v13 label];
        v15 = v14;
        v16 = &stru_1F45B4608;
        v17 = *(*(a1 + 32) + 24);
        if (v14)
        {
          v16 = v14;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *buf = 134219010;
        v32 = v11;
        v33 = 2114;
        v34 = v16;
        v35 = 2048;
        v36 = v17;
        v37 = 2048;
        v38 = v18;
        v39 = 2048;
        v40 = v19;
        _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_INFO, "<%p: %{public}@> server-count occured during generation window, scheduling full fetch (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }

      [(EDMessageCountQueryHandler *)*(a1 + 32) _scheduleCountCalculationWithReason:*(a1 + 48) generation:?];
    }

    else
    {
      if (v10)
      {
        v20 = *(a1 + 32);
        if (v20)
        {
          v21 = *(v20 + 136);
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        v23 = [v22 label];
        v24 = v23;
        v25 = &stru_1F45B4608;
        v26 = *(*(a1 + 32) + 24);
        if (v23)
        {
          v25 = v23;
        }

        v27 = *(a1 + 64);
        v28 = *(a1 + 48);
        *buf = 134219010;
        v32 = v20;
        v33 = 2114;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        v37 = 2048;
        v38 = v27;
        v39 = 2048;
        v40 = v28;
        _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_INFO, "<%p: %{public}@> server-count notification expired by new generation (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }
    }
  }

  else
  {
    v4 = [*(v2 + 8) objectForKeyedSubscript:*(a1 + 40)];
    if (v4)
    {
      *(v4 + 8) = *(a1 + 56);
    }

    log = v4;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) ef_publicDescription];
    v8 = [v5 initWithFormat:@"server-count set to %lld for %@", v6, v7];

    [(EDMessageCountQueryHandler *)*(a1 + 32) _notifyObserverWithLogMessage:v8];
  }
}

- (void)persistenceDidUpdateMostRecentStatusCount:(int64_t)count forMailboxWithObjectID:(id)d generationWindow:(id)window
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  windowCopy = window;
  if (self)
  {
    v10 = self->_serverCountMailboxScope;
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    v10 = 0;
    messagePersistence = 0;
  }

  v12 = messagePersistence;
  mailboxPersistence = [(EDMessagePersistence *)v12 mailboxPersistence];
  v14 = [(EMMailboxScope *)v10 scopeContainsMailboxObjectID:dCopy mailboxTypeResolver:mailboxPersistence];

  if (v14)
  {
    earliestGeneration = [windowCopy earliestGeneration];
    latestGeneration = [windowCopy latestGeneration];
    v17 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        query = self->_query;
      }

      else
      {
        query = 0;
      }

      v19 = query;
      label = [(EMQuery *)v19 label];
      ef_publicDescription = [dCopy ef_publicDescription];
      v22 = ef_publicDescription;
      v23 = &stru_1F45B4608;
      *buf = 134219266;
      if (label)
      {
        v23 = label;
      }

      selfCopy = self;
      v33 = 2114;
      v34 = v23;
      v35 = 2048;
      countCopy = count;
      v37 = 2114;
      v38 = ef_publicDescription;
      v39 = 2048;
      v40 = earliestGeneration;
      v41 = 2048;
      v42 = latestGeneration;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_INFO, "<%p: %{public}@> most-recent-status-count set %lld for %{public}@ (window: %llu:%llu)", buf, 0x3Eu);
    }

    if (self)
    {
      scheduler = self->_scheduler;
    }

    else
    {
      scheduler = 0;
    }

    v25 = scheduler;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __112__EDMessageCountQueryHandler_persistenceDidUpdateMostRecentStatusCount_forMailboxWithObjectID_generationWindow___block_invoke;
    v26[3] = &unk_1E8254388;
    v28 = latestGeneration;
    v26[4] = self;
    v27 = dCopy;
    countCopy2 = count;
    v30 = earliestGeneration;
    [(EFAssertableScheduler *)v25 performBlock:v26];
  }
}

void __112__EDMessageCountQueryHandler_persistenceDidUpdateMostRecentStatusCount_forMailboxWithObjectID_generationWindow___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (*(a1 + 48) <= v3)
  {
    v9 = *(a1 + 64) > v3;
    loga = +[EDMessageCountQueryHandler log];
    v10 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = *(v11 + 136);
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [v13 label];
        v15 = v14;
        v16 = &stru_1F45B4608;
        v17 = *(*(a1 + 32) + 24);
        if (v14)
        {
          v16 = v14;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *buf = 134219010;
        v32 = v11;
        v33 = 2114;
        v34 = v16;
        v35 = 2048;
        v36 = v17;
        v37 = 2048;
        v38 = v18;
        v39 = 2048;
        v40 = v19;
        _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_INFO, "<%p: %{public}@> most-recent-status-count occured during generation window, scheduling full fetch (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }

      [(EDMessageCountQueryHandler *)*(a1 + 32) _scheduleCountCalculationWithReason:*(a1 + 48) generation:?];
    }

    else
    {
      if (v10)
      {
        v20 = *(a1 + 32);
        if (v20)
        {
          v21 = *(v20 + 136);
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        v23 = [v22 label];
        v24 = v23;
        v25 = &stru_1F45B4608;
        v26 = *(*(a1 + 32) + 24);
        if (v23)
        {
          v25 = v23;
        }

        v27 = *(a1 + 64);
        v28 = *(a1 + 48);
        *buf = 134219010;
        v32 = v20;
        v33 = 2114;
        v34 = v25;
        v35 = 2048;
        v36 = v26;
        v37 = 2048;
        v38 = v27;
        v39 = 2048;
        v40 = v28;
        _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_INFO, "<%p: %{public}@> most-recent-status-count notification expired by new generation (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }
    }
  }

  else
  {
    v4 = [*(v2 + 8) objectForKeyedSubscript:*(a1 + 40)];
    if (v4)
    {
      *(v4 + 16) = *(a1 + 56);
    }

    log = v4;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) ef_publicDescription];
    v8 = [v5 initWithFormat:@"most-recent-status-count set to %lld for %@", v6, v7];

    [(EDMessageCountQueryHandler *)*(a1 + 32) _notifyObserverWithLogMessage:v8];
  }
}

- (void)persistenceDidUpdateLastSyncAndMostRecentStatusCount:(int64_t)count forMailboxWithObjectID:(id)d generationWindow:(id)window
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  windowCopy = window;
  if (self)
  {
    v10 = self->_serverCountMailboxScope;
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    v10 = 0;
    messagePersistence = 0;
  }

  v12 = messagePersistence;
  mailboxPersistence = [(EDMessagePersistence *)v12 mailboxPersistence];
  v14 = [(EMMailboxScope *)v10 scopeContainsMailboxObjectID:dCopy mailboxTypeResolver:mailboxPersistence];

  if (v14)
  {
    earliestGeneration = [windowCopy earliestGeneration];
    latestGeneration = [windowCopy latestGeneration];
    v17 = +[EDMessageCountQueryHandler log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (self)
      {
        query = self->_query;
      }

      else
      {
        query = 0;
      }

      v19 = query;
      label = [(EMQuery *)v19 label];
      ef_publicDescription = [dCopy ef_publicDescription];
      v22 = ef_publicDescription;
      v23 = &stru_1F45B4608;
      *buf = 134219266;
      if (label)
      {
        v23 = label;
      }

      selfCopy = self;
      v33 = 2114;
      v34 = v23;
      v35 = 2048;
      countCopy = count;
      v37 = 2114;
      v38 = ef_publicDescription;
      v39 = 2048;
      v40 = earliestGeneration;
      v41 = 2048;
      v42 = latestGeneration;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_INFO, "<%p: %{public}@> last-sync + most-recent-status-count set %lld for %{public}@ (window: %llu:%llu)", buf, 0x3Eu);
    }

    if (self)
    {
      scheduler = self->_scheduler;
    }

    else
    {
      scheduler = 0;
    }

    v25 = scheduler;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __123__EDMessageCountQueryHandler_persistenceDidUpdateLastSyncAndMostRecentStatusCount_forMailboxWithObjectID_generationWindow___block_invoke;
    v26[3] = &unk_1E8254388;
    v28 = latestGeneration;
    v26[4] = self;
    v27 = dCopy;
    countCopy2 = count;
    v30 = earliestGeneration;
    [(EFAssertableScheduler *)v25 performBlock:v26];
  }
}

void __123__EDMessageCountQueryHandler_persistenceDidUpdateLastSyncAndMostRecentStatusCount_forMailboxWithObjectID_generationWindow___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (*(a1 + 48) <= v3)
  {
    v10 = *(a1 + 64) > v3;
    loga = +[EDMessageCountQueryHandler log];
    v11 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        if (v12)
        {
          v13 = *(v12 + 136);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 label];
        v16 = v15;
        v17 = &stru_1F45B4608;
        v18 = *(*(a1 + 32) + 24);
        if (v15)
        {
          v17 = v15;
        }

        v19 = *(a1 + 64);
        v20 = *(a1 + 48);
        *buf = 134219010;
        v33 = v12;
        v34 = 2114;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        v38 = 2048;
        v39 = v19;
        v40 = 2048;
        v41 = v20;
        _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_INFO, "<%p: %{public}@> last-sync and most-recent-status-count occured during generation window, scheduling full fetch (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }

      [(EDMessageCountQueryHandler *)*(a1 + 32) _scheduleCountCalculationWithReason:*(a1 + 48) generation:?];
    }

    else
    {
      if (v11)
      {
        v21 = *(a1 + 32);
        if (v21)
        {
          v22 = *(v21 + 136);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v24 = [v23 label];
        v25 = v24;
        v26 = &stru_1F45B4608;
        v27 = *(*(a1 + 32) + 24);
        if (v24)
        {
          v26 = v24;
        }

        v28 = *(a1 + 64);
        v29 = *(a1 + 48);
        *buf = 134219010;
        v33 = v21;
        v34 = 2114;
        v35 = v26;
        v36 = 2048;
        v37 = v27;
        v38 = 2048;
        v39 = v28;
        v40 = 2048;
        v41 = v29;
        _os_log_impl(&dword_1C61EF000, loga, OS_LOG_TYPE_INFO, "<%p: %{public}@> last-sync and most-recent-status-count notification expired by new generation (ours: %llu, window: %llu:%llu)", buf, 0x34u);
      }
    }
  }

  else
  {
    v4 = [*(v2 + 8) objectForKeyedSubscript:*(a1 + 40)];
    if (v4)
    {
      v5 = *(a1 + 56);
      *(v4 + 16) = v5;
      *(v4 + 24) = v5;
    }

    log = v4;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 56);
    v8 = [*(a1 + 40) ef_publicDescription];
    v9 = [v6 initWithFormat:@"last-sync and most-recent-status-count to %lld for %@", v7, v8];

    [(EDMessageCountQueryHandler *)*(a1 + 32) _notifyObserverWithLogMessage:v9];
  }
}

- (id)itemsForStateCaptureWithErrorString:(id *)string
{
  if (self)
  {
    v4 = self->_messagePersistence;
    query = self->_query;
  }

  else
  {
    v4 = 0;
    query = 0;
  }

  v6 = [(EDMessagePersistence *)v4 messagesMatchingQuery:query limit:20];

  return v6;
}

- (id)descriptionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    objectID = [v4 objectID];
    flags = [v4 flags];
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    globalMessageID = [objectID globalMessageID];
    read = [flags read];
    flagged = [flags flagged];
    v11 = @"unread";
    if (read)
    {
      v11 = @"read";
    }

    v12 = @"not flagged";
    if (flagged)
    {
      v12 = @"flagged";
    }

    v13 = [v7 initWithFormat:@"GlobalMessageID:%lld - %@, %@", globalMessageID, v11, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __60__EDMessageCountQueryHandler__notifyObserverWithLogMessage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    OUTLINED_FUNCTION_1_6(v4[1]);
    v6 = v4[2];
    v5 = v4[3];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v6 != *MEMORY[0x1E699A770] && v5 != *MEMORY[0x1E699A770])
  {
    *(*(*(a1 + 40) + 8) + 24) += v6;
    OUTLINED_FUNCTION_1_6(v5);
  }
}

- (id)labelForStateCapture
{
  if (self)
  {
    self = self->_query;
  }

  label = [(EDMessageCountQueryHandler *)self label];

  return label;
}

- (void)_notifyObserverWithLogMessage:(const void *)a3 .cold.1(const void *a1, const void *a2, const void *a3)
{
  _Block_object_dispose(a1, 8);
  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
}

@end