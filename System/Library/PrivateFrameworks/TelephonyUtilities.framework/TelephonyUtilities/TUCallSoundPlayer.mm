@interface TUCallSoundPlayer
- (BOOL)attemptToPlayDescriptor:(id)descriptor completion:(id)completion;
- (BOOL)attemptToPlaySoundType:(int64_t)type forCall:(id)call completion:(id)completion;
- (BOOL)isPlaying;
- (TUCallSoundPlayer)init;
- (void)dealloc;
- (void)stopPlaying;
@end

@implementation TUCallSoundPlayer

- (void)stopPlaying
{
  player = [(TUCallSoundPlayer *)self player];
  [player stopPlaying];

  [(TUCallSoundPlayer *)self setCurrentlyPlayingSoundType:0];
}

- (TUCallSoundPlayer)init
{
  v5.receiver = self;
  v5.super_class = TUCallSoundPlayer;
  v2 = [(TUCallSoundPlayer *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUSoundPlayer);
    [(TUCallSoundPlayer *)v2 setPlayer:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "TUCallSoundPlayer dealloc", buf, 2u);
  }

  [(TUCallSoundPlayer *)self stopPlaying];
  v4.receiver = self;
  v4.super_class = TUCallSoundPlayer;
  [(TUCallSoundPlayer *)&v4 dealloc];
}

- (BOOL)attemptToPlaySoundType:(int64_t)type forCall:(id)call completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  callCopy = call;
  completionCopy = completion;
  v10 = [[TUCallSoundPlayerDescriptor alloc] initWithSoundType:type call:callCopy];
  if (v10)
  {
    v11 = [(TUCallSoundPlayer *)self attemptToPlayDescriptor:v10 completion:completionCopy];
  }

  else
  {
    v12 = TUDefaultLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      typeCopy = type;
      v16 = 2112;
      v17 = callCopy;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Not playing sound since no valid sound descriptor was returned for type=%lu call=%@", &v14, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)attemptToPlayDescriptor:(id)descriptor completion:(id)completion
{
  *&v38[5] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  completionCopy = completion;
  isPlaying = [(TUCallSoundPlayer *)self isPlaying];
  if (isPlaying && (v9 = [descriptorCopy soundType], isPlaying = -[TUCallSoundPlayer currentlyPlayingSoundType](self, "currentlyPlayingSoundType"), v9 == isPlaying))
  {
    v10 = 0;
  }

  else
  {
    v11 = TUDefaultLog(isPlaying);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v38 = descriptorCopy;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Playing %@", buf, 0xCu);
    }

    if ([descriptorCopy audioPlayingWarmupNeeded])
    {
      v12 = CUTWeakLinkClass();
      v13 = TUDefaultLog(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        hasActiveAudioSession = [v12 hasActiveAudioSession];
        *buf = 67109378;
        v38[0] = hasActiveAudioSession;
        LOWORD(v38[1]) = 2112;
        *(&v38[1] + 2) = descriptorCopy;
        _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] audio stack ready: %d for %@", buf, 0x12u);
      }

      if (([v12 hasActiveAudioSession] & 1) == 0 && objc_msgSend(descriptorCopy, "soundType") == 1)
      {
        v15 = dispatch_semaphore_create(0);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v31 = MEMORY[0x1E69E9820];
        v32 = 3221225472;
        v33 = __56__TUCallSoundPlayer_attemptToPlayDescriptor_completion___block_invoke;
        v34 = &unk_1E7426808;
        v17 = descriptorCopy;
        v35 = v17;
        v18 = v15;
        v36 = v18;
        v19 = [defaultCenter addObserverForName:@"TUCallAudioStackReadyNotification" object:0 queue:0 usingBlock:&v31];

        v21 = TUDefaultLog(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v38 = v17;
          _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] waiting for AVAudioClient setup to play %@", buf, 0xCu);
        }

        v22 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v18, v22);
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 removeObserver:v19];

        v25 = TUDefaultLog(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v38 = v17;
          _os_log_impl(&dword_1956FD000, v25, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] finished waiting for AVAudioClient setup to play %@", buf, 0xCu);
        }
      }
    }

    player = [(TUCallSoundPlayer *)self player];
    sound = [descriptorCopy sound];
    unsignedIntValue = [sound unsignedIntValue];
    iterations = [descriptorCopy iterations];
    [descriptorCopy pauseDuration];
    [player playSound:unsignedIntValue iterations:iterations pauseDurationBetweenIterations:completionCopy completion:?];

    -[TUCallSoundPlayer setCurrentlyPlayingSoundType:](self, "setCurrentlyPlayingSoundType:", [descriptorCopy soundType]);
    v10 = 1;
  }

  return v10;
}

intptr_t __56__TUCallSoundPlayer_attemptToPlayDescriptor_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "[TUCallSoundPlayer] received notification that AVAudioClient setup has completed for %@", &v5, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)isPlaying
{
  player = [(TUCallSoundPlayer *)self player];
  isPlaying = [player isPlaying];

  return isPlaying;
}

@end