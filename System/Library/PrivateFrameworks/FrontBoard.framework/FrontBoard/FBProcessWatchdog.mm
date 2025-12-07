@interface FBProcessWatchdog
- (FBProcessWatchdog)initWithProcess:(id)process context:(id)context policy:(id)policy;
- (id)_policyDesc;
- (void)_getPolicyWallTime:(double *)time cpuTime:(double *)cpuTime;
- (void)activate;
- (void)deactivate;
@end

@implementation FBProcessWatchdog

- (void)activate
{
  if (self->_handle)
  {
    v3 = [[FBProcessCPUStatistics alloc] initWithProcessHandle:self->_handle];
    cpuStatistics = self->_cpuStatistics;
    self->_cpuStatistics = v3;
  }

  v26.receiver = self;
  v26.super_class = FBProcessWatchdog;
  [(FBSProcessWatchdog *)&v26 activate];
  if (activate_onceToken != -1)
  {
    [FBProcessWatchdog activate];
  }

  if (activate___UnblockEntitled == 1)
  {
    v25 = 0.0;
    [(FBProcessWatchdog *)self _getPolicyWallTime:&v25 cpuTime:0];
    v5 = [(RBSProcessHandle *)self->_handle pid];
    process = [(FBSProcessWatchdog *)self process];
    logProem = [(FBProcess *)process logProem];
    v8 = objc_opt_new();
    unblockSignal = self->_unblockSignal;
    self->_unblockSignal = v8;

    v10 = v8;
    if (v25 * 0.5 <= 5.0)
    {
      v11 = v25 * 0.5;
    }

    else
    {
      v11 = 5.0;
    }

    event = self->_event;
    objc_initWeak(&location, self);
    v13 = dispatch_time(0, (v11 * 1000000000.0));
    v14 = +[FBProcess userInitiatedWorkloop];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__FBProcessWatchdog_activate__block_invoke_2;
    block[3] = &unk_1E783B8A8;
    v19 = v10;
    v20 = logProem;
    v22[1] = event;
    v22[2] = *&v11;
    v23 = v5;
    v15 = logProem;
    v16 = v10;
    objc_copyWeak(v22, &location);
    v21 = process;
    v17 = process;
    dispatch_after(v13, v14, block);

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }
}

- (void)deactivate
{
  [(BSAtomicSignal *)self->_unblockSignal signal];
  unblockSignal = self->_unblockSignal;
  self->_unblockSignal = 0;

  v4.receiver = self;
  v4.super_class = FBProcessWatchdog;
  [(FBSProcessWatchdog *)&v4 deactivate];
}

- (id)_policyDesc
{
  v6 = 0.0;
  v5 = 0.0;
  [(FBProcessWatchdog *)self _getPolicyWallTime:&v6 cpuTime:&v5];
  if (v6 > 0.0 && v5 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fs cpu over %.2fs", v5, *&v5, *&v6];
    v2 = LABEL_8:;
    goto LABEL_9;
  }

  if (v6 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fs", v5, *&v6, v4];
    goto LABEL_8;
  }

  if (v5 > 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fs cpu", v5, *&v5, v4];
    goto LABEL_8;
  }

  v2 = @"n/a";
LABEL_9:

  return v2;
}

void __29__FBProcessWatchdog_activate__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) signal];
  if (v2)
  {
    v3 = FBLogProcess(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = NSStringFromProcessWatchdogEvent(*(a1 + 64));
      v6 = *(a1 + 72);
      *buf = 138543874;
      *&buf[4] = v4;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      *&buf[22] = 2048;
      v27 = v6;
      _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Watchdog for %{public}@ is still active after %.1fs, notifying Unblock.", buf, 0x20u);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = getUBStuckServiceClass_softClass;
    v24 = getUBStuckServiceClass_softClass;
    if (!getUBStuckServiceClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getUBStuckServiceClass_block_invoke;
      v27 = &unk_1E783B178;
      v28 = &v21;
      __getUBStuckServiceClass_block_invoke(buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    v9 = [[v7 alloc] initForPid:*(a1 + 80) threadID:1 timeElapsed:0 incidentUUID:*(a1 + 72)];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v10 = getUBUnblockClientClass_softClass;
    v24 = getUBUnblockClientClass_softClass;
    if (!getUBUnblockClientClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getUBUnblockClientClass_block_invoke;
      v27 = &unk_1E783B178;
      v28 = &v21;
      __getUBUnblockClientClass_block_invoke(buf);
      v10 = v22[3];
    }

    v11 = v10;
    _Block_object_dispose(&v21, 8);
    v12 = objc_alloc_init(v10);
    v25 = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v14 = +[FBProcess userInitiatedWorkloop];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__FBProcessWatchdog_activate__block_invoke_7;
    v16[3] = &unk_1E783B880;
    v17 = *(a1 + 40);
    objc_copyWeak(&v20, (a1 + 56));
    v18 = *(a1 + 48);
    v15 = v12;
    v19 = v15;
    [v15 recover:v13 stackshotData:0 replyQueue:v14 callback:v16];

    objc_destroyWeak(&v20);
  }
}

- (FBProcessWatchdog)initWithProcess:(id)process context:(id)context policy:(id)policy
{
  processCopy = process;
  contextCopy = context;
  policyCopy = policy;
  event = [contextCopy event];
  v12 = NSStringFromProcessWatchdogEvent(event);
  v17.receiver = self;
  v17.super_class = FBProcessWatchdog;
  v13 = [(FBSProcessWatchdog *)&v17 initWithName:v12 process:processCopy policy:policyCopy];

  if (v13)
  {
    v13->_event = event;
    objc_storeStrong(&v13->_eventContext, context);
    rbsHandle = [processCopy rbsHandle];
    handle = v13->_handle;
    v13->_handle = rbsHandle;
  }

  return v13;
}

uint64_t __29__FBProcessWatchdog_activate__block_invoke()
{
  result = BSSelfTaskHasEntitlement();
  activate___UnblockEntitled = result;
  return result;
}

void __29__FBProcessWatchdog_activate__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = FBLogProcess(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v6 descriptionWithMultilinePrefix:0];
      *buf = 138543618;
      v37 = v8;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Unblock returned an error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [a3 firstObject];
    v7 = v10;
    if (v10)
    {
      v11 = [v10 issueType];
      v12 = [v7 recoveryStatus];
      v13 = [v7 recoveryConfidence];
      v14 = FBLogProcess(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = _FBSNSStringFromUBIssueType(v11);
        v31 = v11;
        if (v13 >= 4)
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", v13];
        }

        else
        {
          v17 = off_1E783B8E0[v13];
        }

        v20 = v17;
        if (v12 >= 5)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", v12];
        }

        else
        {
          v21 = off_1E783B900[v12];
        }

        *buf = 138544130;
        v37 = v15;
        v38 = 2114;
        v39 = v16;
        v40 = 2114;
        v41 = v20;
        v42 = 2114;
        v43 = v21;
        _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Unblock returned with issue: %{public}@; confidence: %{public}@; status: %{public}@", buf, 0x2Au);

        v11 = v31;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      if ([WeakRetained isActive]&& v12 == 3 && v13 == 1)
      {
        v22 = *(a1 + 40);
        v35 = 0;
        v23 = [v22 _watchdog:WeakRetained shouldTerminateWithDeclineReason:&v35];
        v24 = v35;
        v25 = v24;
        if (v23)
        {
          v26 = FBLogProcess(v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __29__FBProcessWatchdog_activate__block_invoke_7_cold_1(a1, v26);
          }

          v27 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E699F9B0];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __29__FBProcessWatchdog_activate__block_invoke_9;
          v32[3] = &unk_1E783B858;
          v33 = *(a1 + 40);
          v34 = v11;
          v29 = [v27 bs_errorWithDomain:v28 code:2 configuration:v32];
          v30 = [*(a1 + 40) _watchdog:WeakRetained terminationRequestForError:v29];
          [*(a1 + 40) _terminateWithRequest:v30 forWatchdog:WeakRetained];
        }
      }
    }

    else
    {
      WeakRetained = FBLogProcess(0);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *buf = 138543362;
        v37 = v19;
        _os_log_impl(&dword_1A89DD000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%{public}@ Unblock returned no result.", buf, 0xCu);
      }
    }
  }
}

void __29__FBProcessWatchdog_activate__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = FBSProcessPrettyDescription();
  v4 = _FBSNSStringFromUBIssueType(*(a1 + 40));
  [v3 setFailureReason:{@"%@ is stuck (%@)", v5, v4}];
}

- (void)_getPolicyWallTime:(double *)time cpuTime:(double *)cpuTime
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  policy = [(FBSProcessWatchdog *)self policy];
  provisions = [policy provisions];

  v8 = [provisions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(provisions);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        type = [v14 type];
        if (v14)
        {
          objc_msgSend_allowance(v14);
        }

        FBSProcessResourceAllowanceGetValue();
        FBSProcessResourceTimeIntervalForValue();
        if (type == 2)
        {
          v11 = v11 + v16;
        }

        else if (type == 1)
        {
          v12 = v12 + v16;
        }
      }

      v9 = [provisions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  if (time)
  {
    *time = v12;
  }

  if (cpuTime)
  {
    *cpuTime = v11;
  }
}

void __29__FBProcessWatchdog_activate__block_invoke_7_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Terminating stuck process.", &v3, 0xCu);
}

@end