@interface NPKLockStatusChangeCoordinator
+ (id)descriptionOfLockStatusChangeEvent:(unint64_t)event;
- (BOOL)_hasLockBlocksToPerform;
- (BOOL)_hasUnlockBlocksToPerform;
- (BOOL)wipeBlocksAfterPerform;
- (NPKLockStatusChangeCoordinator)initWithQueue:(id)queue reason:(id)reason;
- (NPKLockStatusChangeCoordinatorDelegate)delegate;
- (NSMutableArray)blocksToPerformAfterDeviceLock;
- (NSMutableArray)blocksToPerformAfterDeviceUnlock;
- (id)description;
- (int)_lockState;
- (void)_handleLockStateChange;
- (void)_performLockWork;
- (void)_performUnlockWork;
- (void)_performWorkForEvent:(unint64_t)event withBlocks:(id)blocks;
- (void)_registerForLockStatusChanges;
- (void)dealloc;
- (void)performBlocksIfPossible;
- (void)performSubjectToEvent:(unint64_t)event blockToPerform:(id)perform;
- (void)setWipeBlocksAfterPerform:(BOOL)perform;
@end

@implementation NPKLockStatusChangeCoordinator

- (NPKLockStatusChangeCoordinator)initWithQueue:(id)queue reason:(id)reason
{
  queueCopy = queue;
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = NPKLockStatusChangeCoordinator;
  v9 = [(NPKLockStatusChangeCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_reason, reason);
    [(NPKLockStatusChangeCoordinator *)v10 _registerForLockStatusChanges];
    v10->_wipeBlocksAfterPerform = 1;
  }

  return v10;
}

- (void)dealloc
{
  if (notify_is_valid_token([(NPKLockStatusChangeCoordinator *)self notifyLockStatesToken]))
  {
    notify_cancel([(NPKLockStatusChangeCoordinator *)self notifyLockStatesToken]);
    [(NPKLockStatusChangeCoordinator *)self setNotifyLockStatesToken:0xFFFFFFFFLL];
  }

  v3.receiver = self;
  v3.super_class = NPKLockStatusChangeCoordinator;
  [(NPKLockStatusChangeCoordinator *)&v3 dealloc];
}

- (NSMutableArray)blocksToPerformAfterDeviceUnlock
{
  blocksToPerformAfterDeviceUnlock = self->_blocksToPerformAfterDeviceUnlock;
  if (!blocksToPerformAfterDeviceUnlock)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_blocksToPerformAfterDeviceUnlock;
    self->_blocksToPerformAfterDeviceUnlock = array;

    blocksToPerformAfterDeviceUnlock = self->_blocksToPerformAfterDeviceUnlock;
  }

  return blocksToPerformAfterDeviceUnlock;
}

- (NSMutableArray)blocksToPerformAfterDeviceLock
{
  blocksToPerformAfterDeviceLock = self->_blocksToPerformAfterDeviceLock;
  if (!blocksToPerformAfterDeviceLock)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_blocksToPerformAfterDeviceLock;
    self->_blocksToPerformAfterDeviceLock = array;

    blocksToPerformAfterDeviceLock = self->_blocksToPerformAfterDeviceLock;
  }

  return blocksToPerformAfterDeviceLock;
}

- (void)performSubjectToEvent:(unint64_t)event blockToPerform:(id)perform
{
  aBlock = perform;
  queue = [(NPKLockStatusChangeCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  if (event == 1)
  {
    blocksToPerformAfterDeviceLock = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
  }

  else
  {
    if (event)
    {
      goto LABEL_6;
    }

    blocksToPerformAfterDeviceLock = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
  }

  v8 = blocksToPerformAfterDeviceLock;
  v9 = _Block_copy(aBlock);
  [v8 addObject:v9];

LABEL_6:
}

- (void)performBlocksIfPossible
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Requested perform blocks if possible.", buf, 0xCu);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKLockStatusChangeCoordinator_performBlocksIfPossible__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setWipeBlocksAfterPerform:(BOOL)perform
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__NPKLockStatusChangeCoordinator_setWipeBlocksAfterPerform___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  performCopy = perform;
  dispatch_async(queue, v4);
}

- (BOOL)wipeBlocksAfterPerform
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NPKLockStatusChangeCoordinator_wipeBlocksAfterPerform__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)descriptionOfLockStatusChangeEvent:(unint64_t)event
{
  if (event)
  {
    return @"NPKLockStatusChangeEventLock";
  }

  else
  {
    return @"NPKLockStatusChangeEventUnlock";
  }
}

- (BOOL)_hasUnlockBlocksToPerform
{
  blocksToPerformAfterDeviceUnlock = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
  v3 = [blocksToPerformAfterDeviceUnlock count] != 0;

  return v3;
}

- (BOOL)_hasLockBlocksToPerform
{
  blocksToPerformAfterDeviceLock = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
  v3 = [blocksToPerformAfterDeviceLock count] != 0;

  return v3;
}

- (int)_lockState
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"ExtendedDeviceLockState";
  v6[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = MKBGetDeviceLockState();

  return v3;
}

- (void)_registerForLockStatusChanges
{
  v14 = *MEMORY[0x277D85DE8];
  p_notifyLockStatesToken = &self->_notifyLockStatesToken;
  is_valid_token = notify_is_valid_token(self->_notifyLockStatesToken);
  if (!is_valid_token)
  {
    v5 = pk_General_log(is_valid_token);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Registering for lock state notifications", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __63__NPKLockStatusChangeCoordinator__registerForLockStatusChanges__block_invoke;
    handler[3] = &unk_279944F20;
    objc_copyWeak(&v11, buf);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", p_notifyLockStatesToken, queue, handler);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __63__NPKLockStatusChangeCoordinator__registerForLockStatusChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleLockStateChange];
    WeakRetained = v2;
  }
}

- (void)_handleLockStateChange
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Handling lock state change", &v20, 0xCu);
    }
  }

  _lockState = [(NPKLockStatusChangeCoordinator *)self _lockState];
  v8 = [(NPKLockStatusChangeCoordinator *)self _isUnlockedForLockState:_lockState];
  if (v8)
  {
    v9 = pk_General_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Device is unlocked", &v20, 0xCu);
      }
    }

    [(NPKLockStatusChangeCoordinator *)self _performUnlockWork];
  }

  else
  {
    v13 = [(NPKLockStatusChangeCoordinator *)self _isLockedForLockState:_lockState];
    v14 = v13;
    v15 = pk_General_log(v13);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      if (v16)
      {
        v18 = pk_General_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543362;
          selfCopy4 = self;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Device is locked", &v20, 0xCu);
        }
      }

      [(NPKLockStatusChangeCoordinator *)self _performLockWork];
    }

    else if (v16)
    {
      v19 = pk_General_log(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        selfCopy4 = self;
        v22 = 1024;
        v23 = _lockState;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Unhandled lock state with value %i", &v20, 0x12u);
      }
    }
  }
}

- (void)_performUnlockWork
{
  v14 = *MEMORY[0x277D85DE8];
  _hasUnlockBlocksToPerform = [(NPKLockStatusChangeCoordinator *)self _hasUnlockBlocksToPerform];
  if (_hasUnlockBlocksToPerform)
  {
    v4 = pk_General_log(_hasUnlockBlocksToPerform);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        blocksToPerformAfterDeviceUnlock = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
        v10 = 138543618;
        selfCopy = self;
        v12 = 2048;
        v13 = [blocksToPerformAfterDeviceUnlock count];
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Performing work in response to device unlock - %lu block(s) to execute", &v10, 0x16u);
      }
    }

    blocksToPerformAfterDeviceUnlock2 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceUnlock];
    [(NPKLockStatusChangeCoordinator *)self _performWorkForEvent:0 withBlocks:blocksToPerformAfterDeviceUnlock2];

    if (self->_wipeBlocksAfterPerform)
    {
      [(NPKLockStatusChangeCoordinator *)self setBlocksToPerformAfterDeviceUnlock:0];
    }
  }
}

- (void)_performLockWork
{
  v14 = *MEMORY[0x277D85DE8];
  _hasLockBlocksToPerform = [(NPKLockStatusChangeCoordinator *)self _hasLockBlocksToPerform];
  if (_hasLockBlocksToPerform)
  {
    v4 = pk_General_log(_hasLockBlocksToPerform);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        blocksToPerformAfterDeviceLock = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
        v10 = 138543618;
        selfCopy = self;
        v12 = 2048;
        v13 = [blocksToPerformAfterDeviceLock count];
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Performing work in response to device lock - %lu block(s) to execute", &v10, 0x16u);
      }
    }

    blocksToPerformAfterDeviceLock2 = [(NPKLockStatusChangeCoordinator *)self blocksToPerformAfterDeviceLock];
    [(NPKLockStatusChangeCoordinator *)self _performWorkForEvent:1 withBlocks:blocksToPerformAfterDeviceLock2];

    if (self->_wipeBlocksAfterPerform)
    {
      [(NPKLockStatusChangeCoordinator *)self setBlocksToPerformAfterDeviceLock:0];
    }
  }
}

- (void)_performWorkForEvent:(unint64_t)event withBlocks:(id)blocks
{
  blocksCopy = blocks;
  delegate = [(NPKLockStatusChangeCoordinator *)self delegate];
  [delegate lockStatusChangeCoordinator:self willBeginPerformingBlocksForLockStatusEvent:event];

  [blocksCopy enumerateObjectsUsingBlock:&__block_literal_global];
  delegate2 = [(NPKLockStatusChangeCoordinator *)self delegate];
  [delegate2 lockStatusChangeCoordinator:self didFinishPerformingBlocksForLockStatusEvent:event];
}

- (id)description
{
  v3 = [(NSString *)self->_reason length];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v3)
  {
    [v4 stringWithFormat:@"<%@:%p> reason: %@", v6, self, self->_reason];
  }

  else
  {
    [v4 stringWithFormat:@"<%@:%p>", v6, self, v10];
  }
  v8 = ;

  return v8;
}

- (NPKLockStatusChangeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end