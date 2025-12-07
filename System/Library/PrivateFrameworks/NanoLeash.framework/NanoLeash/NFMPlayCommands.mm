@interface NFMPlayCommands
- (BOOL)_isFaceTimeOrCameraFrontmost;
- (BOOL)_isInFaceTimeCall;
- (BOOL)_isInPhoneOrFaceTimeCall;
- (BOOL)_isInternalInstall;
- (BOOL)_playSoundAtPath:(id)path;
- (BOOL)flashLEDIfAppropriate;
- (BOOL)flashLights;
- (BOOL)playFindLocallySound;
- (BOOL)playSoundAndFlash;
- (NFMPlayCommands)init;
- (void)beginObservingTUChanges;
- (void)cancelAllAlerts:(id)alerts;
- (void)dealloc;
- (void)flashLED;
- (void)playNearbySound;
- (void)playbackStateChanged:(id)changed;
- (void)setFlashEnabled:(BOOL)enabled;
- (void)updateFlashState;
@end

@implementation NFMPlayCommands

- (NFMPlayCommands)init
{
  v8.receiver = self;
  v8.super_class = NFMPlayCommands;
  v2 = [(NFMPlayCommands *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(NFMPlayCommands *)v2 beginObservingTUChanges];
    if ([(NFMPlayCommands *)v3 _isInternalInstall])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, HandleAlertCancellation, @"3780-9e0b-fded-d875-7ab7-ac8e", 0, 0);
      v5 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v5, v3, HandlePlaySound, @"1def-b278-bc84-97f5-8ec2-2b7a", 0, 0);
      v6 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v6, v3, HandlePlaySoundAndLED, @"7e6e-6f4c-e43b-89f6-6a8c-af04", 0, 0);
    }
  }

  return v3;
}

- (void)beginObservingTUChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_cancelAllAlerts_ name:*MEMORY[0x277D6EFF0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_cancelAllAlerts_ name:*MEMORY[0x277D6F038] object:0];

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
}

- (BOOL)_isInternalInstall
{
  if (_isInternalInstall_onceToken != -1)
  {
    [NFMPlayCommands _isInternalInstall];
  }

  return _isInternalInstall___isInternalInstall;
}

- (void)dealloc
{
  if ([(NFMPlayCommands *)self _isInternalInstall])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"3780-9e0b-fded-d875-7ab7-ac8e", 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, @"1def-b278-bc84-97f5-8ec2-2b7a", 0);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v5, self, @"7e6e-6f4c-e43b-89f6-6a8c-af04", 0);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = NFMPlayCommands;
  [(NFMPlayCommands *)&v7 dealloc];
}

uint64_t __37__NFMPlayCommands__isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  _isInternalInstall___isInternalInstall = result;
  return result;
}

- (BOOL)playFindLocallySound
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NanoLeash.framework"];
  v4 = [v3 pathForResource:@"ping" ofType:@"caf"];

  LOBYTE(self) = [(NFMPlayCommands *)self _playSoundAtPath:v4];
  return self;
}

- (BOOL)_playSoundAtPath:(id)path
{
  v47 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pathCopy isDirectory:0];
  if (v5)
  {
    initAuxiliarySession = [objc_alloc(MEMORY[0x277CEFC98]) initAuxiliarySession];
    v7 = *MEMORY[0x277CEFC70];
    v43 = 0;
    [initAuxiliarySession setCategory:v7 error:&v43];
    v8 = v43;
    v9 = v8;
    if (v8)
    {
      v10 = nfm_log(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NFMPlayCommands _playSoundAtPath:v10];
      }

      v11 = 0;
    }

    else
    {
      avQueuePlayer = self->_avQueuePlayer;
      if (avQueuePlayer)
      {
        items = [(AVQueuePlayer *)avQueuePlayer items];
        items2 = [(AVQueuePlayer *)self->_avQueuePlayer items];
        v15 = [items2 count];

        if (v15)
        {
          v38 = items;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v17 = items;
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v40;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v40 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                asset = [*(*(&v39 + 1) + 8 * i) asset];
                v23 = [asset URL];

                v24 = [v23 isEqual:v5];
                if (v24)
                {
                  v36 = nfm_log(v24);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v45 = v23;
                    _os_log_impl(&dword_25B17F000, v36, OS_LOG_TYPE_DEFAULT, "Already playing requested sound - %@, skipping", buf, 0xCu);
                  }

                  v11 = 0;
                  v9 = 0;
                  goto LABEL_31;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          items = v38;
          v9 = 0;
        }

        v25 = nfm_log(v16);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B17F000, v25, OS_LOG_TYPE_DEFAULT, "Queing a sound", buf, 2u);
        }

        v26 = self->_avQueuePlayer;
        v27 = [MEMORY[0x277CE65B0] playerItemWithURL:v5];
        [(AVQueuePlayer *)v26 insertItem:v27 afterItem:0];
      }

      else
      {
        v28 = [objc_alloc(MEMORY[0x277CE65F8]) initWithURL:v5];
        items = self->_avQueuePlayer;
        self->_avQueuePlayer = v28;
      }

      [(AVQueuePlayer *)self->_avQueuePlayer setAllowsExternalPlayback:0];
      LODWORD(v29) = 1.0;
      [(AVQueuePlayer *)self->_avQueuePlayer setVolume:v29];
      [(AVQueuePlayer *)self->_avQueuePlayer _setClientName:@"LocatePhone"];
      [(AVQueuePlayer *)self->_avQueuePlayer setAudioSession:initAuxiliarySession];
      _isInFaceTimeCall = [(NFMPlayCommands *)self _isInFaceTimeCall];
      if (_isInFaceTimeCall)
      {
        v31 = nfm_log(_isInFaceTimeCall);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B17F000, v31, OS_LOG_TYPE_DEFAULT, "User is in a FaceTime Video Call.", buf, 2u);
        }

        v32 = 9;
      }

      else
      {
        v32 = 10;
      }

      [(AVQueuePlayer *)self->_avQueuePlayer _setClientPriority:v32, v38];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_playbackStateChanged_ name:*MEMORY[0x277CE60C0] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_playbackStateChanged_ name:*MEMORY[0x277CE60D0] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel_playbackStateChanged_ name:*MEMORY[0x277CE6150] object:0];

      [(AVQueuePlayer *)self->_avQueuePlayer play];
      v11 = 1;
    }

LABEL_31:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)playSoundAndFlash
{
  playFindLocallySound = [(NFMPlayCommands *)self playFindLocallySound];
  v4 = nfm_log(playFindLocallySound);
  v5 = v4;
  if (playFindLocallySound)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "########### Played Sound", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NFMPlayCommands *)v5 playSoundAndFlash];
  }

  [(NFMPlayCommands *)self flashLights];
  return playFindLocallySound;
}

- (BOOL)flashLights
{
  flashLEDIfAppropriate = [(NFMPlayCommands *)self flashLEDIfAppropriate];
  system("/System/Library/PrivateFrameworks/NanoLeash.framework/findme");
  return flashLEDIfAppropriate;
}

- (void)playNearbySound
{
  if (CFPreferencesGetAppBooleanValue(@"disableNearbySound", @"com.apple.internal.watchprecisionfinding", 0) && (v3 = [(NFMPlayCommands *)self _isInternalInstall], v3))
  {
    v4 = nfm_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### Watch is nearby, default set, skipping sound", buf, 2u);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"chirp" ofType:@"caf"];

    [(NFMPlayCommands *)self _playSoundAtPath:v6];
  }
}

- (BOOL)flashLEDIfAppropriate
{
  if (![(NFMPlayCommands *)self _isDeviceLocked]|| [(NFMPlayCommands *)self _isFaceTimeOrCameraFrontmost]|| [(NFMPlayCommands *)self _isInFaceTimeCall])
  {
    if (self->_flashEnabled)
    {
      [(NFMPlayCommands *)self setFlashEnabled:0];
      self->_flashEnabled = 0;
    }

    [(NSTimer *)self->_flashScheduler invalidate];
    flashScheduler = self->_flashScheduler;
    self->_flashScheduler = 0;

    result = 0;
    self->_flashCount = 0;
  }

  else
  {
    [(NFMPlayCommands *)self flashLED];
    return 1;
  }

  return result;
}

- (void)cancelAllAlerts:(id)alerts
{
  [(AVQueuePlayer *)self->_avQueuePlayer pause];
  avQueuePlayer = self->_avQueuePlayer;
  self->_avQueuePlayer = 0;

  [(NSTimer *)self->_flashScheduler invalidate];
  flashScheduler = self->_flashScheduler;
  self->_flashScheduler = 0;

  self->_flashCount = 0;
  self->_flashEnabled = 0;

  [(NFMPlayCommands *)self setFlashEnabled:0];
}

- (void)playbackStateChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = nfm_log(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    v14 = 138412290;
    v15 = name;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "Playback state changed: %@", &v14, 0xCu);
  }

  name2 = [changedCopy name];
  v8 = *MEMORY[0x277CE6150];
  v9 = [name2 isEqualToString:*MEMORY[0x277CE6150]];

  if (v9)
  {
    [(AVQueuePlayer *)self->_avQueuePlayer pause];
  }

  avQueuePlayer = self->_avQueuePlayer;
  self->_avQueuePlayer = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CE60D0] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:v8 object:0];
}

- (void)flashLED
{
  v3 = nfm_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "########### Flash Torch", v13, 2u);
  }

  flashScheduler = self->_flashScheduler;
  self->_flashCount += 10;
  if (!flashScheduler)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [date dateByAddingTimeInterval:0.2];
    v8 = [v5 initWithFireDate:v7 interval:self target:sel_updateFlashState selector:0 userInfo:1 repeats:0.2];
    v9 = self->_flashScheduler;
    self->_flashScheduler = v8;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_flashScheduler forMode:*MEMORY[0x277CBE738]];

    currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.2];
    [currentRunLoop2 runUntilDate:v12];
  }
}

- (void)setFlashEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  v4 = nfm_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = enabledCopy;
    _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### setFlashEnabled: %d", buf, 8u);
  }

  v5 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5EA8]];
  hasTorch = [v5 hasTorch];
  if (hasTorch)
  {
    v10 = 0;
    [v5 lockForConfiguration:&v10];
    v7 = v10;
    [v5 setTorchMode:enabledCopy];
    unlockForConfiguration = [v5 unlockForConfiguration];
    if (v7)
    {
      v9 = nfm_log(unlockForConfiguration);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NFMPlayCommands *)v7 setFlashEnabled:v5, v9];
      }
    }
  }

  else
  {
    v7 = nfm_log(hasTorch);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NFMPlayCommands *)v5 setFlashEnabled:v7];
    }
  }
}

- (void)updateFlashState
{
  flashCount = self->_flashCount;
  v4 = nfm_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (flashCount <= 0)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### Cleared Flash", buf, 2u);
    }

    [(NSTimer *)self->_flashScheduler invalidate];
    flashScheduler = self->_flashScheduler;
    self->_flashScheduler = 0;

    self->_flashCount = 0;
    self->_flashEnabled = 0;
    [(NFMPlayCommands *)self setFlashEnabled:0];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "########### Schedule Flash", v7, 2u);
    }

    self->_flashEnabled = !self->_flashEnabled;
    [(NFMPlayCommands *)self setFlashEnabled:?];
    --self->_flashCount;
  }
}

- (BOOL)_isFaceTimeOrCameraFrontmost
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_286C65908];
  v2 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:?];
  v3 = MEMORY[0x277D46FA8];
  descriptor = [MEMORY[0x277D46FB0] descriptor];
  v18 = v2;
  v5 = [v3 statesForPredicate:v2 withDescriptor:descriptor error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  taskState = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (taskState)
  {
    v7 = taskState;
    v8 = 0;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = nfm_log(taskState);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          process = [v11 process];
          bundle = [process bundle];
          identifier = [bundle identifier];
          v16 = [v11 description];
          *buf = 138412546;
          v26 = identifier;
          v27 = 2112;
          v28 = v16;
          _os_log_impl(&dword_25B17F000, v12, OS_LOG_TYPE_DEFAULT, "########### Application state: %@, %@", buf, 0x16u);
        }

        taskState = [v11 taskState];
        v8 |= taskState == 4;
        ++v10;
      }

      while (v7 != v10);
      taskState = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
      v7 = taskState;
    }

    while (taskState);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)_isInFaceTimeCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [mEMORY[0x277D6EDF8] currentVideoCallCount] != 0;

  return v3;
}

- (BOOL)_isInPhoneOrFaceTimeCall
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  if (currentCalls)
  {
    _isInFaceTimeCall = 1;
  }

  else
  {
    _isInFaceTimeCall = [(NFMPlayCommands *)self _isInFaceTimeCall];
  }

  return _isInFaceTimeCall;
}

- (void)setFlashEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25B17F000, a2, OS_LOG_TYPE_ERROR, "########### No Torch! (%@)", &v2, 0xCu);
}

- (void)setFlashEnabled:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25B17F000, log, OS_LOG_TYPE_ERROR, "########### Error adjusting flash: %@ (For Device: %@)", &v3, 0x16u);
}

@end