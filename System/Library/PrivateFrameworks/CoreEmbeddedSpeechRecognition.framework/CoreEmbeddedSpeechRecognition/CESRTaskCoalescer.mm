@interface CESRTaskCoalescer
+ (BOOL)isTaskCoalescenceDisabled;
+ (void)setTaskCoalescenceDisabled:(BOOL)disabled;
- (BOOL)_didIncomingTask:(id)task arriveInCoalescingWindowWithLastTask:(id)lastTask;
- (CESRTaskCoalescer)init;
- (CESRTaskCoalescer)initWithManagerName:(id)name coalescenceInterval:(double)interval coalescenceDelay:(double)delay executionQueue:(id)queue;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)submitTaskWithId:(unsigned __int16)id taskBlock:(id)block completion:(id)completion;
- (void)wait;
@end

@implementation CESRTaskCoalescer

- (BOOL)_didIncomingTask:(id)task arriveInCoalescingWindowWithLastTask:(id)lastTask
{
  lastTaskCopy = lastTask;
  date = [task date];
  [date timeIntervalSince1970];
  v9 = v8;
  date2 = [lastTaskCopy date];

  [date2 timeIntervalSince1970];
  v12 = v9 - v11;

  return v12 < self->_coalescenceInterval;
}

- (void)_endTransaction
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_transactionCounter - 1;
  selfCopy->_transactionCounter = v3;
  if (!v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      managerName = selfCopy->_managerName;
      transaction = selfCopy->_transaction;
      v8 = 136315650;
      v9 = "[CESRTaskCoalescer _endTransaction]";
      v10 = 2112;
      v11 = managerName;
      v12 = 2112;
      v13 = transaction;
      _os_log_debug_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEBUG, "%s (%@) Releasing OS transaction: %@", &v8, 0x20u);
    }

    v5 = selfCopy->_transaction;
    selfCopy->_transaction = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)_beginTransaction
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transactionCounter = selfCopy->_transactionCounter;
  selfCopy->_transactionCounter = transactionCounter + 1;
  if (!transactionCounter)
  {
    v4 = os_transaction_create();
    transaction = selfCopy->_transaction;
    selfCopy->_transaction = v4;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      managerName = selfCopy->_managerName;
      v8 = selfCopy->_transaction;
      v9 = 136315650;
      v10 = "[CESRTaskCoalescer _beginTransaction]";
      v11 = 2112;
      v12 = managerName;
      v13 = 2112;
      v14 = v8;
      _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s (%@) Acquired OS transaction: %@", &v9, 0x20u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)wait
{
  dispatch_sync(self->_taskRegistryQueue, &__block_literal_global_196);
  taskExecutionQueue = self->_taskExecutionQueue;

  dispatch_sync(taskExecutionQueue, &__block_literal_global_55);
}

- (void)submitTaskWithId:(unsigned __int16)id taskBlock:(id)block completion:(id)completion
{
  idCopy = id;
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  [(CESRTaskCoalescer *)self _beginTransaction];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:idCopy];
  v11 = MEMORY[0x277CCABB0];
  atomic_fetch_add(&self->_eventIdCounter, 1u);
  v12 = [v11 numberWithUnsignedInteger:?];
  v13 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    managerName = self->_managerName;
    *buf = 136315906;
    v33 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]";
    v34 = 2112;
    v35 = managerName;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v12;
    _os_log_debug_impl(&dword_225EEB000, v13, OS_LOG_TYPE_DEBUG, "%s (%@) Received task with taskId: %@ and eventId: %@", buf, 0x2Au);
  }

  v14 = [MEMORY[0x277CBEAA8] now];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke;
  aBlock[3] = &unk_27857FF48;
  aBlock[4] = self;
  v31 = completionCopy;
  v15 = completionCopy;
  v16 = _Block_copy(aBlock);
  taskRegistryQueue = self->_taskRegistryQueue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_2;
  v24[3] = &unk_27857F1A8;
  v24[4] = self;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  v28 = v16;
  v29 = blockCopy;
  v18 = blockCopy;
  v19 = v14;
  v20 = v16;
  v21 = v12;
  v22 = v10;
  dispatch_async(taskRegistryQueue, v24);
}

uint64_t __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _endTransaction];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = +[CESRTaskCoalescer isTaskCoalescenceDisabled];
  if (v2)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 8);
      v6 = *(a1 + 48);
      *buf = 136315906;
      v28 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke_2";
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = v4;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s (%@) Task coalescence is currently disabled (taskId: %@ eventId: %@)", buf, 0x2Au);
    }
  }

  v7 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v8 = v7;
  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1;
  }

  if (v9 & 1) != 0 || ([v7 isExecuted])
  {
    v10 = [[CESRCoalescedTask alloc] initWithTaskId:*(a1 + 40) eventId:*(a1 + 48) date:*(a1 + 56) taskBlock:*(a1 + 72) completionQueue:*(*(a1 + 32) + 56) completion:*(a1 + 64)];
    [*(*(a1 + 32) + 24) setObject:v10 forKey:*(a1 + 40)];
    if ((v9 & 1) != 0 || ![*(a1 + 32) _didIncomingTask:v10 arriveInCoalescingWindowWithLastTask:v8])
    {
      v18 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v24 = *(*(a1 + 32) + 8);
        *buf = 136315650;
        v28 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
        v29 = 2112;
        v30 = v24;
        v31 = 2112;
        v32 = v10;
        _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s (%@) Enqueueing incoming task for execution - %@", buf, 0x20u);
      }

      v19 = *(*(a1 + 32) + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_53;
      block[3] = &unk_27857FFE8;
      v26 = v10;
      dispatch_async(v19, block);
    }

    else
    {
      v11 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 8);
        v14 = MEMORY[0x277CCABB0];
        v15 = *(v12 + 48);
        v16 = v11;
        v17 = [v14 numberWithDouble:v15];
        *buf = 136315906;
        v28 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v17;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s (%@) Delaying %@s before executing incoming task within coalescing window - (%@)", buf, 0x2Au);
      }

      [(CESRCoalescedTask *)v10 executeAfterDelay:*(*(a1 + 32) + 64) onQueue:*(*(a1 + 32) + 48)];
    }
  }

  else
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      v22 = *(*(a1 + 32) + 8);
      v23 = *(a1 + 48);
      *buf = 136316162;
      v28 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_225EEB000, v20, OS_LOG_TYPE_INFO, "%s (%@) Dropping incoming task (taskId: %@ eventId: %@) as a task with the same taskId is already enqueued and has not been executed: (%@)", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (CESRTaskCoalescer)initWithManagerName:(id)name coalescenceInterval:(double)interval coalescenceDelay:(double)delay executionQueue:(id)queue
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = CESRTaskCoalescer;
  v12 = [(CESRTaskCoalescer *)&v33 init];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [nameCopy copy];
  managerName = v12->_managerName;
  v12->_managerName = v13;

  if (![(NSString *)v12->_managerName length])
  {
    v23 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v24 = v12->_managerName;
      *buf = 136315394;
      v35 = "[CESRTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:executionQueue:]";
      v36 = 2112;
      v37 = v24;
      _os_log_error_impl(&dword_225EEB000, v23, OS_LOG_TYPE_ERROR, "%s Manager name must be nonempty. Received: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  atomic_store(0, &v12->_eventIdCounter);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  taskRegistry = v12->_taskRegistry;
  v12->_taskRegistry = v15;

  transaction = v12->_transaction;
  v12->_transaction = 0;

  v12->_transactionCounter = 0;
  v12->_coalescenceInterval = interval;
  if (interval <= 0.0)
  {
    v25 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v22 = 0;
      goto LABEL_13;
    }

    v26 = MEMORY[0x277CCABB0];
    v27 = v25;
    v28 = [v26 numberWithDouble:interval];
    *buf = 136315394;
    v35 = "[CESRTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:executionQueue:]";
    v36 = 2112;
    v37 = v28;
    v29 = "%s Coalescence interval must be greater than 0. Received: %@";
LABEL_15:
    _os_log_error_impl(&dword_225EEB000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);

    goto LABEL_12;
  }

  v12->_coalescenceDelay = delay;
  if (delay <= 0.0)
  {
    v30 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v32 = MEMORY[0x277CCABB0];
    v27 = v30;
    v28 = [v32 numberWithDouble:delay];
    *buf = 136315394;
    v35 = "[CESRTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:executionQueue:]";
    v36 = 2112;
    v37 = v28;
    v29 = "%s Coalescence delay must be greater than 0. Received: %@";
    goto LABEL_15;
  }

  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_DEFAULT, 0);
  v20 = dispatch_queue_create("taskRegistryQueue", v19);
  taskRegistryQueue = v12->_taskRegistryQueue;
  v12->_taskRegistryQueue = v20;

  objc_storeStrong(&v12->_taskExecutionQueue, queue);
LABEL_6:
  v22 = v12;
LABEL_13:

  return v22;
}

- (CESRTaskCoalescer)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (void)setTaskCoalescenceDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = @"Enabling";
    if (disabledCopy)
    {
      v5 = @"Disabling";
    }

    v8 = 136315394;
    v9 = "+[CESRTaskCoalescer setTaskCoalescenceDisabled:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s %@ task coalescence.", &v8, 0x16u);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:disabledCopy];
  [standardUserDefaults setObject:v7 forKey:@"Disable Coalescence"];
}

+ (BOOL)isTaskCoalescenceDisabled
{
  if (+[CESRUtilities isCustomerInstall])
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"Disable Coalescence"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end