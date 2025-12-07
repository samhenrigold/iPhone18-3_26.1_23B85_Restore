@interface SOMediaNowPlayingObserver
+ (id)defaultObserver;
- (BOOL)_isProxyGroupPlayer;
- (SOMediaNowPlayingObserver)initWithQueue:(id)queue;
- (SOMediaNowPlayingObserver)initWithQueue:(id)queue instanceContext:(id)context;
- (int64_t)playbackState;
- (void)_beginGroup;
- (void)_endGroup;
- (void)_fetchLastPlayingDateWithCompletion:(id)completion;
- (void)_fetchNowPlayingAppPlaybackStateForReason:(id)reason completion:(id)completion;
- (void)_handleGroupIdentifierUpdatesFromMediaRemoteActiveDeviceInfo:(id)info;
- (void)_handleNowPlayingApplicationPlaybackStateChange:(int64_t)change;
- (void)_startObservingNowPlayingAppPlaybackState;
- (void)_stopObservingNowPlayingAppPlaybackState;
- (void)_updateProxyGroupPlayerState;
- (void)addListener:(id)listener;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)controllerWillReloadForInvalidation:(id)invalidation;
- (void)dealloc;
- (void)getNowPlayingApplicationBundleIdentifier:(id)identifier;
- (void)getNowPlayingInfoForCurrentItemWithCompletion:(id)completion;
- (void)getPlaybackStateAndLastPlayingDateWithCompletion:(id)completion;
- (void)getPlaybackStateWithCompletion:(id)completion;
- (void)getProxyGroupPlayerStateWithCompletion:(id)completion;
- (void)mediaRemoteActiveDeviceInfoDidChange:(id)change;
- (void)mediaRemoteNowPlayingApplicationPlaybackStateDidChange:(id)change;
- (void)mediaRemoteNowPlayingInfoDidChange:(id)change;
- (void)removeListener:(id)listener;
@end

@implementation SOMediaNowPlayingObserver

- (void)_beginGroup
{
  playbackStateGroup = self->_playbackStateGroup;
  if (!playbackStateGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_playbackStateGroup;
    self->_playbackStateGroup = v4;

    playbackStateGroup = self->_playbackStateGroup;
  }

  dispatch_group_enter(playbackStateGroup);
  ++self->_playbackStateGroupDepth;
}

- (void)_startObservingNowPlayingAppPlaybackState
{
  v12 = *MEMORY[0x277D85DE8];
  [(SOMediaNowPlayingObserver *)self _stopObservingNowPlayingAppPlaybackState];
  if (!self->_isObserving)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[SOMediaNowPlayingObserver _startObservingNowPlayingAppPlaybackState]";
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s %p", &v8, 0x16u);
    }

    if ([(SOMediaNowPlayingObserver *)self _supportsProxyGroupPlayer])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_mediaRemoteActiveDeviceInfoDidChange_ name:*MEMORY[0x277D27A20] object:0];
    }

    nowPlayingController = self->_nowPlayingController;
    if (nowPlayingController)
    {
      [(MRNowPlayingController *)nowPlayingController beginLoadingUpdates];
    }

    else
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_mediaRemoteNowPlayingApplicationPlaybackStateDidChange_ name:*MEMORY[0x277D27B50] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel_mediaRemoteNowPlayingInfoDidChange_ name:*MEMORY[0x277D27BC8] object:0];

      MRMediaRemoteSetWantsNowPlayingNotifications();
    }

    self->_isObserving = 1;
  }
}

- (void)_stopObservingNowPlayingAppPlaybackState
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_isObserving)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[SOMediaNowPlayingObserver _stopObservingNowPlayingAppPlaybackState]";
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s %p", &v8, 0x16u);
    }

    if ([(SOMediaNowPlayingObserver *)self _supportsProxyGroupPlayer])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x277D27A20] object:0];
    }

    nowPlayingController = self->_nowPlayingController;
    if (nowPlayingController)
    {
      [(MRNowPlayingController *)nowPlayingController endLoadingUpdates];
    }

    else
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 removeObserver:self name:*MEMORY[0x277D27B50] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 removeObserver:self name:*MEMORY[0x277D27BC8] object:0];

      MRMediaRemoteSetWantsNowPlayingNotifications();
    }

    self->_isObserving = 0;
  }
}

- (void)_updateProxyGroupPlayerState
{
  v16 = *MEMORY[0x277D85DE8];
  isProxyGroupPlayer = self->_isProxyGroupPlayer;
  _isProxyGroupPlayer = [(SOMediaNowPlayingObserver *)self _isProxyGroupPlayer];
  self->_isProxyGroupPlayer = _isProxyGroupPlayer;
  if (isProxyGroupPlayer != _isProxyGroupPlayer)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_listeners;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 nowPlayingObserver:self proxyGroupPlayerStateDidChangeFrom:isProxyGroupPlayer to:{self->_isProxyGroupPlayer, v11}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_isProxyGroupPlayer
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(SOMediaNowPlayingObserver *)self _supportsProxyGroupPlayer])
  {
    MRMediaRemoteGetLocalOrigin();
    v3 = MRMediaRemoteCopyDeviceInfo();
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x26D61CCC0]();
      CFRelease(v4);
    }

    else
    {
      v5 = 0;
    }

    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "[SOMediaNowPlayingObserver _isProxyGroupPlayer]";
      v10 = 2048;
      selfCopy = self;
      v12 = 1024;
      v13 = v5;
      _os_log_debug_impl(&dword_26858F000, v6, OS_LOG_TYPE_DEBUG, "%s %p isProxyGroupPlayer = %d", &v8, 0x1Cu);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_endGroup
{
  p_playbackStateGroup = &self->_playbackStateGroup;
  playbackStateGroup = self->_playbackStateGroup;
  self->_playbackStateGroupDepth = p_playbackStateGroup[1] - 1;
  dispatch_group_leave(playbackStateGroup);
  if (!self->_playbackStateGroupDepth)
  {
    v5 = self->_playbackStateGroup;
    self->_playbackStateGroup = 0;
  }
}

+ (id)defaultObserver
{
  if (defaultObserver_onceToken != -1)
  {
    dispatch_once(&defaultObserver_onceToken, &__block_literal_global_311);
  }

  v3 = defaultObserver_defaultObserver;

  return v3;
}

- (void)_fetchLastPlayingDateWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke;
  v17[3] = &unk_279C3D170;
  objc_copyWeak(&v19, &location);
  v5 = completionCopy;
  v18 = v5;
  v6 = MEMORY[0x26D61D070](v17);
  nowPlayingController = self->_nowPlayingController;
  v8 = *MEMORY[0x277CEF098];
  v9 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG);
  if (nowPlayingController)
  {
    if (v9)
    {
      *buf = 136315394;
      v22 = "[SOMediaNowPlayingObserver _fetchLastPlayingDateWithCompletion:]";
      v23 = 2048;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_26858F000, v8, OS_LOG_TYPE_DEBUG, "%s %p Calling [MRNowPlayingController performRequestWithCompletion:]...", buf, 0x16u);
    }

    v10 = self->_queue;
    v11 = self->_nowPlayingController;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_28;
    v14[3] = &unk_279C3D198;
    v12 = v10;
    v15 = v12;
    v16 = v6;
    [(MRNowPlayingController *)v11 performRequestWithCompletion:v14];
  }

  else
  {
    if (v9)
    {
      *buf = 136315394;
      v22 = "[SOMediaNowPlayingObserver _fetchLastPlayingDateWithCompletion:]";
      v23 = 2048;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_26858F000, v8, OS_LOG_TYPE_DEBUG, "%s %p Calling MRMediaRemote C APIs...", buf, 0x16u);
    }

    v13 = v6;
    MRMediaRemoteGetActiveOrigin();
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = 136315650;
    v10 = "[SOMediaNowPlayingObserver _fetchLastPlayingDateWithCompletion:]_block_invoke";
    v11 = 2048;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_26858F000, v7, OS_LOG_TYPE_DEBUG, "%s %p lastPlayingDate = %@", &v9, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _handleLastPlayingDateChangedTo:v3];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_2;
  block[3] = &unk_279C3D5E8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_30(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x277D279C8]) initWithOrigin:a3];
    v5 = *(*(a1 + 32) + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_2_32;
    v7[3] = &unk_279C3D1C0;
    v8 = *(a1 + 40);
    [v4 requestLastPlayingDateOnQueue:v5 completion:v7];
  }

  else
  {
    v6 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[SOMediaNowPlayingObserver _fetchLastPlayingDateWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_26858F000, v6, OS_LOG_TYPE_ERROR, "%s Failed fetching active origin for Last Playing Date", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_2_32(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SOMediaNowPlayingObserver _fetchLastPlayingDateWithCompletion:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_26858F000, v7, OS_LOG_TYPE_ERROR, "%s Failed fetching Last Playing Date with error: %@", &v9, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void __65__SOMediaNowPlayingObserver__fetchLastPlayingDateWithCompletion___block_invoke_2(void *a1)
{
  if (a1[4] || (v3 = a1[5]) == 0)
  {
    v2 = *(a1[6] + 16);

    v2();
  }

  else
  {
    v4 = a1[6];
    v5 = [v3 deviceLastPlayingDate];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)_fetchNowPlayingAppPlaybackStateForReason:(id)reason completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[SOMediaNowPlayingObserver _fetchNowPlayingAppPlaybackStateForReason:completion:]";
    v19 = 2048;
    selfCopy = self;
    v21 = 2112;
    v22 = reasonCopy;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s %p reason = %@", buf, 0x20u);
  }

  v9 = mach_absolute_time();
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__SOMediaNowPlayingObserver__fetchNowPlayingAppPlaybackStateForReason_completion___block_invoke;
  v13[3] = &unk_279C3D148;
  v13[4] = self;
  v10 = reasonCopy;
  v14 = v10;
  v16[1] = v9;
  objc_copyWeak(v16, buf);
  v11 = completionCopy;
  v15 = v11;
  v12 = MEMORY[0x26D61D070](v13);
  _AFGetPlaybackState();

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
}

uint64_t __82__SOMediaNowPlayingObserver__fetchNowPlayingAppPlaybackStateForReason_completion___block_invoke(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = (a2 - 1);
  if (v3 < 5)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = AFMediaPlaybackStateGetName();
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v13 = 136316162;
    v14 = "[SOMediaNowPlayingObserver _fetchNowPlayingAppPlaybackStateForReason:completion:]_block_invoke";
    v15 = 2048;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s %p reason = %@, state = %@ (took %f seconds)", &v13, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleNowPlayingApplicationPlaybackStateChange:v4];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v4);
  }

  return result;
}

- (void)_handleNowPlayingApplicationPlaybackStateChange:(int64_t)change
{
  v27 = *MEMORY[0x277D85DE8];
  playbackState = self->_playbackState;
  if (playbackState != change)
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      instanceContext = self->_instanceContext;
      v8 = v6;
      v9 = AFMediaPlaybackStateGetName();
      v10 = AFMediaPlaybackStateGetName();
      *buf = 136316162;
      v18 = "[SOMediaNowPlayingObserver _handleNowPlayingApplicationPlaybackStateChange:]";
      v19 = 2048;
      selfCopy = self;
      v21 = 2112;
      v22 = instanceContext;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s %p %@ fromState = %@, toState = %@", buf, 0x34u);

      playbackState = self->_playbackState;
    }

    self->_playbackState = change;
    if (change == 1 || playbackState == 1)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(SOMediaNowPlayingObserver *)self _handleLastPlayingDateChangedTo:date];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SOMediaNowPlayingObserver__handleNowPlayingApplicationPlaybackStateChange___block_invoke;
    v16[3] = &unk_279C3D0F8;
    v16[4] = self;
    v16[5] = playbackState;
    v16[6] = change;
    v12 = MEMORY[0x26D61D070](v16);
    v13 = v12;
    if (self->_lastPlayingDate)
    {
      v12[2](v12);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__SOMediaNowPlayingObserver__handleNowPlayingApplicationPlaybackStateChange___block_invoke_2;
      v14[3] = &unk_279C3D120;
      v14[4] = self;
      v15 = v12;
      [(SOMediaNowPlayingObserver *)self _fetchLastPlayingDateWithCompletion:v14];
    }
  }
}

void __77__SOMediaNowPlayingObserver__handleNowPlayingApplicationPlaybackStateChange___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1[4] + 48);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 nowPlayingObserver:a1[4] playbackStateDidChangeFrom:a1[5] to:a1[6] lastPlayingDate:{v3, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void __77__SOMediaNowPlayingObserver__handleNowPlayingApplicationPlaybackStateChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SOMediaNowPlayingObserver__handleNowPlayingApplicationPlaybackStateChange___block_invoke_3;
  block[3] = &unk_279C3D5E8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __77__SOMediaNowPlayingObserver__handleNowPlayingApplicationPlaybackStateChange___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[SOMediaNowPlayingObserver _handleNowPlayingApplicationPlaybackStateChange:]_block_invoke_3";
    v8 = 2048;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_debug_impl(&dword_26858F000, v2, OS_LOG_TYPE_DEBUG, "%s %p fetched last playing date from MediaRemote: %@", &v6, 0x20u);
  }

  [*(a1 + 32) _handleLastPlayingDateChangedTo:*(a1 + 40)];
  return (*(*(a1 + 48) + 16))();
}

- (void)mediaRemoteActiveDeviceInfoDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[SOMediaNowPlayingObserver mediaRemoteActiveDeviceInfoDidChange:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = changeCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s %p notification = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SOMediaNowPlayingObserver_mediaRemoteActiveDeviceInfoDidChange___block_invoke;
  v8[3] = &unk_279C3D598;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

uint64_t __66__SOMediaNowPlayingObserver_mediaRemoteActiveDeviceInfoDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateProxyGroupPlayerState];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _handleGroupIdentifierUpdatesFromMediaRemoteActiveDeviceInfo:v3];
}

- (void)_handleGroupIdentifierUpdatesFromMediaRemoteActiveDeviceInfo:(id)info
{
  v27 = *MEMORY[0x277D85DE8];
  userInfo = [info userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D27E80]];

  if (v5)
  {
    airPlayGroupUID = [v5 airPlayGroupUID];
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[SOMediaNowPlayingObserver _handleGroupIdentifierUpdatesFromMediaRemoteActiveDeviceInfo:]";
      v23 = 2048;
      selfCopy = self;
      v25 = 2112;
      v26 = airPlayGroupUID;
      _os_log_impl(&dword_26858F000, v7, OS_LOG_TYPE_INFO, "%s #hal %p airPlayGroupUID from kMRActiveDeviceInfoDidChangeNotification: %@", buf, 0x20u);
    }

    if ([airPlayGroupUID length])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = self->_listeners;
      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 nowPlayingObserver:self isGroupIdentifierFromMediaRemoteActiveDeviceInfoIdenticalToContext:{airPlayGroupUID, v16}] & 1) == 0)
            {
              v15 = *MEMORY[0x277CEF098];
              if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v22 = "[SOMediaNowPlayingObserver _handleGroupIdentifierUpdatesFromMediaRemoteActiveDeviceInfo:]";
                _os_log_impl(&dword_26858F000, v15, OS_LOG_TYPE_INFO, "%s #hal Group identifier in mediaRemoteActiveDeviceInfo is different to group identifier in device context.", buf, 0xCu);
              }

              if (objc_opt_respondsToSelector())
              {
                [v13 nowPlayingObserverAirPlayGroupChanged:self];
              }

              goto LABEL_21;
            }
          }

          v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }
  }

  else
  {
    v14 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v22 = "[SOMediaNowPlayingObserver _handleGroupIdentifierUpdatesFromMediaRemoteActiveDeviceInfo:]";
      _os_log_debug_impl(&dword_26858F000, v14, OS_LOG_TYPE_DEBUG, "%s #hal deviceRef from kMRActiveDeviceInfoDidChangeNotification was invalid. Returning.", buf, 0xCu);
    }
  }
}

- (void)mediaRemoteNowPlayingInfoDidChange:(id)change
{
  v14 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v9 = "[SOMediaNowPlayingObserver mediaRemoteNowPlayingInfoDidChange:]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = changeCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s %p notification = %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SOMediaNowPlayingObserver_mediaRemoteNowPlayingInfoDidChange___block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);
}

void __64__SOMediaNowPlayingObserver_mediaRemoteNowPlayingInfoDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 nowPlayingObserverNowPlayingInfoDidChange:{*(a1 + 32), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)mediaRemoteNowPlayingApplicationPlaybackStateDidChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[SOMediaNowPlayingObserver mediaRemoteNowPlayingApplicationPlaybackStateDidChange:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = changeCopy;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s %p notification = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__SOMediaNowPlayingObserver_mediaRemoteNowPlayingApplicationPlaybackStateDidChange___block_invoke;
  v8[3] = &unk_279C3D598;
  v9 = changeCopy;
  selfCopy2 = self;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

void __84__SOMediaNowPlayingObserver_mediaRemoteNowPlayingApplicationPlaybackStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v6 = [v2 objectForKey:*MEMORY[0x277D27E40]];

  v3 = *(a1 + 40);
  v4 = [v6 unsignedIntValue] - 1;
  if (v4 < 5)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  [v3 _handleNowPlayingApplicationPlaybackStateChange:v5];
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v11 = "[SOMediaNowPlayingObserver controller:didFailWithError:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_error_impl(&dword_26858F000, v7, OS_LOG_TYPE_ERROR, "%s %p %@", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SOMediaNowPlayingObserver_controller_didFailWithError___block_invoke;
  v9[3] = &unk_279C3D080;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __57__SOMediaNowPlayingObserver_controller_didFailWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (AFMediaPlaybackStateGetIsValidAndSpecified())
  {
    v2 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = AFMediaPlaybackStateGetName();
      *buf = 136315650;
      v9 = "[SOMediaNowPlayingObserver controller:didFailWithError:]_block_invoke";
      v10 = 2048;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s %p Skipped fetching playback state because the playback state is %@ and it is valid.", buf, 0x20u);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    [v6 _fetchNowPlayingAppPlaybackStateForReason:? completion:?];
  }
}

- (void)controllerWillReloadForInvalidation:(id)invalidation
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[SOMediaNowPlayingObserver controllerWillReloadForInvalidation:]";
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SOMediaNowPlayingObserver_controllerWillReloadForInvalidation___block_invoke;
  v7[3] = &unk_279C3D080;
  v7[4] = self;
  v7[5] = a2;
  dispatch_async(queue, v7);
}

void __65__SOMediaNowPlayingObserver_controllerWillReloadForInvalidation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleNowPlayingApplicationPlaybackStateChange:0];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 _fetchNowPlayingAppPlaybackStateForReason:v3 completion:0];
}

- (void)controller:(id)controller didLoadResponse:(id)response
{
  v19 = *MEMORY[0x277D85DE8];
  playbackState = [response playbackState];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = MRMediaRemoteCopyPlaybackStateDescription();
    *buf = 136315650;
    v14 = "[SOMediaNowPlayingObserver controller:didLoadResponse:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_26858F000, v7, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  v9 = (playbackState - 1);
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SOMediaNowPlayingObserver_controller_didLoadResponse___block_invoke;
  v12[3] = &unk_279C3D080;
  if (v9 < 5)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = 0;
  }

  v12[4] = self;
  v12[5] = v11;
  dispatch_async(queue, v12);
}

- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v13 = "[SOMediaNowPlayingObserver controller:playbackQueueDidChangeFrom:to:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = fromCopy;
    v18 = 2112;
    v19 = toCopy;
    _os_log_impl(&dword_26858F000, v9, OS_LOG_TYPE_INFO, "%s %p playback queue changed from %@ to %@", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SOMediaNowPlayingObserver_controller_playbackQueueDidChangeFrom_to___block_invoke;
  block[3] = &unk_279C3D280;
  block[4] = self;
  dispatch_async(queue, block);
}

void __70__SOMediaNowPlayingObserver_controller_playbackQueueDidChangeFrom_to___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 nowPlayingObserverNowPlayingInfoDidChange:{*(a1 + 32), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = MRMediaRemoteCopyPlaybackStateDescription();
    v11 = v10;
    v12 = MRMediaRemoteCopyPlaybackStateDescription();
    *buf = 136315906;
    v18 = "[SOMediaNowPlayingObserver controller:playbackStateDidChangeFrom:to:]";
    v19 = 2048;
    selfCopy = self;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26858F000, v9, OS_LOG_TYPE_INFO, "%s %p %@ -> %@", buf, 0x2Au);
  }

  v13 = to - 1;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SOMediaNowPlayingObserver_controller_playbackStateDidChangeFrom_to___block_invoke;
  v16[3] = &unk_279C3D080;
  if (v13 < 5)
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = 0;
  }

  v16[4] = self;
  v16[5] = v15;
  dispatch_async(queue, v16);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SOMediaNowPlayingObserver_removeListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __44__SOMediaNowPlayingObserver_removeListener___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 debugDescription];
    v8 = 136315650;
    v9 = "[SOMediaNowPlayingObserver removeListener:]_block_invoke";
    v10 = 2048;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s %p Attempting to delete listener: %@", &v8, 0x20u);
  }

  return [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__SOMediaNowPlayingObserver_addListener___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __41__SOMediaNowPlayingObserver_addListener___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  result = objc_opt_respondsToSelector();
  if ((result & 1) != 0 && *(*(a1 + 32) + 32))
  {
    v3 = *(a1 + 40);

    return [v3 nowPlayingObserver:? playbackStateDidChangeFrom:? to:? lastPlayingDate:?];
  }

  return result;
}

- (void)getProxyGroupPlayerStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__SOMediaNowPlayingObserver_getProxyGroupPlayerStateWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getNowPlayingApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__SOMediaNowPlayingObserver_getNowPlayingApplicationBundleIdentifier___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getNowPlayingInfoForCurrentItemWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__SOMediaNowPlayingObserver_getNowPlayingInfoForCurrentItemWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getPlaybackStateAndLastPlayingDateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__SOMediaNowPlayingObserver_getPlaybackStateAndLastPlayingDateWithCompletion___block_invoke;
    v7[3] = &unk_279C3D548;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __78__SOMediaNowPlayingObserver_getPlaybackStateAndLastPlayingDateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__SOMediaNowPlayingObserver_getPlaybackStateAndLastPlayingDateWithCompletion___block_invoke_2;
    v7[3] = &unk_279C3D548;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_group_notify(v3, v4, v7);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)getPlaybackStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SOMediaNowPlayingObserver_getPlaybackStateWithCompletion___block_invoke;
    v6[3] = &unk_279C3D0D0;
    v7 = completionCopy;
    [(SOMediaNowPlayingObserver *)self getPlaybackStateAndLastPlayingDateWithCompletion:v6];
  }
}

- (int64_t)playbackState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SOMediaNowPlayingObserver_playbackState__block_invoke;
  v5[3] = &unk_279C3D0A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  [(SOMediaNowPlayingObserver *)self _stopObservingNowPlayingAppPlaybackState];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    instanceContext = self->_instanceContext;
    *buf = 136315650;
    v7 = "[SOMediaNowPlayingObserver dealloc]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = instanceContext;
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
  }

  v5.receiver = self;
  v5.super_class = SOMediaNowPlayingObserver;
  [(SOMediaNowPlayingObserver *)&v5 dealloc];
}

- (SOMediaNowPlayingObserver)initWithQueue:(id)queue
{
  v4 = MEMORY[0x277CEF2C8];
  queueCopy = queue;
  currentContext = [v4 currentContext];
  v7 = [(SOMediaNowPlayingObserver *)self initWithQueue:queueCopy instanceContext:currentContext];

  return v7;
}

- (SOMediaNowPlayingObserver)initWithQueue:(id)queue instanceContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = SOMediaNowPlayingObserver;
  v10 = [(SOMediaNowPlayingObserver *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    v11->_playbackStateGroupDepth = 0;
    if (contextCopy)
    {
      defaultContext = contextCopy;
    }

    else
    {
      defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
    }

    instanceContext = v11->_instanceContext;
    v11->_instanceContext = defaultContext;

    v14 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    listeners = v11->_listeners;
    v11->_listeners = v14;

    v16 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v17 = v11->_instanceContext;
      *buf = 136315650;
      v25 = "[SOMediaNowPlayingObserver initWithQueue:instanceContext:]";
      v26 = 2048;
      v27 = v11;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_26858F000, v16, OS_LOG_TYPE_INFO, "%s %p %@", buf, 0x20u);
    }

    [(SOMediaNowPlayingObserver *)v11 _beginGroup];
    queue = v11->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__SOMediaNowPlayingObserver_initWithQueue_instanceContext___block_invoke;
    v20[3] = &unk_279C3D080;
    v21 = v11;
    v22 = a2;
    dispatch_async(queue, v20);
  }

  return v11;
}

void __59__SOMediaNowPlayingObserver_initWithQueue_instanceContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startObservingNowPlayingAppPlaybackState];
  [*(a1 + 32) _updateProxyGroupPlayerState];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SOMediaNowPlayingObserver_initWithQueue_instanceContext___block_invoke_2;
  v4[3] = &unk_279C3D058;
  v5 = *(a1 + 32);
  [v2 _fetchNowPlayingAppPlaybackStateForReason:v3 completion:v4];
}

uint64_t __59__SOMediaNowPlayingObserver_initWithQueue_instanceContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = AFMediaPlaybackStateGetName();
    v8 = 136315650;
    v9 = "[SOMediaNowPlayingObserver initWithQueue:instanceContext:]_block_invoke_2";
    v10 = 2048;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s %p Initial playback state is %@.", &v8, 0x20u);
  }

  return [*(a1 + 32) _endGroup];
}

void __44__SOMediaNowPlayingObserver_defaultObserver__block_invoke()
{
  v0 = [SOMediaNowPlayingObserver alloc];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v5 = dispatch_queue_create("SOMediaNowPlayingObserver.defaultObserver", v2);
  v3 = [(SOMediaNowPlayingObserver *)v0 initWithQueue:v5];
  v4 = defaultObserver_defaultObserver;
  defaultObserver_defaultObserver = v3;
}

@end