@interface TLSilentModeController
+ (TLSilentModeController)sharedSilentModeController;
- (BOOL)_registerRingerSwitchChangedNotifyToken;
- (TLSilentModeController)init;
- (int64_t)_silentModeStatusForRingerSwitchChangedNotifyToken:(int)token;
- (int64_t)silentModeStatus;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)_cancelRingerSwitchChangedNotifyToken;
- (void)_performBlockOnAccessQueue:(id)queue;
- (void)_registerRingerSwitchChangedNotifyToken;
- (void)_setSilentModeStatus:(int64_t)status;
- (void)_updateSilentModeStatusUsingRingerSwitchChangedNotifyToken:(int)token;
- (void)dealloc;
@end

@implementation TLSilentModeController

+ (TLSilentModeController)sharedSilentModeController
{
  if (sharedSilentModeController__TLSilentModeControllerSharedInstanceOnceToken != -1)
  {
    +[TLSilentModeController sharedSilentModeController];
  }

  v3 = sharedSilentModeController__TLSilentModeControllerSharedInstance;

  return v3;
}

uint64_t __52__TLSilentModeController_sharedSilentModeController__block_invoke()
{
  sharedSilentModeController__TLSilentModeControllerSharedInstance = objc_alloc_init(TLSilentModeController);

  return MEMORY[0x1EEE66BB8]();
}

- (TLSilentModeController)init
{
  v17.receiver = self;
  v17.super_class = TLSilentModeController;
  v2 = [(TLSilentModeController *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    v8 = [v4 stringWithFormat:@"%@.%@-%@", bundleIdentifier, v7, @"AccessQueue"];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v8;

    v10 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v10;

    if ([(TLSilentModeController *)v2 _registerRingerSwitchChangedNotifyToken])
    {
      v12 = [(TLSilentModeController *)v2 _silentModeStatusForRingerSwitchChangedNotifyToken:v2->_ringerSwitchChangedNotifyToken];
    }

    else
    {
      v12 = -1;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __30__TLSilentModeController_init__block_invoke;
    v14[3] = &unk_1E8578CC0;
    v15 = v2;
    v16 = v12;
    [(TLSilentModeController *)v15 _performBlockOnAccessQueue:v14];
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  [(TLSilentModeController *)self _cancelRingerSwitchChangedNotifyToken];
  dispatch_sync(v4, &__block_literal_global_8_0);

  v5.receiver = self;
  v5.super_class = TLSilentModeController;
  [(TLSilentModeController *)&v5 dealloc];
}

- (int64_t)silentModeStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__TLSilentModeController_silentModeStatus__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLSilentModeController *)self _performBlockOnAccessQueue:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setSilentModeStatus:(int64_t)status
{
  [(TLSilentModeController *)self _assertRunningOnAccessQueue];
  if (self->_silentModeStatus != status)
  {
    self->_silentModeStatus = status;
  }
}

- (void)_performBlockOnAccessQueue:(id)queue
{
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_sync(accessQueue, queue);
  }
}

- (void)_assertRunningOnAccessQueue
{
  v27 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    v5 = strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]);
    if (v5)
    {
      v7 = TLLogGeneral(v5, v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

      if (v8)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLSilentModeController.m"];
        v13 = TLLogGeneral(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v11 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v19 = 136381443;
          v20 = "[TLSilentModeController _assertRunningOnAccessQueue]";
          v21 = 2113;
          v22 = lastPathComponent;
          v23 = 2049;
          v24 = 114;
          v25 = 2113;
          v26 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v19, 0x2Au);
        }
      }

      else
      {
        v11 = TLLogGeneral(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v18 = TLLogGeneral(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue];
      }
    }
  }
}

- (void)_assertNotRunningOnAccessQueue
{
  v27 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {

    dispatch_assert_queue_not_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    v5 = strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]);
    if (!v5)
    {
      v7 = TLLogGeneral(v5, v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

      if (v8)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLSilentModeController.m"];
        v13 = TLLogGeneral(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v11 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v19 = 136381443;
          v20 = "[TLSilentModeController _assertNotRunningOnAccessQueue]";
          v21 = 2113;
          v22 = lastPathComponent;
          v23 = 2049;
          v24 = 122;
          v25 = 2113;
          v26 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v19, 0x2Au);
        }
      }

      else
      {
        v11 = TLLogGeneral(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v18 = TLLogGeneral(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue];
      }
    }
  }
}

- (void)_cancelRingerSwitchChangedNotifyToken
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(&dword_1D9356000, v0, v1, "%{public}@: Failed to cancel notify token for notify topic named %{public}s; notifyCancelStatus = %lu.");
}

- (BOOL)_registerRingerSwitchChangedNotifyToken
{
  objc_initWeak(&location, self);
  self->_ringerSwitchChangedNotifyToken = -1;
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__TLSilentModeController__registerRingerSwitchChangedNotifyToken__block_invoke;
  v9[3] = &unk_1E8579C30;
  objc_copyWeak(&v10, &location);
  v4 = notify_register_dispatch("com.apple.springboard.ringerstate", &self->_ringerSwitchChangedNotifyToken, accessQueue, v9);
  v6 = v4;
  if (v4)
  {
    v7 = TLLogGeneral(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [TLSilentModeController _registerRingerSwitchChangedNotifyToken];
    }
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return v6 == 0;
}

void __65__TLSilentModeController__registerRingerSwitchChangedNotifyToken__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _updateSilentModeStatusUsingRingerSwitchChangedNotifyToken:a2];
    WeakRetained = v4;
  }
}

- (int64_t)_silentModeStatusForRingerSwitchChangedNotifyToken:(int)token
{
  v26 = *MEMORY[0x1E69E9840];
  if (token == -1)
  {
    v8 = TLLogGeneral(self, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TLSilentModeController *)self _silentModeStatusForRingerSwitchChangedNotifyToken:v8];
    }

    return -1;
  }

  else
  {
    state64 = -1;
    state = notify_get_state(token, &state64);
    if (state)
    {
      v6 = TLLogGeneral(state, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [TLSilentModeController _silentModeStatusForRingerSwitchChangedNotifyToken:];
      }

      v7 = -1;
    }

    else
    {
      v9 = -1;
      v10 = @"unknown";
      v11 = @"silent";
      if (state64)
      {
        v11 = 0;
      }

      else
      {
        v10 = @"on";
        v9 = 1;
      }

      if (state64 == 1)
      {
        v12 = @"tone1";
      }

      else
      {
        v12 = v11;
      }

      if (state64 == 1)
      {
        v13 = @"off";
      }

      else
      {
        v13 = v10;
      }

      if (state64 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v9;
      }

      v6 = TLLogGeneral(state, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        selfCopy = self;
        v18 = 2048;
        v19 = state64;
        v20 = 2114;
        v21 = v12;
        v22 = 2082;
        v23 = "com.apple.springboard.ringerstate";
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved ringerSwitchState = %llu (%{public}@) from notify token for topic named %{public}s; converted to silentModeStatus = %{public}@.", buf, 0x34u);
      }
    }
  }

  return v7;
}

- (void)_updateSilentModeStatusUsingRingerSwitchChangedNotifyToken:(int)token
{
  v3 = *&token;
  v12 = *MEMORY[0x1E69E9840];
  _assertRunningOnAccessQueue = [(TLSilentModeController *)self _assertRunningOnAccessQueue];
  v7 = TLLogGeneral(_assertRunningOnAccessQueue, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2082;
    v11 = "com.apple.springboard.ringerstate";
    _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Notify block fired for topic named %{public}s; updating silent mode.", &v8, 0x16u);
  }

  [(TLSilentModeController *)self _setSilentModeStatus:[(TLSilentModeController *)self _silentModeStatusForRingerSwitchChangedNotifyToken:v3]];
}

- (void)_registerRingerSwitchChangedNotifyToken
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(&dword_1D9356000, v0, v1, "%{public}@: Failed to register notify token for notify topic named %{public}s; notifyRegisterDispatchStatus = %lu.");
}

- (void)_silentModeStatusForRingerSwitchChangedNotifyToken:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(&dword_1D9356000, v0, v1, "%{public}@: Failed to get state for notify topic named %{public}s; notifyStatus = %lu.");
}

- (void)_silentModeStatusForRingerSwitchChangedNotifyToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = a1;
  v4 = 2082;
  v5 = "com.apple.springboard.ringerstate";
  _os_log_error_impl(&dword_1D9356000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get state for notify topic named %{public}s because ringerSwitchChangedNotifyToken = NOTIFY_TOKEN_INVALID.", &v2, 0x16u);
}

@end