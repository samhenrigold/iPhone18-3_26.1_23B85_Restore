@interface IMAVPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_contextDependentTolerance;
- (BOOL)isVideo;
- (IMAVPlayer)init;
- (IMAVPlayerDelegate)delegate;
- (NSURL)assetURL;
- (double)currentTime;
- (double)duration;
- (double)loadedDuration;
- (id)_stringFromState:(int)state;
- (id)description;
- (id)stillFrameAt:(double)at maxSize:(CGSize)size scale:(double)scale;
- (void)_playWithRate:(float)rate fadeInTime:(double)time;
- (void)_updateAllowsExternalPlayback;
- (void)_updateAudioParameters;
- (void)addPeriodicTimeObserver;
- (void)addTimeObserver:(double)observer;
- (void)clearEndTimeObserver;
- (void)clearExternalDisplay;
- (void)clearTimeObservers;
- (void)createExternalDisplayOnScreen:(id)screen;
- (void)dealloc;
- (void)endSeek;
- (void)fadeOut:(double)out;
- (void)forceTriggerTimeObserverAt:(double)at;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onInterruption:(id)interruption;
- (void)onRouteChange:(id)change;
- (void)onScreenConnection:(id)connection;
- (void)onScreenDisconnection:(id)disconnection;
- (void)onSeekTimer:(id)timer;
- (void)pause;
- (void)play;
- (void)playFrom:(double)from;
- (void)playbackWasPaused:(id)paused;
- (void)playerItemDidReachEnd:(id)end;
- (void)removeAllTimeObservers;
- (void)removePeriodicTimeObserver;
- (void)removeTimeObserver:(double)observer;
- (void)seekFinished:(double)finished;
- (void)sendItemEndedNotification;
- (void)sendItemStoppedNotification;
- (void)setAsset:(id)asset;
- (void)setAssetURL:(id)l;
- (void)setAssetURL:(id)l withStartTime:(double)time;
- (void)setCurrentTime:(double)time;
- (void)setDelegate:(id)delegate;
- (void)setEndTime:(double)time;
- (void)setLoadState:(int)state;
- (void)setPlaybackRate:(float)rate;
- (void)setPlayer:(id)player;
- (void)setScale:(int)scale;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setState:(int)state;
- (void)setUseFullExternalScreen:(BOOL)screen;
- (void)setVolume:(float)volume;
- (void)setupEndTimeObserver;
- (void)setupTimeObserver:(id)observer;
- (void)singleSkip:(BOOL)skip;
- (void)startSeek:(BOOL)seek;
- (void)stop;
- (void)togglePlayPause;
- (void)triggerTimeObserverAt:(id)at;
- (void)updateNowPlayingInfo;
- (void)updatePlayer;
- (void)updateScale;
- (void)updateSeekTime:(double)time;
- (void)updateTimeObservers;
- (void)updateVideoLayer;
@end

@implementation IMAVPlayer

- (IMAVPlayer)init
{
  v15.receiver = self;
  v15.super_class = IMAVPlayer;
  v2 = [(IMAVPlayer *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_volume = 1065353216;
    v2->_playbackPending = 0;
    v2->_wasPlaying = 0;
    *&v2->_state = 0x3F80000000000000;
    v2->_scale = 0;
    v4 = [[IMVideoView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    videoView = v3->_videoView;
    v3->_videoView = v4;

    v6 = +[UIColor blackColor];
    [(IMVideoView *)v3->_videoView setBackgroundColor:v6];

    [(IMVideoView *)v3->_videoView setPlayer:v3];
    *&v3->_seekStep = xmmword_2A3F50;
    *&v3->_usesExternalPlaybackWhileExternalScreenIsActive = 257;
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = kBKPlayerPlaybackWasInterruptedNotification[0];
    v9 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"playbackWasPaused:" name:v8 object:v9];

    v10 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"onInterruption:" name:AVAudioSessionInterruptionNotification object:v10];

    v11 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"onRouteChange:" name:AVAudioSessionRouteChangeNotification object:v11];

    v12 = +[AVAudioSession sharedInstance];
    [v7 addObserver:v3 selector:"resetPlayer:" name:AVAudioSessionMediaServicesWereResetNotification object:v12];

    [v7 addObserver:v3 selector:"playerItemDidReachEnd:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
    [v7 addObserver:v3 selector:"onScreenConnection:" name:UIScreenDidConnectNotification object:0];
    [v7 addObserver:v3 selector:"onScreenDisconnection:" name:UIScreenDidDisconnectNotification object:0];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 addObserver:v3 forKeyPath:IMAVPlayerDefaults_ClosedCaptioning options:1 context:off_33EA30];
  }

  return v3;
}

- (void)dealloc
{
  [(IMAVPlayer *)self stop];
  [(IMAVPlayer *)self setPlayer:0];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kBKPlayerPlaybackWasInterruptedNotification[0];
  v5 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:AVAudioSessionInterruptionNotification object:v6];

  v7 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:AVAudioSessionRouteChangeNotification object:v7];

  v8 = +[AVAudioSession sharedInstance];
  [v3 removeObserver:self name:AVAudioSessionMediaServicesWereResetNotification object:v8];

  [v3 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:0];
  [v3 removeObserver:self name:UIScreenDidConnectNotification object:0];
  [v3 removeObserver:self name:UIScreenDidDisconnectNotification object:0];
  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 removeObserver:self forKeyPath:IMAVPlayerDefaults_ClosedCaptioning context:off_33EA30];

  [(IMAVPlayer *)self clearEndTimeObserver];
  [(IMAVPlayer *)self removeAllTimeObservers];
  [(IMAVPlayer *)self removePeriodicTimeObserver];
  [(IMAVPlayer *)self setAsset:0];
  [(IMVideoView *)self->_videoView setPlayer:0];
  [(IMAVPlayer *)self clearExternalDisplay];
  [(NSTimer *)self->_hdcpTimer invalidate];
  hdcpTimer = self->_hdcpTimer;
  self->_hdcpTimer = 0;

  [(NSTimer *)self->_seekTimer invalidate];
  seekTimer = self->_seekTimer;
  self->_seekTimer = 0;

  v12.receiver = self;
  v12.super_class = IMAVPlayer;
  [(IMAVPlayer *)&v12 dealloc];
}

- (id)_stringFromState:(int)state
{
  if (qword_342880 != -1)
  {
    sub_1E97E8();
  }

  v4 = qword_342878;
  if (state >= 4)
  {
    stateCopy = 0;
  }

  else
  {
    stateCopy = state;
  }

  return [v4 objectAtIndexedSubscript:stateCopy];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  objc_msgSend_currentTime(self);
  v6 = v5;
  objc_msgSend_duration(self);
  v8 = v7;
  v9 = [(IMAVPlayer *)self _stringFromState:[(IMAVPlayer *)self state]];
  v10 = [NSString stringWithFormat:@"<%@=%p t=%.1lf/%.1lf state=%@>", v4, self, v6, v8, v9];

  return v10;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  v6 = [(AVAsset *)self->_asset isEqual:assetCopy];
  if ((v6 & 1) == 0)
  {
    v7 = BCAVPlayerLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138477827;
      v11 = assetCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setAssetURL: asset=%{private}@", &v10, 0xCu);
    }

    objc_storeStrong(&self->_asset, asset);
    v9 = BCAVPlayerLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = assetCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "setAsset %@", &v10, 0xCu);
    }

    [(IMAVPlayer *)self updatePlayer];
  }
}

- (void)setAssetURL:(id)l
{
  lCopy = l;
  assetURL = [(IMAVPlayer *)self assetURL];
  v6 = [lCopy isEqual:assetURL];

  if ((v6 & 1) == 0)
  {
    v8 = BCAVPlayerLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138477827;
      v11 = lCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "setAssetURL: assetURL=%{private}@", &v10, 0xCu);
    }

    if (lCopy)
    {
      v9 = [AVURLAsset URLAssetWithURL:lCopy options:0];
      [(IMAVPlayer *)self setAsset:v9];
    }

    else
    {
      [(IMAVPlayer *)self setAsset:0];
    }
  }
}

- (void)setAssetURL:(id)l withStartTime:(double)time
{
  lCopy = l;
  v7 = BCAVPlayerLog(lCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138478083;
    v11 = lCopy;
    v12 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "setAssetURL:withStateTime: assetURL=%{private}@ time=%.1lf", &v10, 0x16u);
  }

  assetURL = [(IMAVPlayer *)self assetURL];
  v9 = [lCopy isEqual:assetURL];

  if ((v9 & 1) == 0)
  {
    self->_preloadingTime = time;
    [(IMAVPlayer *)self setAssetURL:lCopy];
  }
}

- (NSURL)assetURL
{
  currentItem = [(IMAVPlayer *)self currentItem];
  asset = [currentItem asset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [asset URL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_playWithRate:(float)rate fadeInTime:(double)time
{
  v7 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    rateCopy = rate;
    v17 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "_playWithRate:fadeInTime: playbackRate=%.1f duration=%.1lf", buf, 0x16u);
  }

  currentItem = [(AVPlayer *)self->_player currentItem];
  status = [currentItem status];

  if (status == &dword_0 + 1)
  {
    [(IMAVPlayer *)self updateTimeObservers];
    v10 = fabs(time);
    if (v10 >= 0.00999999978)
    {
      player = self->_player;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_D0510;
      v13[3] = &unk_2CCC30;
      v13[4] = self;
      rateCopy2 = rate;
      *&v13[5] = time;
      [(AVPlayer *)player prerollAtRate:v13 completionHandler:COERCE_DOUBLE(LODWORD(rate))];
    }

    else
    {
      *&v10 = self->_playbackRate;
      [(AVPlayer *)self->_player setRate:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  self->_playbackPending = v11;
}

- (void)play
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "play", v5, 2u);
  }

  *&v4 = self->_playbackRate;
  [(IMAVPlayer *)self _playWithRate:v4 fadeInTime:0.0];
}

- (void)playFrom:(double)from
{
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.value) = 134217984;
    *(&buf.value + 4) = from;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "play from %f", &buf, 0xCu);
  }

  currentItem = [(AVPlayer *)self->_player currentItem];
  if ([currentItem status] == &dword_0 + 1)
  {

LABEL_6:
    player = self->_player;
    CMTimeMakeWithSeconds(&buf, from, 1000000000);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_D0784;
    v13[3] = &unk_2C7E08;
    v13[4] = self;
    *&v13[5] = from;
    v11 = *&kCMTimePositiveInfinity.value;
    epoch = kCMTimePositiveInfinity.epoch;
    v9 = v11;
    v10 = epoch;
    [(AVPlayer *)player seekToTime:&buf toleranceBefore:&v11 toleranceAfter:&v9 completionHandler:v13];
    return;
  }

  isExternalPlaybackActive = [(AVPlayer *)self->_player isExternalPlaybackActive];

  if (isExternalPlaybackActive)
  {
    goto LABEL_6;
  }

  self->_playbackPending = 1;
  self->_lastSeekingTime = from;
}

- (void)pause
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "pause", v4, 2u);
  }

  [(AVPlayer *)self->_player setRate:0.0];
  self->_playbackPending = 0;
  self->_wasPlaying = 0;
}

- (void)stop
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13.value) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "stop", &v13, 2u);
  }

  if (self->_player)
  {
    state = [(IMAVPlayer *)self state];
    if (state != 1)
    {
      v5 = BCAVPlayerLog(state);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13.value) = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "stop", &v13, 2u);
      }

      state2 = [(IMAVPlayer *)self state];
      [(IMAVPlayer *)self setState:1];
      [(IMAVPlayer *)self setLoadState:0];
      if (state2 == 3)
      {
        [(IMAVPlayer *)self sendItemStoppedNotification];
      }

      else
      {
        [(AVPlayer *)self->_player setRate:0.0];
        [(IMAVPlayer *)self sendItemStoppedNotification];
        player = self->_player;
        CMTimeMakeWithSeconds(&v13, 0.0, 1);
        [(AVPlayer *)player seekToTime:&v13];
      }

      [(IMAVPlayer *)self setAsset:0];
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *&self->_lastSeekingTime = _Q0;
    self->_seeking = 0;
  }
}

- (void)togglePlayPause
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "togglePlayPause", v4, 2u);
  }

  if ([(IMAVPlayer *)self isPlaying])
  {
    [(IMAVPlayer *)self pause];
  }

  else
  {
    [(IMAVPlayer *)self play];
  }
}

- (void)fadeOut:(double)out
{
  player = self->_player;
  CMTimeMakeWithSeconds(&v4, out, 1000000000);
  [(AVPlayer *)player setRate:&v4 withVolumeRampDuration:0.0];
}

- (void)startSeek:(BOOL)seek
{
  seekCopy = seek;
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = seekCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "startSeek: forward=%d", v9, 8u);
  }

  [(IMAVPlayer *)self endSeek];
  self->_skipStepCount = 0;
  self->_seekForward = seekCopy;
  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"onSeekTimer:" selector:0 userInfo:1 repeats:self->_seekDelay];
  seekTimer = self->_seekTimer;
  self->_seekTimer = v6;

  if (self->_playWhileSeeking)
  {
    LODWORD(v8) = -2.0;
    if (seekCopy)
    {
      *&v8 = 2.0;
    }

    [(AVPlayer *)self->_player setRate:v8];
    [(IMAVPlayer *)self updateNowPlayingInfo];
  }
}

- (void)endSeek
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "endSeek", v5, 2u);
  }

  [(NSTimer *)self->_seekTimer invalidate];
  seekTimer = self->_seekTimer;
  self->_seekTimer = 0;

  if (self->_playWhileSeeking)
  {
    [(IMAVPlayer *)self play];
  }

  [(IMAVPlayer *)self updateNowPlayingInfo];
}

- (void)singleSkip:(BOOL)skip
{
  skipCopy = skip;
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = skipCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "singleSkip: forward=%d", v6, 8u);
  }

  self->_seekForward = skipCopy;
  [(IMAVPlayer *)self endSeek];
  [(IMAVPlayer *)self onSeekTimer:0];
}

- (void)onSeekTimer:(id)timer
{
  ++self->_skipStepCount;
  if (self->_seekForward)
  {
    objc_msgSend_duration(self, a2, timer);
    v5 = v4;
    objc_msgSend_currentTime(self);
    if (v5 >= v6 + self->_seekStep)
    {
      objc_msgSend_currentTime(self);
      v7 = v11 + self->_seekStep;
    }

    else
    {
      objc_msgSend_duration(self);
    }
  }

  else
  {
    objc_msgSend_currentTime(self, a2, timer);
    v9 = v8;
    v7 = 0.0;
    if (v9 >= self->_seekStep)
    {
      objc_msgSend_currentTime(self, 0.0);
      v7 = v10 - self->_seekStep;
    }
  }

  [(IMAVPlayer *)self setCurrentTime:v7];
}

- (void)setPlaybackRate:(float)rate
{
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    rateCopy = rate;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setPlaybackRate: rate=%.1f", &v7, 0xCu);
  }

  self->_playbackRate = rate;
  if ([(IMAVPlayer *)self state]== 2)
  {
    *&v6 = self->_playbackRate;
    [(AVPlayer *)self->_player setRate:v6];
    [(IMAVPlayer *)self updateNowPlayingInfo];
  }
}

- (void)setState:(int)state
{
  if (self->_state != state)
  {
    v3 = *&state;
    self->_state = state;
    v5 = BCAVPlayerLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IMAVPlayer *)self _stringFromState:v3];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setState: state=%{public}@", &v9, 0xCu);
    }

    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerStateChanged:self];
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:IMAVPlayerNotification_StateChanged[0] object:self];

    [(IMAVPlayer *)self updateNowPlayingInfo];
  }
}

- (void)setLoadState:(int)state
{
  if (self->_loadState != state)
  {
    self->_loadState = state;
    v5 = BCAVPlayerLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = state;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setLoadState: loadState=%d", v7, 8u);
    }

    if ((*&self->_delegateFlags & 0x20) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerLoadStateChanged:self];
    }
  }
}

- (void)setVolume:(float)volume
{
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    volumeCopy = volume;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setVolume: volume=%.1f", &v6, 0xCu);
  }

  if (self->_volume != volume)
  {
    self->_volume = volume;
    [(IMAVPlayer *)self updateVolume];
  }
}

- (void)setScale:(int)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(IMAVPlayer *)self updateScale];
  }
}

- (BOOL)isVideo
{
  currentItem = [(IMAVPlayer *)self currentItem];
  asset = [currentItem asset];
  v4 = [asset tracksWithMediaCharacteristic:AVMediaCharacteristicVisual];

  LOBYTE(currentItem) = [v4 count] != 0;
  return currentItem;
}

- (void)setUseFullExternalScreen:(BOOL)screen
{
  self->_useFullExternalScreen = screen;
  window = [(IMVideoView *)self->_videoView window];

  if (window)
  {

    [(IMAVPlayer *)self updateVideoLayer];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_contextDependentTolerance
{
  result = [(IMAVPlayer *)self optimizePerformanceOverAccuracy];
  if (result)
  {
    v5 = &kCMTimePositiveInfinity;
  }

  else
  {
    v5 = &kCMTimeZero;
  }

  *&retstr->var0 = *&v5->value;
  retstr->var3 = v5->epoch;
  return result;
}

- (void)updatePlayer
{
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_lastSeekingTime = _Q0;
  self->_seeking = 0;
  [(IMVideoView *)self->_videoView setVideoLayer:0];
  [(IMAVPlayer *)self clearExternalDisplay];
  asset = [(IMAVPlayer *)self asset];

  if (asset)
  {
    [(IMAVPlayer *)self setState:0];
    asset2 = [(IMAVPlayer *)self asset];
    v10 = [AVPlayerItem playerItemWithAsset:asset2];

    preloadingTime = self->_preloadingTime;
    if (preloadingTime > 0.0)
    {
      v13 = BCAVPlayerLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = self->_preloadingTime;
        *buf = 134217984;
        *&buf[4] = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "preloading asset to time: %f", buf, 0xCu);
      }

      memset(buf, 0, sizeof(buf));
      v29 = 0;
      objc_msgSend__contextDependentTolerance(self);
      CMTimeMakeWithSeconds(&v27, self->_preloadingTime, 1000000000);
      v25 = *buf;
      v26 = v29;
      v23 = *buf;
      v24 = v29;
      [v10 seekToTime:&v27 toleranceBefore:&v25 toleranceAfter:&v23 completionHandler:&stru_2CCC50];
      self->_preloadingTime = 0.0;
    }

    if (self->_player)
    {
      player = [(IMAVPlayer *)self player];
      [player replaceCurrentItemWithPlayerItem:0];

      player2 = [(IMAVPlayer *)self player];
      [player2 replaceCurrentItemWithPlayerItem:v10];

      [(IMAVPlayer *)self forceTriggerTimeObserverAt:preloadingTime];
    }

    else
    {
      v17 = [AVPlayer playerWithPlayerItem:v10];
      [(IMAVPlayer *)self setPlayer:v17];

      player3 = [(IMAVPlayer *)self player];
      [player3 setActionAtItemEnd:1];

      [(IMAVPlayer *)self _updateAllowsExternalPlayback];
      usesExternalPlaybackWhileExternalScreenIsActive = self->_usesExternalPlaybackWhileExternalScreenIsActive;
      player4 = [(IMAVPlayer *)self player];
      [player4 setUsesExternalPlaybackWhileExternalScreenIsActive:usesExternalPlaybackWhileExternalScreenIsActive];
    }

    window = [(IMVideoView *)self->_videoView window];

    if (window)
    {
      [(IMAVPlayer *)self updateVideoLayer];
    }
  }

  else
  {
    player5 = [(IMAVPlayer *)self player];
    [player5 replaceCurrentItemWithPlayerItem:0];
  }
}

- (void)updateVideoLayer
{
  if (!self->_player)
  {
    return;
  }

  v3 = +[UIScreen screens];
  if ([v3 count] == &dword_0 + 1)
  {
    goto LABEL_6;
  }

  asset = [(IMAVPlayer *)self asset];
  if (!asset || [(IMAVPlayer *)self airplayVideoActive])
  {

LABEL_6:
LABEL_7:
    [(IMAVPlayer *)self clearExternalDisplay];
    goto LABEL_8;
  }

  useFullExternalScreen = self->_useFullExternalScreen;

  if (!useFullExternalScreen)
  {
    goto LABEL_7;
  }

  v13 = +[UIScreen screens];
  v14 = [v13 objectAtIndex:1];

  [(IMAVPlayer *)self createExternalDisplayOnScreen:v14];
LABEL_8:
  p_videoView = &self->_videoView;
  [(IMVideoView *)self->_videoView setExternalDisplay:self->_externalDisplay];
  [(IMVideoView *)self->_videoView updateAirplayNoContentView];
  externalDisplay = self->_externalDisplay;
  if (!externalDisplay)
  {
    videoLayer = [*p_videoView videoLayer];

    if (videoLayer)
    {
      externalDisplay = 0;
      goto LABEL_15;
    }

LABEL_14:
    v9 = [AVPlayerLayer playerLayerWithPlayer:self->_player];
    [*p_videoView setVideoLayer:v9];

    goto LABEL_15;
  }

  p_videoView = &self->_externalVideoView;
  videoLayer2 = [(IMExternalVideoView *)self->_externalVideoView videoLayer];

  if (!videoLayer2)
  {
    goto LABEL_14;
  }

  externalDisplay = 1;
LABEL_15:
  videoLayer3 = [(IMVideoView *)self->_videoView videoLayer];
  [videoLayer3 setHidden:externalDisplay];

  v11 = +[NSUserDefaults standardUserDefaults];
  v15 = [v11 objectForKey:IMAVPlayerDefaults_ClosedCaptioning];

  -[AVPlayer setAppliesMediaSelectionCriteriaAutomatically:](self->_player, "setAppliesMediaSelectionCriteriaAutomatically:", [v15 BOOLValue]);
  [(IMAVPlayer *)self updateScale];
}

- (void)clearExternalDisplay
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "clearExternalDisplay", v6, 2u);
  }

  [(IMExternalVideoView *)self->_externalVideoView removeFromSuperview];
  externalVideoView = self->_externalVideoView;
  self->_externalVideoView = 0;

  [(UIWindow *)self->_externalVideoWindow resignKeyWindow];
  externalVideoWindow = self->_externalVideoWindow;
  self->_externalVideoWindow = 0;

  self->_externalDisplay = 0;
}

- (void)createExternalDisplayOnScreen:(id)screen
{
  screenCopy = screen;
  v5 = screenCopy;
  if (*&self->_externalVideoView == 0)
  {
    v6 = BCAVPlayerLog(screenCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "createExternalDisplayOnScreen %@", &v14, 0xCu);
    }

    v7 = [UIWindow alloc];
    [v5 bounds];
    v8 = [v7 initWithFrame:?];
    externalVideoWindow = self->_externalVideoWindow;
    self->_externalVideoWindow = v8;

    [(UIWindow *)self->_externalVideoWindow setScreen:v5];
    v10 = [IMExternalVideoView alloc];
    [v5 bounds];
    v11 = [(IMExternalVideoView *)v10 initWithFrame:?];
    externalVideoView = self->_externalVideoView;
    self->_externalVideoView = v11;

    v13 = +[UIColor blackColor];
    [(IMExternalVideoView *)self->_externalVideoView setBackgroundColor:v13];

    [(UIWindow *)self->_externalVideoWindow addSubview:self->_externalVideoView];
    [(UIWindow *)self->_externalVideoWindow makeKeyAndVisible];
  }

  self->_externalDisplay = 1;
}

- (void)updateScale
{
  scale = [(IMAVPlayer *)self scale];
  if (scale <= 2)
  {
    v4 = **(&off_2CCCE8 + scale);
    videoLayer = [(IMVideoView *)self->_videoView videoLayer];
    [videoLayer setVideoGravity:v4];
    videoLayer2 = [(IMExternalVideoView *)self->_externalVideoView videoLayer];
    [videoLayer2 setVideoGravity:v4];
  }
}

- (void)_updateAllowsExternalPlayback
{
  delegate = [(IMAVPlayer *)self delegate];
  v6 = delegate;
  if ((*&self->_delegateFlags & 0x400) != 0)
  {
    v4 = [delegate playerAllowsExternalPlayback:self];
  }

  else
  {
    v4 = &dword_0 + 1;
  }

  player = [(IMAVPlayer *)self player];
  [player setAllowsExternalPlayback:v4];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  if (player != playerCopy)
  {
    [(AVPlayer *)player removeObserver:self forKeyPath:@"currentItem"];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"rate"];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"airPlayVideoActive"];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"timeControlStatus"];
    [(IMAVPlayer *)self removePeriodicTimeObserver];
    [(IMAVPlayer *)self clearTimeObservers];
    [(IMAVPlayer *)self clearEndTimeObserver];
    objc_storeStrong(&self->_player, player);
    if (self->_player)
    {
      [(IMAVPlayer *)self addPeriodicTimeObserver];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"airPlayVideoActive" options:4 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:6 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"rate" options:0 context:0];
      [(AVPlayer *)self->_player addObserver:self forKeyPath:@"timeControlStatus" options:1 context:0];
    }

    player = [(IMAVPlayer *)self _updateAllowsExternalPlayback];
  }

  _objc_release_x1(player);
}

- (void)_updateAudioParameters
{
  currentItem = [(AVPlayer *)self->_player currentItem];
  asset = [currentItem asset];
  v5 = [asset tracksWithMediaType:AVMediaTypeAudio];

  v6 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [AVMutableAudioMixInputParameters audioMixInputParametersWithTrack:*(*(&v15 + 1) + 8 * v11), v15];
        [v12 setAudioTimePitchAlgorithm:AVAudioTimePitchAlgorithmTimeDomain];
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = +[AVMutableAudioMix audioMix];
  [v13 setInputParameters:v6];
  currentItem2 = [(AVPlayer *)self->_player currentItem];
  [currentItem2 setAudioMix:v13];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_33EA30 == context)
  {
    objc_initWeak(buf, self);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_D27D8;
    v60[3] = &unk_2CCC78;
    v61 = changeCopy;
    objc_copyWeak(&v62, buf);
    v24 = objc_retainBlock(v60);
    v25 = objc_retainBlock(v24);
    if (v25)
    {
      if (+[NSThread isMainThread])
      {
        v25[2](v25);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_D2894;
        block[3] = &unk_2C8398;
        v59 = v25;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v62);
    objc_destroyWeak(buf);
  }

  else if ([pathCopy isEqualToString:@"currentItem"])
  {
    delegate = [(IMAVPlayer *)self delegate];
    v14 = BCAVPlayerLog(delegate);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      currentItem = [(AVPlayer *)self->_player currentItem];
      *buf = 138477827;
      *&v64[0] = currentItem;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "currentItem changed: %{private}@", buf, 0xCu);
    }

    v16 = [changeCopy objectForKey:NSKeyValueChangeOldKey];
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 removeObserver:self forKeyPath:@"status"];
        [v16 removeObserver:self forKeyPath:@"playbackLikelyToKeepUp"];
        [v16 removeObserver:self forKeyPath:@"playbackBufferEmpty"];
      }
    }

    if ((*&self->_delegateFlags & 0x80) != 0)
    {
      [delegate playerCurrentItemChanged:self];
    }

    currentItem2 = [(AVPlayer *)self->_player currentItem];

    if (currentItem2)
    {
      [(IMAVPlayer *)self updateTimeObservers];
      currentItem3 = [(AVPlayer *)self->_player currentItem];
      [currentItem3 addObserver:self forKeyPath:@"status" options:4 context:0];

      currentItem4 = [(AVPlayer *)self->_player currentItem];
      [currentItem4 addObserver:self forKeyPath:@"playbackLikelyToKeepUp" options:4 context:0];

      currentItem5 = [(AVPlayer *)self->_player currentItem];
      [currentItem5 addObserver:self forKeyPath:@"playbackBufferEmpty" options:4 context:0];

      currentItem6 = [(AVPlayer *)self->_player currentItem];
      asset = [currentItem6 asset];
      v23 = [NSArray arrayWithObjects:@"tracks", @"duration", 0];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_D28A4;
      v56[3] = &unk_2C7BE8;
      v56[4] = self;
      v57 = delegate;
      [asset loadValuesAsynchronouslyForKeys:v23 completionHandler:v56];
    }
  }

  else
  {
    v26 = [pathCopy isEqualToString:@"rate"];
    if (v26)
    {
      v27 = BCAVPlayerLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        [(AVPlayer *)self->_player rate];
        *buf = 134217984;
        v64[0] = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "rate changed: %f", buf, 0xCu);
      }

      [(AVPlayer *)self->_player rate];
      if (v29 == 0.0)
      {
        if ([(IMAVPlayer *)self state]!= 1 && [(IMAVPlayer *)self state])
        {
          [(IMAVPlayer *)self setState:3];
        }
      }

      else
      {
        [(IMAVPlayer *)self setState:2];
        [(IMAVPlayer *)self setLoadState:1];
        self->_wasPlaying = 1;
      }
    }

    else if ([pathCopy isEqualToString:@"status"])
    {
      currentItem7 = [(AVPlayer *)self->_player currentItem];

      if (currentItem7)
      {
        delegate2 = [(IMAVPlayer *)self delegate];
        v32 = BCAVPlayerLog(delegate2);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          currentItem8 = [(AVPlayer *)self->_player currentItem];
          *buf = 134217984;
          *&v64[0] = [currentItem8 status];
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "item status changed: %ld", buf, 0xCu);
        }

        currentItem9 = [(AVPlayer *)self->_player currentItem];
        status = [currentItem9 status];

        if (status == &dword_0 + 2)
        {
          currentItem10 = [(AVPlayer *)self->_player currentItem];
          error = [currentItem10 error];

          v54 = BCAVPlayerLog([(IMAVPlayer *)self playbackFailedWithError:error]);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_1E97FC(error, v54);
          }

          [(IMAVPlayer *)self stop];
          [(IMAVPlayer *)self setPlayer:0];
          if ((*&self->_delegateFlags & 2) != 0)
          {
            [delegate2 playerErrorDidOccur:self error:error];
          }
        }

        else if (status == &dword_0 + 1)
        {
          [(IMAVPlayer *)self setLoadState:1];
          lastSeekingTime = self->_lastSeekingTime;
          if (self->_playbackPending)
          {
            if (lastSeekingTime >= 0.0)
            {
              [(IMAVPlayer *)self playFrom:?];
            }

            else
            {
              [(IMAVPlayer *)self play];
            }
          }

          else if (lastSeekingTime != self->_lastSeekedTime)
          {
            [(IMAVPlayer *)self updateSeekTime:?];
          }
        }

        else if (!status)
        {
          [(IMAVPlayer *)self setLoadState:0];
        }
      }
    }

    else
    {
      v36 = [pathCopy isEqualToString:@"airPlayVideoActive"];
      if (v36)
      {
        v37 = BCAVPlayerLog(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v64[0]) = [(IMAVPlayer *)self airplayVideoActive];
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "airPlayVideoActive new value = %d", buf, 8u);
        }

        [(IMAVPlayer *)self willChangeValueForKey:@"airplayVideoActive"];
        [(IMVideoView *)self->_videoView setAirplayActive:[(IMAVPlayer *)self airplayVideoActive]];
        window = [(IMVideoView *)self->_videoView window];

        if (window)
        {
          [(IMAVPlayer *)self updateVideoLayer];
        }

        [(IMAVPlayer *)self didChangeValueForKey:@"airplayVideoActive"];
      }

      else
      {
        v39 = [pathCopy isEqualToString:@"playbackBufferEmpty"];
        if (v39)
        {
          v40 = BCAVPlayerLog(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            currentItem11 = [(AVPlayer *)self->_player currentItem];
            *buf = 67109120;
            LODWORD(v64[0]) = [currentItem11 isPlaybackBufferEmpty];
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "playbackBufferEmpty new value = %d", buf, 8u);
          }

          currentItem12 = [(AVPlayer *)self->_player currentItem];
          isPlaybackBufferEmpty = [currentItem12 isPlaybackBufferEmpty];

          if (isPlaybackBufferEmpty)
          {
            v45 = BCAVPlayerLog(v44);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "playbackBufferEmpty", buf, 2u);
            }

            if (![(IMAVPlayer *)self isPlaying])
            {
              [(IMAVPlayer *)self setLoadState:2];
            }
          }
        }

        else
        {
          v46 = [pathCopy isEqualToString:@"playbackLikelyToKeepUp"];
          if (v46)
          {
            v47 = BCAVPlayerLog(v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              currentItem13 = [(AVPlayer *)self->_player currentItem];
              *buf = 67109120;
              LODWORD(v64[0]) = [currentItem13 isPlaybackLikelyToKeepUp];
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "playbackLikelyToKeepUp new value = %d", buf, 8u);
            }

            currentItem14 = [(AVPlayer *)self->_player currentItem];
            isPlaybackLikelyToKeepUp = [currentItem14 isPlaybackLikelyToKeepUp];

            if (isPlaybackLikelyToKeepUp)
            {
              if ([(IMAVPlayer *)self loadState]== 2 && self->_wasPlaying && ![(IMAVPlayer *)self isPlaying])
              {
                [(IMAVPlayer *)self play];
              }

              [(IMAVPlayer *)self setLoadState:1];
            }
          }

          else if ([pathCopy isEqualToString:@"timeControlStatus"])
          {
            if ([(AVPlayer *)self->_player timeControlStatus]== &dword_0 + 2)
            {
              [(IMAVPlayer *)self updateNowPlayingInfo];
            }
          }

          else
          {
            v55.receiver = self;
            v55.super_class = IMAVPlayer;
            [(IMAVPlayer *)&v55 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
          }
        }
      }
    }
  }
}

- (void)playerItemDidReachEnd:(id)end
{
  endCopy = end;
  v5 = BCAVPlayerLog(endCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 138477827;
    v15 = endCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "playerItemDidReachEnd: notification=%{private}@", &v14, 0xCu);
  }

  currentItem = [(AVPlayer *)self->_player currentItem];
  object = [endCopy object];

  if (currentItem == object)
  {
    if (self->_loops)
    {
      [(IMAVPlayer *)self playFrom:0.0];
      loops = self->_loops;
      v9 = __OFSUB__(loops, 1);
      v10 = loops - 1;
      if (v10 < 0 == v9)
      {
        self->_loops = v10;
      }
    }

    else
    {
      objc_msgSend_currentTime(self);
      v12 = v11;
      objc_msgSend_duration(self);
      if (vabdd_f64(v12, v13) < 2.0)
      {
        [(IMAVPlayer *)self stop];
        [(IMAVPlayer *)self sendItemEndedNotification];
      }
    }
  }
}

- (void)setScrubbing:(BOOL)scrubbing
{
  scrubbingCopy = scrubbing;
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = scrubbingCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setScrubbing: scrubbing=%d", v8, 8u);
  }

  if (self->_scrubbing != scrubbingCopy)
  {
    self->_scrubbing = scrubbingCopy;
    if (scrubbingCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    player = [(IMAVPlayer *)self player];
    [player setActionAtItemEnd:v6];
  }
}

- (void)sendItemStoppedNotification
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "sendItemStoppedNotification", v6, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:IMAVPlayerNotification_PlaybackStopped[0] object:self];

  if ((*&self->_delegateFlags & 0x100) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playerCurrentItemStopped:self];
  }
}

- (void)sendItemEndedNotification
{
  v3 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "sendItemEndedNotification", v8, 2u);
  }

  delegate = [(IMAVPlayer *)self delegate];
  if (delegate && (*&self->_delegateFlags & 0x40) != 0)
  {
    objc_msgSend_duration(self);
    v6 = v5;
    objc_msgSend_duration(self);
    [delegate playerPeriodicUpdate:self elapsed:1 duration:v6 isFinished:v7];
  }

  if ((*&self->_delegateFlags & 0x200) != 0)
  {
    [delegate playerCurrentItemEnded:self];
  }
}

- (void)setCurrentTime:(double)time
{
  v5 = BCAVPlayerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    timeCopy = time;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "setCurrentTime %.1lf", &v8, 0xCu);
  }

  if (time >= 0.0)
  {
    self->_lastSeekingTime = time;
    currentItem = [(AVPlayer *)self->_player currentItem];
    status = [currentItem status];

    if (status == &dword_0 + 1 && !self->_seeking)
    {
      self->_seeking = 1;
      [(IMAVPlayer *)self updateSeekTime:time];
    }
  }
}

- (void)seekFinished:(double)finished
{
  self->_lastSeekedTime = finished;
  if (self->_lastSeekingTime == finished)
  {
    self->_seeking = 0;
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:?];

    [(IMAVPlayer *)self updateNowPlayingInfo];
  }

  else
  {
    v4 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D2F30;
    block[3] = &unk_2C7D40;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)updateSeekTime:(double)time
{
  if (time >= 0.0)
  {
    v5 = BCAVPlayerLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = time;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "updateSeekTime %.1lf", buf, 0xCu);
    }

    memset(buf, 0, sizeof(buf));
    v14 = 0;
    objc_msgSend__contextDependentTolerance(self);
    player = self->_player;
    CMTimeMakeWithSeconds(&v12, time, 1000000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_D309C;
    v11[3] = &unk_2C7E08;
    v11[4] = self;
    *&v11[5] = time;
    v9 = *buf;
    v10 = v14;
    v7 = *buf;
    v8 = v14;
    [(AVPlayer *)player seekToTime:&v12 toleranceBefore:&v9 toleranceAfter:&v7 completionHandler:v11];
  }
}

- (double)currentTime
{
  if (self->_seeking)
  {
    return self->_lastSeekingTime;
  }

  currentItem = [(AVPlayer *)self->_player currentItem];
  status = [currentItem status];

  if (status != &dword_0 + 1)
  {
    return self->_lastSeekingTime;
  }

  currentItem2 = [(AVPlayer *)self->_player currentItem];

  if (!currentItem2)
  {
    return 0.0;
  }

  player = self->_player;
  if (player)
  {
    objc_msgSend_currentTime(player);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return CMTimeGetSeconds(&time);
}

- (double)duration
{
  asset = [(IMAVPlayer *)self asset];
  v4 = [asset statusOfValueForKey:@"duration" error:0];

  if (v4 == &dword_0 + 2)
  {
    asset2 = [(IMAVPlayer *)self asset];
    v6 = asset2;
    if (asset2)
    {
      objc_msgSend_duration(asset2);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [(IMAVPlayer *)self setCachedDuration:CMTimeGetSeconds(&time)];

    [(IMAVPlayer *)self cachedDuration];
  }

  else
  {

    [(IMAVPlayer *)self cachedDuration];
  }

  return result;
}

- (double)loadedDuration
{
  currentItem = [(AVPlayer *)self->_player currentItem];

  if (!currentItem)
  {
    return 0.0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentItem2 = [(AVPlayer *)self->_player currentItem];
  loadedTimeRanges = [currentItem2 loadedTimeRanges];

  v6 = [loadedTimeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(loadedTimeRanges);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v11)
        {
          objc_msgSend_CMTimeRangeValue(v11);
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        CMTimeRangeGetEnd(&time, &v14);
        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > v9)
        {
          v9 = Seconds;
        }
      }

      v7 = [loadedTimeRanges countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (void)setEndTime:(double)time
{
  if (self->_endTime != time)
  {
    if (time == 0.0)
    {
      [(IMAVPlayer *)self clearEndTimeObserver];
    }

    self->_endTime = time;
    self->_timeObserverNeedsUpdate = 1;
  }
}

- (void)clearEndTimeObserver
{
  if (self->_endTimeObserver)
  {
    [(AVPlayer *)self->_player removeTimeObserver:?];
    endTimeObserver = self->_endTimeObserver;
    self->_endTimeObserver = 0;
  }
}

- (void)addTimeObserver:(double)observer
{
  if (observer >= 0.0)
  {
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    if (!self->_observingTimes)
    {
      v9 = objc_alloc_init(NSMutableArray);
      observingTimes = self->_observingTimes;
      self->_observingTimes = v9;
    }

    CMTimeMakeWithSeconds(&v12, observer, 1000000000);
    v11 = [NSValue valueWithCMTime:&v12];
    [(NSMutableArray *)self->_observingTimes addObject:v11];
    self->_timeObserverNeedsUpdate = 1;
  }
}

- (void)removeTimeObserver:(double)observer
{
  observingTimes = self->_observingTimes;
  CMTimeMakeWithSeconds(&v5, observer, 1000000000);
  v4 = [NSValue valueWithCMTime:&v5];
  [(NSMutableArray *)observingTimes removeObject:v4];
}

- (void)removeAllTimeObservers
{
  [(IMAVPlayer *)self clearTimeObservers];
  [(NSMutableArray *)self->_observingTimes removeAllObjects];
  observingTimes = self->_observingTimes;
  self->_observingTimes = 0;
}

- (void)clearTimeObservers
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_timeObservers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AVPlayer *)self->_player removeTimeObserver:*(*(&v9 + 1) + 8 * v7), v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_timeObservers removeAllObjects];
  timeObservers = self->_timeObservers;
  self->_timeObservers = 0;
}

- (void)addPeriodicTimeObserver
{
  periodicTimeObserver = [(IMAVPlayer *)self periodicTimeObserver];

  if (!periodicTimeObserver)
  {
    objc_initWeak(&location, self);
    player = self->_player;
    CMTimeMakeWithSeconds(&v8, 1.0, 1000000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D3858;
    v6[3] = &unk_2CCCA0;
    objc_copyWeak(&v7, &location);
    v5 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v8 queue:0 usingBlock:v6];
    [(IMAVPlayer *)self setPeriodicTimeObserver:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)removePeriodicTimeObserver
{
  periodicTimeObserver = [(IMAVPlayer *)self periodicTimeObserver];

  if (periodicTimeObserver)
  {
    player = self->_player;
    periodicTimeObserver2 = [(IMAVPlayer *)self periodicTimeObserver];
    [(AVPlayer *)player removeTimeObserver:periodicTimeObserver2];

    [(IMAVPlayer *)self setPeriodicTimeObserver:0];
  }
}

- (void)updateTimeObservers
{
  if (self->_timeObserverNeedsUpdate)
  {
    [(IMAVPlayer *)self clearEndTimeObserver];
    [(IMAVPlayer *)self clearTimeObservers];
    [(IMAVPlayer *)self setupEndTimeObserver];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_observingTimes;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(IMAVPlayer *)self setupTimeObserver:*(*(&v8 + 1) + 8 * v7), v8];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    self->_timeObserverNeedsUpdate = 0;
    objc_msgSend_currentTime(self);
    [(IMAVPlayer *)self forceTriggerTimeObserverAt:?];
  }
}

- (void)setupTimeObserver:(id)observer
{
  observerCopy = observer;
  v5 = BCAVPlayerLog(observerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = observerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "add BoundaryTimeObserver timeValue %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  player = self->_player;
  v7 = [NSArray arrayWithObject:observerCopy];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_D3C90;
  v17 = &unk_2C8188;
  objc_copyWeak(&v19, buf);
  v8 = observerCopy;
  v18 = v8;
  v9 = [(AVPlayer *)player addBoundaryTimeObserverForTimes:v7 queue:0 usingBlock:&v14];

  timeObservers = self->_timeObservers;
  if (!timeObservers)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v13 = self->_timeObservers;
    p_timeObservers = &self->_timeObservers;
    *p_timeObservers = v11;

    timeObservers = *p_timeObservers;
  }

  [(NSMutableArray *)timeObservers addObject:v9, v14, v15, v16, v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)setupEndTimeObserver
{
  [(IMAVPlayer *)self endTime];
  if (v3 > 0.0)
  {
    [(IMAVPlayer *)self endTime];
    CMTimeMakeWithSeconds(&v17, v4, 1000000000);
    v5 = [NSValue valueWithCMTime:&v17];
    inited = objc_initWeak(&location, self);
    v7 = BCAVPlayerLog(inited);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(v17.value) = 138412290;
      *(&v17.value + 4) = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "End TimeObserver timeValue %@", &v17, 0xCu);
    }

    player = self->_player;
    v9 = [NSArray arrayWithObject:v5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_D3ECC;
    v13[3] = &unk_2C8188;
    objc_copyWeak(&v15, &location);
    v10 = v5;
    v14 = v10;
    v11 = [(AVPlayer *)player addBoundaryTimeObserverForTimes:v9 queue:0 usingBlock:v13];
    endTimeObserver = self->_endTimeObserver;
    self->_endTimeObserver = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)triggerTimeObserverAt:(id)at
{
  atCopy = at;
  v5 = atCopy;
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    if (atCopy)
    {
      objc_msgSend_CMTimeValue(atCopy);
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
    }

    Seconds = CMTimeGetSeconds(&v10);
    v8 = BCAVPlayerLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(v10.value) = 134217984;
      *(&v10.value + 4) = Seconds;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "triggerTimeObserver %f", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained player:self callbackForTime:Seconds];
  }
}

- (void)forceTriggerTimeObserverAt:(double)at
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_observingTimes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        if (v12)
        {
          objc_msgSend_CMTimeValue(*(*(&v15 + 1) + 8 * v10));
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        Seconds = CMTimeGetSeconds(&time);
        if (Seconds > at)
        {
          v8 = v11;
          goto LABEL_16;
        }

        if (Seconds == at)
        {
          goto LABEL_18;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  if (v8)
  {
    v12 = [(NSMutableArray *)self->_observingTimes objectAtIndex:v8 - 1];
    v5 = v12;
LABEL_18:
    [(IMAVPlayer *)self triggerTimeObserverAt:v12];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  delegate = [(IMAVPlayer *)self delegate];
  if (delegate != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFBF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 128;
    }

    else
    {
      v11 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFF7F | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFEFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFDFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 1024;
    }

    else
    {
      v14 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFBFF | v14;
  }
}

- (void)updateNowPlayingInfo
{
  v3 = +[MPNowPlayingInfoCenter defaultCenter];
  if ([(IMAVPlayer *)self state]== 1)
  {
    [v3 setNowPlayingInfo:0];
  }

  else
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:7];
    metaData = [(IMAVPlayer *)self metaData];
    v6 = metaData;
    if (metaData)
    {
      v7 = [metaData objectForKey:IMAVPlayerMetaData_Title[0]];

      if (v7)
      {
        v8 = [v6 objectForKey:IMAVPlayerMetaData_Title[0]];
        [v4 setObject:v8 forKey:MPMediaItemPropertyTitle];
      }

      v9 = [v6 objectForKey:IMAVPlayerMetaData_Artist[0]];

      if (v9)
      {
        v10 = [v6 objectForKey:IMAVPlayerMetaData_Artist[0]];
        [v4 setObject:v10 forKey:MPMediaItemPropertyArtist];
      }

      v11 = [v6 objectForKey:IMAVPlayerMetaData_Album[0]];

      if (v11)
      {
        v12 = [v6 objectForKey:IMAVPlayerMetaData_Album[0]];
        [v4 setObject:v12 forKey:MPMediaItemPropertyAlbumTitle];
      }

      v13 = +[NSMutableDictionary dictionary];
      v14 = [v6 objectForKeyedSubscript:IMAVPlayerMetaData_PersistentID[0]];

      if (v14)
      {
        v15 = [v6 objectForKeyedSubscript:IMAVPlayerMetaData_PersistentID[0]];
        [v13 setObject:v15 forKeyedSubscript:MPMediaItemPropertyPersistentID];
      }

      v16 = [v6 objectForKey:IMAVPlayerMetaData_StoreIdentifier[0]];

      if (v16)
      {
        v17 = [v6 objectForKeyedSubscript:IMAVPlayerMetaData_StoreIdentifier[0]];
        [v13 setObject:v17 forKeyedSubscript:_MPNowPlayingInfoPropertyiTunesStoreIdentifier];
      }

      v18 = [NSDictionary dictionaryWithDictionary:v13];
      [v4 setObject:v18 forKey:_MPNowPlayingCollectionInfoKeyIdentifiers];

      v19 = [v6 objectForKey:IMAVPlayerMetaData_Artwork[0]];
      if (v19)
      {
        v20 = [MPMediaItemArtwork alloc];
        [v19 size];
        v22 = v21;
        v24 = v23;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_D490C;
        v34[3] = &unk_2CCCC8;
        v35 = v19;
        v25 = [v20 initWithBoundsSize:v34 requestHandler:{v22, v24}];
        [v4 setObject:v25 forKey:MPMediaItemPropertyArtwork];
      }
    }

    objc_msgSend_currentTime(self);
    v26 = [NSNumber numberWithDouble:?];
    [v4 setObject:v26 forKey:MPNowPlayingInfoPropertyElapsedPlaybackTime];

    objc_msgSend_duration(self);
    v27 = [NSNumber numberWithDouble:?];
    [v4 setObject:v27 forKey:MPMediaItemPropertyPlaybackDuration];

    isPlaying = [(IMAVPlayer *)self isPlaying];
    v29 = 0.0;
    if (isPlaying)
    {
      [(AVPlayer *)self->_player rate];
      v29 = v30;
    }

    v31 = [NSNumber numberWithDouble:v29];
    [v4 setObject:v31 forKey:MPNowPlayingInfoPropertyPlaybackRate];

    v33 = BCAVPlayerLog(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v37 = v4;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "Setting nowPlayingInfo=%{private}@", buf, 0xCu);
    }

    [v3 setNowPlayingInfo:v4];
  }
}

- (id)stillFrameAt:(double)at maxSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  asset = [(IMAVPlayer *)self asset];
  v10 = [AVAssetImageGenerator assetImageGeneratorWithAsset:asset];

  if (scale < 1.0)
  {
    v11 = +[UIScreen mainScreen];
    [v11 scale];
    scale = v12;
  }

  [v10 setMaximumSize:{width * scale, height * scale}];
  v22 = kCMTimePositiveInfinity;
  v20 = *&v22.value;
  epoch = v22.epoch;
  [v10 setRequestedTimeToleranceBefore:&v22];
  *&v22.value = v20;
  v22.epoch = epoch;
  [v10 setRequestedTimeToleranceAfter:&v22];
  CMTimeMakeWithSeconds(&v22, at, 1000000000);
  v21 = 0;
  v14 = [v10 copyCGImageAtTime:&v22 actualTime:0 error:&v21];
  v15 = v21;
  v16 = v15;
  if (v15)
  {
    v17 = BCAVPlayerLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1E9874(v16, v17);
    }

    v18 = 0;
  }

  else
  {
    v17 = +[UIScreen mainScreen];
    [v17 scale];
    v18 = [UIImage imageWithCGImage:v14 scale:0 orientation:?];
  }

  CGImageRelease(v14);

  return v18;
}

- (void)onScreenConnection:(id)connection
{
  connectionCopy = connection;
  v5 = BCAVPlayerLog(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    object = [connectionCopy object];
    v8 = 138412290;
    v9 = object;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onScreenConnection %@", &v8, 0xCu);
  }

  window = [(IMVideoView *)self->_videoView window];

  if (window)
  {
    [(IMAVPlayer *)self updateVideoLayer];
  }
}

- (void)onScreenDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  v5 = BCAVPlayerLog(disconnectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    object = [disconnectionCopy object];
    v8 = 138412290;
    v9 = object;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onScreenDisconnection %@", &v8, 0xCu);
  }

  window = [(IMVideoView *)self->_videoView window];

  if (window)
  {
    [(IMAVPlayer *)self updateVideoLayer];
  }
}

- (void)playbackWasPaused:(id)paused
{
  self->_wasPlaying = [(IMAVPlayer *)self isPlaying];
  p_wasPlaying = &self->_wasPlaying;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1E990C(p_wasPlaying);
  }
}

- (void)onInterruption:(id)interruption
{
  interruptionCopy = interruption;
  v5 = BCAVPlayerLog(interruptionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    *v20 = interruptionCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onInterruption: notification=%@", &v19, 0xCu);
  }

  userInfo = [interruptionCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:AVAudioSessionInterruptionTypeKey];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue == &dword_0 + 1)
    {
      v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        sub_1E9990(self);
      }

      v10 = BCAVPlayerLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        wasPlaying = self->_wasPlaying;
        v19 = 67109120;
        *v20 = wasPlaying;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "begin interruption, wasPlaying: %d", &v19, 8u);
      }
    }
  }

  else
  {
    v12 = [userInfo objectForKeyedSubscript:AVAudioSessionInterruptionOptionKey];
    unsignedIntegerValue2 = [v12 unsignedIntegerValue];

    v15 = BCAVPlayerLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = self->_wasPlaying;
      v19 = 134218240;
      *v20 = unsignedIntegerValue2;
      *&v20[8] = 1024;
      v21 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "end interruption AVAudioSessionInterruptionOptionKey: %lu wasPlaying: %d", &v19, 0x12u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v17 = self->_wasPlaying;
      v19 = 67109376;
      *v20 = unsignedIntegerValue2 & 1;
      *&v20[4] = 1024;
      *&v20[6] = v17;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "AVAudioSession: Interruption has ended. Should resume: %d. Was playing: %d.", &v19, 0xEu);
    }

    if (unsignedIntegerValue2)
    {
      v18 = +[AVAudioSession sharedInstance];
      [v18 setActive:1 error:0];

      if (self->_wasPlaying)
      {
        [(IMAVPlayer *)self rewindFollowingInterruption];
        [(IMAVPlayer *)self play];
      }
    }
  }
}

- (void)onRouteChange:(id)change
{
  changeCopy = change;
  v5 = BCAVPlayerLog(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "onRouteChange: notification=%@", buf, 0xCu);
  }

  userInfo = [changeCopy userInfo];
  v7 = [userInfo objectForKey:AVAudioSessionRouteChangePreviousRouteKey];

  userInfo2 = [changeCopy userInfo];
  v9 = [userInfo2 objectForKey:AVAudioSessionRouteChangeReasonKey];

  if ([v9 integerValue] == &dword_0 + 2)
  {
    selfCopy = self;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v7 outputs];
    v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      v22 = v7;
      v23 = changeCopy;
      v21 = v9;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          portType = [v14 portType];
          if ([portType isEqualToString:AVAudioSessionPortHeadphones])
          {
            goto LABEL_16;
          }

          portType2 = [v14 portType];
          if ([portType2 isEqualToString:AVAudioSessionPortLineOut])
          {

LABEL_16:
LABEL_17:
            v20 = BCAVPlayerLog(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "route change interruption.  Setting _wasPlaying=NO", buf, 2u);
            }

            changeCopy = v23;
            selfCopy->_wasPlaying = 0;
            v9 = v21;
            v7 = v22;
            goto LABEL_20;
          }

          portType3 = [v14 portType];
          v18 = [portType3 isEqualToString:AVAudioSessionPortBluetoothA2DP];

          if (v18)
          {
            goto LABEL_17;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        v7 = v22;
        changeCopy = v23;
        v9 = v21;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }
}

- (IMAVPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end