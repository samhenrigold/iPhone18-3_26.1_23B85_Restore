@interface PHVoicemailPlayerController
+ (id)sharedPlayerController;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (AVAsset)currentAsset;
- (BOOL)beginInterruption;
- (BOOL)endInterruption;
- (BOOL)isAtEnd;
- (BOOL)isPlaying;
- (PHVoicemailPlayerController)init;
- (id)_createAVPlayer;
- (void)_pause;
- (void)_play;
- (void)_proximityStateChanged:(id)changed;
- (void)currentAssetDurationWithBlock:(id)block;
- (void)dealloc;
- (void)handleAudioSessionRouteChangeNotification:(id)notification;
- (void)loadAudio:(id)audio withObserverForInterval:(id *)interval usingBlock:(id)block;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)resetAudioPlayer;
- (void)seekToTime:(id *)time;
- (void)setDuration:(id *)duration;
- (void)updateProximityMonitoring;
@end

@implementation PHVoicemailPlayerController

+ (id)sharedPlayerController
{
  if (sharedPlayerController_onceToken != -1)
  {
    +[PHVoicemailPlayerController sharedPlayerController];
  }

  v3 = sharedPlayerController__sharedPlayerController;

  return v3;
}

void __53__PHVoicemailPlayerController_sharedPlayerController__block_invoke(id a1)
{
  sharedPlayerController__sharedPlayerController = objc_alloc_init(PHVoicemailPlayerController);

  _objc_release_x1();
}

- (PHVoicemailPlayerController)init
{
  v5.receiver = self;
  v5.super_class = PHVoicemailPlayerController;
  v2 = [(PHVoicemailPlayerController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"handleAudioSessionRouteChangeNotification:" name:AVAudioSessionRouteChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  [(PHVoicemailPlayerController *)self resetAudioPlayer];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHVoicemailPlayerController;
  [(PHVoicemailPlayerController *)&v4 dealloc];
}

- (void)resetAudioPlayer
{
  [(AVPlayer *)self->_audioPlayer removeObserver:self forKeyPath:@"rate"];
  [(AVPlayer *)self->_audioPlayer removeObserver:self forKeyPath:@"status"];
  didStart = [(PHVoicemailPlayerController *)self didStart];

  if (didStart)
  {
    audioPlayer = self->_audioPlayer;
    didStart2 = [(PHVoicemailPlayerController *)self didStart];
    [(AVPlayer *)audioPlayer removeTimeObserver:didStart2];

    [(PHVoicemailPlayerController *)self setDidStart:0];
  }

  didEnd = [(PHVoicemailPlayerController *)self didEnd];

  if (didEnd)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    didEnd2 = [(PHVoicemailPlayerController *)self didEnd];
    [v7 removeObserver:didEnd2];

    [(PHVoicemailPlayerController *)self setDidEnd:0];
  }

  timeObserver = [(PHVoicemailPlayerController *)self timeObserver];

  if (timeObserver)
  {
    v10 = self->_audioPlayer;
    timeObserver2 = [(PHVoicemailPlayerController *)self timeObserver];
    [(AVPlayer *)v10 removeTimeObserver:timeObserver2];

    [(PHVoicemailPlayerController *)self setTimeObserver:0];
  }

  [(PHVoicemailPlayerController *)self endInterruption];
  [(PHVoicemailPlayerController *)self setInterrupted:0];
  [(PHVoicemailPlayerController *)self setAudioPlayer:0];
  [(PHVoicemailPlayerController *)self setPlayerItem:0];
  self->_status = 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if ([object isEqual:self->_audioPlayer])
  {
    if ([pathCopy isEqualToString:@"status"])
    {
      status = [(AVPlayer *)self->_audioPlayer status];
      if (status == AVPlayerStatusUnknown)
      {
        goto LABEL_21;
      }

      if (status != AVPlayerStatusFailed)
      {
        if (status == AVPlayerStatusReadyToPlay)
        {
          self->_status = 1;
LABEL_22:
          v10 = +[NSNotificationCenter defaultCenter];
          v11 = v10;
          v12 = @"kPHVoicemailPlayerControllerStatusChangedNotification";
          goto LABEL_23;
        }

        v19 = PHDefaultLog(status);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          status2 = [(AVPlayer *)self->_audioPlayer status];
          v21 = 134217984;
          v22 = status2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] PHVoicemailPlayerController encountered an AVPlayerStatus that is not known: %ld. Setting status to unknown.", &v21, 0xCu);
        }

LABEL_21:
        self->_status = 0;
        goto LABEL_22;
      }

      error = [(AVPlayer *)self->_audioPlayer error];
      v14 = PHDefaultLog(error);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PHVoicemailPlayerController observeValueForKeyPath:ofObject:change:context:];
      }

      domain = [error domain];
      if ([domain isEqualToString:AVFoundationErrorDomain])
      {
        code = [error code];

        if (code != -11819)
        {
LABEL_17:

          goto LABEL_22;
        }

        v18 = PHDefaultLog(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "mediaserverd has crashed, resetting the player and notifying clients", &v21, 2u);
        }

        [(PHVoicemailPlayerController *)self resetAudioPlayer];
        self->_status = 2;
        domain = +[NSNotificationCenter defaultCenter];
        [domain postNotificationName:@"PHVoicemailPlayerControllerMediaServicesResetNotification" object:0];
      }

      goto LABEL_17;
    }

    if ([pathCopy isEqualToString:@"rate"])
    {
      [(PHVoicemailPlayerController *)self updateProximityMonitoring];
      v10 = +[NSNotificationCenter defaultCenter];
      v11 = v10;
      v12 = @"kPHVoicemailPlayerControllerRateChangedNotification";
LABEL_23:
      [v10 postNotificationName:v12 object:0];
    }
  }
}

- (BOOL)isPlaying
{
  audioPlayer = [(PHVoicemailPlayerController *)self audioPlayer];
  [audioPlayer rate];
  if (v4 == 1.0)
  {
    audioPlayer2 = [(PHVoicemailPlayerController *)self audioPlayer];
    v6 = [audioPlayer2 status] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)beginInterruption
{
  interrupted = [(PHVoicemailPlayerController *)self interrupted];
  if ((interrupted & 1) == 0)
  {
    v4 = PHDefaultLog(interrupted);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "INTERRUPT: PHVoicemailPlayerController: Begin interruption", buf, 2u);
    }

    v5 = +[AVAudioSession sharedInstance];
    v18 = 0;
    v6 = [v5 setCategory:AVAudioSessionCategoryVoiceMail error:&v18];
    v7 = v18;

    if (v6)
    {
      v9 = +[AVAudioSession sharedInstance];
      v17 = v7;
      v10 = [v9 setActive:1 error:&v17];
      v11 = v17;

      v13 = PHDefaultLog(v12);
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "INTERRUPT: PHVoicemailPlayerController: Successful interruption", buf, 2u);
        }

        v15 = 1;
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [PHVoicemailPlayerController beginInterruption];
        }

        v15 = 0;
      }
    }

    else
    {
      v14 = PHDefaultLog(v8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PHVoicemailPlayerController beginInterruption];
      }

      v15 = 0;
      v11 = v7;
    }

    [(PHVoicemailPlayerController *)self setInterrupted:v15];
  }

  return [(PHVoicemailPlayerController *)self interrupted];
}

- (BOOL)endInterruption
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "INTERRUPT: PHVoicemailPlayerController: End interruption", buf, 2u);
  }

  if (![(PHVoicemailPlayerController *)self interrupted])
  {
    return 0;
  }

  v4 = +[AVAudioSession sharedInstance];
  v10 = 0;
  v5 = [v4 setActive:0 withOptions:1 error:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v8 = PHDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PHVoicemailPlayerController endInterruption];
    }
  }

  [(PHVoicemailPlayerController *)self setInterrupted:0];

  return v5;
}

- (id)_createAVPlayer
{
  v3 = [AVPlayer alloc];
  playerItem = [(PHVoicemailPlayerController *)self playerItem];
  v5 = [v3 initWithPlayerItem:playerItem];

  [v5 setActionAtItemEnd:1];
  [v5 addObserver:self forKeyPath:@"status" options:0 context:0];
  [v5 addObserver:self forKeyPath:@"rate" options:0 context:0];
  CMTimeMake(&v10, 1, 3);
  v6 = [NSValue valueWithCMTime:&v10];
  v11 = v6;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v8 = [v5 addBoundaryTimeObserverForTimes:v7 queue:0 usingBlock:&__block_literal_global_84];
  [(PHVoicemailPlayerController *)self setDidStart:v8];

  return v5;
}

void __46__PHVoicemailPlayerController__createAVPlayer__block_invoke(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"kPHVoicemailPlayerControllerDidStartPlayingNotification" object:0];
}

- (void)loadAudio:(id)audio withObserverForInterval:(id *)interval usingBlock:(id)block
{
  audioCopy = audio;
  if (audioCopy)
  {
    blockCopy = block;
    v10 = PHDefaultLog(blockCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = audioCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHVoicemailPlayerController: Loading voicemail asset: %@", buf, 0xCu);
    }

    v11 = [AVPlayerItem playerItemWithAsset:audioCopy];
    [(PHVoicemailPlayerController *)self setPlayerItem:v11];

    if (!self->_audioPlayer)
    {
      _createAVPlayer = [(PHVoicemailPlayerController *)self _createAVPlayer];
      audioPlayer = self->_audioPlayer;
      self->_audioPlayer = _createAVPlayer;
    }

    *buf = *&kCMTimeIndefinite.value;
    epoch = kCMTimeIndefinite.epoch;
    [(PHVoicemailPlayerController *)self setDuration:buf];
    v14 = self->_audioPlayer;
    *buf = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    [(AVPlayer *)v14 seekToTime:buf];
    v15 = self->_audioPlayer;
    timeObserver = [(PHVoicemailPlayerController *)self timeObserver];
    [(AVPlayer *)v15 removeTimeObserver:timeObserver];

    v17 = self->_audioPlayer;
    *buf = *&interval->var0;
    epoch = interval->var3;
    v18 = [(AVPlayer *)v17 addPeriodicTimeObserverForInterval:buf queue:0 usingBlock:blockCopy];

    [(PHVoicemailPlayerController *)self setTimeObserver:v18];
    didEnd = [(PHVoicemailPlayerController *)self didEnd];

    if (didEnd)
    {
      v20 = +[NSNotificationCenter defaultCenter];
      didEnd2 = [(PHVoicemailPlayerController *)self didEnd];
      [v20 removeObserver:didEnd2];

      [(PHVoicemailPlayerController *)self setDidEnd:0];
    }

    v22 = +[NSNotificationCenter defaultCenter];
    playerItem = [(PHVoicemailPlayerController *)self playerItem];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __76__PHVoicemailPlayerController_loadAudio_withObserverForInterval_usingBlock___block_invoke;
    v29[3] = &unk_1002866F8;
    v29[4] = self;
    v24 = [v22 addObserverForName:AVPlayerItemDidPlayToEndTimeNotification object:playerItem queue:0 usingBlock:v29];
    [(PHVoicemailPlayerController *)self setDidEnd:v24];

    self->_status = 1;
    v26 = PHDefaultLog(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_duration(self);
      *buf = 134217984;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PHVoicemailPlayerController: duration: %lld", buf, 0xCu);
    }

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 postNotificationName:@"kPHVoicemailPlayerControllerStatusChangedNotification" object:0];
  }
}

id __76__PHVoicemailPlayerController_loadAudio_withObserverForInterval_usingBlock___block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"kPHVoicemailPlayerControllerDidPlayToEndNotification" object:0];

  [*(a1 + 32) updateProximityMonitoring];
  v3 = *(a1 + 32);

  return [v3 endInterruption];
}

- (void)play
{
  playerItem = [(PHVoicemailPlayerController *)self playerItem];

  if (playerItem)
  {
    interrupted = [(PHVoicemailPlayerController *)self interrupted];
    if ((interrupted & 1) == 0)
    {
      interrupted = [(PHVoicemailPlayerController *)self beginInterruption];
    }

    v5 = PHDefaultLog(interrupted);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHVoicemailPlayerController: Starting voicemail playback", v16, 2u);
    }

    currentItem = [(AVPlayer *)self->_audioPlayer currentItem];
    playerItem2 = [(PHVoicemailPlayerController *)self playerItem];
    v8 = [currentItem isEqual:playerItem2];

    if ((v8 & 1) == 0)
    {
      audioPlayer = self->_audioPlayer;
      playerItem3 = [(PHVoicemailPlayerController *)self playerItem];
      [(AVPlayer *)audioPlayer replaceCurrentItemWithPlayerItem:playerItem3];
    }

    v11 = +[PHAudioDeviceController sharedAudioDeviceController];
    receiverRouteIsPicked = [v11 receiverRouteIsPicked];

    if (receiverRouteIsPicked)
    {
      [(PHVoicemailPlayerController *)self setIsWaitingForProximitySensor:1];
      v13 = +[UIDevice currentDevice];
      [v13 setProximityMonitoringEnabled:1];

      [(PHVoicemailPlayerController *)self performSelector:"_play" withObject:0 afterDelay:2.0];
      v14 = +[NSNotificationCenter defaultCenter];
      [v14 removeObserver:self name:UIDeviceProximityStateDidChangeNotification object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"_proximityStateChanged:" name:UIDeviceProximityStateDidChangeNotification object:0];
    }

    else
    {
      [(PHVoicemailPlayerController *)self _play];
    }
  }
}

- (void)_play
{
  [(PHVoicemailPlayerController *)self setIsWaitingForProximitySensor:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIDeviceProximityStateDidChangeNotification object:0];

  audioPlayer = self->_audioPlayer;

  [(AVPlayer *)audioPlayer play];
}

- (void)pause
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHVoicemailPlayerController: Pausing voicemail playback", buf, 2u);
  }

  if (+[NSThread isMainThread])
  {
    [(PHVoicemailPlayerController *)self _pause];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __36__PHVoicemailPlayerController_pause__block_invoke;
    block[3] = &unk_100284FD0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_pause
{
  [(PHVoicemailPlayerController *)self setIsWaitingForProximitySensor:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIDeviceProximityStateDidChangeNotification object:0];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_play" object:0];
  audioPlayer = self->_audioPlayer;

  [(AVPlayer *)audioPlayer pause];
}

- (void)seekToTime:(id *)time
{
  v5 = PHDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *time;
    v6 = CMTimeCopyDescription(0, &v9);
    v7 = CFAutorelease(v6);
    LODWORD(v9.var0) = 138412290;
    *(&v9.var0 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHVoicemailPlayerController: Seeking to time: %@", &v9, 0xCu);
  }

  audioPlayer = self->_audioPlayer;
  v9 = *time;
  [(AVPlayer *)audioPlayer seekToTime:&v9];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  result = self->_audioPlayer;
  if (result)
  {
    return objc_msgSend_currentTime(result, a3);
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (BOOL)isAtEnd
{
  objc_msgSend_currentTime(self, a2);
  objc_msgSend_currentTime(self);
  objc_msgSend_duration(self);
  objc_msgSend_duration(self);
  return v7 / v6 >= v5 / v4;
}

- (void)currentAssetDurationWithBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_duration(self);
  if ((v10[60] & 1) != 0 && (objc_msgSend_duration(self), (v10[36] & 0x10) != 0))
  {
    [(PHVoicemailPlayerController *)self currentAsset];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __61__PHVoicemailPlayerController_currentAssetDurationWithBlock___block_invoke;
    v7 = v6[3] = &unk_100285810;
    selfCopy = self;
    v9 = blockCopy;
    v5 = v7;
    [v5 loadValuesAsynchronouslyForKeys:&off_1002954F8 completionHandler:v6];
  }

  else
  {
    objc_msgSend_duration(self);
    (*(blockCopy + 2))(blockCopy, v10);
  }
}

void __61__PHVoicemailPlayerController_currentAssetDurationWithBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v13 = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:&v13];
  v4 = v13;
  if (v3 == 2)
  {
    v5 = a1[4];
    if (v5)
    {
      objc_msgSend_duration(v5);
    }

    else
    {
      v11 = 0uLL;
      v12 = 0;
    }

    v6 = a1[5];
    v9 = v11;
    v10 = v12;
    [v6 setDuration:&v9];
    v7 = a1[5];
    v8 = a1[6];
    if (v7)
    {
      objc_msgSend_duration(v7);
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    (*(v8 + 16))(v8, &v9);
  }
}

- (AVAsset)currentAsset
{
  playerItem = [(PHVoicemailPlayerController *)self playerItem];
  asset = [playerItem asset];

  return asset;
}

- (void)handleAudioSessionRouteChangeNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUDispatchMainIfNecessary();
}

void __73__PHVoicemailPlayerController_handleAudioSessionRouteChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 objectForKeyedSubscript:AVAudioSessionRouteChangeReasonKey];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 unsignedIntegerValue] - 1 <= 3)
    {
      [*(a1 + 40) updateProximityMonitoring];
    }

    v2 = v4;
  }
}

- (void)updateProximityMonitoring
{
  v3 = +[PHAudioDeviceController sharedAudioDeviceController];
  if ([v3 receiverRouteIsPicked])
  {
    isPlaying = [(PHVoicemailPlayerController *)self isPlaying];

    if (isPlaying)
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = 0;
LABEL_6:
  v6 = +[UIDevice currentDevice];
  [v6 setProximityMonitoringEnabled:v5];
}

- (void)_proximityStateChanged:(id)changed
{
  v4 = +[UIDevice currentDevice];
  proximityState = [v4 proximityState];

  if (proximityState)
  {

    [(PHVoicemailPlayerController *)self _play];
  }
}

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

@end