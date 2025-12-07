@interface EDThreadMigrator
+ (OS_os_log)log;
+ (id)signpostLog;
- (EDThreadMigrator)initWithThreadScope:(id)scope threadPersistence:(id)persistence queryHandler:(id)handler;
- (unint64_t)signpostID;
- (void)_failMigration;
- (void)_finishMigrating;
- (void)_migrateNextBatchWithGeneration:(unint64_t)generation;
- (void)_scheduleFinalizationForBatchedObjectIDs:(id)ds withGeneration:(unint64_t)generation forDelete:(BOOL)delete;
- (void)addObjectIDsToMigrate:(id)migrate;
- (void)cancel;
- (void)changeObjectIDsToMigrate:(id)migrate;
- (void)dealloc;
- (void)deleteObjectIDsToMigrate:(id)migrate;
- (void)reset;
- (void)start;
- (void)startObservingWithObserver:(id)observer;
- (void)stopObservingWithObserver:(id)observer;
@end

@implementation EDThreadMigrator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__EDThreadMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_100 != -1)
  {
    dispatch_once(&log_onceToken_100, block);
  }

  v2 = log_log_100;

  return v2;
}

void __23__EDThreadMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_100;
  log_log_100 = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDThreadMigrator_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_11 != -1)
  {
    dispatch_once(&signpostLog_onceToken_11, block);
  }

  v2 = signpostLog_log_11;

  return v2;
}

void __31__EDThreadMigrator_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_11;
  signpostLog_log_11 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDThreadMigrator)initWithThreadScope:(id)scope threadPersistence:(id)persistence queryHandler:(id)handler
{
  scopeCopy = scope;
  persistenceCopy = persistence;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = EDThreadMigrator;
  v11 = [(EDThreadMigrator *)&v27 init];
  v12 = v11;
  if (v11)
  {
    threadScope = v11->_threadScope;
    v11->_threadFinalizationInterval = 2.0;
    v14 = MEMORY[0x1E699B978];
    scopeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"EDThreadMigrator-%@", threadScope, scopeCopy];
    v16 = [v14 serialDispatchQueueSchedulerWithName:scopeCopy];
    workScheduler = v12->_workScheduler;
    v12->_workScheduler = v16;

    v18 = objc_alloc(MEMORY[0x1E699B7F0]);
    v19 = objc_alloc_init(_EDThreadMigrationState);
    v20 = [v18 initWithObject:v19];
    state = v12->_state;
    v12->_state = v20;

    objc_storeStrong(&v12->_threadScope, scope);
    objc_storeStrong(&v12->_threadPersistence, persistence);
    objc_storeStrong(&v12->_queryHandler, handler);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = weakObjectsHashTable;

    v12->_observerLock._os_unfair_lock_opaque = 0;
    v24 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [EDThreadMigrator initWithThreadScope:threadPersistence:queryHandler:];
    }
  }

  return v12;
}

- (void)dealloc
{
  v3 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator dealloc];
  }

  v4.receiver = self;
  v4.super_class = EDThreadMigrator;
  [(EDThreadMigrator *)&v4 dealloc];
}

- (void)start
{
  *buf = 134218242;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p: Starting migration of thread scope\n%{public}@", buf, 0x16u);
}

void __25__EDThreadMigrator_start__block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state])
  {
    v4 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [v3 generation];
      v7 = [v3 unmigratedCount];
      v8 = [v3 state] - 1;
      if (v8 > 4)
      {
        v9 = @"Not Started";
      }

      else
      {
        v9 = off_1E8258028[v8];
      }

      v30 = [*(a1 + 32) threadScope];
      *buf = 134219010;
      v37 = v5;
      v38 = 2048;
      v39 = v6;
      v40 = 2048;
      v41 = v7;
      v42 = 2114;
      v43 = v9;
      v44 = 2114;
      v45 = v30;
      _os_log_error_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_ERROR, "%p[%lu]: Failed to start migration for %lu threads due to wrong state: %{public}@\n%{public}@", buf, 0x34u);
    }
  }

  else
  {
    [v3 setState:1];
    v10 = +[EDThreadMigrator signpostLog];
    v11 = [*(a1 + 32) signpostID];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = *(a1 + 32);
      v13 = [v3 generation];
      v14 = [v3 unmigratedCount];
      v15 = [*(a1 + 32) threadScope];
      *buf = 134218754;
      v37 = v12;
      v38 = 2048;
      v39 = v13;
      v40 = 2048;
      v41 = v14;
      v42 = 2114;
      v43 = v15;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "THREAD MIGRATION", "%p[%lu]: Starting migration for %lu threads\n%{public}@", buf, 0x2Au);
    }

    v16 = [*(a1 + 32) threadPersistence];
    [v16 sendEventForCoreAnalytics:@"Start"];

    v4 = objc_alloc_init(MEMORY[0x1E699B798]);
    [v3 setMigrationCancelable:v4];
    if ([v3 isFullyMigrated])
    {
      [v3 setState:3];
      v17 = +[EDThreadMigrator signpostLog];
      v18 = [*(a1 + 32) signpostID];
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v19 = *(a1 + 32);
        v20 = [v3 generation];
        v21 = [*(a1 + 32) threadScope];
        *buf = 134218498;
        v37 = v19;
        v38 = 2048;
        v39 = v20;
        v40 = 2114;
        v41 = v21;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v17, OS_SIGNPOST_INTERVAL_END, v18, "THREAD MIGRATION", "%p[%lu]: Finished empty migration: %{public}@", buf, 0x20u);
      }

      v22 = [*(a1 + 32) workScheduler];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __25__EDThreadMigrator_start__block_invoke_15;
      v34[3] = &unk_1E8250128;
      v34[4] = *(a1 + 32);
      v35 = v4;
      [v22 performBlock:v34];
      v23 = &v35;
    }

    else
    {
      v24 = +[EDThreadMigrator signpostLog];
      v25 = [*(a1 + 32) signpostID];
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = *(a1 + 32);
        v27 = [v3 generation];
        v28 = [*(a1 + 32) threadScope];
        *buf = 134218498;
        v37 = v26;
        v38 = 2048;
        v39 = v27;
        v40 = 2114;
        v41 = v28;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v24, OS_SIGNPOST_INTERVAL_END, v25, "THREAD MIGRATION", "%p[%lu]: Migrating next batch: %{public}@", buf, 0x20u);
      }

      v29 = [*(a1 + 32) workScheduler];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __25__EDThreadMigrator_start__block_invoke_16;
      v31[3] = &unk_1E8250720;
      v31[4] = *(a1 + 32);
      v32 = v4;
      v33 = v3;
      [v29 performBlock:v31];

      v23 = &v32;
      v22 = v33;
    }
  }
}

void __25__EDThreadMigrator_start__block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) threadPersistence];
  v3 = [*(a1 + 32) threadScope];
  v4 = [v2 beginMigratingThreadScope:v3];

  [*(a1 + 40) addCancelable:v4];
  [*(a1 + 32) _finishMigrating];
}

void __25__EDThreadMigrator_start__block_invoke_16(id *a1)
{
  v2 = [a1[4] threadPersistence];
  v3 = [a1[4] threadScope];
  v4 = [v2 beginMigratingThreadScope:v3];

  [a1[5] addCancelable:v4];
  [a1[4] _migrateNextBatchWithGeneration:{objc_msgSend(a1[6], "generation")}];
}

- (void)cancel
{
  v3 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator cancel];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__46;
  v10 = __Block_byref_object_dispose__46;
  v11 = 0;
  state = [(EDThreadMigrator *)self state];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__EDThreadMigrator_cancel__block_invoke;
  v5[3] = &unk_1E8257EF8;
  v5[4] = self;
  v5[5] = &v6;
  [state performWhileLocked:v5];

  [v7[5] cancel];
  _Block_object_dispose(&v6, 8);
}

void __26__EDThreadMigrator_cancel__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 generation];
    v7 = [v3 state];
    if ((v7 - 1) > 4)
    {
      v8 = @"Not Started";
    }

    else
    {
      v8 = off_1E8258028[v7 - 1];
    }

    v19 = 134218498;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Canceling migration oldState: %{public}@", &v19, 0x20u);
  }

  if ([v3 isInProgress])
  {
    v9 = +[EDThreadMigrator signpostLog];
    v10 = [*(a1 + 32) signpostID];
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = *(a1 + 32);
      v12 = [v3 generation];
      v13 = [v3 state];
      if ((v13 - 1) > 4)
      {
        v14 = @"Not Started";
      }

      else
      {
        v14 = off_1E8258028[v13 - 1];
      }

      v19 = 134218498;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_END, v10, "THREAD MIGRATION", "%p[%lu]: Canceling migration is still in progress: %{public}@", &v19, 0x20u);
    }

    v15 = [*(a1 + 32) threadPersistence];
    [v15 sendEventForCoreAnalytics:@"Cancel"];

    v16 = [v3 migrationCancelable];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [v3 setMigrationCancelable:0];
  }

  [v3 setState:5];
}

- (void)reset
{
  v3 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator reset];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__46;
  v10 = __Block_byref_object_dispose__46;
  v11 = 0;
  state = [(EDThreadMigrator *)self state];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__EDThreadMigrator_reset__block_invoke;
  v5[3] = &unk_1E8257EF8;
  v5[4] = self;
  v5[5] = &v6;
  [state performWhileLocked:v5];

  [v7[5] cancel];
  _Block_object_dispose(&v6, 8);
}

void __25__EDThreadMigrator_reset__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 generation];
    v7 = [v3 state];
    if ((v7 - 1) > 4)
    {
      v8 = @"Not Started";
    }

    else
    {
      v8 = off_1E8258028[v7 - 1];
    }

    v19 = 134218498;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resetting migration oldState: %{public}@", &v19, 0x20u);
  }

  if ([v3 isInProgress])
  {
    v9 = +[EDThreadMigrator signpostLog];
    v10 = [*(a1 + 32) signpostID];
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = *(a1 + 32);
      v12 = [v3 generation];
      v13 = [v3 state];
      if ((v13 - 1) > 4)
      {
        v14 = @"Not Started";
      }

      else
      {
        v14 = off_1E8258028[v13 - 1];
      }

      v19 = 134218498;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "THREAD MIGRATION", "%p[%lu]: Resetting migration is still in progress: %{public}@", &v19, 0x20u);
    }

    v15 = [*(a1 + 32) threadPersistence];
    [v15 sendEventForCoreAnalytics:@"Reset"];

    v16 = [v3 migrationCancelable];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [v3 setMigrationCancelable:0];
  }

  [v3 reset];
}

- (void)_failMigration
{
  v14 = *MEMORY[0x1E69E9840];
  state = [(EDThreadMigrator *)self state];
  [state performWhileLocked:&__block_literal_global_91];

  os_unfair_lock_lock(&self->_observerLock);
  v4 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) threadMigratorDidFail:{self, v9}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_migrateNextBatchWithGeneration:(unint64_t)generation
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__46;
  v20 = __Block_byref_object_dispose__46;
  v21 = 0;
  state = [(EDThreadMigrator *)self state];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__EDThreadMigrator__migrateNextBatchWithGeneration___block_invoke;
  v15[3] = &unk_1E8257F40;
  v15[7] = &v26;
  v15[8] = generation;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  [state performWhileLocked:v15];

  if ((v27[3] & 1) == 0)
  {
    queryHandler = [(EDThreadMigrator *)self queryHandler];
    v7 = [queryHandler threadsAndMessagesForObjectIDs:v17[5]];
    threadPersistence = [(EDThreadMigrator *)self threadPersistence];
    v9 = [threadPersistence addThreadsDuringMigration:v7];

    if (v9)
    {
      v10 = [v17[5] copy];
      [(EDThreadMigrator *)self _scheduleFinalizationForBatchedObjectIDs:v10 withGeneration:generation forDelete:0];

      if ((v23[3] & 1) == 0)
      {
        workScheduler = [(EDThreadMigrator *)self workScheduler];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __52__EDThreadMigrator__migrateNextBatchWithGeneration___block_invoke_27;
        v14[3] = &unk_1E8250A90;
        v14[4] = self;
        v14[5] = generation;
        [workScheduler performBlock:v14];
      }
    }

    else
    {
      v12 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        threadScope = [(EDThreadMigrator *)self threadScope];
        *buf = 134218498;
        selfCopy = self;
        v32 = 2048;
        generationCopy = generation;
        v34 = 2114;
        v35 = threadScope;
        _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "%p[%lu]: Failed migration -- unable to add threads\n%{public}@", buf, 0x20u);
      }

      [(EDThreadMigrator *)self _failMigration];
    }
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

void __52__EDThreadMigrator__migrateNextBatchWithGeneration___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 verifyIsMigratingGeneration:*(a1 + 64) andIsInState:1 logIdentifier:*(a1 + 32) logAction:@"Stopping migration" logCount:{objc_msgSend(v3, "unmigratedCount")}])
  {
    v16 = 56;
LABEL_9:
    *(*(*(a1 + v16) + 8) + 24) = 1;
    goto LABEL_10;
  }

  v4 = [v3 nextBatch];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = [*(*(*(a1 + 40) + 8) + 40) count];
    v11 = [*(a1 + 32) threadScope];
    v17 = 134218754;
    v18 = v9;
    v19 = 2048;
    v20 = v8;
    v21 = 2048;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Migrating batch of %lu threads\n%{public}@", &v17, 0x2Au);
  }

  if ([v3 isEmpty])
  {
    v12 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 64);
      v15 = [v13 threadScope];
      v17 = 134218498;
      v18 = v13;
      v19 = 2048;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finishing migration\n%{public}@", &v17, 0x20u);
    }

    [v3 setState:2];
    v16 = 48;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_scheduleFinalizationForBatchedObjectIDs:(id)ds withGeneration:(unint64_t)generation forDelete:(BOOL)delete
{
  dsCopy = ds;
  workScheduler = [(EDThreadMigrator *)self workScheduler];
  [(EDThreadMigrator *)self threadFinalizationInterval];
  v11 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke;
  v14[3] = &unk_1E8257F90;
  deleteCopy = delete;
  v14[4] = self;
  generationCopy = generation;
  v12 = dsCopy;
  v15 = v12;
  v13 = [workScheduler afterDelay:v14 performBlock:v11];
}

void __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [*(a1 + 32) state];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke_2;
  v5[3] = &unk_1E8257F68;
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v5[4] = v4;
  v6 = v3;
  v7 = &v10;
  [v2 performWhileLocked:v5];

  if (*(v11 + 24) == 1)
  {
    [*(a1 + 32) _finishMigrating];
  }

  _Block_object_dispose(&v10, 8);
}

void __86__EDThreadMigrator__scheduleFinalizationForBatchedObjectIDs_withGeneration_forDelete___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 64))
  {
    v4 = @"Skipping delete finalization";
  }

  else
  {
    v4 = @"Skipping finalization";
  }

  v5 = v4;
  if ([v3 verifyIsMigratingGeneration:*(a1 + 56) andIsInState:1 orState:2 logIdentifier:*(a1 + 32) logAction:v5 logCount:{objc_msgSend(*(a1 + 40), "count")}])
  {
    v6 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      if (*(a1 + 64))
      {
        v8 = @"deletion";
      }

      else
      {
        v8 = @"migration";
      }

      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) count];
      v11 = [*(a1 + 32) threadScope];
      v20 = 134219010;
      v21 = v9;
      v22 = 2048;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
      v26 = 2048;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finalized %{public}@ for %lu threads: %{public}@", &v20, 0x34u);
    }

    v12 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
      [v3 removeDeletedObjectIDs:v12];
    }

    else
    {
      [v3 removeMigratedObjectIDs:v12];
    }

    if ([v3 state] == 2 && objc_msgSend(v3, "isFullyMigrated"))
    {
      v13 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 56);
        v16 = *(a1 + 64);
        v17 = [v14 threadScope];
        v18 = v17;
        v19 = &stru_1F45B4608;
        v20 = 134218754;
        v21 = v14;
        v22 = 2048;
        if (v16)
        {
          v19 = @"delete ";
        }

        v23 = v15;
        v24 = 2112;
        v25 = v19;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finished migration after finalizing last %@batch: %{public}@", &v20, 0x2Au);
      }

      [v3 setState:3];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (void)_finishMigrating
{
  v15 = *MEMORY[0x1E69E9840];
  threadPersistence = [(EDThreadMigrator *)self threadPersistence];
  threadScope = [(EDThreadMigrator *)self threadScope];
  [threadPersistence endMigratingThreadScope:threadScope];

  os_unfair_lock_lock(&self->_observerLock);
  v5 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observerLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) threadMigratorDidComplete:{self, v10}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addObjectIDsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  state = [(EDThreadMigrator *)self state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke;
  v7[3] = &unk_1E8257FB8;
  v7[4] = self;
  v6 = migrateCopy;
  v8 = v6;
  [state performWhileLocked:v7];
}

void __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (v4 < 2)
  {
    v6 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = +[EDThreadMigrator log];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          v18 = [v3 generation];
          v19 = *(a1 + 40);
          v20 = [*(a1 + 32) threadScope];
          *buf = 134218754;
          v24 = v17;
          v25 = 2048;
          v26 = v18;
          v27 = 2114;
          v28 = v19;
          v29 = 2114;
          v30 = v20;
          _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "%p[%lu]: Got more object IDs after migration finished. objects: {%{public}@}; thread scope: {%{public}@}", buf, 0x2Au);
        }
      }

      goto LABEL_15;
    }

    [v3 setState:1];
    v7 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v3 generation];
      v10 = [*(a1 + 32) threadScope];
      *buf = 134218498;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resuming migration for thread scope %{public}@", buf, 0x20u);
    }

    v6 = 1;
  }

  [v3 addObjectIDs:*(a1 + 40)];
  v11 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v3 generation];
    v14 = [*(a1 + 40) count];
    v15 = [*(a1 + 32) threadScope];
    *buf = 134218754;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Added %lu threads to migration for thread scope %{public}@", buf, 0x2Au);
  }

  if (v6)
  {
    v16 = [*(a1 + 32) workScheduler];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke_46;
    v21[3] = &unk_1E8250128;
    v21[4] = *(a1 + 32);
    v22 = v3;
    [v16 performBlock:v21];
  }

LABEL_15:
}

uint64_t __42__EDThreadMigrator_addObjectIDsToMigrate___block_invoke_46(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) generation];

  return [v1 _migrateNextBatchWithGeneration:v2];
}

- (void)changeObjectIDsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  state = [(EDThreadMigrator *)self state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke;
  v7[3] = &unk_1E8257FB8;
  v6 = migrateCopy;
  v8 = v6;
  selfCopy = self;
  [state performWhileLocked:v7];
}

void __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      v17 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        v19 = [v3 generation];
        v20 = *(a1 + 32);
        v21 = [*(a1 + 40) threadScope];
        *buf = 134218754;
        v27 = v18;
        v28 = 2048;
        v29 = v19;
        v30 = 2114;
        v31 = v20;
        v32 = 2114;
        v33 = v21;
        _os_log_error_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_ERROR, "%p[%lu]: Got changed object IDs after migration finished: %{public}@\n%{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke_2;
    v24[3] = &unk_1E8256010;
    v6 = v3;
    v25 = v6;
    v7 = [v5 ef_filter:v24];
    if (![v7 count])
    {
      goto LABEL_13;
    }

    [v6 addObjectIDs:v7];
    [v6 removeMigratedObjectIDs:v7];
    v8 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v6 generation];
      v11 = [*(a1 + 40) threadScope];
      *buf = 134218754;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v11;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resetting object IDs %{public}@ after change\n%{public}@", buf, 0x2Au);
    }

    if ([v6 state] == 2)
    {
      [v6 setState:1];
      v12 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = [v6 generation];
        v15 = [*(a1 + 40) threadScope];
        *buf = 134218498;
        v27 = v13;
        v28 = 2048;
        v29 = v14;
        v30 = 2114;
        v31 = v15;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Resuming migration\n%{public}@", buf, 0x20u);
      }

      v16 = [*(a1 + 40) workScheduler];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke_48;
      v22[3] = &unk_1E8250128;
      v22[4] = *(a1 + 40);
      v23 = v6;
      [v16 performBlock:v22];
    }

    else
    {
LABEL_13:
    }
  }
}

uint64_t __45__EDThreadMigrator_changeObjectIDsToMigrate___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) generation];

  return [v1 _migrateNextBatchWithGeneration:v2];
}

- (void)deleteObjectIDsToMigrate:(id)migrate
{
  migrateCopy = migrate;
  state = [(EDThreadMigrator *)self state];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke;
  v7[3] = &unk_1E8257FB8;
  v6 = migrateCopy;
  v8 = v6;
  selfCopy = self;
  [state performWhileLocked:v7];
}

void __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_2;
  aBlock[3] = &unk_1E8250720;
  v4 = v3;
  v33 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v34 = v5;
  v35 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [v4 state];
  if ((v8 - 1) < 2)
  {
    v7[2](v7);
    v11 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_49;
    v30[3] = &unk_1E8256010;
    v12 = v4;
    v31 = v12;
    v10 = [v11 ef_filter:v30];
    if ([v10 count])
    {
      [v12 addDeletedObjectIDs:v10];
      v13 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = [v12 generation];
        v16 = [*(a1 + 40) threadScope];
        *buf = 134218754;
        v37 = v14;
        v38 = 2048;
        v39 = v15;
        v40 = 2114;
        v41 = v10;
        v42 = 2114;
        v43 = v16;
        _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Deleting %{public}@\n%{public}@", buf, 0x2Au);
      }
    }

    if ([v12 state]== 1 && [v12 isEmpty])
    {
      [v12 setState:2];
      v17 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = [v12 generation];
        v20 = [*(a1 + 40) threadScope];
        *buf = 134218498;
        v37 = v18;
        v38 = 2048;
        v39 = v19;
        v40 = 2114;
        v41 = v20;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Finishing migration after deleting last batch: %{public}@", buf, 0x20u);
      }
    }

    v9 = v31;
    goto LABEL_17;
  }

  if (v8)
  {
    if (v8 == 3)
    {
      v9 = +[EDThreadMigrator log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 40);
        v23 = [v4 generation];
        v24 = *(a1 + 32);
        v25 = [*(a1 + 40) threadScope];
        *buf = 134218754;
        v37 = v22;
        v38 = 2048;
        v39 = v23;
        v40 = 2114;
        v41 = v24;
        v42 = 2114;
        v43 = v25;
        _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, "%p[%lu]: Got deleted object IDs after migration finished: %{public}@\n%{public}@", buf, 0x2Au);
      }

      v10 = 0;
LABEL_17:

      goto LABEL_20;
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v7[2](v7);
  }

LABEL_20:
  if ([v10 count])
  {
    v21 = [*(a1 + 40) workScheduler];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_50;
    v26[3] = &unk_1E8250AB8;
    v26[4] = *(a1 + 40);
    v27 = v10;
    v28 = *(a1 + 32);
    v29 = v4;
    [v21 performBlock:v26];
  }
}

void __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_2(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [a1[4] removeObjectIDs:a1[5]];
  v2 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[6];
    v4 = [a1[4] generation];
    v5 = [a1[5] count];
    v6 = [a1[6] threadScope];
    v7 = 134218754;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "%p[%lu]: Deleting %lu threads from migration \n%{public}@", &v7, 0x2Au);
  }
}

uint64_t __45__EDThreadMigrator_deleteObjectIDsToMigrate___block_invoke_50(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) threadPersistence];
  v3 = [v2 deleteThreadsWithObjectIDs:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) generation];

    return [v4 _scheduleFinalizationForBatchedObjectIDs:v5 withGeneration:v6 forDelete:1];
  }

  else
  {
    v8 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 56) generation];
      v11 = [*(a1 + 32) threadScope];
      v12 = 134218498;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_ERROR, "%p[%lu]: Failed migration -- unable to delete threads\n%{public}@", &v12, 0x20u);
    }

    return [*(a1 + 32) _failMigration];
  }
}

- (void)startObservingWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator startObservingWithObserver:];
  }

  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)stopObservingWithObserver:(id)observer
{
  observerCopy = observer;
  v5 = +[EDThreadMigrator log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EDThreadMigrator stopObservingWithObserver:];
  }

  os_unfair_lock_lock(&self->_observerLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_observerLock);
}

- (void)startObservingWithObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: Start observing %p", v2, v3);
}

- (void)stopObservingWithObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_2_0(&dword_1C61EF000, v0, v1, "%p: Stop observing %p", v2, v3);
}

@end