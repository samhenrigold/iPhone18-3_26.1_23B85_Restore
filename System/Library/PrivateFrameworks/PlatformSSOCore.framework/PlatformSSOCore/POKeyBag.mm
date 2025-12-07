@interface POKeyBag
- (BOOL)isUserKeybagUnlocked;
- (POKeyBag)init;
- (void)dealloc;
- (void)isUserKeybagUnlocked;
- (void)startObservingKeyBagLockStatusChanges;
- (void)stopObservingKeyBagLockStatusChanges;
- (void)waitForKeyBagFirstUnlockOnStartupWithCompletion:(id)completion;
- (void)waitForKeyBagUnlockWithCompletion:(id)completion;
@end

@implementation POKeyBag

- (POKeyBag)init
{
  v3.receiver = self;
  v3.super_class = POKeyBag;
  result = [(POKeyBag *)&v3 init];
  if (result)
  {
    result->_firstUnlock = 0;
    result->_notifyToken = 0;
  }

  return result;
}

- (void)dealloc
{
  [(POKeyBag *)self stopObservingKeyBagLockStatusChanges];
  v3.receiver = self;
  v3.super_class = POKeyBag;
  [(POKeyBag *)&v3 dealloc];
}

- (BOOL)isUserKeybagUnlocked
{
  v2 = MKBGetDeviceLockState();
  v3 = v2;
  v4 = PO_LOG_POKeyBag(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(POKeyBag *)v3 isUserKeybagUnlocked];
  }

  return v3 == 0;
}

- (void)waitForKeyBagUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(POKeyBag *)selfCopy isUserKeybagUnlocked])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    [(POKeyBag *)selfCopy setUnlockCompletion:completionCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)waitForKeyBagFirstUnlockOnStartupWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(POKeyBag *)selfCopy firstUnlock]|| [(POKeyBag *)selfCopy isUserKeybagUnlocked])
  {
    completionCopy[2]();
  }

  else
  {
    [(POKeyBag *)selfCopy setStartupCompletion:completionCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)startObservingKeyBagLockStatusChanges
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_ERROR, "notify_register_dispatch failed: %u", v2, 8u);
}

void __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) isUserKeybagUnlocked];
  v4 = v3;
  v5 = PO_LOG_POKeyBag(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_2();
    }

    [*(a1 + 32) setFirstUnlock:1];
    v7 = [*(a1 + 32) startupCompletion];

    if (v7)
    {
      v9 = PO_LOG_POKeyBag(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_3();
      }

      v10 = [*(a1 + 32) startupCompletion];
      v10[2]();

      [*(a1 + 32) setStartupCompletion:0];
    }

    v11 = [*(a1 + 32) unlockCompletion];

    if (v11)
    {
      v13 = PO_LOG_POKeyBag(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_4();
      }

      v14 = [*(a1 + 32) unlockCompletion];
      v14[2]();

      [*(a1 + 32) setUnlockCompletion:0];
    }
  }

  else
  {
    if (v6)
    {
      __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_1();
    }

    v15 = [*(a1 + 32) lockHandler];

    if (v15)
    {
      v16 = [*(a1 + 32) lockHandler];
      v16[2]();
    }
  }

  objc_sync_exit(v2);
}

- (void)stopObservingKeyBagLockStatusChanges
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = 0;
  }
}

- (void)isUserKeybagUnlocked
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "unlock state %x", v2, 8u);
}

@end