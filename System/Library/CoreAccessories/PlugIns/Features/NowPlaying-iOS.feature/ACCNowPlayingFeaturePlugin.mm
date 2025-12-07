@interface ACCNowPlayingFeaturePlugin
+ (BOOL)isMusicAppVisible;
+ (id)getItemDictionaryForContentItem:(id)item infoMask:(unsigned int)mask;
- (BOOL)_nowPlayingAppIsIPodApp;
- (BOOL)_nowPlayingAppIsIPodRadio;
- (BOOL)_nowPlayingIsStreaming;
- (BOOL)setPlaybackElapsedTime:(id)time;
- (BOOL)setPlaybackQueueIndex:(id)index;
- (NSString)description;
- (NSString)pluginName;
- (id)currentMediaItemArtwork;
- (id)currentMediaItemAttributes;
- (id)currentPlaybackAppBundleID;
- (id)currentPlaybackAppName;
- (id)currentPlaybackAttributes;
- (unsigned)currentPlaybackStateMR;
- (void)_generatePlaybackQueueItemsWithPropertyList:(id)list request:(id)request completionHandler:(id)handler continueQuery:(id)query;
- (void)_nowPlayingAppDidChange;
- (void)_nowPlayingArtworkDidChange;
- (void)_nowPlayingInfoDebounceTimerKick:(int)kick;
- (void)_nowPlayingInfoDebounceTimerStop:(int)stop;
- (void)_nowPlayingInfoDidChange;
- (void)_nowPlayingIsStreaming;
- (void)_nowPlayingPlaybackQueueDidChange;
- (void)_nowPlayingStateDidChange;
- (void)cancelRequestPlaybackQueueListInfo:(id)info requestID:(id)d;
- (void)currentMediaItemArtwork;
- (void)currentMediaItemAttributes;
- (void)currentPlaybackAttributes;
- (void)initPlugin;
- (void)nowPlayingAppDidChange:(id)change;
- (void)nowPlayingArtworkDidChange:(id)change;
- (void)nowPlayingInfoDidChange:(id)change;
- (void)nowPlayingPlaybackQueueDidChange:(id)change;
- (void)nowPlayingStateDidChange:(id)change;
- (void)nowPlayingSupportedCommandsDidChange:(id)change;
- (void)requestPlaybackQueueListInfo:(id)info requestID:(id)d startIndex:(unsigned int)index upToCount:(unsigned int)count infoMask:(unsigned int)mask;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation ACCNowPlayingFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCNowPlayingFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCNowPlayingFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  [(ACCNowPlayingFeaturePlugin *)self setIsRunning:0];
  v3 = dispatch_queue_create("ACCNowPlayingFeaturePlugin", 0);
  [(ACCNowPlayingFeaturePlugin *)self setQueue:v3];

  [(ACCNowPlayingFeaturePlugin *)self setMrNowPlayingInfo:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrPlaybackState:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrSupportedCommands:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrArtworkData:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrArtworkDataHash:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrNowPlayingAppBundleID:0];
  [(ACCNowPlayingFeaturePlugin *)self setMrNowPlayingAppName:0];
  v4 = dispatch_queue_create("ACCNowPlayingMRCompletionQ", 0);
  [(ACCNowPlayingFeaturePlugin *)self setCompletionQueue:v4];

  [(ACCNowPlayingFeaturePlugin *)self setCachedMediaItemAttributes:0];
  [(ACCNowPlayingFeaturePlugin *)self setCachedMediaItemArtworkHash:0];
  [(ACCNowPlayingFeaturePlugin *)self setCachedPlaybackAttributes:0];
  [(ACCNowPlayingFeaturePlugin *)self setPbqUpdateAccessoryList:0];
  [(ACCNowPlayingFeaturePlugin *)self setMemUse:0];
  [(ACCNowPlayingFeaturePlugin *)self setMaxPlaybackQueueInfoCount:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoTimeoutMs:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoSendPartialOnTimeout:0];

  [(ACCNowPlayingFeaturePlugin *)self setMeasureMemoryUsage:0];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_DEFAULT, "Starting Now Playing feature plugin...", buf, 2u);
  }

  v6 = objc_alloc(MEMORY[0x277CD5FC0]);
  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v8 = [v6 initWithClientIdentifier:@"com.apple.accessoryd.mediaplayer" queue:queue];
  [(ACCNowPlayingFeaturePlugin *)self setMpMusicPlayerControllerHandler:v8];

  v9 = [objc_alloc(MEMORY[0x277CE8300]) initWithDelegate:self];
  [(ACCNowPlayingFeaturePlugin *)self setNowPlayingClient:v9];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ACCNowPlayingFeaturePlugin *)self setPbqUpdateAccessoryList:v10];

  v11 = dispatch_queue_create("com.apple.iap2d.nowPlayPBQueueListQ", 0);
  [(ACCNowPlayingFeaturePlugin *)self setNowPlayingInfoPBQueueListQ:v11];

  self->_nowPlayingInfoDebounceTimerRunningMask = 0;
  v12 = [[ACCSettingsState alloc] initWithKey:@"NowPlayingInfoDebounce" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:500 invalidValue:0];
  nowPlayingInfoDebounceTimerValue = self->_nowPlayingInfoDebounceTimerValue;
  self->_nowPlayingInfoDebounceTimerValue = v12;

  queue2 = [(ACCNowPlayingFeaturePlugin *)self queue];
  v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);
  nowPlayingInfoDebounceTimer = self->_nowPlayingInfoDebounceTimer;
  self->_nowPlayingInfoDebounceTimer = v15;

  nowPlayingInfoDebounceTimer = [(ACCNowPlayingFeaturePlugin *)self nowPlayingInfoDebounceTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke;
  handler[3] = &unk_2789E4CC0;
  handler[4] = self;
  dispatch_source_set_event_handler(nowPlayingInfoDebounceTimer, handler);

  [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDebounceTimerStop:127];
  nowPlayingInfoDebounceTimer2 = [(ACCNowPlayingFeaturePlugin *)self nowPlayingInfoDebounceTimer];
  dispatch_resume(nowPlayingInfoDebounceTimer2);

  v19 = [[ACCSettingsState alloc] initWithKey:@"MaxPlaybackQueueInfoCount" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:2000 invalidValue:0];
  [(ACCNowPlayingFeaturePlugin *)self setMaxPlaybackQueueInfoCount:v19];

  v20 = [[ACCSettingsState alloc] initWithKey:@"PlaybackQueueInfoTimeoutMs" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:5000 invalidValue:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoTimeoutMs:v20];

  v21 = [[ACCSettingsState alloc] initWithKey:@"PlaybackQueueInfoSendPartialOnTimeout" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:3 invalidValue:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoSendPartialOnTimeout:v21];

  v22 = [[ACCSettingsState alloc] initWithKey:@"MeasureMemoryUsage" applicationID:@"com.apple.iapd" notification:@"com.apple.iapd.LoggingPreferencesChangedNotification" defaultValue:0 invalidValue:-1];
  [(ACCNowPlayingFeaturePlugin *)self setMeasureMemoryUsage:v22];

  [(ACCNowPlayingFeaturePlugin *)self setMemUse:0];
  measureMemoryUsage = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
  LODWORD(queue) = [measureMemoryUsage BOOLValue];

  if (queue)
  {
    v24 = [[ACCMemUsageStat alloc] initWithName:@"ACCNowPlayingUpdate"];
    [(ACCNowPlayingFeaturePlugin *)self setMemUse:v24];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v25 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v25, OS_LOG_TYPE_INFO, "Adding notification observers...", buf, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_nowPlayingInfoDidChange_ name:*MEMORY[0x277D27BC8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_nowPlayingStateDidChange_ name:*MEMORY[0x277D27B38] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_nowPlayingStateDidChange_ name:*MEMORY[0x277D27B50] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_nowPlayingAppDidChange_ name:*MEMORY[0x277D27B20] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_nowPlayingSupportedCommandsDidChange_ name:*MEMORY[0x277D27E48] object:0];

  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel_nowPlayingPlaybackQueueDidChange_ name:*MEMORY[0x277CD5C48] object:0];

  defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_nowPlayingArtworkDidChange_ name:*MEMORY[0x277D27E88] object:0];

  MRMediaRemoteSetWantsNowPlayingNotifications();
  queue3 = [(ACCNowPlayingFeaturePlugin *)self queue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke_153;
  v35[3] = &unk_2789E4CC0;
  v35[4] = self;
  dispatch_sync(queue3, v35);

  [(ACCNowPlayingFeaturePlugin *)self nowPlayingStateDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self nowPlayingInfoDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self nowPlayingAppDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self nowPlayingSupportedCommandsDidChange:0];
  [(ACCNowPlayingFeaturePlugin *)self setIsRunning:1];
}

void __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  *(v2 + 12) = 0;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 67109120;
    v18 = v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired: mask = 0x%02x", &v17, 8u);
  }

  if ((v3 & 0x11) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v17 = 67109120;
      v18 = 17;
      _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingInfoDidChange", &v17, 8u);
    }

    [*(a1 + 32) _nowPlayingInfoDidChange];
  }

  if ((v3 & 0xA) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = 67109120;
      v18 = 10;
      _os_log_impl(&dword_233600000, v9, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingStateDidChange", &v17, 8u);
    }

    [*(a1 + 32) _nowPlayingStateDidChange];
  }

  if ((v3 & 4) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 67109120;
      v18 = 4;
      _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingAppDidChange", &v17, 8u);
    }

    [*(a1 + 32) _nowPlayingAppDidChange];
    if ((v3 & 0x20) == 0)
    {
LABEL_33:
      if ((v3 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_53;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_33;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 67109120;
    v18 = 32;
    _os_log_impl(&dword_233600000, v13, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingPlaybackQueueDidChange", &v17, 8u);
  }

  [*(a1 + 32) _nowPlayingPlaybackQueueDidChange];
  if ((v3 & 0x40) != 0)
  {
LABEL_53:
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v15 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 67109120;
      v18 = 64;
      _os_log_impl(&dword_233600000, v15, OS_LOG_TYPE_INFO, "NowPlayingInfoUpdate debounce timer fired, handle mask 0x%02x, call _nowPlayingArtworkDidChange", &v17, 8u);
    }

    [*(a1 + 32) _nowPlayingArtworkDidChange];
  }
}

void __41__ACCNowPlayingFeaturePlugin_startPlugin__block_invoke_153(uint64_t a1)
{
  v1 = [*(a1 + 32) mpMusicPlayerControllerHandler];
  [v1 beginGeneratingPlaybackNotifications];
}

- (void)stopPlugin
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_DEFAULT, "Stopping Now Playing feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "Removing all notification observers...", buf, 2u);
  }

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ACCNowPlayingFeaturePlugin_stopPlugin__block_invoke;
  block[3] = &unk_2789E4CC0;
  block[4] = self;
  dispatch_sync(queue, block);

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v9 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *MEMORY[0x277CD5C30];
    v12 = *MEMORY[0x277CD5C28];
    *buf = 134218240;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_233600000, v9, OS_LOG_TYPE_DEFAULT, "Revert to Default MediaRemote NPQ Max Item Count: Reverse %ld, Forward %ld", buf, 0x16u);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  MRMediaRemoteSetWantsSupportedCommandsChangedNotifications();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  nowPlayingClient = [(ACCNowPlayingFeaturePlugin *)self nowPlayingClient];
  [nowPlayingClient setDelegate:0];

  [(ACCNowPlayingFeaturePlugin *)self setNowPlayingClient:0];
  [(ACCNowPlayingFeaturePlugin *)self setPbqUpdateAccessoryList:0];
  [(ACCNowPlayingFeaturePlugin *)self setMpMusicPlayerControllerHandler:0];
  [(ACCNowPlayingFeaturePlugin *)self setMemUse:0];
  [(ACCNowPlayingFeaturePlugin *)self setMaxPlaybackQueueInfoCount:0];
  [(ACCNowPlayingFeaturePlugin *)self setPlaybackQueueInfoTimeoutMs:0];
  [(ACCNowPlayingFeaturePlugin *)self setMeasureMemoryUsage:0];
  [(ACCNowPlayingFeaturePlugin *)self setIsRunning:0];
}

void __40__ACCNowPlayingFeaturePlugin_stopPlugin__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mpMusicPlayerControllerHandler];
  [v1 endGeneratingPlaybackNotifications];
}

- (void)_nowPlayingInfoDidChange
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_nowPlayingStateDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "_nowPlayingStateDidChange: Gather and process info", v6, 2u);
  }

  [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDidChange];
}

- (void)_nowPlayingAppDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "_nowPlayingAppDidChange: Gather and process info", v6, 2u);
  }

  [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDidChange];
}

- (void)_nowPlayingPlaybackQueueDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "_nowPlayingPlaybackQueueDidChange: Tell client playbackQueueListDidChange", v7, 2u);
  }

  nowPlayingClient = [(ACCNowPlayingFeaturePlugin *)self nowPlayingClient];
  [nowPlayingClient playbackQueueListDidChange];
}

- (void)_nowPlayingArtworkDidChange
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nowPlayingInfoDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 136315650;
    v17 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]";
    v18 = 2112;
    v19 = changeCopy;
    v20 = 2048;
    v21 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: Notification received: %@, debounce=%ld", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke_158;
  v14[3] = &unk_2789E4CC0;
  v14[4] = self;
  dispatch_async(queue, v14);
}

void __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = [*(a1 + 32) queue];
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
}

void __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v111 = *MEMORY[0x277D85DE8];
  v5 = COERCE_DOUBLE(a2);
  if (*&a3 == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = MEMORY[0x2383A7090](a3);
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v82 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke_2";
    v83 = 2048;
    v84 = *&a3;
    v85 = 2112;
    v86 = *&v5;
    _os_log_impl(&dword_233600000, v9, OS_LOG_TYPE_INFO, "%s: artwork: %p, nowPlayingInfo: %@", buf, 0x20u);
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSince1970];
  v12 = v11;

  v13 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 length];
    *buf = 136316162;
    v82 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v83 = 2048;
    v84 = v12 - v13;
    v85 = 2048;
    v86 = v6;
    v87 = 2048;
    v88 = v16;
    v89 = 2112;
    v90 = v5;
    _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), artwork: %p (%lu bytes), nowPlayingInfo: %@", buf, 0x34u);
  }

  v79 = v6;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v17 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  v19 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  v20 = MEMORY[0x277D27BD8];
  v80 = a1;
  if (v19)
  {
    log = v17;
    v21 = *MEMORY[0x277D27C80];
    v76 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C80]];
    v70 = [*&v5 objectForKeyedSubscript:v21];
    [v70 timeIntervalSince1970];
    v23 = v22;
    v74 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BE0]];
    v68 = [*&v5 objectForKeyedSubscript:*v20];
    v24 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C40]];
    v65 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BC0]];
    v25 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C48]];
    v67 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CA0]];
    v61 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BA0]];
    v63 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v26 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C08]];
    v27 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C58]];
    v28 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C60]];
    v29 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C28]];
    *buf = 138415618;
    v82 = v76;
    v83 = 2048;
    v84 = v23;
    v85 = 2112;
    v86 = v74;
    v87 = 2112;
    v88 = v68;
    v89 = 2112;
    v90 = *&v24;
    v91 = 2112;
    v92 = v65;
    v93 = 2112;
    v94 = v25;
    v95 = 2112;
    v96 = v67;
    v97 = 2112;
    v98 = v61;
    v99 = 2112;
    v100 = v63;
    v101 = 2112;
    v102 = v26;
    v103 = 2112;
    v104 = v27;
    v105 = 2112;
    v106 = v28;
    v107 = 2112;
    v108 = v29;
    _os_log_impl(&dword_233600000, log, OS_LOG_TYPE_INFO, "nowPlayingInfoDidChange nowPlayingInfo: \nnowPlayingInfoInfo Playback Info \n    Timestamp: %@ (%f) \n    ElapsedTime: %@ / %@ \n    PlaybackRate: %@ (%@) \n    Index / Count: %@ / %@ \n    Chapter: %@ / %@ \n    IsAd: %@ \n    RadioStation: %@ (%@)\n    IsMusicApp: %@\n", buf, 0x8Eu);

    a1 = v80;
    v20 = MEMORY[0x277D27BD8];

    v17 = log;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v30 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v30 = MEMORY[0x277D86220];
    v31 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v77 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CC0]];
    [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C88]];
    v75 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    loga = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27B60]];
    v71 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27B70]];
    v69 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C00]];
    v32 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BB0]];
    v33 = [*&v5 objectForKeyedSubscript:*v20];
    v34 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CB0]];
    v64 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27CA8]];
    v66 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27BD0]];
    v35 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C98]];
    v62 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v36 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C20]];
    v37 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27C18]];
    v38 = [*&v5 objectForKeyedSubscript:*MEMORY[0x277D27B88]];
    *buf = 138415874;
    v82 = v77;
    v83 = 2112;
    v84 = v75;
    v85 = 2112;
    v86 = loga;
    v87 = 2112;
    v88 = v71;
    v89 = 2112;
    v90 = *&v69;
    v91 = 2112;
    v92 = v32;
    v93 = 2112;
    v94 = v33;
    v95 = 2112;
    v96 = v34;
    v97 = 2112;
    v98 = v64;
    v99 = 2112;
    v100 = v66;
    v101 = 2112;
    v102 = v35;
    v103 = 2112;
    v104 = v62;
    v105 = 2112;
    v106 = v36;
    v107 = 2112;
    v108 = v37;
    v109 = 2112;
    v110 = v38;
    _os_log_impl(&dword_233600000, v30, OS_LOG_TYPE_INFO, "nowPlayingInfoDidChange nowPlayingInfo: \nnowPlayingInfo Item Info \n    PID: %@ \n    Title: %@ \n    Album: %@ \n    Artist: %@ \n    Genre: %@ \n    Composer: %@ \n    Duration: %@ \n    Album Index/Count: %@ / %@ \n    Disc Index/Count: %@ / %@ \n    Chapter Count: %@ \n    Liked / Banned: %@ / %@ \n    artworkID; %@ \n", buf, 0x98u);

    a1 = v80;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v39 = *gLogObjects;
    v40 = v79;
  }

  else
  {
    v40 = v79;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v39 = MEMORY[0x277D86220];
    v41 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(*(a1 + 32) + 64);
    *buf = 136315394;
    v82 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v83 = 2112;
    v84 = v42;
    _os_log_impl(&dword_233600000, v39, OS_LOG_TYPE_DEFAULT, "%s: old nowPlayingInfo: %@", buf, 0x16u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v43 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v43 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v82 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v83 = 2112;
    v84 = v5;
    _os_log_impl(&dword_233600000, v43, OS_LOG_TYPE_DEFAULT, "%s: -> new nowPlayingInfo: %@", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  if (v40)
  {
    v45 = [v40 SHA256];
  }

  else
  {
    v45 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v46 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v46 = MEMORY[0x277D86220];
    v47 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *&v48 = COERCE_DOUBLE([*(*(a1 + 32) + 80) length]);
    v49 = *(*(a1 + 32) + 88);
    *buf = 136315650;
    v82 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v83 = 2048;
    v84 = *&v48;
    v85 = 2112;
    v86 = v49;
    _os_log_impl(&dword_233600000, v46, OS_LOG_TYPE_DEFAULT, "%s: old ArtworkData: %lu bytes / hash %@", buf, 0x20u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v50 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v50 = MEMORY[0x277D86220];
    v51 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *&v52 = COERCE_DOUBLE([v40 length]);
    *buf = 136315650;
    v82 = "[ACCNowPlayingFeaturePlugin nowPlayingInfoDidChange:]_block_invoke";
    v83 = 2048;
    v84 = *&v52;
    v85 = 2112;
    v86 = v45;
    _os_log_impl(&dword_233600000, v50, OS_LOG_TYPE_DEFAULT, "%s: -> new ArtworkData: %lu bytes / hash %@", buf, 0x20u);
  }

  v53 = *(a1 + 32);
  v54 = *(v53 + 80);
  *(v53 + 80) = v40;
  v55 = v40;

  v56 = *(a1 + 32);
  v57 = *(v56 + 88);
  *(v56 + 88) = v45;
  v58 = v45;

  v59 = [*(*(a1 + 32) + 56) intValue];
  v60 = *(a1 + 32);
  if (v59 < 1)
  {
    [v60 _nowPlayingInfoDidChange];
  }

  else
  {
    [v60 _nowPlayingInfoDebounceTimerKick:1];
  }
}

uint64_t __54__ACCNowPlayingFeaturePlugin_nowPlayingInfoDidChange___block_invoke_158(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:1];
  }

  return result;
}

- (void)nowPlayingStateDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 136315650;
    v17 = "[ACCNowPlayingFeaturePlugin nowPlayingStateDidChange:]";
    v18 = 2112;
    v19 = changeCopy;
    v20 = 2048;
    v21 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: Notification received: %@, debounce=%ld", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke_161;
  v14[3] = &unk_2789E4CC0;
  v14[4] = self;
  dispatch_async(queue, v14);
}

void __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) queue];
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
}

uint64_t __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke_2(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[ACCNowPlayingFeaturePlugin nowPlayingStateDidChange:]_block_invoke_2";
    v19 = 1024;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "%s: playbackState %d", &v17, 0x12u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 16);
    v17 = 136315906;
    v18 = "[ACCNowPlayingFeaturePlugin nowPlayingStateDidChange:]_block_invoke";
    v19 = 2048;
    v20 = v9 - v10;
    v21 = 1024;
    v22 = v13;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), playbackState %d -> %d", &v17, 0x22u);
  }

  *(*(a1 + 32) + 16) = a2;
  v14 = [*(*(a1 + 32) + 56) intValue];
  v15 = *(a1 + 32);
  if (v14 < 1)
  {
    return [v15 _nowPlayingStateDidChange];
  }

  else
  {
    return [v15 _nowPlayingInfoDebounceTimerKick:2];
  }
}

uint64_t __55__ACCNowPlayingFeaturePlugin_nowPlayingStateDidChange___block_invoke_161(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:2];
  }

  return result;
}

- (void)nowPlayingAppDidChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 138412546;
    v17 = changeCopy;
    v18 = 2048;
    v19 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "nowPlayingAppDidChange: Notification received: %@, debounce=%ld", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke_167;
  v14[3] = &unk_2789E4CC0;
  v14[4] = self;
  dispatch_async(queue, v14);
}

void __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = [*(a1 + 32) queue];
  MRMediaRemoteGetNowPlayingClientForOrigin();
}

void __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
  DisplayName = MRNowPlayingClientGetDisplayName();
  if (BundleIdentifier)
  {
    v8 = BundleIdentifier;
  }

  else
  {
    v8 = &stru_2848EA190;
  }

  v9 = v8;
  if (DisplayName)
  {
    v10 = DisplayName;
  }

  else
  {
    v10 = &stru_2848EA190;
  }

  v11 = v10;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  else
  {
    v14 = *gLogObjects;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v31 = 136315650;
    v32 = "[ACCNowPlayingFeaturePlugin nowPlayingAppDidChange:]_block_invoke_2";
    v33 = 2112;
    v34 = a2;
    v35 = 2112;
    v36 = a3;
    _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_INFO, "%s: clientRef: %@, errorRef: %@", &v31, 0x20u);
  }

  v15 = [MEMORY[0x277CBEAA8] date];
  [v15 timeIntervalSince1970];
  v17 = v16;

  v18 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v19 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  v21 = v17 - v18;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(a1 + 32) + 96);
    v31 = 136315906;
    v32 = "[ACCNowPlayingFeaturePlugin nowPlayingAppDidChange:]_block_invoke";
    v33 = 2048;
    v34 = *&v21;
    v35 = 2112;
    v36 = v22;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_233600000, v19, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), appBundleID %@ -> %@", &v31, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 96), v8);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v23 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 32) + 104);
    v31 = 136315906;
    v32 = "[ACCNowPlayingFeaturePlugin nowPlayingAppDidChange:]_block_invoke";
    v33 = 2048;
    v34 = *&v21;
    v35 = 2112;
    v36 = v25;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_233600000, v23, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), appName %@ -> %@", &v31, 0x2Au);
  }

  v26 = *(a1 + 32);
  v27 = *(v26 + 104);
  *(v26 + 104) = v11;
  v28 = v11;

  v29 = [*(*(a1 + 32) + 56) intValue];
  v30 = *(a1 + 32);
  if (v29 < 1)
  {
    [v30 _nowPlayingAppDidChange];
  }

  else
  {
    [v30 _nowPlayingInfoDebounceTimerKick:4];
  }
}

uint64_t __53__ACCNowPlayingFeaturePlugin_nowPlayingAppDidChange___block_invoke_167(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:4];
  }

  return result;
}

- (void)nowPlayingPlaybackQueueDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    v9 = 138412546;
    v10 = changeCopy;
    v11 = 2048;
    v12 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "nowPlayingPlaybackQueueDidChange: Notification received: %@, debounce=%ld", &v9, 0x16u);
  }

  if ([(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue]< 1)
  {
    [(ACCNowPlayingFeaturePlugin *)self _nowPlayingPlaybackQueueDidChange];
  }

  else
  {
    [(ACCNowPlayingFeaturePlugin *)self _nowPlayingInfoDebounceTimerKick:32];
  }
}

- (void)nowPlayingArtworkDidChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 138412546;
    v17 = changeCopy;
    v18 = 2048;
    v19 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "nowPlayingArtworkDidChange: Notification received: %@, debounce=%ld", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke_170;
  v14[3] = &unk_2789E4CC0;
  v14[4] = self;
  dispatch_async(queue, v14);
}

void __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = [*(a1 + 32) queue];
  MRMediaRemoteGetNowPlayingArtwork();
}

void __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = MEMORY[0x2383A7090](a2);
  }

  else
  {
    v4 = 0;
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v31 = 136315394;
    v32 = "[ACCNowPlayingFeaturePlugin nowPlayingArtworkDidChange:]_block_invoke_2";
    v33 = 2048;
    v34 = a2;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: artwork: %p", &v31, 0x16u);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = *(a1 + 40);
  if (!a2)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_233600000, v13, OS_LOG_TYPE_INFO, "#Artwork No artwork image received from MediaRemote!", &v31, 2u);
    }

    if (v4)
    {
      goto LABEL_16;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_16:
  v12 = [v4 SHA256];
LABEL_27:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v15 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  v17 = v10 - v11;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(*(a1 + 32) + 80) length];
    v19 = *(*(a1 + 32) + 88);
    v31 = 136315906;
    v32 = "[ACCNowPlayingFeaturePlugin nowPlayingArtworkDidChange:]_block_invoke";
    v33 = 2048;
    v34 = *&v17;
    v35 = 2048;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    _os_log_impl(&dword_233600000, v15, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), old ArtworkData: %lu bytes / hash %@", &v31, 0x2Au);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v4 length];
    v31 = 136315906;
    v32 = "[ACCNowPlayingFeaturePlugin nowPlayingArtworkDidChange:]_block_invoke";
    v33 = 2048;
    v34 = *&v17;
    v35 = 2048;
    v36 = v22;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_233600000, v20, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms), -> new ArtworkData: %lu bytes / hash %@", &v31, 0x2Au);
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 80);
  *(v23 + 80) = v4;
  v25 = v4;

  v26 = *(a1 + 32);
  v27 = *(v26 + 88);
  *(v26 + 88) = v12;
  v28 = v12;

  v29 = [*(*(a1 + 32) + 56) intValue];
  v30 = *(a1 + 32);
  if (v29 < 1)
  {
    [v30 _nowPlayingArtworkDidChange];
  }

  else
  {
    [v30 _nowPlayingInfoDebounceTimerKick:64];
  }
}

uint64_t __57__ACCNowPlayingFeaturePlugin_nowPlayingArtworkDidChange___block_invoke_170(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:64];
  }

  return result;
}

- (void)nowPlayingSupportedCommandsDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    *buf = 136315650;
    v17 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]";
    v18 = 2112;
    v19 = changeCopy;
    v20 = 2048;
    v21 = intValue;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_INFO, "%s: Notification received: %@, debounce=%ld", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  completionQueue = [(ACCNowPlayingFeaturePlugin *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke;
  block[3] = &unk_2789E4D10;
  block[4] = self;
  block[5] = v11;
  dispatch_async(completionQueue, block);

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke_173;
  v14[3] = &unk_2789E4CC0;
  v14[4] = self;
  dispatch_async(queue, v14);
}

void __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) queue];
  MRMediaRemoteGetSupportedCommands();
}

void __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22 = 136315394;
    v23 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]_block_invoke_2";
    v24 = 2112;
    v25 = *&v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "%s: commands: %@", &v22, 0x16u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = *(a1 + 40);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  v13 = v9 - v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 32) + 72);
    v22 = 136315650;
    v23 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]_block_invoke";
    v24 = 2048;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms) old supportedCommands: %@", &v22, 0x20u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v15 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315650;
    v23 = "[ACCNowPlayingFeaturePlugin nowPlayingSupportedCommandsDidChange:]_block_invoke";
    v24 = 2048;
    v25 = v13;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&dword_233600000, v15, OS_LOG_TYPE_DEFAULT, "%s: delay(%f ms) -> new supportedCommands: %@", &v22, 0x20u);
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 72);
  *(v17 + 72) = v3;
  v19 = v3;

  v20 = [*(*(a1 + 32) + 56) intValue];
  v21 = *(a1 + 32);
  if (v20 < 1)
  {
    [v21 _nowPlayingInfoDidChange];
  }

  else
  {
    [v21 _nowPlayingInfoDebounceTimerKick:1];
  }
}

uint64_t __67__ACCNowPlayingFeaturePlugin_nowPlayingSupportedCommandsDidChange___block_invoke_173(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) intValue];
  if (result >= 1)
  {
    v3 = *(a1 + 32);

    return [v3 _nowPlayingInfoDebounceTimerKick:1];
  }

  return result;
}

- (unsigned)currentPlaybackStateMR
{
  v11 = *MEMORY[0x277D85DE8];
  mrPlaybackState = self->_mrPlaybackState;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ACCNowPlayingFeaturePlugin currentPlaybackStateMR]";
    v9 = 1024;
    v10 = mrPlaybackState;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_DEFAULT, "%s: %d", &v7, 0x12u);
  }

  return mrPlaybackState;
}

- (id)currentPlaybackAppBundleID
{
  v10 = *MEMORY[0x277D85DE8];
  mrNowPlayingAppBundleID = self->_mrNowPlayingAppBundleID;
  if (!mrNowPlayingAppBundleID)
  {
    mrNowPlayingAppBundleID = &stru_2848EA190;
  }

  v3 = mrNowPlayingAppBundleID;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_DEFAULT, "currentPlaybackAppBundleID: %@", &v8, 0xCu);
  }

  return v3;
}

- (id)currentPlaybackAppName
{
  v10 = *MEMORY[0x277D85DE8];
  mrNowPlayingAppName = self->_mrNowPlayingAppName;
  if (!mrNowPlayingAppName)
  {
    mrNowPlayingAppName = &stru_2848EA190;
  }

  v3 = mrNowPlayingAppName;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_DEFAULT, "currentPlaybackAppName: %@", &v8, 0xCu);
  }

  return v3;
}

- (id)currentMediaItemAttributes
{
  v105 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_mrNowPlayingInfo;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v9 = MEMORY[0x277D27CC0];
  v10 = MEMORY[0x277D27C88];
  v11 = MEMORY[0x277D27BD8];
  v67 = dictionary;
  v68 = v4;
  selfCopy = self;
  if (v8)
  {
    v70 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27CC0]];
    v69 = [(NSDictionary *)v4 objectForKeyedSubscript:*v10];
    v64 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27B60]];
    v63 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27B70]];
    v62 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27C00]];
    v60 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27BB0]];
    v59 = [(NSDictionary *)v4 objectForKeyedSubscript:*v11];
    v12 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27CB0]];
    v13 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27CA8]];
    v14 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27BD0]];
    v15 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277D27C98]];
    [(NSDictionary *)v68 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v16 = log = v7;
    v17 = [(NSDictionary *)v68 objectForKeyedSubscript:*MEMORY[0x277D27C20]];
    v18 = [(NSDictionary *)v68 objectForKeyedSubscript:*MEMORY[0x277D27C18]];
    v19 = [(NSDictionary *)v68 objectForKeyedSubscript:*MEMORY[0x277D27B88]];
    *buf = 138415874;
    *v77 = v70;
    *&v77[8] = 2112;
    v78 = v69;
    v79 = 2112;
    v80 = v64;
    v81 = 2112;
    v82 = v63;
    v83 = 2112;
    v84 = v62;
    v85 = 2112;
    v86 = v60;
    v87 = 2112;
    v88 = v59;
    v89 = 2112;
    v90 = v12;
    v91 = 2112;
    v92 = v13;
    v93 = 2112;
    v94 = v14;
    v20 = v14;
    v95 = 2112;
    v96 = v15;
    v97 = 2112;
    v98 = v16;
    v99 = 2112;
    v100 = v17;
    v101 = 2112;
    v102 = v18;
    v103 = 2112;
    v104 = v19;
    _os_log_impl(&dword_233600000, log, OS_LOG_TYPE_DEFAULT, "currentMediaItemAttributes nowPlayingInfo: \nnowPlayingInfo Item Info \n    PID: %@ \n    Title: %@ \n    Album: %@ \n    Artist: %@ \n    Genre: %@ \n    Composer: %@ \n    Duration: %@ \n    Album Index/Count: %@ / %@ \n    Disc Index/Count: %@ / %@ \n    Chapter Count: %@ \n    Liked / Banned: %@ / %@ \n    artworkID; %@ \n", buf, 0x98u);

    v9 = MEMORY[0x277D27CC0];
    v11 = MEMORY[0x277D27BD8];
    v10 = MEMORY[0x277D27C88];

    v7 = log;
    self = selfCopy;

    dictionary = v67;
    v4 = v68;
  }

  v21 = &unk_2848EBE10;
  [dictionary copyToKey:*MEMORY[0x277CE8378] fromKey:*v9 inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8388] fromKey:*v10 inDictionary:v4 objectIfNil:&stru_2848EA190];
  v22 = *v11;
  v23 = [(NSDictionary *)v4 objectForKey:*v11];

  if (v23)
  {
    v24 = [(NSDictionary *)v4 objectForKey:v22];
    [v24 doubleValue];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v25 * 1000.0)];
  }

  [dictionary setObject:v21 forKey:*MEMORY[0x277CE8380]];
  [dictionary copyToKey:*MEMORY[0x277CE8318] fromKey:*MEMORY[0x277D27B60] inDictionary:v4 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8328] fromKey:*MEMORY[0x277D27CB0] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8320] fromKey:*MEMORY[0x277D27CA8] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8310] fromKey:*MEMORY[0x277D27BD0] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8308] fromKey:*MEMORY[0x277D27C98] inDictionary:v4 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE8330] fromKey:*MEMORY[0x277D27B70] inDictionary:v4 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8350] fromKey:*MEMORY[0x277D27C00] inDictionary:v4 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8348] fromKey:*MEMORY[0x277D27BB0] inDictionary:v4 objectIfNil:&stru_2848EA190];
  v26 = MEMORY[0x277CBEC28];
  [dictionary copyToKey:*MEMORY[0x277CE8370] fromKey:*MEMORY[0x277D27C20] inDictionary:v4 objectIfNil:MEMORY[0x277CBEC28]];
  [dictionary copyToKey:*MEMORY[0x277CE8360] fromKey:*MEMORY[0x277D27C18] inDictionary:v4 objectIfNil:v26];
  [dictionary copyToKey:*MEMORY[0x277CE8340] fromKey:*MEMORY[0x277D27C90] inDictionary:v4 objectIfNil:v26];
  [dictionary copyToKey:*MEMORY[0x277CE8338] fromKey:*MEMORY[0x277D27B88] inDictionary:v4 objectIfNil:&stru_2848EA190];
  v27 = self->_mrSupportedCommands;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v28 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v28 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v77 = v27;
    _os_log_impl(&dword_233600000, v28, OS_LOG_TYPE_INFO, "currentMediaItemAttributes supportedCommands: %@", buf, 0xCu);
  }

  v65 = v21;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v30 = v27;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = 0;
    v35 = *v72;
    v36 = MEMORY[0x277D86220];
    while (1)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v72 != v35)
        {
          objc_enumerationMutation(v30);
        }

        v38 = MEMORY[0x2383A6FE0](*(*(&v71 + 1) + 8 * i));
        if (v38 == 22)
        {
          v42 = gLogObjects;
          v43 = gNumLogObjects;
          if (gLogObjects)
          {
            v44 = gNumLogObjects < 1;
          }

          else
          {
            v44 = 1;
          }

          if (v44)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v77 = v42;
              *&v77[8] = 1024;
              LODWORD(v78) = v43;
              _os_log_error_impl(&dword_233600000, v36, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v45 = v36;
            v41 = v36;
          }

          else
          {
            v41 = *gLogObjects;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v77 = 22;
            *&v77[4] = 1024;
            *&v77[6] = v33 & 1;
            _os_log_impl(&dword_233600000, v41, OS_LOG_TYPE_DEFAULT, "currentMediaItemAttributes supportedCommands: %d, isBanSupported=%d", buf, 0xEu);
          }

          v33 = 1;
        }

        else
        {
          if (v38 != 21)
          {
            continue;
          }

          v39 = gLogObjects;
          v40 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v41 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v77 = v39;
              *&v77[8] = 1024;
              LODWORD(v78) = v40;
              _os_log_error_impl(&dword_233600000, v36, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v46 = v36;
            v41 = v36;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v77 = 21;
            *&v77[4] = 1024;
            *&v77[6] = v34 & 1;
            _os_log_impl(&dword_233600000, v41, OS_LOG_TYPE_DEFAULT, "currentMediaItemAttributes supportedCommands: %d, isLikeSupported=%d", buf, 0xEu);
          }

          v34 = 1;
        }
      }

      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (!v32)
      {
        goto LABEL_53;
      }
    }
  }

  v33 = 0;
  v34 = 0;
LABEL_53:

  v47 = [MEMORY[0x277CCABB0] numberWithBool:v34 & 1];
  [v67 setObject:v47 forKey:*MEMORY[0x277CE8368]];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:v33 & 1];
  [v67 setObject:v48 forKey:*MEMORY[0x277CE8358]];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v49 = *gLogObjects;
    v50 = v68;
    v52 = v65;
    v51 = selfCopy;
  }

  else
  {
    v50 = v68;
    v52 = v65;
    v51 = selfCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v49 = MEMORY[0x277D86220];
    v53 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    [ACCNowPlayingFeaturePlugin currentMediaItemAttributes];
  }

  cachedMediaItemAttributes = [(ACCNowPlayingFeaturePlugin *)v51 cachedMediaItemAttributes];

  if (!cachedMediaItemAttributes)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v55 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v55 = MEMORY[0x277D86220];
      v56 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [ACCNowPlayingFeaturePlugin currentMediaItemAttributes];
    }

    [(ACCNowPlayingFeaturePlugin *)v51 setCachedMediaItemAttributes:v67];
  }

  v57 = [v67 copy];

  return v57;
}

- (id)currentMediaItemArtwork
{
  v32[3] = *MEMORY[0x277D85DE8];
  mrArtworkData = [(ACCNowPlayingFeaturePlugin *)self mrArtworkData];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)mrArtworkData currentMediaItemArtwork];
  }

  if (!mrArtworkData)
  {
    goto LABEL_57;
  }

  v6 = CGImageSourceCreateWithData(mrArtworkData, 0);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)v6 currentMediaItemArtwork];
  }

  data = [MEMORY[0x277CBEB28] data];
  v10 = CGImageDestinationCreateWithData(data, *MEMORY[0x277CC20C8], 1uLL, 0);
  v11 = *MEMORY[0x277CD2D48];
  v32[0] = &unk_2848EBE40;
  v12 = *MEMORY[0x277CD3038];
  v31[0] = v11;
  v31[1] = v12;
  null = [MEMORY[0x277CBEB68] null];
  v32[1] = null;
  v31[2] = *MEMORY[0x277CD3258];
  null2 = [MEMORY[0x277CBEB68] null];
  v32[2] = null2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  CGImageDestinationAddImageFromSource(v10, v6, 0, v15);

  v16 = CGImageDestinationFinalize(v10);
  if (gLogObjects)
  {
    v17 = gNumLogObjects <= 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (v16)
  {
    if (v18)
    {
      v19 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v19 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    v22 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (v22)
    {
      v23 = CGImageSourceCreateWithData(data, 0);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v24 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v24 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [(ACCNowPlayingFeaturePlugin *)v23 currentMediaItemArtwork];
      }

      if (v23)
      {
        CFRelease(v23);
      }
    }

    v26 = data;
    if (v10)
    {
LABEL_53:
      CFRelease(v10);
    }
  }

  else
  {
    if (v18)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v20 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ACCNowPlayingFeaturePlugin currentMediaItemArtwork];
    }

    v26 = 0;
    if (v10)
    {
      goto LABEL_53;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (!v26)
  {
LABEL_57:
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v28 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v28 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [(ACCNowPlayingFeaturePlugin *)v26 currentMediaItemArtwork];
  }

  return v26;
}

- (id)currentPlaybackAttributes
{
  v131 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = self->_mrNowPlayingInfo;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ACCNowPlayingFeaturePlugin currentPlaybackAttributes];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v7 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  selfCopy = self;
  v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v10 = MEMORY[0x277D27C80];
  v11 = MEMORY[0x277D27BE0];
  v12 = MEMORY[0x277D27BD8];
  v13 = MEMORY[0x277D27C40];
  v14 = MEMORY[0x277D27C28];
  v88 = v3;
  if (v9)
  {
    v15 = *MEMORY[0x277D27C80];
    v98 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C80]];
    v91 = [(NSDictionary *)v3 objectForKeyedSubscript:v15];
    [v91 timeIntervalSince1970];
    v17 = v16;
    v96 = [(NSDictionary *)v3 objectForKeyedSubscript:*v11];
    v94 = [(NSDictionary *)v3 objectForKeyedSubscript:*v12];
    v92 = [(NSDictionary *)v3 objectForKeyedSubscript:*v13];
    v90 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27BC0]];
    v89 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C48]];
    v18 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27CA0]];
    v19 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27BA0]];
    v20 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C90]];
    v21 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C08]];
    v22 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C58]];
    v23 = [(NSDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277D27C60]];
    v24 = [(NSDictionary *)v88 objectForKeyedSubscript:*MEMORY[0x277D27C28]];
    *buf = 138415618;
    *v106 = v98;
    *&v106[8] = 2048;
    *&v106[10] = v17;
    v107 = 2112;
    v108 = v96;
    v109 = 2112;
    v110 = v94;
    v111 = 2112;
    v112 = v92;
    v113 = 2112;
    v114 = v90;
    v115 = 2112;
    v116 = v89;
    v117 = 2112;
    v118 = v18;
    v119 = 2112;
    v120 = v19;
    v25 = v19;
    v121 = 2112;
    v122 = v20;
    v123 = 2112;
    v124 = v21;
    v125 = 2112;
    v126 = v22;
    v127 = 2112;
    v128 = v23;
    v129 = 2112;
    v130 = v24;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes nowPlayingInfo: \nnowPlayingInfoInfo Playback Info \n    Timestamp: %@ (%f) \n    ElapsedTime: %@ / %@ \n    PlaybackRate: %@ (%@) \n    Index / Count: %@ / %@ \n    Chapter: %@ / %@ \n    IsAd: %@ \n    RadioStation: %@ (%@)\n    IsMusicApp: %@\n", buf, 0x8Eu);

    v3 = v88;
    v11 = MEMORY[0x277D27BE0];

    v13 = MEMORY[0x277D27C40];
    v12 = MEMORY[0x277D27BD8];

    v14 = MEMORY[0x277D27C28];
    v10 = MEMORY[0x277D27C80];
  }

  v26 = [(NSDictionary *)v3 objectForKeyedSubscript:*v11];
  v27 = [(NSDictionary *)v3 objectForKeyedSubscript:*v12];
  v28 = *v13;
  v29 = [(NSDictionary *)v3 objectForKeyedSubscript:*v13];
  v30 = [(NSDictionary *)v3 objectForKeyedSubscript:*v10];
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{(calculateCurrentElapsedTime(v26, v27, v29, v30) * 1000.0)}];
  [dictionary setObject:v31 forKey:*MEMORY[0x277CE83A0]];

  [dictionary copyToKey:*MEMORY[0x277CE83C8] fromKey:*MEMORY[0x277D27C48] inDictionary:v3 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE83C0] fromKey:*MEMORY[0x277D27CA0] inDictionary:v3 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE83B8] fromKey:*MEMORY[0x277D27BA0] inDictionary:v3 objectIfNil:&unk_2848EBE10];
  [dictionary copyToKey:*MEMORY[0x277CE83F0] fromKey:*MEMORY[0x277D27C08] inDictionary:v3 objectIfNil:MEMORY[0x277CBEC28]];
  [dictionary copyToKey:*MEMORY[0x277CE83F8] fromKey:*MEMORY[0x277D27C58] inDictionary:v3 objectIfNil:&stru_2848EA190];
  [dictionary copyToKey:*MEMORY[0x277CE8400] fromKey:*MEMORY[0x277D27C60] inDictionary:v3 objectIfNil:&stru_2848EA190];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [dictionary setObject:v32 forKey:*MEMORY[0x277CE8408]];

  v33 = [(NSDictionary *)v3 objectForKey:v28];
  v34 = [(NSDictionary *)v3 objectForKey:*MEMORY[0x277D27BC0]];
  v35 = *v14;
  v36 = [(NSDictionary *)v3 objectForKey:*v14];
  v84 = v36;
  if (v36)
  {
    bOOLValue = [v36 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v38 = calculatePlaybackSpeed(v33, v34, bOOLValue);
  [dictionary setObject:v38 forKey:*MEMORY[0x277CE83B0]];

  v86 = v33;
  v39 = convertPlaybackStatus([(ACCNowPlayingFeaturePlugin *)selfCopy currentPlaybackStateMR], v33, v34);
  [dictionary setObject:v39 forKey:*MEMORY[0x277CE83E8]];

  currentPlaybackAppName = [(ACCNowPlayingFeaturePlugin *)selfCopy currentPlaybackAppName];
  [dictionary setObject:currentPlaybackAppName forKey:*MEMORY[0x277CE8398] objectIfNil:&stru_2848EA190];

  currentPlaybackAppBundleID = [(ACCNowPlayingFeaturePlugin *)selfCopy currentPlaybackAppBundleID];
  [dictionary setObject:currentPlaybackAppBundleID forKey:*MEMORY[0x277CE8390] objectIfNil:&stru_2848EA190];

  [dictionary copyToKey:*MEMORY[0x277CE83A8] fromKey:v35 inDictionary:v3 objectIfNil:MEMORY[0x277CBEC28]];
  v97 = *MEMORY[0x277CE83D0];
  [dictionary setObject:&unk_2848EBE28 forKey:?];
  v95 = *MEMORY[0x277CE83E0];
  [dictionary setObject:&unk_2848EBE28 forKey:?];
  v42 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v93 = *MEMORY[0x277CE83D8];
  [dictionary setObject:v42 forKey:?];

  v43 = selfCopy->_mrSupportedCommands;
  v44 = v43;
  if (gLogObjects)
  {
    v45 = gNumLogObjects <= 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = !v45;
  v85 = v34;
  if (v43)
  {
    if (v46)
    {
      v47 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v47 = MEMORY[0x277D86220];
      v48 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v106 = v44;
      _os_log_impl(&dword_233600000, v47, OS_LOG_TYPE_INFO, "currentPlaybackAttributes supportedCommands: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v46)
    {
      v47 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v47 = MEMORY[0x277D86220];
      v49 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      [ACCNowPlayingFeaturePlugin currentPlaybackAttributes];
    }
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v50 = v44;
  v51 = [(NSArray *)v50 countByEnumeratingWithState:&v100 objects:v104 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v101;
    v54 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v101 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v56 = MEMORY[0x2383A6FE0](*(*(&v100 + 1) + 8 * i));
        if (MRMediaRemoteCommandInfoGetEnabled())
        {
          v57 = gLogObjects;
          v58 = gNumLogObjects;
          if (gLogObjects)
          {
            v59 = gNumLogObjects < 1;
          }

          else
          {
            v59 = 1;
          }

          if (v59)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v106 = v57;
              *&v106[8] = 1024;
              *&v106[10] = v58;
              _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v60 = v54;
            v61 = v54;
          }

          else
          {
            v61 = *gLogObjects;
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *v106 = v56;
            _os_log_impl(&dword_233600000, v61, OS_LOG_TYPE_INFO, "currentPlaybackAttributes supportedCommands: supportedCommand=%d", buf, 8u);
          }

          switch(v56)
          {
            case 26:
              v65 = MRMediaRemoteCommandInfoCopyValueForKey();
              v69 = gLogObjects;
              v70 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v71 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v106 = v69;
                  *&v106[8] = 1024;
                  *&v106[10] = v70;
                  _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v77 = v54;
                v71 = v54;
              }

              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *v106 = 26;
                *&v106[4] = 2112;
                *&v106[6] = v65;
                _os_log_impl(&dword_233600000, v71, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes supportedCommands: %d, ShuffleMode=%@", buf, 0x12u);
              }

              v73 = convertShuffleMode(v65);
              v74 = dictionary;
              v75 = v73;
              v76 = v95;
              break;
            case 25:
              v65 = MRMediaRemoteCommandInfoCopyValueForKey();
              v66 = gLogObjects;
              v67 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v68 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v106 = v66;
                  *&v106[8] = 1024;
                  *&v106[10] = v67;
                  _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v72 = v54;
                v68 = v54;
              }

              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *v106 = 25;
                *&v106[4] = 2112;
                *&v106[6] = v65;
                _os_log_impl(&dword_233600000, v68, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes supportedCommands: %d, RepeastMode=%@", buf, 0x12u);
              }

              v73 = convertRepeatMode(v65);
              v74 = dictionary;
              v75 = v73;
              v76 = v97;
              break;
            case 24:
              v62 = gLogObjects;
              v63 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v64 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v106 = v62;
                  *&v106[8] = 1024;
                  *&v106[10] = v63;
                  _os_log_error_impl(&dword_233600000, v54, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v78 = v54;
                v64 = v54;
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                *v106 = 24;
                _os_log_impl(&dword_233600000, v64, OS_LOG_TYPE_DEFAULT, "currentPlaybackAttributes supportedCommands: %d, SetTimeElpasedAvailable", buf, 8u);
              }

              v65 = [MEMORY[0x277CCABB0] numberWithBool:1];
              [dictionary setObject:v65 forKey:v93];
              goto LABEL_90;
            default:
              continue;
          }

          [v74 setObject:v75 forKey:v76];

LABEL_90:
          continue;
        }
      }

      v52 = [(NSArray *)v50 countByEnumeratingWithState:&v100 objects:v104 count:16];
    }

    while (v52);
  }

  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)selfCopy cachedPlaybackAttributes];

  if (!cachedPlaybackAttributes)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v80 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v80 = MEMORY[0x277D86220];
      v81 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      [ACCNowPlayingFeaturePlugin currentPlaybackAttributes];
    }

    [(ACCNowPlayingFeaturePlugin *)selfCopy setCachedPlaybackAttributes:dictionary];
  }

  v82 = [dictionary copy];

  return v82;
}

- (BOOL)setPlaybackElapsedTime:(id)time
{
  v10 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = timeCopy;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_DEFAULT, "Received set playback elapsed time: %@", &v8, 0xCu);
  }

  [timeCopy unsignedLongValue];
  MRMediaRemoteSetElapsedTime();

  return 1;
}

- (BOOL)setPlaybackQueueIndex:(id)index
{
  v21 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = indexCopy;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "Received set playback queue index: %@", buf, 0xCu);
  }

  queue = [(ACCNowPlayingFeaturePlugin *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke;
  block[3] = &unk_2789E4DD8;
  block[4] = self;
  v13 = indexCopy;
  v14 = &v15;
  v9 = indexCopy;
  dispatch_sync(queue, block);

  v10 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v10 & 1;
}

void __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mpMusicPlayerControllerHandler];
  if (v2)
  {
    v3 = [v2 nowPlayingItemAtIndex:{objc_msgSend(*(a1 + 40), "unsignedLongValue")}];
    if (v3)
    {
      [v2 setNowPlayingItem:v3];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v6 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_2();
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v3 = *gLogObjects;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_4();
    }
  }
}

- (void)requestPlaybackQueueListInfo:(id)info requestID:(id)d startIndex:(unsigned int)index upToCount:(unsigned int)count infoMask:(unsigned int)mask
{
  v51 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v15 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83C0]];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  intValue = [(ACCSettingsState *)self->_maxPlaybackQueueInfoCount intValue];
  if (intValue >= 1 && ((v18 = intValue, intValue >= count) ? (v19 = count == 0) : (v19 = 1), v19 ? (v20 = unsignedIntegerValue > intValue) : (v20 = 0), v20))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v27 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v38 = infoCopy;
      v39 = 2048;
      v40 = v18;
      v41 = 1024;
      indexCopy = count;
      v43 = 1024;
      countCopy2 = unsignedIntegerValue;
      _os_log_impl(&dword_233600000, v27, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: accessoryUID %@, ignore request, maxPlaybackQueueInfoCount=%ld upToCount=%u count=%u !!!!!!!!", buf, 0x22u);
    }
  }

  else
  {
    intValue2 = [(ACCSettingsState *)self->_playbackQueueInfoTimeoutMs intValue];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v23 = v22 * 1000.0;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v24 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v38 = infoCopy;
      v39 = 2112;
      v40 = dCopy;
      v41 = 1024;
      indexCopy = index;
      v43 = 1024;
      countCopy2 = count;
      v45 = 1024;
      maskCopy = mask;
      v47 = 2048;
      v48 = intValue2;
      v49 = 2048;
      v50 = v23;
      _os_log_impl(&dword_233600000, v24, OS_LOG_TYPE_DEFAULT, "Received requestPlaybackQueueListInfo: %@ requestID: %@ startIndex: %u upToCount: %u infoMask: 0x%x, playbackQueueInfoTimeoutMs=%ld startTimeMs=%lld", buf, 0x3Cu);
    }

    nowPlayingInfoPBQueueListQ = self->_nowPlayingInfoPBQueueListQ;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke;
    block[3] = &unk_2789E4EA0;
    block[4] = self;
    v30 = infoCopy;
    maskCopy2 = mask;
    indexCopy2 = index;
    countCopy3 = count;
    v31 = dCopy;
    v32 = v23;
    v33 = intValue2;
    dispatch_async(nowPlayingInfoPBQueueListQ, block);
  }
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 136) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    goto LABEL_14;
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 138412290;
    v31 = v7;
    _os_log_impl(&dword_233600000, v6, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: create new accessory object for accessoryUID %@", buf, 0xCu);
  }

  v3 = [[_ACCNowPlayingPBQUpdateRequestAccessory alloc] initWithAccessoryUID:*(a1 + 40)];
  v8 = *(*(a1 + 32) + 136);
  v9 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 accessoryUID];
  [v8 setObject:v3 forKey:v9];

  if (v3)
  {
LABEL_14:
    v10 = *(a1 + 72);
    v11 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 currentRequestID];
    if (v11)
    {
    }

    else if (*(a1 + 48))
    {
      v16 = [[_ACCNowPlayingPBQUpdateRequest alloc] initWithID:*(a1 + 48) startIndex:*(a1 + 76) upToCount:*(a1 + 80) infoMask:*(a1 + 72) allowNonLibrary:v10 >= 0];
      [(_ACCNowPlayingPBQUpdateRequest *)v16 setStartTimeMs:*(a1 + 56)];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v17 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 40);
        *buf = 138412546;
        v31 = v20;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_233600000, v17, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: %@ created request %@", buf, 0x16u);
      }

      [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 setCurrentRequestID:*(a1 + 48)];
      [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 setCurrentRequest:v16];
      goto LABEL_38;
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v12 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      *buf = 138412546;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_233600000, v12, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: requestID %@ already exists for accessory %@, ignore request (should cancel request first)", buf, 0x16u);
    }

    v16 = 0;
LABEL_38:
    v21 = [(_ACCNowPlayingPBQUpdateRequestAccessory *)v3 queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_184;
    v26[3] = &unk_2789E4E78;
    v22 = *(a1 + 64);
    v26[4] = *(a1 + 32);
    v27 = v3;
    v28 = v16;
    v29 = v22;
    v23 = v16;
    v18 = v3;
    dispatch_async(v21, v26);

    goto LABEL_39;
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v18 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v18 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 40);
    *buf = 138412290;
    v31 = v25;
    _os_log_impl(&dword_233600000, v18, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: failed to find accessory for accessoryUID %@", buf, 0xCu);
  }

LABEL_39:
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_184(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2;
  v17[3] = &unk_2789E4E28;
  v17[4] = *(a1 + 32);
  v2 = MEMORY[0x2383A73E0](v17);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_188;
  v16[3] = &unk_2789E4E50;
  v3 = *(a1 + 56);
  v16[4] = *(a1 + 32);
  v16[5] = v3;
  v4 = MEMORY[0x2383A73E0](v16);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_233600000, v5, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: call _generatePlaybackQueueItemsWithPropertyList, accessory=%@ request=%@", buf, 0x16u);
  }

  [*(a1 + 32) _generatePlaybackQueueItemsWithPropertyList:*(a1 + 40) request:*(a1 + 48) completionHandler:v2 continueQuery:v4];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 48) startTimeMs];
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    *buf = 134218498;
    v19 = (v10 * 1000.0) - v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_233600000, v11, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: finished in %lld ms, accessory=%@ request=%@", buf, 0x20u);
  }
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v12 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  else
  {
    v12 = *gLogObjects;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v40 = v9;
    _os_log_impl(&dword_233600000, v12, OS_LOG_TYPE_INFO, "requestPlaybackQueueListInfo: completionCB: %@, reqID=%@ info=%@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v13 = *(a1 + 32);
  v14 = *(v13 + 184);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_185;
  block[3] = &unk_2789E4E00;
  v32 = buf;
  block[4] = v13;
  v15 = v7;
  v31 = v15;
  dispatch_sync(v14, block);
  v16 = *(*&buf[8] + 40);
  if (v16)
  {
    v17 = [v16 currentRequestID];
    v18 = [v8 isEqualToString:v17];

    if (v18)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v19 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        v19 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 138412802;
        v34 = v15;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&dword_233600000, v19, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: completionCB: %@, reqID=%@, call playbackQueueListInfoResponse info=%@", v33, 0x20u);
      }

      [*(*(a1 + 32) + 24) playbackQueueListInfoResponse:v15 requestID:v8 info:v9];
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v23 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2_cold_4();
    }

    v25 = *(a1 + 32);
    v26 = *(v25 + 184);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_186;
    v27[3] = &unk_2789E4DD8;
    v27[4] = v25;
    v28 = v15;
    v29 = buf;
    dispatch_sync(v26, v27);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v20 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 138412290;
      v34 = v15;
      _os_log_impl(&dword_233600000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] requestPlaybackQueueListInfo: completionCB: %@, no accessory obejct to handle completion!", v33, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_185(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 136) objectForKey:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_186(void *a1)
{
  [*(a1[4] + 136) removeObjectForKey:a1[5]];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_188(uint64_t a1, void *a2, void *a3, char a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ((a4 & 0x7F) != 0 || *(a1 + 40) == -1 || ([MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate], v10 = (v9 * 1000.0), *(a1 + 40) + objc_msgSend(v8, "startTimeMs") > v10))
  {
    v11 = 0;
    if (v7 && v8)
    {
      v12 = [v8 requestID];
      v13 = [v7 currentRequestID];
      v11 = [v12 isEqualToString:v13];
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 accessoryUID];
      v17 = [v8 requestID];
      v18 = [v8 startTimeMs];
      v19 = *(a1 + 40);
      v20 = [*(a1 + 32) playbackQueueInfoSendPartialOnTimeout];
      v25 = 138413570;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v10;
      v33 = 2048;
      v34 = v19;
      v35 = 2048;
      v36 = [v20 intValue];
      _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_DEFAULT, "requestPlaybackQueueListInfo: continueCB: %@, request %@ timed out!, start=%lld cur=%lld timeout=%ld !!!!!!!! (SendPartialOnTimeout=%ld)", &v25, 0x3Eu);
    }

    v21 = [*(a1 + 32) playbackQueueInfoSendPartialOnTimeout];
    if ([v21 intValue] == 1)
    {
    }

    else
    {
      v22 = [*(a1 + 32) playbackQueueInfoSendPartialOnTimeout];
      v23 = [v22 intValue];

      if (v23 != 3)
      {
        v11 = 0;
        goto LABEL_20;
      }
    }

    v11 = 0xFFFFFFFFLL;
  }

LABEL_20:

  return v11;
}

- (void)cancelRequestPlaybackQueueListInfo:(id)info requestID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = infoCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_233600000, v10, OS_LOG_TYPE_DEFAULT, "Received cancelRequestPlaybackQueueListInfo: %@ requestID: %@", buf, 0x16u);
  }

  nowPlayingInfoPBQueueListQ = self->_nowPlayingInfoPBQueueListQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke;
  block[3] = &unk_2789E4EC8;
  block[4] = self;
  v15 = infoCopy;
  v16 = dCopy;
  v12 = dCopy;
  v13 = infoCopy;
  dispatch_async(nowPlayingInfoPBQueueListQ, block);
}

void __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 136) objectForKey:a1[5]];
  v3 = v2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v2)
  {
    if (v5)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v7 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v16 = a1[5];
    v24 = 138412290;
    v25 = v16;
    v17 = "cancelRequestPlaybackQueueListInfo: failed to find accessory for accessoryUID %@";
    v18 = v7;
    v19 = 12;
    goto LABEL_44;
  }

  if (v5)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v6 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_2();
  }

  v9 = a1[6];
  v10 = [v3 currentRequestID];
  v11 = [v9 isEqualToString:v10];

  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v11)
  {
    if (v13)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v7 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    v23 = a1[5];
    v22 = a1[6];
    v24 = 138412546;
    v25 = v22;
    v26 = 2112;
    v27 = v23;
    v17 = "cancelRequestPlaybackQueueListInfo: failed to find requestID %@ for accessory %@";
    v18 = v7;
    v19 = 22;
LABEL_44:
    _os_log_impl(&dword_233600000, v18, OS_LOG_TYPE_DEFAULT, v17, &v24, v19);
LABEL_45:

    goto LABEL_46;
  }

  if (v13)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_5();
  }

  [v3 setCurrentRequestID:0];
  [v3 setCurrentRequest:0];
LABEL_46:
}

- (void)_generatePlaybackQueueItemsWithPropertyList:(id)list request:(id)request completionHandler:(id)handler continueQuery:(id)query
{
  v221 = *MEMORY[0x277D85DE8];
  listCopy = list;
  requestCopy = request;
  handlerCopy = handler;
  queryCopy = query;
  v13 = 0x2812FF000uLL;
  v14 = 0x2812FF000uLL;
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 1;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v17 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  else
  {
    v17 = *gLogObjects;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    accessoryUID = [listCopy accessoryUID];
    requestID = [requestCopy requestID];
    *buf = 138413314;
    *v205 = accessoryUID;
    *&v205[8] = 2112;
    *v206 = requestID;
    *&v206[8] = 1024;
    *&v206[10] = [requestCopy startIndex];
    v14 = 0x2812FF000uLL;
    *&v206[14] = 1024;
    *&v206[16] = [requestCopy upToCount];
    *&v206[20] = 1024;
    *&v206[22] = [requestCopy infoMask];
    _os_log_impl(&dword_233600000, v17, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@ startIndex: %u upToCount: %u infoMask:%xh", buf, 0x28u);
  }

  v20 = queryCopy[2](queryCopy, listCopy, requestCopy, 0);
  if (v20 > 0)
  {
    measureMemoryUsage = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
    v201 = queryCopy;
    v202 = listCopy;
    if ([measureMemoryUsage BOOLValue])
    {
      memUse = self->_memUse;

      if (!memUse)
      {
        v23 = 0;
LABEL_33:
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        requestID2 = [requestCopy requestID];
        v37 = *MEMORY[0x277CE8430];
        [v35 setObject:requestID2 forKey:*MEMORY[0x277CE8430]];

        if (![(ACCNowPlayingFeaturePlugin *)self _nowPlayingAppIsIPodApp]|| [(ACCNowPlayingFeaturePlugin *)self _nowPlayingAppIsIPodRadio]|| [(ACCNowPlayingFeaturePlugin *)self _nowPlayingIsStreaming])
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v38 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
            }

            v38 = MEMORY[0x277D86220];
            v39 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            accessoryUID2 = [v202 accessoryUID];
            [requestCopy requestID];
            v42 = v41 = self;
            *buf = 138412546;
            *v205 = accessoryUID2;
            *&v205[8] = 2112;
            *v206 = v42;
            _os_log_impl(&dword_233600000, v38, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: acc %@, req %@, 3rd party app / streaming, pbqList not available", buf, 0x16u);

            self = v41;
            v14 = 0x2812FF000uLL;
          }

          [v35 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE8410]];
          accessoryUID3 = [v202 accessoryUID];
          requestID3 = [requestCopy requestID];
          handlerCopy[2](handlerCopy, accessoryUID3, requestID3, v35);

          startTime = 0;
LABEL_45:
          unsignedIntegerValue = 0;
LABEL_46:

          measureMemoryUsage2 = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
          if ([measureMemoryUsage2 BOOLValue])
          {
            v47 = self->_memUse;

            queryCopy = v201;
            if (v47)
            {
              [(ACCMemUsageStat *)self->_memUse update];
              v48 = *(v13 + 1984);
              v197 = v35;
              if (v48 && *(v14 + 1976) >= 1)
              {
                v49 = *v48;
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
                }

                v49 = MEMORY[0x277D86220];
                v50 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v194 = startTime;
                selfCopy = self;
                accessoryUID4 = [v202 accessoryUID];
                requestID4 = [requestCopy requestID];
                startIndex = [requestCopy startIndex];
                upToCount = [requestCopy upToCount];
                infoMask = [requestCopy infoMask];
                if (v23)
                {
                  date = [MEMORY[0x277CBEAA8] date];
                  startTime = [v23 startTime];
                  requestID10 = date;
                  [date timeIntervalSinceDate:startTime];
                }

                else
                {
                  v57 = 0;
                }

                v65 = selfCopy->_memUse;
                *buf = 138414338;
                *v205 = accessoryUID4;
                *&v205[8] = 2112;
                *v206 = requestID4;
                *&v206[8] = 1024;
                *&v206[10] = startIndex;
                *&v206[14] = 1024;
                *&v206[16] = upToCount;
                *&v206[20] = 1024;
                *&v206[22] = infoMask;
                *&v206[26] = 2048;
                *&v206[28] = v57;
                *&v206[36] = 1024;
                *&v206[38] = v194;
                *&v206[42] = 1024;
                *&v206[44] = unsignedIntegerValue;
                *&v206[48] = 2112;
                *&v206[50] = v65;
                _os_log_impl(&dword_233600000, v49, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@ startIndex: %u upToCount: %u infoMask: 0x%x, \n  Finished in %f sec, curIndex=%d / %d, memUse:\n%@", buf, 0x48u);
                if (v23)
                {
                }

                queryCopy = v201;
                self = selfCopy;
                v14 = 0x2812FF000uLL;
                v13 = 0x2812FF000uLL;
              }

              v66 = *(v13 + 1984);
              if (v66 && *(v14 + 1976) >= 1)
              {
                v67 = *v66;
                v35 = v197;
              }

              else
              {
                v35 = v197;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
                }

                v67 = MEMORY[0x277D86220];
                v68 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v205 = v23;
                _os_log_impl(&dword_233600000, v67, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: markStat: \nmark: \n%@", buf, 0xCu);
              }

              [(ACCMemUsageStat *)self->_memUse removeMark:@"npPbqUpdateMark"];
              v23 = 0;
            }
          }

          else
          {

            queryCopy = v201;
          }

          listCopy = v202;
          goto LABEL_84;
        }

        cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
        v59 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83C0]];
        unsignedIntegerValue = [v59 unsignedIntegerValue];

        cachedPlaybackAttributes2 = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
        v61 = [cachedPlaybackAttributes2 objectForKey:*MEMORY[0x277CE83C8]];
        startTime = [v61 unsignedIntegerValue];

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v62 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
          }

          v62 = MEMORY[0x277D86220];
          v63 = MEMORY[0x277D86220];
        }

        v195 = startTime;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          accessoryUID5 = [v202 accessoryUID];
          [requestCopy requestID];
          v156 = v23;
          v158 = v157 = self;
          *buf = 138413058;
          *v205 = accessoryUID5;
          *&v205[8] = 2112;
          *v206 = v158;
          *&v206[8] = 1024;
          *&v206[10] = unsignedIntegerValue;
          *&v206[14] = 1024;
          *&v206[16] = v195;
          _os_log_debug_impl(&dword_233600000, v62, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: acc %@, req %@, count=%d curIndex=%d", buf, 0x22u);

          self = v157;
          v23 = v156;
          startTime = v195;
        }

        if (!unsignedIntegerValue)
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v69 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
            }

            v69 = MEMORY[0x277D86220];
            v72 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            accessoryUID6 = [v202 accessoryUID];
            [requestCopy requestID];
            v75 = v74 = self;
            *buf = 138412546;
            *v205 = accessoryUID6;
            *&v205[8] = 2112;
            *v206 = v75;
            _os_log_impl(&dword_233600000, v69, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: acc %@, req %@, No QueueCount", buf, 0x16u);

            self = v74;
            v14 = 0x2812FF000uLL;
            startTime = v195;
          }

          [v35 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE8410]];
          accessoryUID3 = [v202 accessoryUID];
          requestID5 = [requestCopy requestID];
          handlerCopy[2](handlerCopy, accessoryUID3, requestID5, v35);

          goto LABEL_45;
        }

        if (v201[2](v201, v202, requestCopy, 0) < 1)
        {
          accessoryUID3 = logObjectForModule();
          if (os_log_type_enabled(accessoryUID3, OS_LOG_TYPE_DEFAULT))
          {
            accessoryUID7 = [v202 accessoryUID];
            requestID6 = [requestCopy requestID];
            *buf = 138412546;
            *v205 = accessoryUID7;
            *&v205[8] = 2112;
            *v206 = requestID6;
            _os_log_impl(&dword_233600000, accessoryUID3, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, got continueCB false before retrieve list, skip processing.", buf, 0x16u);
          }

          goto LABEL_46;
        }

        v181 = v37;
        v198 = v35;
        accessoryUID3 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([requestCopy upToCount])
        {
          startIndex2 = [requestCopy startIndex];
        }

        else
        {
          startIndex2 = 0;
        }

        upToCount2 = [requestCopy upToCount];
        v78 = unsignedIntegerValue;
        v79 = unsignedIntegerValue;
        if (upToCount2)
        {
          upToCount3 = [requestCopy upToCount];
          v78 = unsignedIntegerValue;
          v79 = unsignedIntegerValue;
          if (upToCount3 < unsignedIntegerValue)
          {
            upToCount4 = [requestCopy upToCount];
            v78 = unsignedIntegerValue;
            v79 = upToCount4;
          }
        }

        v82 = v78 - startIndex2;
        LODWORD(requestID10) = v79;
        if (v82 >= v79)
        {
          v83 = v79;
        }

        else
        {
          v83 = v82;
        }

        v188 = v83;
        v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
        v182 = *MEMORY[0x277CE8418];
        [v35 setObject:v84 forKey:?];

        v187 = startIndex2;
        v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
        [v35 setObject:v85 forKey:*MEMORY[0x277CE8438]];

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v86 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
          }

          v86 = MEMORY[0x277D86220];
          v87 = MEMORY[0x277D86220];
        }

        v184 = v23;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          startTime2 = [v23 startTime];
          [startTime2 timeIntervalSince1970];
          *buf = 134218240;
          *v205 = unsignedIntegerValue;
          *&v205[8] = 2048;
          *v206 = v89;
          _os_log_impl(&dword_233600000, v86, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: Start retrieving queued track info: count=%lu startTimeInterval=%f", buf, 0x16u);
        }

        if (v201[2](v201, v202, requestCopy, 0) >= 1 && +[ACCNowPlayingFeaturePlugin isMusicAppVisible])
        {
          v90 = logObjectForModule();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109888;
            *v205 = startIndex2;
            *&v205[4] = 1024;
            *&v205[6] = requestID10;
            *v206 = 1024;
            *&v206[2] = v188;
            *&v206[6] = 1024;
            *&v206[8] = v188 + startIndex2;
            _os_log_debug_impl(&dword_233600000, v90, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: startIndex=%d contentSize=%d contentCount=%d endIndex=%d", buf, 0x1Au);
          }

          mpMusicPlayerControllerHandler = [(ACCNowPlayingFeaturePlugin *)self mpMusicPlayerControllerHandler];
          v183 = v35 == 0;
          v185 = mpMusicPlayerControllerHandler;
          if (v188)
          {
            v191 = 0;
            v92 = 0;
            v93 = "exist";
            if (!mpMusicPlayerControllerHandler)
            {
              v93 = "null";
            }

            v180 = v93;
            v94 = 1;
            while (1)
            {
              if (v201[2](v201, v202, requestCopy, v92) <= 0)
              {
                goto LABEL_200;
              }

              v95 = [v185 nowPlayingItemAtIndex:?];
              v96 = gLogObjects;
              v97 = gNumLogObjects;
              v98 = !gLogObjects || gNumLogObjects < 1;
              requestID10 = v95;
              if (v98)
              {
                v99 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v205 = v96;
                  *&v205[8] = 1024;
                  *v206 = v97;
                  _os_log_error_impl(&dword_233600000, v99, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v100 = v99;
                v102 = v99;
                v101 = requestID10;
              }

              else
              {
                v101 = v95;
                v102 = *gLogObjects;
              }

              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218496;
                *v205 = v92;
                *&v205[8] = 2048;
                *v206 = v187 + v92;
                *&v206[8] = 1024;
                *&v206[10] = unsignedIntegerValue;
                _os_log_debug_impl(&dword_233600000, v102, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: %lu [%lu / %d]", buf, 0x1Cu);
              }

              v189 = v101 != 0;
              if (!v101)
              {
                break;
              }

              if (![v101 persistentID] || (objc_msgSend(v101, "existsInLibrary") & 1) == 0)
              {
                allowNonLibrary = [requestCopy allowNonLibrary];
                v104 = gLogObjects;
                v105 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v106 = *gLogObjects;
                }

                else
                {
                  v110 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v205 = v104;
                    *&v205[8] = 1024;
                    *v206 = v105;
                    _os_log_error_impl(&dword_233600000, v110, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v111 = v110;
                  v106 = v110;
                  v101 = requestID10;
                }

                if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                {
                  title = [v101 title];
                  persistentID = [v101 persistentID];
                  *buf = 134219010;
                  *v205 = v92;
                  *&v205[8] = 2048;
                  *v206 = unsignedIntegerValue;
                  *&v206[8] = 2112;
                  *&v206[10] = v101;
                  *&v206[18] = 2112;
                  *&v206[20] = title;
                  *&v206[28] = 2048;
                  *&v206[30] = persistentID;
                  _os_log_impl(&dword_233600000, v106, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: i=%lu/%lu Found non-library item %@ (%@ : %llu)", buf, 0x34u);
                }

                v94 &= allowNonLibrary;

                v191 = 1;
                v35 = v198;
              }

              if ((v94 & 1) != 0 && v35)
              {
                v114 = gLogObjects;
                v115 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v116 = *gLogObjects;
                }

                else
                {
                  v116 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    *v205 = v114;
                    *&v205[8] = 1024;
                    *v206 = v115;
                    _os_log_error_impl(&dword_233600000, v116, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v118 = v116;
                }

                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                {
                  persistentID2 = [v101 persistentID];
                  title2 = [v101 title];
                  artist = [v101 artist];
                  albumTitle = [v101 albumTitle];
                  *buf = 134219522;
                  *v205 = v92;
                  *&v205[8] = 2048;
                  *v206 = v187 + v92;
                  *&v206[8] = 1024;
                  *&v206[10] = unsignedIntegerValue;
                  *&v206[14] = 2048;
                  *&v206[16] = persistentID2;
                  *&v206[24] = 2112;
                  *&v206[26] = title2;
                  *&v206[34] = 2112;
                  *&v206[36] = artist;
                  *&v206[44] = 2112;
                  *&v206[46] = albumTitle;
                  _os_log_debug_impl(&dword_233600000, v116, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: %lu [%lu / %d]   mediaItem:(pid=%llu title='%@' artist='%@' album='%@')", buf, 0x44u);
                }

                v109 = +[ACCNowPlayingFeaturePlugin getItemDictionaryForContentItem:infoMask:](ACCNowPlayingFeaturePlugin, "getItemDictionaryForContentItem:infoMask:", v101, [requestCopy infoMask]);
                [accessoryUID3 addObject:v109];
LABEL_162:

                v94 = v189;
              }

              measureMemoryUsage3 = [(ACCNowPlayingFeaturePlugin *)self measureMemoryUsage];
              startTime = v195;
              if (![measureMemoryUsage3 BOOLValue])
              {
                goto LABEL_171;
              }

              v120 = self->_memUse;

              if (v120 && ((v92 & 0x7F) == 0 || unsignedIntegerValue - 1 == v92))
              {
                [(ACCMemUsageStat *)self->_memUse update];
                if (v184)
                {
                  [v184 timeIntervalSinceLastUpdate];
                  if (v121 >= 1.0)
                  {
                    measureMemoryUsage3 = logObjectForModule();
                    if (os_log_type_enabled(measureMemoryUsage3, OS_LOG_TYPE_DEBUG))
                    {
                      residentMem = [v184 residentMem];
                      last = [residentMem last];
                      residentMem2 = [v184 residentMem];
                      v125 = [residentMem2 last] / 1000000.0;
                      residentMem3 = [v184 residentMem];
                      v172 = [residentMem3 max];
                      residentMem4 = [v184 residentMem];
                      v126 = [residentMem4 max] / 1000000.0;
                      virtualMem = [v184 virtualMem];
                      last2 = [virtualMem last];
                      virtualMem2 = [v184 virtualMem];
                      v127 = [virtualMem2 last] / 1000000.0;
                      virtualMem3 = [v184 virtualMem];
                      v167 = [virtualMem3 max];
                      virtualMem4 = [v184 virtualMem];
                      v128 = [virtualMem4 max] / 1000000.0;
                      physFootprintMem = [v184 physFootprintMem];
                      last3 = [physFootprintMem last];
                      physFootprintMem2 = [v184 physFootprintMem];
                      v129 = [physFootprintMem2 last] / 1000000.0;
                      physFootprintMem3 = [v184 physFootprintMem];
                      v165 = [physFootprintMem3 max];
                      physFootprintMem4 = [v184 physFootprintMem];
                      v132 = [physFootprintMem4 max];
                      *buf = 134221568;
                      *v205 = v92;
                      *&v205[8] = 1024;
                      *v206 = v188;
                      *&v206[4] = 1024;
                      *&v206[6] = unsignedIntegerValue;
                      *&v206[10] = 2048;
                      *&v206[12] = last;
                      *&v206[20] = 2048;
                      *&v206[22] = v125;
                      *&v206[30] = 2048;
                      *&v206[32] = v172;
                      *&v206[40] = 2048;
                      *&v206[42] = v126;
                      *&v206[50] = 2048;
                      *&v206[52] = last2;
                      v207 = 2048;
                      v208 = v127;
                      v209 = 2048;
                      v210 = v167;
                      v211 = 2048;
                      v212 = v128;
                      v213 = 2048;
                      v214 = last3;
                      v215 = 2048;
                      v216 = v129;
                      v217 = 2048;
                      v218 = v165;
                      v219 = 2048;
                      v220 = v132 / 1000000.0;
                      _os_log_debug_impl(&dword_233600000, measureMemoryUsage3, OS_LOG_TYPE_DEBUG, "_generatePlaybackQueueItemsWithPropertyList: %lu / %d / %d, memUse[resident=%llu(%.3fM)/%llu(%.3fM) virtual=%llu(%.3fM)/%llu(%.3fM) physFootprint=%llu(%.3fM)/=%llu(%.3fM)]", buf, 0x90u);
                    }

LABEL_171:
                  }
                }
              }

              if (v191 & v183)
              {
                v35 = v198;
                goto LABEL_200;
              }

              ++v92;
              v35 = v198;
              if (v92 >= v188 || ((v94 ^ 1) & 1) != 0)
              {
                goto LABEL_200;
              }
            }

            v107 = gLogObjects;
            v108 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v109 = *gLogObjects;
            }

            else
            {
              v109 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v205 = v107;
                *&v205[8] = 1024;
                *v206 = v108;
                _os_log_error_impl(&dword_233600000, v109, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v117 = v109;
            }

            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134219266;
              *v205 = v92;
              *&v205[8] = 2048;
              *v206 = v187 + v92;
              *&v206[8] = 1024;
              *&v206[10] = unsignedIntegerValue;
              *&v206[14] = 2048;
              *&v206[16] = unsignedIntegerValue;
              *&v206[24] = 2048;
              *&v206[26] = v92;
              *&v206[34] = 2080;
              *&v206[36] = v180;
              _os_log_impl(&dword_233600000, v109, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %lu [%lu / %d] Unexpected end of playback queue list, expected count=%lu but only got to index=%lu, systemMusicPlayer = %s", buf, 0x3Au);
            }

            v191 = 1;
            goto LABEL_162;
          }

          LOBYTE(v191) = 0;
          LOBYTE(v94) = 1;
LABEL_200:
          v159 = logObjectForModule();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
          {
            v160 = [accessoryUID3 count];
            *buf = 134218752;
            *v205 = unsignedIntegerValue;
            *&v205[8] = 1024;
            *v206 = v191 & 1;
            *&v206[4] = 1024;
            *&v206[6] = v94 & 1;
            startTime = v195;
            v35 = v198;
            *&v206[10] = 2048;
            *&v206[12] = v160;
            _os_log_impl(&dword_233600000, v159, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: after iteration, count=%lu foundNonLibrary=%d pbqListAvailable=%d metaList.count=%lu", buf, 0x22u);
          }

          v13 = 0x2812FF000;
          if ((v94 & 1) == 0)
          {
            [v35 removeAllObjects];
            requestID7 = [requestCopy requestID];
            [v35 setObject:requestID7 forKey:v181];

            [v35 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE8410]];
          }

          v162 = v201[2](v201, v202, requestCopy, 0);
          if (v162)
          {
            if ((v94 & 1) == 0)
            {
              v146 = 0;
LABEL_196:
              v147 = logObjectForModule();
              if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
              {
                v148 = [accessoryUID3 count];
                [v198 objectForKey:v182];
                v150 = v149 = self;
                unsignedLongValue = [v150 unsignedLongValue];
                [v184 timeIntervalSinceStart];
                *buf = 134219008;
                *v205 = v148;
                *&v205[8] = 2048;
                *v206 = unsignedLongValue;
                *&v206[8] = 1024;
                *&v206[10] = v191 & 1;
                startTime = v195;
                *&v206[14] = 1024;
                *&v206[16] = v146;
                *&v206[20] = 2048;
                *&v206[22] = v152;
                _os_log_impl(&dword_233600000, v147, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: End retrieving queued track items (count=%lu(req'd=%lu), foundNonLibrary=%d pbqListAvailable=%d): timeSinceStart=%f", buf, 0x2Cu);

                self = v149;
              }

              accessoryUID8 = [v202 accessoryUID];
              requestID8 = [requestCopy requestID];
              handlerCopy[2](handlerCopy, accessoryUID8, requestID8, v198);

              v14 = 0x2812FF000;
LABEL_209:
              v23 = v184;

              v35 = v198;
              goto LABEL_46;
            }

            v137 = v162;
LABEL_186:
            playbackQueueInfoSendPartialOnTimeout = [(ACCNowPlayingFeaturePlugin *)self playbackQueueInfoSendPartialOnTimeout];
            if ([playbackQueueInfoSendPartialOnTimeout intValue] == 3)
            {
              v139 = [accessoryUID3 count];

              if (v139 >= v188)
              {
LABEL_193:
                [v198 setObject:accessoryUID3 forKey:*MEMORY[0x277CE8420]];
                v144 = [MEMORY[0x277CCABB0] numberWithBool:v191 & 1];
                [v198 setObject:v144 forKey:*MEMORY[0x277CE8428]];

                [v198 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE8410]];
                if (v137 < 0)
                {
                  v145 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[NSObject count](accessoryUID3, "count")}];
                  [v198 setObject:v145 forKey:v182];
                }

                v146 = 1;
                goto LABEL_196;
              }

              v140 = logObjectForModule();
              if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
              {
                v141 = [accessoryUID3 count];
                *buf = 134217984;
                *v205 = v188 - v141;
                _os_log_impl(&dword_233600000, v140, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: list not full, fill %lu items with 0 pid!", buf, 0xCu);
              }

              playbackQueueInfoSendPartialOnTimeout = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{&unk_2848EBE28, *MEMORY[0x277CE8468], 0}];
              v142 = [accessoryUID3 count];
              v143 = v188 - v142;
              if (v188 > v142)
              {
                do
                {
                  [accessoryUID3 addObject:playbackQueueInfoSendPartialOnTimeout];
                  --v143;
                }

                while (v143);
              }
            }

            goto LABEL_193;
          }
        }

        else
        {
          v13 = 0x2812FF000uLL;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v133 = *gLogObjects;
            v134 = v202;
          }

          else
          {
            v134 = v202;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
            }

            v133 = MEMORY[0x277D86220];
            v135 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_233600000, v133, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: no systemMusicPlayer!", buf, 2u);
          }

          v136 = v201[2](v201, v134, requestCopy, 0);
          if (v136)
          {
            v137 = v136;
            LOBYTE(v191) = 0;
            goto LABEL_186;
          }
        }

        accessoryUID8 = logObjectForModule();
        if (os_log_type_enabled(accessoryUID8, OS_LOG_TYPE_DEFAULT))
        {
          accessoryUID9 = [v202 accessoryUID];
          requestID9 = [requestCopy requestID];
          *buf = 138412546;
          *v205 = accessoryUID9;
          *&v205[8] = 2112;
          *v206 = requestID9;
          _os_log_impl(&dword_233600000, accessoryUID8, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, got continueCB false attempting to retrieve list, skip processing.", buf, 0x16u);
        }

        goto LABEL_209;
      }

      [(ACCMemUsageStat *)self->_memUse mark:@"npPbqUpdateMark"];
      v23 = [(ACCMemUsageStat *)self->_memUse getMark:@"npPbqUpdateMark"];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        measureMemoryUsage = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
        }

        measureMemoryUsage = MEMORY[0x277D86220];
        v28 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(measureMemoryUsage, OS_LOG_TYPE_INFO))
      {
        accessoryUID10 = [listCopy accessoryUID];
        requestID10 = [requestCopy requestID];
        residentMem5 = [v23 residentMem];
        selfCopy2 = self;
        start = [residentMem5 start];
        virtualMem5 = [v23 virtualMem];
        start2 = [virtualMem5 start];
        physFootprintMem5 = [v23 physFootprintMem];
        start3 = [physFootprintMem5 start];
        *buf = 138413314;
        *v205 = accessoryUID10;
        *&v205[8] = 2112;
        *v206 = requestID10;
        *&v206[8] = 2048;
        *&v206[10] = start;
        self = selfCopy2;
        v14 = 0x2812FF000uLL;
        *&v206[18] = 2048;
        *&v206[20] = start2;
        *&v206[28] = 2048;
        *&v206[30] = start3;
        _os_log_impl(&dword_233600000, measureMemoryUsage, OS_LOG_TYPE_INFO, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, memUse:[residentStart=%llu virtualStart=%llu ]hysFootprintStart=%llu]", buf, 0x34u);

        v13 = 0x2812FF000uLL;
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_33;
  }

  v24 = v20;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v23 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v23 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    accessoryUID11 = [listCopy accessoryUID];
    requestID11 = [requestCopy requestID];
    *buf = 138412802;
    *v205 = accessoryUID11;
    *&v205[8] = 2112;
    *v206 = requestID11;
    *&v206[8] = 1024;
    *&v206[10] = v24;
    _os_log_impl(&dword_233600000, v23, OS_LOG_TYPE_DEFAULT, "_generatePlaybackQueueItemsWithPropertyList: %@ requestID: %@, got continueCB=%d, @ enter, skip processing.", buf, 0x1Cu);
  }

LABEL_84:
}

- (BOOL)_nowPlayingAppIsIPodApp
{
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v3 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83A8]];

  LOBYTE(cachedPlaybackAttributes) = [v3 BOOLValue];
  return cachedPlaybackAttributes;
}

- (BOOL)_nowPlayingAppIsIPodRadio
{
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v3 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE8400]];

  if (v3)
  {
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_nowPlayingIsStreaming
{
  cachedPlaybackAttributes = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v4 = [cachedPlaybackAttributes objectForKey:*MEMORY[0x277CE83C8]];

  cachedPlaybackAttributes2 = [(ACCNowPlayingFeaturePlugin *)self cachedPlaybackAttributes];
  v6 = [cachedPlaybackAttributes2 objectForKey:*MEMORY[0x277CE83C0]];

  LODWORD(cachedPlaybackAttributes2) = [v6 unsignedLongValue];
  _nowPlayingAppIsIPodRadio = [(ACCNowPlayingFeaturePlugin *)self _nowPlayingAppIsIPodRadio];
  v8 = (cachedPlaybackAttributes2 - 0x7FFFFFFF) < 0x80000002 || _nowPlayingAppIsIPodRadio;
  if (v8 && [v4 unsignedLongValue])
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACCNowPlayingFeaturePlugin _nowPlayingIsStreaming];
    }
  }

  return v8;
}

- (void)_nowPlayingInfoDebounceTimerKick:(int)kick
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingInfoDebounceTimerRunningMask = self->_nowPlayingInfoDebounceTimerRunningMask;
    v17 = 67109376;
    kickCopy = kick;
    v19 = 1024;
    v20 = nowPlayingInfoDebounceTimerRunningMask;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "_nowPlayingInfoDebounceTimerKick: event = 0x%02x, _nowPlayingInfoDebounceTimerRunningMask = 0x%02x", &v17, 0xEu);
  }

  v9 = self->_nowPlayingInfoDebounceTimerRunningMask;
  if (!kick || v9)
  {
    self->_nowPlayingInfoDebounceTimerRunningMask = v9 | kick;
  }

  else
  {
    self->_nowPlayingInfoDebounceTimerRunningMask = kick;
    intValue = [(ACCSettingsState *)self->_nowPlayingInfoDebounceTimerValue intValue];
    nowPlayingInfoDebounceTimer = self->_nowPlayingInfoDebounceTimer;
    v12 = dispatch_time(0, 1000000 * intValue);
    if (intValue <= 1000)
    {
      v13 = 1000000 * (intValue / 10);
    }

    else
    {
      v13 = 100000000;
    }

    dispatch_source_set_timer(nowPlayingInfoDebounceTimer, v12, 0xFFFFFFFFFFFFFFFFLL, v13);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v14 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = self->_nowPlayingInfoDebounceTimerRunningMask;
    v17 = 67109376;
    kickCopy = v9;
    v19 = 1024;
    v20 = v16;
    _os_log_impl(&dword_233600000, v14, OS_LOG_TYPE_INFO, "_nowPlayingInfoDebounceTimerKick: _nowPlayingInfoDebounceTimerRunningMask 0x%02x -> 0x%02x", &v17, 0xEu);
  }
}

- (void)_nowPlayingInfoDebounceTimerStop:(int)stop
{
  v17 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingInfoDebounceTimerRunningMask = self->_nowPlayingInfoDebounceTimerRunningMask;
    v13 = 67109376;
    stopCopy = stop;
    v15 = 1024;
    v16 = nowPlayingInfoDebounceTimerRunningMask;
    _os_log_impl(&dword_233600000, v7, OS_LOG_TYPE_DEFAULT, "_nowPlayingInfoDebounceTimerStop: event = 0x%02x, _nowPlayingInfoDebounceTimerRunningMask = 0x%02x", &v13, 0xEu);
  }

  v9 = self->_nowPlayingInfoDebounceTimerRunningMask;
  self->_nowPlayingInfoDebounceTimerRunningMask = v9 & ~stop;
  if ((v9 & ~stop) == 0)
  {
    dispatch_source_set_timer(self->_nowPlayingInfoDebounceTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [_ACCNowPlayingPBQUpdateRequest initWithID:startIndex:upToCount:infoMask:allowNonLibrary:];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = self->_nowPlayingInfoDebounceTimerRunningMask;
    v13 = 67109376;
    stopCopy = v9;
    v15 = 1024;
    v16 = v12;
    _os_log_impl(&dword_233600000, v10, OS_LOG_TYPE_INFO, "_nowPlayingInfoDebounceTimerStop: _nowPlayingInfoDebounceTimerRunningMask 0x%02x -> 0x%02x", &v13, 0xEu);
  }
}

+ (BOOL)isMusicAppVisible
{
  if (GetMediaLibraryHelper___mediaLibraryHelperInitOnce != -1)
  {
    +[ACCNowPlayingFeaturePlugin isMusicAppVisible];
  }

  v3 = GetMediaLibraryHelper___mediaLibraryHelper;

  return [v3 showMusic];
}

+ (id)getItemDictionaryForContentItem:(id)item infoMask:(unsigned int)mask
{
  itemCopy = item;
  v6 = 0;
  if (!itemCopy || !mask)
  {
    goto LABEL_33;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = 0;
  v20 = *MEMORY[0x277CE8458];
  v21 = *MEMORY[0x277CD5710];
  v8 = *MEMORY[0x277CD5750];
  v27 = *MEMORY[0x277CE8460];
  v9 = *MEMORY[0x277CD56B8];
  v26 = *MEMORY[0x277CE8440];
  v10 = *MEMORY[0x277CD56E8];
  v25 = *MEMORY[0x277CE8450];
  v11 = *MEMORY[0x277CD56D0];
  v24 = *MEMORY[0x277CE8448];
  v12 = *MEMORY[0x277CD58B8];
  v23 = *MEMORY[0x277CE8470];
  v22 = *MEMORY[0x277CE8468];
  while (1)
  {
    if (((mask >> v7) & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v7 > 11)
    {
      break;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v13 = [itemCopy valueForProperty:v12];
        if (v13)
        {
          v14 = v6;
          v15 = v13;
          v16 = v23;
LABEL_25:
          [v14 setObject:v15 forKey:{v16, v20}];
        }

LABEL_26:

        goto LABEL_27;
      }

      if (v7 == 6)
      {
        v13 = [itemCopy valueForProperty:v11];
        if (v13)
        {
          v14 = v6;
          v15 = v13;
          v16 = v24;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      persistentID = [itemCopy persistentID];
      if (persistentID)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
        v14 = v6;
        v15 = v13;
        v16 = v22;
        goto LABEL_25;
      }
    }

LABEL_27:
    if (++v7 == 19)
    {
      goto LABEL_33;
    }
  }

  if (v7 <= 15)
  {
    if (v7 == 12)
    {
      v13 = [itemCopy valueForProperty:v10];
      if (v13)
      {
        v14 = v6;
        v15 = v13;
        v16 = v25;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if (v7 == 14)
    {
      v13 = [itemCopy valueForProperty:v9];
      if (v13)
      {
        v14 = v6;
        v15 = v13;
        v16 = v26;
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v7 == 16)
  {
    v13 = [itemCopy valueForProperty:v8];
    if (v13)
    {
      v14 = v6;
      v15 = v13;
      v16 = v27;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v7 != 18)
  {
    goto LABEL_27;
  }

  v18 = [itemCopy valueForProperty:v21];
  if (v18)
  {
    [v6 setObject:v18 forKey:v20];
  }

LABEL_33:

  return v6;
}

- (void)currentMediaItemAttributes
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)currentMediaItemArtwork
{
  [self length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)currentPlaybackAttributes
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__ACCNowPlayingFeaturePlugin_setPlaybackQueueIndex___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __99__ACCNowPlayingFeaturePlugin_requestPlaybackQueueListInfo_requestID_startIndex_upToCount_infoMask___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__ACCNowPlayingFeaturePlugin_cancelRequestPlaybackQueueListInfo_requestID___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_nowPlayingIsStreaming
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end