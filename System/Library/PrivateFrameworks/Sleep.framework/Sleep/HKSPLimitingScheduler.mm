@interface HKSPLimitingScheduler
- (HKSPLimitingScheduler)initWithScheduler:(id)scheduler;
- (HKSPLimitingScheduler)initWithScheduler:(id)scheduler mutexGenerator:(id)generator ignoreDelays:(BOOL)delays;
- (void)scheduleTask:(id)task;
@end

@implementation HKSPLimitingScheduler

- (HKSPLimitingScheduler)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = &__block_literal_global_21;
  v6 = [(HKSPLimitingScheduler *)self initWithScheduler:schedulerCopy mutexGenerator:&__block_literal_global_21];

  return v6;
}

- (HKSPLimitingScheduler)initWithScheduler:(id)scheduler mutexGenerator:(id)generator ignoreDelays:(BOOL)delays
{
  schedulerCopy = scheduler;
  generatorCopy = generator;
  v20.receiver = self;
  v20.super_class = HKSPLimitingScheduler;
  v10 = [(HKSPLimitingScheduler *)&v20 init];
  if (v10)
  {
    v11 = generatorCopy[2](generatorCopy);
    v12 = HKSPOrderPreservingScheduler(schedulerCopy, v11);
    orderPreservingScheduler = v10->_orderPreservingScheduler;
    v10->_orderPreservingScheduler = v12;

    v14 = generatorCopy[2](generatorCopy);
    mutexProvider = v10->_mutexProvider;
    v10->_mutexProvider = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    identifiers = v10->_identifiers;
    v10->_identifiers = v16;

    v10->_ignoreDelays = delays;
    v18 = v10;
  }

  return v10;
}

- (void)scheduleTask:(id)task
{
  v21 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  identifier = [taskCopy identifier];
  if (!identifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = [uUID UUIDString];

    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = identifier;
      v13 = v18;
      _os_log_debug_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] generating identifier %@ for task", buf, 0x16u);
    }
  }

  v8 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = identifier;
    v12 = v11;
    _os_log_debug_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] request to perform %@ task", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__HKSPLimitingScheduler_scheduleTask___block_invoke;
  v14[3] = &unk_279C75CC0;
  v14[4] = self;
  v15 = identifier;
  v16 = taskCopy;
  v9 = taskCopy;
  v10 = identifier;
  [(HKSPLimitingScheduler *)self _withLock:v14];
}

void __38__HKSPLimitingScheduler_scheduleTask___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  v3 = HKSPLogForCategory(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      *buf = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v12 = v10;
      _os_log_debug_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] %@ task already in progress", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v13 = objc_opt_class();
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = v13;
      [v14 delay];
      *buf = 138543874;
      v22 = v13;
      v23 = 2112;
      v24 = v15;
      v25 = 2048;
      v26 = v17;
      _os_log_debug_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] enqueuing %@ task with %f second delay", buf, 0x20u);
    }

    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    if (*(v5 + 32))
    {
      v7 = 0.0;
    }

    else
    {
      [*(a1 + 48) delay];
      v7 = v8;
      v5 = *(a1 + 32);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__HKSPLimitingScheduler_scheduleTask___block_invoke_293;
    v18[3] = &unk_279C75CC0;
    v18[4] = v5;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v9 = [v6 afterDelay:v18 performBlock:v7];
  }
}

void __38__HKSPLimitingScheduler_scheduleTask___block_invoke_293(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v7 = v5;
    _os_log_debug_impl(&dword_269A84000, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] performing %@ task", buf, 0x16u);
  }

  v3 = *(a1 + 32);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __38__HKSPLimitingScheduler_scheduleTask___block_invoke_294;
  v14 = &unk_279C73B58;
  v15 = v3;
  v16 = *(a1 + 40);
  [v3 _withLock:&v11];
  [*(a1 + 48) execute];
  v4 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v10 = v8;
    _os_log_debug_impl(&dword_269A84000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] finished %@ task", buf, 0x16u);
  }
}

@end