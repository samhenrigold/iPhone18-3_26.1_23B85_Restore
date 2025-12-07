@interface NPKWorkQueue
- (NPKWorkQueue)initWithQueue:(id)queue takeOutTransactions:(BOOL)transactions;
- (void)_onQueue_doWorkIfNecessary;
- (void)dealloc;
- (void)flush;
- (void)performWork:(id)work;
@end

@implementation NPKWorkQueue

- (NPKWorkQueue)initWithQueue:(id)queue takeOutTransactions:(BOOL)transactions
{
  transactionsCopy = transactions;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = NPKWorkQueue;
  v7 = [(NPKWorkQueue *)&v11 init];
  if (v7)
  {
    v8 = dispatch_queue_create(0, 0);
    [(NPKWorkQueue *)v7 setQueue:v8];

    array = [MEMORY[0x277CBEB18] array];
    [(NPKWorkQueue *)v7 setRemainingWork:array];

    [(NPKWorkQueue *)v7 setCallbackQueue:queueCopy];
    [(NPKWorkQueue *)v7 setTakeOutTransactions:transactionsCopy];
  }

  return v7;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_remainingWork count];
  if (v3)
  {
    v4 = pk_General_log(v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        workQueueName = self->_workQueueName;
        v9 = [(NSMutableArray *)self->_remainingWork count];
        *buf = 134218498;
        selfCopy = self;
        v13 = 2112;
        v14 = workQueueName;
        v15 = 2048;
        v16 = v9;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: deallocating NPKWorkQueueItem:%p, %@ has %lu remaining work items.", buf, 0x20u);
      }
    }

    [(NSMutableArray *)self->_remainingWork enumerateObjectsUsingBlock:&__block_literal_global_20];
  }

  v10.receiver = self;
  v10.super_class = NPKWorkQueue;
  [(NPKWorkQueue *)&v10 dealloc];
}

void __23__NPKWorkQueue_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 transaction];
  [v2 invalidate];
}

- (void)_onQueue_doWorkIfNecessary
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(NPKWorkQueue *)self performingWork])
  {
    remainingWork = [(NPKWorkQueue *)self remainingWork];
    v4 = [remainingWork count];

    if (v4)
    {
      [(NPKWorkQueue *)self setPerformingWork:1];
      remainingWork2 = [(NPKWorkQueue *)self remainingWork];
      firstObject = [remainingWork2 firstObject];

      remainingWork3 = [(NPKWorkQueue *)self remainingWork];
      [remainingWork3 removeObjectAtIndex:0];

      workBlock = [firstObject workBlock];
      transaction = [firstObject transaction];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke;
      aBlock[3] = &unk_2799454E0;
      aBlock[4] = self;
      v10 = transaction;
      v23 = v10;
      v11 = _Block_copy(aBlock);
      v12 = pk_Payment_log(v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v15 = pk_Payment_log(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          workQueueName = [(NPKWorkQueue *)self workQueueName];
          *buf = 138412290;
          v25 = workQueueName;
          _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@: starting next work block", buf, 0xCu);
        }
      }

      callbackQueue = [(NPKWorkQueue *)self callbackQueue];

      if (callbackQueue)
      {
        callbackQueue2 = [(NPKWorkQueue *)self callbackQueue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke_6;
        v19[3] = &unk_2799486C0;
        v20 = workBlock;
        v21 = v11;
        dispatch_async(callbackQueue2, v19);
      }

      else
      {
        (workBlock)[2](workBlock, v11);
      }
    }
  }
}

void __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) workQueueName];
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@: ended work block", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v7 = pk_General_log(v4);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_General_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: ending XPC transaction for work", buf, 2u);
      }
    }

    [*(a1 + 40) invalidate];
  }

  v11 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke_3;
  block[3] = &unk_279944F98;
  block[4] = *(a1 + 32);
  dispatch_async(v11, block);
}

uint64_t __42__NPKWorkQueue__onQueue_doWorkIfNecessary__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) performingWork];
  if ((v2 & 1) == 0)
  {
    v3 = pk_General_log(v2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 136446722;
        v9 = "[NPKWorkQueue _onQueue_doWorkIfNecessary]_block_invoke";
        v10 = 2082;
        v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKWorkQueue.m";
        v12 = 2048;
        v13 = 78;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: NPKWorkQueue was performing work, but somehow self.performingWork was NO)", &v8, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [*(a1 + 32) setPerformingWork:0];
  return [*(a1 + 32) _onQueue_doWorkIfNecessary];
}

- (void)performWork:(id)work
{
  workCopy = work;
  takeOutTransactions = [(NPKWorkQueue *)self takeOutTransactions];
  if (takeOutTransactions)
  {
    v6 = pk_General_log(takeOutTransactions);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_General_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: taking out XPC transaction for work", buf, 2u);
      }
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Work queue: %@ Item transaction", self->_workQueueName];
    v11 = [NPKOSTransaction transactionWithName:v10];
  }

  else
  {
    v11 = 0;
  }

  queue = [(NPKWorkQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__NPKWorkQueue_performWork___block_invoke;
  block[3] = &unk_279945A48;
  block[4] = self;
  v16 = v11;
  v17 = workCopy;
  v13 = workCopy;
  v14 = v11;
  dispatch_async(queue, block);
}

uint64_t __28__NPKWorkQueue_performWork___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remainingWork];
  v3 = [NPKWorkQueueItem itemWithTransaction:*(a1 + 40) work:*(a1 + 48)];
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _onQueue_doWorkIfNecessary];
}

- (void)flush
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      workQueueName = self->_workQueueName;
      *buf = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = workQueueName;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@, %@: Requested to flush pending works", buf, 0x16u);
    }
  }

  queue = [(NPKWorkQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__NPKWorkQueue_flush__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(queue, block);
}

void __21__NPKWorkQueue_flush__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remainingWork];
  [v2 removeAllObjects];

  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Work queue %@, %@: Flushed pending works", &v10, 0x16u);
    }
  }
}

@end