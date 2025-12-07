@interface SiriAnalyticsSensitiveConditionsObservers
- (SiriAnalyticsSensitiveConditionsObservers)initWithQueue:(id)queue;
- (void)addSensitiveConditionsObserver:(id)observer;
- (void)pollAllObserversWithCompletion:(id)completion;
@end

@implementation SiriAnalyticsSensitiveConditionsObservers

- (void)pollAllObserversWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextSensitiveConditions;
  if (os_log_type_enabled(SiriAnalyticsLogContextSensitiveConditions, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(*(a1 + 32) + 16);
    *buf = 136315394;
    v22 = "[SiriAnalyticsSensitiveConditionsObservers pollAllObserversWithCompletion:]_block_invoke";
    v23 = 2112;
    v24 = v11;
    _os_log_debug_impl(&dword_1D9863000, v2, OS_LOG_TYPE_DEBUG, "%s observers: %@", buf, 0x16u);
  }

  v3 = dispatch_group_create();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          dispatch_group_enter(v3);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke_1;
          v14[3] = &unk_1E8587918;
          v15 = v3;
          [v9 pollConditionStateWithCompletion:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke_2;
  v12[3] = &unk_1E8587C18;
  v13 = *(a1 + 40);
  dispatch_group_notify(v3, v10, v12);
}

uint64_t __76__SiriAnalyticsSensitiveConditionsObservers_pollAllObserversWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addSensitiveConditionsObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SiriAnalyticsSensitiveConditionsObservers_addSensitiveConditionsObserver___block_invoke;
  v7[3] = &unk_1E8587870;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __76__SiriAnalyticsSensitiveConditionsObservers_addSensitiveConditionsObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextSensitiveConditions;
  if (os_log_type_enabled(SiriAnalyticsLogContextSensitiveConditions, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[SiriAnalyticsSensitiveConditionsObservers addSensitiveConditionsObserver:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1D9863000, v2, OS_LOG_TYPE_INFO, "%s Registering sensitive conditions observer: %@", &v9, 0x16u);
  }

  v4 = *(*(a1 + 40) + 16);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v4 = *(*(a1 + 40) + 16);
  }

  return [v4 addObject:*(a1 + 32)];
}

- (SiriAnalyticsSensitiveConditionsObservers)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SiriAnalyticsSensitiveConditionsObservers;
  v6 = [(SiriAnalyticsSensitiveConditionsObservers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end