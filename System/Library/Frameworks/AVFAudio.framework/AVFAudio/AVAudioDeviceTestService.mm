@interface AVAudioDeviceTestService
- (AVAudioDeviceTestService)init;
- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)for;
- (BOOL)isMixerOutputEnabled;
- (BOOL)isOutputRouteBluetooth:(id)bluetooth session:(id)session;
- (BOOL)isPlaybackForTestEnabled;
- (BOOL)setVolume:(id)volume;
- (BOOL)setVolume:(id)volume session:(id)session;
- (double)calculateCrossCorrelationPeakRelativeToSource:(id)source capture:(id)capture;
- (id)convertBufferFor:(id)for sourceBuffer:(id)buffer;
- (id)stringForInterruptionReason:(unint64_t)reason;
- (id)stringForRouteChangeReason:(unint64_t)reason;
- (void)cancel;
- (void)checkSequenceValidity:(id)validity completion:(id)completion;
- (void)cleanUp;
- (void)cleanUpObservers;
- (void)configureDataSources:(id)sources session:(id)session;
- (void)configureMultiChannelMixerForOutputChannel:(int64_t)channel totalChannels:(int64_t)channels;
- (void)createAudioEngineAndProcessingChain:(id)chain session:(id)session sourceNodeBlock:(id)block;
- (void)dealloc;
- (void)passExtensionToken:(id)token;
- (void)playback:(id)playback filePath:(id)path completion:(id)completion;
- (void)playbackTone:(id)tone completion:(id)completion;
- (void)removeSystemVolumeObserver;
- (void)resetVolume:(float)volume;
- (void)setupAudioEngineFor:(id)for sourceNodeBlock:(id)block;
- (void)setupAudioSessionFor:(id)for playbackOnly:(BOOL)only completion:(id)completion;
- (void)setupAudioSessionForHearingTest:(id)test;
- (void)setupAudioSessionForHearingTestWithStatus:(id)status success:(id)success;
- (void)setupMultiChannelMixerForOutputChannel:(id)channel completion:(id)completion;
- (void)setupObservers:(id)observers;
- (void)setupVolumeObserverForVolume:(float)volume completion:(id)completion;
- (void)startRecording:(id)recording filePath:(id)path completion:(id)completion;
- (void)startWithSequence:(id)sequence completion:(id)completion;
- (void)stopAudioSession:(id)session;
- (void)stopPlayback;
- (void)stopRecording:(id)recording;
@end

@implementation AVAudioDeviceTestService

- (void)cancel
{
  engine = [(AVAudioDeviceTestService *)self engine];
  [engine stop];

  exit(0);
}

- (void)cleanUp
{
  sourceNode = [(AVAudioDeviceTestService *)self sourceNode];

  if (sourceNode)
  {
    sourceNode2 = [(AVAudioDeviceTestService *)self sourceNode];
    [sourceNode2 reset];

    [(AVAudioDeviceTestService *)self setSourceNode:0];
  }

  player = [(AVAudioDeviceTestService *)self player];

  if (player)
  {
    player2 = [(AVAudioDeviceTestService *)self player];
    [player2 stop];

    [(AVAudioDeviceTestService *)self setPlayer:0];
  }

  engine = [(AVAudioDeviceTestService *)self engine];
  if (engine)
  {
    v8 = engine;
    engine2 = [(AVAudioDeviceTestService *)self engine];
    isRunning = [engine2 isRunning];

    if (isRunning)
    {
      engine3 = [(AVAudioDeviceTestService *)self engine];
      [engine3 stop];

      engine4 = [(AVAudioDeviceTestService *)self engine];
      [engine4 reset];

      [(AVAudioDeviceTestService *)self setEngine:0];
    }
  }

  ptr = self->mPulseToneHandler.__ptr_;
  p_mPulseToneHandler = &self->mPulseToneHandler;
  if (ptr)
  {

    std::unique_ptr<PulseTone>::reset[abi:ne200100](p_mPulseToneHandler, 0);
  }
}

- (void)removeSystemVolumeObserver
{
  v11 = *MEMORY[0x1E69E9840];
  systemVolumeObserver = [(AVAudioDeviceTestService *)self systemVolumeObserver];

  if (systemVolumeObserver)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "AVAudioDeviceTestService.mm";
      v9 = 1024;
      v10 = 1893;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Removing systemVolumeObserver", &v7, 0x12u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    systemVolumeObserver2 = [(AVAudioDeviceTestService *)self systemVolumeObserver];
    [defaultCenter removeObserver:systemVolumeObserver2];
  }
}

- (void)cleanUpObservers
{
  v33 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v3 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "AVAudioDeviceTestService.mm";
    v29 = 1024;
    v30 = 1861;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d cleaning up observers", buf, 0x12u);
  }

  routeChangeObserver = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v5 = routeChangeObserver == 0;

  if (!v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    routeChangeObserver2 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [defaultCenter removeObserver:routeChangeObserver2];
  }

  interruptionObserver = [(AVAudioDeviceTestService *)self interruptionObserver];
  v9 = interruptionObserver == 0;

  if (!v9)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    interruptionObserver2 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [defaultCenter2 removeObserver:interruptionObserver2];
  }

  mediaservicesLostObserver = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  v13 = mediaservicesLostObserver == 0;

  if (!v13)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    mediaservicesLostObserver2 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [defaultCenter3 removeObserver:mediaservicesLostObserver2];
  }

  mediaservicesResetObserver = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  v17 = mediaservicesResetObserver == 0;

  if (!v17)
  {
    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    mediaservicesResetObserver2 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [defaultCenter4 removeObserver:mediaservicesResetObserver2];
  }

  [(AVAudioDeviceTestService *)self removeSystemVolumeObserver];
  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 removeObserver:self];

  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v22 = *MEMORY[0x1E69AECE0];
  v26 = 0;
  [mEMORY[0x1E69AED08] setAttribute:0 forKey:v22 error:&v26];
  v23 = v26;

  if (v23)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v23 localizedDescription];
      *buf = 136315650;
      v28 = "AVAudioDeviceTestService.mm";
      v29 = 1024;
      v30 = 1886;
      v31 = 2114;
      v32 = localizedDescription;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to unsubscribe from AVSystemController volume notification. { error=%{public}@ }", buf, 0x1Cu);
    }
  }
}

- (id)stringForRouteChangeReason:(unint64_t)reason
{
  if (reason > 8)
  {
    return &stru_1F384E730;
  }

  else
  {
    return off_1E7EF5958[reason];
  }
}

- (id)stringForInterruptionReason:(unint64_t)reason
{
  if (reason > 2)
  {
    return &stru_1F384E730;
  }

  else
  {
    return off_1E7EF5940[reason];
  }
}

- (void)setupObservers:(id)observers
{
  v50 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v5 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v47 = "AVAudioDeviceTestService.mm";
    v48 = 1024;
    v49 = 1721;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting up observers", buf, 0x12u);
  }

  routeChangeObserver = [(AVAudioDeviceTestService *)self routeChangeObserver];
  v7 = routeChangeObserver == 0;

  if (!v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    routeChangeObserver2 = [(AVAudioDeviceTestService *)self routeChangeObserver];
    [defaultCenter removeObserver:routeChangeObserver2];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = *MEMORY[0x1E698D6C8];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __43__AVAudioDeviceTestService_setupObservers___block_invoke;
  v44[3] = &unk_1E7EF5908;
  v44[4] = self;
  v12 = observersCopy;
  v45 = v12;
  v13 = [defaultCenter2 addObserverForName:v11 object:0 queue:0 usingBlock:v44];
  [(AVAudioDeviceTestService *)self setRouteChangeObserver:v13];

  interruptionObserver = [(AVAudioDeviceTestService *)self interruptionObserver];
  LOBYTE(defaultCenter2) = interruptionObserver == 0;

  if ((defaultCenter2 & 1) == 0)
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    interruptionObserver2 = [(AVAudioDeviceTestService *)self interruptionObserver];
    [defaultCenter3 removeObserver:interruptionObserver2];
  }

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  v18 = *MEMORY[0x1E698D550];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __43__AVAudioDeviceTestService_setupObservers___block_invoke_178;
  v42[3] = &unk_1E7EF5908;
  v19 = v12;
  v42[4] = self;
  v43 = v19;
  v20 = [defaultCenter4 addObserverForName:v18 object:0 queue:0 usingBlock:v42];
  [(AVAudioDeviceTestService *)self setInterruptionObserver:v20];

  mediaservicesLostObserver = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
  LOBYTE(defaultCenter4) = mediaservicesLostObserver == 0;

  if ((defaultCenter4 & 1) == 0)
  {
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    mediaservicesLostObserver2 = [(AVAudioDeviceTestService *)self mediaservicesLostObserver];
    [defaultCenter5 removeObserver:mediaservicesLostObserver2];
  }

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  v25 = *MEMORY[0x1E698D5A8];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __43__AVAudioDeviceTestService_setupObservers___block_invoke_179;
  v40[3] = &unk_1E7EF5758;
  v26 = v19;
  v41 = v26;
  v27 = [defaultCenter6 addObserverForName:v25 object:0 queue:0 usingBlock:v40];
  [(AVAudioDeviceTestService *)self setMediaservicesLostObserver:v27];

  mediaservicesResetObserver = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
  LOBYTE(defaultCenter6) = mediaservicesResetObserver == 0;

  if ((defaultCenter6 & 1) == 0)
  {
    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    mediaservicesResetObserver2 = [(AVAudioDeviceTestService *)self mediaservicesResetObserver];
    [defaultCenter7 removeObserver:mediaservicesResetObserver2];
  }

  defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
  v32 = *MEMORY[0x1E698D5B8];
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __43__AVAudioDeviceTestService_setupObservers___block_invoke_180;
  v38 = &unk_1E7EF5758;
  v33 = v26;
  v39 = v33;
  v34 = [defaultCenter8 addObserverForName:v32 object:0 queue:0 usingBlock:&v35];
  [(AVAudioDeviceTestService *)self setMediaservicesResetObserver:v34, v35, v36, v37, v38];
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698D6E0]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) stringForRouteChangeReason:v6];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v8 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 userInfo];
    v11 = 136315906;
    v12 = "AVAudioDeviceTestService.mm";
    v13 = 1024;
    v14 = 1731;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route change (%@) - %@", &v11, 0x26u);
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-2 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke_178(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698D580]];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue];
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698D578]];
    v9 = [v8 unsignedIntegerValue];

    v10 = [*(a1 + 32) stringForInterruptionReason:v9];
    if (v6)
    {
      if (v6 == 1)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v11 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 userInfo];
          v18 = 136315906;
          v19 = "AVAudioDeviceTestService.mm";
          v20 = 1024;
          v21 = 1765;
          v22 = 2114;
          v23 = v10;
          v24 = 2114;
          v25 = v12;
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption began (%{public}@) - %{public}@", &v18, 0x26u);
        }

        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-16 userInfo:0];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v17 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315394;
          v19 = "AVAudioDeviceTestService.mm";
          v20 = 1024;
          v21 = 1784;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled interruption type", &v18, 0x12u);
        }

        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-3 userInfo:0];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v15 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v3 userInfo];
        v18 = 136315906;
        v19 = "AVAudioDeviceTestService.mm";
        v20 = 1024;
        v21 = 1775;
        v22 = 2114;
        v23 = v10;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption ended (%{public}@) - %{public}@", &v18, 0x26u);
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-17 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1749;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No AVAudioSessionInterruptionTypeKey. note: %@", &v18, 0x1Cu);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-3 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke_179(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = generateAudioSelfTestError(-4);
    v8 = 136315906;
    v9 = "AVAudioDeviceTestService.mm";
    v10 = 1024;
    v11 = 1799;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd/audiomxd died (%@) with test error (%li)", &v8, 0x26u);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-4 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __43__AVAudioDeviceTestService_setupObservers___block_invoke_180(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userInfo];
    v6 = generateAudioSelfTestError(-5);
    v8 = 136315906;
    v9 = "AVAudioDeviceTestService.mm";
    v10 = 1024;
    v11 = 1810;
    v12 = 2112;
    v13 = v5;
    v14 = 2048;
    v15 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd/audiomxd was reset (%@) with test error (%li)", &v8, 0x26u);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-5 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)configureMultiChannelMixerForOutputChannel:(int64_t)channel totalChannels:(int64_t)channels
{
  v33 = *MEMORY[0x1E69E9840];
  multichannelMixer = [(AVAudioDeviceTestService *)self multichannelMixer];
  v9 = [multichannelMixer outputFormatForBus:0];
  channelCount = [v9 channelCount];

  if (channelCount <= channel)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AVAudioDeviceTestService.mm" lineNumber:1695 description:@"the desired channel must not be greater than the number of channels"];
  }

  multichannelMixer2 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v12 = [multichannelMixer2 inputFormatForBus:0];
  channelCount2 = [v12 channelCount];

  if (channelCount2 != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"AVAudioDeviceTestService.mm" lineNumber:1696 description:@"input format doesn't contain 1 channel"];
  }

  multichannelMixer3 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v15 = [multichannelMixer3 inputFormatForBus:0];
  channelCount3 = [v15 channelCount];
  multichannelMixer4 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v18 = [multichannelMixer4 outputFormatForBus:0];
  v19 = [v18 channelCount] * channelCount3;

  *buf = 0;
  std::vector<float>::vector[abi:ne200100](__b, v19, buf);
  if (channels == 1)
  {
    *(__b[0] + channel) = 1065353216;
  }

  else if (channels >= 1)
  {
    memset_pattern16(__b[0], &unk_1BA6CF4D0, 4 * channels);
  }

  multichannelMixer5 = [(AVAudioDeviceTestService *)self multichannelMixer];
  audioUnit = [multichannelMixer5 audioUnit];
  v22 = AudioUnitSetProperty(audioUnit, 0xBBEu, 1u, 0, __b[0], 4 * v19);

  if (v22)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v23 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "AVAudioDeviceTestService.mm";
      v29 = 1024;
      v30 = 1715;
      v31 = 1024;
      v32 = v22;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %i", buf, 0x18u);
    }
  }

  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }
}

- (void)setupMultiChannelMixerForOutputChannel:(id)channel completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  completionCopy = completion;
  multichannelMixer = [(AVAudioDeviceTestService *)self multichannelMixer];
  v9 = [multichannelMixer outputFormatForBus:0];
  channelCount = [v9 channelCount];

  multichannelMixer2 = [(AVAudioDeviceTestService *)self multichannelMixer];
  v12 = [multichannelMixer2 inputFormatForBus:0];
  channelCount2 = [v12 channelCount];

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v14 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    multichannelMixer3 = [(AVAudioDeviceTestService *)self multichannelMixer];
    v16 = [multichannelMixer3 inputFormatForBus:0];
    *buf = 136315906;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1669;
    v34 = 1024;
    channelCount3 = [v16 channelCount];
    v36 = 1024;
    v37 = channelCount;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mixer dimension %d x %d", buf, 0x1Eu);
  }

  v17 = (channelCount2 * channelCount);
  v27 = 0;
  std::vector<float>::vector[abi:ne200100](buf, v17, &v27);
  if (channelCopy)
  {
    for (i = 0; [channelCopy count] > i; ++i)
    {
      v19 = [channelCopy objectAtIndexedSubscript:i];
      intValue = [v19 intValue];

      if (intValue < v17)
      {
        v21 = *buf;
        do
        {
          *(v21 + 4 * intValue) = 1065353216;
          intValue += channelCount;
        }

        while (intValue < v17);
      }
    }
  }

  else if (v17)
  {
    memset_pattern16(*buf, &unk_1BA6CF4D0, 4 * v17);
  }

  multichannelMixer4 = [(AVAudioDeviceTestService *)self multichannelMixer];
  audioUnit = [multichannelMixer4 audioUnit];
  v24 = AudioUnitSetProperty(audioUnit, 0xBBEu, 1u, 0, *buf, 4 * v17);

  if (v24)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v25 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "AVAudioDeviceTestService.mm";
      v29 = 1024;
      v30 = 1688;
      v31 = 1024;
      v32 = v24;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioUnitSetProperty kAudioUnitProperty_MatrixLevels %i", &v27, 0x18u);
    }

    v26 = generateAudioSelfTestError(-10);
    completionCopy[2](completionCopy, v26);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v3 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "AVAudioDeviceTestService.mm";
    v14 = 1024;
    v15 = 1646;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d cleaning up observers and invalidating process assertion", buf, 0x12u);
  }

  [(AVAudioDeviceTestService *)self extensionHandle];
  if (sandbox_extension_release())
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 136315650;
      v13 = "AVAudioDeviceTestService.mm";
      v14 = 1024;
      v15 = 1650;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d couldn't release extension %i", buf, 0x18u);
    }
  }

  userVolumeBeforeHearingTest = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
  v7 = userVolumeBeforeHearingTest == 0;

  if (!v7)
  {
    userVolumeBeforeHearingTest2 = [(AVAudioDeviceTestService *)self userVolumeBeforeHearingTest];
    [userVolumeBeforeHearingTest2 floatValue];
    [(AVAudioDeviceTestService *)self resetVolume:?];
  }

  [(AVAudioDeviceTestService *)self cleanUpObservers];
  transaction = [(AVAudioDeviceTestService *)self transaction];
  v10 = transaction == 0;

  if (!v10)
  {
    [(AVAudioDeviceTestService *)self setTransaction:0];
  }

  v11.receiver = self;
  v11.super_class = AVAudioDeviceTestService;
  [(AVAudioDeviceTestService *)&v11 dealloc];
}

- (id)convertBufferFor:(id)for sourceBuffer:(id)buffer
{
  v43 = *MEMORY[0x1E69E9840];
  forCopy = for;
  bufferCopy = buffer;
  v6 = [AVAudioFormat alloc];
  processingFormat = [forCopy processingFormat];
  settings = [processingFormat settings];
  v9 = [(AVAudioFormat *)v6 initWithSettings:settings];

  v30 = v9;
  settings2 = [(AVAudioFormat *)v9 settings];
  v11 = [settings2 mutableCopy];

  v12 = MEMORY[0x1E696AD98];
  engine = [(AVAudioDeviceTestService *)self engine];
  inputNode = [engine inputNode];
  v15 = [inputNode inputFormatForBus:0];
  [v15 sampleRate];
  v16 = [v12 numberWithDouble:?];
  [v11 setObject:v16 forKeyedSubscript:@"AVSampleRateKey"];

  [v11 setObject:&unk_1F385A2B8 forKeyedSubscript:@"AVNumberOfChannelsKey"];
  v17 = [[AVAudioFormat alloc] initWithSettings:v11];
  v18 = -[AVAudioPCMBuffer initWithPCMFormat:frameCapacity:]([AVAudioPCMBuffer alloc], "initWithPCMFormat:frameCapacity:", v17, [forCopy length]);
  v19 = [[AVAudioConverter alloc] initFromFormat:v30 toFormat:v17];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__AVAudioDeviceTestService_convertBufferFor_sourceBuffer___block_invoke;
  aBlock[3] = &unk_1E7EF5780;
  v20 = bufferCopy;
  v34 = v20;
  v21 = _Block_copy(aBlock);
  v32 = 0;
  v22 = [(AVAudioConverter *)v19 convertToBuffer:v18 error:&v32 withInputFromBlock:v21];
  v23 = v32;
  if (v22 == 3)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v23 localizedDescription];
      v26 = generateAudioSelfTestError(-6);
      code = [v26 code];
      *buf = 136315906;
      v36 = "AVAudioDeviceTestService.mm";
      v37 = 1024;
      v38 = 1638;
      v39 = 2112;
      v40 = localizedDescription;
      v41 = 2048;
      v42 = code;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
    }
  }

  return v18;
}

- (void)setupAudioEngineFor:(id)for sourceNodeBlock:(id)block
{
  forCopy = for;
  blockCopy = block;
  mEMORY[0x1E698D708] = [MEMORY[0x1E698D708] sharedInstance];
  [(AVAudioDeviceTestService *)self createAudioEngineAndProcessingChain:forCopy session:mEMORY[0x1E698D708] sourceNodeBlock:blockCopy];
}

- (BOOL)createAudioEngineAndPulseToneHandlerFor:(id)for
{
  v17 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v5 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1582;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating engine and tone handler", &v13, 0x12u);
  }

  if (!forCopy)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1584;
    v11 = "%25s:%-5d Unable to create pulse tone from nil sequence";
LABEL_21:
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 0x12u);
    goto LABEL_22;
  }

  v6 = objc_opt_new();
  [(AVAudioDeviceTestService *)self setEngine:v6];

  if (!v6)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1602;
    v11 = "%25s:%-5d Unable to create instance of AVAudioEngine";
    goto LABEL_21;
  }

  engine = [(AVAudioDeviceTestService *)self engine];
  outputNode = [engine outputNode];
  v9 = [outputNode outputFormatForBus:0];

  if (v9)
  {
    [v9 sampleRate];
    [forCopy frequency];
    [forCopy soundLevel];
    [forCopy numberOfPulses];
    [forCopy pulseDuration];
    [forCopy pauseDuration];
    [forCopy rampDuration];
    [forCopy startDelay];
    operator new();
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v10 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1599;
    v11 = "%25s:%-5d Unable to get output format for bus 0";
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

- (void)setupAudioSessionFor:(id)for playbackOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  v75 = *MEMORY[0x1E69E9840];
  forCopy = for;
  completionCopy = completion;
  mEMORY[0x1E698D708] = [MEMORY[0x1E698D708] sharedInstance];
  v11 = mEMORY[0x1E698D708];
  if (onlyCopy)
  {
    category = [mEMORY[0x1E698D708] category];
    v13 = *MEMORY[0x1E698D520];

    if (category == v13)
    {
      v22 = 0;
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v14 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v68 = "AVAudioDeviceTestService.mm";
        v69 = 1024;
        v70 = 1493;
        _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating current audio session category to playback only.", buf, 0x12u);
      }

      v66 = 0;
      v15 = [v11 setCategory:v13 error:&v66];
      v16 = v66;
      if ((v15 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v17 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v16 localizedDescription];
          *buf = 136315650;
          v68 = "AVAudioDeviceTestService.mm";
          v69 = 1024;
          v70 = 1496;
          v71 = 2112;
          v72 = localizedDescription;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session category. { error=%@ }", buf, 0x1Cu);
        }

        v19 = generateAudioSelfTestError(-1);
        completionCopy[2](completionCopy, v19);
      }

      v20 = *MEMORY[0x1E698D5F0];
      v65 = v16;
      v21 = [v11 setMode:v20 error:&v65];
      v22 = v65;

      if ((v21 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v23 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [v22 localizedDescription];
          *buf = 136315650;
          v68 = "AVAudioDeviceTestService.mm";
          v69 = 1024;
          v70 = 1501;
          v71 = 2112;
          v72 = localizedDescription2;
          _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set audio session mode. { error=%@ }", buf, 0x1Cu);
        }

        v25 = generateAudioSelfTestError(-1);
        completionCopy[2](completionCopy, v25);
LABEL_73:
      }
    }
  }

  else
  {
    allowAllBuiltInDataSources = [mEMORY[0x1E698D708] allowAllBuiltInDataSources];
    if ((allowAllBuiltInDataSources & 1) == 0)
    {
      [v11 setAllowAllBuiltInDataSources:1];
    }

    if (![forCopy requiresBluetoothOutput] || (objc_msgSend(v11, "categoryOptions") & 0x20) != 0)
    {
      v27 = allowAllBuiltInDataSources ^ 1;
      if ([forCopy outputMode] == 1)
      {
        v29 = [v11 categoryOptions] & 8;
        v28 = v29 ^ 8;
        v27 |= v29 == 0;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v27 = 1;
      v28 = 32;
    }

    category2 = [v11 category];
    v31 = *MEMORY[0x1E698D518];

    if (category2 == v31)
    {
      v22 = 0;
    }

    else
    {
      v64 = 0;
      v32 = [v11 setCategory:v31 withOptions:v28 error:&v64];
      v22 = v64;
      if ((v32 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v33 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          code = [v22 code];
          *buf = 136315650;
          v68 = "AVAudioDeviceTestService.mm";
          v69 = 1024;
          v70 = 1527;
          v71 = 2048;
          v72 = code;
          _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
        }

        v35 = generateAudioSelfTestError(-1);
        completionCopy[2](completionCopy, v35);
      }

      v27 = 1;
    }

    if ([v11 preferredIOBufferFrameSize] != 4096)
    {
      v63 = v22;
      v36 = [v11 setPreferredIOBufferFrameSize:4096 error:&v63];
      v37 = v63;

      if ((v36 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v38 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          code2 = [v37 code];
          v40 = generateAudioSelfTestError(-1);
          code3 = [v40 code];
          *buf = 136315906;
          v68 = "AVAudioDeviceTestService.mm";
          v69 = 1024;
          v70 = 1544;
          v71 = 2048;
          v72 = code2;
          v73 = 2048;
          v74 = code3;
          _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v27 = 1;
      v22 = v37;
    }

    mode = [forCopy mode];
    if (!mode || ([v11 mode], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(forCopy, "mode"), v44 = objc_claimAutoreleasedReturnValue(), v45 = v43 == v44, v44, v43, mode, v45))
    {
      if (v27 & 1) == 0 && ([v11 isActive])
      {
        goto LABEL_74;
      }
    }

    else
    {
      mode2 = [forCopy mode];
      v62 = v22;
      v47 = [v11 setMode:mode2 error:&v62];
      v48 = v62;

      if ((v47 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v49 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          code4 = [v48 code];
          v51 = generateAudioSelfTestError(-1);
          code5 = [v51 code];
          *buf = 136315906;
          v68 = "AVAudioDeviceTestService.mm";
          v69 = 1024;
          v70 = 1552;
          v71 = 2048;
          v72 = code4;
          v73 = 2048;
          v74 = code5;
          _os_log_impl(&dword_1BA5AC000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v22 = v48;
    }

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v53 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v68 = "AVAudioDeviceTestService.mm";
      v69 = 1024;
      v70 = 1559;
      _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_INFO, "%25s:%-5d Audio session has changed, setting active.", buf, 0x12u);
    }

    v61 = v22;
    v54 = [v11 setActive:1 error:&v61];
    v55 = v61;

    v22 = v55;
    if ((v54 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v56 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        code6 = [v55 code];
        v58 = generateAudioSelfTestError(-11);
        code7 = [v58 code];
        *buf = 136315906;
        v68 = "AVAudioDeviceTestService.mm";
        v69 = 1024;
        v70 = 1562;
        v71 = 2048;
        v72 = code6;
        v73 = 2048;
        v74 = code7;
        _os_log_impl(&dword_1BA5AC000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
      }

      if ([v22 code] == 561145203)
      {
        [(AVAudioDeviceTestService *)self setTestServiceSupportedOnHardware:0];
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v60 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v68 = "AVAudioDeviceTestService.mm";
          v69 = 1024;
          v70 = 1566;
          _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d running test on platform with inadequate hardware", buf, 0x12u);
        }

        v25 = generateAudioSelfTestError(-8);
        completionCopy[2](completionCopy, v25);
      }

      else
      {
        v25 = generateAudioSelfTestError(-11);
        completionCopy[2](completionCopy, v25);
      }

      goto LABEL_73;
    }

    [(AVAudioDeviceTestService *)self configureDataSources:forCopy session:v11];
  }

LABEL_74:
}

- (void)checkSequenceValidity:(id)validity completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  validityCopy = validity;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = validityCopy;
    [v7 frequency];
    if (v8 != 0.0 || ([v7 soundLevel], v9 != 0.0) || (objc_msgSend(v7, "duration"), v10 != 0.0))
    {
      stimulusURL = [v7 stimulusURL];

      if (stimulusURL)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v12 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "AVAudioDeviceTestService.mm";
          v23 = 1024;
          v24 = 1468;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot set playback URL and tone on the same sequence", &v21, 0x12u);
        }

        v13 = generateAudioSelfTestError(-7);
        completionCopy[2](completionCopy, v13);
      }
    }

    [v7 frequency];
    if (v14 == 0.0 || ([v7 soundLevel], v15 == 0.0) || (objc_msgSend(v7, "duration"), v16 == 0.0))
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v17 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "AVAudioDeviceTestService.mm";
        v23 = 1024;
        v24 = 1473;
        _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot perform tone playback without setting all required parameters (frequency, soundLevel, and duration)", &v21, 0x12u);
      }

      v18 = generateAudioSelfTestError(-7);
      completionCopy[2](completionCopy, v18);
    }
  }

  if ([validityCopy requiresBluetoothOutput] && objc_msgSend(validityCopy, "outputMode") == 1)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v19 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "AVAudioDeviceTestService.mm";
      v23 = 1024;
      v24 = 1479;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot request speaker output on Bluetooth route", &v21, 0x12u);
    }

    v20 = generateAudioSelfTestError(-7);
    completionCopy[2](completionCopy, v20);
  }
}

- (void)resetVolume:(float)volume
{
  v25 = *MEMORY[0x1E69E9840];
  v14 = 0.0;
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v13 = 0;
  [mEMORY[0x1E69AED08] getActiveCategoryVolume:&v14 andName:&v13];
  v5 = v13;

  v6 = vabds_f32(v14, volume);
  v7 = fabsf(v14 + volume);
  v8 = (v7 * 0.00000011921) + (v7 * 0.00000011921);
  if (v6 >= 1.1755e-38 && v6 > v8)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = "AVAudioDeviceTestService.mm";
      v17 = 1024;
      v18 = 1456;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      volumeCopy = volume;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Current volume is not as expected, updating volume. { current=%f, expected=%f, name=%@ }", buf, 0x30u);
    }

    mEMORY[0x1E69AED08]2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    *&v12 = volume;
    [mEMORY[0x1E69AED08]2 setActiveCategoryVolumeTo:v12];
  }
}

- (void)setupVolumeObserverForVolume:(float)volume completion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v8 = MEMORY[0x1E69AECF0];
  v27[0] = *MEMORY[0x1E69AECF0];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v10 = *MEMORY[0x1E69AECE0];
  v20 = 0;
  [mEMORY[0x1E69AED08] setAttribute:v9 forKey:v10 error:&v20];
  v11 = v20;

  if (v11)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v12 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v11 localizedDescription];
      *buf = 136315650;
      v22 = "AVAudioDeviceTestService.mm";
      v23 = 1024;
      v24 = 1433;
      v25 = 2112;
      v26 = localizedDescription;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to subscribe to system volume notification. { error=%@ }", buf, 0x1Cu);
    }

    completionCopy[2](completionCopy, v11);
  }

  else
  {
    [(AVAudioDeviceTestService *)self removeSystemVolumeObserver];
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "AVAudioDeviceTestService.mm";
      v23 = 1024;
      v24 = 1440;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] setting up systemVolumeObserver", buf, 0x12u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *v8;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__AVAudioDeviceTestService_setupVolumeObserverForVolume_completion___block_invoke;
    v18[3] = &__block_descriptor_36_e24_v16__0__NSNotification_8l;
    volumeCopy = volume;
    v17 = [defaultCenter addObserverForName:v16 object:0 queue:0 usingBlock:v18];
    [(AVAudioDeviceTestService *)self setSystemVolumeObserver:v17];
  }
}

void __68__AVAudioDeviceTestService_setupVolumeObserverForVolume_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69AEA20]];

  [v5 floatValue];
  v6 = *(a1 + 32);
  v8 = vabds_f32(v7, v6);
  v9 = fabsf(v7 + v6);
  v10 = (v9 * 0.00000011921) + (v9 * 0.00000011921);
  if (v8 >= 1.1755e-38 && v8 > v10)
  {
    v12 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    LODWORD(v13) = *(a1 + 32);
    [v12 setActiveCategoryVolumeTo:v13];

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [v5 floatValue];
      v15 = *(a1 + 32);
      v17 = 136315906;
      v18 = "AVAudioDeviceTestService.mm";
      v19 = 1024;
      v20 = 1445;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = v15;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume not as expected, updating volume. { current=%f, expected=%f }", &v17, 0x26u);
    }
  }
}

- (BOOL)isPlaybackForTestEnabled
{
  v2 = CFPreferencesCopyAppValue(@"playback_for_test", @"com.apple.coreaudio.avaudiodevicetest");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x1E695E4D0];
  CFRelease(v2);
  return v3;
}

- (BOOL)isMixerOutputEnabled
{
  v2 = CFPreferencesCopyAppValue(@"mixer_output_enable", @"com.apple.coreaudio.avaudiodevicetest");
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x1E695E4D0];
  CFRelease(v2);
  return v3;
}

- (void)stopAudioSession:(id)session
{
  sessionCopy = session;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AVAudioDeviceTestService_stopAudioSession___block_invoke;
  v7[3] = &unk_1E7EF6710;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(toneQueue, v7);
}

void __45__AVAudioDeviceTestService_stopAudioSession___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "AVAudioDeviceTestService.mm";
    v20 = 1024;
    v21 = 1378;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to stop audio session for HearingTest.", buf, 0x12u);
  }

  v3 = [*(a1 + 32) hearingTestSession];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) hearingTestSession];
  if (v4)
  {
    v5 = [*(a1 + 32) hearingTestSession];
    v6 = [v5 isActive];

    if ((v6 & 1) == 0)
    {
LABEL_8:
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v7 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "AVAudioDeviceTestService.mm";
        v20 = 1024;
        v21 = 1383;
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Hearing test audio session is not active, cannot de-activate it.", buf, 0x12u);
      }

      v8 = 0;
      (*(*(a1 + 40) + 16))();
      goto LABEL_26;
    }
  }

  else
  {
  }

  v9 = [*(a1 + 32) hearingTestSession];
  v17 = 0;
  [v9 setActive:0 error:&v17];
  v10 = v17;

  if (v10)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v11 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136315650;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1390;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed de-activate audio session. { error=%{public}@ }", buf, 0x1Cu);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-14 userInfo:0];

    v8 = v13;
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v14 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "AVAudioDeviceTestService.mm";
      v20 = 1024;
      v21 = 1393;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d De-activated audio session.", buf, 0x12u);
    }

    v8 = 0;
  }

  v15 = *(a1 + 32);
  v16 = [v15 userVolumeBeforeHearingTest];
  [v16 floatValue];
  [v15 resetVolume:?];

  [*(a1 + 32) cleanUpObservers];
  (*(*(a1 + 40) + 16))();
LABEL_26:
}

- (void)setupAudioSessionForHearingTestWithStatus:(id)status success:(id)success
{
  statusCopy = status;
  successCopy = success;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVAudioDeviceTestService_setupAudioSessionForHearingTestWithStatus_success___block_invoke;
  block[3] = &unk_1E7EF58C0;
  block[4] = self;
  v12 = statusCopy;
  v13 = successCopy;
  v9 = successCopy;
  v10 = statusCopy;
  dispatch_async(toneQueue, block);
}

void __78__AVAudioDeviceTestService_setupAudioSessionForHearingTestWithStatus_success___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "AVAudioDeviceTestService.mm";
    v38 = 1024;
    v39 = 1327;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting up audio session with Playback category for HearingTest.", buf, 0x12u);
  }

  v3 = [MEMORY[0x1E698D708] sharedInstance];
  [*(a1 + 32) setHearingTestSession:v3];

  v4 = [*(a1 + 32) hearingTestSession];
  v5 = *MEMORY[0x1E698D520];
  v35 = 0;
  v6 = [v4 setCategory:v5 error:&v35];
  v7 = v35;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = [*(a1 + 32) hearingTestSession];
    v10 = *MEMORY[0x1E698D5F0];
    v34 = 0;
    v11 = [v9 setMode:v10 error:&v34];
    v12 = v34;

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = [*(a1 + 32) hearingTestSession];
      v33 = 0;
      v15 = [v14 setEligibleForBTSmartRoutingConsideration:0 error:&v33];
      v16 = v33;

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = [*(a1 + 32) hearingTestSession];
        v32 = 0;
        v19 = [v18 setActive:1 error:&v32];
        v20 = v32;

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v22 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v37 = "AVAudioDeviceTestService.mm";
            v38 = 1024;
            v39 = 1367;
            _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setup and activated audio session for HearingTest.", buf, 0x12u);
          }

          [*(a1 + 32) setupObservers:*(a1 + 40)];
          (*(*(a1 + 48) + 16))();
          v23 = 0;
        }

        else
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v30 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [v20 localizedDescription];
            *buf = 136315650;
            v37 = "AVAudioDeviceTestService.mm";
            v38 = 1024;
            v39 = 1361;
            v40 = 2114;
            v41 = v31;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set active. { error=%{public}@ }", buf, 0x1Cu);
          }

          v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v28 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v16 localizedDescription];
          *buf = 136315650;
          v37 = "AVAudioDeviceTestService.mm";
          v38 = 1024;
          v39 = 1352;
          v40 = 2114;
          v41 = v29;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disable smart routing. { error=%{public}@ }", buf, 0x1Cu);
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v26 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v12 localizedDescription];
        *buf = 136315650;
        v37 = "AVAudioDeviceTestService.mm";
        v38 = 1024;
        v39 = 1343;
        v40 = 2114;
        v41 = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode. { error=%{public}@ }", buf, 0x1Cu);
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v7 localizedDescription];
      *buf = 136315650;
      v37 = "AVAudioDeviceTestService.mm";
      v38 = 1024;
      v39 = 1335;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set category. { error=%{public}@ }", buf, 0x1Cu);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setupAudioSessionForHearingTest:(id)test
{
  testCopy = test;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AVAudioDeviceTestService_setupAudioSessionForHearingTest___block_invoke;
  v7[3] = &unk_1E7EF6710;
  v7[4] = self;
  v8 = testCopy;
  v6 = testCopy;
  dispatch_async(toneQueue, v7);
}

void __60__AVAudioDeviceTestService_setupAudioSessionForHearingTest___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "AVAudioDeviceTestService.mm";
    v38 = 1024;
    v39 = 1277;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting up audio session with Playback category for HearingTest.", buf, 0x12u);
  }

  v3 = [MEMORY[0x1E698D708] sharedInstance];
  [*(a1 + 32) setHearingTestSession:v3];

  v4 = [*(a1 + 32) hearingTestSession];
  v5 = *MEMORY[0x1E698D520];
  v35 = 0;
  v6 = [v4 setCategory:v5 error:&v35];
  v7 = v35;

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = [*(a1 + 32) hearingTestSession];
    v10 = *MEMORY[0x1E698D5F0];
    v34 = 0;
    v11 = [v9 setMode:v10 error:&v34];
    v12 = v34;

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = [*(a1 + 32) hearingTestSession];
      v33 = 0;
      v15 = [v14 setEligibleForBTSmartRoutingConsideration:0 error:&v33];
      v16 = v33;

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = [*(a1 + 32) hearingTestSession];
        v32 = 0;
        v19 = [v18 setActive:1 error:&v32];
        v20 = v32;

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v22 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v37 = "AVAudioDeviceTestService.mm";
            v38 = 1024;
            v39 = 1317;
            _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setup and activated audio session for HearingTest.", buf, 0x12u);
          }

          [*(a1 + 32) setupObservers:*(a1 + 40)];
          v23 = 0;
        }

        else
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v30 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [v20 localizedDescription];
            *buf = 136315650;
            v37 = "AVAudioDeviceTestService.mm";
            v38 = 1024;
            v39 = 1311;
            v40 = 2114;
            v41 = v31;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set active. { error=%{public}@ }", buf, 0x1Cu);
          }

          v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v28 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = [v16 localizedDescription];
          *buf = 136315650;
          v37 = "AVAudioDeviceTestService.mm";
          v38 = 1024;
          v39 = 1302;
          v40 = 2114;
          v41 = v29;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disable smart routing. { error=%{public}@ }", buf, 0x1Cu);
        }

        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v26 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v12 localizedDescription];
        *buf = 136315650;
        v37 = "AVAudioDeviceTestService.mm";
        v38 = 1024;
        v39 = 1293;
        v40 = 2114;
        v41 = v27;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode. { error=%{public}@ }", buf, 0x1Cu);
      }

      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v7 localizedDescription];
      *buf = 136315650;
      v37 = "AVAudioDeviceTestService.mm";
      v38 = 1024;
      v39 = 1285;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set category. { error=%{public}@ }", buf, 0x1Cu);
    }

    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-1 userInfo:0];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)stopRecording:(id)recording
{
  v45 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  nodeToCaptureData = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  [nodeToCaptureData removeTapOnBus:0];

  engine = [(AVAudioDeviceTestService *)self engine];
  isRunning = [engine isRunning];

  if (isRunning)
  {
    engine2 = [(AVAudioDeviceTestService *)self engine];
    [engine2 stop];
  }

  mEMORY[0x1E698D708] = [MEMORY[0x1E698D708] sharedInstance];
  v36 = 0;
  v10 = [mEMORY[0x1E698D708] setActive:0 error:&v36];
  v11 = v36;

  if ((v10 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v12 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      code = [v11 code];
      v14 = generateAudioSelfTestError(-11);
      code2 = [v14 code];
      *buf = 136315906;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1249;
      v41 = 2048;
      v42 = code;
      v43 = 2048;
      v44 = *&code2;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
    }
  }

  mEMORY[0x1E698D708]2 = [MEMORY[0x1E698D708] sharedInstance];
  v35 = v11;
  [mEMORY[0x1E698D708]2 setActive:0 error:&v35];
  v17 = v35;

  v18 = v17;
  if (v17)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v19 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v17 localizedDescription];
      *buf = 136315650;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1254;
      v41 = 2112;
      v42 = localizedDescription;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to reset audio session %@", buf, 0x1Cu);
    }
  }

  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVAudioDeviceTestService_stopRecording___block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  dispatch_sync(toneQueue, block);

  inputTapFile = [(AVAudioDeviceTestService *)self inputTapFile];
  v23 = [inputTapFile length] == 0;

  if (v23)
  {
    v32 = generateAudioSelfTestError(-13);
    recordingCopy[2](recordingCopy, v32);
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v24 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      inputTapFile2 = [(AVAudioDeviceTestService *)self inputTapFile];
      v25 = [inputTapFile2 url];
      path = [v25 path];
      inputTapFile3 = [(AVAudioDeviceTestService *)self inputTapFile];
      v28 = [inputTapFile3 length];
      inputTapFile4 = [(AVAudioDeviceTestService *)self inputTapFile];
      fileFormat = [inputTapFile4 fileFormat];
      [fileFormat sampleRate];
      *buf = 136315906;
      v38 = "AVAudioDeviceTestService.mm";
      v39 = 1024;
      v40 = 1266;
      v41 = 2114;
      v42 = path;
      v43 = 2048;
      v44 = v28 / v31;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopped recording on server side %{public}@ (%f s)", buf, 0x26u);
    }

    [(AVAudioDeviceTestService *)self setInputTapFile:0];
    recordingCopy[2](recordingCopy, 0);
  }
}

- (void)startRecording:(id)recording filePath:(id)path completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  pathCopy = path;
  completionCopy = completion;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:recordingCopy completion:completionCopy];
  [(AVAudioDeviceTestService *)self setupAudioSessionFor:recordingCopy playbackOnly:0 completion:completionCopy];
  [(AVAudioDeviceTestService *)self setupAudioEngineFor:recordingCopy sourceNodeBlock:0];
  engine = [(AVAudioDeviceTestService *)self engine];
  inputNode = [engine inputNode];
  v12 = [inputNode inputFormatForBus:0];

  v33 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v13 = [AVAudioFile alloc];
  settings = [v12 settings];
  v39 = 0;
  v15 = [(AVAudioFile *)v13 initForWriting:v33 settings:settings error:&v39];
  v16 = v39;
  [(AVAudioDeviceTestService *)self setInputTapFile:v15];

  if (v16)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v17 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v16 localizedDescription];
      *buf = 136315650;
      v41 = "AVAudioDeviceTestService.mm";
      v42 = 1024;
      v43 = 1216;
      v44 = 2112;
      v45 = localizedDescription;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
    }
  }

  inputFilter = [(AVAudioDeviceTestService *)self inputFilter];
  if (inputFilter)
  {
    inputFilter2 = [(AVAudioDeviceTestService *)self inputFilter];
    engine2 = inputFilter2;
  }

  else
  {
    engine2 = [(AVAudioDeviceTestService *)self engine];
    inputFilter2 = [engine2 inputNode];
  }

  [(AVAudioDeviceTestService *)self setNodeToCaptureData:inputFilter2];
  if (!inputFilter)
  {
  }

  nodeToCaptureData = [(AVAudioDeviceTestService *)self nodeToCaptureData];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __63__AVAudioDeviceTestService_startRecording_filePath_completion___block_invoke;
  v37[3] = &unk_1E7EF5898;
  v37[4] = self;
  v23 = v16;
  v38 = v23;
  [nodeToCaptureData installTapOnBus:0 bufferSize:4096 format:v12 block:v37];

  engine3 = [(AVAudioDeviceTestService *)self engine];
  v36 = v23;
  v25 = [engine3 startAndReturnError:&v36];
  v26 = v36;

  if ((v25 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v28 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [v26 localizedDescription];
      v30 = generateAudioSelfTestError(-10);
      code = [v30 code];
      *buf = 136315906;
      v41 = "AVAudioDeviceTestService.mm";
      v42 = 1024;
      v43 = 1229;
      v44 = 2112;
      v45 = localizedDescription2;
      v46 = 2048;
      v47 = code;
      _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
    }

    v32 = generateAudioSelfTestError(-10);
    completionCopy[2](completionCopy, v32);

    exit(-1);
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v27 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "AVAudioDeviceTestService.mm";
    v42 = 1024;
    v43 = 1234;
    v44 = 2112;
    v45 = pathCopy;
    _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started recording on server side %@", buf, 0x1Cu);
  }

  completionCopy[2](completionCopy, 0);
}

void __63__AVAudioDeviceTestService_startRecording_filePath_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) inputTapFile];
  v9 = 0;
  v5 = [v4 writeFromBuffer:v3 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 40) localizedDescription];
      *buf = 136315650;
      v11 = "AVAudioDeviceTestService.mm";
      v12 = 1024;
      v13 = 1224;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing debug file %@", buf, 0x1Cu);
    }
  }
}

- (void)stopPlayback
{
  v12 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v3 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "AVAudioDeviceTestService.mm";
    v10 = 1024;
    v11 = 1157;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Requesting to stop tone playback.", buf, 0x12u);
  }

  if (self->mPulseToneHandler.__ptr_)
  {
    toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVAudioDeviceTestService_stopPlayback__block_invoke;
    block[3] = &unk_1E7EF6628;
    block[4] = self;
    dispatch_async(toneQueue, block);
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v5 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "AVAudioDeviceTestService.mm";
      v10 = 1024;
      v11 = 1179;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Stop tone playback requested, tone has already been stopped.", buf, 0x12u);
    }

    toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__AVAudioDeviceTestService_stopPlayback__block_invoke_152;
    v6[3] = &unk_1E7EF6628;
    v6[4] = self;
    dispatch_sync(toneQueue, v6);
  }
}

uint64_t __40__AVAudioDeviceTestService_stopPlayback__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "AVAudioDeviceTestService.mm";
    v15 = 1024;
    v16 = 1161;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Stop tone playback requested.", &v13, 0x12u);
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    *v3 = 1;
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v13 = 136315650;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 1165;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Tone has been stopped. { frequency=%f }", &v13, 0x1Cu);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:*(*(*(a1 + 32) + 8) + 8)];
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v6 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 1168;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Tone stop requested but, pulse tone handler is nil", &v13, 0x12u);
    }
  }

  v7 = *(a1 + 32);
  v8 = [v7 userVolumeBeforeHearingTest];
  [v8 floatValue];
  [v7 resetVolume:?];

  [*(a1 + 32) removeSystemVolumeObserver];
  v9 = AVAudioDeviceTestServiceSignPost();
  v10 = TonePlaybackSignpostID();
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1BA5AC000, v9, OS_SIGNPOST_INTERVAL_END, v11, "AVF tone playback", "user tap", &v13, 2u);
    }
  }

  return [*(a1 + 32) cleanUp];
}

- (void)playback:(id)playback filePath:(id)path completion:(id)completion
{
  v113 = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  pathCopy = path;
  v96 = playbackCopy;
  completionCopy = completion;
  [(AVAudioDeviceTestService *)self checkSequenceValidity:playbackCopy completion:?];
  hearingTestSession = [(AVAudioDeviceTestService *)self hearingTestSession];

  if (!hearingTestSession)
  {
    [(AVAudioDeviceTestService *)self setupAudioSessionFor:playbackCopy playbackOnly:0 completion:completionCopy];
  }

  [(AVAudioDeviceTestService *)self setupAudioEngineFor:playbackCopy sourceNodeBlock:0];
  if (![(AVAudioDeviceTestService *)self setVolume:playbackCopy])
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [playbackCopy volume];
      v12 = v11;
      v13 = generateAudioSelfTestError(-7);
      *buf = 136315906;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1045;
      v109 = 2048;
      v110 = v12;
      v111 = 2048;
      code = [v13 code];
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f (%li)", buf, 0x26u);
    }

    v14 = generateAudioSelfTestError(-7);
    completionCopy[2](completionCopy, v14);
  }

  v15 = [AVAudioFile alloc];
  stimulusURL = [v96 stimulusURL];
  v104 = 0;
  v95 = [(AVAudioFile *)v15 initForReading:stimulusURL error:&v104];
  v17 = v104;

  if (!v95 && v17)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v81 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      [v17 localizedDescription];
      v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v83 = generateAudioSelfTestError(-9);
      code2 = [v83 code];
      *buf = 136315906;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1054;
      v109 = 2112;
      v110 = v82;
      v111 = 2048;
      code = code2;
      _os_log_impl(&dword_1BA5AC000, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
    }

    v85 = generateAudioSelfTestError(-9);
    completionCopy[2](completionCopy, v85);

    exit(-9);
  }

  v18 = [AVAudioPCMBuffer alloc];
  processingFormat = [(AVAudioFile *)v95 processingFormat];
  v20 = [(AVAudioPCMBuffer *)v18 initWithPCMFormat:processingFormat frameCapacity:[(AVAudioFile *)v95 length]];

  v103 = v17;
  LOBYTE(v18) = [(AVAudioFile *)v95 readIntoBuffer:v20 error:&v103];
  v21 = v103;

  if ((v18 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v22 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 localizedDescription];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1061;
      v109 = 2112;
      v110 = v23;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
    }

    v20 = 0;
  }

  format = [(AVAudioBuffer *)v20 format];
  v25 = [format channelCount] > 1;

  if (!v25)
  {
    splitIntoSingleChannelBuffers = v20;
    goto LABEL_38;
  }

  microphone = [v96 microphone];
  v27 = microphone == 0;

  if (!v27)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v28 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      [v96 microphone];
      v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1068;
      v109 = 2114;
      v110 = v29;
      _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Multichannel file provided, will split into single channel buffers. { requestedMic=%{public}@ }", buf, 0x1Cu);
    }

    splitIntoSingleChannelBuffers = [(AVAudioPCMBuffer *)v20 splitIntoSingleChannelBuffers];
    microphone2 = [v96 microphone];
    v32 = [microphone2 isEqualToString:@"LeftBottom"];

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      microphone3 = [v96 microphone];
      v38 = [microphone3 isEqualToString:@"Front"];

      if (v38)
      {
        v33 = 1;
      }

      else
      {
        microphone4 = [v96 microphone];
        v40 = [microphone4 isEqualToString:@"Back"];

        if (v40)
        {
          v33 = 2;
        }

        else
        {
          microphone5 = [v96 microphone];
          v42 = [microphone5 isEqualToString:@"RightBottom"];

          if (!v42)
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v79 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              [v96 microphone];
              v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 136315650;
              v106 = "AVAudioDeviceTestService.mm";
              v107 = 1024;
              v108 = 1081;
              v109 = 2114;
              v110 = v80;
              _os_log_impl(&dword_1BA5AC000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid mic channel name. { providedName=%{public}@ }", buf, 0x1Cu);
            }

            v58 = generateAudioSelfTestError(-7);
            completionCopy[2](completionCopy, v58);
            v36 = v21;
            goto LABEL_66;
          }

          v33 = 3;
        }
      }
    }

    v43 = [(AVAudioPCMBuffer *)splitIntoSingleChannelBuffers objectAtIndexedSubscript:v33];

    splitIntoSingleChannelBuffers = v43;
LABEL_38:
    if (pathCopy)
    {
      format2 = [(AVAudioBuffer *)v20 format];
      v45 = [format2 channelCount] == 1;

      if (v45)
      {
        processingFormat2 = [(AVAudioFile *)v95 processingFormat];
        [processingFormat2 sampleRate];
        v48 = v47;
        engine = [(AVAudioDeviceTestService *)self engine];
        inputNode = [engine inputNode];
        v51 = [inputNode inputFormatForBus:0];
        [v51 sampleRate];
        v53 = v48 != v52;

        if (v53)
        {
          v54 = [(AVAudioDeviceTestService *)self convertBufferFor:v95 sourceBuffer:v20];
        }

        else
        {
          v54 = 0;
        }

        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v20;
        }

        v56 = v55;

        splitIntoSingleChannelBuffers = v56;
      }
    }

    v92 = dispatch_semaphore_create(0);
    player = [(AVAudioDeviceTestService *)self player];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke;
    v100[3] = &unk_1E7EF6710;
    v91 = completionCopy;
    v102 = v91;
    v58 = v92;
    v101 = v58;
    [player scheduleBuffer:splitIntoSingleChannelBuffers atTime:0 options:2 completionHandler:v100];

    if (pathCopy)
    {
      inputFilter = [(AVAudioDeviceTestService *)self inputFilter];
      if (inputFilter)
      {
        inputFilter2 = [(AVAudioDeviceTestService *)self inputFilter];
        engine2 = inputFilter2;
      }

      else
      {
        engine2 = [(AVAudioDeviceTestService *)self engine];
        inputFilter2 = [engine2 inputNode];
      }

      [(AVAudioDeviceTestService *)self setNodeToCaptureData:inputFilter2];
      if (!inputFilter)
      {
      }

      engine3 = [(AVAudioDeviceTestService *)self engine];
      inputNode2 = [engine3 inputNode];
      v64 = [inputNode2 inputFormatForBus:0];

      v65 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
      v66 = [AVAudioFile alloc];
      settings = [v64 settings];
      v99 = v21;
      v68 = [(AVAudioFile *)v66 initForWriting:v65 settings:settings error:&v99];
      v69 = v99;

      v21 = v69;
      [(AVAudioDeviceTestService *)self setInputTapFile:v68];

      if (v69)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v70 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [v69 localizedDescription];
          v71 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136315650;
          v106 = "AVAudioDeviceTestService.mm";
          v107 = 1024;
          v108 = 1127;
          v109 = 2112;
          v110 = v71;
          _os_log_impl(&dword_1BA5AC000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create input tap file %@", buf, 0x1Cu);
        }
      }

      nodeToCaptureData = [(AVAudioDeviceTestService *)self nodeToCaptureData];
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke_151;
      v98[3] = &unk_1E7EF5848;
      v98[4] = self;
      [nodeToCaptureData installTapOnBus:0 bufferSize:4096 format:v64 block:v98];
    }

    engine4 = [(AVAudioDeviceTestService *)self engine];
    [engine4 prepare];

    engine5 = [(AVAudioDeviceTestService *)self engine];
    v97 = v21;
    v75 = [engine5 startAndReturnError:&v97];
    v36 = v97;

    if ((v75 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v86 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        [v36 localizedDescription];
        v87 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v88 = generateAudioSelfTestError(-10);
        code3 = [v88 code];
        *buf = 136315906;
        v106 = "AVAudioDeviceTestService.mm";
        v107 = 1024;
        v108 = 1141;
        v109 = 2112;
        v110 = v87;
        v111 = 2048;
        code = code3;
        _os_log_impl(&dword_1BA5AC000, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", buf, 0x26u);
      }

      v90 = generateAudioSelfTestError(-10);
      v91[2](v91, v90);

      exit(-1);
    }

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v76 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      [(AVAudioDeviceTestService *)self engine];
      v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v106 = "AVAudioDeviceTestService.mm";
      v107 = 1024;
      v108 = 1146;
      v109 = 2112;
      v110 = v77;
      _os_log_impl(&dword_1BA5AC000, v76, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", buf, 0x1Cu);
    }

    player2 = [(AVAudioDeviceTestService *)self player];
    [player2 play];

    dispatch_semaphore_wait(v58, 0xFFFFFFFFFFFFFFFFLL);
    [(AVAudioDeviceTestService *)self stopPlayback];

LABEL_66:
    goto LABEL_67;
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v34 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v106 = "AVAudioDeviceTestService.mm";
    v107 = 1024;
    v108 = 1086;
    _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid setup, cannot provide multichannel playback file without specifying mic channel.", buf, 0x12u);
  }

  v35 = generateAudioSelfTestError(-7);
  completionCopy[2](completionCopy, v35);
  splitIntoSingleChannelBuffers = v35;
  v36 = v21;
LABEL_67:
}

intptr_t __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AVAudioDeviceTestService.mm";
    v6 = 1024;
    v7 = 1112;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d player finished", &v4, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  return dispatch_semaphore_signal(*(a1 + 32));
}

void __57__AVAudioDeviceTestService_playback_filePath_completion___block_invoke_151(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) inputTapFile];
  v9 = 0;
  v5 = [v4 writeFromBuffer:v3 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      *buf = 136315650;
      v11 = "AVAudioDeviceTestService.mm";
      v12 = 1024;
      v13 = 1133;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d error writing debug file %@", buf, 0x1Cu);
    }
  }
}

- (void)playbackTone:(id)tone completion:(id)completion
{
  toneCopy = tone;
  completionCopy = completion;
  toneQueue = [(AVAudioDeviceTestService *)self toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke;
  block[3] = &unk_1E7EF6878;
  v12 = toneCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = toneCopy;
  dispatch_async(toneQueue, block);
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke(id *a1)
{
  v117 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [a1[4] frequency];
    v4 = v3;
    [a1[4] volume];
    v6 = v5;
    [a1[4] duration];
    *buf = 136316162;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 892;
    *&buf[18] = 2048;
    *&buf[20] = v4;
    *&buf[28] = 2048;
    *&buf[30] = v6;
    *&buf[38] = 2048;
    v116 = v7;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Playback tone request. { frequency=%f, volume=%f, duration=%f }", buf, 0x30u);
  }

  v9 = a1[4];
  v8 = a1[5];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_131;
  v105[3] = &unk_1E7EF66C0;
  v106 = a1[6];
  [v8 checkSequenceValidity:v9 completion:v105];
  v10 = [a1[5] hearingTestSession];
  LODWORD(v8) = v10 == 0;

  if (v8)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v11 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 901;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d HearingTest session not set, falling back to default playback session.", buf, 0x12u);
    }

    v13 = a1[4];
    v12 = a1[5];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_133;
    v103[3] = &unk_1E7EF66C0;
    v104 = a1[6];
    [v12 setupAudioSessionFor:v13 playbackOnly:1 completion:v103];
  }

  v14 = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v102 = 0.0;
  if (([v14 getActiveCategoryVolume:&v102 andName:0] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v15 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 913;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting current volume", buf, 0x12u);
    }
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v16 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 916;
    *&buf[18] = 2048;
    *&buf[20] = v102;
    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] CurrentVolume=%f", buf, 0x1Cu);
  }

  v17 = [a1[5] userVolumeBeforeHearingTest];
  v18 = v17 == 0;

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v20 = v102;
    v21 = [v19 initWithFloat:v20];
    [a1[5] setUserVolumeBeforeHearingTest:v21];
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v22 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [a1[5] userVolumeBeforeHearingTest];
    [v23 doubleValue];
    *buf = 136315650;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 922;
    *&buf[18] = 2048;
    *&buf[20] = v24;
    _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] userVolumeBeforeHearingTest=%f", buf, 0x1Cu);
  }

  [a1[4] volume];
  v26 = vabds_f32(v102, v25);
  if (v26 >= 1.1755e-38)
  {
    v27 = fabsf(v25 + v102);
    if (v26 > ((v27 * 0.00000011921) + (v27 * 0.00000011921)))
    {
      [a1[4] volume];
      if (([v14 setActiveCategoryVolumeTo:?] & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v28 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [a1[4] volume];
          *buf = 136315650;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 925;
          *&buf[18] = 2048;
          *&buf[20] = v29;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to set category volume to %f", buf, 0x1Cu);
        }

        v30 = a1[6];
        v31 = generateAudioSelfTestError(-15);
        v30[2](v30, 0, v31);
      }
    }
  }

  v32 = a1[5];
  [a1[4] volume];
  v34 = v33;
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_134;
  v100[3] = &unk_1E7EF66C0;
  v101 = a1[6];
  LODWORD(v35) = v34;
  [v32 setupVolumeObserverForVolume:v100 completion:v35];
  if (([a1[5] createAudioEngineAndPulseToneHandlerFor:a1[4]] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v36 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 937;
      _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to create pulse tone handler", buf, 0x12u);
    }

    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.avfaudio.devicetest.service" code:-10 userInfo:0];
    (*(a1[6] + 2))();
  }

  v38 = [a1[5] hearingTestSession];
  v39 = v38 == 0;

  if (v39)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v40 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 943;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No session already created.", buf, 0x12u);
    }

    v41 = a1[5];
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_139;
    v98[3] = &unk_1E7EF6850;
    v98[4] = v41;
    v99 = a1[6];
    [v41 setupObservers:v98];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3457;
  *&buf[32] = __Block_byref_object_dispose__3458;
  v116 = [*(*(a1[5] + 1) + 16) copy];
  v43 = a1[4];
  v42 = a1[5];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_140;
  v97[3] = &unk_1E7EF5820;
  v97[4] = v42;
  [v42 setupAudioEngineFor:v43 sourceNodeBlock:v97];
  v44 = a1[5];
  v45 = [a1[4] micBufferNumbers];
  v46 = [v45 count];
  if (v46)
  {
    v47 = [a1[4] micBufferNumbers];
  }

  else
  {
    v47 = 0;
  }

  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_2;
  v95[3] = &unk_1E7EF66C0;
  v96 = a1[6];
  [v44 setupMultiChannelMixerForOutputChannel:v47 completion:v95];
  if (v46)
  {
  }

  v48 = AVAudioDeviceTestServiceSignPost();
  v49 = TonePlaybackSignpostID();
  if ((v49 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v50 = v49;
    if (os_signpost_enabled(v48))
    {
      [a1[4] frequency];
      v52 = v51;
      [a1[4] soundLevel];
      *v107 = 134218240;
      v108 = v52;
      v109 = 2048;
      *v110 = v53;
      _os_signpost_emit_with_name_impl(&dword_1BA5AC000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v50, "AVF tone playback", "freq=%f, lvl=%f", v107, 0x16u);
    }
  }

  v54 = [a1[5] engine];
  [v54 prepare];

  if ([a1[5] isMixerOutputEnabled])
  {
    v55 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/multichannel_mixer_out.caf"];
    v56 = [AVAudioFile alloc];
    v57 = [a1[5] engine];
    v58 = [v57 outputNode];
    v59 = [v58 outputFormatForBus:0];
    v60 = [v59 settings];
    v94 = 0;
    v61 = [(AVAudioFile *)v56 initForWriting:v55 settings:v60 error:&v94];
    v62 = v94;

    if (v62)
    {
      (*(a1[6] + 2))();
    }

    v63 = [a1[5] multichannelMixer];
    v64 = [a1[5] multichannelMixer];
    v65 = [v64 outputFormatForBus:0];
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_146;
    v92[3] = &unk_1E7EF5848;
    v66 = v61;
    v93 = v66;
    [v63 installTapOnBus:0 bufferSize:1024 format:v65 block:v92];
  }

  else
  {
    v62 = 0;
  }

  v67 = [a1[5] engine];
  v91 = v62;
  v68 = [v67 startAndReturnError:&v91];
  v69 = v91;

  if ((v68 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v80 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = [v69 localizedDescription];
      v82 = generateAudioSelfTestError(-10);
      v83 = COERCE_DOUBLE([v82 code]);
      *v107 = 136315906;
      v108 = "AVAudioDeviceTestService.mm";
      v109 = 1024;
      *v110 = 990;
      *&v110[4] = 2112;
      *&v110[6] = v81;
      v111 = 2048;
      v112 = v83;
      _os_log_impl(&dword_1BA5AC000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", v107, 0x26u);
    }

    v84 = a1[6];
    v85 = generateAudioSelfTestError(-10);
    v84[2](v84, 0, v85);

    exit(-1);
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v70 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    [a1[4] frequency];
    v72 = v71;
    [a1[4] volume];
    v74 = v73;
    [a1[4] duration];
    *v107 = 136316162;
    v108 = "AVAudioDeviceTestService.mm";
    v109 = 1024;
    *v110 = 995;
    *&v110[4] = 2048;
    *&v110[6] = v72;
    v111 = 2048;
    v112 = v74;
    v113 = 2048;
    v114 = v75;
    _os_log_impl(&dword_1BA5AC000, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Started playing back tone. { frequency=%f, volume=%f, duration=%f }", v107, 0x30u);
  }

  [a1[4] duration];
  v77 = dispatch_time(0, (v76 * 1000000000.0));
  v78 = [a1[5] toneQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_149;
  block[3] = &unk_1E7EF5870;
  v86 = *(a1 + 2);
  v79 = v86.i64[0];
  v88 = vextq_s8(v86, v86, 8uLL);
  v90 = buf;
  v89 = a1[6];
  dispatch_after(v77, v78, block);

  _Block_object_dispose(buf, 8);
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_131(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_139(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "AVAudioDeviceTestService.mm";
      v7 = 1024;
      v8 = 946;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption detected, resetting observers.", &v5, 0x12u);
    }

    [*(a1 + 32) cleanUpObservers];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_140(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int *a5)
{
  v5 = *(*(a1 + 32) + 8);
  if (v5 && a4)
  {
    v6 = 0;
    v7 = a5 + 4;
    v8 = *a5;
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    v11 = *(v5 + 80);
    v12 = a4;
    v13 = *(v5 + 24) / *(v5 + 72);
    do
    {
      ++v9;
      v14 = v10 + 1;
      v15 = 0.0;
      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v16 = *(v5 + 52);
        if (v16)
        {
          if (v10 < 0)
          {
            v11 = *v5;
            *(v5 + 80) = *v5;
          }

          else
          {
            v17 = sin((v13 * v9 + v13 * v9) * 3.14159265) * *(v5 + 32);
            v18 = *(v5 + 56);
            if (v10 >= v18)
            {
              v20 = *(v5 + 60);
              if (v20 || *v5 == 1)
              {
                v21 = *(v5 + 64);
                v22 = v21 + v18;
                if (v22 <= v14)
                {
                  v14 = -(v20 - v21);
                  *(v5 + 52) = (v16 & ~(v16 >> 31)) - 1;
                  v11 = *v5;
                  *(v5 + 80) = *v5;
                  v17 = 0.0;
                }

                else
                {
                  v11 = 0;
                  v17 = v17 * ((v22 - v14) / v21);
                }
              }

              else
              {
                v11 = 0;
                v14 = *(v5 + 56);
              }
            }

            else
            {
              v19 = *(v5 + 64);
              v11 = 0;
              if (v19 > v14)
              {
                v17 = v17 * (v14 / v19);
              }
            }

            v15 = v17;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      v10 = v14;
      v23 = v7;
      v24 = v8;
      if (v8)
      {
        do
        {
          v25 = *v23;
          v23 += 4;
          *(v25 + 4 * v6) = v15;
          --v24;
        }

        while (v24);
      }

      ++v6;
    }

    while (v6 != v12);
    *(v5 + 40) = v9;
    *(v5 + 48) = v14;
  }

  return 0;
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9 = 0;
  v8 = [v7 writeFromBuffer:v5 error:&v9];
  if (v9)
  {
    __assert_rtn("[AVAudioDeviceTestService playbackTone:completion:]_block_invoke", "AVAudioDeviceTestService.mm", 984, "err == nil");
  }

  if ((v8 & 1) == 0)
  {
    __assert_rtn("[AVAudioDeviceTestService playbackTone:completion:]_block_invoke", "AVAudioDeviceTestService.mm", 985, "didWrite");
  }
}

uint64_t __52__AVAudioDeviceTestService_playbackTone_completion___block_invoke_149(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    [*(a1 + 40) frequency];
    v14 = v13;
    [*(a1 + 40) volume];
    v16 = v15;
    [*(a1 + 40) duration];
    *v31 = 136316162;
    *&v31[4] = "AVAudioDeviceTestService.mm";
    *&v31[12] = 1024;
    *&v31[14] = 999;
    *&v31[18] = 2048;
    *&v31[20] = v14;
    *&v31[28] = 2048;
    *&v31[30] = v16;
    *&v31[38] = 2048;
    v32 = v17;
    v18 = "%25s:%-5d [AVAT Server] Duration timer called, tone has already been stopped, pulse tone handler is nil { frequency=%f, volume=%f, duration=%f }";
    v19 = v10;
    v20 = 48;
LABEL_20:
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, v18, v31, v20);
LABEL_21:

    goto LABEL_22;
  }

  if (([*(v2 + 16) isEqualToString:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v10 = *AVAudioDeviceTestServiceLog(void)::category;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    [*(a1 + 40) frequency];
    v22 = v21;
    [*(a1 + 40) volume];
    v24 = v23;
    [*(a1 + 40) duration];
    v25 = *(*(*(a1 + 56) + 8) + 40);
    v26 = *(*(*(a1 + 32) + 8) + 16);
    *v31 = 136316674;
    *&v31[4] = "AVAudioDeviceTestService.mm";
    *&v31[12] = 1024;
    *&v31[14] = 1001;
    *&v31[18] = 2048;
    *&v31[20] = v22;
    *&v31[28] = 2048;
    *&v31[30] = v24;
    *&v31[38] = 2048;
    v32 = v27;
    *v33 = 2112;
    *&v33[2] = v25;
    *&v33[10] = 2112;
    *&v33[12] = v26;
    v18 = "%25s:%-5d [AVAT Server] Duration timer called, tone has already been stopped, pulse tone IDs do not match. { frequency=%f, volume=%f, duration=%f, pulseToneID=%@, currID=%@ }";
    v19 = v10;
    v20 = 68;
    goto LABEL_20;
  }

  v3 = *(*(a1 + 32) + 8);
  if (v3 && [*(v3 + 16) isEqualToString:*(*(*(a1 + 56) + 8) + 40)])
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v4 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) frequency];
      v6 = v5;
      [*(a1 + 40) volume];
      v8 = v7;
      [*(a1 + 40) duration];
      *v31 = 136316162;
      *&v31[4] = "AVAudioDeviceTestService.mm";
      *&v31[12] = 1024;
      *&v31[14] = 1003;
      *&v31[18] = 2048;
      *&v31[20] = v6;
      *&v31[28] = 2048;
      *&v31[30] = v8;
      *&v31[38] = 2048;
      v32 = v9;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [AVAT Server] Duration timer called, stopping tone. { frequency=%f, volume=%f, duration=%f }", v31, 0x30u);
    }

    **(*(a1 + 32) + 8) = 1;
    [MEMORY[0x1E696AF00] sleepForTimeInterval:*(*(*(a1 + 32) + 8) + 8)];
    [*(a1 + 32) cleanUp];
    (*(*(a1 + 48) + 16))();
    v10 = AVAudioDeviceTestServiceSignPost();
    v11 = TonePlaybackSignpostID();
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v31 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BA5AC000, v10, OS_SIGNPOST_INTERVAL_END, v12, "AVF tone playback", "duration timer", v31, 2u);
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  v28 = *(a1 + 32);
  v29 = [v28 userVolumeBeforeHearingTest];
  [v29 floatValue];
  [v28 resetVolume:?];

  return [*(a1 + 32) removeSystemVolumeObserver];
}

- (double)calculateCrossCorrelationPeakRelativeToSource:(id)source capture:(id)capture
{
  v27 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  captureCopy = capture;
  format = [sourceCopy format];
  if ([format channelCount] == 1)
  {
    format2 = [captureCopy format];
    channelCount = [format2 channelCount];

    if (channelCount == 1)
    {
      frameLength = [sourceCopy frameLength];
      v11 = *[sourceCopy floatChannelData];
      v12 = malloc_type_malloc(8 * frameLength, 0x100004052888210uLL);
      bzero(v12, 8 * frameLength);
      v13 = 3 * frameLength - 1;
      v14 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
      bzero(v14, 4 * v13);
      if (v13 <= [captureCopy frameLength])
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v18 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = generateAudioSelfTestError(-12);
          v21 = 4.8152e-34;
          v22 = "AVAudioDeviceTestService.mm";
          v23 = 1024;
          v24 = 868;
          v25 = 2048;
          code = [v19 code];
          _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d the length of the captured buffer needs to be greater (%li)", &v21, 0x1Cu);
        }
      }

      else
      {
        memcpy(v14, *[captureCopy floatChannelData], 4 * objc_msgSend(captureCopy, "frameLength"));
      }

      vDSP_conv(v14, 1, v11, 1, v12, 1, 2 * frameLength, frameLength);
      v21 = 0.0;
      vDSP_maxv(v12, 1, &v21, 2 * frameLength);
      free(v14);
      free(v12);
      v17 = (log10f(v21) * 10.0);
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v15 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = generateAudioSelfTestError(-12);
    v21 = 4.8152e-34;
    v22 = "AVAudioDeviceTestService.mm";
    v23 = 1024;
    v24 = 881;
    v25 = 2048;
    code = [v16 code];
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d the source file or captured buffers aren't signal channel files (%li)", &v21, 0x1Cu);
  }

  v17 = 0.0;
LABEL_17:

  return v17;
}

- (void)startWithSequence:(id)sequence completion:(id)completion
{
  v246 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  completionCopy = completion;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v7 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 449;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d entering sequence", buf, 0x12u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  *v243 = 0;
  *&v243[8] = v243;
  *&v243[16] = 0x2020000000;
  p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
  v10 = getMSNMonitorBeginExceptionSymbolLoc(void)::ptr;
  *&v243[24] = getMSNMonitorBeginExceptionSymbolLoc(void)::ptr;
  if (!getMSNMonitorBeginExceptionSymbolLoc(void)::ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL36getMSNMonitorBeginExceptionSymbolLocv_block_invoke;
    *&buf[24] = &unk_1E7EF6988;
    *&buf[32] = v243;
    v11 = MediaSafetyNetLibrary();
    v12 = dlsym(v11, "MSNMonitorBeginException");
    *(*(*&buf[32] + 8) + 24) = v12;
    getMSNMonitorBeginExceptionSymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
    v10 = *(*&v243[8] + 24);
  }

  _Block_object_dispose(v243, 8);
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v187 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MSNMonitorBeginException_soft(const char *)"];
    [currentHandler handleFailureInFunction:v187 file:@"AVAudioDeviceTestService.mm" lineNumber:47 description:{@"%s", dlerror()}];

    goto LABEL_173;
  }

  v10("audiotesting");
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v13 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 457;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d starting sequence", buf, 0x12u);
  }

  currentHandler = [MEMORY[0x1E698D708] sharedInstance];
  [currentHandler setAllowAllBuiltInDataSources:1];
  if ([sequenceCopy priority])
  {
    priority = [sequenceCopy priority];
  }

  else
  {
    priority = 10;
  }

  v242 = 0;
  v16 = [currentHandler setInterruptionPriority:priority error:&v242];
  p_opt_class_meths = v242;
  if (v16)
  {
    goto LABEL_20;
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    goto LABEL_174;
  }

  while (1)
  {
    v17 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      code = [p_opt_class_meths code];
      *buf = 136315650;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 467;
      *&buf[18] = 2048;
      *&buf[20] = code;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d error setInterruptionPriority %li", buf, 0x1Cu);
    }

    v19 = generateAudioSelfTestError(-3);
    completionCopy[2](completionCopy, 0, v19);

LABEL_20:
    if ([sequenceCopy requiresBluetoothOutput])
    {
      v20 = 33;
    }

    else
    {
      v20 = 1;
    }

    v21 = *MEMORY[0x1E698D518];
    v22 = *MEMORY[0x1E698D5F0];
    v241 = p_opt_class_meths;
    v23 = [currentHandler setCategory:v21 mode:v22 options:v20 error:&v241];
    v24 = v241;

    v25 = v24;
    if ((v23 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v26 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        code2 = [v24 code];
        *buf = 136315650;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 477;
        *&buf[18] = 2048;
        *&buf[20] = code2;
        _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d setCategory %li", buf, 0x1Cu);
      }

      v28 = generateAudioSelfTestError(-1);
      completionCopy[2](completionCopy, 0, v28);
    }

    v240 = v24;
    v29 = [currentHandler setActive:1 error:&v240];
    v30 = v240;

    v31 = v30;
    if (v29)
    {
      v239 = v30;
      v32 = [currentHandler setPreferredIOBufferFrameSize:4096 error:&v239];
      v33 = v239;

      if ((v32 & 1) == 0)
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v34 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          code3 = [v33 code];
          v36 = generateAudioSelfTestError(-1);
          code4 = [v36 code];
          *buf = 136315906;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 504;
          *&buf[18] = 2048;
          *&buf[20] = code3;
          *&buf[28] = 2048;
          *&buf[30] = code4;
          _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredIOBufferFrameSize (%li) with test error (%li)", buf, 0x26u);
        }
      }

      v208 = dispatch_semaphore_create(0);
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v38 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 509;
        _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configuring sequence", buf, 0x12u);
      }

      mode = [sequenceCopy mode];
      v40 = mode == 0;

      if (!v40)
      {
        mode2 = [sequenceCopy mode];
        v238 = v33;
        v42 = [currentHandler setMode:mode2 error:&v238];
        v43 = v238;

        if ((v42 & 1) == 0)
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v44 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            code5 = [v43 code];
            v46 = generateAudioSelfTestError(-1);
            code6 = [v46 code];
            *buf = 136315906;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 513;
            *&buf[18] = 2048;
            *&buf[20] = code5;
            *&buf[28] = 2048;
            *&buf[30] = code6;
            _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d setMode (%li) with test error (%li)", buf, 0x26u);
          }
        }

        v33 = v43;
      }

      [(AVAudioDeviceTestService *)selfCopy configureDataSources:sequenceCopy session:currentHandler];
      [(AVAudioDeviceTestService *)selfCopy createAudioEngineAndProcessingChain:sequenceCopy session:currentHandler sourceNodeBlock:0];
      if ([sequenceCopy numberOfChannels])
      {
        outputID = [sequenceCopy outputID];
        numberOfChannels = [sequenceCopy numberOfChannels];
      }

      else
      {
        outputID = [sequenceCopy outputID];
        numberOfChannels = 1;
      }

      [(AVAudioDeviceTestService *)selfCopy configureMultiChannelMixerForOutputChannel:outputID totalChannels:numberOfChannels];
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v57 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        requiresBluetoothOutput = [sequenceCopy requiresBluetoothOutput];
        v59 = [(AVAudioDeviceTestService *)selfCopy isOutputRouteBluetooth:sequenceCopy session:currentHandler];
        *buf = 136315906;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 529;
        *&buf[18] = 1024;
        *&buf[20] = requiresBluetoothOutput;
        *&buf[24] = 1024;
        *&buf[26] = v59;
        _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth setting: %d, Output route: %d", buf, 0x1Eu);
      }

      if ([sequenceCopy requiresBluetoothOutput] && !-[AVAudioDeviceTestService isOutputRouteBluetooth:session:](selfCopy, "isOutputRouteBluetooth:session:", sequenceCopy, currentHandler))
      {
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v97 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 532;
          _os_log_impl(&dword_1BA5AC000, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d Output route is not a bluetooth speaker", buf, 0x12u);
        }

        v98 = generateAudioSelfTestError(-7);
        completionCopy[2](completionCopy, 0, v98);
      }

      else
      {
        if ([(AVAudioDeviceTestService *)selfCopy setVolume:sequenceCopy session:currentHandler])
        {
          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v60 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 543;
            _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting up observers", buf, 0x12u);
          }

          routeChangeObserver = [(AVAudioDeviceTestService *)selfCopy routeChangeObserver];
          v62 = routeChangeObserver == 0;

          if (!v62)
          {
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            routeChangeObserver2 = [(AVAudioDeviceTestService *)selfCopy routeChangeObserver];
            [defaultCenter removeObserver:routeChangeObserver2];
          }

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          v66 = *MEMORY[0x1E698D6C8];
          v237[0] = MEMORY[0x1E69E9820];
          v237[1] = 3221225472;
          v237[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke;
          v237[3] = &unk_1E7EF5730;
          v237[4] = selfCopy;
          v67 = [defaultCenter2 addObserverForName:v66 object:currentHandler queue:0 usingBlock:v237];
          [(AVAudioDeviceTestService *)selfCopy setRouteChangeObserver:v67];

          interruptionObserver = [(AVAudioDeviceTestService *)selfCopy interruptionObserver];
          v69 = interruptionObserver == 0;

          if (!v69)
          {
            defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
            interruptionObserver2 = [(AVAudioDeviceTestService *)selfCopy interruptionObserver];
            [defaultCenter3 removeObserver:interruptionObserver2];
          }

          defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
          v73 = *MEMORY[0x1E698D550];
          v235[0] = MEMORY[0x1E69E9820];
          v235[1] = 3221225472;
          v235[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_110;
          v235[3] = &unk_1E7EF5758;
          v74 = completionCopy;
          v236 = v74;
          v75 = [defaultCenter4 addObserverForName:v73 object:currentHandler queue:0 usingBlock:v235];
          [(AVAudioDeviceTestService *)selfCopy setInterruptionObserver:v75];

          mediaservicesLostObserver = [(AVAudioDeviceTestService *)selfCopy mediaservicesLostObserver];
          LOBYTE(v73) = mediaservicesLostObserver == 0;

          if ((v73 & 1) == 0)
          {
            defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
            mediaservicesLostObserver2 = [(AVAudioDeviceTestService *)selfCopy mediaservicesLostObserver];
            [defaultCenter5 removeObserver:mediaservicesLostObserver2];
          }

          defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
          v80 = *MEMORY[0x1E698D5A8];
          v233[0] = MEMORY[0x1E69E9820];
          v233[1] = 3221225472;
          v233[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_111;
          v233[3] = &unk_1E7EF5758;
          v203 = v74;
          v234 = v203;
          v81 = [defaultCenter6 addObserverForName:v80 object:currentHandler queue:0 usingBlock:v233];
          [(AVAudioDeviceTestService *)selfCopy setMediaservicesLostObserver:v81];

          if (AVAudioDeviceTestServiceLog(void)::once != -1)
          {
            dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
          }

          v82 = *AVAudioDeviceTestServiceLog(void)::category;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "AVAudioDeviceTestService.mm";
            *&buf[12] = 1024;
            *&buf[14] = 576;
            _os_log_impl(&dword_1BA5AC000, v82, OS_LOG_TYPE_DEFAULT, "%25s:%-5d preparing for test", buf, 0x12u);
          }

          v83 = [AVAudioFile alloc];
          stimulusURL = [sequenceCopy stimulusURL];
          v232 = v33;
          v209 = [(AVAudioFile *)v83 initForReading:stimulusURL error:&v232];
          v85 = v232;

          if (!v209 && v85)
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v189 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
            {
              localizedDescription = [v85 localizedDescription];
              v191 = generateAudioSelfTestError(-9);
              code7 = [v191 code];
              *buf = 136315906;
              *&buf[4] = "AVAudioDeviceTestService.mm";
              *&buf[12] = 1024;
              *&buf[14] = 581;
              *&buf[18] = 2112;
              *&buf[20] = localizedDescription;
              *&buf[28] = 2048;
              *&buf[30] = code7;
              _os_log_impl(&dword_1BA5AC000, v189, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to read stimulus file (%@) with test error (%li)", buf, 0x26u);
            }

            v193 = generateAudioSelfTestError(-9);
            v203[2](v203, 0, v193);

            exit(-9);
          }

          v86 = [AVAudioPCMBuffer alloc];
          processingFormat = [(AVAudioFile *)v209 processingFormat];
          v206 = [(AVAudioPCMBuffer *)v86 initWithPCMFormat:processingFormat frameCapacity:[(AVAudioFile *)v209 length]];

          v231 = v85;
          LOBYTE(processingFormat) = [(AVAudioFile *)v209 readIntoBuffer:v206 error:&v231];
          v88 = v231;

          v31 = v88;
          if (processingFormat)
          {
            v89 = v206;
          }

          else
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v99 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              localizedDescription2 = [v88 localizedDescription];
              *buf = 136315650;
              *&buf[4] = "AVAudioDeviceTestService.mm";
              *&buf[12] = 1024;
              *&buf[14] = 588;
              *&buf[18] = 2112;
              *&buf[20] = localizedDescription2;
              _os_log_impl(&dword_1BA5AC000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d error reading stimulus file into buffer %@", buf, 0x1Cu);
            }

            v89 = 0;
          }

          v207 = v89;
          format = [(AVAudioBuffer *)v89 format];
          v102 = [format channelCount] > 1;

          if (v102)
          {
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v103 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = generateAudioSelfTestError(-6);
              code8 = [v104 code];
              *buf = 136315650;
              *&buf[4] = "AVAudioDeviceTestService.mm";
              *&buf[12] = 1024;
              *&buf[14] = 593;
              *&buf[18] = 2048;
              *&buf[20] = code8;
              _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d invalid stimulus buffer format %li", buf, 0x1Cu);
            }

            v106 = generateAudioSelfTestError(-6);
            v203[2](v203, 0, v106);
            v56 = 1;
          }

          else
          {
            v200 = v207;
            processingFormat2 = [(AVAudioFile *)v209 processingFormat];
            [processingFormat2 sampleRate];
            v109 = v108;
            engine = [(AVAudioDeviceTestService *)selfCopy engine];
            inputNode = [engine inputNode];
            v112 = [inputNode inputFormatForBus:0];
            [v112 sampleRate];
            v114 = v109 != v113;

            if (v114)
            {
              v115 = [AVAudioFormat alloc];
              processingFormat3 = [(AVAudioFile *)v209 processingFormat];
              settings = [processingFormat3 settings];
              v201 = [(AVAudioFormat *)v115 initWithSettings:settings];

              settings2 = [(AVAudioFormat *)v201 settings];
              v204 = [settings2 mutableCopy];

              v119 = MEMORY[0x1E696AD98];
              engine2 = [(AVAudioDeviceTestService *)selfCopy engine];
              inputNode2 = [engine2 inputNode];
              v122 = [inputNode2 inputFormatForBus:0];
              [v122 sampleRate];
              v123 = [v119 numberWithDouble:?];
              [v204 setObject:v123 forKeyedSubscript:@"AVSampleRateKey"];

              [v204 setObject:&unk_1F385A2B8 forKeyedSubscript:@"AVNumberOfChannelsKey"];
              v124 = [[AVAudioFormat alloc] initWithSettings:v204];
              v125 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v124 frameCapacity:[(AVAudioFile *)v209 length]];
              v126 = [[AVAudioConverter alloc] initFromFormat:v201 toFormat:v124];
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_117;
              aBlock[3] = &unk_1E7EF5780;
              v230 = v200;
              v127 = _Block_copy(aBlock);
              v228 = v31;
              v128 = [(AVAudioConverter *)v126 convertToBuffer:v125 error:&v228 withInputFromBlock:v127];
              v199 = v228;

              if (!v128)
              {
                if (AVAudioDeviceTestServiceLog(void)::once != -1)
                {
                  dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
                }

                v129 = *AVAudioDeviceTestServiceLog(void)::category;
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  localizedDescription3 = [v199 localizedDescription];
                  v131 = generateAudioSelfTestError(-6);
                  code9 = [v131 code];
                  *buf = 136315906;
                  *&buf[4] = "AVAudioDeviceTestService.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 621;
                  *&buf[18] = 2112;
                  *&buf[20] = localizedDescription3;
                  *&buf[28] = 2048;
                  *&buf[30] = code9;
                  _os_log_impl(&dword_1BA5AC000, v129, OS_LOG_TYPE_ERROR, "%25s:%-5d error converting stimulus buffer format %@ - %li", buf, 0x26u);
                }
              }

              v31 = v199;
              v133 = v125;
            }

            else
            {
              v133 = 0;
            }

            v134 = v133;
            if (!v133)
            {
              v133 = v200;
            }

            v205 = v133;

            v224 = 0;
            v225 = &v224;
            v226 = 0x2020000000;
            frameLength = [(AVAudioPCMBuffer *)v205 frameLength];
            [currentHandler outputSampleRate];
            v137 = v136;
            format2 = [(AVAudioBuffer *)v205 format];
            [format2 sampleRate];
            v140 = v139;
            [currentHandler outputLatency];
            v142 = v141;
            [currentHandler outputSampleRate];
            v144 = v143;
            [currentHandler outputSampleRate];
            v146 = v145;

            v227 = ((v137 / v140 * frameLength) + v142 * v144 + v146 * 0.5);
            engine3 = [(AVAudioDeviceTestService *)selfCopy engine];
            inputNode3 = [engine3 inputNode];
            v202 = [inputNode3 inputFormatForBus:0];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = __Block_byref_object_copy__3457;
            *&buf[32] = __Block_byref_object_dispose__3458;
            v149 = [AVAudioPCMBuffer alloc];
            v245 = [(AVAudioPCMBuffer *)v149 initWithPCMFormat:v202 frameCapacity:*(v225 + 6)];
            [*(*&buf[8] + 40) setFrameLength:0];
            inputFilter = [(AVAudioDeviceTestService *)selfCopy inputFilter];
            if (inputFilter)
            {
              inputFilter2 = [(AVAudioDeviceTestService *)selfCopy inputFilter];
              engine4 = inputFilter2;
            }

            else
            {
              engine4 = [(AVAudioDeviceTestService *)selfCopy engine];
              inputFilter2 = [engine4 inputNode];
            }

            [(AVAudioDeviceTestService *)selfCopy setNodeToCaptureData:inputFilter2];
            if (!inputFilter)
            {
            }

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v153 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v154 = *(v225 + 6);
              *v243 = 136315650;
              *&v243[4] = "AVAudioDeviceTestService.mm";
              *&v243[12] = 1024;
              *&v243[14] = 639;
              *&v243[18] = 1024;
              *&v243[20] = v154;
              _os_log_impl(&dword_1BA5AC000, v153, OS_LOG_TYPE_DEFAULT, "%25s:%-5d test length %i frames", v243, 0x18u);
            }

            nodeToCaptureData = [(AVAudioDeviceTestService *)selfCopy nodeToCaptureData];
            v219[0] = MEMORY[0x1E69E9820];
            v219[1] = 3221225472;
            v219[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_119;
            v219[3] = &unk_1E7EF57A8;
            v222 = buf;
            v156 = v203;
            v221 = v156;
            v223 = &v224;
            v157 = v208;
            v220 = v157;
            [nodeToCaptureData installTapOnBus:0 bufferSize:4096 format:v202 block:v219];

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v158 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
            {
              *v243 = 136315394;
              *&v243[4] = "AVAudioDeviceTestService.mm";
              *&v243[12] = 1024;
              *&v243[14] = 711;
              _os_log_impl(&dword_1BA5AC000, v158, OS_LOG_TYPE_DEFAULT, "%25s:%-5d scheduling stimulus file", v243, 0x12u);
            }

            player = [(AVAudioDeviceTestService *)selfCopy player];
            [player scheduleBuffer:v205 atTime:0 options:2 completionHandler:&__block_literal_global_123];

            engine5 = [(AVAudioDeviceTestService *)selfCopy engine];
            [engine5 prepare];

            engine6 = [(AVAudioDeviceTestService *)selfCopy engine];
            v218 = v31;
            LOBYTE(engine5) = [engine6 startAndReturnError:&v218];
            v162 = v218;

            v163 = v162;
            if ((engine5 & 1) == 0)
            {
              if (AVAudioDeviceTestServiceLog(void)::once != -1)
              {
                dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
              }

              v194 = *AVAudioDeviceTestServiceLog(void)::category;
              if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
              {
                localizedDescription4 = [v162 localizedDescription];
                v196 = generateAudioSelfTestError(-10);
                code10 = [v196 code];
                *v243 = 136315906;
                *&v243[4] = "AVAudioDeviceTestService.mm";
                *&v243[12] = 1024;
                *&v243[14] = 724;
                *&v243[18] = 2112;
                *&v243[20] = localizedDescription4;
                *&v243[28] = 2048;
                *&v243[30] = code10;
                _os_log_impl(&dword_1BA5AC000, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d startAndReturnError (%@) with test error (%li)", v243, 0x26u);
              }

              v198 = generateAudioSelfTestError(-10);
              v156[2](v156, 0, v198);

              exit(-1);
            }

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v164 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
            {
              engine7 = [(AVAudioDeviceTestService *)selfCopy engine];
              *v243 = 136315650;
              *&v243[4] = "AVAudioDeviceTestService.mm";
              *&v243[12] = 1024;
              *&v243[14] = 729;
              *&v243[18] = 2112;
              *&v243[20] = engine7;
              _os_log_impl(&dword_1BA5AC000, v164, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", v243, 0x1Cu);
            }

            player2 = [(AVAudioDeviceTestService *)selfCopy player];
            [player2 play];

            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v167 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
            {
              *v243 = 136315394;
              *&v243[4] = "AVAudioDeviceTestService.mm";
              *&v243[12] = 1024;
              *&v243[14] = 733;
              _os_log_impl(&dword_1BA5AC000, v167, OS_LOG_TYPE_DEFAULT, "%25s:%-5d waiting for sequence to finish", v243, 0x12u);
            }

            dispatch_semaphore_wait(v157, 0xFFFFFFFFFFFFFFFFLL);
            if (AVAudioDeviceTestServiceLog(void)::once != -1)
            {
              dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
            }

            v168 = *AVAudioDeviceTestServiceLog(void)::category;
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
            {
              *v243 = 136315394;
              *&v243[4] = "AVAudioDeviceTestService.mm";
              *&v243[12] = 1024;
              *&v243[14] = 737;
              _os_log_impl(&dword_1BA5AC000, v168, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sequence finished", v243, 0x12u);
            }

            nodeToCaptureData2 = [(AVAudioDeviceTestService *)selfCopy nodeToCaptureData];
            [nodeToCaptureData2 removeTapOnBus:0];

            engine8 = [(AVAudioDeviceTestService *)selfCopy engine];
            isRunning = [engine8 isRunning];

            if (isRunning)
            {
              player3 = [(AVAudioDeviceTestService *)selfCopy player];
              [player3 stop];

              engine9 = [(AVAudioDeviceTestService *)selfCopy engine];
              [engine9 stop];
            }

            v217 = v163;
            v174 = [currentHandler setActive:0 error:&v217];
            v175 = v217;

            v31 = v175;
            if ((v174 & 1) == 0)
            {
              if (AVAudioDeviceTestServiceLog(void)::once != -1)
              {
                dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
              }

              v176 = *AVAudioDeviceTestServiceLog(void)::category;
              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
              {
                code11 = [v175 code];
                v178 = generateAudioSelfTestError(-11);
                code12 = [v178 code];
                *v243 = 136315906;
                *&v243[4] = "AVAudioDeviceTestService.mm";
                *&v243[12] = 1024;
                *&v243[14] = 751;
                *&v243[18] = 2048;
                *&v243[20] = code11;
                *&v243[28] = 2048;
                *&v243[30] = code12;
                _os_log_impl(&dword_1BA5AC000, v176, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", v243, 0x26u);
              }
            }

            [(AVAudioDeviceTestService *)selfCopy cleanUpObservers];
            v211[0] = MEMORY[0x1E69E9820];
            v211[1] = 3221225472;
            v211[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_124;
            v211[3] = &unk_1E7EF57F8;
            v216 = buf;
            v180 = sequenceCopy;
            v212 = v180;
            v213 = selfCopy;
            v106 = v205;
            v214 = v106;
            v215 = v156;
            v181 = _Block_copy(v211);
            if ([v180 processSequenceAsynchronously])
            {
              v182 = dispatch_get_global_queue(2, 0);
              dispatch_async(v182, v181);
            }

            else
            {
              v181[2](v181);
            }

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v224, 8);

            v56 = 0;
          }

          goto LABEL_160;
        }

        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v90 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          [sequenceCopy volume];
          v92 = v91;
          category = [currentHandler category];
          v94 = generateAudioSelfTestError(-7);
          code13 = [v94 code];
          *buf = 136316162;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 538;
          *&buf[18] = 2048;
          *&buf[20] = v92;
          *&buf[28] = 2112;
          *&buf[30] = category;
          *&buf[38] = 2048;
          v245 = code13;
          _os_log_impl(&dword_1BA5AC000, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d unable to set volume %.2f for category %@ - (%li)", buf, 0x30u);
        }

        v96 = generateAudioSelfTestError(-7);
        completionCopy[2](completionCopy, 0, v96);
      }

      v56 = 1;
      v31 = v33;
LABEL_160:
      v55 = v208;
      goto LABEL_161;
    }

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v50 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      code14 = [v30 code];
      v52 = generateAudioSelfTestError(-11);
      code15 = [v52 code];
      *buf = 136315906;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 488;
      *&buf[18] = 2048;
      *&buf[20] = code14;
      *&buf[28] = 2048;
      *&buf[30] = code15;
      _os_log_impl(&dword_1BA5AC000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive (%li) with test error (%li)", buf, 0x26u);
    }

    if ([v30 code] == 561145203)
    {
      [(AVAudioDeviceTestService *)selfCopy setTestServiceSupportedOnHardware:0];
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v54 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 492;
        _os_log_impl(&dword_1BA5AC000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d running test on platform with inadequate hardware", buf, 0x12u);
      }

      v55 = generateAudioSelfTestError(-8);
      completionCopy[2](completionCopy, 0, v55);
    }

    else
    {
      v55 = generateAudioSelfTestError(-11);
      completionCopy[2](completionCopy, 0, v55);
    }

    v56 = 1;
LABEL_161:

    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v183 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 844;
      _os_log_impl(&dword_1BA5AC000, v183, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sequence completed", buf, 0x12u);
    }

    if ((v56 | 2) != 2)
    {
      goto LABEL_170;
    }

    *v243 = 0;
    *&v243[8] = v243;
    *&v243[16] = 0x2020000000;
    p_opt_class_meths = &OBJC_PROTOCOL___Endpointer.opt_class_meths;
    v184 = getMSNMonitorEndExceptionSymbolLoc(void)::ptr;
    *&v243[24] = getMSNMonitorEndExceptionSymbolLoc(void)::ptr;
    if (!getMSNMonitorEndExceptionSymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL34getMSNMonitorEndExceptionSymbolLocv_block_invoke;
      *&buf[24] = &unk_1E7EF6988;
      *&buf[32] = v243;
      v185 = MediaSafetyNetLibrary();
      v186 = dlsym(v185, "MSNMonitorEndException");
      *(*(*&buf[32] + 8) + 24) = v186;
      getMSNMonitorEndExceptionSymbolLoc(void)::ptr = *(*(*&buf[32] + 8) + 24);
      v184 = *(*&v243[8] + 24);
    }

    _Block_object_dispose(v243, 8);
    if (v184)
    {
      break;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v188 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void MSNMonitorEndException_soft(const char *)"];
    [currentHandler handleFailureInFunction:v188 file:@"AVAudioDeviceTestService.mm" lineNumber:48 description:{@"%s", dlerror()}];

LABEL_173:
    __break(1u);
LABEL_174:
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v184("audiotesting");
LABEL_170:
  objc_sync_exit(selfCopy);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698D6E0]];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) stringForRouteChangeReason:v6];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v8 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 553;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d route change (%@)", &v9, 0x1Cu);
  }
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_110(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 object];
    v6 = generateAudioSelfTestError(-3);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 561;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d interruption (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = generateAudioSelfTestError(-3);
  (*(v7 + 16))(v7, 0, v8);

  exit(-3);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_111(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 object];
    v6 = generateAudioSelfTestError(-4);
    v9 = 136315906;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 571;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = [v6 code];
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mediaserverd died (%@) with test error (%li)", &v9, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = generateAudioSelfTestError(-4);
  (*(v7 + 16))(v7, 0, v8);

  exit(-4);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v7 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 averagePowerPerChannel];
    v14 = 136315650;
    v15 = "AVAudioDeviceTestService.mm";
    v16 = 1024;
    v17 = 655;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d collecting input tap data %@", &v14, 0x1Cu);
  }

  if (([*(*(*(a1 + 48) + 8) + 40) appendDataFromBuffer:v5] & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v9 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = generateAudioSelfTestError(-10);
      v11 = [v10 code];
      v14 = 136315650;
      v15 = "AVAudioDeviceTestService.mm";
      v16 = 1024;
      v17 = 658;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to read in from buffer - test error %li", &v14, 0x1Cu);
    }

    v12 = *(a1 + 40);
    v13 = generateAudioSelfTestError(-10);
    (*(v12 + 16))(v12, 0, v13);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) frameLength] >= *(*(*(a1 + 56) + 8) + 24))
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_124(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v2 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 771;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d processing xcorr", buf, 0x12u);
  }

  group = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, -1);
  v22 = dispatch_queue_create("com.apple.avfaudio.xcorr_queue", v3);

  v26 = [*(*(*(a1 + 64) + 8) + 40) splitIntoSingleChannelBuffers];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__3457;
  v40 = __Block_byref_object_dispose__3458;
  v41 = objc_opt_new();
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [*(a1 + 32) micBufferNumbers];
  if (!v4 || ([*(a1 + 32) micBufferNumbers], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count") == 0, v5, v4, v6))
  {
    for (i = 0; [v26 count] > i; ++i)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInt:i];
      [obj addObject:v21];
    }
  }

  else
  {
    v7 = [*(a1 + 32) micBufferNumbers];
    v8 = [v7 copy];

    obj = v8;
  }

  for (j = 0; [obj count] > j; ++j)
  {
    v10 = *(*&buf[8] + 40);
    v11 = [MEMORY[0x1E695DFB0] null];
    [v10 addObject:v11];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obja = obj;
  v12 = [obja countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (k = 0; k != v12; ++k)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obja);
        }

        v15 = *(*(&v33 + 1) + 8 * k);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_128;
        aBlock[3] = &unk_1E7EF57D0;
        aBlock[4] = v15;
        v28 = v26;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v29 = v16;
        v30 = v17;
        v31 = v18;
        v32 = buf;
        v19 = _Block_copy(aBlock);
        if ([*(a1 + 32) parallelCrossCorrelationCalculation])
        {
          dispatch_group_async(group, v22, v19);
        }

        else
        {
          v19[2](v19);
        }
      }

      v12 = [obja countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }

  if ([*(a1 + 32) parallelCrossCorrelationCalculation])
  {
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  }

  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(buf, 8);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_128(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) intValue];
  v3 = [*(a1 + 40) objectAtIndex:v2];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*(objc_msgSend(v3 length:{"audioBufferList") + 16), *(objc_msgSend(v3, "audioBufferList") + 12)}];
  if ([*(a1 + 48) calculateCrossCorrelationPeak])
  {
    [*(a1 + 56) calculateCrossCorrelationPeakRelativeToSource:*(a1 + 64) capture:v3];
    v6 = v5;
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "AVAudioDeviceTestService.mm";
      v15 = 1024;
      v16 = 802;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d db %f", &v13, 0x1Cu);
    }
  }

  v8 = [AVAudioDeviceTestResult alloc];
  v9 = [*(a1 + 48) outputID];
  v10 = [v3 format];
  [v10 sampleRate];
  v11 = [AVAudioDeviceTestResult initWithData:v8 inputID:"initWithData:inputID:outputID:sampleRate:correlationValue:" outputID:v4 sampleRate:v2 correlationValue:v9];

  v12 = *(*(*(a1 + 72) + 8) + 40);
  objc_sync_enter(v12);
  [*(*(*(a1 + 72) + 8) + 40) setObject:v11 atIndexedSubscript:v2];
  objc_sync_exit(v12);
}

void __57__AVAudioDeviceTestService_startWithSequence_completion___block_invoke_121()
{
  v5 = *MEMORY[0x1E69E9840];
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v0 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "AVAudioDeviceTestService.mm";
    v3 = 1024;
    v4 = 715;
    _os_log_impl(&dword_1BA5AC000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d player finished", &v1, 0x12u);
  }
}

- (BOOL)isOutputRouteBluetooth:(id)bluetooth session:(id)session
{
  sessionCopy = session;
  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  category = [sessionCopy category];
  v7 = [mEMORY[0x1E69AED08] routeForCategory:category];
  v8 = [v7 isEqualToString:@"HeadphonesBT"];

  return v8;
}

- (void)passExtensionToken:(id)token
{
  v15 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!tokenCopy)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v5 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "AVAudioDeviceTestService.mm";
      v11 = 1024;
      v12 = 436;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d extension token is null", buf, 0x12u);
    }

LABEL_15:
    exit(-9);
  }

  [tokenCopy UTF8String];
  [(AVAudioDeviceTestService *)selfCopy setExtensionHandle:sandbox_extension_consume()];
  if ([(AVAudioDeviceTestService *)selfCopy extensionHandle]< 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v6 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 136315650;
      v10 = "AVAudioDeviceTestService.mm";
      v11 = 1024;
      v12 = 430;
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to consume extension: %i", buf, 0x18u);
    }

    goto LABEL_15;
  }

  objc_sync_exit(selfCopy);
}

- (void)configureDataSources:(id)sources session:(id)session
{
  v60 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  sessionCopy = session;
  [sessionCopy availableInputs];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v6 = v50 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v7)
  {
    v8 = *v50;
    v9 = *MEMORY[0x1E698D660];
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        portType = [v11 portType];
        v13 = [portType isEqualToString:v9];

        if (v13)
        {
          v7 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = 0;
  for (j = 0; ; j = v20)
  {
    dataSources = [v7 dataSources];
    v17 = [dataSources count] > v14;

    if (!v17)
    {
      break;
    }

    dataSources2 = [v7 dataSources];
    v19 = [dataSources2 objectAtIndexedSubscript:v14];

    v20 = v19;
    microphone = [sourcesCopy microphone];
    if (microphone)
    {
    }

    else
    {
      dataSourceID = [v20 dataSourceID];
      v23 = [dataSourceID intValue] == 1634495520;

      if (v23)
      {
        goto LABEL_31;
      }
    }

    microphone2 = [sourcesCopy microphone];
    v25 = microphone2 == 0;

    if (v25)
    {
      goto LABEL_29;
    }

    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (v14 == 3)
        {
          microphone3 = [sourcesCopy microphone];
          v29 = [microphone3 isEqualToString:@"RightBottom"];

          if (v29)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_29;
      }

      microphone4 = [sourcesCopy microphone];
      v27 = [microphone4 isEqualToString:@"Back"];
    }

    else if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_29;
      }

      microphone4 = [sourcesCopy microphone];
      v27 = [microphone4 isEqualToString:@"Front"];
    }

    else
    {
      microphone4 = [sourcesCopy microphone];
      v27 = [microphone4 isEqualToString:@"LeftBottom"];
    }

    if (v27)
    {

LABEL_31:
      j = v20;
      break;
    }

LABEL_29:
    ++v14;
  }

  v48 = 0;
  v30 = [v7 setPreferredDataSource:j error:&v48];
  v31 = v48;
  if (v30)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v32 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v54 = "AVAudioDeviceTestService.mm";
      v55 = 1024;
      v56 = 404;
      v57 = 2112;
      v58 = j;
      _os_log_impl(&dword_1BA5AC000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using data source %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v33 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      code = [v31 code];
      *buf = 136315650;
      v54 = "AVAudioDeviceTestService.mm";
      v55 = 1024;
      v56 = 402;
      v57 = 2048;
      v58 = code;
      _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredDataSource %li", buf, 0x1Cu);
    }
  }

  v47 = v31;
  v35 = [sessionCopy setPreferredInput:v7 error:&v47];
  v36 = v47;

  if (v35)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v37 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v54 = "AVAudioDeviceTestService.mm";
      v55 = 1024;
      v56 = 411;
      v57 = 2112;
      v58 = v7;
      _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using port %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v38 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      code2 = [v36 code];
      *buf = 136315650;
      v54 = "AVAudioDeviceTestService.mm";
      v55 = 1024;
      v56 = 409;
      v57 = 2048;
      v58 = code2;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d setPreferredInput %li", buf, 0x1Cu);
    }
  }

  if ([sourcesCopy outputMode] == 1)
  {
    v40 = 1936747378;
  }

  else
  {
    v40 = 0;
  }

  v46 = v36;
  v41 = [sessionCopy overrideOutputAudioPort:v40 error:&v46];
  v42 = v46;

  if ((v41 & 1) == 0)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v43 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      code3 = [v42 code];
      *buf = 136315650;
      v54 = "AVAudioDeviceTestService.mm";
      v55 = 1024;
      v56 = 417;
      v57 = 2048;
      v58 = code3;
      _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideOutputAudioPort %li", buf, 0x1Cu);
    }
  }
}

- (BOOL)setVolume:(id)volume
{
  v15 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v4 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [volumeCopy volume];
    v9 = 136315650;
    v10 = "AVAudioDeviceTestService.mm";
    v11 = 1024;
    v12 = 353;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume to %.2f", &v9, 0x1Cu);
  }

  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  [volumeCopy volume];
  v7 = [mEMORY[0x1E69AED08] setActiveCategoryVolumeTo:?];

  return v7;
}

- (BOOL)setVolume:(id)volume session:(id)session
{
  v29 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  sessionCopy = session;
  if ([volumeCopy outputMode])
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [volumeCopy volume];
      v9 = v8;
      category = [sessionCopy category];
      v19 = 136316162;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 346;
      v23 = 2048;
      v24 = v9;
      v25 = 2112;
      v26 = category;
      v27 = 2112;
      v28 = @"Audio/Video";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v19, 0x30u);
    }

    mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
    [volumeCopy volume];
    v12 = [mEMORY[0x1E69AED08] setVolumeTo:@"Audio/Video" forCategory:?];
  }

  else
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v13 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [volumeCopy volume];
      v15 = v14;
      category2 = [sessionCopy category];
      v19 = 136316162;
      v20 = "AVAudioDeviceTestService.mm";
      v21 = 1024;
      v22 = 342;
      v23 = 2048;
      v24 = v15;
      v25 = 2112;
      v26 = category2;
      v27 = 2112;
      v28 = @"PlayAndRecord";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting volume %.2f for AS category %@, AVS category %@", &v19, 0x30u);
    }

    mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
    [volumeCopy volume];
    v12 = [mEMORY[0x1E69AED08] setVolumeTo:@"PlayAndRecord" forCategory:?];
  }

  v17 = v12;

  return v17;
}

- (void)createAudioEngineAndProcessingChain:(id)chain session:(id)session sourceNodeBlock:(id)block
{
  v136 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  sessionCopy = session;
  blockCopy = block;
  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v8 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 184;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating audio engine and processing chain", buf, 0x12u);
  }

  v9 = objc_opt_new();
  [(AVAudioDeviceTestService *)self setEngine:v9];

  if (blockCopy)
  {
    v10 = [[AVAudioSourceNode alloc] initWithRenderBlock:blockCopy];
    [(AVAudioDeviceTestService *)self setSourceNode:v10];
  }

  sourceNode = [(AVAudioDeviceTestService *)self sourceNode];
  v12 = sourceNode == 0;

  if (v12)
  {
    v13 = objc_opt_new();
    [(AVAudioDeviceTestService *)self setPlayer:v13];
  }

  if (!sessionCopy || ([MEMORY[0x1E698D708] sharedInstance], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == sessionCopy, v14, v15))
  {
    v22 = 0;
  }

  else
  {
    inData = [sessionCopy opaqueSessionID];
    engine = [(AVAudioDeviceTestService *)self engine];
    outputNode = [engine outputNode];
    v18 = AudioUnitSetProperty([outputNode audioUnit], 0x7E7u, 0, 0, &inData, 4u) == 0;

    if (!v18)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v19 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 210;
        _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to set session on engine", buf, 0x12u);
      }
    }

    mEMORY[0x1E698D708] = [MEMORY[0x1E698D708] sharedInstance];
    v132 = 0;
    v21 = [mEMORY[0x1E698D708] setActive:0 error:&v132];
    v22 = v132;

    if ((v21 & 1) == 0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v23 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        code = [v22 code];
        *buf = 136315650;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 215;
        *&buf[18] = 2048;
        v135 = code;
        _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d sharedInstance setActive %li", buf, 0x1Cu);
      }
    }
  }

  inputProcessingChain = [chainCopy inputProcessingChain];
  v26 = inputProcessingChain == 0;

  if (!v26)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v27 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting input processing chain", buf, 0x12u);
    }

    v28 = [[AVAudioUnitEQ alloc] initWithNumberOfBands:1];
    [(AVAudioDeviceTestService *)self setInputFilter:v28];

    inputFilter = [(AVAudioDeviceTestService *)self inputFilter];
    bands = [inputFilter bands];
    v31 = [bands objectAtIndexedSubscript:0];
    [v31 setFilterType:5];

    inputFilter2 = [(AVAudioDeviceTestService *)self inputFilter];
    bands2 = [inputFilter2 bands];
    v34 = [bands2 objectAtIndexedSubscript:0];
    [v34 setBypass:0];

    inputFilter3 = [(AVAudioDeviceTestService *)self inputFilter];
    bands3 = [inputFilter3 bands];
    v37 = [bands3 objectAtIndexedSubscript:0];
    LODWORD(v38) = 1157234688;
    [v37 setFrequency:v38];

    inputFilter4 = [(AVAudioDeviceTestService *)self inputFilter];
    bands4 = [inputFilter4 bands];
    v41 = [bands4 objectAtIndexedSubscript:0];
    LODWORD(v42) = 4.0;
    [v41 setBandwidth:v42];
  }

  outputProcessingChain = [chainCopy outputProcessingChain];
  v44 = outputProcessingChain == 0;

  if (!v44)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v45 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 238;
      _os_log_impl(&dword_1BA5AC000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setting output processing chain", buf, 0x12u);
    }

    v46 = [[AVAudioUnitEQ alloc] initWithNumberOfBands:1];
    [(AVAudioDeviceTestService *)self setOutputFilter:v46];

    outputFilter = [(AVAudioDeviceTestService *)self outputFilter];
    bands5 = [outputFilter bands];
    v49 = [bands5 objectAtIndexedSubscript:0];
    [v49 setFilterType:5];

    outputFilter2 = [(AVAudioDeviceTestService *)self outputFilter];
    bands6 = [outputFilter2 bands];
    v52 = [bands6 objectAtIndexedSubscript:0];
    [v52 setBypass:0];

    outputFilter3 = [(AVAudioDeviceTestService *)self outputFilter];
    bands7 = [outputFilter3 bands];
    v55 = [bands7 objectAtIndexedSubscript:0];
    LODWORD(v56) = 1157234688;
    [v55 setFrequency:v56];

    outputFilter4 = [(AVAudioDeviceTestService *)self outputFilter];
    bands8 = [outputFilter4 bands];
    v59 = [bands8 objectAtIndexedSubscript:0];
    LODWORD(v60) = 4.0;
    [v59 setBandwidth:v60];
  }

  v61 = dispatch_semaphore_create(0);
  *buf = *"xmuaxmcmlppa";
  *&buf[16] = 0;
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __88__AVAudioDeviceTestService_createAudioEngineAndProcessingChain_session_sourceNodeBlock___block_invoke;
  v129[3] = &unk_1E7EF5708;
  v62 = v61;
  v130 = v62;
  selfCopy = self;
  [AVAudioUnit instantiateWithComponentDescription:buf options:0 completionHandler:v129];
  if (dispatch_semaphore_wait(v62, 0x3B9ACA00uLL))
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v63 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioDeviceTestService.mm";
      *&buf[12] = 1024;
      *&buf[14] = 270;
      v64 = "%25s:%-5d Creating multichannel mixer took too long";
LABEL_41:
      _os_log_impl(&dword_1BA5AC000, v63, OS_LOG_TYPE_ERROR, v64, buf, 0x12u);
      goto LABEL_117;
    }

    goto LABEL_117;
  }

  multichannelMixer = [(AVAudioDeviceTestService *)self multichannelMixer];
  v66 = multichannelMixer == 0;

  if (!v66)
  {
    sourceNode2 = [(AVAudioDeviceTestService *)self sourceNode];
    v68 = sourceNode2 == 0;

    if (v68)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v72 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 284;
        _os_log_impl(&dword_1BA5AC000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching player to engine", buf, 0x12u);
      }

      engine2 = [(AVAudioDeviceTestService *)self engine];
      player = [(AVAudioDeviceTestService *)self player];
      [engine2 attachNode:player];
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v69 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 281;
        _os_log_impl(&dword_1BA5AC000, v69, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching sourceNode to engine", buf, 0x12u);
      }

      engine2 = [(AVAudioDeviceTestService *)self engine];
      player = [(AVAudioDeviceTestService *)self sourceNode];
      [engine2 attachNode:player];
    }

    inputFilter5 = [(AVAudioDeviceTestService *)self inputFilter];
    v74 = inputFilter5 == 0;

    if (!v74)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v75 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 289;
        _os_log_impl(&dword_1BA5AC000, v75, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching inputFilter to engine", buf, 0x12u);
      }

      engine3 = [(AVAudioDeviceTestService *)self engine];
      inputFilter6 = [(AVAudioDeviceTestService *)self inputFilter];
      [engine3 attachNode:inputFilter6];
    }

    outputFilter5 = [(AVAudioDeviceTestService *)self outputFilter];
    v79 = outputFilter5 == 0;

    if (!v79)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v80 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 294;
        _os_log_impl(&dword_1BA5AC000, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attaching outputFilter to engine", buf, 0x12u);
      }

      engine4 = [(AVAudioDeviceTestService *)self engine];
      outputFilter6 = [(AVAudioDeviceTestService *)self outputFilter];
      [engine4 attachNode:outputFilter6];
    }

    engine5 = [(AVAudioDeviceTestService *)self engine];
    outputNode2 = [engine5 outputNode];
    v85 = [outputNode2 outputFormatForBus:0];
    [v85 sampleRate];
    v87 = v86;

    if (v87 <= 0.0)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v88 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 300;
        _os_log_impl(&dword_1BA5AC000, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d sampleRate for engine outputNode was <= 0. Setting to 44100", buf, 0x12u);
      }

      v87 = 44100.0;
    }

    v124 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:1 channels:v87];
    if (!v124)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v89 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 306;
        _os_log_impl(&dword_1BA5AC000, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create internal format from engine output node", buf, 0x12u);
      }
    }

    inputFilter7 = [(AVAudioDeviceTestService *)self inputFilter];
    v91 = inputFilter7 == 0;

    if (!v91)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v92 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 311;
        _os_log_impl(&dword_1BA5AC000, v92, OS_LOG_TYPE_DEFAULT, "%25s:%-5d connecting inputFilter to inputNode", buf, 0x12u);
      }

      engine6 = [(AVAudioDeviceTestService *)self engine];
      engine7 = [(AVAudioDeviceTestService *)self engine];
      inputNode = [engine7 inputNode];
      inputFilter8 = [(AVAudioDeviceTestService *)self inputFilter];
      [engine6 connect:inputNode to:inputFilter8 format:0];
    }

    sourceNode3 = [(AVAudioDeviceTestService *)self sourceNode];
    v98 = sourceNode3 == 0;

    if (!v98)
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v99 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 316;
        _os_log_impl(&dword_1BA5AC000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting sourceNode to channel mixer", buf, 0x12u);
      }

      engine8 = [(AVAudioDeviceTestService *)self engine];
      sourceNode4 = [(AVAudioDeviceTestService *)self sourceNode];
      multichannelMixer2 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [engine8 connect:sourceNode4 to:multichannelMixer2 format:v125];
    }

    engine9 = [(AVAudioDeviceTestService *)self engine];
    multichannelMixer3 = [(AVAudioDeviceTestService *)self multichannelMixer];
    engine10 = [(AVAudioDeviceTestService *)self engine];
    outputNode3 = [engine10 outputNode];
    engine11 = [(AVAudioDeviceTestService *)self engine];
    outputNode4 = [engine11 outputNode];
    v109 = [outputNode4 outputFormatForBus:0];
    [engine9 connect:multichannelMixer3 to:outputNode3 format:v109];

    outputFilter7 = [(AVAudioDeviceTestService *)self outputFilter];
    LOBYTE(outputNode4) = outputFilter7 == 0;

    if (outputNode4)
    {
      sourceNode5 = [(AVAudioDeviceTestService *)self sourceNode];
      v121 = sourceNode5 == 0;

      if (!v121)
      {
LABEL_112:
        if (AVAudioDeviceTestServiceLog(void)::once != -1)
        {
          dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
        }

        v123 = *AVAudioDeviceTestServiceLog(void)::category;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "AVAudioDeviceTestService.mm";
          *&buf[12] = 1024;
          *&buf[14] = 336;
          _os_log_impl(&dword_1BA5AC000, v123, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Finished creating audio engine and processing chain", buf, 0x12u);
        }

        goto LABEL_117;
      }

      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v122 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 333;
        _os_log_impl(&dword_1BA5AC000, v122, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting player to channel mixer", buf, 0x12u);
      }

      engine12 = [(AVAudioDeviceTestService *)self engine];
      player2 = [(AVAudioDeviceTestService *)self player];
      multichannelMixer4 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [engine12 connect:player2 to:multichannelMixer4 format:v125];
    }

    else
    {
      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v111 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 325;
        _os_log_impl(&dword_1BA5AC000, v111, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting outputFilter to channel mixer", buf, 0x12u);
      }

      engine13 = [(AVAudioDeviceTestService *)self engine];
      outputFilter8 = [(AVAudioDeviceTestService *)self outputFilter];
      multichannelMixer5 = [(AVAudioDeviceTestService *)self multichannelMixer];
      [engine13 connect:outputFilter8 to:multichannelMixer5 format:v125];

      player3 = [(AVAudioDeviceTestService *)self player];
      LOBYTE(outputFilter8) = player3 == 0;

      if (outputFilter8)
      {
        goto LABEL_112;
      }

      if (AVAudioDeviceTestServiceLog(void)::once != -1)
      {
        dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
      }

      v116 = *AVAudioDeviceTestServiceLog(void)::category;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "AVAudioDeviceTestService.mm";
        *&buf[12] = 1024;
        *&buf[14] = 329;
        _os_log_impl(&dword_1BA5AC000, v116, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting player to output filter", buf, 0x12u);
      }

      engine12 = [(AVAudioDeviceTestService *)self engine];
      player2 = [(AVAudioDeviceTestService *)self player];
      multichannelMixer4 = [(AVAudioDeviceTestService *)self outputFilter];
      [engine12 connect:player2 to:multichannelMixer4 format:v125];
    }

    goto LABEL_112;
  }

  if (AVAudioDeviceTestServiceLog(void)::once != -1)
  {
    dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
  }

  v63 = *AVAudioDeviceTestServiceLog(void)::category;
  if (os_log_type_enabled(*AVAudioDeviceTestServiceLog(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVAudioDeviceTestService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 274;
    v64 = "%25s:%-5d Failed to create multichannel mixer";
    goto LABEL_41;
  }

LABEL_117:
}

void __88__AVAudioDeviceTestService_createAudioEngineAndProcessingChain_session_sourceNodeBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (AVAudioDeviceTestServiceLog(void)::once != -1)
    {
      dispatch_once(&AVAudioDeviceTestServiceLog(void)::once, &__block_literal_global_3393);
    }

    v7 = *AVAudioDeviceTestServiceLog(void)::category;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      v11 = 136315650;
      v12 = "AVAudioDeviceTestService.mm";
      v13 = 1024;
      v14 = 262;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Error instantiating AVAudioUnit: %@", &v11, 0x1Cu);
    }
  }

  else
  {
    [*(a1 + 40) setMultichannelMixer:v5];
    v9 = [*(a1 + 40) engine];
    v10 = [*(a1 + 40) multichannelMixer];
    [v9 attachNode:v10];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (AVAudioDeviceTestService)init
{
  v8.receiver = self;
  v8.super_class = AVAudioDeviceTestService;
  v2 = [(AVAudioDeviceTestService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(AVAudioDeviceTestService *)v2 setTestServiceSupportedOnHardware:1];
    [(AVAudioDeviceTestService *)v3 setExtensionHandle:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.avaudiodevietestservice.tones", v4);
    [(AVAudioDeviceTestService *)v3 setToneQueue:v5];

    v6 = os_transaction_create();
    [(AVAudioDeviceTestService *)v3 setTransaction:v6];
  }

  return v3;
}

@end