@interface GEOPrivacyManager
+ (id)sharedManager;
- (GEOPrivacyManager)init;
@end

@implementation GEOPrivacyManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__GEOPrivacyManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_81525 != -1)
  {
    dispatch_once(&sharedManager_onceToken_81525, block);
  }

  v2 = sharedManager_shared;

  return v2;
}

- (GEOPrivacyManager)init
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = GEOPrivacyManager;
  v2 = [(GEOPrivacyManager *)&v11 init];
  if (v2)
  {
    v3 = GEOGetGEOPrivacyManagerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v13 = @"com.apple.Preferences.ResetPrivacyWarningsNotification";
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "Subscribing for notifications to %{private}@", buf, 0xCu);
    }

    v4 = GEOGetGEOPrivacyManagerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v13 = @"com.apple.callhistory.RecentsClearedNotification";
      _os_log_impl(&dword_18660C000, v4, OS_LOG_TYPE_DEBUG, "Subscribing for notifications to %{private}@", buf, 0xCu);
    }

    v5 = GEOGetGEOPrivacyManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v13 = @"com.apple.locationd/Prefs";
      _os_log_impl(&dword_18660C000, v5, OS_LOG_TYPE_DEBUG, "Subscribing for notifications to %{private}@", buf, 0xCu);
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __25__GEOPrivacyManager_init__block_invoke;
    handler[3] = &unk_1E7059FD8;
    v6 = v2;
    v10 = v6;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x1E69E96A0], handler);
    v7 = v6;
  }

  return v2;
}

void __34__GEOPrivacyManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_shared;
  sharedManager_shared = v1;
}

@end