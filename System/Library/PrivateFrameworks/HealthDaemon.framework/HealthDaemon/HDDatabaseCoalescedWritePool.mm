@interface HDDatabaseCoalescedWritePool
- (HDDatabaseCoalescedWritePool)init;
- (HDDatabaseCoalescedWritePool)initWithProfile:(id)profile name:(id)name loggingCategory:(id)category;
- (HDProfile)profile;
- (uint64_t)_performPendingWriteRecords:(void *)records transaction:(void *)transaction accessibilityError:(uint64_t)error error:;
- (uint64_t)_queue_performPendingWriteOperationsWithError:(uint64_t)error;
- (void)flushPendingWriteQueueWithCompletion:(id)completion;
- (void)performWriteWithMaximumLatency:(double)latency block:(id)block completion:(id)completion;
@end

@implementation HDDatabaseCoalescedWritePool

- (HDDatabaseCoalescedWritePool)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDatabaseCoalescedWritePool)initWithProfile:(id)profile name:(id)name loggingCategory:(id)category
{
  profileCopy = profile;
  nameCopy = name;
  categoryCopy = category;
  v27.receiver = self;
  v27.super_class = HDDatabaseCoalescedWritePool;
  v11 = [(HDDatabaseCoalescedWritePool *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    v13 = objc_msgSend_copy(nameCopy);
    name = v12->_name;
    v12->_name = v13;

    objc_storeStrong(&v12->_loggingCategory, category);
    v15 = HKCreateSerialDispatchQueue();
    writeQueue = v12->_writeQueue;
    v12->_writeQueue = v15;

    v12->_lock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingWriteQueue = v12->_pendingWriteQueue;
    v12->_pendingWriteQueue = v17;

    objc_initWeak(&location, v12);
    v19 = objc_alloc(MEMORY[0x277CCDD98]);
    v20 = v12->_writeQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__HDDatabaseCoalescedWritePool_initWithProfile_name_loggingCategory___block_invoke;
    v24[3] = &unk_278616F38;
    objc_copyWeak(&v25, &location);
    v21 = [v19 initWithMode:1 clock:0 queue:v20 delay:v24 block:0.0];
    pendingWriteOperation = v12->_pendingWriteOperation;
    v12->_pendingWriteOperation = v21;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __69__HDDatabaseCoalescedWritePool_initWithProfile_name_loggingCategory___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = 0;
    v1 = [(HDDatabaseCoalescedWritePool *)WeakRetained _queue_performPendingWriteOperationsWithError:?];
    v2 = v9;
    _HKInitializeLogging();
    v3 = WeakRetained[2];
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v1)
    {
      if (v4)
      {
        *buf = 138543362;
        v11 = WeakRetained;
        v5 = "%{public}@: Completed scheduled pending write operation.";
        v6 = v3;
        v7 = 12;
LABEL_7:
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
      }
    }

    else if (v4)
    {
      *buf = 138543618;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v2;
      v5 = "%{public}@: Scheduled pending write operation failed with error: %{public}@";
      v6 = v3;
      v7 = 22;
      goto LABEL_7;
    }
  }
}

- (uint64_t)_queue_performPendingWriteOperationsWithError:(uint64_t)error
{
  v59 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(error + 24));
  os_unfair_lock_lock((error + 32));
  v4 = *(error + 48);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(error + 48);
  *(error + 48) = v5;

  if ([v4 count])
  {
    [*(error + 64) consumeQuota];
  }

  os_unfair_lock_unlock((error + 32));
  if ([v4 count])
  {
    v7 = MEMORY[0x277CCC298];
    v8 = _HKLogSignpostIDGenerate();
    _HKInitializeLogging();
    v9 = *v7;
    if (os_signpost_enabled(v9))
    {
      v10 = v9;
      v11 = v10;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 134217984;
        errorCopy = [v4 count];
        _os_signpost_emit_with_name_impl(&dword_228986000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "coalesced-write", "count=%ld", buf, 0xCu);
      }
    }

    v42 = a2;
    v12 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:error activityName:*(error + 8), v8];
    Current = CFAbsoluteTimeGetCurrent();
    databaseAssertion = [error databaseAssertion];
    v15 = [HDDatabaseTransactionContext contextForAccessibilityAssertion:databaseAssertion];

    copyForWritingProtectedData = [v15 copyForWritingProtectedData];
    WeakRetained = objc_loadWeakRetained((error + 56));
    database = [WeakRetained database];
    v51 = 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __78__HDDatabaseCoalescedWritePool__queue_performPendingWriteOperationsWithError___block_invoke;
    v49[3] = &unk_278613218;
    v49[4] = error;
    v50 = v4;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __78__HDDatabaseCoalescedWritePool__queue_performPendingWriteOperationsWithError___block_invoke_2;
    v47[3] = &unk_278616F88;
    v47[4] = error;
    v19 = v50;
    v48 = v19;
    v20 = [database performTransactionWithContext:copyForWritingProtectedData error:&v51 block:v49 inaccessibilityHandler:v47];
    v21 = v51;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v58 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        v26 = 0;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * v26);
          if (v27)
          {
            v28 = *(v27 + 16);
          }

          else
          {
            v28 = 0;
          }

          (*(v28 + 16))(v28, v20, v21);
          ++v26;
        }

        while (v24 != v26);
        v29 = [v22 countByEnumeratingWithState:&v43 objects:v58 count:16];
        v24 = v29;
      }

      while (v29);
    }

    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC298];
    if (os_signpost_enabled(*MEMORY[0x277CCC298]))
    {
      v31 = v30;
      v32 = v31;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v32, OS_SIGNPOST_INTERVAL_END, v41, "coalesced-write", "", buf, 2u);
      }
    }

    _HKInitializeLogging();
    v33 = *(error + 16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [v22 count];
      v36 = CFAbsoluteTimeGetCurrent();
      *buf = 138543874;
      errorCopy = error;
      v54 = 2048;
      v55 = v35;
      v56 = 2048;
      v57 = v36 - Current;
      _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed %ld pending writes in %0.3lfs.", buf, 0x20u);
    }

    [v12 invalidate];
    v37 = v21;
    v38 = v37;
    if (v37)
    {
      if (v42)
      {
        v39 = v37;
        *v42 = v38;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)performWriteWithMaximumLatency:(double)latency block:(id)block completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  v10 = [_HDDatabasePendingWriteRecord alloc];
  v11 = blockCopy;
  v12 = completionCopy;
  if (v10)
  {
    v27.receiver = v10;
    v27.super_class = _HDDatabasePendingWriteRecord;
    v10 = [(HDDatabaseCoalescedWritePool *)&v27 init];
    if (v10)
    {
      v13 = objc_msgSend_copy(v11);
      writeBlock = v10->_writeBlock;
      v10->_writeBlock = v13;

      v15 = objc_msgSend_copy(v12);
      completion = v10->_completion;
      v10->_completion = v15;
    }
  }

  quota = self->_quota;
  latencyCopy2 = latency;
  if (quota)
  {
    [(HDCoalescedTaskPoolQuota *)quota timeUntilNextAvailableTrigger];
    if (v19 >= latency)
    {
      latencyCopy2 = v19;
    }

    else
    {
      latencyCopy2 = latency;
    }
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_pendingWriteQueue addObject:v10];
  os_unfair_lock_unlock(&self->_lock);
  v20 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"PendingWriteOperation"];
  writeQueue = self->_writeQueue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__HDDatabaseCoalescedWritePool_performWriteWithMaximumLatency_block_completion___block_invoke;
  v23[3] = &unk_278616F60;
  latencyCopy3 = latency;
  v26 = latencyCopy2;
  v23[4] = self;
  v24 = v20;
  v22 = v20;
  dispatch_async(writeQueue, v23);
}

uint64_t __80__HDDatabaseCoalescedWritePool_performWriteWithMaximumLatency_block_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(v2 + 64);
    v7 = v3;
    [v6 timeUntilNextAvailableTrigger];
    v10 = 138544130;
    v11 = v2;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@:Pending Write with requested latency=%0.3lfs, adjusted latency=%0.3lfs, quota=%0.3lfs", &v10, 0x2Au);

    v2 = *(a1 + 32);
  }

  [*(v2 + 40) executeWithDelay:*(a1 + 56)];
  return [*(a1 + 40) invalidate];
}

- (void)flushPendingWriteQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDDatabaseCoalescedWritePool_flushPendingWriteQueueWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(writeQueue, v7);
}

void __69__HDDatabaseCoalescedWritePool_flushPendingWriteQueueWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [(HDDatabaseCoalescedWritePool *)v2 _queue_performPendingWriteOperationsWithError:?];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (uint64_t)_performPendingWriteRecords:(void *)records transaction:(void *)transaction accessibilityError:(uint64_t)error error:
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  recordsCopy = records;
  transactionCopy = transaction;
  if (self)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          if (v17)
          {
            v18 = *(v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          if (!(*(v18 + 16))(v18, recordsCopy, transactionCopy, error))
          {
            v20 = 0;
            goto LABEL_16;
          }

          ++v16;
        }

        while (v14 != v16);
        v19 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v14 = v19;
      }

      while (v19);
    }

    v20 = 1;
LABEL_16:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end