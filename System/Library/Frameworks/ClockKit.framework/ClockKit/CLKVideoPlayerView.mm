@interface CLKVideoPlayerView
- (BOOL)_readyToPerformRequest;
- (BOOL)isPlaybackReady;
- (CLKVideoPlayerView)initWithFrame:(CGRect)frame;
- (CLKVideoPlayerViewDelegate)delegate;
- (id)_createPlayerItemForVideoURL:(id)l;
- (void)_handleDidPlayToEndTime:(id)time;
- (void)_hidePausedView;
- (void)_loadVideo:(id)video;
- (void)_observePlayerItem:(id)item;
- (void)_pause;
- (void)_performNextRequest;
- (void)_periodicTimeObserverChanged:(id *)changed;
- (void)_play;
- (void)_preroll;
- (void)_queueVideo:(id)video;
- (void)_seekToTime:(id *)time;
- (void)_showPausedView;
- (void)_stopObservingPlayerItem;
- (void)dealloc;
- (void)layoutSubviews;
- (void)loadVideo:(id)video;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)prepareNextQueuedVideo;
- (void)preroll;
- (void)queueVideo:(id)video;
- (void)resetRequestState;
- (void)seekToTime:(id *)time;
- (void)seekToTime:(id *)time tolerance:(id *)tolerance;
- (void)setGravityResize:(int64_t)resize;
- (void)setPausedViewEnabled:(BOOL)enabled;
@end

@implementation CLKVideoPlayerView

- (CLKVideoPlayerView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = CLKVideoPlayerView;
  v3 = [(CLKVideoPlayerView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (!v3)
  {
    return v3;
  }

  sharedInstance = [getAVAudioSessionClass() sharedInstance];
  [sharedInstance setRequiresNoAudioResources:1 error:0];

  sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
  v6 = getAVAudioSessionCategoryAmbient();
  [sharedInstance2 setCategory:v6 withOptions:1 error:0];

  v3[545] = 1;
  *(v3 + 70) = 1;
  v7 = [_CLKPlayerView alloc];
  v8 = [(_CLKPlayerView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = *(v3 + 51);
  *(v3 + 51) = v8;

  [v3 addSubview:*(v3 + 51)];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v10 = getAVQueuePlayerClass_softClass;
  v38 = getAVQueuePlayerClass_softClass;
  if (!getAVQueuePlayerClass_softClass)
  {
    *&v31 = MEMORY[0x277D85DD0];
    *(&v31 + 1) = 3221225472;
    v32 = __getAVQueuePlayerClass_block_invoke;
    v33 = &unk_278A1E6A0;
    v34 = &v35;
    __getAVQueuePlayerClass_block_invoke(&v31);
    v10 = v36[3];
  }

  v11 = v10;
  _Block_object_dispose(&v35, 8);
  v12 = objc_alloc_init(v10);
  v13 = *(v3 + 52);
  *(v3 + 52) = v12;

  [*(v3 + 52) _setCALayerDestinationIsTVOut:1];
  layer = [*(v3 + 51) layer];
  [layer setPlayer:*(v3 + 52)];

  [v3 setGravityResize:*(v3 + 70)];
  layer2 = [*(v3 + 51) layer];
  [layer2 addObserver:v3 forKeyPath:@"readyForDisplay" options:0 context:&kCLKVideoPlayerLayerKVOContext];

  objc_initWeak(&location, v3);
  _CMTimeMakeWithSeconds(0xFFFFFFFFLL, 0.0);
  v16 = v31;
  *(v3 + 61) = v32;
  *(v3 + 472) = v16;
  v17 = *(v3 + 52);
  _CMTimeMakeWithSeconds(60, 10.0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __36__CLKVideoPlayerView_initWithFrame___block_invoke;
  v27[3] = &unk_278A1FCE0;
  objc_copyWeak(&v28, &location);
  v18 = [v17 addPeriodicTimeObserverForInterval:&v31 queue:0 usingBlock:v27];
  v19 = *(v3 + 58);
  *(v3 + 58) = v18;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v21 = getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr;
  v38 = getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr;
  if (!getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr)
  {
    *&v31 = MEMORY[0x277D85DD0];
    *(&v31 + 1) = 3221225472;
    v32 = __getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_block_invoke;
    v33 = &unk_278A1E6A0;
    v34 = &v35;
    v22 = AVFoundationLibrary();
    v23 = dlsym(v22, "AVPlayerItemDidPlayToEndTimeNotification");
    *(v34[1] + 24) = v23;
    getAVPlayerItemDidPlayToEndTimeNotificationSymbolLoc_ptr = *(v34[1] + 24);
    v21 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (v21)
  {
    v24 = *v21;
    [defaultCenter addObserver:v3 selector:sel__handleDidPlayToEndTime_ name:v24 object:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    return v3;
  }

  v26 = dlerror();
  result = abort_report_np("%s", v26);
  __break(1u);
  return result;
}

void __36__CLKVideoPlayerView_initWithFrame___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _periodicTimeObserverChanged:&v4];
}

- (void)dealloc
{
  [(AVQueuePlayer *)self->_player removeTimeObserver:self->_periodicTimeObserver];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CLKVideoPlayerView *)self _stopObservingPlayerItem];
  layer = [(_CLKPlayerView *)self->_playerView layer];
  [layer removeObserver:self forKeyPath:@"readyForDisplay" context:&kCLKVideoPlayerLayerKVOContext];

  v5.receiver = self;
  v5.super_class = CLKVideoPlayerView;
  [(CLKVideoPlayerView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CLKVideoPlayerView;
  [(CLKVideoPlayerView *)&v3 layoutSubviews];
  [(CLKVideoPlayerView *)self bounds];
  [(_CLKPlayerView *)self->_playerView setFrame:?];
  if (self->_pausedViewEnabled)
  {
    [(CLKVideoPlayerView *)self bounds];
    [(UIView *)self->_pausedView setFrame:?];
  }
}

- (void)setGravityResize:(int64_t)resize
{
  self->_gravityResize = resize;
  if (resize == 1)
  {
    goto LABEL_7;
  }

  if (resize)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getAVLayerVideoGravityResizeAspectSymbolLoc_ptr;
  v14 = getAVLayerVideoGravityResizeAspectSymbolLoc_ptr;
  if (!getAVLayerVideoGravityResizeAspectSymbolLoc_ptr)
  {
    v5 = AVFoundationLibrary();
    v12[3] = dlsym(v5, "AVLayerVideoGravityResizeAspect");
    getAVLayerVideoGravityResizeAspectSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
LABEL_7:
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v4 = getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr;
    v14 = getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr;
    if (!getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr)
    {
      v6 = AVFoundationLibrary();
      v12[3] = dlsym(v6, "AVLayerVideoGravityResizeAspectFill");
      getAVLayerVideoGravityResizeAspectFillSymbolLoc_ptr = v12[3];
      v4 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v4)
    {
      [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
      v10 = v9;
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(v10);
    }
  }

  v7 = *v4;
LABEL_12:
  layer = [(_CLKPlayerView *)self->_playerView layer];
  [layer setVideoGravity:v7];
}

- (void)_observePlayerItem:(id)item
{
  objc_storeStrong(&self->_observedItem, item);
  itemCopy = item;
  [(AVPlayerItem *)self->_observedItem addObserver:self forKeyPath:@"status" options:0 context:&kCLKVideoPlayerViewKVOContext];
}

- (void)_stopObservingPlayerItem
{
  [(AVPlayerItem *)self->_observedItem removeObserver:self forKeyPath:@"status" context:&kCLKVideoPlayerViewKVOContext];
  observedItem = self->_observedItem;
  self->_observedItem = 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &kCLKVideoPlayerViewKVOContext)
  {
    if (self->_observedItem == objectCopy)
    {
      if ([pathCopy isEqualToString:@"status"])
      {
        if ([(AVPlayerItem *)self->_playerItem status]== AVPlayerItemStatusReadyToPlay)
        {
          [(CLKVideoPlayerView *)self _stopObservingPlayerItem];
          [(CLKVideoPlayerView *)self _performNextRequest];
          delegate = [(CLKVideoPlayerView *)self delegate];
          v14 = objc_opt_respondsToSelector();

          if (v14)
          {
            delegate2 = [(CLKVideoPlayerView *)self delegate];
            [delegate2 videoPlayerViewWillBeginPlaying:self];
          }
        }
      }
    }
  }

  else if (context == &kCLKVideoPlayerLayerKVOContext)
  {
    if ([pathCopy isEqualToString:@"readyForDisplay"])
    {
      layer = [(_CLKPlayerView *)self->_playerView layer];
      isReadyForDisplay = [layer isReadyForDisplay];

      if (isReadyForDisplay)
      {
        [(CLKVideoPlayerView *)self _performNextRequest];
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CLKVideoPlayerView;
    [(CLKVideoPlayerView *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_handleDidPlayToEndTime:(id)time
{
  timeCopy = time;
  if ([(AVQueuePlayer *)self->_player actionAtItemEnd]== 1)
  {
    object = [timeCopy object];
    playerItem = self->_playerItem;

    if (object == playerItem)
    {
      [(CLKVideoPlayerView *)self _pause];
      v11 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v12 = __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke;
LABEL_10:
      v11[2] = v12;
      v11[3] = &unk_278A1F1B8;
      v11[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v11);
      goto LABEL_11;
    }
  }

  if (![(AVQueuePlayer *)self->_player actionAtItemEnd])
  {
    object2 = [timeCopy object];
    v8 = self->_playerItem;

    if (object2 == v8)
    {
      queuedItem = self->_queuedItem;
      if (queuedItem)
      {
        objc_storeStrong(&self->_playerItem, queuedItem);
        v10 = self->_queuedItem;
        self->_queuedItem = 0;

        if ([(AVPlayerItem *)self->_playerItem status]!= AVPlayerItemStatusReadyToPlay)
        {
          [(CLKVideoPlayerView *)self _observePlayerItem:self->_playerItem];
        }

        v11 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v12 = __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_2;
      }

      else
      {
        v13 = CLKLoggingObjectForDomain(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CLKVideoPlayerView _handleDidPlayToEndTime:v13];
        }

        v11 = v14;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v12 = __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_18;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

void __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoPlayerViewDidPauseAfterPlayingVideoToEnd:*(a1 + 32)];
}

void __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoPlayerViewDidBeginPlayingQueuedVideo:*(a1 + 32)];
}

void __46__CLKVideoPlayerView__handleDidPlayToEndTime___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoPlayerViewDidPauseAfterPlayingVideoToEnd:*(a1 + 32)];
}

- (void)_periodicTimeObserverChanged:(id *)changed
{
  p_willBeginPlayingTime = &self->_willBeginPlayingTime;
  if (self->_willBeginPlayingTime.timescale >= 1)
  {
    v9 = *&changed->var0;
    var3 = changed->var3;
    v7 = *&p_willBeginPlayingTime->value;
    epoch = self->_willBeginPlayingTime.epoch;
    if (_CMTimeCompare(&v9, &v7, changed, v3))
    {
      if (self->_pausedViewEnabled)
      {
        [(CLKVideoPlayerView *)self _hidePausedView];
      }

      getkCMTimePositiveInfinity(&v9);
      *&p_willBeginPlayingTime->value = v9;
      p_willBeginPlayingTime->epoch = var3;
      kdebug_trace();
      delegate = [(CLKVideoPlayerView *)self delegate];
      [delegate videoPlayerViewDidBeginPlaying:self];
    }
  }
}

- (BOOL)_readyToPerformRequest
{
  if ([(AVPlayerItem *)self->_playerItem status]!= AVPlayerItemStatusReadyToPlay)
  {
    return 0;
  }

  layer = [(_CLKPlayerView *)self->_playerView layer];
  if ([layer isReadyForDisplay])
  {
    v4 = self->_servicingRequest == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_performNextRequest
{
  if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
  {
    seekRequested = self->_seekRequested;
    if (seekRequested)
    {
      objc_msgSend_CMTimeValue(seekRequested);
      [(CLKVideoPlayerView *)self _seekToTime:v5];
    }

    else if ((*(self + 544) & 2) != 0)
    {

      [(CLKVideoPlayerView *)self _preroll];
    }

    else if (*(self + 544))
    {

      [(CLKVideoPlayerView *)self _play];
    }
  }

  else
  {
    playerItem = self->_playerItem;

    [(AVPlayerItem *)playerItem status];
  }
}

- (void)_showPausedView
{
  if (!self->_pausedView)
  {
    v3 = [(_CLKPlayerView *)self->_playerView snapshotViewAfterScreenUpdates:0];
    pausedView = self->_pausedView;
    self->_pausedView = v3;

    v5 = self->_pausedView;

    [(CLKVideoPlayerView *)self addSubview:v5];
  }
}

- (void)_hidePausedView
{
  [(UIView *)self->_pausedView removeFromSuperview];
  pausedView = self->_pausedView;
  self->_pausedView = 0;
}

- (void)setPausedViewEnabled:(BOOL)enabled
{
  self->_pausedViewEnabled = enabled;
  if (!enabled)
  {
    [(CLKVideoPlayerView *)self _hidePausedView];
  }
}

- (BOOL)isPlaybackReady
{
  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  if (currentItem == self->_playerItem)
  {
    currentItem2 = [(AVQueuePlayer *)self->_player currentItem];
    v4 = [currentItem2 status] == 1 && -[AVQueuePlayer status](self->_player, "status") == 1 && (*(self + 544) & 4) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetRequestState
{
  self->_servicingRequest = 0;
  *(self + 544) &= ~1u;
  seekRequested = self->_seekRequested;
  self->_seekRequested = 0;

  *(self + 544) &= ~2u;
  *(self + 544) &= ~4u;
}

- (void)loadVideo:(id)video
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [video url];
  v5 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView loadVideo [video url]:%@", &v6, 0xCu);
  }

  [(CLKVideoPlayerView *)self _loadVideo:v4];
}

- (void)queueVideo:(id)video
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [video url];
  v4 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView queueVideo [video url] :%@", &v5, 0xCu);
  }
}

- (void)prepareNextQueuedVideo
{
  queuedItem = self->_queuedItem;
  if (queuedItem)
  {
    objc_storeStrong(&self->_playerItem, queuedItem);
    v4 = self->_queuedItem;
    self->_queuedItem = 0;

    if ([(AVPlayerItem *)self->_playerItem status]!= AVPlayerItemStatusReadyToPlay)
    {
      playerItem = self->_playerItem;

      [(CLKVideoPlayerView *)self _observePlayerItem:playerItem];
    }
  }
}

- (void)pause
{
  if (self->_playing)
  {
    [(CLKVideoPlayerView *)self _pause];
  }
}

- (void)play
{
  if (!self->_playing)
  {
    kdebug_trace();
    self->_playing = 1;
    if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
    {

      [(CLKVideoPlayerView *)self _play];
    }

    else
    {
      *(self + 544) |= 1u;
    }
  }
}

- (void)seekToTime:(id *)time
{
  getkCMTimePositiveInfinity(&v6);
  v5 = *time;
  [(CLKVideoPlayerView *)self seekToTime:&v5 tolerance:&v6];
}

- (void)seekToTime:(id *)time tolerance:(id *)tolerance
{
  kdebug_trace();
  var3 = tolerance->var3;
  *&self->_seekWithTolerance.value = *&tolerance->var0;
  self->_seekWithTolerance.epoch = var3;
  if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
  {
    v10 = *&time->var0;
    v11 = time->var3;
    [(CLKVideoPlayerView *)self _seekToTime:&v10];
  }

  else
  {
    v10 = *&time->var0;
    v11 = time->var3;
    v8 = [MEMORY[0x277CCAE60] valueWithCMTime:&v10];
    seekRequested = self->_seekRequested;
    self->_seekRequested = v8;
  }
}

- (void)preroll
{
  *(self + 544) &= ~4u;
  kdebug_trace();
  if ([(CLKVideoPlayerView *)self _readyToPerformRequest])
  {

    [(CLKVideoPlayerView *)self _preroll];
  }

  else
  {
    *(self + 544) |= 2u;
  }
}

- (id)_createPlayerItemForVideoURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_assetURL isEqual:lCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_assetURL, l);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = getAVURLAssetClass_softClass;
    v22 = getAVURLAssetClass_softClass;
    if (!getAVURLAssetClass_softClass)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __getAVURLAssetClass_block_invoke;
      v17 = &unk_278A1E6A0;
      v18 = &v19;
      __getAVURLAssetClass_block_invoke(&v14);
      v6 = v20[3];
    }

    v7 = v6;
    _Block_object_dispose(&v19, 8);
    v8 = [v6 URLAssetWithURL:lCopy options:0];
    asset = self->_asset;
    self->_asset = v8;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v10 = getAVPlayerItemClass_softClass;
  v22 = getAVPlayerItemClass_softClass;
  if (!getAVPlayerItemClass_softClass)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getAVPlayerItemClass_block_invoke;
    v17 = &unk_278A1E6A0;
    v18 = &v19;
    __getAVPlayerItemClass_block_invoke(&v14);
    v10 = v20[3];
  }

  v11 = v10;
  _Block_object_dispose(&v19, 8);
  v12 = [v10 playerItemWithAsset:self->_asset];

  return v12;
}

- (void)_preroll
{
  sharedInstance = [getAVAudioSessionClass() sharedInstance];
  [sharedInstance setRequiresNoAudioResources:1 error:0];

  sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
  v5 = getAVAudioSessionCategoryAmbient();
  [sharedInstance2 setCategory:v5 withOptions:1 error:0];

  self->_servicingRequest = 2;
  kdebug_trace();
  player = self->_player;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__CLKVideoPlayerView__preroll__block_invoke;
  v7[3] = &unk_278A1FD10;
  v7[4] = self;
  [(AVQueuePlayer *)player prerollAtRate:v7 completionHandler:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0))];
}

uint64_t __30__CLKVideoPlayerView__preroll__block_invoke(uint64_t a1, uint64_t a2)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 552));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 552));
    [v6 videoPlayerView:*(a1 + 32) didFinishPrerolling:a2];
  }

  *(*(a1 + 32) + 504) = 0;
  *(*(a1 + 32) + 544) &= ~2u;
  v7 = *(a1 + 32);

  return [v7 _performNextRequest];
}

- (void)_play
{
  sharedInstance = [getAVAudioSessionClass() sharedInstance];
  [sharedInstance setRequiresNoAudioResources:1 error:0];

  sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
  v5 = getAVAudioSessionCategoryAmbient();
  [sharedInstance2 setCategory:v5 withOptions:1 error:0];

  kdebug_trace();
  player = self->_player;
  if (player)
  {
    objc_msgSend_currentTime(player);
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  *&self->_willBeginPlayingTime.value = v7;
  self->_willBeginPlayingTime.epoch = v8;
  [(AVQueuePlayer *)self->_player play];
  *(self + 544) &= ~1u;
  [(CLKVideoPlayerView *)self _performNextRequest];
}

- (void)_pause
{
  self->_playing = 0;
  *(self + 544) &= ~1u;
  p_willBeginPlayingTime = &self->_willBeginPlayingTime;
  _CMTimeMakeWithSeconds(0xFFFFFFFFLL, 0.0);
  *p_willBeginPlayingTime = v4;
  [(AVQueuePlayer *)self->_player pause];
  if (self->_pausedViewEnabled)
  {
    [(CLKVideoPlayerView *)self _showPausedView];
  }
}

- (void)_seekToTime:(id *)time
{
  sharedInstance = [getAVAudioSessionClass() sharedInstance];
  [sharedInstance setRequiresNoAudioResources:1 error:0];

  sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
  v7 = getAVAudioSessionCategoryAmbient();
  [sharedInstance2 setCategory:v7 withOptions:1 error:0];

  self->_servicingRequest = 1;
  kdebug_trace();
  player = self->_player;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__CLKVideoPlayerView__seekToTime___block_invoke;
  v12[3] = &unk_278A1FD38;
  v12[4] = self;
  v13 = *time;
  v11 = *time;
  seekWithTolerance = self->_seekWithTolerance;
  v9 = self->_seekWithTolerance;
  [(AVQueuePlayer *)player seekToTime:&v11 toleranceBefore:&seekWithTolerance toleranceAfter:&v9 completionHandler:v12];
}

uint64_t __34__CLKVideoPlayerView__seekToTime___block_invoke(uint64_t a1)
{
  kdebug_trace();
  *(*(a1 + 32) + 504) = 0;
  v4 = *(*(a1 + 32) + 512);
  if (v4)
  {
    objc_msgSend_CMTimeValue(v4);
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  if (!_CMTimeCompare(&v8, &v10, v2, v3))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 512);
    *(v5 + 512) = 0;
  }

  return [*(a1 + 32) _performNextRequest];
}

- (void)_loadVideo:(id)video
{
  videoCopy = video;
  [(CLKVideoPlayerView *)self resetRequestState];
  [(CLKVideoPlayerView *)self _stopObservingPlayerItem];
  [(CLKVideoPlayerView *)self _pause];
  [(AVQueuePlayer *)self->_player removeAllItems];
  playerItem = self->_playerItem;
  self->_playerItem = 0;

  queuedItem = self->_queuedItem;
  self->_queuedItem = 0;

  if (videoCopy)
  {
    sharedInstance = [getAVAudioSessionClass() sharedInstance];
    [sharedInstance setRequiresNoAudioResources:1 error:0];

    sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
    v9 = getAVAudioSessionCategoryAmbient();
    [sharedInstance2 setCategory:v9 withOptions:1 error:0];

    v10 = [(CLKVideoPlayerView *)self _createPlayerItemForVideoURL:videoCopy];
    v11 = self->_playerItem;
    self->_playerItem = v10;

    v12 = self->_playerItem;
    v13 = CLKLoggingObjectForDomain(0);
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_23702D000, v14, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView loadVideo [success]", v21, 2u);
      }

      [(CLKVideoPlayerView *)self _observePlayerItem:self->_playerItem];
      [(AVQueuePlayer *)self->_player insertItem:self->_playerItem afterItem:0];
      [(AVQueuePlayer *)self->_player setActionAtItemEnd:1];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CLKVideoPlayerView *)videoCopy _loadVideo:v14, v15, v16, v17, v18, v19, v20];
      }
    }
  }
}

- (void)_queueVideo:(id)video
{
  videoCopy = video;
  if (videoCopy)
  {
    if (self->_playerItem)
    {
      if (self->_queuedItem)
      {
        v5 = CLKLoggingObjectForDomain(0);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(CLKVideoPlayerView *)videoCopy _queueVideo:v5, v6, v7, v8, v9, v10, v11];
        }
      }

      else
      {
        sharedInstance = [getAVAudioSessionClass() sharedInstance];
        [sharedInstance setRequiresNoAudioResources:1 error:0];

        sharedInstance2 = [getAVAudioSessionClass() sharedInstance];
        v14 = getAVAudioSessionCategoryAmbient();
        [sharedInstance2 setCategory:v14 withOptions:1 error:0];

        kdebug_trace();
        v15 = [(CLKVideoPlayerView *)self _createPlayerItemForVideoURL:videoCopy];
        queuedItem = self->_queuedItem;
        self->_queuedItem = v15;

        v17 = self->_queuedItem;
        v18 = CLKLoggingObjectForDomain(0);
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&dword_23702D000, v19, OS_LOG_TYPE_DEFAULT, "CLKVideoPlayerView _createPlayerItemForVideoURL [success]", v26, 2u);
          }

          [(AVQueuePlayer *)self->_player insertItem:self->_queuedItem afterItem:0];
          [(AVQueuePlayer *)self->_player setActionAtItemEnd:0];
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [(CLKVideoPlayerView *)videoCopy _loadVideo:v19, v20, v21, v22, v23, v24, v25];
          }
        }

        kdebug_trace();
      }
    }

    else
    {
      [(CLKVideoPlayerView *)self _loadVideo:videoCopy];
    }
  }
}

- (CLKVideoPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadVideo:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_23702D000, a2, a3, "Failed to load video from %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_queueVideo:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_23702D000, a2, a3, "Too many queued videos attempts from %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end