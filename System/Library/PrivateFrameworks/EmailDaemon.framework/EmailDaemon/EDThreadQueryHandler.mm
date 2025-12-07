@interface EDThreadQueryHandler
+ (OS_os_log)log;
- (BOOL)start;
- (EDThreadQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence threadPersistence:(id)threadPersistence hookRegistry:(id)registry vipManager:(id)manager searchProvider:(id)provider remindMeNotificationController:(id)controller observer:(id)self0 observationIdentifier:(id)self1 delegate:(id)self2 observationResumer:(id)self3 threadMigratorManager:(id)self4;
- (EDThreadQueryHandlerDelegate)delegate;
- (id)_addSnippetHintsToExtraInfo:(id)info;
- (id)inMemoryMessageObjectIDsForThread:(id)thread;
- (id)messageListItemForObjectID:(id)d isPersisted:(BOOL *)persisted error:(id *)error;
- (id)messagesInConversationIDs:(id)ds limit:(int64_t)limit;
- (id)threadReconciliationQueries;
- (void)_createUnderlyingHandlerIfNeededAndStart;
- (void)_tearDownWithQueryHandlerBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)observer:(id)observer matchedChangesForObjectIDs:(id)ds;
- (void)observer:(id)observer matchedDeletedObjectIDs:(id)ds;
- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info;
- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info;
- (void)observer:(id)observer matchedOldestItemsUpdatedForMailboxes:(id)mailboxes;
- (void)observer:(id)observer replacedExistingObjectID:(id)d withNewObjectID:(id)iD;
- (void)observer:(id)observer wasUpdated:(id)updated;
- (void)observerDidFailInitialLoad:(id)load extraInfo:(id)info;
- (void)observerDidFinishInitialLoad:(id)load extraInfo:(id)info;
- (void)observerDidFinishRemoteSearch:(id)search;
- (void)observerWillRestart:(id)restart;
- (void)persistenceDidResetThreadScope:(id)scope;
- (void)requestSummaryForMessageObjectID:(id)d;
- (void)start;
- (void)test_tearDown;
- (void)threadMigratorDidComplete:(id)complete;
@end

@implementation EDThreadQueryHandler

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_2;
  aBlock[3] = &unk_1E8258C60;
  v104 = v3;
  v115 = v104;
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v117 = *(a1 + 48);
  v116 = v5;
  v106 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) threadPersistence];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_3;
  v109[3] = &unk_1E8258C88;
  v7 = v104;
  v8 = *(a1 + 32);
  v113 = *(a1 + 56);
  v110 = v7;
  v111 = v8;
  v107 = v6;
  v112 = v107;
  v105 = _Block_copy(v109);
  v108 = 0;
  v9 = [*(a1 + 32) query];
  v10 = [v9 queryOptions];

  v11 = 0;
  if ((v10 & 0x4022) != 0 || !v107)
  {
    goto LABEL_14;
  }

  v12 = [*v4 query];
  v13 = [v12 targetClassOptions];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
  v15 = [EDPrecomputedThreadQueryHandler sortKeysForSectionPredicates:v14];

  v16 = [*v4 query];
  v17 = [v16 sortDescriptors];
  v18 = [v107 sortKeysForSortDescriptors:v17];

  if (v15)
  {
    v11 = [v15 mutableCopy];
    [v11 addObjectsFromArray:v18];
  }

  else
  {
    v11 = v18;
  }

  v19 = [*v4 query];
  v20 = [v19 queryOptions];

  v21 = [*v4 threadScope];
  LODWORD(v19) = [v107 canUsePrecomputedThreadsForThreadScope:v21 andSortKeys:v11 wantsPrecomputed:(v20 >> 12) & 1 threadScopeNeedsMigration:&v108];

  if (v19)
  {
    if (v108 == 1)
    {
      v22 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *v4;
        buf = 134217984;
        v119 = v23;
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "%p: thread scope state: perform migration", &buf, 0xCu);
      }

      v106[2](v106, 1);
      v24 = *(*v4 + 2);
      v25 = [*v4 threadScope];
      v26 = [v24 findThreadMigratorWithThreadScope:v25 inMemoryThreadQueryHandler:0];
      v27 = a1 + 72;
      v28 = *(*(a1 + 72) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v26;

      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v30 = +[EDThreadQueryHandler log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_2((a1 + 32), a1 + 72, v30);
        }

        [*(*(*v27 + 8) + 40) startObservingWithObserver:*v4];
      }

      else
      {
        v90 = [EDThreadMigrator alloc];
        v91 = [*v4 threadScope];
        v92 = [(EDThreadMigrator *)v90 initWithThreadScope:v91 threadPersistence:v107 queryHandler:*(*(*(a1 + 48) + 8) + 40)];
        v93 = *(*v27 + 8);
        v94 = *(v93 + 40);
        *(v93 + 40) = v92;

        [*(*(*v27 + 8) + 40) startObservingWithObserver:*v4];
        v95 = +[EDThreadQueryHandler log];
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
        {
          v101 = *(a1 + 32);
          v102 = *(*(*(a1 + 72) + 8) + 40);
          v103 = *(*(*(a1 + 48) + 8) + 40);
          buf = 134218496;
          v119 = v101;
          v120 = 2048;
          v121 = v102;
          v122 = 2048;
          v123 = v103;
          _os_log_debug_impl(&dword_1C61EF000, v95, OS_LOG_TYPE_DEBUG, "%p: Created new migrator %p, handler %p and adding them to EDThreadMigratorManager", &buf, 0x20u);
        }

        v96 = *(a1 + 32);
        v97 = v96[2];
        v98 = *(*(*(a1 + 72) + 8) + 40);
        v99 = *(*(*(a1 + 48) + 8) + 40);
        v100 = [v96 threadScope];
        [v97 addThreadMigrator:v98 inMemoryThreadQueryHandler:v99 withThreadScope:v100];
      }
    }

    else
    {
      v88 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v89 = *v4;
        buf = 134217984;
        v119 = v89;
        _os_log_impl(&dword_1C61EF000, v88, OS_LOG_TYPE_DEFAULT, "%p: thread scope state: use pre-computed", &buf, 0xCu);
      }

      v105[2](v105, v11);
    }
  }

  else
  {
LABEL_14:
    v31 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_1((a1 + 32), v31, v32, v33, v34, v35, v36, v37);
    }

    v106[2](v106, 0);
  }

  v38 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *v4;
    v40 = [*v4 query];
    v41 = [*v4 observationIdentifier];
    buf = 134218498;
    v119 = v39;
    v120 = 2114;
    v121 = v40;
    v122 = 2114;
    v123 = v41;
    _os_log_impl(&dword_1C61EF000, v38, OS_LOG_TYPE_DEFAULT, "%p: Creating implementations for thread query handler; query: {%{public}@}, observation identifier: {%{public}@}", &buf, 0x20u);
  }

  v42 = *(*(*(a1 + 48) + 8) + 40);
  v43 = [v7 inMemoryQueryHandler];
  LOBYTE(v42) = v42 == v43;

  if (v42)
  {
    v52 = [v7 inMemoryQueryHandler];

    if (v52)
    {
      v53 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *v4;
        v55 = [v7 inMemoryQueryHandler];
        buf = 134218240;
        v119 = v54;
        v120 = 2048;
        v121 = v55;
        _os_log_impl(&dword_1C61EF000, v53, OS_LOG_TYPE_DEFAULT, "%p Keeping existing in-memory query handler %p", &buf, 0x16u);
      }
    }
  }

  else
  {
    v44 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *v4;
      v46 = [v7 inMemoryQueryHandler];
      v47 = *(*(*(a1 + 48) + 8) + 40);
      buf = 134218496;
      v119 = v45;
      v120 = 2048;
      v121 = v46;
      v122 = 2048;
      v123 = v47;
      _os_log_impl(&dword_1C61EF000, v44, OS_LOG_TYPE_DEFAULT, "%p: Replacing in-memory query handler %p -> %p", &buf, 0x20u);
    }

    v48 = [v7 inMemoryQueryHandler];

    if (v48)
    {
      v49 = [v7 inMemoryQueryHandler];
      v50 = *(*(a1 + 80) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;
    }

    [v7 setInMemoryQueryHandler:*(*(*(a1 + 48) + 8) + 40)];
    [v7 setInMemoryObservationID:*(*(*(a1 + 40) + 8) + 40)];
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  v56 = *(*(*(a1 + 64) + 8) + 40);
  v57 = [v7 precomputedQueryHandler];
  LOBYTE(v56) = v56 == v57;

  if (v56)
  {
    v66 = [v7 precomputedQueryHandler];

    if (v66)
    {
      v67 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = *v4;
        v69 = [v7 precomputedQueryHandler];
        buf = 134218240;
        v119 = v68;
        v120 = 2048;
        v121 = v69;
        _os_log_impl(&dword_1C61EF000, v67, OS_LOG_TYPE_DEFAULT, "%p: Keeping existing pre-computed query handler %p", &buf, 0x16u);
      }
    }
  }

  else
  {
    v58 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *v4;
      v60 = [v7 precomputedQueryHandler];
      v61 = *(*(*(a1 + 64) + 8) + 40);
      buf = 134218496;
      v119 = v59;
      v120 = 2048;
      v121 = v60;
      v122 = 2048;
      v123 = v61;
      _os_log_impl(&dword_1C61EF000, v58, OS_LOG_TYPE_DEFAULT, "%p: Replacing pre-computed query handler %p -> %p", &buf, 0x20u);
    }

    v62 = [v7 precomputedQueryHandler];

    if (v62)
    {
      v63 = [v7 precomputedQueryHandler];
      v64 = *(*(a1 + 96) + 8);
      v65 = *(v64 + 40);
      *(v64 + 40) = v63;
    }

    [v7 setPrecomputedQueryHandler:*(*(*(a1 + 64) + 8) + 40)];
    [v7 setPrecomputedObservationID:*(*(*(a1 + 56) + 8) + 40)];
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v70 = [v7 threadMigrator];

    if (v70)
    {
      v71 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *v4;
        v73 = [v7 threadMigrator];
        v74 = *(*(*(a1 + 72) + 8) + 40);
        buf = 134218496;
        v119 = v72;
        v120 = 2048;
        v121 = v73;
        v122 = 2048;
        v123 = v74;
        _os_log_impl(&dword_1C61EF000, v71, OS_LOG_TYPE_DEFAULT, "%p: Replacing thread migrator %p -> %p", &buf, 0x20u);
      }

      v75 = [v7 threadMigrator];
      v76 = *(*(a1 + 104) + 8);
      v77 = *(v76 + 40);
      *(v76 + 40) = v75;
    }

    else
    {
      v77 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v86 = *(a1 + 32);
        v87 = *(*(*(a1 + 72) + 8) + 40);
        buf = 134218240;
        v119 = v86;
        v120 = 2048;
        v121 = v87;
        _os_log_impl(&dword_1C61EF000, v77, OS_LOG_TYPE_DEFAULT, "%p: Creating new thread migrator %p", &buf, 0x16u);
      }
    }

    v85 = *(*(*(a1 + 72) + 8) + 40);
LABEL_51:
    [v7 setThreadMigrator:v85];
    goto LABEL_52;
  }

  v78 = [v7 threadMigrator];

  if (v78)
  {
    v79 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = *v4;
      v81 = [v7 threadMigrator];
      buf = 134218240;
      v119 = v80;
      v120 = 2048;
      v121 = v81;
      _os_log_impl(&dword_1C61EF000, v79, OS_LOG_TYPE_DEFAULT, "%p: Removing thread migrator %p", &buf, 0x16u);
    }

    v82 = [v7 threadMigrator];
    v83 = *(*(a1 + 104) + 8);
    v84 = *(v83 + 40);
    *(v83 + 40) = v82;

    v85 = 0;
    goto LABEL_51;
  }

LABEL_52:
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_3(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [*(a1 + 32) precomputedQueryHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) precomputedObservationID];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [*(a1 + 32) precomputedQueryHandler];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E699AE08]) initAsEphemeralID:1];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [EDPrecomputedThreadQueryHandler alloc];
    v9 = [*(a1 + 40) query];
    v24 = [*(a1 + 40) threadScope];
    v14 = [*(a1 + 40) messagePersistence];
    v15 = *(a1 + 48);
    v16 = [*(a1 + 40) hookRegistry];
    v17 = [*(a1 + 40) remindMeNotificationController];
    v18 = *(a1 + 40);
    v19 = *(*(*(a1 + 56) + 8) + 40);
    v20 = [v18 observerResumer];
    v21 = [(EDPrecomputedThreadQueryHandler *)v13 initWithQuery:v9 threadScope:v24 sortKeys:v25 messagePersistence:v14 threadPersistence:v15 hookRegistry:v16 remindMeNotificationController:v17 observer:v18 observationIdentifier:v19 observationResumer:v20];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }
}

- (BOOL)start
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    threadScope = [(EDThreadQueryHandler *)self threadScope];
    [(EDThreadQueryHandler *)self start];
  }

  v5 = 0;
  atomic_compare_exchange_strong(&self->_state, &v5, 1u);
  v6 = v5 == 0;
  if (!v5)
  {
    hookRegistry = [(EDThreadQueryHandler *)self hookRegistry];
    [hookRegistry registerThreadChangeHookResponder:self];

    [(EDThreadQueryHandler *)self _createUnderlyingHandlerIfNeededAndStart];
  }

  return v6;
}

- (void)_createUnderlyingHandlerIfNeededAndStart
{
  v73 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__49;
  v63 = __Block_byref_object_dispose__49;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__49;
  v57 = __Block_byref_object_dispose__49;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__49;
  v51 = __Block_byref_object_dispose__49;
  v52 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__49;
  v45[4] = __Block_byref_object_dispose__49;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__49;
  v43[4] = __Block_byref_object_dispose__49;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__49;
  v41 = __Block_byref_object_dispose__49;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__49;
  v35 = __Block_byref_object_dispose__49;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__49;
  v29 = __Block_byref_object_dispose__49;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke;
  v20[3] = &unk_1E8258CB0;
  v20[4] = self;
  v20[5] = v45;
  v20[6] = &v59;
  v20[7] = v43;
  v20[8] = &v53;
  v20[9] = &v47;
  v20[10] = &v37;
  v20[11] = &v21;
  v20[12] = &v31;
  v20[13] = &v25;
  [underlyingHandler performWhileLocked:v20];

  selfCopy = self;
  if (*(v22 + 24) == 1 && (atomic_exchange(&self->_isRunning._Value, 1u) & 1) != 0)
  {
    v5 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "%p: Notifying observer about restart.", buf, 0xCu);
    }

    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observerWillRestart:observationIdentifier];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  [v32[5] tearDown];
  if (!v26[5])
  {
    [v38[5] tearDown];
  }

  start = [v60[5] start];
  start2 = [v54[5] start];
  if (v8)
  {
    v11 = start2;
    if ((start | start2))
    {
      v12 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v60[5];
        v14 = v54[5];
        *buf = 134219008;
        selfCopy2 = selfCopy;
        v67 = 2048;
        v68 = v13;
        v69 = 1024;
        *v70 = start;
        *&v70[4] = 2048;
        *&v70[6] = v14;
        v71 = 1024;
        v72 = v11;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p: didRestartObservers - didStart inMemoryQueryHandler(%p):%{BOOL}d precomputedQueryHandler(%p):%{BOOL}d", buf, 0x2Cu);
      }
    }

    else
    {
      v12 = +[EDThreadQueryHandler log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v18 = v60[5];
        v19 = v54[5];
        *buf = 134219008;
        selfCopy2 = selfCopy;
        v67 = 2048;
        v68 = v18;
        v69 = 1024;
        *v70 = 0;
        *&v70[4] = 2048;
        *&v70[6] = v19;
        v71 = 1024;
        v72 = 0;
        _os_log_fault_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_FAULT, "%p: called didRestartObservers but neither handler started - inMemoryQueryHandler(%p):%{BOOL}d precomputedQueryHandler(%p):%{BOOL}d", buf, 0x2Cu);
      }
    }
  }

  if (v48[5])
  {
    v15 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v48[5];
      v17 = v60[5];
      *buf = 134218496;
      selfCopy2 = selfCopy;
      v67 = 2048;
      v68 = v16;
      v69 = 2048;
      *v70 = v17;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "%p: Migrator %p will be started by in-memory query handler %p.", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDThreadQueryHandler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_103 != -1)
  {
    dispatch_once(&log_onceToken_103, block);
  }

  v2 = log_log_103;

  return v2;
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 || ([*(a1 + 32) inMemoryQueryHandler], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    v3 = [objc_alloc(MEMORY[0x1E699AE08]) initAsEphemeralID:1];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [EDInMemoryThreadQueryHandler alloc];
    v24 = [*(a1 + 40) query];
    v7 = [*(a1 + 40) messagePersistence];
    v8 = [*(a1 + 40) hookRegistry];
    v9 = [*(a1 + 40) remindMeNotificationController];
    v10 = [*(a1 + 40) vipManager];
    v11 = [*(a1 + 40) searchProvider];
    v12 = *(a1 + 40);
    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = [v12 observerResumer];
    v15 = [(EDInMemoryThreadQueryHandler *)v6 initWithQuery:v24 messagePersistence:v7 hookRegistry:v8 remindMeNotificationController:v9 vipManager:v10 searchProvider:v11 observer:v12 observationIdentifier:v13 observationResumer:v14];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    v19 = [*(a1 + 32) inMemoryObservationID];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = [*(a1 + 32) inMemoryQueryHandler];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

- (void)cancel
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: Canceling EDThreadQueryHandler", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)dealloc
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: EDThreadQueryHandler deallocating", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __27__EDThreadQueryHandler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_103;
  log_log_103 = v1;
}

- (EDThreadQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence threadPersistence:(id)threadPersistence hookRegistry:(id)registry vipManager:(id)manager searchProvider:(id)provider remindMeNotificationController:(id)controller observer:(id)self0 observationIdentifier:(id)self1 delegate:(id)self2 observationResumer:(id)self3 threadMigratorManager:(id)self4
{
  queryCopy = query;
  persistenceCopy = persistence;
  persistenceCopy2 = persistence;
  threadPersistenceCopy = threadPersistence;
  threadPersistenceCopy2 = threadPersistence;
  registryCopy = registry;
  registryCopy2 = registry;
  managerCopy = manager;
  providerCopy = provider;
  controllerCopy = controller;
  observerCopy = observer;
  identifierCopy = identifier;
  delegateCopy = delegate;
  resumerCopy = resumer;
  migratorManagerCopy = migratorManager;
  v55.receiver = self;
  v55.super_class = EDThreadQueryHandler;
  v19 = [(EDThreadQueryHandler *)&v55 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_query, query);
    v21 = MEMORY[0x1E699ADA0];
    predicate = [queryCopy predicate];
    mailboxPersistence = [persistenceCopy2 mailboxPersistence];
    v24 = [v21 threadScopeForPredicate:predicate withMailboxTypeResolver:mailboxPersistence];
    threadScope = v20->_threadScope;
    v20->_threadScope = v24;

    objc_storeStrong(&v20->_messagePersistence, persistenceCopy);
    objc_storeStrong(&v20->_threadPersistence, threadPersistenceCopy);
    objc_storeStrong(&v20->_hookRegistry, registryCopy);
    objc_storeStrong(&v20->_vipManager, manager);
    objc_storeStrong(&v20->_searchProvider, provider);
    objc_storeStrong(&v20->_remindMeNotificationController, controller);
    objc_storeStrong(&v20->_resultsObserver, observer);
    objc_storeStrong(&v20->_observationIdentifier, identifier);
    v26 = objc_alloc(MEMORY[0x1E699B7F0]);
    v27 = objc_alloc_init(_EDThreadQueryUnderlyingHandlers);
    v28 = [v26 initWithObject:v27];
    underlyingHandler = v20->_underlyingHandler;
    v20->_underlyingHandler = v28;

    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_observerResumer, resumer);
    objc_storeStrong(&v20->_threadMigratorManager, migratorManager);
    v30 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [EDThreadQueryHandler initWithQuery:v20 messagePersistence:v30 threadPersistence:v31 hookRegistry:v32 vipManager:v33 searchProvider:v34 remindMeNotificationController:v35 observer:v36 observationIdentifier:? delegate:? observationResumer:? threadMigratorManager:?];
    }
  }

  return v20;
}

- (void)_tearDownWithQueryHandlerBlock:(id)block
{
  blockCopy = block;
  if (atomic_exchange(&self->_state, 2u) != 2)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__49;
    v24 = __Block_byref_object_dispose__49;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__49;
    v18 = __Block_byref_object_dispose__49;
    v19 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__49;
    v12 = __Block_byref_object_dispose__49;
    v13 = 0;
    underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__EDThreadQueryHandler__tearDownWithQueryHandlerBlock___block_invoke;
    v7[3] = &unk_1E8258CD8;
    v7[4] = &v20;
    v7[5] = &v14;
    v7[6] = &v8;
    [underlyingHandler performWhileLocked:v7];

    v6 = v9[5];
    if (v6)
    {
      [v6 stopObservingWithObserver:self];
    }

    else
    {
      blockCopy[2](blockCopy, v21[5]);
    }

    blockCopy[2](blockCopy, v15[5]);
    _Block_object_dispose(&v8, 8);

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }
}

void __55__EDThreadQueryHandler__tearDownWithQueryHandlerBlock___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 inMemoryQueryHandler];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v12 precomputedQueryHandler];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v12 threadMigrator];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  [v12 setInMemoryQueryHandler:0];
  [v12 setPrecomputedQueryHandler:0];
  [v12 setThreadMigrator:0];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDThreadQueryHandler.m" lineNumber:339 description:{@"%s can only be called from unit tests", "-[EDThreadQueryHandler test_tearDown]"}];
  }

  [(EDThreadQueryHandler *)self _tearDownWithQueryHandlerBlock:&__block_literal_global_94];
}

- (void)requestSummaryForMessageObjectID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__49;
  v11 = __Block_byref_object_dispose__49;
  v12 = 0;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__EDThreadQueryHandler_requestSummaryForMessageObjectID___block_invoke;
  v6[3] = &unk_1E8258D20;
  v6[4] = &v13;
  v6[5] = &v7;
  [underlyingHandler performWhileLocked:v6];

  [v14[5] requestSummaryForMessageObjectID:dCopy];
  [v8[5] requestSummaryForMessageObjectID:dCopy];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __57__EDThreadQueryHandler_requestSummaryForMessageObjectID___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 inMemoryQueryHandler];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v9 precomputedQueryHandler];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)messageListItemForObjectID:(id)d isPersisted:(BOOL *)persisted error:(id *)error
{
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDThreadQueryHandler.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"[objectID isKindOfClass:[EMThreadObjectID class]]"}];
  }

  EFContentProtectionValidateObservedStateIsUnlocked();
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__49;
  v34 = __Block_byref_object_dispose__49;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__49;
  v28 = __Block_byref_object_dispose__49;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__49;
  v22 = __Block_byref_object_dispose__49;
  v23 = 0;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__EDThreadQueryHandler_messageListItemForObjectID_isPersisted_error___block_invoke;
  v17[3] = &unk_1E8258CD8;
  v17[4] = &v30;
  v17[5] = &v24;
  v17[6] = &v18;
  [underlyingHandler performWhileLocked:v17];

  v11 = v25[5];
  if (v11)
  {
    v12 = [v11 messageListItemForObjectID:dCopy error:error];
    v13 = v12;
    if (persisted && v12)
    {
      v14 = 1;
      goto LABEL_10;
    }

    if (v12)
    {
      goto LABEL_11;
    }
  }

  v13 = [v31[5] messageListItemForObjectID:dCopy error:error];
  if (!persisted)
  {
    goto LABEL_11;
  }

  v14 = v19[5] != 0;
LABEL_10:
  *persisted = v14;
LABEL_11:
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v13;
}

void __69__EDThreadQueryHandler_messageListItemForObjectID_isPersisted_error___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  v3 = [v12 inMemoryQueryHandler];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v12 precomputedQueryHandler];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v12 threadMigrator];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (id)inMemoryMessageObjectIDsForThread:(id)thread
{
  threadCopy = thread;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = 0;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__EDThreadQueryHandler_inMemoryMessageObjectIDsForThread___block_invoke;
  v12[3] = &unk_1E8258D48;
  v12[4] = &v13;
  [underlyingHandler performWhileLocked:v12];

  v6 = [v14[5] messagesForThread:threadCopy];
  v7 = [v6 ef_mapSelector:sel_objectID];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __58__EDThreadQueryHandler_inMemoryMessageObjectIDsForThread___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 inMemoryQueryHandler];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)messagesInConversationIDs:(id)ds limit:(int64_t)limit
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__49;
  v19 = __Block_byref_object_dispose__49;
  v20 = 0;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__EDThreadQueryHandler_messagesInConversationIDs_limit___block_invoke;
  v14[3] = &unk_1E8258D48;
  v14[4] = &v15;
  [underlyingHandler performWhileLocked:v14];

  v9 = v16[5];
  if (v9)
  {
    v10 = [v9 messagesInConversationIDs:dsCopy limit:limit];
  }

  else
  {
    v11 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      [(EDThreadQueryHandler *)self messagesInConversationIDs:v12 limit:v21];
    }

    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __56__EDThreadQueryHandler_messagesInConversationIDs_limit___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 inMemoryQueryHandler];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)threadMigratorDidComplete:(id)complete
{
  v23 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50__EDThreadQueryHandler_threadMigratorDidComplete___block_invoke;
  v12 = &unk_1E8258D70;
  v14 = &v15;
  v6 = completeCopy;
  v13 = v6;
  [underlyingHandler performWhileLocked:&v9];

  if (*(v16 + 24) == 1)
  {
    v7 = [EDThreadQueryHandler log:v9];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy2 = self;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p: Thread migrator %p did complete.", buf, 0x16u);
    }

    [(EDThreadQueryHandler *)self _createUnderlyingHandlerIfNeededAndStart];
    delegate = [(EDThreadQueryHandler *)self delegate];
    [delegate threadQueryHandlerStateDidChange:self];
  }

  else
  {
    delegate = [EDThreadQueryHandler log:v9];
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy2 = self;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&dword_1C61EF000, delegate, OS_LOG_TYPE_DEFAULT, "%p: Unknown thread migrator %p did complete.", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v15, 8);
}

void __50__EDThreadQueryHandler_threadMigratorDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 threadMigrator];
  *(*(*(a1 + 40) + 8) + 24) = v4 == v5;
}

- (void)observer:(id)observer wasUpdated:(id)updated
{
  v27 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  updatedCopy = updated;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:wasUpdated:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__EDThreadQueryHandler_observer_wasUpdated___block_invoke;
  v14[3] = &unk_1E8258D98;
  v16 = &v17;
  v14[4] = self;
  v10 = observerCopy;
  v15 = v10;
  [underlyingHandler performWhileLocked:v14];

  if (*(v18 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier wasUpdated:updatedCopy];
  }

  else
  {
    v13 = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2114;
      v24 = v10;
      v25 = 2114;
      v26 = updatedCopy;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler for %{public}@: %{public}@.", buf, 0x20u);
    }

    [updatedCopy invoke];
  }

  _Block_object_dispose(&v17, 8);
}

void __44__EDThreadQueryHandler_observer_wasUpdated___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (id)_addSnippetHintsToExtraInfo:(id)info
{
  v38 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v28 = [threadDictionary objectForKeyedSubscript:@"EDSearchableIndexQueryTransformer.snippetHints"];

  currentThread2 = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:0 forKeyedSubscript:@"EDSearchableIndexQueryTransformer.snippetHints"];

  if ([v28 count])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v28;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          snippetHints = [v14 snippetHints];
          searchableItemIdentifier = [v14 searchableItemIdentifier];
          [v8 setObject:snippetHints forKeyedSubscript:searchableItemIdentifier];

          searchableItemIdentifier2 = [v14 searchableItemIdentifier];
          [v9 addObject:searchableItemIdentifier2];
        }

        v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    messagePersistence = [(EDThreadQueryHandler *)self messagePersistence];
    v19 = [messagePersistence messageObjectIDsForSearchableItemIdentifiers:v9];

    second = [v19 second];
    v21 = objc_opt_new();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__EDThreadQueryHandler__addSnippetHintsToExtraInfo___block_invoke;
    v29[3] = &unk_1E8258DC0;
    v22 = second;
    v30 = v22;
    v23 = v21;
    v31 = v23;
    v24 = v8;
    v32 = v24;
    [v9 enumerateObjectsUsingBlock:v29];
    v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:infoCopy];
    [v25 setObject:v23 forKeyedSubscript:*MEMORY[0x1E699A7D8]];
  }

  else
  {
    v25 = infoCopy;
  }

  return v25;
}

void __52__EDThreadQueryHandler__addSnippetHintsToExtraInfo___block_invoke(id *a1, void *a2)
{
  v5 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [a1[6] objectForKeyedSubscript:v5];
    [a1[5] setObject:v4 forKeyedSubscript:v3];
  }
}

- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  v40 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedAddedObjectIDs:before:extraInfo:];
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__49;
  v36 = __Block_byref_object_dispose__49;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __72__EDThreadQueryHandler_observer_matchedAddedObjectIDs_before_extraInfo___block_invoke;
  v23 = &unk_1E8258DE8;
  v26 = &v32;
  v27 = &v28;
  selfCopy = self;
  v16 = observerCopy;
  v25 = v16;
  [underlyingHandler performWhileLocked:&v20];

  if (*(v29 + 24) == 1)
  {
    [v33[5] addObjectIDsToMigrate:{dsCopy, v20, v21, v22, v23, selfCopy}];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v17 = [(EDThreadQueryHandler *)self _addSnippetHintsToExtraInfo:infoCopy];

      infoCopy = v17;
    }

    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedAddedObjectIDs:dsCopy before:beforeCopy extraInfo:infoCopy];
  }

  else
  {
    resultsObserver = [EDThreadQueryHandler log:v20];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void __72__EDThreadQueryHandler_observer_matchedAddedObjectIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)observer matchedAddedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  v40 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedAddedObjectIDs:after:extraInfo:];
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__49;
  v36 = __Block_byref_object_dispose__49;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __71__EDThreadQueryHandler_observer_matchedAddedObjectIDs_after_extraInfo___block_invoke;
  v23 = &unk_1E8258DE8;
  v26 = &v32;
  v27 = &v28;
  selfCopy = self;
  v16 = observerCopy;
  v25 = v16;
  [underlyingHandler performWhileLocked:&v20];

  if (*(v29 + 24) == 1)
  {
    [v33[5] addObjectIDsToMigrate:{dsCopy, v20, v21, v22, v23, selfCopy}];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v17 = [(EDThreadQueryHandler *)self _addSnippetHintsToExtraInfo:infoCopy];

      infoCopy = v17;
    }

    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedAddedObjectIDs:dsCopy after:afterCopy extraInfo:infoCopy];
  }

  else
  {
    resultsObserver = [EDThreadQueryHandler log:v20];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void __71__EDThreadQueryHandler_observer_matchedAddedObjectIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds before:(id)before extraInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  beforeCopy = before;
  infoCopy = info;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedMovedObjectIDs:before:extraInfo:];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__EDThreadQueryHandler_observer_matchedMovedObjectIDs_before_extraInfo___block_invoke;
  v19[3] = &unk_1E8258D98;
  v21 = &v22;
  v19[4] = self;
  v16 = observerCopy;
  v20 = v16;
  [underlyingHandler performWhileLocked:v19];

  if (*(v23 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedMovedObjectIDs:dsCopy before:beforeCopy extraInfo:infoCopy];
  }

  else
  {
    resultsObserver = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __72__EDThreadQueryHandler_observer_matchedMovedObjectIDs_before_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observer:(id)observer matchedMovedObjectIDs:(id)ds after:(id)after extraInfo:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  afterCopy = after;
  infoCopy = info;
  v14 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedMovedObjectIDs:after:extraInfo:];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__EDThreadQueryHandler_observer_matchedMovedObjectIDs_after_extraInfo___block_invoke;
  v19[3] = &unk_1E8258D98;
  v21 = &v22;
  v19[4] = self;
  v16 = observerCopy;
  v20 = v16;
  [underlyingHandler performWhileLocked:v19];

  if (*(v23 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedMovedObjectIDs:dsCopy after:afterCopy extraInfo:infoCopy];
  }

  else
  {
    resultsObserver = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __71__EDThreadQueryHandler_observer_matchedMovedObjectIDs_after_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observer:(id)observer matchedChangesForObjectIDs:(id)ds
{
  v35 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedChangesForObjectIDs:];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__49;
  v31 = __Block_byref_object_dispose__49;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __60__EDThreadQueryHandler_observer_matchedChangesForObjectIDs___block_invoke;
  v18 = &unk_1E8258DE8;
  v21 = &v27;
  v22 = &v23;
  selfCopy = self;
  v10 = observerCopy;
  v20 = v10;
  [underlyingHandler performWhileLocked:&v15];

  if (*(v24 + 24) == 1)
  {
    v11 = v28[5];
    allKeys = [dsCopy allKeys];
    [v11 changeObjectIDsToMigrate:allKeys];

    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedChangesForObjectIDs:dsCopy];
  }

  else
  {
    resultsObserver = [EDThreadQueryHandler log:v15];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void __60__EDThreadQueryHandler_observer_matchedChangesForObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)observer matchedDeletedObjectIDs:(id)ds
{
  v33 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dsCopy = ds;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedDeletedObjectIDs:];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__49;
  v29 = __Block_byref_object_dispose__49;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__EDThreadQueryHandler_observer_matchedDeletedObjectIDs___block_invoke;
  v16 = &unk_1E8258DE8;
  v19 = &v25;
  v20 = &v21;
  selfCopy = self;
  v10 = observerCopy;
  v18 = v10;
  [underlyingHandler performWhileLocked:&v13];

  if (*(v22 + 24) == 1)
  {
    [v26[5] deleteObjectIDsToMigrate:{dsCopy, v13, v14, v15, v16, selfCopy}];
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedDeletedObjectIDs:dsCopy];
  }

  else
  {
    resultsObserver = [EDThreadQueryHandler log:v13];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void __57__EDThreadQueryHandler_observer_matchedDeletedObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observerDidFinishInitialLoad:(id)load extraInfo:(id)info
{
  v38 = *MEMORY[0x1E69E9840];
  loadCopy = load;
  infoCopy = info;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerDidFinishInitialLoad:extraInfo:];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__49;
  v32 = __Block_byref_object_dispose__49;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __63__EDThreadQueryHandler_observerDidFinishInitialLoad_extraInfo___block_invoke;
  v19 = &unk_1E8258DE8;
  v22 = &v28;
  v23 = &v24;
  selfCopy = self;
  v10 = loadCopy;
  v21 = v10;
  [underlyingHandler performWhileLocked:&v16];

  if (*(v25 + 24) == 1)
  {
    if (v29[5])
    {
      v11 = [EDThreadQueryHandler log:v16];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = v29[5];
        *buf = 134218240;
        selfCopy3 = self;
        v36 = 2048;
        v37 = v12;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_INFO, "%p: Starting migrator %p.", buf, 0x16u);
      }

      v13 = v29[5];
    }

    else
    {
      v13 = 0;
    }

    [v13 start];
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observerDidFinishInitialLoad:observationIdentifier extraInfo:infoCopy];
  }

  else
  {
    resultsObserver = [EDThreadQueryHandler log:v16];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __63__EDThreadQueryHandler_observerDidFinishInitialLoad_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observerDidFailInitialLoad:(id)load extraInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  loadCopy = load;
  infoCopy = info;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerDidFailInitialLoad:extraInfo:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__EDThreadQueryHandler_observerDidFailInitialLoad_extraInfo___block_invoke;
  v13[3] = &unk_1E8258D98;
  v15 = &v16;
  v13[4] = self;
  v10 = loadCopy;
  v14 = v10;
  [underlyingHandler performWhileLocked:v13];

  if (*(v17 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observerDidFailInitialLoad:observationIdentifier extraInfo:infoCopy];
  }

  else
  {
    resultsObserver = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __61__EDThreadQueryHandler_observerDidFailInitialLoad_extraInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observerDidFinishRemoteSearch:(id)search
{
  v19 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  v5 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerDidFinishRemoteSearch:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__EDThreadQueryHandler_observerDidFinishRemoteSearch___block_invoke;
  v10[3] = &unk_1E8258D98;
  v12 = &v13;
  v10[4] = self;
  v7 = searchCopy;
  v11 = v7;
  [underlyingHandler performWhileLocked:v10];

  if (*(v14 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observerDidFinishRemoteSearch:observationIdentifier];
  }

  else
  {
    resultsObserver = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v13, 8);
}

void __54__EDThreadQueryHandler_observerDidFinishRemoteSearch___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observer:(id)observer replacedExistingObjectID:(id)d withNewObjectID:(id)iD
{
  v25 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dCopy = d;
  iDCopy = iD;
  v11 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:replacedExistingObjectID:withNewObjectID:];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__EDThreadQueryHandler_observer_replacedExistingObjectID_withNewObjectID___block_invoke;
  v16[3] = &unk_1E8258D98;
  v18 = &v19;
  v16[4] = self;
  v13 = observerCopy;
  v17 = v13;
  [underlyingHandler performWhileLocked:v16];

  if (*(v20 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier replacedExistingObjectID:dCopy withNewObjectID:iDCopy];
  }

  else
  {
    resultsObserver = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __74__EDThreadQueryHandler_observer_replacedExistingObjectID_withNewObjectID___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)observerWillRestart:(id)restart
{
  v30 = *MEMORY[0x1E69E9840];
  restartCopy = restart;
  v5 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observerWillRestart:];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__49;
  v26 = __Block_byref_object_dispose__49;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __44__EDThreadQueryHandler_observerWillRestart___block_invoke;
  v13 = &unk_1E8258DE8;
  v16 = &v22;
  v17 = &v18;
  selfCopy = self;
  v7 = restartCopy;
  v15 = v7;
  [underlyingHandler performWhileLocked:&v10];

  if (*(v19 + 24) == 1)
  {
    [v23[5] reset];
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observerWillRestart:observationIdentifier];
  }

  else
  {
    resultsObserver = [EDThreadQueryHandler log:v10];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __44__EDThreadQueryHandler_observerWillRestart___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 threadMigrator];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) isStarted];
  if (v6)
  {
    LOBYTE(v6) = [v7 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
}

- (void)observer:(id)observer matchedOldestItemsUpdatedForMailboxes:(id)mailboxes
{
  v22 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  mailboxesCopy = mailboxes;
  v8 = +[EDThreadQueryHandler log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadQueryHandler observer:matchedOldestItemsUpdatedForMailboxes:];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -86;
  underlyingHandler = [(EDThreadQueryHandler *)self underlyingHandler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__EDThreadQueryHandler_observer_matchedOldestItemsUpdatedForMailboxes___block_invoke;
  v13[3] = &unk_1E8258D98;
  v15 = &v16;
  v13[4] = self;
  v10 = observerCopy;
  v14 = v10;
  [underlyingHandler performWhileLocked:v13];

  if (*(v17 + 24) == 1)
  {
    resultsObserver = [(EDThreadQueryHandler *)self resultsObserver];
    observationIdentifier = [(EDThreadQueryHandler *)self observationIdentifier];
    [resultsObserver observer:observationIdentifier matchedOldestItemsUpdatedForMailboxes:mailboxesCopy];
  }

  else
  {
    resultsObserver = +[EDThreadQueryHandler log];
    if (os_log_type_enabled(resultsObserver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C61EF000, resultsObserver, OS_LOG_TYPE_DEFAULT, "%p: Observer callback from unknown (old?) underlying handler.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __71__EDThreadQueryHandler_observer_matchedOldestItemsUpdatedForMailboxes___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) isStarted];
  if (v3)
  {
    LOBYTE(v3) = [v4 _isCurrentObservationToken:*(a1 + 40)];
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)persistenceDidResetThreadScope:(id)scope
{
  scopeCopy = scope;
  threadScope = [(EDThreadQueryHandler *)self threadScope];
  v5 = [scopeCopy isEqual:threadScope];

  if (v5)
  {
    [(EDThreadQueryHandler *)self triggerMigration];
  }
}

- (id)threadReconciliationQueries
{
  v8[1] = *MEMORY[0x1E69E9840];
  query = [(EDThreadQueryHandler *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 8) != 0)
  {
    query2 = [(EDThreadQueryHandler *)self query];
    v8[0] = query2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (EDThreadQueryHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithQuery:(uint64_t)a3 messagePersistence:(uint64_t)a4 threadPersistence:(uint64_t)a5 hookRegistry:(uint64_t)a6 vipManager:(uint64_t)a7 searchProvider:(uint64_t)a8 remindMeNotificationController:observer:observationIdentifier:delegate:observationResumer:threadMigratorManager:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: EDThreadQueryHandler initializing", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_1(&dword_1C61EF000, a2, a3, "%p: thread scope state: use in-memory. creating a new in memory thread query handler without migration", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __64__EDThreadQueryHandler__createUnderlyingHandlerIfNeededAndStart__block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218240;
  *&v3[4] = *a1;
  *&v3[12] = 2048;
  *&v3[14] = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, a2, a3, "%p: Found existing migrator %p", *v3, *&v3[8]);
}

- (void)start
{
  OUTLINED_FUNCTION_0_0(self, a2, a3, 3.8521e-34);
  _os_log_debug_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEBUG, "%p: Starting EDThreadQueryHandler for threadscope\n%{public}@", v4, 0x16u);
}

- (void)messagesInConversationIDs:(uint64_t)a3 limit:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0(a1, a2, a3, 3.8521e-34);
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "%p: Only in-memory threads are supported for %{public}@", v4, 0x16u);
}

@end