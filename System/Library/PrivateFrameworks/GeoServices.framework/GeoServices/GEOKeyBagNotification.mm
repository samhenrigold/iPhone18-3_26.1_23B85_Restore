@interface GEOKeyBagNotification
+ (GEOKeyBagNotification)sharedObject;
- (GEOKeyBagNotification)init;
- (void)_statusChangedAfterFirstUnlock;
- (void)updateState;
@end

@implementation GEOKeyBagNotification

+ (GEOKeyBagNotification)sharedObject
{
  if (sharedObject_once != -1)
  {
    dispatch_once(&sharedObject_once, &__block_literal_global_42630);
  }

  v3 = sharedObject_singleton;

  return v3;
}

- (GEOKeyBagNotification)init
{
  v13.receiver = self;
  v13.super_class = GEOKeyBagNotification;
  v2 = [(GEOKeyBagNotification *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(GEOKeyBagNotification *)v2 updateState];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__42601;
    v11[4] = __Block_byref_object_dispose__42602;
    v4 = v3;
    v12 = v4;
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__GEOKeyBagNotification_init__block_invoke;
    handler[3] = &unk_1E7055160;
    handler[4] = v11;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", v4 + 3, v5, handler);

    v7 = *MEMORY[0x1E69B1A70];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __29__GEOKeyBagNotification_init__block_invoke_13;
    v9[3] = &unk_1E7055160;
    v9[4] = v11;
    notify_register_dispatch(v7, v4 + 4, v5, v9);

    _Block_object_dispose(v11, 8);
  }

  return v3;
}

- (void)updateState
{
  v3 = MKBGetDeviceLockState();
  v4 = 2 * (v3 == 1);
  if (v3 == 2)
  {
    v4 = 1;
  }

  currentState = self->_currentState;
  atomic_compare_exchange_strong(&self->_currentState, &currentState, v4);
}

void __37__GEOKeyBagNotification_sharedObject__block_invoke()
{
  v0 = objc_alloc_init(GEOKeyBagNotification);
  v1 = sharedObject_singleton;
  sharedObject_singleton = v0;
}

uint64_t __29__GEOKeyBagNotification_init__block_invoke_13(uint64_t a1)
{
  v2 = GEOGetKeyBagLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_18660C000, v2, OS_LOG_TYPE_DEBUG, "kMobileKeyBagLockStatusNotifyToken", v4, 2u);
  }

  return [*(*(*(a1 + 32) + 8) + 40) _statusChangedAfterFirstUnlock];
}

- (void)_statusChangedAfterFirstUnlock
{
  state = [(GEOKeyBagNotification *)self state];
  [(GEOKeyBagNotification *)self updateState];
  state2 = [(GEOKeyBagNotification *)self state];
  if (state != state2)
  {
    v5 = state2;
    v6 = GEOGetKeyBagLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5 == 2)
    {
      if (v7)
      {
        *v11 = 0;
        _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_DEBUG, "State changed, posting locked notification", v11, 2u);
      }

      v8 = @"GEODeviceLockedNotification";
    }

    else if (v5 == 1)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_DEBUG, "State changed, posting locking notification", buf, 2u);
      }

      v8 = @"GEODeviceLockingNotification";
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_DEBUG, "State changed, posting unlocked notification", v10, 2u);
      }

      v8 = @"GEODeviceUnlockedNotification";
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:v8 object:self userInfo:0];
  }
}

@end