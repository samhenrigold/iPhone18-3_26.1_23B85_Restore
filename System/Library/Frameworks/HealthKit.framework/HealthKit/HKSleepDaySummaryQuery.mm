@interface HKSleepDaySummaryQuery
+ (void)configureClientInterface:(id)interface;
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (HKSleepDaySummaryQuery)initWithMorningIndexRange:(id)range ascending:(BOOL)ascending limit:(int64_t)limit options:(unint64_t)options resultsHandler:(id)handler;
- (void)client_deliverDaySummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
- (void)setCacheSettings:(id)settings;
- (void)setCalendarOverrides:(id)overrides;
@end

@implementation HKSleepDaySummaryQuery

- (HKSleepDaySummaryQuery)initWithMorningIndexRange:(id)range ascending:(BOOL)ascending limit:(int64_t)limit options:(unint64_t)options resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = HKSleepDaySummaryQuery;
  v14 = [(HKQuery *)&v27 _initWithObjectType:0 predicate:0];
  v16 = v14;
  if (v14)
  {
    v14->_morningIndexRange.start = var0;
    v14->_morningIndexRange.duration = var1;
    if (var0 >= 1 && var1 <= 0)
    {
      _HKInitializeLogging(v14, v15);
      v17 = HKLogSleep;
      if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_FAULT))
      {
        v23 = v17;
        v24 = objc_opt_class();
        v26 = v24;
        debugIdentifier = [(HKQuery *)v16 debugIdentifier];
        *buf = 138544130;
        v29 = v24;
        v30 = 2114;
        v31 = debugIdentifier;
        v32 = 2048;
        v33 = var0;
        v34 = 2048;
        v35 = var1;
        _os_log_fault_impl(&dword_19197B000, v23, OS_LOG_TYPE_FAULT, "[%{public}@:%{public}@] Morning index range (start %ld duration %ld) has an incorrect duration", buf, 0x2Au);
      }
    }

    v16->_ascending = ascending;
    v16->_limit = limit;
    v16->_options = options;
    v18 = [handlerCopy copy];
    resultsHandler = v16->_resultsHandler;
    v16->_resultsHandler = v18;

    cacheSettings = v16->_cacheSettings;
    v16->_cacheSettings = 0;

    calendarOverrides = v16->_calendarOverrides;
    v16->_calendarOverrides = 0;
  }

  return v16;
}

- (void)setCacheSettings:(id)settings
{
  settingsCopy = settings;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__HKSleepDaySummaryQuery_setCacheSettings___block_invoke;
  v8[3] = &unk_1E7378400;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

uint64_t __43__HKSleepDaySummaryQuery_setCacheSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setCalendarOverrides:(id)overrides
{
  overridesCopy = overrides;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKSleepDaySummaryQuery_setCalendarOverrides___block_invoke;
  v8[3] = &unk_1E7378400;
  v8[4] = self;
  v9 = overridesCopy;
  v7 = overridesCopy;
  dispatch_sync(queue, v8);
}

uint64_t __47__HKSleepDaySummaryQuery_setCalendarOverrides___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)client_deliverDaySummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  summariesCopy = summaries;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v15[4] = self;
  v16 = summariesCopy;
  pendingCopy = pending;
  batchCopy = batch;
  v17 = dCopy;
  v13 = dCopy;
  v14 = summariesCopy;
  dispatch_async(queue, v15);
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging(a1, a2);
  v3 = HKLogSleep;
  if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG))
  {
    __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(a1, v3);
  }

  v4 = *(*(a1 + 32) + 160);
  if (v4 && *(a1 + 56) != 1)
  {
    [v4 addObjectsFromArray:*(a1 + 40)];
  }

  else
  {
    v5 = [*(a1 + 40) mutableCopy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    *(v6 + 160) = v5;
  }

  if (*(a1 + 57) == 1)
  {
    v8 = [*(*(a1 + 32) + 160) copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 160);
    *(v9 + 160) = 0;

    v11 = _Block_copy(*(*(a1 + 32) + 152));
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27;
      v16[3] = &unk_1E73766C8;
      v14 = v8;
      v15 = *(a1 + 32);
      v17 = v14;
      v18 = v15;
      v19 = v11;
      [v12 queue_dispatchToClientForUUID:v13 shouldDeactivate:1 block:v16];
    }
  }
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 hk_addDayIndex:{objc_msgSend(*(*(&v32 + 1) + 8 * i), "morningIndex")}];
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v5);
  }

  _HKInitializeLogging(v8, v9);
  v10 = HKLogSleep;
  if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v14 = v12;
    v15 = [v13 debugIdentifier];
    *buf = 138543874;
    v38 = v12;
    v39 = 2114;
    v40 = v15;
    v41 = 2114;
    v42 = v2;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Delivering summaries for: %{public}@", buf, 0x20u);
  }

  if (HKShowSensitiveLogItems())
  {
    v16 = os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      _HKInitializeLogging(v16, v17);
      v18 = HKLogSleep;
      if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG))
      {
        __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27_cold_1(a1, v18);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = a1;
      v19 = *(a1 + 32);
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v20)
      {
        v22 = v20;
        v23 = *v29;
        do
        {
          v24 = 0;
          do
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v28 + 1) + 8 * v24);
            _HKInitializeLogging(v20, v21);
            v26 = HKLogSleep;
            v20 = os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG);
            if (v20)
            {
              *buf = 138412290;
              v38 = v25;
              _os_log_debug_impl(&dword_19197B000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            ++v24;
          }

          while (v22 != v24);
          v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
          v22 = v20;
        }

        while (v20);
      }

      a1 = v27;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)queue_populateConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = HKSleepDaySummaryQuery;
  [(HKQuery *)&v12 queue_populateConfiguration:configurationCopy];
  [configurationCopy setMorningIndexRange:{self->_morningIndexRange.start, self->_morningIndexRange.duration}];
  [configurationCopy setAscending:self->_ascending];
  [configurationCopy setLimit:self->_limit];
  [configurationCopy setOptions:self->_options];
  [configurationCopy setCacheSettings:self->_cacheSettings];
  v5 = [configurationCopy setCalendarOverrides:self->_calendarOverrides];
  _HKInitializeLogging(v5, v6);
  v7 = HKLogSleep;
  if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = v9;
    debugIdentifier = [(HKQuery *)self debugIdentifier];
    *buf = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = debugIdentifier;
    v17 = 2114;
    v18 = configurationCopy;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Configuration populated: %{public}@", buf, 0x20u);
  }
}

+ (void)configureClientInterface:(id)interface
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HKSleepDaySummaryQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0, v7.receiver, v7.super_class}];
  [interfaceCopy setClasses:v6 forSelector:sel_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__HKSleepDaySummaryQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7376618;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
}

- (void)queue_validate
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_opt_class();
  v5 = v4;
  debugIdentifier = [a2 debugIdentifier];
  cacheSettings = [a2 cacheSettings];
  identifier = [cacheSettings identifier];
  v9 = 138543874;
  v10 = v4;
  v11 = 2114;
  v12 = debugIdentifier;
  v13 = 2112;
  v14 = identifier;
  _os_log_fault_impl(&dword_19197B000, selfCopy, OS_LOG_TYPE_FAULT, "[%{public}@:%{public}@] Not using cached results for query with caching identifier %@ due to unbounded morning index range", &v9, 0x20u);
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSleepDaySummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  p_morningIndexRange = &self->_morningIndexRange;
  start = self->_morningIndexRange.start;
  duration = p_morningIndexRange->duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  log = a2;
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  v16 = v3;
  v5 = [v4 debugIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [*(a1 + 40) firstObject];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "morningIndex")}];
  v10 = MEMORY[0x1E696AD98];
  v11 = [*(a1 + 40) lastObject];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "morningIndex")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  *buf = 138544898;
  v18 = v3;
  v19 = 2114;
  v20 = v5;
  v21 = 2112;
  v22 = v6;
  v23 = 2112;
  v24 = v9;
  v25 = 2112;
  v26 = v12;
  v27 = 2112;
  v28 = v13;
  v29 = 2112;
  v30 = v14;
  _os_log_debug_impl(&dword_19197B000, log, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Received batch of %@ summaries (%@ - %@), clear pending: %@, is final: %@", buf, 0x48u);
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = v4;
  v7 = [v5 debugIdentifier];
  v8 = 138543618;
  v9 = v4;
  v10 = 2114;
  v11 = v7;
  _os_log_debug_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Summaries:", &v8, 0x16u);
}

@end