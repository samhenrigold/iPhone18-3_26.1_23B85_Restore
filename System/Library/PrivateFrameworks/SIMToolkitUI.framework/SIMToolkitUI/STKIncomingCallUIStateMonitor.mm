@interface STKIncomingCallUIStateMonitor
+ (STKIncomingCallUIStateMonitor)sharedInstance;
- (BOOL)isShowingIncomingCallUI;
- (STKIncomingCallUIStateMonitor)init;
- (void)_refreshState;
- (void)_setIncomingCallUIState:(BOOL)state forReason:(id)reason;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation STKIncomingCallUIStateMonitor

+ (STKIncomingCallUIStateMonitor)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[STKIncomingCallUIStateMonitor sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

uint64_t __47__STKIncomingCallUIStateMonitor_sharedInstance__block_invoke()
{
  sharedInstance___instance_0 = objc_alloc_init(STKIncomingCallUIStateMonitor);

  return MEMORY[0x2821F96F8]();
}

- (STKIncomingCallUIStateMonitor)init
{
  v12.receiver = self;
  v12.super_class = STKIncomingCallUIStateMonitor;
  v2 = [(STKIncomingCallUIStateMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_observersLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = dispatch_get_global_queue(33, 0);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __37__STKIncomingCallUIStateMonitor_init__block_invoke;
    v9 = &unk_279B4C648;
    objc_copyWeak(&v10, &location);
    notify_register_dispatch("MPInCallAlertStateChangeNotification", &v3->_inCallAlertVisibleNotifyToken, v4, &v6);

    [(STKIncomingCallUIStateMonitor *)v3 _refreshState:v6];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __37__STKIncomingCallUIStateMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshState];
}

- (BOOL)isShowingIncomingCallUI
{
  os_unfair_lock_lock(&self->_lock);
  lock_showingIncomingCallUI = self->_lock_showingIncomingCallUI;
  os_unfair_lock_unlock(&self->_lock);
  return lock_showingIncomingCallUI;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v8 = observerCopy;
    os_unfair_lock_lock(&self->_observersLock);
    observersLock_observers = self->_observersLock_observers;
    if (!observersLock_observers)
    {
      hashTableWithWeakObjects = [MEMORY[0x277CCAA50] hashTableWithWeakObjects];
      v7 = self->_observersLock_observers;
      self->_observersLock_observers = hashTableWithWeakObjects;

      observersLock_observers = self->_observersLock_observers;
    }

    [(NSHashTable *)observersLock_observers addObject:v8];
    os_unfair_lock_unlock(&self->_observersLock);
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observersLock_observers removeObject:observerCopy];

    if (![(NSHashTable *)self->_observersLock_observers count])
    {
      observersLock_observers = self->_observersLock_observers;
      self->_observersLock_observers = 0;
    }

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)_refreshState
{
  state64 = 0;
  notify_get_state(self->_inCallAlertVisibleNotifyToken, &state64);
  [(STKIncomingCallUIStateMonitor *)self _setIncomingCallUIState:state64 != 0 forReason:@"Refresh"];
}

- (void)_setIncomingCallUIState:(BOOL)state forReason:(id)reason
{
  stateCopy = state;
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_lock(&self->_observersLock);
  if (self->_lock_showingIncomingCallUI == stateCopy)
  {
    v7 = 0;
  }

  else
  {
    self->_lock_showingIncomingCallUI = stateCopy;
    [(BSTimer *)self->_fallbackTimer cancel];
    fallbackTimer = self->_fallbackTimer;
    self->_fallbackTimer = 0;

    v7 = [(NSHashTable *)self->_observersLock_observers copy];
    v9 = STKCommonLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v28 = stateCopy;
      v29 = 2114;
      v30 = reasonCopy;
      _os_log_impl(&dword_262BB4000, v9, OS_LOG_TYPE_DEFAULT, "Incoming call UI state changed to: %d for reason: %{public}@", buf, 0x12u);
    }

    if (stateCopy)
    {
      v10 = MEMORY[0x277CF0D00];
      [(STKIncomingCallUIStateMonitor *)self _fallbackTimerDuration];
      v12 = v11;
      v13 = dispatch_get_global_queue(33, 0);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __67__STKIncomingCallUIStateMonitor__setIncomingCallUIState_forReason___block_invoke;
      v25[3] = &unk_279B4C428;
      v25[4] = self;
      v14 = [v10 scheduledTimerWithFireInterval:v13 queue:v25 handler:v12];
      v15 = self->_fallbackTimer;
      self->_fallbackTimer = v14;
    }
  }

  os_unfair_lock_unlock(&self->_observersLock);
  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * v20++) incomingCallUIStateDidChange:{stateCopy, v21}];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v18);
  }
}

@end