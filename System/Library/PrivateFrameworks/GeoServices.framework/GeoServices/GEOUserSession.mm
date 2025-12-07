@interface GEOUserSession
+ (GEOSessionID)_newSessionId;
+ (id)sharedInstance;
- (GEOUserSession)init;
- (NSDictionary)_sharedSessionDataByAppId;
- (double)_currentTime;
- (id)_get15moDeviceSessionData;
- (id)_mapsUserSessionEntity;
- (id)_updateSharedSessionDataByAppId;
- (void)_initializeShortAndNavData;
@end

@implementation GEOUserSession

- (NSDictionary)_sharedSessionDataByAppId
{
  shortSessionByAppID = self->_shortSessionByAppID;
  if (shortSessionByAppID)
  {
    _updateSharedSessionDataByAppId = shortSessionByAppID;
  }

  else
  {
    _updateSharedSessionDataByAppId = [(GEOUserSession *)self _updateSharedSessionDataByAppId];
  }

  return _updateSharedSessionDataByAppId;
}

- (id)_updateSharedSessionDataByAppId
{
  v3 = _getValue(10, &GeoUserSessionConfig_ShortSessionDataByAppID_Metadata, 1, 0, 0, 0);
  if (v3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    v11 = 0;
    v6 = [v4 unarchivedDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() fromData:v3 error:&v11];
    v7 = v11;
    shortSessionByAppID = self->_shortSessionByAppID;
    self->_shortSessionByAppID = v6;

    v9 = self->_shortSessionByAppID;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

void __32__GEOUserSession_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(GEOUserSession);
  v1 = sharedInstance__sharedUserSession;
  sharedInstance__sharedUserSession = v0;
}

- (void)_initializeShortAndNavData
{
  self->_shortSessionID = self->_zeroSessionID;
  self->_shortSessionStartTime = 0.0;
  navigationDirectionsID = self->_navigationDirectionsID;
  self->_navigationDirectionsID = 0;

  self->_navigationSessionID = self->_zeroSessionID;
  previousNavigationDirectionsID = self->_previousNavigationDirectionsID;
  self->_navigationSessionStartTime = 0.0;
  self->_previousNavigationDirectionsID = 0;

  self->_previousNavigationSessionID = self->_zeroSessionID;
}

- (GEOUserSession)init
{
  v23.receiver = self;
  v23.super_class = GEOUserSession;
  v2 = [(GEOUserSession *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_shortNavSessionLock._os_unfair_lock_opaque = 0;
    v2->_longSessionLock._os_unfair_lock_opaque = 0;
    v2->_locIntelSessionLock._os_unfair_lock_opaque = 0;
    v4 = 1;
    v2->_shortNavSessionNeedsInit = 1;
    v2->_longSessionNeedsInit = 1;
    v2->_locIntelNeedsInit = 1;
    v5 = geo_dispatch_queue_create();
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v5;

    v3->_zeroSessionID._high = 0;
    v3->_zeroSessionID._low = 0;
    if (([objc_opt_class() initialShareSessionWithMaps] & 1) == 0)
    {
      v4 = +[GEOPlatform isRunningInGeod];
    }

    v3->_shareSessionWithMaps = v4;
    v3->_fifteenMoDeviceSessionLock._os_unfair_lock_opaque = 0;
    v7 = v3->_serialQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __22__GEOUserSession_init__block_invoke;
    v21[3] = &unk_1E7063220;
    v8 = v3;
    v22 = v8;
    v9 = _GEOConfigAddBlockListenerForKey(10, &GeoUserSessionConfig_ShortSessionDataByAppID_Metadata, v7, v21);
    shortSessionListener = v8->_shortSessionListener;
    v8->_shortSessionListener = v9;

    v11 = v3->_serialQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __22__GEOUserSession_init__block_invoke_2;
    v19[3] = &unk_1E7063220;
    v12 = v8;
    v20 = v12;
    v13 = _GEOConfigAddBlockListenerForKey(16, &GeoUserSessionConfig_LocIntelSessionData_Metadata, v11, v19);
    locIntelSessionListener = v12->_locIntelSessionListener;
    v12->_locIntelSessionListener = v13;

    v15 = GEOGetUserSessionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18[0] = 0;
      _os_log_impl(&dword_18660C000, v15, OS_LOG_TYPE_DEBUG, "new instance", v18, 2u);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, onLocationServicesResetNotification, @"com.apple.Preferences.ResetPrivacyWarningsNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance__once != -1)
  {
    dispatch_once(&sharedInstance__once, &__block_literal_global_152274);
  }

  v3 = sharedInstance__sharedUserSession;

  return v3;
}

- (double)_currentTime
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  [v2 bestReferenceTime];
  v4 = v3;

  return v4;
}

- (id)_get15moDeviceSessionData
{
  _get15moDeviceRawSessionData = [(GEOUserSession *)self _get15moDeviceRawSessionData];
  v3 = GEOGetUserSessionLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (_get15moDeviceRawSessionData)
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_INFO, "15mo device raw session data was retrieved", v7, 2u);
    }

    v5 = [[GEOAPSessionData alloc] initWithData:_get15moDeviceRawSessionData];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_INFO, "15mo device raw session data not found", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (GEOSessionID)_newSessionId
{
  v5 = 0;
  v6 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  [v2 getUUIDBytes:&v5];

  v3 = v5;
  v4 = v6;
  result._low = v4;
  result._high = v3;
  return result;
}

void __22__GEOUserSession_init__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = [*(a1 + 32) _updateSharedSessionDataByAppId];
  v3 = (*(a1 + 32) + 40);

  os_unfair_lock_unlock(v3);
}

- (id)_mapsUserSessionEntity
{
  if (self->_shareSessionWithMaps)
  {
    *buf = 0;
    v7 = buf;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__152217;
    v10 = __Block_byref_object_dispose__152218;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__GEOUserSession__mapsUserSessionEntity__block_invoke;
    v5[3] = &unk_1E7063348;
    v5[4] = buf;
    [(GEOUserSession *)self shortSessionValues:v5];
    v2 = *(v7 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v3 = GEOGetUserSessionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_INFO, "maps short session requested but session sharing is not enabled", buf, 2u);
    }

    v2 = 0;
  }

  return v2;
}

void __40__GEOUserSession__mapsUserSessionEntity__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = [[GEOUserSessionEntity alloc] initWithSessionID:a2 sessionCreationTime:a3 sequenceNumber:a4, a6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end