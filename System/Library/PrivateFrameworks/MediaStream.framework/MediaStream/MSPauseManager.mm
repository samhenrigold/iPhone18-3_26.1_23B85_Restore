@interface MSPauseManager
+ (id)sharedManager;
- (MSPauseManager)init;
- (MSPauseManagerDelegate)delegate;
- (void)_addPauseUUID:(id)d;
- (void)_removeTimerUUID:(id)d;
- (void)_timerDidFire:(id)fire;
- (void)dealloc;
- (void)pingPauseUUID:(id)d;
@end

@implementation MSPauseManager

- (MSPauseManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_timerDidFire:(id)fire
{
  v10 = *MEMORY[0x277D85DE8];
  userInfo = [fire userInfo];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v9 = userInfo;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Pause timer UUID %{public}@ expired.", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MSPauseManager__timerDidFire___block_invoke;
  v6[3] = &unk_2798A5260;
  v6[4] = self;
  v7 = userInfo;
  v5 = userInfo;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_removeTimerUUID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_UUIDToTimerMap count];
  v5 = [(NSMutableDictionary *)self->_UUIDToTimerMap objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 invalidate];
    [(NSMutableDictionary *)self->_UUIDToTimerMap removeObjectForKey:dCopy];
  }

  v7 = [(NSMutableDictionary *)self->_UUIDToTimerMap count];
  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 pauseManagerDidUnpause:self];
    }
  }
}

- (void)pingPauseUUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    mSMakeUUID = dCopy;
  }

  else
  {
    mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = mSMakeUUID;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Pause manager received an invalid UUID. Making up a new one: %{public}@", &v10, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = 138543362;
    v11 = mSMakeUUID;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Pause timer ping for UUID %{public}@", &v10, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_UUIDToTimerMap count];
  [(MSPauseManager *)self _addPauseUUID:mSMakeUUID];
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 pauseManagerDidPause:self];
    }
  }
}

- (void)_addPauseUUID:(id)d
{
  UUIDToTimerMap = self->_UUIDToTimerMap;
  dCopy = d;
  v10 = [(NSMutableDictionary *)UUIDToTimerMap objectForKey:dCopy];
  if (v10)
  {
    [v10 invalidate];
  }

  v6 = objc_alloc(MEMORY[0x277CBEBB8]);
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
  v8 = [v6 initWithFireDate:v7 interval:self target:sel__timerDidFire_ selector:dCopy userInfo:0 repeats:0.0];

  [(NSMutableDictionary *)self->_UUIDToTimerMap setObject:v8 forKey:dCopy];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop addTimer:v8 forMode:*MEMORY[0x277CBE640]];
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_UUIDToTimerMap allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MSPauseManager;
  [(MSPauseManager *)&v8 dealloc];
}

- (MSPauseManager)init
{
  v6.receiver = self;
  v6.super_class = MSPauseManager;
  v2 = [(MSPauseManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    UUIDToTimerMap = v2->_UUIDToTimerMap;
    v2->_UUIDToTimerMap = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  v2 = sharedManager_manager;
  if (!sharedManager_manager)
  {
    v3 = objc_alloc_init(MSPauseManager);
    v4 = sharedManager_manager;
    sharedManager_manager = v3;

    v2 = sharedManager_manager;
  }

  return v2;
}

@end