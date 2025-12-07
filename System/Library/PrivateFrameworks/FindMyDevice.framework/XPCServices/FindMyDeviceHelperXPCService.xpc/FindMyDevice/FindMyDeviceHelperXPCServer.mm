@interface FindMyDeviceHelperXPCServer
- (BOOL)isEntitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FMDAccessoryAudioController)accessoryAudioController;
- (FMDMessageAudioController)messageAudioController;
- (id)_disableBiometricID;
- (id)getManagedLostModeFileURL;
- (id)getNeedsLocateAckLostModeFileURL;
- (void)_stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion;
- (void)_stopSoundTimerFired:(id)fired;
- (void)_updateLostModeInfo:(id)info toFile:(id)file completion:(id)completion;
- (void)disableBiometricIDWithCompletion:(id)completion;
- (void)invalidateStopSoundTimer;
- (void)setTimeoutForDuration:(double)duration;
- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion;
- (void)startPlayingSoundForMessage:(id)message completion:(id)completion;
- (void)stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion;
- (void)stopSoundMessageWithCompletion:(id)completion;
- (void)updateManagedLostModeInfo:(id)info completion:(id)completion;
- (void)updateNeedsLocateAckLostModeInfo:(id)info completion:(id)completion;
- (void)waitForRoutableAccessory:(id)accessory timeout:(double)timeout completion:(id)completion;
@end

@implementation FindMyDeviceHelperXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_1000070C0(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", buf, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceHelperXPCInterface];
  [v12 setClasses:v11 forSelector:"startPlayingSoundForAccessory:duration:rampUpDuration:channels:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"stopPlayingForAccessory:rampDownDuration:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"waitForRoutableAccessory:timeout:completion:" argumentIndex:0 ofReply:0];
  [v12 setClasses:v11 forSelector:"startPlayingSoundForMessage:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"stopSoundMessageWithCompletion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"didAddLocalFindableAccessory:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"didRemoveLocalFindableAccessory:completion:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v12];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion
{
  accessoryCopy = accessory;
  channelsCopy = channels;
  completionCopy = completion;
  v16 = +[NSXPCConnection currentConnection];
  v17 = [v16 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v17 && (v18 = [&__kCFBooleanTrue isEqual:v17], (v18 & 1) != 0))
  {
    v19 = sub_1000070C0(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = accessoryCopy;
      v41 = 2048;
      durationCopy = duration;
      v43 = 2048;
      upDurationCopy = upDuration;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Start playing sound for accessory: %@ duration: %f rampUpDuration: %f", buf, 0x20u);
    }

    if (accessoryCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007FA4;
      block[3] = &unk_1000152C0;
      upDurationCopy2 = upDuration;
      block[4] = self;
      v32 = accessoryCopy;
      v33 = channelsCopy;
      durationCopy2 = duration;
      v34 = completionCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    else if (completionCopy)
    {
      v28 = [NSError alloc];
      v37 = NSLocalizedFailureReasonErrorKey;
      v38 = @"Accessory cannot be nil";
      v29 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v30 = [v28 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v29];
      (*(completionCopy + 2))(completionCopy, v30);
    }
  }

  else
  {
    v20 = NSStringFromSelector(a2);
    v21 = [NSString stringWithFormat:@"Entitlement not found for %@", v20];

    v22 = [NSError alloc];
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_100017B40;
    }

    v45 = NSLocalizedFailureReasonErrorKey;
    v46 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v25 = [v22 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v24];

    v27 = sub_1000070C0(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v25);
    }
  }
}

- (void)stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v11 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v12 && ([&__kCFBooleanTrue isEqual:v12] & 1) != 0)
  {
    [(FindMyDeviceHelperXPCServer *)self _stopPlayingForAccessory:accessoryCopy rampDownDuration:completionCopy completion:duration];
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v14 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v15 = [NSError alloc];
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_100017B40;
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v18 = [v15 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v17];

    v20 = sub_1000070C0(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18);
    }
  }
}

- (void)_stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v10 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = accessoryCopy;
    v22 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stop playing sound for accessory: %@ rampDownDuration: %f", buf, 0x16u);
  }

  if (accessoryCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008590;
    v14[3] = &unk_100015310;
    durationCopy2 = duration;
    v14[4] = self;
    v15 = accessoryCopy;
    v16 = completionCopy;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else if (completionCopy)
  {
    v11 = [NSError alloc];
    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"Accessory cannot be nil";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)waitForRoutableAccessory:(id)accessory timeout:(double)timeout completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = accessoryCopy;
    v32 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wait for routable accessories: %@ timeout: %f", buf, 0x16u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = [v12 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v13 && ([&__kCFBooleanTrue isEqual:v13] & 1) != 0)
  {
    v14 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008998;
    block[3] = &unk_100015310;
    timeoutCopy2 = timeout;
    v24 = accessoryCopy;
    selfCopy = self;
    v26 = completionCopy;
    dispatch_after(v14, &_dispatch_main_q, block);

    v15 = v24;
  }

  else
  {
    v16 = NSStringFromSelector(a2);
    v15 = [NSString stringWithFormat:@"Entitlement not found for %@", v16];

    v17 = [NSError alloc];
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = &stru_100017B40;
    }

    v28 = NSLocalizedFailureReasonErrorKey;
    v29 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [v17 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v19];

    v22 = sub_1000070C0(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }
}

- (void)setTimeoutForDuration:(double)duration
{
  v5 = sub_1000070C0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSThread currentThread];
    v11 = 134218240;
    durationCopy = duration;
    v13 = 1024;
    isMainThread = [v6 isMainThread];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set timeout for duration: %f inMainThread: %d", &v11, 0x12u);
  }

  stopSoundTimer = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [stopSoundTimer invalidate];

  v8 = [NSTimer timerWithTimeInterval:self target:"_stopSoundTimerFired:" selector:0 userInfo:0 repeats:duration];
  [(FindMyDeviceHelperXPCServer *)self setStopSoundTimer:v8];

  v9 = +[NSRunLoop currentRunLoop];
  stopSoundTimer2 = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [v9 addTimer:stopSoundTimer2 forMode:NSRunLoopCommonModes];
}

- (void)_stopSoundTimerFired:(id)fired
{
  v4 = sub_1000070C0(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop sound timer fired", v6, 2u);
  }

  currentAccessory = [(FindMyDeviceHelperXPCServer *)self currentAccessory];
  [(FindMyDeviceHelperXPCServer *)self _stopPlayingForAccessory:currentAccessory rampDownDuration:0 completion:0.5];
}

- (void)invalidateStopSoundTimer
{
  v3 = sub_1000070C0(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating stop sound timer", v5, 2u);
  }

  stopSoundTimer = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [stopSoundTimer invalidate];

  [(FindMyDeviceHelperXPCServer *)self setStopSoundTimer:0];
}

- (FMDAccessoryAudioController)accessoryAudioController
{
  accessoryAudioController = self->_accessoryAudioController;
  if (!accessoryAudioController)
  {
    v4 = objc_alloc_init(FMDAccessoryAudioController);
    v5 = self->_accessoryAudioController;
    self->_accessoryAudioController = v4;

    [(FMDAccessoryAudioController *)self->_accessoryAudioController setDelegate:self];
    accessoryAudioController = self->_accessoryAudioController;
  }

  return accessoryAudioController;
}

- (FMDMessageAudioController)messageAudioController
{
  messageAudioController = self->_messageAudioController;
  if (!messageAudioController)
  {
    v4 = objc_alloc_init(FMDMessageAudioController);
    v5 = self->_messageAudioController;
    self->_messageAudioController = v4;

    messageAudioController = self->_messageAudioController;
  }

  return messageAudioController;
}

- (void)disableBiometricIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[FindMyDeviceHelperXPCServer disableBiometricIDWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  v7 = +[NSXPCConnection currentConnection];
  v8 = [v7 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v8 && ([&__kCFBooleanTrue isEqual:v8] & 1) != 0)
  {
    _disableBiometricID = [(FindMyDeviceHelperXPCServer *)self _disableBiometricID];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _disableBiometricID);
    }
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    _disableBiometricID = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = [NSError alloc];
    if (_disableBiometricID)
    {
      v12 = _disableBiometricID;
    }

    else
    {
      v12 = &stru_100017B40;
    }

    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v13];

    v16 = sub_1000070C0(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)updateNeedsLocateAckLostModeInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[FindMyDeviceHelperXPCServer updateNeedsLocateAckLostModeInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    if (infoCopy)
    {
      if ([infoCopy lostModeType] == 5)
      {
        getNeedsLocateAckLostModeFileURL = [(FindMyDeviceHelperXPCServer *)self getNeedsLocateAckLostModeFileURL];
        [(FindMyDeviceHelperXPCServer *)self _updateLostModeInfo:infoCopy toFile:getNeedsLocateAckLostModeFileURL completion:completionCopy];
        goto LABEL_25;
      }

      lostModeType = [infoCopy lostModeType];
      v24 = NSStringFromSelector(a2);
      getNeedsLocateAckLostModeFileURL = [NSString stringWithFormat:@"LostMode type (%ld) passed to %@ is not valid", lostModeType, v24];

      v25 = [NSError alloc];
      if (getNeedsLocateAckLostModeFileURL)
      {
        v26 = getNeedsLocateAckLostModeFileURL;
      }

      else
      {
        v26 = &stru_100017B40;
      }

      v29 = NSLocalizedFailureReasonErrorKey;
      v30 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v15 = [v25 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v27];

      v17 = sub_1000070C0(v28);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }

    else
    {
      v18 = NSStringFromSelector(a2);
      getNeedsLocateAckLostModeFileURL = [NSString stringWithFormat:@"LostMode info not passed to %@", v18];

      v19 = [NSError alloc];
      if (getNeedsLocateAckLostModeFileURL)
      {
        v20 = getNeedsLocateAckLostModeFileURL;
      }

      else
      {
        v20 = &stru_100017B40;
      }

      v31 = NSLocalizedFailureReasonErrorKey;
      v32 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v15 = [v19 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v21];

      v17 = sub_1000070C0(v22);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    getNeedsLocateAckLostModeFileURL = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [NSError alloc];
    if (getNeedsLocateAckLostModeFileURL)
    {
      v13 = getNeedsLocateAckLostModeFileURL;
    }

    else
    {
      v13 = &stru_100017B40;
    }

    v33 = NSLocalizedFailureReasonErrorKey;
    v34 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v15 = [v12 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v14];

    v17 = sub_1000070C0(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v15);
  }

LABEL_25:
}

- (void)updateManagedLostModeInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[FindMyDeviceHelperXPCServer updateManagedLostModeInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    if (infoCopy)
    {
      if ([infoCopy lostModeType] == 3)
      {
        getManagedLostModeFileURL = [(FindMyDeviceHelperXPCServer *)self getManagedLostModeFileURL];
        [(FindMyDeviceHelperXPCServer *)self _updateLostModeInfo:infoCopy toFile:getManagedLostModeFileURL completion:completionCopy];
        goto LABEL_25;
      }

      lostModeType = [infoCopy lostModeType];
      v24 = NSStringFromSelector(a2);
      getManagedLostModeFileURL = [NSString stringWithFormat:@"LostMode type (%ld) passed to %@ is not valid", lostModeType, v24];

      v25 = [NSError alloc];
      if (getManagedLostModeFileURL)
      {
        v26 = getManagedLostModeFileURL;
      }

      else
      {
        v26 = &stru_100017B40;
      }

      v29 = NSLocalizedFailureReasonErrorKey;
      v30 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v15 = [v25 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v27];

      v17 = sub_1000070C0(v28);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }

    else
    {
      v18 = NSStringFromSelector(a2);
      getManagedLostModeFileURL = [NSString stringWithFormat:@"LostMode info not passed to %@", v18];

      v19 = [NSError alloc];
      if (getManagedLostModeFileURL)
      {
        v20 = getManagedLostModeFileURL;
      }

      else
      {
        v20 = &stru_100017B40;
      }

      v31 = NSLocalizedFailureReasonErrorKey;
      v32 = v20;
      v21 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v15 = [v19 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v21];

      v17 = sub_1000070C0(v22);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    getManagedLostModeFileURL = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [NSError alloc];
    if (getManagedLostModeFileURL)
    {
      v13 = getManagedLostModeFileURL;
    }

    else
    {
      v13 = &stru_100017B40;
    }

    v33 = NSLocalizedFailureReasonErrorKey;
    v34 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v15 = [v12 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v14];

    v17 = sub_1000070C0(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v15);
  }

LABEL_25:
}

- (void)startPlayingSoundForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v9 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[FindMyDeviceHelperXPCServer startPlayingSoundForMessage:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    messageAudioController = [(FindMyDeviceHelperXPCServer *)self messageAudioController];
    v11 = +[NSXPCConnection currentConnection];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009D24;
    v20[3] = &unk_100014478;
    v21 = messageAudioController;
    v12 = messageAudioController;
    [v11 setInvalidationHandler:v20];

    [(__CFString *)v12 playSoundWithMessage:messageCopy completion:completionCopy];
    v13 = v21;
  }

  else
  {
    v14 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

    v15 = [NSError alloc];
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = &stru_100017B40;
    }

    v22 = NSLocalizedFailureReasonErrorKey;
    v23 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [v15 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v17];

    v19 = sub_1000070C0(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v13);
    }
  }
}

- (void)stopSoundMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_1000070C0(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[FindMyDeviceHelperXPCServer stopSoundMessageWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    messageAudioController = [(FindMyDeviceHelperXPCServer *)self messageAudioController];
    [(__CFString *)messageAudioController stopSoundWithCompletion:completionCopy];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    messageAudioController = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = [NSError alloc];
    if (messageAudioController)
    {
      v10 = messageAudioController;
    }

    else
    {
      v10 = &stru_100017B40;
    }

    v15 = NSLocalizedFailureReasonErrorKey;
    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [v9 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v11];

    v14 = sub_1000070C0(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)_updateLostModeInfo:(id)info toFile:(id)file completion:(id)completion
{
  infoCopy = info;
  fileCopy = file;
  completionCopy = completion;
  lostModeEnabled = [infoCopy lostModeEnabled];
  v12 = lostModeEnabled;
  v13 = sub_1000070C0(lostModeEnabled);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    selfCopy = self;
    if (v14)
    {
      sub_10000B2A8();
    }

    v57[0] = @"lostModeEnabled";
    v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy lostModeEnabled]);
    v58[0] = v15;
    v57[1] = @"lostModeType";
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [infoCopy lostModeType]);
    v58[1] = v16;
    v57[2] = @"disableSlideToUnlock";
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy disableSlideToUnlock]);
    v58[2] = v17;
    v57[3] = @"lostModeMessage";
    message = [infoCopy message];
    v50 = fileCopy;
    v19 = message;
    if (message)
    {
      v20 = message;
    }

    else
    {
      v20 = &stru_100017B40;
    }

    v58[3] = v20;
    v57[4] = @"lostModeOwnerNumber";
    phoneNumber = [infoCopy phoneNumber];
    v22 = phoneNumber;
    if (phoneNumber)
    {
      v23 = phoneNumber;
    }

    else
    {
      v23 = &stru_100017B40;
    }

    v58[4] = v23;
    v57[5] = @"lostModeFacetimeCapable";
    v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy facetimeCapable]);
    v58[5] = v24;
    v57[6] = @"lostModeFootnoteTextPrefKey";
    footnoteText = [infoCopy footnoteText];
    v26 = footnoteText;
    if (footnoteText)
    {
      v27 = footnoteText;
    }

    else
    {
      v27 = &stru_100017B40;
    }

    v58[6] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:7];

    fileCopy = v50;
    uRLByDeletingLastPathComponent = [v50 URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];
    v31 = +[NSFileManager defaultManager];
    v32 = [v31 fileExistsAtPath:path];

    if ((v32 & 1) == 0)
    {
      v33 = +[NSFileManager defaultManager];
      v54 = 0;
      [v33 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v54];
      v34 = v54;

      if (v34)
      {
        v36 = sub_1000070C0(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10000B31C();
        }

        fileCopy = v50;
      }
    }

    v37 = [NSPropertyListSerialization dataWithPropertyList:v28 format:200 options:0 error:0];
    v53 = 0;
    [v37 writeToURL:fileCopy options:268435457 error:&v53];
    _disableBiometricID = v53;
    if (!_disableBiometricID)
    {
      v39 = [NSNumber numberWithBool:1];
      v52 = 0;
      [fileCopy setResourceValue:v39 forKey:NSURLIsExcludedFromBackupKey error:&v52];
      v40 = v52;

      if (v40)
      {
        v42 = sub_1000070C0(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10000B3A0(v50, v40, v42);
        }
      }

      v43 = sub_1000070C0(v41);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = infoCopy;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Lost mode info written on disk - %@", buf, 0xCu);
      }

      _disableBiometricID = [(FindMyDeviceHelperXPCServer *)selfCopy _disableBiometricID];

      fileCopy = v50;
    }
  }

  else
  {
    if (v14)
    {
      sub_10000B1F0();
    }

    v28 = +[NSFileManager defaultManager];
    path2 = [fileCopy path];
    v45 = [v28 fileExistsAtPath:path2];

    if (v45)
    {
      v47 = sub_1000070C0(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B264(v47);
      }

      v51 = 0;
      [v28 removeItemAtURL:fileCopy error:&v51];
      _disableBiometricID = v51;
    }

    else
    {
      _disableBiometricID = 0;
    }
  }

  v48 = +[FMDFMIPSharedStateManager sharedInstance];
  [v48 recalculateLostMode];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, _disableBiometricID);
  }
}

- (id)_disableBiometricID
{
  v2 = sub_1000070C0(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling Biometry ID...", buf, 2u);
  }

  v3 = objc_alloc_init(EmbeddedOSSupport);
  disableBiometricID = [(EmbeddedOSSupport *)v3 disableBiometricID];

  v6 = sub_1000070C0(v5);
  v7 = v6;
  if (disableBiometricID)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000B44C();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disabled Biometry ID success.", v9, 2u);
  }

  return disableBiometricID;
}

- (id)getManagedLostModeFileURL
{
  v2 = qword_10001EB98;
  if (!qword_10001EB98)
  {
    v3 = [FMSharedFileContainer alloc];
    v4 = [v3 initWithIdentifier:off_10001E7A0];
    v5 = [v4 url];
    v6 = [v5 fm_preferencesPathURLForDomain:off_10001E790];
    v7 = qword_10001EB98;
    qword_10001EB98 = v6;

    v2 = qword_10001EB98;
  }

  return v2;
}

- (id)getNeedsLocateAckLostModeFileURL
{
  v2 = qword_10001EBA0;
  if (!qword_10001EBA0)
  {
    v3 = [FMSharedFileContainer alloc];
    v4 = [v3 initWithIdentifier:off_10001E7A0];
    v5 = [v4 url];
    v6 = [v5 fm_preferencesPathURLForDomain:off_10001E798];
    v7 = qword_10001EBA0;
    qword_10001EBA0 = v6;

    v2 = qword_10001EBA0;
  }

  return v2;
}

- (BOOL)isEntitled
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.icloud.findmydeviced.access"];

  if (v6)
  {
    v7 = [&__kCFBooleanTrue isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 | v7;

  return v8 & 1;
}

@end