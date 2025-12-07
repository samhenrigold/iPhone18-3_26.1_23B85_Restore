@interface SDLockHandler
+ (void)setLockHandlerWithDelegate:(id)delegate options:(unint64_t)options;
- (BOOL)unlocked;
- (SDLockHandler)initWithDelegate:(id)delegate options:(unint64_t)options;
- (void)checkMigrationComplete;
- (void)handleFirstUnlock;
- (void)handleFirstUnlockHomeScreen;
- (void)handleFirstUnlockInSpringBoard;
- (void)handleMigrationComplete;
- (void)start;
@end

@implementation SDLockHandler

- (BOOL)unlocked
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MKBGetDeviceLockState();
  v3 = v2;
  v4 = logForCSLogCategoryIndex(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (v3 > 7)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = getMobileKeyBagStateCStr_sKeyBagStates[v3];
    }

    v9[0] = 67109378;
    v9[1] = v3;
    v10 = 2080;
    v11 = v5;
    _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_INFO, "[LOCK] MKBGetDeviceLockState returned ret:%d %s", v9, 0x12u);
  }

  v7 = v3 == 3 || v3 == 0;

  return v7;
}

- (void)handleFirstUnlock
{
  if ((atomic_exchange(&self->_didFirstUnlockSinceBoot, 1u) & 1) == 0)
  {
    v2 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "[LOCK] device unlocked since boot", v3, 2u);
    }
  }
}

- (void)checkMigrationComplete
{
  v2 = atomic_load(&self->_didMigrationComplete);
  if ((v2 & 1) == 0 && _getDeviceMigrationComplete())
  {

    [(SDLockHandler *)self handleMigrationComplete];
  }
}

+ (void)setLockHandlerWithDelegate:(id)delegate options:(unint64_t)options
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SDLockHandler_setLockHandlerWithDelegate_options___block_invoke;
  v8[3] = &unk_2789343B0;
  v9 = delegateCopy;
  optionsCopy = options;
  v6 = setLockHandlerWithDelegate_options__onceToken;
  v7 = delegateCopy;
  if (v6 != -1)
  {
    dispatch_once(&setLockHandlerWithDelegate_options__onceToken, v8);
  }
}

uint64_t __52__SDLockHandler_setLockHandlerWithDelegate_options___block_invoke(uint64_t a1)
{
  v1 = [[SDLockHandler alloc] initWithDelegate:*(a1 + 32) options:*(a1 + 40)];
  v2 = sSDLockHandler;
  sSDLockHandler = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)handleMigrationComplete
{
  if ((atomic_exchange(&self->_didMigrationComplete, 1u) & 1) == 0)
  {
    v3 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "[LOCK] Migration Complete", buf, 2u);
    }

    indexQueue = [(SDLockHandlerDelegate *)self->_delegate indexQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SDLockHandler_handleMigrationComplete__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    dispatch_async(indexQueue, block);

    notificationQueue = self->_notificationQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SDLockHandler_handleMigrationComplete__block_invoke_2;
    v6[3] = &unk_278934050;
    v6[4] = self;
    dispatch_async(notificationQueue, v6);
  }
}

uint64_t __40__SDLockHandler_handleMigrationComplete__block_invoke_2(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 44) != -1)
  {
    v1 = result;
    v2 = logForCSLogCategoryIndex(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(v1 + 32) + 44);
      v4[0] = 67109378;
      v4[1] = v3;
      v5 = 2080;
      v6 = "com.apple.springboard.homescreenunlocked";
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "[LOCK] cancel token %d %s", v4, 0x12u);
    }

    result = notify_cancel(*(*(v1 + 32) + 44));
    *(*(v1 + 32) + 44) = -1;
  }

  return result;
}

- (void)handleFirstUnlockHomeScreen
{
  if ((atomic_exchange(&self->_didFirstUnlockInHomeScreen, 1u) & 1) == 0)
  {
    v3 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "[LOCK] Home Screen first unlock", v4, 2u);
    }

    [(SDLockHandler *)self handleMigrationComplete];
  }
}

- (void)handleFirstUnlockInSpringBoard
{
  selfCopy = self;
  v3 = atomic_load(&self->_didMigrationComplete);
  if ((v3 & 1) == 0)
  {
    if (!_getDeviceMigrationComplete())
    {
      return;
    }

    self = [(SDLockHandler *)selfCopy handleMigrationComplete];
  }

  if ((atomic_exchange(&selfCopy->_didFirstUnlockInSpringBoard, 1u) & 1) == 0)
  {
    v4 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231A35000, v4, OS_LOG_TYPE_DEFAULT, "[LOCK] SpringBoard first unlock", buf, 2u);
    }

    indexQueue = [(SDLockHandlerDelegate *)selfCopy->_delegate indexQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke;
    block[3] = &unk_278934050;
    block[4] = selfCopy;
    dispatch_async(indexQueue, block);
  }
}

void __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) firstUnlockSBCompleted];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke_2;
  block[3] = &unk_278934050;
  block[4] = v2;
  dispatch_async(v3, block);
}

uint64_t __47__SDLockHandler_handleFirstUnlockInSpringBoard__block_invoke_2(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 48) != -1)
  {
    v1 = result;
    v2 = logForCSLogCategoryIndex(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(v1 + 32) + 48);
      v4 = *MEMORY[0x277D67770];
      v5[0] = 67109378;
      v5[1] = v3;
      v6 = 2080;
      v7 = v4;
      _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "[LOCK] cancel token %d %s", v5, 0x12u);
    }

    result = notify_cancel(*(*(v1 + 32) + 48));
    *(*(v1 + 32) + 48) = -1;
  }

  return result;
}

- (SDLockHandler)initWithDelegate:(id)delegate options:(unint64_t)options
{
  v61 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v51.receiver = self;
  v51.super_class = SDLockHandler;
  v8 = [(SDLockHandler *)&v51 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
    *&v9->_notifyTokenKeybagLockStateNotifyToken = -1;
    v9->_options = options;
    v9->_notifyTokenSBLockState = -1;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_initially_inactive(v10);
    v12 = dispatch_queue_create("com.apple.spotlight.locknotification", v11);
    notificationQueue = v9->_notificationQueue;
    v9->_notificationQueue = v12;

    if (MKBDeviceUnlockedSinceBoot() || MKBGetDeviceLockState() == 3)
    {
      [(SDLockHandler *)v9 handleFirstUnlock];
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = MEMORY[0x277D67770];
    if (v9->_options & 5) != 0 || (_getDeviceMigrationComplete())
    {
      [(SDLockHandler *)v9 handleMigrationComplete];
      v16 = *v15;
      if ((v14 & 1) != 0 || (out_token = -1, state64 = -1, notify_register_check(v16, &out_token)))
      {
        v17 = 0;
      }

      else
      {
        check = 0;
        if (!notify_check(out_token, &check))
        {
          if (check)
          {
            state = notify_get_state(out_token, &state64);
            if (!state)
            {
              v19 = logForCSLogCategoryIndex(state);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                v56 = out_token;
                v57 = 2080;
                v58 = v16;
                v59 = 2048;
                v60 = state64;
                _os_log_impl(&dword_231A35000, v19, OS_LOG_TYPE_DEFAULT, "[LOCK] check %d %s %lu", buf, 0x1Cu);
              }
            }
          }
        }

        notify_cancel(out_token);
        v17 = 0;
        v20 = 0;
        if (!state64)
        {
LABEL_32:
          v34 = v9->_notificationQueue;
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_8;
          v45[3] = &unk_2789343D8;
          v35 = v9;
          v46 = v35;
          v36 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v9->_notifyTokenKeybagLockStateNotifyToken, v34, v45);
          v37 = v36;
          v38 = logForCSLogCategoryIndex(v36);
          v39 = v38;
          if (v37)
          {
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [SDLockHandler initWithDelegate:options:];
            }
          }

          else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            notifyTokenKeybagLockStateNotifyToken = v9->_notifyTokenKeybagLockStateNotifyToken;
            *buf = 67109378;
            v56 = notifyTokenKeybagLockStateNotifyToken;
            v57 = 2080;
            v58 = "com.apple.mobile.keybagd.lock_status";
            _os_log_impl(&dword_231A35000, v39, OS_LOG_TYPE_DEFAULT, "[LOCK] token %d %s", buf, 0x12u);
          }

          v41 = v35;
          v42 = AKSEventsRegister();
          v41->_aksEvent = v42;
          if (v42)
          {
            if (v20)
            {
LABEL_40:

              goto LABEL_41;
            }
          }

          else
          {
            v44 = logForCSLogCategoryIndex(0);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [SDLockHandler initWithDelegate:v44 options:?];
            }

            if (v20)
            {
              goto LABEL_40;
            }
          }

          [(SDLockHandler *)v41 handleFirstUnlockInSpringBoard];
          goto LABEL_40;
        }
      }
    }

    else
    {
      v16 = *v15;
      v17 = 1;
    }

    v21 = v9->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke;
    handler[3] = &unk_2789343D8;
    v22 = v9;
    v50 = v22;
    v23 = notify_register_dispatch(v16, &v9->_notifyTokenSBLockState, v21, handler);
    v24 = v23;
    v25 = logForCSLogCategoryIndex(v23);
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(SDLockHandler *)v16 initWithDelegate:v24 options:v26];
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      notifyTokenSBLockState = v9->_notifyTokenSBLockState;
      *buf = 67109378;
      v56 = notifyTokenSBLockState;
      v57 = 2080;
      v58 = v16;
      _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_DEFAULT, "[LOCK] token %d %s", buf, 0x12u);
    }

    if (v17)
    {
      v28 = v9->_notificationQueue;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_6;
      v47[3] = &unk_2789343D8;
      v48 = v22;
      v29 = notify_register_dispatch("com.apple.springboard.homescreenunlocked", &v9->_notifyTokenSBHomescreenUnlocked, v28, v47);
      v30 = v29;
      v31 = logForCSLogCategoryIndex(v29);
      v32 = v31;
      if (v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SDLockHandler initWithDelegate:options:];
        }
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        notifyTokenSBHomescreenUnlocked = v9->_notifyTokenSBHomescreenUnlocked;
        *buf = 67109378;
        v56 = notifyTokenSBHomescreenUnlocked;
        v57 = 2080;
        v58 = "com.apple.springboard.homescreenunlocked";
        _os_log_impl(&dword_231A35000, v32, OS_LOG_TYPE_DEFAULT, "[LOCK] token %d %s", buf, 0x12u);
      }
    }

    v20 = 1;
    goto LABEL_32;
  }

LABEL_41:

  return v9;
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke(uint64_t a1, int token)
{
  v18 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = state;
    v5 = logForCSLogCategoryIndex(state);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__SDLockHandler_initWithDelegate_options___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    v12 = state64;
    v13 = logForCSLogCategoryIndex(state);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "NO";
      if (!v12)
      {
        v14 = "YES";
      }

      *buf = 136315138;
      v17 = v14;
      _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "[LOCK] SpringBoard unlocked: %s", buf, 0xCu);
    }

    if (!v12)
    {
      [*(a1 + 32) handleFirstUnlockInSpringBoard];
    }
  }
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_6(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = logForCSLogCategoryIndex(state);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SDLockHandler_initWithDelegate_options___block_invoke_6_cold_1();
    }
  }

  else
  {
    v5 = state64;
    v6 = logForCSLogCategoryIndex(state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "NO";
      if (v5 == 1)
      {
        v7 = "YES";
      }

      *buf = 136315138;
      v10 = v7;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "[LOCK] Home Screen: %s", buf, 0xCu);
    }

    if (v5 == 1)
    {
      [*(a1 + 32) handleFirstUnlockHomeScreen];
    }
  }
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_8(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24 = @"ExtendedDeviceLockState";
  v25[0] = *MEMORY[0x277CBED28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v3 = MKBGetDeviceLockState();
  v4 = v3;
  v5 = logForCSLogCategoryIndex(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 7)
    {
      v6 = "unknown";
    }

    else
    {
      v6 = getMobileKeyBagStateCStr_sKeyBagStates[v4];
    }

    *buf = 67109378;
    v21 = v4;
    v22 = 2080;
    v23 = v6;
    _os_log_impl(&dword_231A35000, v5, OS_LOG_TYPE_DEFAULT, "[LOCK] Device state changed: %d %s", buf, 0x12u);
  }

  if (v4 > 7 || ((1 << v4) & 0xC9) == 0)
  {
    v8 = 0;
  }

  else
  {
    [*(a1 + 32) handleFirstUnlock];
    v8 = 1;
  }

  v9 = qos_class_self();
  v10 = dispatch_get_global_queue(v9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_11;
  block[3] = &unk_278934400;
  v18 = *(a1 + 32);
  v19 = v8;
  dispatch_async(v10, block);

  v11 = [*(*(a1 + 32) + 8) indexQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SDLockHandler_initWithDelegate_options___block_invoke_2;
  v13[3] = &unk_278934428;
  v14 = v2;
  v16 = v4;
  v15 = *(a1 + 32);
  v12 = v2;
  dispatch_async(v11, v13);
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MKBGetDeviceLockState();
  v4 = v3;
  v5 = *(a1 + 48);
  v6 = logForCSLogCategoryIndex(v3);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    if (v4 > 7)
    {
      v8 = "unknown";
    }

    else
    {
      v8 = getMobileKeyBagStateCStr_sKeyBagStates[v4];
    }

    v15 = 67109378;
    v16 = v4;
    v17 = 2080;
    *v18 = v8;
    v11 = "[LOCK] Device state %d %s";
    v12 = v6;
    v13 = 18;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 48);
    if (v9 > 7)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = getMobileKeyBagStateCStr_sKeyBagStates[v9];
    }

    if (v4 > 7)
    {
      v14 = "unknown";
    }

    else
    {
      v14 = getMobileKeyBagStateCStr_sKeyBagStates[v4];
    }

    v15 = 67109890;
    v16 = v9;
    v17 = 1024;
    *v18 = v4;
    *&v18[4] = 2080;
    *&v18[6] = v10;
    v19 = 2080;
    v20 = v14;
    v11 = "[LOCK] Device state:(%d/%d) (%s/%s)";
    v12 = v6;
    v13 = 34;
  }

  _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
LABEL_16:

  if (v4 <= 7)
  {
    if (((1 << v4) & 0xC9) != 0)
    {
      [*(*(a1 + 40) + 8) unlocked];
    }

    else if (v4 == 1)
    {
      [*(*(a1 + 40) + 8) locked];
    }

    else if (v4 == 2)
    {
      [*(*(a1 + 40) + 8) locking];
    }
  }
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_12(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (a2 == 1)
  {
    value[5] = v3;
    value[6] = v4;
    value[0] = 0;
    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CEE040], value))
    {
      v7 = CFGetTypeID(value[0]);
      if (v7 == CFBooleanGetTypeID())
      {
        v8 = CFBooleanGetValue(value[0]);
        if (v8)
        {
          v9 = logForCSLogCategoryIndex(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEFAULT, "Received Cx expiring notification", buf, 2u);
          }

          [*(*(a1 + 32) + 8) lockingCx];
        }
      }
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CEE038], value))
    {
      v10 = CFGetTypeID(value[0]);
      if (v10 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          v11 = logForCSLogCategoryIndex([*(*(a1 + 32) + 8) lockedCx]);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_DEFAULT, "Received Cx expired notification", v12, 2u);
          }
        }
      }
    }
  }
}

- (void)start
{
  if ((atomic_exchange(&self->_didStart, 1u) & 1) == 0)
  {
    v3 = logForCSLogCategoryIndex(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_231A35000, v3, OS_LOG_TYPE_DEFAULT, "[LOCK] handler started", v4, 2u);
    }

    dispatch_activate(self->_notificationQueue);
  }
}

- (void)initWithDelegate:(os_log_t)log options:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2080;
  v5 = a1;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "Error %u setting up notification handler for %s", v3, 0x12u);
}

void __42__SDLockHandler_initWithDelegate_options___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109378;
  HIDWORD(v8) = a1;
  LOWORD(v9) = 2080;
  *(&v9 + 2) = *MEMORY[0x277D67770];
  OUTLINED_FUNCTION_1_1(&dword_231A35000, a2, a3, "Error %u getting state for %s", a5, a6, a7, a8, v8, v9, WORD4(v9), *MEMORY[0x277D85DE8]);
}

@end