@interface NPKStandaloneFirstUnlockCoordinator
- (NPKStandaloneFirstUnlockCoordinator)initWithQueue:(id)queue;
- (void)_performFirstUnlockWork;
- (void)dealloc;
- (void)performSubjectToFirstUnlock:(id)unlock;
@end

@implementation NPKStandaloneFirstUnlockCoordinator

- (NPKStandaloneFirstUnlockCoordinator)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = NPKStandaloneFirstUnlockCoordinator;
  v6 = [(NPKStandaloneFirstUnlockCoordinator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    array = [MEMORY[0x277CBEB18] array];
    blocksToPerformAfterFirstDeviceUnlock = v7->_blocksToPerformAfterFirstDeviceUnlock;
    v7->_blocksToPerformAfterFirstDeviceUnlock = array;

    objc_initWeak(&location, v7);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__NPKStandaloneFirstUnlockCoordinator_initWithQueue___block_invoke;
    v11[3] = &unk_279944F20;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v7->_firstDeviceUnlockRegistrationToken, queueCopy, v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__NPKStandaloneFirstUnlockCoordinator_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = pk_General_log(WeakRetained);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: First unlock detected", v6, 2u);
    }
  }

  if (WeakRetained)
  {
    [WeakRetained _performFirstUnlockWork];
    if (notify_is_valid_token([WeakRetained firstDeviceUnlockRegistrationToken]))
    {
      notify_cancel([WeakRetained firstDeviceUnlockRegistrationToken]);
      [WeakRetained setFirstDeviceUnlockRegistrationToken:0xFFFFFFFFLL];
    }
  }
}

- (void)dealloc
{
  if (notify_is_valid_token([(NPKStandaloneFirstUnlockCoordinator *)self firstDeviceUnlockRegistrationToken]))
  {
    notify_cancel([(NPKStandaloneFirstUnlockCoordinator *)self firstDeviceUnlockRegistrationToken]);
    [(NPKStandaloneFirstUnlockCoordinator *)self setFirstDeviceUnlockRegistrationToken:0xFFFFFFFFLL];
  }

  v3.receiver = self;
  v3.super_class = NPKStandaloneFirstUnlockCoordinator;
  [(NPKStandaloneFirstUnlockCoordinator *)&v3 dealloc];
}

- (void)performSubjectToFirstUnlock:(id)unlock
{
  unlockCopy = unlock;
  queue = [(NPKStandaloneFirstUnlockCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  blocksToPerformAfterFirstDeviceUnlock = [(NPKStandaloneFirstUnlockCoordinator *)self blocksToPerformAfterFirstDeviceUnlock];
  v7 = _Block_copy(unlockCopy);

  [blocksToPerformAfterFirstDeviceUnlock addObject:v7];
  v8 = NPKProtectedDataAvailable();
  if (v8)
  {

    [(NPKStandaloneFirstUnlockCoordinator *)self _performFirstUnlockWork];
  }

  else
  {
    v9 = pk_General_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Deferring work until first device unlock", v13, 2u);
      }
    }
  }
}

- (void)_performFirstUnlockWork
{
  queue = [(NPKStandaloneFirstUnlockCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  blocksToPerformAfterFirstDeviceUnlock = [(NPKStandaloneFirstUnlockCoordinator *)self blocksToPerformAfterFirstDeviceUnlock];
  array = [MEMORY[0x277CBEB18] array];
  [(NPKStandaloneFirstUnlockCoordinator *)self setBlocksToPerformAfterFirstDeviceUnlock:array];

  [blocksToPerformAfterFirstDeviceUnlock enumerateObjectsUsingBlock:&__block_literal_global_19];
}

@end