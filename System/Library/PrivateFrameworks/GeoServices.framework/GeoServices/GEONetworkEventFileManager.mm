@interface GEONetworkEventFileManager
+ (id)sharedManager;
- (void)_clearTimer;
- (void)_closeFiles;
- (void)_startTimer;
- (void)commoninit;
@end

@implementation GEONetworkEventFileManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_9721 != -1)
  {
    dispatch_once(&sharedManager_onceToken_9721, &__block_literal_global_9722);
  }

  v3 = sharedManager_mgr;

  return v3;
}

- (void)_startTimer
{
  v3 = GEOGetNetEventFileManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "scheduling cleanup timer", v6, 2u);
  }

  UInteger = GEOConfigGetUInteger(471, &GeoServicesConfig_NetEventDataFileInactivityDuration_Metadata);
  v5 = dispatch_time(0, 1000000000 * UInteger);
  dispatch_source_set_timer(self->_closeTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void __43__GEONetworkEventFileManager_sharedManager__block_invoke()
{
  v2 = [GEOFilePaths pathFor:19];
  v0 = [[GEONetworkEventFileManager alloc] initWithDirectory:v2];
  v1 = sharedManager_mgr;
  sharedManager_mgr = v0;
}

- (void)commoninit
{
  self->_needDir = 1;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("netEventData", v3);
  syncQ = self->_syncQ;
  self->_syncQ = v4;

  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = v6;

  v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [(NSDateFormatter *)self->_dateFormatter setLocale:v8];

  [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"yyyyMMdd"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  netEventFiles = self->_netEventFiles;
  self->_netEventFiles = v9;

  v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_syncQ);
  closeTimer = self->_closeTimer;
  self->_closeTimer = v11;

  dispatch_source_set_timer(self->_closeTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v13 = self->_closeTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __40__GEONetworkEventFileManager_commoninit__block_invoke;
  handler[3] = &unk_1E7071900;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_activate(self->_closeTimer);
}

- (void)_closeFiles
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = GEOGetNetEventFileManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "cleanup timer fired", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_netEventFiles;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = GEOGetNetEventFileManagerLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_18660C000, v10, OS_LOG_TYPE_DEBUG, "closing netEvent file '%@'", buf, 0xCu);
        }

        v11 = [(NSMutableDictionary *)self->_netEventFiles objectForKeyedSubscript:v9];
        [v11 close];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_netEventFiles removeAllObjects];
  [(GEONetworkEventFileManager *)self _clearTimer];
}

- (void)_clearTimer
{
  v3 = GEOGetNetEventFileManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "disabling cleanup timer", v4, 2u);
  }

  dispatch_source_set_timer(self->_closeTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

@end