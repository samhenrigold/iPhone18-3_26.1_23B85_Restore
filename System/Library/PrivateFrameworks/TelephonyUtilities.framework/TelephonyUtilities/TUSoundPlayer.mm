@interface TUSoundPlayer
- (BOOL)isCurrentPlaying;
- (BOOL)isRepeatingActorPlaying;
- (TUSoundPlayer)init;
- (unsigned)soundID;
- (void)playSound:(unsigned int)sound iterations:(unint64_t)iterations pauseDurationBetweenIterations:(double)betweenIterations completion:(id)completion;
- (void)setIsCurrentPlaying:(BOOL)playing;
- (void)setSoundID:(unsigned int)d;
- (void)stopPlaying;
@end

@implementation TUSoundPlayer

- (void)stopPlaying
{
  if ([(TUSoundPlayer *)self isRepeatingActorPlaying])
  {
    repeatingActor = [(TUSoundPlayer *)self repeatingActor];
    [repeatingActor stop];

    v5 = TUDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "TUSoundPlayer: stop playing", buf, 2u);
    }

    queue = [(TUSoundPlayer *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__TUSoundPlayer_stopPlaying__block_invoke;
    block[3] = &unk_1E7424950;
    block[4] = self;
    dispatch_async(queue, block);
  }

  queue2 = [(TUSoundPlayer *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__TUSoundPlayer_stopPlaying__block_invoke_30;
  v8[3] = &unk_1E7424950;
  v8[4] = self;
  dispatch_async(queue2, v8);
}

- (BOOL)isRepeatingActorPlaying
{
  repeatingActor = [(TUSoundPlayer *)self repeatingActor];
  isRunning = [repeatingActor isRunning];

  return isRunning;
}

- (BOOL)isCurrentPlaying
{
  queue = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_currentPlaying;
}

- (TUSoundPlayer)init
{
  v11.receiver = self;
  v11.super_class = TUSoundPlayer;
  v2 = [(TUSoundPlayer *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.telephonyutilities.tusoundplayer", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(TURepeatingActor);
    repeatingActor = v2->_repeatingActor;
    v2->_repeatingActor = v6;

    v8 = objc_alloc_init(TUConfigurationProvider);
    configurationProvider = v2->_configurationProvider;
    v2->_configurationProvider = v8;
  }

  return v2;
}

- (unsigned)soundID
{
  queue = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_soundID;
}

- (void)setSoundID:(unsigned int)d
{
  queue = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_soundID = d;
}

- (void)setIsCurrentPlaying:(BOOL)playing
{
  queue = [(TUSoundPlayer *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_currentPlaying = playing;
}

- (void)playSound:(unsigned int)sound iterations:(unint64_t)iterations pauseDurationBetweenIterations:(double)betweenIterations completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v12 = TUDefaultLog(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (iterations == -1)
    {
      v13 = @"Infinite";
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:iterations];
    }

    *buf = 67109634;
    soundCopy = sound;
    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    betweenIterationsCopy = betweenIterations;
    _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Asked to play sound with soundID: %d iterations: %@ pauseDurationBetweenIterations: %f", buf, 0x1Cu);
    if (iterations != -1)
    {
    }
  }

  [(TUSoundPlayer *)self stopPlaying];
  queue = [(TUSoundPlayer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke;
  block[3] = &unk_1E74256D0;
  block[4] = self;
  soundCopy2 = sound;
  dispatch_async(queue, block);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_5;
  aBlock[3] = &unk_1E7425720;
  aBlock[4] = self;
  aBlock[5] = a2;
  aBlock[6] = iterations;
  *&aBlock[7] = betweenIterations;
  soundCopy3 = sound;
  v15 = _Block_copy(aBlock);
  repeatingActor = [(TUSoundPlayer *)self repeatingActor];
  [repeatingActor beginRepeatingAction:v15 iterations:iterations pauseDurationBetweenIterations:completionCopy completion:betweenIterations];
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setSoundID:*(a1 + 40)];
  v2 = TUDefaultLog([*(a1 + 32) setIsCurrentPlaying:1]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) soundID];
    v4 = [*(a1 + 32) isCurrentPlaying];
    v5[0] = 67109376;
    v5[1] = v3;
    v6 = 1024;
    v7 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Started to play current soundID: %d, isCurrentPlaying: %d", v5, 0xEu);
  }
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2;
  v8[3] = &unk_1E74256F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v6;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) isCurrentPlaying];
  if (v3)
  {
    if (TUSoundPlayerInfiniteIterations_block_invoke__pred__kAudioServicesPlaySystemSoundOptionLoopKey != -1)
    {
      __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_1();
    }

    if (!TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionLoopKey)
    {
      __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_2(a1, v2);
    }

    if (TUSoundPlayerInfiniteIterations_block_invoke__pred_AudioServicesPlaySystemSoundWithOptionsAudioToolbox != -1)
    {
      __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_3();
    }

    v4 = *(a1 + 56) == -1 && *(a1 + 64) == 0.0;
    v22 = TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionLoopKey;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v5 = [v8 mutableCopy];

    if (*(a1 + 72) == 36)
    {
      v10 = [*v2 configurationProvider];
      v11 = [v10 isCallHapticsEnabled];

      if ((v11 & 1) == 0)
      {
        if (TUSoundPlayerInfiniteIterations_block_invoke__pred__kAudioServicesPlaySystemSoundOptionFlagsKey != -1)
        {
          __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_4();
        }

        v12 = TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey;
        if (!TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey)
        {
          __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_5(a1, v2, &v17);
          v12 = v17;
        }

        v20 = v12;
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
        v21 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v5 addEntriesFromDictionary:v14];
      }
    }

    v15 = TUDefaultLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*v2 soundID];
      LODWORD(v17) = 67109378;
      HIDWORD(v17) = v16;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Calling AudioServicesPlaySystemSoundWithCompletion with soundID: %d options: %@", &v17, 0x12u);
    }

    (TUSoundPlayerInfiniteIterations_block_invoke__AudioServicesPlaySystemSoundWithOptions)([*(a1 + 32) soundID], v5, *(a1 + 40));
  }

  else
  {
    v5 = TUDefaultLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v2 soundID];
      LODWORD(v17) = 67109120;
      HIDWORD(v17) = v6;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "soundID: %d is stopped, don't play", &v17, 8u);
    }
  }
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_6()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionLoopKey, v1);
}

void *__80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_18()
{
  result = CUTWeakLinkSymbol();
  TUSoundPlayerInfiniteIterations_block_invoke__AudioServicesPlaySystemSoundWithOptions = result;
  return result;
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey, v1);
}

uint64_t __28__TUSoundPlayer_stopPlaying__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (TUSoundPlayerInfiniteIterations_block_invoke_2__pred_AudioServicesStopSystemSoundAudioToolbox != -1)
  {
    __28__TUSoundPlayer_stopPlaying__block_invoke_cold_1();
  }

  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) soundID];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Calling AudioServicesStopSystemSound with soundID=%d", v5, 8u);
  }

  return (TUSoundPlayerInfiniteIterations_block_invoke_2__AudioServicesStopSystemSound)([*(a1 + 32) soundID], 1);
}

void *__28__TUSoundPlayer_stopPlaying__block_invoke_2()
{
  result = CUTWeakLinkSymbol();
  TUSoundPlayerInfiniteIterations_block_invoke_2__AudioServicesStopSystemSound = result;
  return result;
}

void *__28__TUSoundPlayer_stopPlaying__block_invoke_30(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isCurrentPlaying];
  if (result)
  {
    v3 = TUDefaultLog(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) soundID];
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Stop playing current soundID: %d", v5, 8u);
    }

    return [*(a1 + 32) setIsCurrentPlaying:0];
  }

  return result;
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"TUSoundPlayer.m" lineNumber:79 description:{@"Failed to weak link string named %s", "kAudioServicesPlaySystemSoundOptionLoopKey"}];
}

void __80__TUSoundPlayer_playSound_iterations_pauseDurationBetweenIterations_completion___block_invoke_2_cold_5(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"TUSoundPlayer.m" lineNumber:89 description:{@"Failed to weak link string named %s", "kAudioServicesPlaySystemSoundOptionFlagsKey"}];

  *a3 = TUSoundPlayerInfiniteIterations_block_invoke__kAudioServicesPlaySystemSoundOptionFlagsKey;
}

@end