@interface ISOperation
- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byAuthenticatingWithContext:(id)context returningError:(id *)error;
- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byHandlingAuthenticateResponse:(id)response returningError:(id *)error;
- (BOOL)loadSoftwareMapReturningError:(id *)error;
- (BOOL)loadURLBagWithContext:(id)context returningError:(id *)error;
- (BOOL)runSubOperation:(id)operation onQueue:(id)queue error:(id *)error;
- (BOOL)runSubOperation:(id)operation returningError:(id *)error;
- (BOOL)shouldMessageMainThread;
- (BOOL)stopRunLoop;
- (ISOperation)init;
- (ISOperationDelegate)delegate;
- (NSArray)serializationLockIdentifiers;
- (SSOperationProgress)progress;
- (id)authenticatedAccountDSID;
- (id)copyActivePowerAssertionIdentifiers;
- (id)copySerializationLocks;
- (id)loadedURLBagWithContext:(id)context accountDSID:(id)d returningError:(id *)error;
- (int)runRunLoopUntilStopped;
- (unint64_t)authenticatedAccountCredentialSource;
- (void)_addSubOperation:(id)operation;
- (void)_failAfterException;
- (void)_main:(BOOL)_main;
- (void)_sendErrorToDelegate:(id)delegate;
- (void)_sendSuccessToDelegate;
- (void)_sendWillStartToDelegate;
- (void)cancel;
- (void)delegateDispatch:(id)dispatch;
- (void)dispatchCompletionBlock;
- (void)main;
- (void)releasePowerAssertionsDuringBlock:(id)block;
- (void)run;
- (void)run:(BOOL)run;
- (void)sendDidTakeSerializationLocks;
- (void)sendProgressToDelegate;
- (void)setDelegate:(id)delegate;
- (void)setSerializationLockIdentifiers:(id)identifiers;
- (void)setShouldMessageMainThread:(BOOL)thread;
@end

@implementation ISOperation

- (void)main
{
  v79 = *MEMORY[0x277D85DE8];
  v74 = AMSGenerateLogCorrelationKey();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v4) = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v4) = v4 | 2;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v75 = 138543618;
    v76 = objc_opt_class();
    v77 = 2114;
    v78 = v74;
    v6 = v76;
    v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Running", &v75, 22);

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
      free(v7);
      v67 = v8;
      SSFileLog();
    }
  }

  else
  {
  }

  uniqueKey = [(ISOperation *)self uniqueKey];
  if (uniqueKey)
  {
    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    v11 = ISUniqueOperationLock(uniqueKey, self, currentQueue);

    if (!v11 || ([v11 success] & 1) != 0 || (objc_msgSend(v11, "error"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[ISOperation shouldFailAfterUniquePredecessorError:](self, "shouldFailAfterUniquePredecessorError:", v12), v12, !v13))
    {
      v21 = 0;
      goto LABEL_29;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v15) = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v15) = v15 | 2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v75 = 138412290;
      v76 = v17;
      v18 = v17;
      LODWORD(v70) = 12;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Failing because predecessor failed", &v75, v70);

      if (!v19)
      {
LABEL_27:

        error = [v11 error];
        [(ISOperation *)self setError:error];

        v21 = 1;
LABEL_29:

        goto LABEL_31;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      v67 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_27;
  }

  v21 = 0;
LABEL_31:
  powerAssertionIdentifier = [(ISOperation *)self powerAssertionIdentifier];
  if (powerAssertionIdentifier)
  {
    v23 = +[ISDevice sharedInstance];
    v73 = [v23 takePowerAssertion:powerAssertionIdentifier];
  }

  else
  {
    v73 = 0;
  }

  if (![(ISOperation *)self shouldRunWithBackgroundPriority]|| (*__error() = 0, v24 = getpriority(3, 0), *__error()) || setpriority(3, 0, 4096))
  {
    v25 = 0;
    goto LABEL_38;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  v55 = os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG);
  v56 = shouldLog & 2;
  if (v55)
  {
    v56 = shouldLog;
  }

  if (!v56)
  {
    goto LABEL_87;
  }

  v72 = v56;
  v57 = objc_opt_class();
  v58 = oSLogObject3;
  v59 = mEMORY[0x277D69B38]3;
  v60 = v24;
  v61 = MEMORY[0x277CCACC8];
  v71 = v57;
  v62 = v61;
  v24 = v60;
  mEMORY[0x277D69B38]3 = v59;
  v63 = v58;
  currentThread = [v62 currentThread];
  v75 = 138412546;
  v76 = v57;
  v77 = 2048;
  v78 = currentThread;
  LODWORD(v70) = 22;
  v65 = currentThread;
  v66 = _os_log_send_and_compose_impl(v72, 0, 0, 0, &dword_275BC3000, v58, 2, "%@: Running with background priority for thread: %p", &v75, v70);

  if (v66)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v66 encoding:4];
    free(v66);
    v68 = oSLogObject3;
    SSFileLog();
LABEL_87:
  }

  v25 = v24 == 0;
LABEL_38:
  [(ISOperation *)self _main:v21, v68];
  if (v73)
  {
    v26 = +[ISDevice sharedInstance];
    [v26 releasePowerAssertion:powerAssertionIdentifier];
  }

  if (v25)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]4 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]4 shouldLogToDisk];
    oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
    v31 = oSLogObject4;
    if (shouldLogToDisk)
    {
      shouldLog2 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      v32 = shouldLog2;
    }

    else
    {
      v32 = shouldLog2 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      currentThread2 = [MEMORY[0x277CCACC8] currentThread];
      v75 = 138412546;
      v76 = v33;
      v77 = 2048;
      v78 = currentThread2;
      LODWORD(v70) = 22;
      v35 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_275BC3000, v31, 2, "%@: Restoring normal priority for thread: %p", &v75, v70);

      if (!v35)
      {
LABEL_52:

        setpriority(3, 0, 0);
        goto LABEL_53;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
      free(v35);
      v69 = v31;
      SSFileLog();
    }

    goto LABEL_52;
  }

LABEL_53:
  if (uniqueKey)
  {
    currentQueue2 = [MEMORY[0x277CCABD8] currentQueue];
    ISUniqueOperationUnlock(uniqueKey, self, currentQueue2);
  }

  v37 = +[ISUniqueOperationManager sharedInstance];
  [v37 checkOutOperation:self];

  error2 = [(ISOperation *)self error];

  if (error2)
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v40) = [mEMORY[0x277D69B38]5 shouldLog];
    shouldLogToDisk2 = [mEMORY[0x277D69B38]5 shouldLogToDisk];
    oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
    v43 = oSLogObject5;
    if (shouldLogToDisk2)
    {
      LODWORD(v40) = v40 | 2;
    }

    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      v40 = v40;
    }

    else
    {
      v40 &= 2u;
    }

    if (!v40)
    {
      goto LABEL_76;
    }

    v44 = objc_opt_class();
    v75 = 138543618;
    v76 = v44;
    v77 = 2114;
    v78 = v74;
    v45 = v44;
    LODWORD(v70) = 22;
    v46 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, v43, 16, "%{public}@: [%{public}@] Finished", &v75, v70);

    if (v46)
    {
LABEL_75:
      v43 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:4];
      free(v46);
      SSFileLog();
LABEL_76:
    }
  }

  else
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v47) = [mEMORY[0x277D69B38]5 shouldLog];
    shouldLogToDisk3 = [mEMORY[0x277D69B38]5 shouldLogToDisk];
    oSLogObject6 = [mEMORY[0x277D69B38]5 OSLogObject];
    v43 = oSLogObject6;
    if (shouldLogToDisk3)
    {
      LODWORD(v47) = v47 | 2;
    }

    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v47;
    }

    else
    {
      v47 &= 2u;
    }

    if (!v47)
    {
      goto LABEL_76;
    }

    v50 = objc_opt_class();
    v75 = 138543618;
    v76 = v50;
    v77 = 2114;
    v78 = v74;
    v51 = v50;
    LODWORD(v70) = 22;
    v46 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_275BC3000, v43, 0, "%{public}@: [%{public}@] Finished", &v75, v70);

    if (v46)
    {
      goto LABEL_75;
    }
  }
}

- (ISOperationDelegate)delegate
{
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(ISOperation *)self unlock];

  return WeakRetained;
}

- (void)_sendWillStartToDelegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__ISOperation__sendWillStartToDelegate__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = delegate;
    selfCopy = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (void)_sendSuccessToDelegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__ISOperation__sendSuccessToDelegate__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = delegate;
    selfCopy = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (ISOperation)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISOperation.m", 47, a2);
  v7.receiver = self;
  v7.super_class = ISOperation;
  v3 = [(ISOperation *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (SSOperationProgress)progress
{
  [(ISOperation *)self lock];
  v3 = self->_progress;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  [(ISOperation *)self setError:0];

  [(ISOperation *)self setSuccess:1];
}

- (int)runRunLoopUntilStopped
{
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__keepAliveTimer_ selector:0 userInfo:0 repeats:1.79769313e308];
  self->_stopped = 0;
  v4 = *MEMORY[0x277CBF058];
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CFRunLoopRunInMode(v4, 10.0, 1u);
    objc_autoreleasePoolPop(v5);
  }

  while (!self->_stopped && (v6 - 1) > 1);
  [v3 invalidate];

  return v6;
}

- (BOOL)runSubOperation:(id)operation returningError:(id *)error
{
  operationCopy = operation;
  if (([operationCopy isCancelled] & 1) == 0)
  {
    [operationCopy setParentOperation:self];
    [(ISOperation *)self lock];
    [(ISOperation *)self _addSubOperation:operationCopy];
    [(ISOperation *)self unlock];
    v7 = +[ISUniqueOperationManager sharedInstance];
    [v7 checkInOperation:operationCopy];

    [operationCopy main];
    [operationCopy dispatchCompletionBlock];
    [operationCopy setParentOperation:0];
    [(ISOperation *)self lock];
    [(ISOperation *)self _removeSubOperation:operationCopy];
    [(ISOperation *)self unlock];
  }

  if (error)
  {
    *error = [operationCopy error];
  }

  success = [operationCopy success];

  return success;
}

- (BOOL)runSubOperation:(id)operation onQueue:(id)queue error:(id *)error
{
  operationCopy = operation;
  queueCopy = queue;
  if (([operationCopy isCancelled] & 1) == 0)
  {
    [operationCopy setParentOperation:self];
    [(ISOperation *)self lock];
    [(ISOperation *)self _addSubOperation:operationCopy];
    [(ISOperation *)self unlock];
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:operationCopy];
    [queueCopy addOperations:v10 waitUntilFinished:1];

    [operationCopy setParentOperation:0];
    [(ISOperation *)self lock];
    [(ISOperation *)self _removeSubOperation:operationCopy];
    [(ISOperation *)self unlock];
  }

  if (error)
  {
    *error = [operationCopy error];
  }

  success = [operationCopy success];

  return success;
}

- (BOOL)stopRunLoop
{
  v21 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  v3 = [(NSMutableArray *)self->_subOperations copy];
  [(ISOperation *)self unlock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v16 + 1) + 8 * i) stopRunLoop])
        {
          v11 = 1;
          v10 = v4;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  operationRunLoop = [(ISOperation *)self operationRunLoop];
  v10 = operationRunLoop;
  v11 = operationRunLoop != 0;
  if (operationRunLoop)
  {
    getCFRunLoop = [operationRunLoop getCFRunLoop];
    v13 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__ISOperation_stopRunLoop__block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    CFRunLoopPerformBlock(getCFRunLoop, v13, block);
    CFRunLoopWakeUp(getCFRunLoop);
    CFRunLoopStop(getCFRunLoop);
    v11 = 1;
  }

LABEL_12:

  return v11;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(ISOperation *)self lock];
  objc_storeWeak(&self->_delegate, delegateCopy);

  [(ISOperation *)self unlock];
}

- (void)setShouldMessageMainThread:(BOOL)thread
{
  [(ISOperation *)self lock];
  self->_shouldMessageMainThread = thread;

  [(ISOperation *)self unlock];
}

- (BOOL)shouldMessageMainThread
{
  [(ISOperation *)self lock];
  shouldMessageMainThread = self->_shouldMessageMainThread;
  [(ISOperation *)self unlock];
  return shouldMessageMainThread;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ISOperation;
  [(ISOperation *)&v4 cancel];
  [(ISOperation *)self lock];
  v3 = [(NSMutableArray *)self->_subOperations copy];
  [(ISOperation *)self unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
  [(ISOperation *)self stopRunLoop];
}

- (id)copyActivePowerAssertionIdentifiers
{
  parentOperation = [(ISOperation *)self parentOperation];
  v4 = parentOperation;
  if (parentOperation)
  {
    copyActivePowerAssertionIdentifiers = [parentOperation copyActivePowerAssertionIdentifiers];
  }

  else
  {
    copyActivePowerAssertionIdentifiers = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v6 = copyActivePowerAssertionIdentifiers;
  powerAssertionIdentifier = [(ISOperation *)self powerAssertionIdentifier];
  if (powerAssertionIdentifier)
  {
    [v6 addObject:powerAssertionIdentifier];
  }

  return v6;
}

- (id)copySerializationLocks
{
  v17 = *MEMORY[0x277D85DE8];
  serializationLockIdentifiers = [(ISOperation *)self serializationLockIdentifiers];
  if ([serializationLockIdentifiers count])
  {
    v3 = +[ISUniqueOperationManager sharedInstance];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = serializationLockIdentifiers;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v3 lockWithIdentifier:{*(*(&v12 + 1) + 8 * v9), v12}];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)delegateDispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  if ([(ISOperation *)self shouldMessageMainThread])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ISOperation_delegateDispatch___block_invoke;
    block[3] = &unk_27A670840;
    v6 = dispatchCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  else
  {
    dispatchCopy[2](dispatchCopy);
  }
}

- (void)dispatchCompletionBlock
{
  completionBlock = [(ISOperation *)self completionBlock];

  if (completionBlock)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ISOperation_dispatchCompletionBlock__block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __38__ISOperation_dispatchCompletionBlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) completionBlock];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)releasePowerAssertionsDuringBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  copyActivePowerAssertionIdentifiers = [(ISOperation *)self copyActivePowerAssertionIdentifiers];
  v6 = +[ISDevice sharedInstance];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v11 = objc_opt_class();
    v12 = v11;
    v34 = 138412546;
    v35 = v11;
    v36 = 2048;
    v37 = [copyActivePowerAssertionIdentifiers count];
    v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Temporarily disable %lu power assertions", &v34, 22);

    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
      free(v13);
      v23 = v14;
      SSFileLog();
    }
  }

  else
  {
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = copyActivePowerAssertionIdentifiers;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v16)
  {
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [v6 releasePowerAssertion:{*(*(&v28 + 1) + 8 * i), v23}];
      }

      v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v16);
  }

  blockCopy[2](blockCopy);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v20)
  {
    v21 = *v25;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [v6 takePowerAssertion:{*(*(&v24 + 1) + 8 * j), v23}];
      }

      v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)run:(BOOL)run
{
  if (!run)
  {
    [(ISOperation *)self run];
  }
}

- (void)sendDidTakeSerializationLocks
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__ISOperation_sendDidTakeSerializationLocks__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = delegate;
    selfCopy = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (void)sendProgressToDelegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(ISOperation *)self lock];
    v4 = [(SSOperationProgress *)self->_progress copy];
    [(ISOperation *)self unlock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__ISOperation_sendProgressToDelegate__block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = v4;
    v5 = v4;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (NSArray)serializationLockIdentifiers
{
  [(ISOperation *)self lock];
  v3 = self->_serializationLockIdentifiers;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setSerializationLockIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(ISOperation *)self lock];
  if (self->_serializationLockIdentifiers != identifiersCopy)
  {
    v4 = [(NSArray *)identifiersCopy copy];
    serializationLockIdentifiers = self->_serializationLockIdentifiers;
    self->_serializationLockIdentifiers = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)_addSubOperation:(id)operation
{
  operationCopy = operation;
  subOperations = self->_subOperations;
  v8 = operationCopy;
  if (!subOperations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subOperations;
    self->_subOperations = v6;

    operationCopy = v8;
    subOperations = self->_subOperations;
  }

  [(NSMutableArray *)subOperations addObject:operationCopy];
}

- (void)_failAfterException
{
  error = [(ISOperation *)self error];
  if (!error)
  {
    v4 = ISError(0, 0, 0);
    [(ISOperation *)self setError:v4];
    error = v4;
  }

  v5 = error;
  [(ISOperation *)self _sendErrorToDelegate:error];
}

- (void)_main:(BOOL)_main
{
  _mainCopy = _main;
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(ISOperation *)self setOperationRunLoop:currentRunLoop];

  delegate = [(ISOperation *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    [(ISOperation *)self lock];
    v8 = objc_alloc_init(MEMORY[0x277D69BE0]);
    progress = self->_progress;
    self->_progress = v8;

    [(SSOperationProgress *)self->_progress setMaxValue:1];
    [(ISOperation *)self unlock];
    [(ISOperation *)self sendProgressToDelegate];
  }

  [(ISOperation *)self _sendWillStartToDelegate];
  [(ISOperation *)self run:_mainCopy];
  if ([(ISOperation *)self success])
  {
    if (v7)
    {
      [(ISOperation *)self lock];
      [(SSOperationProgress *)self->_progress setCurrentValue:[(SSOperationProgress *)self->_progress maxValue]];
      [(SSOperationProgress *)self->_progress setEstimatedTimeRemaining:-1.0];
      [(ISOperation *)self unlock];
      [(ISOperation *)self sendProgressToDelegate];
    }

    [(ISOperation *)self _sendSuccessToDelegate];
  }

  else
  {
    error = [(ISOperation *)self error];
    [(ISOperation *)self _sendErrorToDelegate:error];
  }

  [(ISOperation *)self lock];
  v11 = self->_progress;
  self->_progress = 0;

  [(ISOperation *)self unlock];

  [(ISOperation *)self setOperationRunLoop:0];
}

- (void)_sendErrorToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__ISOperation__sendErrorToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (id)loadedURLBagWithContext:(id)context accountDSID:(id)d returningError:(id *)error
{
  dCopy = d;
  contextCopy = context;
  v10 = [[ISLoadURLBagOperation alloc] initWithBagContext:contextCopy];

  [(ISLoadURLBagOperation *)v10 setAccountDSID:dCopy];
  v15 = 0;
  LODWORD(dCopy) = [(ISOperation *)self runSubOperation:v10 returningError:&v15];
  v11 = v15;
  uRLBag = 0;
  if (dCopy)
  {
    uRLBag = [(ISLoadURLBagOperation *)v10 URLBag];
  }

  if (error && !uRLBag)
  {
    v13 = v11;
    *error = v11;
  }

  return uRLBag;
}

- (BOOL)loadURLBagWithContext:(id)context returningError:(id *)error
{
  contextCopy = context;
  v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:contextCopy];

  v13 = 0;
  v8 = [(ISOperation *)self runSubOperation:v7 returningError:&v13];
  v9 = v13;
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  return v8;
}

- (BOOL)loadSoftwareMapReturningError:(id *)error
{
  v8 = 0;
  v5 = objc_alloc_init(ISLoadSoftwareMapOperation);
  v6 = [(ISOperation *)self runSubOperation:v5 returningError:&v8];

  if (error)
  {
    *error = v8;
  }

  return v6;
}

- (unint64_t)authenticatedAccountCredentialSource
{
  parentOperation = [(ISOperation *)self parentOperation];

  return [(ISOperation *)parentOperation authenticatedAccountCredentialSource];
}

- (id)authenticatedAccountDSID
{
  parentOperation = [(ISOperation *)self parentOperation];

  return [(ISOperation *)parentOperation authenticatedAccountDSID];
}

- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byAuthenticatingWithContext:(id)context returningError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v10 = [[ISStoreAuthenticateOperation alloc] initWithAuthenticationContext:context];
  if (v10)
  {
    if ([(ISOperation *)self runSubOperation:v10 returningError:&v21])
    {
      authenticatedAccountDSID = [(ISStoreAuthenticateOperation *)v10 authenticatedAccountDSID];
      authenticatedAccountCredentialSource = [(ISOperation *)v10 authenticatedAccountCredentialSource];
      v13 = 1;
    }

    else
    {
      authenticatedAccountCredentialSource = 0;
      authenticatedAccountDSID = 0;
      v13 = 0;
    }
  }

  else
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Could not create authentication operation.", &v22, 12);
      if (v18)
      {
        v19 = v18;
        [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
        free(v19);
        SSFileLog();
      }
    }

    authenticatedAccountCredentialSource = 0;
    authenticatedAccountDSID = 0;
    v13 = 0;
    v21 = ISError(4, 0, 0);
  }

  if (d)
  {
    *d = authenticatedAccountDSID;
    if (!source)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (source)
  {
LABEL_19:
    *source = authenticatedAccountCredentialSource;
  }

LABEL_20:
  if (error)
  {
    *error = v21;
  }

  return v13;
}

- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byHandlingAuthenticateResponse:(id)response returningError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  responseDictionary = [response responseDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfigOversize];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v25 = 138412546;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = responseDictionary;
      v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "[%@]: What do we do with this: %@", &v25, 22);
      if (v15)
      {
        v16 = v15;
        v17 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:4];
        free(v16);
        v23 = v17;
        SSFileLog();
      }
    }
  }

  v18 = [ISStoreAuthenticateOperation _copyErrorForAuthenticateResponse:response error:&v24, v23];
  if (v18)
  {
    v19 = [objc_msgSend(response "authenticatedAccount")];
    credentialSource = [response credentialSource];
    if (d)
    {
      goto LABEL_15;
    }
  }

  else
  {
    credentialSource = 0;
    v19 = 0;
    if (d)
    {
LABEL_15:
      *d = v19;
      if (!source)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if (source)
  {
LABEL_16:
    *source = credentialSource;
  }

LABEL_17:
  if (error)
  {
    v21 = v18;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    *error = v24;
  }

  return v18;
}

@end