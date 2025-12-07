@interface GEOOfflineStateManager
+ (BOOL)isOfflineAvailable;
+ (GEOOfflineStateManager)shared;
+ (void)beginMonitoringAvailability;
@end

@implementation GEOOfflineStateManager

+ (GEOOfflineStateManager)shared
{
  if (+[GEOOfflineStateManager shared]::onceToken != -1)
  {
    dispatch_once(&+[GEOOfflineStateManager shared]::onceToken, &__block_literal_global_53105);
  }

  v3 = +[GEOOfflineStateManager shared]::_shared;

  return v3;
}

+ (BOOL)isOfflineAvailable
{
  +[GEOOfflineStateManager beginMonitoringAvailability];
  if (_offlineAvailabilityChangedNotifyToken == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_offlineAvailabilityChangedNotifyToken is invalid", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _offlineAvailabilityChangedNotifyToken != NOTIFY_TOKEN_INVALID", v4, 2u);
    }

    v2 = 0;
  }

  else
  {
    v2 = _offlineIsAvailable;
  }

  return v2 & 1;
}

+ (void)beginMonitoringAvailability
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (_offlineAvailabilityChangedNotifyToken == -1)
  {
    v1 = GEOOfflineAvailabilityChangedDarwinNotification;
    global_queue = geo_get_global_queue();
    v3 = notify_register_dispatch(v1, &_offlineAvailabilityChangedNotifyToken, global_queue, &__block_literal_global_80_53086);

    v5 = _offlineAvailabilityChangedNotifyToken;
    if (_offlineAvailabilityChangedNotifyToken == -1)
    {
      v6 = GEOGetOfflineStateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109120;
        v7[1] = v3;
        _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_ERROR, "Unable to install offline availability monitor: %u", v7, 8u);
      }
    }

    else
    {

      __53__GEOOfflineStateManager_beginMonitoringAvailability__block_invoke(v4, v5);
    }
  }
}

void __53__GEOOfflineStateManager_beginMonitoringAvailability__block_invoke(int a1, int token)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  state = notify_get_state(token, &v16);
  v3 = GEOGetOfflineStateLog();
  v4 = v3;
  if (state)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = state;
      _os_log_impl(&dword_18660C000, v4, OS_LOG_TYPE_ERROR, "Unable to get subscription count state: %u", buf, 8u);
    }

LABEL_24:

    return;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&dword_18660C000, v4, OS_LOG_TYPE_DEFAULT, "Got new subscription count state: %llu", buf, 0xCu);
  }

  _usableOfflineSubscriptionsCount = v16;
  v5 = v16 != 0;
  objc_opt_self();
  if (_offlineIsAvailable != v5)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = __50__GEOOfflineStateManager__setOfflineAvailability___block_invoke;
    v19 = &__block_descriptor_33_e5_v8__0l;
    v20 = v5;
    v4 = v17;
    v6 = objc_opt_self();
    v7 = [v6 isOfflineAvailable];
    v8 = [v6 isOfflineAvailableLocally];
    v18(v4);
    v9 = [v6 isOfflineAvailable];
    v10 = [v6 isOfflineAvailableLocally];
    v11 = GEOGetOfflineStateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "NO";
      if (v7)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      if (v9)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      *buf = 136446978;
      *&buf[4] = v13;
      if (v8)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      *&buf[12] = 2082;
      *&buf[14] = v14;
      *&buf[22] = 2082;
      v22 = v15;
      if (v10)
      {
        v12 = "YES";
      }

      v23 = 2082;
      v24 = v12;
      _os_log_impl(&dword_18660C000, v11, OS_LOG_TYPE_DEFAULT, "Offline availability changing from general: %{public}s -> %{public}s / local: %{public}s -> %{public}s", buf, 0x2Au);
    }

    if (v7 != v9 || v8 != v10)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __46__GEOOfflineStateManager__updateAvailability___block_invoke;
      v22 = &__block_descriptor_36_e5_v8__0l;
      LOBYTE(v23) = v9;
      HIBYTE(v23) = v7;
      LOBYTE(v24) = v10;
      BYTE1(v24) = v8;
      dispatch_async(MEMORY[0x1E69E96A0], buf);
    }

    goto LABEL_24;
  }
}

@end