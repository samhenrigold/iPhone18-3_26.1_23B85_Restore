@interface NSUserActivity(NSUserActivityInternalDelegateCalls)
- (BOOL)doSaveUserActivityWithTimeout:()NSUserActivityInternalDelegateCalls isCurrent:withCompletionHandler:;
- (uint64_t)_supportsSynchronizeActivityWithTimeout;
@end

@implementation NSUserActivity(NSUserActivityInternalDelegateCalls)

- (uint64_t)_supportsSynchronizeActivityWithTimeout
{
  delegate = [self delegate];
  if (delegate)
  {
    delegate2 = [self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  _frameworkDelegate = [self _frameworkDelegate];
  if (_frameworkDelegate)
  {
    _frameworkDelegate2 = [self _frameworkDelegate];
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  if (delegate)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v4 & 1;
}

- (BOOL)doSaveUserActivityWithTimeout:()NSUserActivityInternalDelegateCalls isCurrent:withCompletionHandler:
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    _internalUserActivity = [self _internalUserActivity];
    uniqueIdentifier = [_internalUserActivity uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    *buf = 138543874;
    v41 = uUIDString;
    v42 = 2050;
    v43 = a2;
    v44 = 1024;
    v45 = a4;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, "userActivity=%{public}@ timeout=%{public}f isCurrent=%{BOOL}d", buf, 0x1Cu);
  }

  if (v8)
  {
    _frameworkDelegate = [self _frameworkDelegate];
    delegate = [self delegate];
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [MEMORY[0x277CBEAA8] now];
        v16 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          _internalUserActivity2 = [self _internalUserActivity];
          uniqueIdentifier2 = [_internalUserActivity2 uniqueIdentifier];
          uUIDString2 = [uniqueIdentifier2 UUIDString];
          *buf = 138543362;
          v41 = uUIDString2;
          _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_DEBUG, "userActivity=%{public}@ delegate supports _userActivityWillSave:... so calling that.", buf, 0xCu);
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __117__NSUserActivity_NSUserActivityInternalDelegateCalls__doSaveUserActivityWithTimeout_isCurrent_withCompletionHandler___block_invoke;
        v34[3] = &unk_2785C4678;
        v34[4] = self;
        v39 = a4;
        v38 = a2;
        v35 = _frameworkDelegate;
        v36 = v15;
        v37 = v8;
        v19 = v15;
        [delegate _userActivityWillSave:self isCurrent:a4 timeout:v34 withCompletionHandler:a2];

        goto LABEL_23;
      }

      if (_frameworkDelegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        if (objc_opt_respondsToSelector())
        {
          [delegate userActivityWillSave:self];
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!_frameworkDelegate)
      {
        v25 = objc_alloc(MEMORY[0x277CCAE58]);
        _internalUserActivity3 = [self _internalUserActivity];
        v27 = [_internalUserActivity3 copyWithNewUUID:0];
        v24 = [v25 initWithInternalUserActivity:v27];

        goto LABEL_22;
      }

      if (objc_opt_respondsToSelector())
      {
LABEL_16:
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __117__NSUserActivity_NSUserActivityInternalDelegateCalls__doSaveUserActivityWithTimeout_isCurrent_withCompletionHandler___block_invoke_2;
        v32[3] = &unk_2785C4650;
        v33 = v8;
        [_frameworkDelegate _userActivityWillSave:self isCurrent:a4 timeout:v32 withCompletionHandler:a2];
        v20 = v33;
LABEL_20:

LABEL_23:
        goto LABEL_24;
      }
    }

    if (![MEMORY[0x277CCACC8] isMainThread])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __117__NSUserActivity_NSUserActivityInternalDelegateCalls__doSaveUserActivityWithTimeout_isCurrent_withCompletionHandler___block_invoke_3;
      block[3] = &unk_2785C4470;
      block[4] = self;
      v31 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v20 = v31;
      goto LABEL_20;
    }

    [self willSynchronizeActivity];
    v21 = objc_alloc(MEMORY[0x277CCAE58]);
    _internalUserActivity4 = [self _internalUserActivity];
    v23 = [_internalUserActivity4 copyWithNewUUID:0];
    v24 = [v21 initWithInternalUserActivity:v23];

    [self didSynchronizeActivity];
LABEL_22:
    (*(v8 + 2))(v8, v24, 0);

    goto LABEL_23;
  }

LABEL_24:

  return v8 != 0;
}

@end