@interface MTAlarmCache
- (BOOL)_isUpdateNeeded;
- (MTAlarmCache)initWithUpdateBlock:(id)block;
- (void)_getCachedAlarmsWithCompletion:(id)completion doSynchronous:(BOOL)synchronous;
- (void)_withLock:(id)lock;
- (void)markNeedsUpdate;
@end

@implementation MTAlarmCache

- (BOOL)_isUpdateNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__MTAlarmCache__isUpdateNeeded__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTAlarmCache *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (MTAlarmCache)initWithUpdateBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = MTAlarmCache;
  v5 = [(MTAlarmCache *)&v14 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    orderedAlarms = v5->_orderedAlarms;
    v5->_orderedAlarms = array;

    array2 = [MEMORY[0x1E695DF70] array];
    sleepAlarms = v5->_sleepAlarms;
    v5->_sleepAlarms = array2;

    nextAlarm = v5->_nextAlarm;
    v5->_nextAlarm = 0;

    v5->_needsUpdate = 1;
    v11 = [blockCopy copy];
    updateBlock = v5->_updateBlock;
    v5->_updateBlock = v11;

    v5->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_cacheLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)markNeedsUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__MTAlarmCache_markNeedsUpdate__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTAlarmCache *)self _withLock:v2];
}

- (void)_getCachedAlarmsWithCompletion:(id)completion doSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  if ([(MTAlarmCache *)self _isUpdateNeeded])
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MTAlarmCache _getCachedAlarmsWithCompletion:v7 doSynchronous:?];
    }

    updateBlock = self->_updateBlock;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke;
    v10[3] = &unk_1E7B0DFB0;
    v10[4] = self;
    v12 = &v27;
    v13 = &v21;
    v14 = &v15;
    v11 = completionCopy;
    updateBlock[2](updateBlock, v10, synchronousCopy);
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2;
    v9[3] = &unk_1E7B0DFD8;
    v9[4] = self;
    v9[5] = &v27;
    v9[6] = &v21;
    v9[7] = &v15;
    [(MTAlarmCache *)self _withLock:v9];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v28[5], v22[5], v16[5], 0);
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_cold_1(a1, v12, v13);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, 0, 0, v12);
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2;
    v17[3] = &unk_1E7B0DF88;
    v17[4] = v15;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    [v15 _withLock:v17];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), 0);
    }
  }
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(a1 + 32) + 8) = 0;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 24));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(a1 + 32) + 32));
  v11 = *(*(a1 + 32) + 40);
  v12 = (*(*(a1 + 80) + 8) + 40);

  objc_storeStrong(v12, v11);
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
  v2 = *(a1[4] + 40);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_getCachedAlarmsWithCompletion:(uint64_t)a1 doSynchronous:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "%@ - Cache Miss", &v2, 0xCu);
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ - Error getting alarms: %{public}@", &v4, 0x16u);
}

@end