@interface AXLTLockScreenObserver
- (AXLTLockScreenObserver)init;
- (AXLTLockScreenObserverDelegate)delegate;
- (void)_registerScreenNotification;
- (void)_updateScreenLock:(int)lock;
@end

@implementation AXLTLockScreenObserver

- (AXLTLockScreenObserver)init
{
  v5.receiver = self;
  v5.super_class = AXLTLockScreenObserver;
  v2 = [(AXLTLockScreenObserver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXLTLockScreenObserver *)v2 _registerScreenNotification];
  }

  return v3;
}

- (void)_registerScreenNotification
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__AXLTLockScreenObserver__registerScreenNotification__block_invoke;
  v6[3] = &unk_27981CC78;
  objc_copyWeak(&v7, &location);
  v3 = _Block_copy(v6);
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  LODWORD(v4) = notify_register_dispatch("com.apple.springboard.lockstate", &self->_notifyLockStateToken, v4, v3);

  if (v4)
  {
    self->_notifyLockStateToken = -1;
  }

  else
  {
    (*(v3 + 2))(v3, self->_notifyLockStateToken);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__AXLTLockScreenObserver__registerScreenNotification__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    [WeakRetained _updateScreenLock:state64];
  }
}

- (void)_updateScreenLock:(int)lock
{
  v3 = *&lock;
  v16 = *MEMORY[0x277D85DE8];
  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_INFO, "Updating system lock status: %@", &v14, 0xCu);
  }

  if (self->_isScreenLocked != v3)
  {
    self->_isScreenLocked = v3 != 0;
    delegate = [(AXLTLockScreenObserver *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(AXLTLockScreenObserver *)self delegate];
      [delegate2 screenLockStateChanged:self->_isScreenLocked];
    }

    isScreenLocked = self->_isScreenLocked;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = defaultCenter;
    if (isScreenLocked)
    {
      v13 = @"AXLTScreenLockedNotification";
    }

    else
    {
      v13 = @"AXLTScreenUnlockedNotification";
    }

    [defaultCenter postNotificationName:v13 object:0];
  }
}

- (AXLTLockScreenObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end