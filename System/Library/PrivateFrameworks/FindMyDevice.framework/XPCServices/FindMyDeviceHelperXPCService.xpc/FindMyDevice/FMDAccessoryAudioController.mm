@interface FMDAccessoryAudioController
+ (id)_audioCategory;
- (BOOL)isAccessoryBeingMonitored:(id)monitored;
- (BOOL)setVolume:(float)volume forRoute:(id)route;
- (FMDAccessoryAudioController)init;
- (FMDAccessoryAudioControllerDelegate)delegate;
- (float)setMaxVolumeForRoute:(id)route;
- (id)pickRoute:(id)route;
- (id)pickedRoute;
- (id)routeForAccessoryIdentifier:(id)identifier;
- (id)setupAudioSession;
- (void)fade;
- (void)pickableRoutesChangedNotification:(id)notification;
- (void)playSound:(id)sound channels:(id)channels;
- (void)routeChanged:(id)changed;
- (void)setPanForChannels:(id)channels;
- (void)startMonitoringRoutableAccessory:(id)accessory completion:(id)completion;
- (void)startPlayingSoundForAccessory:(id)accessory channels:(id)channels completion:(id)completion;
- (void)stopMonitoringRoutableAccessory:(id)accessory completion:(id)completion;
- (void)stopPlayingForAccessory:(id)accessory completion:(id)completion;
- (void)stopSound;
@end

@implementation FMDAccessoryAudioController

- (FMDAccessoryAudioController)init
{
  v13.receiver = self;
  v13.super_class = FMDAccessoryAudioController;
  v2 = [(FMDAccessoryAudioController *)&v13 init];
  v3 = sub_1000070C0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: init", v12, 2u);
  }

  if (v2)
  {
    v4 = objc_alloc_init(NSMutableArray);
    [(FMDAccessoryAudioController *)v2 setMonitoredAccessories:v4];

    v5 = objc_opt_new();
    [(FMDAccessoryAudioController *)v2 setMonitoredAccessoriesCompletionBlocks:v5];

    v6 = +[AVSystemController sharedAVSystemController];
    v14[0] = AVSystemController_ActiveAudioRouteDidChangeNotification;
    v14[1] = AVSystemController_PickableRoutesDidChangeNotification;
    v7 = [NSArray arrayWithObjects:v14 count:2];
    [v6 setAttribute:v7 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"routeChanged:" name:AVSystemController_ActiveAudioRouteDidChangeNotification object:v6];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"pickableRoutesChangedNotification:" name:AVSystemController_PickableRoutesDidChangeNotification object:v6];

    v10 = +[FMDAVRouteControllerFactory routeController];
    [v10 initializeNotifications];
  }

  return v2;
}

- (void)startPlayingSoundForAccessory:(id)accessory channels:(id)channels completion:(id)completion
{
  accessoryCopy = accessory;
  channelsCopy = channels;
  completionCopy = completion;
  [@"PlaySoundTransaction" UTF8String];
  v11 = os_transaction_create();
  [(FMDAccessoryAudioController *)self setSoundTransaction:v11];

  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    audioRoutingIdentifier = [accessoryCopy audioRoutingIdentifier];
    lastAccessory = [(FMDAccessoryAudioController *)self lastAccessory];
    audioRoutingIdentifier2 = [lastAccessory audioRoutingIdentifier];
    v15 = [audioRoutingIdentifier isEqualToString:audioRoutingIdentifier2];

    if (v15)
    {
      v17 = sub_1000070C0(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Sound already playing updating pan", buf, 2u);
      }

      [(FMDAccessoryAudioController *)self setPanForChannels:channelsCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v20 = [NSError alloc];
      v21 = kFMDAccessoryPlaySoundErrorDomain;
      v39 = NSLocalizedFailureReasonErrorKey;
      v40 = @"FMDAccessoryAudioController only one sound can play at the time, stop sound before playing";
      v22 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v23 = [v20 initWithDomain:v21 code:1 userInfo:v22];

      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, v23);
      }
    }
  }

  else
  {
    [(FMDAccessoryAudioController *)self setLastAccessory:accessoryCopy];
    setupAudioSession = [(FMDAccessoryAudioController *)self setupAudioSession];
    if (setupAudioSession)
    {
      v19 = setupAudioSession;
      completionCopy[2](completionCopy, setupAudioSession);
    }

    else
    {
      audioRoutingIdentifier3 = [accessoryCopy audioRoutingIdentifier];
      v25 = [(FMDAccessoryAudioController *)self routeForAccessoryIdentifier:audioRoutingIdentifier3];

      v26 = [(FMDAccessoryAudioController *)self pickRoute:v25];
      v27 = sub_1000070C0(v26);
      v28 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10000A9E8();
        }

        (completionCopy)[2](completionCopy, v26);
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = *&v25;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController accessory currently picked route = %@", buf, 0xCu);
        }

        [(FMDAccessoryAudioController *)self setMaxVolumeForRoute:v25];
        v30 = v29;
        [(FMDAccessoryAudioController *)self setOriginalRoute:v25];
        originalState = [(FMDAccessoryAudioController *)self originalState];

        if (!originalState)
        {
          v33 = objc_opt_new();
          LODWORD(v34) = v30;
          [v33 setVolume:v34];
          [(FMDAccessoryAudioController *)self setOriginalState:v33];
        }

        v35 = sub_1000070C0(v32);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          originalState2 = [(FMDAccessoryAudioController *)self originalState];
          [originalState2 volume];
          *buf = 134217984;
          v42 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Original state - volume: %f", buf, 0xCu);
        }

        completionCopy[2](completionCopy, 0);
        audioURL = [accessoryCopy audioURL];
        [(FMDAccessoryAudioController *)self playSound:audioURL channels:channelsCopy];
      }
    }
  }
}

- (void)stopPlayingForAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000045E4;
    v6[3] = &unk_100014FC0;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)playSound:(id)sound channels:(id)channels
{
  soundCopy = sound;
  channelsCopy = channels;
  v8 = sub_1000070C0(channelsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = channelsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Play sound for channels %@", buf, 0xCu);
  }

  v9 = soundCopy;
  v30 = 0;
  v10 = [FMDAudioPlayerFactory initWithContentsOfURL:v9 error:&v30];
  v11 = v30;
  [(FMDAccessoryAudioController *)self setAudioPlayer:v10];

  if (v11)
  {
    v13 = sub_1000070C0(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v9;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error reading the sound URL %@ falling back to default %@", buf, 0x16u);
    }

    v14 = +[NSBundle mainBundle];
    v15 = [v14 pathForResource:@"accessory_locateSound" ofType:@"wav"];
    v16 = [NSURL fileURLWithPath:v15];
    v29 = v11;
    v17 = [FMDAudioPlayerFactory initWithContentsOfURL:v16 error:&v29];
    v18 = v29;

    [(FMDAccessoryAudioController *)self setAudioPlayer:v17];
  }

  else
  {
    v18 = 0;
  }

  audioPlayer = [(FMDAccessoryAudioController *)self audioPlayer];
  [audioPlayer setNumberOfLoops:-1];

  [(FMDAccessoryAudioController *)self setPanForChannels:channelsCopy];
  audioPlayer2 = [(FMDAccessoryAudioController *)self audioPlayer];
  [audioPlayer2 prepareToPlay];

  [(FMDAccessoryAudioController *)self setIsSoundPlaying:1];
  [(FMDAccessoryAudioController *)self setWasSoundPlayed:1];
  LODWORD(v21) = 1.0;
  [(FMDAccessoryAudioController *)self setVolumeTargetValue:v21];
  [(FMDAccessoryAudioController *)self rampUpDuration];
  [(FMDAccessoryAudioController *)self setFadeDuration:?];
  [(FMDAccessoryAudioController *)self rampUpDuration];
  if (v22 <= 0.0)
  {
    [(FMDAccessoryAudioController *)self volumeTargetValue];
    v25 = v24;
    audioPlayer3 = [(FMDAccessoryAudioController *)self audioPlayer];
    LODWORD(v27) = v25;
    [audioPlayer3 setVolume:v27];
  }

  else
  {
    audioPlayer4 = [(FMDAccessoryAudioController *)self audioPlayer];
    [audioPlayer4 setVolume:0.0];

    [(FMDAccessoryAudioController *)self fade];
  }

  audioPlayer5 = [(FMDAccessoryAudioController *)self audioPlayer];
  [audioPlayer5 play];
}

- (void)stopSound
{
  v3 = sub_1000070C0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping sound", &v25, 2u);
  }

  if ([(FMDAccessoryAudioController *)self wasSoundPlayed])
  {
    originalState = [(FMDAccessoryAudioController *)self originalState];

    if (originalState)
    {
      [(FMDAccessoryAudioController *)self setWasSoundPlayed:0];
      originalState2 = [(FMDAccessoryAudioController *)self originalState];
      [originalState2 volume];
      v7 = v6;
      originalRoute = [(FMDAccessoryAudioController *)self originalRoute];
      LODWORD(v9) = v7;
      [(FMDAccessoryAudioController *)self setVolume:originalRoute forRoute:v9];

      v11 = sub_1000070C0(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        originalState3 = [(FMDAccessoryAudioController *)self originalState];
        [originalState3 volume];
        v25 = 134217984;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AccessoryAudioController volume set back to original %f", &v25, 0xCu);
      }

      audioPlayer = [(FMDAccessoryAudioController *)self audioPlayer];
      [audioPlayer stop];

      [(FMDAccessoryAudioController *)self setAudioPlayer:0];
      [(FMDAccessoryAudioController *)self setSoundTransaction:0];
      [(FMDAccessoryAudioController *)self setOriginalState:0];
      [(FMDAccessoryAudioController *)self setOriginalRoute:0];
      delegate = [(FMDAccessoryAudioController *)self delegate];
      [delegate soundDidStop];

      if (qword_10001EA70)
      {
        v17 = sub_1000070C0(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Stopping fade timer", &v25, 2u);
        }

        dispatch_source_cancel(qword_10001EA70);
        v18 = qword_10001EA70;
        qword_10001EA70 = 0;
      }

      lastAccessory = [(FMDAccessoryAudioController *)self lastAccessory];
      [(FMDAccessoryAudioController *)self setLastAccessory:0];
      if ([lastAccessory conformsToProtocol:&OBJC_PROTOCOL___FMDAccessory])
      {
        v20 = lastAccessory;
        v21 = +[FMDFMIPManager sharedInstance];
        accessoryIdentifier = [v20 accessoryIdentifier];

        stringValue = [accessoryIdentifier stringValue];
        [v21 soundStoppedForAccessoryIdentifier:stringValue];
      }

      v24 = +[AVAudioSession sharedInstance];
      [v24 setActive:0 withOptions:1 error:0];
    }
  }
}

- (void)setPanForChannels:(id)channels
{
  channelsCopy = channels;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [channelsCopy countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(channelsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isEqualToString:@"left"])
        {
          v11 = -1;
        }

        else
        {
          v11 = [v10 isEqualToString:@"right"];
        }

        v7 += v11;
      }

      v6 = [channelsCopy countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = sub_1000070C0(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    isSoundPlaying = [(FMDAccessoryAudioController *)self isSoundPlaying];
    *buf = 67109634;
    v22 = isSoundPlaying;
    v23 = 1024;
    v24 = v7;
    v25 = 2112;
    v26 = channelsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Audio Player pan %i %i %@", buf, 0x18u);
  }

  *&v14 = v7;
  [(FMDAccessoryAudioController *)self setPanTargetValue:v14];
  if ([(FMDAccessoryAudioController *)self isSoundPlaying])
  {
    [(FMDAccessoryAudioController *)self fade];
  }

  else
  {
    audioPlayer = [(FMDAccessoryAudioController *)self audioPlayer];
    *&v16 = v7;
    [audioPlayer setPan:v16];
  }
}

- (id)routeForAccessoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = +[FMDAVRouteControllerFactory routeController];
  v4 = +[FMDAccessoryAudioController _audioCategory];
  v5 = [v3 pickableRoutesForCategory:v4];

  v7 = sub_1000070C0(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[FMDAccessoryAudioController _audioCategory];
    *buf = 138412546;
    v29 = v8;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Category %@ Pickables routes %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        routeID = [v15 routeID];
        if (routeID)
        {
          v17 = routeID;
          routeID2 = [v15 routeID];
          v19 = [routeID2 rangeOfString:identifierCopy];

          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = v15;

            v12 = v20;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)pickedRoute
{
  v2 = +[FMDAVRouteControllerFactory routeController];
  v3 = +[FMDAccessoryAudioController _audioCategory];
  v4 = [v2 pickableRoutesForCategory:v3];

  v6 = sub_1000070C0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Pickables routes %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 currentlyPicked])
        {
          v14 = v13;

          v10 = v14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pickRoute:(id)route
{
  routeCopy = route;
  v4 = +[FMDAVRouteControllerFactory routeController];
  v5 = [v4 setPickedRoute:routeCopy];

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_1000070C0(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000AA5C();
    }

    v9 = [NSError alloc];
    v10 = kFMDAccessoryPlaySoundErrorDomain;
    v13 = NSLocalizedFailureReasonErrorKey;
    v14 = @"FMDAccessoryAudioController cannot route audio to accessory. Aborting";
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [v9 initWithDomain:v10 code:0 userInfo:v11];
  }

  return v7;
}

- (id)setupAudioSession
{
  v2 = sub_1000070C0(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: Setting up audio session", buf, 2u);
  }

  v3 = +[AVAudioSession sharedInstance];
  v20 = 0;
  [v3 setCategory:AVAudioSessionCategoryFindMyDevice error:&v20];
  v4 = v20;
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000070C0(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session's audio category %@", buf, 0xCu);
    }

    v7 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v19 = 0;
  [v3 setPreferredIOBufferDuration:&v19 error:0.005];
  v9 = v19;
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000070C0(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session's I/O buffer duration %@", buf, 0xCu);
    }
  }

  v18 = 0;
  [v3 setPreferredSampleRate:&v18 error:44100.0];
  v12 = v18;
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000070C0(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session's preferred sample rate %@", buf, 0xCu);
    }
  }

  v15 = +[AVAudioSession sharedInstance];
  v17 = 0;
  [v15 setActive:1 error:&v17];
  v7 = v17;

  if (v7)
  {
    v5 = sub_1000070C0(v16);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController: couldn't set session active, %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (BOOL)setVolume:(float)volume forRoute:(id)route
{
  routeCopy = route;
  v6 = +[FMDAVRouteControllerFactory routeController];
  v7 = +[FMDAccessoryAudioController _audioCategory];
  *&v8 = volume;
  v9 = [v6 setVolume:v7 forCategory:routeCopy route:v8];

  return v9;
}

- (float)setMaxVolumeForRoute:(id)route
{
  routeCopy = route;
  v20 = 0.0;
  v5 = +[FMDAVRouteControllerFactory routeController];
  v6 = +[FMDAccessoryAudioController _audioCategory];
  v7 = [v5 getVolume:&v20 forCategory:v6 route:routeCopy];

  v9 = sub_1000070C0(v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      routeID = [routeCopy routeID];
      *buf = 138412546;
      v22 = routeID;
      v23 = 2048;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AccessoryAudioController %@ original volume %f", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10000AAD0(routeCopy);
  }

  LODWORD(v12) = 1.0;
  v13 = [(FMDAccessoryAudioController *)self setVolume:routeCopy forRoute:v12];
  v14 = v13;
  v15 = sub_1000070C0(v13);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      routeID2 = [routeCopy routeID];
      *buf = 138412290;
      v22 = routeID2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AccessoryAudioController %@ new volume 1.0f", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10000AB54(routeCopy);
  }

  v18 = v20;
  return v18;
}

- (void)fade
{
  audioPlayer = [(FMDAccessoryAudioController *)self audioPlayer];

  if (audioPlayer)
  {
    [(FMDAccessoryAudioController *)self fadeDuration];
    v5 = 1.0 / (v4 * 15.0);
    audioPlayer2 = [(FMDAccessoryAudioController *)self audioPlayer];
    [audioPlayer2 volume];
    v8 = v7;
    [(FMDAccessoryAudioController *)self volumeTargetValue];
    v10 = vabds_f32(v8, v9);

    v11 = v5 < v10;
    if (v5 < v10)
    {
      audioPlayer3 = [(FMDAccessoryAudioController *)self audioPlayer];
      [audioPlayer3 volume];
      v14 = v13;
      [(FMDAccessoryAudioController *)self volumeTargetValue];
      v16 = v15;

      audioPlayer4 = [(FMDAccessoryAudioController *)self audioPlayer];
      [audioPlayer4 volume];
      v19 = v18;
      v20 = v5;
      audioPlayer5 = [(FMDAccessoryAudioController *)self audioPlayer];
      v22 = audioPlayer5;
      *&v23 = -v20;
      if (v14 <= v16)
      {
        *&v23 = v5;
      }

      *&v23 = v19 + *&v23;
      [audioPlayer5 setVolume:v23];

      v25 = sub_1000070C0(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_10000AC88(self);
      }
    }

    else
    {
      [(FMDAccessoryAudioController *)self volumeTargetValue];
      v27 = v26;
      audioPlayer6 = [(FMDAccessoryAudioController *)self audioPlayer];
      LODWORD(v29) = v27;
      [audioPlayer6 setVolume:v29];

      v31 = sub_1000070C0(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10000ABD8(self);
      }

      audioPlayer7 = [(FMDAccessoryAudioController *)self audioPlayer];
      [audioPlayer7 volume];
      v35 = v34;

      if (v35 == 0.0)
      {
        [(FMDAccessoryAudioController *)self stopSound];
      }
    }

    audioPlayer8 = [(FMDAccessoryAudioController *)self audioPlayer];
    [audioPlayer8 pan];
    v38 = v37;
    [(FMDAccessoryAudioController *)self panTargetValue];
    v40 = vabds_f32(v38, v39);

    if (v40 <= 0.0266666667)
    {
      [(FMDAccessoryAudioController *)self panTargetValue];
      v54 = v53;
      audioPlayer9 = [(FMDAccessoryAudioController *)self audioPlayer];
      LODWORD(v56) = v54;
      [audioPlayer9 setPan:v56];

      v52 = sub_1000070C0(v57);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        sub_10000AD58(self);
      }
    }

    else
    {
      audioPlayer10 = [(FMDAccessoryAudioController *)self audioPlayer];
      [audioPlayer10 pan];
      v43 = v42;
      [(FMDAccessoryAudioController *)self panTargetValue];
      v45 = v43 > v44;

      audioPlayer11 = [(FMDAccessoryAudioController *)self audioPlayer];
      [audioPlayer11 pan];
      v48 = v47;
      audioPlayer12 = [(FMDAccessoryAudioController *)self audioPlayer];
      *&v50 = v48 + flt_10000E2D0[v45];
      [audioPlayer12 setPan:v50];

      v52 = sub_1000070C0(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        sub_10000AE08(self);
      }

      v11 = 1;
    }

    v59 = qword_10001EA70;
    if (v11 && qword_10001EA70 == 0)
    {
      v61 = sub_1000070C0(v58);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        sub_10000AEB8(v61);
      }

      objc_initWeak(location, self);
      v62 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, &_dispatch_main_q);
      v63 = qword_10001EA70;
      qword_10001EA70 = v62;

      v64 = qword_10001EA70;
      v65 = dispatch_time(0, 0);
      dispatch_source_set_timer(v64, v65, 0x3F940AEuLL, 0);
      v66 = qword_10001EA70;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100005D8C;
      handler[3] = &unk_100014EC8;
      objc_copyWeak(&v71, location);
      dispatch_source_set_event_handler(v66, handler);
      dispatch_resume(qword_10001EA70);
      objc_destroyWeak(&v71);
      objc_destroyWeak(location);
      v59 = qword_10001EA70;
    }

    if (v59)
    {
      v67 = v11;
    }

    else
    {
      v67 = 1;
    }

    if ((v67 & 1) == 0)
    {
      v68 = sub_1000070C0(v58);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Stopping fade timer", location, 2u);
      }

      dispatch_source_cancel(qword_10001EA70);
      v69 = qword_10001EA70;
      qword_10001EA70 = 0;
    }
  }
}

- (void)startMonitoringRoutableAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  if ([(FMDAccessoryAudioController *)self isAccessoryBeingMonitored:accessoryCopy])
  {
    if (completionCopy)
    {
      v8 = [NSError alloc];
      v9 = kFMDAccessoryPlaySoundErrorDomain;
      v18 = NSLocalizedFailureReasonErrorKey;
      v19 = @"FMDAccessoryAudioController is already monitoring that accessory";
      v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [v8 initWithDomain:v9 code:2 userInfo:v10];
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    audioRoutingIdentifier = [accessoryCopy audioRoutingIdentifier];
    v13 = [(FMDAccessoryAudioController *)self routeForAccessoryIdentifier:audioRoutingIdentifier];

    if (v13)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      monitoredAccessoriesCompletionBlocks = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
      v15 = objc_retainBlock(completionCopy);
      audioRoutingIdentifier2 = [accessoryCopy audioRoutingIdentifier];
      [monitoredAccessoriesCompletionBlocks setObject:v15 forKey:audioRoutingIdentifier2];

      monitoredAccessories = [(FMDAccessoryAudioController *)self monitoredAccessories];
      [monitoredAccessories addObject:accessoryCopy];
    }
  }
}

- (void)stopMonitoringRoutableAccessory:(id)accessory completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v8 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController stopMonitoringRoutableAccessory %@", buf, 0xCu);
  }

  if ([(FMDAccessoryAudioController *)self isAccessoryBeingMonitored:accessoryCopy])
  {
    v26 = completionCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    monitoredAccessories = [(FMDAccessoryAudioController *)self monitoredAccessories];
    v10 = [monitoredAccessories copy];

    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          audioRoutingIdentifier = [v15 audioRoutingIdentifier];
          audioRoutingIdentifier2 = [accessoryCopy audioRoutingIdentifier];
          v18 = [audioRoutingIdentifier isEqualToString:audioRoutingIdentifier2];

          if (v18)
          {
            monitoredAccessories2 = [(FMDAccessoryAudioController *)self monitoredAccessories];
            [monitoredAccessories2 removeObject:v15];

            monitoredAccessoriesCompletionBlocks = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
            audioRoutingIdentifier3 = [v15 audioRoutingIdentifier];
            [monitoredAccessoriesCompletionBlocks removeObjectForKey:audioRoutingIdentifier3];

            goto LABEL_16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    completionCopy = v26;
    if (v26)
    {
      v26[2](v26, 0);
    }
  }

  else if (completionCopy)
  {
    v19 = [NSError alloc];
    v20 = kFMDAccessoryPlaySoundErrorDomain;
    v32 = NSLocalizedFailureReasonErrorKey;
    v33 = @"FMDAccessoryAudioController is not monitoring that accessory";
    v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v22 = [v19 initWithDomain:v20 code:3 userInfo:v21];
    completionCopy[2](completionCopy, v22);
  }
}

- (void)routeChanged:(id)changed
{
  pickedRoute = [(FMDAccessoryAudioController *)self pickedRoute];
  v5 = sub_1000070C0(pickedRoute);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = pickedRoute;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Route changed notification current route: %@", buf, 0xCu);
  }

  lastAccessory = [(FMDAccessoryAudioController *)self lastAccessory];
  audioRoutingIdentifier = [lastAccessory audioRoutingIdentifier];

  if (audioRoutingIdentifier)
  {
    routeID = [pickedRoute routeID];
    if (routeID)
    {
      v9 = routeID;
      routeID2 = [pickedRoute routeID];
      v11 = [routeID2 rangeOfString:audioRoutingIdentifier];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(FMDAccessoryAudioController *)self isSoundPlaying])
        {
          goto LABEL_11;
        }

        monitoredAccessoriesCompletionBlocks = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
        v17 = [monitoredAccessoriesCompletionBlocks objectForKey:audioRoutingIdentifier];

        lastAccessory2 = [(FMDAccessoryAudioController *)self lastAccessory];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000650C;
        v19[3] = &unk_100014FE8;
        v20 = v17;
        lastAccessory4 = v17;
        [(FMDAccessoryAudioController *)self stopMonitoringRoutableAccessory:lastAccessory2 completion:v19];

        goto LABEL_10;
      }
    }
  }

  isSoundPlaying = [(FMDAccessoryAudioController *)self isSoundPlaying];
  if (isSoundPlaying)
  {
    v13 = sub_1000070C0(isSoundPlaying);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      lastAccessory3 = [(FMDAccessoryAudioController *)self lastAccessory];
      *buf = 138412290;
      v22 = lastAccessory3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Stopping sound for accessory %@", buf, 0xCu);
    }

    [(FMDAccessoryAudioController *)self setRampDownDuration:0.0];
    lastAccessory4 = [(FMDAccessoryAudioController *)self lastAccessory];
    [(FMDAccessoryAudioController *)self stopPlayingForAccessory:lastAccessory4 completion:0];
LABEL_10:
  }

LABEL_11:
}

- (void)pickableRoutesChangedNotification:(id)notification
{
  v4 = sub_1000070C0(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController pickableRoutesChangedNotification", buf, 2u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(FMDAccessoryAudioController *)self monitoredAccessories];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        audioRoutingIdentifier = [v9 audioRoutingIdentifier];
        v11 = [(FMDAccessoryAudioController *)self routeForAccessoryIdentifier:audioRoutingIdentifier];

        if (v11)
        {
          monitoredAccessoriesCompletionBlocks = [(FMDAccessoryAudioController *)self monitoredAccessoriesCompletionBlocks];
          audioRoutingIdentifier2 = [v9 audioRoutingIdentifier];
          v14 = [monitoredAccessoriesCompletionBlocks objectForKey:audioRoutingIdentifier2];

          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100006930;
          v28[3] = &unk_100014FE8;
          v29 = v14;
          v15 = v14;
          [(FMDAccessoryAudioController *)self stopMonitoringRoutableAccessory:v9 completion:v28];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  pickedRoute = [(FMDAccessoryAudioController *)self pickedRoute];
  lastAccessory = [(FMDAccessoryAudioController *)self lastAccessory];
  audioRoutingIdentifier3 = [lastAccessory audioRoutingIdentifier];

  if (!audioRoutingIdentifier3 || ([pickedRoute routeID], (v19 = objc_claimAutoreleasedReturnValue()) == 0) || (v20 = v19, objc_msgSend(pickedRoute, "routeID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "rangeOfString:", audioRoutingIdentifier3), v21, v20, v22 == 0x7FFFFFFFFFFFFFFFLL))
  {
    isSoundPlaying = [(FMDAccessoryAudioController *)self isSoundPlaying];
    if (isSoundPlaying)
    {
      v24 = sub_1000070C0(isSoundPlaying);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        lastAccessory2 = [(FMDAccessoryAudioController *)self lastAccessory];
        *buf = 138412290;
        v35 = lastAccessory2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Stopping sound for accessory %@", buf, 0xCu);
      }

      [(FMDAccessoryAudioController *)self setRampDownDuration:0.0];
      lastAccessory3 = [(FMDAccessoryAudioController *)self lastAccessory];
      [(FMDAccessoryAudioController *)self stopPlayingForAccessory:lastAccessory3 completion:0];
    }
  }
}

- (BOOL)isAccessoryBeingMonitored:(id)monitored
{
  monitoredCopy = monitored;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  monitoredAccessories = [(FMDAccessoryAudioController *)self monitoredAccessories];
  v6 = [monitoredAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(monitoredAccessories);
        }

        audioRoutingIdentifier = [*(*(&v13 + 1) + 8 * i) audioRoutingIdentifier];
        audioRoutingIdentifier2 = [monitoredCopy audioRoutingIdentifier];
        v11 = [audioRoutingIdentifier isEqualToString:audioRoutingIdentifier2];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [monitoredAccessories countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_audioCategory
{
  v2 = sub_1000070C0(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"FindMyAudioDevice";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Audio Category %@", &v4, 0xCu);
  }

  return @"FindMyAudioDevice";
}

- (FMDAccessoryAudioControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end