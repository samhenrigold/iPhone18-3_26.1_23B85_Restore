@interface MTGCDTaskScheduler
- (void)_scheduleTask:(id)task withCompletion:(id)completion;
- (void)scheduleTask:(id)task;
- (void)scheduleTaskGroup:(id)group;
@end

@implementation MTGCDTaskScheduler

- (void)_scheduleTask:(id)task withCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  completionCopy = completion;
  [taskCopy delay];
  v9 = v8;
  v10 = MTLogForCategory(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 <= 0.0)
  {
    if (v11)
    {
      *buf = 138543618;
      selfCopy2 = self;
      v25 = 2114;
      v26 = taskCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ executing %{public}@ immediately", buf, 0x16u);
    }

    completableBlock = [taskCopy completableBlock];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke;
    v21[3] = &unk_1E7B0D6F0;
    v22 = completionCopy;
    v17 = completableBlock[2];
    v12 = completionCopy;
    v17(completableBlock, v21);

    v15 = v22;
  }

  else
  {
    if (v11)
    {
      *buf = 138543618;
      selfCopy2 = self;
      v25 = 2114;
      v26 = taskCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}@", buf, 0x16u);
    }

    v12 = objc_opt_new();
    [taskCopy delay];
    v14 = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke_13;
    v18[3] = &unk_1E7B0CA00;
    v19 = taskCopy;
    v20 = completionCopy;
    v15 = completionCopy;
    [v12 startTimer:v18 block:v14];
  }
}

void __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) completableBlock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke_2;
  v3[3] = &unk_1E7B0D6F0;
  v4 = *(a1 + 40);
  (v2)[2](v2, v3);
}

- (void)scheduleTask:(id)task
{
  v16 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = taskCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}@", buf, 0x16u);
  }

  v6 = MTLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v14 = 2114;
    v15 = taskCopy;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opening transaction for %{public}@", buf, 0x16u);
  }

  v7 = os_transaction_create();
  objc_initWeak(buf, taskCopy);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__MTGCDTaskScheduler_scheduleTask___block_invoke;
  v9[3] = &unk_1E7B0EEB8;
  objc_copyWeak(&v11, buf);
  v9[4] = self;
  v8 = v7;
  v10 = v8;
  [(MTGCDTaskScheduler *)self _scheduleTask:taskCopy withCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __35__MTGCDTaskScheduler_scheduleTask___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = MTLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138543618;
    v6 = v4;
    v7 = 2114;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ closing transaction for %{public}@", &v5, 0x16u);
  }
}

- (void)scheduleTaskGroup:(id)group
{
  v34 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  tasks = [groupCopy tasks];
  v6 = [tasks count];

  v7 = MTLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v32 = 2114;
      v33 = groupCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}@", buf, 0x16u);
    }

    completionBlock = dispatch_group_create();
    v10 = MTLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v32 = 2114;
      v33 = groupCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ opening transaction for %{public}@", buf, 0x16u);
    }

    v18 = os_transaction_create();
    v19 = groupCopy;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    tasks2 = [groupCopy tasks];
    v12 = [tasks2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(tasks2);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          dispatch_group_enter(completionBlock);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __40__MTGCDTaskScheduler_scheduleTaskGroup___block_invoke;
          v23[3] = &unk_1E7B0C9D8;
          v24 = completionBlock;
          [(MTGCDTaskScheduler *)self _scheduleTask:v16 withCompletion:v23];

          ++v15;
        }

        while (v13 != v15);
        v13 = [tasks2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MTGCDTaskScheduler_scheduleTaskGroup___block_invoke_2;
    block[3] = &unk_1E7B0C9A0;
    block[4] = self;
    groupCopy = v19;
    v21 = v19;
    v22 = v18;
    v17 = v18;
    dispatch_group_notify(completionBlock, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v8)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v32 = 2114;
      v33 = groupCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ has no tasks", buf, 0x16u);
    }

    completionBlock = [groupCopy completionBlock];
    (*(completionBlock + 16))();
  }
}

void __40__MTGCDTaskScheduler_scheduleTaskGroup___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ completed", &v9, 0x16u);
  }

  v5 = [*(a1 + 40) completionBlock];
  v5[2]();

  v6 = MTLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ closing transaction for %{public}@", &v9, 0x16u);
  }
}

@end