@interface TLAttentionAwarenessEffectProcessor
- ($8F739DADA627152431EF347AE70D5328)effectParameters;
- (AudioBufferList)render:(AudioBufferList *)render numberOfFrames:(unsigned int)frames;
- (BOOL)start;
- (TLAttentionAwarenessEffectProcessor)initWithProcessingFormat:(id)format framesPerRender:(unsigned int)render audioSession:(id)session effectParameters:(id)parameters;
- (float)_currentEffectMix;
- (float)_sanitizeEffectMix:(float)mix;
- (void)_applyEffectMix:(float)mix;
- (void)_applyEffectParameters:(id)parameters includingEffectMix:(BOOL)mix;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)dealloc;
- (void)setEffectParameters:(id)parameters effectMixFadeDuration:(double)duration;
- (void)start;
@end

@implementation TLAttentionAwarenessEffectProcessor

- (TLAttentionAwarenessEffectProcessor)initWithProcessingFormat:(id)format framesPerRender:(unsigned int)render audioSession:(id)session effectParameters:(id)parameters
{
  var2 = parameters.var2;
  v71 = *&parameters.var0;
  v87 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  sessionCopy = session;
  v82.receiver = self;
  v82.super_class = TLAttentionAwarenessEffectProcessor;
  v9 = [(TLAttentionAwarenessEffectProcessor *)&v82 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:v10];
    bundleIdentifier = [v12 bundleIdentifier];
    v14 = NSStringFromClass(v10);
    v15 = [v11 stringWithFormat:@"%@.%@-%@", bundleIdentifier, v14, @"AccessQueue"];
    accessQueueLabel = v9->_accessQueueLabel;
    v9->_accessQueueLabel = v15;

    v17 = dispatch_queue_create([(NSString *)v9->_accessQueueLabel UTF8String], 0);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v17;

    objc_storeStrong(&v9->_audioSession, session);
    v19 = objc_alloc_init(MEMORY[0x1E69583F8]);
    engine = v9->_engine;
    v9->_engine = v19;

    v21 = v9->_engine;
    v81 = 0;
    v22 = [(AVAudioEngine *)v21 enableManualRenderingMode:1 format:formatCopy maximumFrameCount:render error:&v81];
    v23 = v81;
    v25 = v23;
    if (v23)
    {
      v26 = v22;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      inputNode = [(AVAudioEngine *)v9->_engine inputNode];
      inputNode = v9->_inputNode;
      v9->_inputNode = inputNode;

      v29 = objc_alloc_init(MEMORY[0x1E69584C0]);
      lowPassFilter = v9->_lowPassFilter;
      v9->_lowPassFilter = v29;

      v31 = objc_alloc_init(MEMORY[0x1E69584D0]);
      reverb = v9->_reverb;
      v9->_reverb = v31;

      [(AVAudioEngine *)v9->_engine attachNode:v9->_lowPassFilter];
      [(AVAudioEngine *)v9->_engine attachNode:v9->_reverb];
      [(AVAudioEngine *)v9->_engine connect:v9->_lowPassFilter to:v9->_reverb format:formatCopy];
      v33 = v9->_engine;
      v34 = v9->_reverb;
      mainMixerNode = [(AVAudioEngine *)v33 mainMixerNode];
      [(AVAudioEngine *)v33 connect:v34 to:mainMixerNode fromBus:0 toBus:1 format:formatCopy];

      v36 = objc_alloc(MEMORY[0x1E69583E0]);
      mainMixerNode2 = [(AVAudioEngine *)v9->_engine mainMixerNode];
      v68 = [v36 initWithNode:mainMixerNode2 bus:0];

      v38 = [objc_alloc(MEMORY[0x1E69583E0]) initWithNode:v9->_lowPassFilter bus:0];
      v39 = v9->_engine;
      v40 = v9->_inputNode;
      v83[0] = v68;
      v83[1] = v38;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
      [(AVAudioEngine *)v39 connect:v40 toConnectionPoints:v41 fromBus:0 format:formatCopy];

      v72 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v67 = [v72 URLForResource:@"PearlID_Equalizer" withExtension:@"aupreset"];
      v42 = v9->_lowPassFilter;
      v80 = v25;
      LOBYTE(v39) = [(AVAudioUnitEQ *)v42 loadAudioUnitPresetAtURL:v67 error:&v80];
      v43 = v80;

      if ((v39 & 1) == 0)
      {
        v46 = TLLogPlayback(v44, v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [TLAttentionAwarenessEffectProcessor initWithProcessingFormat:v9 framesPerRender:v43 audioSession:? effectParameters:?];
        }
      }

      bands = [(AVAudioUnitEQ *)v9->_lowPassFilter bands];
      v48 = TLLogPlayback(bands, v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        bypass = [(AVAudioUnitEQ *)v9->_lowPassFilter bypass];
        v66 = [bands count];
        *location = 138543874;
        *&location[4] = v9;
        v85 = 1024;
        *v86 = bypass;
        *&v86[4] = 2048;
        *&v86[6] = v66;
        _os_log_debug_impl(&dword_1D9356000, v48, OS_LOG_TYPE_DEBUG, "%{public}@: -init. Equalizer bypass: %{BOOL}d. Number of bands: %lu.", location, 0x1Cu);
      }

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke;
      v78[3] = &unk_1E8579618;
      v49 = v9;
      v79 = v49;
      [bands enumerateObjectsUsingBlock:v78];
      v50 = [v72 URLForResource:@"PearlID_Reverb" withExtension:@"aupreset"];
      v51 = v9->_reverb;
      v77 = v43;
      v52 = [(AVAudioUnitReverb *)v51 loadAudioUnitPresetAtURL:v50 error:&v77];
      v25 = v77;

      if ((v52 & 1) == 0)
      {
        v55 = TLLogPlayback(v53, v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          [TLAttentionAwarenessEffectProcessor initWithProcessingFormat:v49 framesPerRender:v25 audioSession:? effectParameters:?];
        }
      }

      v56 = TLLogPlayback(v53, v54);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [TLAttentionAwarenessEffectProcessor initWithProcessingFormat:v49 framesPerRender:&v9->_reverb audioSession:? effectParameters:?];
      }

      mainMixerNode3 = [(AVAudioEngine *)v9->_engine mainMixerNode];
      LODWORD(v58) = 1.0;
      [mainMixerNode3 setOutputVolume:v58];

      v59 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:formatCopy frameCapacity:render];
      destinationPCMBuffer = v49->_destinationPCMBuffer;
      v49->_destinationPCMBuffer = v59;

      [(AVAudioPCMBuffer *)v49->_destinationPCMBuffer setFrameLength:render];
      objc_initWeak(location, v49);
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke_21;
      v75[3] = &unk_1E8579640;
      objc_copyWeak(&v76, location);
      v61 = MEMORY[0x1DA730160](v75);
      if ([(AVAudioInputNode *)v9->_inputNode setManualRenderingInputPCMFormat:formatCopy inputBlock:v61])
      {
        *&v49->_effectParameters.shouldBypassLowPassFilter = v71;
        v49->_effectParameters.effectMix = var2;
        [TLAttentionAwarenessEffectProcessor _applyEffectParameters:v49 includingEffectMix:"_applyEffectParameters:includingEffectMix:"];
      }

      else
      {

        v49 = 0;
      }

      objc_destroyWeak(&v76);
      objc_destroyWeak(location);

      v9 = v68;
    }

    else
    {
      v38 = TLLogPlayback(v23, v24);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        tl_nonRedundantDescription = [v25 tl_nonRedundantDescription];
        v64 = [formatCopy description];
        *location = 138543874;
        *&location[4] = tl_nonRedundantDescription;
        v85 = 2114;
        *v86 = v64;
        *&v86[8] = 2048;
        *&v86[10] = render;
        _os_log_error_impl(&dword_1D9356000, v38, OS_LOG_TYPE_ERROR, "Could not switch engine to offline mode, error %{public}@, format = %{public}@, maximumNumberOfFrames = %ld.", location, 0x20u);
      }

      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

void __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = TLLogPlayback(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = [v5 filterType];
    [v5 gain];
    v11 = v10;
    [v5 frequency];
    v13 = 138544642;
    v14 = v8;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 1024;
    v24 = [v5 bypass];
    _os_log_debug_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: -init. Equalizer band #%lu: filterType = %ld, gain = %f, frequency = %f, bypass = %{BOOL}d.", &v13, 0x3Au);
  }
}

uint64_t __110__TLAttentionAwarenessEffectProcessor_initWithProcessingFormat_framesPerRender_audioSession_effectParameters___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  dispatch_sync(v4, &__block_literal_global_4);
  v5.receiver = self;
  v5.super_class = TLAttentionAwarenessEffectProcessor;
  [(TLAttentionAwarenessEffectProcessor *)&v5 dealloc];
}

- ($8F739DADA627152431EF347AE70D5328)effectParameters
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1D93BC429;
  v12 = 0;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__TLAttentionAwarenessEffectProcessor_effectParameters__block_invoke;
  v7[3] = &unk_1E8578950;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue, v7);
  v3 = *(v9 + 4);
  v4 = v9[10];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.var0 = v5;
  result.var1 = *(&v5 + 1);
  result.var2 = v6;
  return result;
}

uint64_t __55__TLAttentionAwarenessEffectProcessor_effectParameters__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(*(result + 40) + 8);
  v3 = *(v1 + 80);
  *(v2 + 40) = *(v1 + 88);
  *(v2 + 32) = v3;
  return result;
}

- (void)setEffectParameters:(id)parameters effectMixFadeDuration:(double)duration
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke;
  v5[3] = &unk_1E8579690;
  v5[4] = self;
  parametersCopy = parameters;
  *&v5[5] = duration;
  dispatch_sync(accessQueue, v5);
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v6 = *(a1 + 56);
  *(v4 + 80) = *(a1 + 48);
  *(v4 + 88) = v6;
  [*(a1 + 32) _applyEffectParameters:*(a1 + 48) includingEffectMix:{*(a1 + 56), 0}];
  LODWORD(v7) = v5;
  [*(a1 + 32) _sanitizeEffectMix:v7];
  v9 = v8;
  LODWORD(v10) = *(a1 + 56);
  [*(a1 + 32) _sanitizeEffectMix:v10];
  v12 = v11;
  if (llroundf(v9 * 8388600.0) != llroundf(v11 * 8388600.0))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    if (v13 >= 0.00000011920929)
    {
      [v14 _currentEffectMix];
      v16 = v15;
      v17 = v12 - v15;
      v18 = *(a1 + 40) / 0.00499999989;
      v19 = llroundf(ceilf(v18));
      v20 = *(*(a1 + 32) + 96);
      if (v20)
      {
        dispatch_source_cancel(v20);
      }

      v21 = dispatch_get_global_queue(2, 0);
      v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v21);
      v23 = *(a1 + 32);
      v24 = *(v23 + 96);
      *(v23 + 96) = v22;

      dispatch_source_set_timer(*(*(a1 + 32) + 96), 0, 0x4C4B40uLL, 0xC350uLL);
      objc_initWeak(&location, *(a1 + 32));
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2020000000;
      v30[3] = 0;
      v25 = *(*(a1 + 32) + 96);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_26;
      handler[3] = &unk_1E8579668;
      objc_copyWeak(v27, &location);
      handler[4] = v30;
      v27[1] = v19;
      v28 = v16;
      v29 = v17;
      dispatch_source_set_event_handler(v25, handler);
      dispatch_resume(*(*(a1 + 32) + 96));
      objc_destroyWeak(v27);
      _Block_object_dispose(v30, 8);
      objc_destroyWeak(&location);
    }

    else
    {
      *&v13 = v12;
      [v14 _applyEffectMix:v13];
    }
  }
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *&v3 = *(a1 + 56) + (((*(*(*(a1 + 32) + 8) + 24) + 1) / *(a1 + 48)) * *(a1 + 60));
    [WeakRetained _applyEffectMix:v3];
    if (++*(*(*(a1 + 32) + 8) + 24) == *(a1 + 48))
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x3032000000;
      v10 = __Block_byref_object_copy__2;
      v11 = __Block_byref_object_dispose__2;
      v12 = 0;
      v5 = v4[1];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_27;
      v6[3] = &unk_1E8578950;
      v6[4] = v4;
      v6[5] = &v7;
      dispatch_sync(v5, v6);
      dispatch_source_cancel(v8[5]);
      _Block_object_dispose(&v7, 8);
    }
  }
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_27(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;
}

- (BOOL)start
{
  if ([(AVAudioEngine *)self->_engine isInManualRenderingMode])
  {
    engine = self->_engine;
    v10 = 0;
    v4 = [(AVAudioEngine *)engine startAndReturnError:&v10];
    v5 = v10;
    v7 = v5;
    if (!v4 && v5)
    {
      v8 = TLLogPlayback(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(TLAttentionAwarenessEffectProcessor *)v7 start];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  self->_started = 1;
  return v4;
}

- (AudioBufferList)render:(AudioBufferList *)render numberOfFrames:(unsigned int)frames
{
  v4 = *&frames;
  if ([(AVAudioPCMBuffer *)self->_destinationPCMBuffer frameCapacity]< frames)
  {
    return 0;
  }

  v10 = 0;
  self->_inputNodeInputBufferList = render;
  manualRenderingBlock = [(AVAudioEngine *)self->_engine manualRenderingBlock];
  (manualRenderingBlock)[2](manualRenderingBlock, v4, [(AVAudioPCMBuffer *)self->_destinationPCMBuffer mutableAudioBufferList], &v10);
  mutableAudioBufferList = [(AVAudioPCMBuffer *)self->_destinationPCMBuffer mutableAudioBufferList];

  return mutableAudioBufferList;
}

- (void)_applyEffectMix:(float)mix
{
  inputNode = self->_inputNode;
  mainMixerNode = [(AVAudioEngine *)self->_engine mainMixerNode];
  v12 = [(AVAudioInputNode *)inputNode destinationForMixer:mainMixerNode bus:1];

  *&v7 = mix;
  [v12 setVolume:v7];
  v8 = self->_inputNode;
  mainMixerNode2 = [(AVAudioEngine *)self->_engine mainMixerNode];
  v10 = [(AVAudioInputNode *)v8 destinationForMixer:mainMixerNode2 bus:0];

  *&v11 = 1.0 - mix;
  [v10 setVolume:v11];
}

- (float)_currentEffectMix
{
  inputNode = self->_inputNode;
  mainMixerNode = [(AVAudioEngine *)self->_engine mainMixerNode];
  v4 = [(AVAudioInputNode *)inputNode destinationForMixer:mainMixerNode bus:1];

  [v4 volume];
  v6 = v5;

  return v6;
}

- (float)_sanitizeEffectMix:(float)mix
{
  mixCopy = mix;
  if (mixCopy < 0.0)
  {
    mixCopy = 0.0;
  }

  return fmin(mixCopy, 1.0);
}

- (void)_applyEffectParameters:(id)parameters includingEffectMix:(BOOL)mix
{
  mixCopy = mix;
  var2 = parameters.var2;
  var0 = parameters.var0;
  v30 = *MEMORY[0x1E69E9840];
  var1 = parameters.var1;
  bypass = [(AVAudioUnitEQ *)self->_lowPassFilter bypass];
  if (bypass != var0)
  {
    bypass = [(AVAudioUnitEQ *)self->_lowPassFilter setBypass:?];
  }

  v11 = TLLogPlayback(bypass, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [TLAttentionAwarenessEffectProcessor _applyEffectParameters:? includingEffectMix:?];
  }

  category = [(AVAudioSession *)self->_audioSession category];
  if ([category isEqualToString:*MEMORY[0x1E6958080]])
  {
    if (var1 > 1.0 || (v13 = -20.0, var1 <= 0.875))
    {
      if (var1 > 0.875 || (v13 = -16.0, var1 <= 0.75))
      {
        if (var1 > 0.75 || (v13 = -14.0, var1 <= 0.625))
        {
          if (var1 > 0.625 || (v13 = -11.0, var1 <= 0.5))
          {
            v14 = var1 <= 0.25 || var1 > 0.5;
            v15 = -3.0;
            v16 = -6.0;
LABEL_31:
            if (v14)
            {
              v13 = v15;
            }

            else
            {
              v13 = v16;
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = 0.0;
    if ([category isEqualToString:*MEMORY[0x1E6958030]])
    {
      if (var1 > 1.0 || (v13 = -28.0, var1 <= 0.875))
      {
        if (var1 > 0.875 || (v13 = -24.0, var1 <= 0.75))
        {
          if (var1 > 0.75 || (v13 = -22.0, var1 <= 0.625))
          {
            if (var1 > 0.625 || (v13 = -20.0, var1 <= 0.5))
            {
              v14 = var1 <= 0.25 || var1 > 0.5;
              v15 = -12.0;
              v16 = -16.0;
              goto LABEL_31;
            }
          }
        }
      }
    }
  }

  globalGain = [(AVAudioUnitEQ *)self->_lowPassFilter globalGain];
  if (llroundf(*&v19 * 8388600.0) == llroundf(v13 * 8388600.0))
  {
    v20 = TLLogPlayback(globalGain, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [TLAttentionAwarenessEffectProcessor _applyEffectParameters:v13 includingEffectMix:?];
    }
  }

  else
  {
    *&v19 = v13;
    v21 = [(AVAudioUnitEQ *)self->_lowPassFilter setGlobalGain:v19];
    v20 = TLLogPlayback(v21, v22);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138543874;
      selfCopy = self;
      v26 = 2048;
      v27 = v13;
      v28 = 2114;
      v29 = category;
      _os_log_debug_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: -_applyEffectParameters:. Set low pass filter global gain to %0.2f for audio session category %{public}@.", &v24, 0x20u);
    }
  }

  if (mixCopy)
  {
    *&v23 = var2;
    [(TLAttentionAwarenessEffectProcessor *)self _applyEffectMix:v23];
  }
}

- (void)_assertRunningOnAccessQueue
{
  v27 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    v5 = strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]);
    if (v5)
    {
      v7 = TLLogGeneral(v5, v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

      if (v8)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/AttentionAwarenessEffects/TLAttentionAwarenessEffectProcessor.m"];
        v13 = TLLogGeneral(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v11 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v19 = 136381443;
          v20 = "[TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue]";
          v21 = 2113;
          v22 = lastPathComponent;
          v23 = 2049;
          v24 = 400;
          v25 = 2113;
          v26 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v19, 0x2Au);
        }
      }

      else
      {
        v11 = TLLogGeneral(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v18 = TLLogGeneral(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue];
      }
    }
  }
}

- (void)_assertNotRunningOnAccessQueue
{
  v27 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {

    dispatch_assert_queue_not_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    v5 = strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]);
    if (!v5)
    {
      v7 = TLLogGeneral(v5, v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

      if (v8)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/BackEnds/QueuePlayer/AttentionAwarenessEffects/TLAttentionAwarenessEffectProcessor.m"];
        v13 = TLLogGeneral(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v11 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v19 = 136381443;
          v20 = "[TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue]";
          v21 = 2113;
          v22 = lastPathComponent;
          v23 = 2049;
          v24 = 408;
          v25 = 2113;
          v26 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v19, 0x2Au);
        }
      }

      else
      {
        v11 = TLLogGeneral(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v18 = TLLogGeneral(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue];
      }
    }
  }
}

- (void)initWithProcessingFormat:(uint64_t)a1 framesPerRender:(void *)a2 audioSession:effectParameters:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)initWithProcessingFormat:(uint64_t)a1 framesPerRender:(void *)a2 audioSession:effectParameters:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)initWithProcessingFormat:(uint64_t)a1 framesPerRender:(id *)a2 audioSession:effectParameters:.cold.3(uint64_t a1, id *a2)
{
  [*a2 wetDryMix];
  OUTLINED_FUNCTION_5_0(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0(&dword_1D9356000, v3, v4, "%{public}@: -init. Reverb wet dry mix: %f.", v5, v6, v7, v8);
}

void __81__TLAttentionAwarenessEffectProcessor_setEffectParameters_effectMixFadeDuration___block_invoke_cold_1(uint64_t a1)
{
  [*(*(a1 + 32) + 64) globalGain];
  OUTLINED_FUNCTION_5_0(v1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0(&dword_1D9356000, v2, v3, "%{public}@: -setEffectParameters:. Current low pass filter global gain: %0.2f.", v4, v5, v6, v7);
}

- (void)start
{
  tl_nonRedundantDescription = [self tl_nonRedundantDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_applyEffectParameters:(float)a1 includingEffectMix:.cold.1(float a1)
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0(a1);
  v4 = v1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: -_applyEffectParameters:. Volume for low pass filter global gain: %0.2f.", v3, 0x16u);
}

- (void)_applyEffectParameters:(float)a1 includingEffectMix:.cold.2(float a1)
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0(a1);
  v4 = v1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_1D9356000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: -_applyEffectParameters:. Low pass filter global gain is already set to %0.2f.", v3, 0x16u);
}

@end