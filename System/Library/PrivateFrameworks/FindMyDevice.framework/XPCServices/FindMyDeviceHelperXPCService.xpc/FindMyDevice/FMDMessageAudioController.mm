@interface FMDMessageAudioController
- (id)_fillVibrationPattern:(id)pattern toDuration:(double)duration;
- (void)_stopSound;
- (void)playSoundWithMessage:(id)message completion:(id)completion;
- (void)startObserving;
- (void)stopObserving;
- (void)stopSoundWithCompletion:(id)completion;
@end

@implementation FMDMessageAudioController

- (void)startObserving
{
  v3 = sub_1000070C0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start Observing for button changes", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000027EC, kStopLostModeAlarmNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)stopObserving
{
  v3 = sub_1000070C0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop Observing for button changes", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kStopLostModeAlarmNotification, 0);
}

- (void)playSoundWithMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  soundName = [messageCopy soundName];
  v10 = [v8 URLForResource:soundName withExtension:@"caf"];

  if (v10)
  {
    [(FMDMessageAudioController *)self _stopSound];
    v12 = +[FMXPCTransactionManager sharedInstance];
    [v12 beginTransaction:@"PlayingSound"];

    v13 = objc_alloc_init(AVQueuePlayer);
    [v13 _setClientName:@"LocatePhone"];
    [v13 _setClientPriority:10];
    v14 = +[AVAudioSession auxiliarySession];
    v36 = 0;
    [v14 setCategory:AVAudioSessionCategoryFindMyPhone error:&v36];
    v15 = v36;
    v16 = v15;
    if (v15)
    {
      v17 = sub_1000070C0(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to set attribute to AVAudioSessionCategoryFindMyPhone on AVAudioSession: %@", buf, 0xCu);
      }
    }

    else
    {
      [v13 setAudioSession:v14];
    }

    [(FMDMessageAudioController *)self startObserving];
    if ([messageCopy vibrate])
    {
      _vibrationPattern = [(FMDMessageAudioController *)self _vibrationPattern];
      v21 = -[FMDMessageAudioController _fillVibrationPattern:toDuration:](self, "_fillVibrationPattern:toDuration:", _vibrationPattern, [messageCopy soundDuration]);

      v39[0] = @"Intensity";
      v39[1] = @"VibePattern";
      v40[0] = &off_100018280;
      v40[1] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
      [v13 setVibrationPattern:v22];
    }

    stopSoundTimer = [(FMDMessageAudioController *)self stopSoundTimer];
    [stopSoundTimer cancel];

    objc_initWeak(buf, self);
    v24 = [FMDispatchTimer alloc];
    v25 = &_dispatch_main_q;
    soundDuration = [messageCopy soundDuration];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002DF0;
    v34[3] = &unk_100014EC8;
    objc_copyWeak(&v35, buf);
    v27 = [v24 initWithQueue:&_dispatch_main_q timeout:v34 completion:soundDuration];
    [(FMDMessageAudioController *)self setStopSoundTimer:v27];

    v29 = sub_1000070C0(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Playing sound...", v33, 2u);
    }

    v30 = [[FMDLoopPlayer alloc] initWithPlayer:v13];
    [(FMDMessageAudioController *)self setLoopPlayer:v30];

    loopPlayer = [(FMDMessageAudioController *)self loopPlayer];
    [loopPlayer playURL:v10];

    stopSoundTimer2 = [(FMDMessageAudioController *)self stopSoundTimer];
    [stopSoundTimer2 start];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);

    goto LABEL_18;
  }

  v18 = sub_1000070C0(v11);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10000A94C(v18);
  }

  if (completionCopy)
  {
    v37 = NSLocalizedFailureReasonErrorKey;
    v38 = @"Error getting sound URL";
    v19 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v13 = [NSError errorWithDomain:@"FMDMessageAudioControllerErrorDomain" code:-1 userInfo:v19];

    (completionCopy)[2](completionCopy, v13);
LABEL_18:
  }
}

- (void)stopSoundWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDMessageAudioController *)self _stopSound];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (void)_stopSound
{
  loopPlayer = [(FMDMessageAudioController *)self loopPlayer];

  if (loopPlayer)
  {
    v4 = sub_1000070C0([(FMDMessageAudioController *)self stopObserving]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping any sound that may be playing", v8, 2u);
    }

    loopPlayer2 = [(FMDMessageAudioController *)self loopPlayer];
    [loopPlayer2 stop];

    [(FMDMessageAudioController *)self setLoopPlayer:0];
    v6 = +[FMXPCTransactionManager sharedInstance];
    [v6 endTransaction:@"PlayingSound"];

    stopSoundTimer = [(FMDMessageAudioController *)self stopSoundTimer];
    [stopSoundTimer cancel];

    [(FMDMessageAudioController *)self setStopSoundTimer:0];
  }
}

- (id)_fillVibrationPattern:(id)pattern toDuration:(double)duration
{
  patternCopy = pattern;
  v6 = objc_alloc_init(NSMutableArray);
  if (duration >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [patternCopy objectAtIndexedSubscript:v7];
      [v6 addObject:v9];

      v10 = [patternCopy objectAtIndexedSubscript:v7 + 1];
      [v6 addObject:v10];
      v8 += [v10 integerValue];
      v7 += 2;
      if (v7 >= [patternCopy count])
      {
        v7 = 0;
      }
    }

    while (v8 < 1000 * duration);
  }

  v11 = [v6 copy];

  return v11;
}

@end