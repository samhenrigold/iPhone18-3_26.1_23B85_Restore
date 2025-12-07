@interface SBPencilSqueezeActionControl
- (BOOL)_shouldPerformAction:(__CFString *)action withReason:;
- (BOOL)performSqueezeActionWithTimestamp:(uint64_t)timestamp;
- (id)_runnerClientForAction:(void *)action timestamp:;
- (id)initWithDefaults:(id)defaults;
- (void)_runnerClientDidFinish:(void *)finish withResult:(int)result cancelled:;
- (void)_updateSelectedAction;
@end

@implementation SBPencilSqueezeActionControl

- (id)initWithDefaults:(id)defaults
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (defaults)
  {
    if (!v4)
    {
      [(SBPencilSqueezeActionControl *)sel_initWithDefaults_ initWithDefaults:defaults];
    }

    v15.receiver = defaults;
    v15.super_class = SBPencilSqueezeActionControl;
    v6 = objc_msgSendSuper2(&v15, sel_init);
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a2);
      objc_initWeak(&location, v7);
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"squeezeConfiguredActionArchive"];
      v17[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v10 = MEMORY[0x277D85CD0];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __49__SBPencilSqueezeActionControl_initWithDefaults___block_invoke;
      v13[3] = &unk_2783A8C68;
      objc_copyWeak(&v14, &location);
      v11 = [v5 observeDefaults:v9 onQueue:MEMORY[0x277D85CD0] withBlock:v13];

      [(SBPencilSqueezeActionControl *)v7 _updateSelectedAction];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    [(SBPencilSqueezeActionControl *)v7 initWithDefaults:?];
    defaults = location;
  }

  return defaults;
}

void __49__SBPencilSqueezeActionControl_initWithDefaults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBPencilSqueezeActionControl *)WeakRetained _updateSelectedAction];
}

- (BOOL)performSqueezeActionWithTimestamp:(uint64_t)timestamp
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (timestamp)
  {
    if (!v3)
    {
      [(SBPencilSqueezeActionControl *)sel_performSqueezeActionWithTimestamp_ performSqueezeActionWithTimestamp:timestamp];
    }

    v5 = SBLogPencilSqueeze(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      timestampCopy3 = timestamp;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) requested to perform action with timestamp: %{public}@", buf, 0x16u);
    }

    v6 = *(timestamp + 16);
    v19 = 0;
    v7 = [(SBPencilSqueezeActionControl *)timestamp _shouldPerformAction:v6 withReason:&v19];
    v8 = v19;
    v9 = v8;
    if (v7)
    {
      v10 = [(SBPencilSqueezeActionControl *)timestamp _runnerClientForAction:v6 timestamp:v4];
      v12 = *(timestamp + 24);
      if (v12)
      {
        v13 = objc_msgSend_containsObject_(v12);
        if ((v13 & 1) == 0)
        {
          v13 = [*(timestamp + 24) addObject:v10];
        }
      }

      else
      {
        v14 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
        v15 = *(timestamp + 24);
        *(timestamp + 24) = v14;
      }

      v16 = SBLogPencilSqueeze(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543875;
        timestampCopy3 = timestamp;
        v22 = 2113;
        v23 = v6;
        v24 = 2114;
        v25 = v10;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@) performing action '%{private}@' with runner client '%{public}@'", buf, 0x20u);
      }

      [v10 startWithPreciseTimeStamp:v4];
      v17 = AnalyticsSendEventLazy();
      if ((v17 & 1) == 0)
      {
        v18 = SBLogPencilSqueeze(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SBPencilSqueezeActionControl performSqueezeActionWithTimestamp:v18];
        }
      }
    }

    else
    {
      v10 = SBLogPencilSqueeze(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543875;
        timestampCopy3 = timestamp;
        v22 = 2114;
        v23 = v9;
        v24 = 2113;
        v25 = v6;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@) Disallowing action (%{public}@); action: %{private}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __66__SBPencilSqueezeActionControl_performSqueezeActionWithTimestamp___block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_283371B58;
  v4[0] = @"action";
  v4[1] = @"bundleId_category";
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v5[1] = v1;
  v5[2] = &unk_283371B70;
  v4[2] = @"pencilVersion";
  v4[3] = @"trigger";
  v5[3] = &unk_283371B88;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

uint64_t __65__SBPencilSqueezeActionControl__runnerClientForAction_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasCompletedRun])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 action];
    v4 = [v5 isEqual:*(a1 + 32)];
  }

  return v4;
}

- (void)_updateSelectedAction
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    squeezeConfiguredActionArchive = [*(self + 8) squeezeConfiguredActionArchive];
    if (squeezeConfiguredActionArchive)
    {
      v3 = MEMORY[0x277CCAAC8];
      v4 = objc_opt_self();
      v11 = 0;
      v5 = [v3 unarchivedObjectOfClass:v4 fromData:squeezeConfiguredActionArchive error:&v11];
      v6 = v11;

      v8 = SBLogPencilSqueeze(v7);
      v9 = v8;
      if (v5)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543619;
          selfCopy3 = self;
          v14 = 2113;
          v15 = v5;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) Selecting squeeze action %{private}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v14 = 2114;
        v15 = v6;
        _os_log_error_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_ERROR, "(%{public}@) Error unarchiving squeeze action: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v6 = SBLogPencilSqueeze(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) No archived squeeze action found", buf, 0xCu);
      }

      v5 = 0;
    }

    v10 = *(self + 16);
    *(self + 16) = v5;
  }
}

- (BOOL)_shouldPerformAction:(__CFString *)action withReason:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"no action to perform";
  }

  lockOutController = [SBApp lockOutController];
  v7 = lockOutController;
  if (a2)
  {
    if ([lockOutController isBlocked])
    {
      v5 = @"device is blocked out";
      if (!action)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (([v7 isProximityReaderBlocked] & 1) == 0)
    {
      v10 = +[SBSetupManager sharedInstance];
      if ([v10 isInSetupMode])
      {
        v5 = @"device is in setup mode";
      }

      else
      {
        v5 = 0;
      }

      if (!action)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v5 = @"device is proximity reader blocked out";
  }

  if (action)
  {
LABEL_12:
    *action = v5;
  }

LABEL_13:
  v8 = v5 == 0;

  return v8;
}

- (id)_runnerClientForAction:(void *)action timestamp:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  actionCopy = action;
  if (self)
  {
    v7 = *(self + 24);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__SBPencilSqueezeActionControl__runnerClientForAction_timestamp___block_invoke;
    v13[3] = &unk_2783BF108;
    v8 = v5;
    v14 = v8;
    v9 = [v7 bs_firstObjectPassingTest:v13];
    if (v9)
    {
      v10 = v9;
      v11 = SBLogPencilSqueeze(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543875;
        selfCopy = self;
        v17 = 2114;
        v18 = v10;
        v19 = 2113;
        v20 = v8;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) found active runner %{public}@ to use for action: %{private}@", buf, 0x20u);
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277D7A088]) initWithSystemAction:v8 preciseTimeStamp:actionCopy];
      [v10 setDelegate:self];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_runnerClientDidFinish:(void *)finish withResult:(int)result cancelled:
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  finishCopy = finish;
  if (self)
  {
    v9 = objc_msgSend_containsObject_(*(self + 24));
    v10 = v9;
    v11 = SBLogPencilSqueeze(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = 138544386;
        selfCopy2 = self;
        v15 = 2114;
        v16 = v7;
        v17 = 1024;
        v18 = finishCopy == 0;
        v19 = 1024;
        resultCopy = result;
        v21 = 2114;
        v22 = finishCopy;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) runner '%{public}@' did finish successfully: %{BOOL}u\n    cancelled: %{BOOL}u\n    error: %{public}@", &v13, 0x2Cu);
      }

      [*(self + 24) removeObject:v7];
    }

    else
    {
      if (v12)
      {
        v13 = 138543618;
        selfCopy2 = self;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) skipping finished result from no-longer-tracked runner client '%{public}@'", &v13, 0x16u);
      }
    }
  }
}

- (void)initWithDefaults:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"defaults != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v10 = @"SBPencilSqueezeActionControl.m";
    v11 = 1024;
    v12 = 66;
    v13 = v7;
    v14 = v3;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDefaults:(void *)a1 .cold.2(void *a1, void *a2)
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  v7 = v6;
}

- (void)performSqueezeActionWithTimestamp:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"timestamp != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"SBPencilSqueezeActionControl.m";
    v10 = 1024;
    v11 = 84;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end