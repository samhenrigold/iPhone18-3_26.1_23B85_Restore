@interface AVVoiceController
- (AVVoiceControllerRecordDelegate)recordDelegate;
- (BOOL)IsDeviceAvailableInLocalRoute:(id)route error:(id *)error;
- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm error:(id *)error;
- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm recordMode:(BOOL)mode error:(id *)error;
- (BOOL)configureAlertBehaviorForStream:(id)stream error:(id *)error;
- (BOOL)enableSmartRoutingConsiderationForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error;
- (BOOL)isDuckingSupportedOnPickedRouteForStream:(unint64_t)stream error:(id *)error;
- (BOOL)isMeteringEnabledForStream:(unint64_t)stream;
- (BOOL)playAlertSoundForType:(int)type overrideMode:(int64_t)mode;
- (BOOL)prepareRecordForStream:(id)stream error:(id *)error;
- (BOOL)setAlertSoundFromURL:(id)l forType:(int)type;
- (BOOL)setAnnounceCallsEnabledForStream:(unint64_t)stream enable:(BOOL)enable;
- (BOOL)setContextForStream:(id)stream forStream:(unint64_t)forStream error:(id *)error;
- (BOOL)setDuckOthersForStream:(unint64_t)stream withSettings:(id)settings error:(id *)error;
- (BOOL)setEnableInterruptionByRecordingClientsForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error;
- (BOOL)setRecordModeForStream:(unint64_t)stream recordMode:(int64_t)mode error:(id *)error;
- (BOOL)startRecordForStream:(id)stream error:(id *)error;
- (BOOL)stopRecordForStream:(unint64_t)stream error:(id *)error;
- (BOOL)updateMeterForStream:(unint64_t)stream;
- (Endpointer)endpointerDelegate;
- (NSDictionary)metrics;
- (double)getRecordBufferDurationForStream:(unint64_t)stream;
- (double)recordEndWaitTime;
- (double)recordInterspeechWaitTime;
- (double)recordStartWaitTime;
- (float)alertVolume;
- (float)getAveragePowerForStream:(unint64_t)stream forChannel:(unint64_t)channel;
- (float)getPeakPowerForStream:(unint64_t)stream forChannel:(unint64_t)channel;
- (id)getPlaybackRouteForStream:(unint64_t)stream withError:(id *)error;
- (id)getRecordDeviceInfoForStream:(unint64_t)stream;
- (id)getRecordSettingsForStream:(unint64_t)stream;
- (id)initVoiceControllerForClient:(int64_t)client withError:(id *)error;
- (id)mockPluginEndpoint;
- (int)recordEndpointMode;
- (int64_t)_bringUp:(int64_t)up withError:(id *)error;
- (int64_t)getCurrentSessionState;
- (int64_t)getCurrentSessionStateForStream:(unint64_t)stream;
- (int64_t)getCurrentStreamState:(unint64_t)state;
- (int64_t)getRecordModeForStream:(unint64_t)stream;
- (shared_ptr<ControllerImpl>)impl;
- (unint64_t)getAlertStartTime;
- (unint64_t)setContext:(id)context error:(id *)error;
- (unint64_t)setContext:(id)context streamType:(int64_t *)type error:(id *)error;
- (void)_teardownWithError:(id *)error;
- (void)alertPlaybackFinishedWithSettings:(id)settings;
- (void)beganRecording:(unint64_t)recording status:(int)status;
- (void)beginAudioSessionActivate:(BOOL)activate;
- (void)beginRecordInterruptionWithContext:(id)context;
- (void)cleanSlateWithError:(id *)error;
- (void)configureAlertBehaviorForStream:(id)stream completion:(id)completion;
- (void)configureVoiceTriggerClientCompletionBlocks;
- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options completion:(id)completion;
- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options error:(id *)error;
- (void)deactivateAudioSessionWithOptions:(unint64_t)options;
- (void)dealloc;
- (void)enableMiniDucking:(BOOL)ducking;
- (void)enableTriangleModeForStream:(unint64_t)stream enable:(BOOL)enable withCompletion:(id)completion;
- (void)encodeError:(int)error;
- (void)endAudioSessionActivate:(BOOL)activate;
- (void)endRecordInterruption;
- (void)endpointDetectedAtTime:(double)time;
- (void)finalize;
- (void)finishedRecording:(unint64_t)recording status:(int)status;
- (void)getDeviceLatenciesForStream:(unint64_t)stream withCompletion:(id)completion;
- (void)getInputChannelInfoForStream:(unint64_t)stream completion:(id)completion;
- (void)getPlaybackRouteForStream:(unint64_t)stream withCompletion:(id)completion;
- (void)handleInterruption:(id)interruption;
- (void)handleMediaServerDeath:(id)death;
- (void)handleMediaServerReset:(id)reset;
- (void)handlePluginDidPublishDevice:(id)device withDevice:(id)withDevice;
- (void)handlePluginDidUnpublishDevice:(id)device withDevice:(id)withDevice;
- (void)handleRouteChange:(id)change;
- (void)hardwareConfigChanged:(int)changed;
- (void)interspeechPointDetectedAtTime:(double)time;
- (void)notifyEventOccured:(unint64_t)occured error:(id)error;
- (void)notifyStreamInvalidated:(unint64_t)invalidated;
- (void)playAlert:(int)alert withOverride:(int64_t)override completion:(id)completion;
- (void)prepareRecordForStream:(id)stream completion:(id)completion;
- (void)removeSessionNotifications:(id)notifications;
- (void)removeStream:(unint64_t)stream completion:(id)completion;
- (void)sessionCleanup;
- (void)sessionSetup;
- (void)setAlertVolume:(float)volume;
- (void)setContext:(id)context completion:(id)completion;
- (void)setEndpointerDelegate:(id)delegate;
- (void)setRecordDelegate:(id)delegate;
- (void)setRecordEndWaitTime:(double)time;
- (void)setRecordEndpointMode:(int)mode;
- (void)setRecordInterspeechWaitTime:(double)time;
- (void)setRecordStartWaitTime:(double)time;
- (void)setRecordStatusChangeBlock:(id)block;
- (void)setSessionNotifications:(id)notifications;
- (void)startKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion;
- (void)startRecordForStream:(id)stream completion:(id)completion;
- (void)startRecordWithSettings:(id)settings completion:(id)completion alertCompletion:(id)alertCompletion audioCallback:(id)callback;
- (void)startpointDetected;
- (void)stopKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion;
- (void)stopRecordForStream:(unint64_t)stream completion:(id)completion;
- (void)teardownWithError:(id *)error;
@end

@implementation AVVoiceController

- (shared_ptr<ControllerImpl>)impl
{
  impl = self->_impl;
  *v2 = 0;
  v2[1] = 0;
  if (impl)
  {
    v5 = *impl;
    v4 = impl[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *v2 = v5;
    v2[1] = v4;
  }

  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (int64_t)getCurrentSessionState
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v8 && !self->mClientAPIClutch)
  {
    AVVCSessionState = ControllerImpl::getAVVCSessionState(v8, 0);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v3 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v3 = *kAVVCScope;
  if (v3)
  {
LABEL_8:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v11 = "AVVoiceController.mm";
      v12 = 1024;
      v13 = 1611;
      v14 = 2048;
      v15 = v8;
      v16 = 1024;
      v17 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  AVVCSessionState = 0;
LABEL_12:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return AVVCSessionState;
}

- (id)mockPluginEndpoint
{
  v17 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v7 && !self->mClientAPIClutch)
  {
    mockPluginEndpoint = [*(v7 + 464) mockPluginEndpoint];
    goto LABEL_11;
  }

  if (kAVVCScope)
  {
    mockPluginEndpoint = *kAVVCScope;
    if (!mockPluginEndpoint)
    {
      goto LABEL_11;
    }
  }

  else
  {
    mockPluginEndpoint = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(mockPluginEndpoint, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v10 = "AVVoiceController.mm";
    v11 = 1024;
    v12 = 1940;
    v13 = 2048;
    v14 = v7;
    v15 = 1024;
    v16 = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, mockPluginEndpoint, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

  mockPluginEndpoint = 0;
LABEL_11:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return mockPluginEndpoint;
}

- (BOOL)setEnableInterruptionByRecordingClientsForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v26 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController setEnableInterruptionByRecordingClientsForStream:enable:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1909;
    *&buf[18] = 2048;
    *&buf[20] = self;
    v21 = 2048;
    streamCopy = stream;
    v23 = 1024;
    v24 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setEnableInterruptionByRecordingClientForStream: streamHandle(%lu) enable(%d)", buf, 0x2Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  if (v18 && !self->mClientAPIClutch)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3321888768;
    v14[2] = __83__AVVoiceController_setEnableInterruptionByRecordingClientsForStream_enable_error___block_invoke;
    v14[3] = &unk_1F384CFB0;
    v14[4] = buf;
    v14[5] = v18;
    v15 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    streamCopy2 = stream;
    v17 = enableCopy;
    ControllerImpl::safeWork(v18, v14, "[AVVoiceController setEnableInterruptionByRecordingClientsForStream:enable:error:]");
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    *&buf[24] = -11780;
  }

  v11 = *(*&buf[8] + 24);
  v12 = v11;
  if (error && v11)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
  }

  _Block_object_dispose(buf, 8);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ElapsedTime::~ElapsedTime(v25);
  return v12 == 0;
}

void __83__AVVoiceController_setEnableInterruptionByRecordingClientsForStream_enable_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v15, *(*(a1 + 40) + 8), *(*(a1 + 40) + 16));
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  ControllerImpl::_lookupEngineForStreamID(&v9, *(v15 + 576), *(v15 + 584), v2);
  v4 = v9;
  if (!v9)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_13:
        *(v12 + 6) = -11793;
        v5 = v10;
        goto LABEL_14;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 6912;
      *&buf[18] = 2048;
      *&buf[20] = v2;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d setPrefersBeingInterruptedByNextActiveRecordingClient: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN14ControllerImpl48setEnableInterruptionByRecordingClientsForStreamEmb_block_invoke;
  *&buf[24] = &unk_1F384DEA0;
  v5 = v10;
  v19 = v9;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v3;
  v18 = &v11;
  (*(*v4 + 328))(v4, buf, "setEnableInterruptionByRecordingClientsForStream");
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_14:
  v8 = *(v12 + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Block_object_dispose(&v11, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
}

- (void)getDeviceLatenciesForStream:(unint64_t)stream withCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController getDeviceLatenciesForStream:withCompletion:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136316162;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1894;
    v19 = 2048;
    selfCopy = self;
    v21 = 2048;
    streamCopy = stream;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getDeviceLatenciesForStream: streamHandle(%lu), completionBlock(%p)", buf, 0x30u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  v11 = *buf;
  if (*buf && !self->mClientAPIClutch)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3321888768;
    v13[2] = __64__AVVoiceController_getDeviceLatenciesForStream_withCompletion___block_invoke;
    v13[3] = &unk_1F3848BA0;
    v15 = *buf;
    v16 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    streamCopy2 = stream;
    v14 = completionCopy;
    ControllerImpl::safeWork(v11, v13, "[AVVoiceController getDeviceLatenciesForStream:withCompletion:]");

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else if (completionCopy)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v25);
}

void __64__AVVoiceController_getDeviceLatenciesForStream_withCompletion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v34, *(v2 + 8), *(v2 + 16));
  v4 = ControllerImpl::sessionManagerForStreamID(v34, v1, 0);
  if ([v4 sessionState] != 7)
  {
    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
LABEL_12:
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11782 userInfo:0];
        *&v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v25 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 6888;
      *&buf[18] = 2048;
      *&buf[20] = v1;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceLatencies: Session for streamID(%lu) is not active !!!.", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  [v4 inputLatency];
  v6 = v5;
  [v4 outputLatency];
  v8 = v7;
  [v4 inputSafetyOffset];
  v10 = v9;
  [v4 outputSafetyOffset];
  v12 = v11;
  v13 = v6;
  v14 = MEMORY[0x1E695DF20];
  *&v11 = v13;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v16 = v8;
  *&v17 = v16;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v19 = v10;
  *&v20 = v19;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  v22 = v12;
  *&v23 = v22;
  v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v25 = [v14 dictionaryWithObjectsAndKeys:{v15, @"AVVCCurrentInputDeviceLatency", v18, @"AVVCCurrentOutputDeviceLatency", v21, @"AVVCCurrentInputSafetyOffset", v24, @"AVVCCurrentOutputSafetyOffset", 0}];

  if (kAVVCScope)
  {
    *&v26 = COERCE_DOUBLE(*kAVVCScope);
    if (*&v26 == 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *&v26 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 6885;
    *&buf[18] = 2048;
    *&buf[20] = v1;
    *&buf[28] = 2048;
    *&buf[30] = v13;
    *&buf[38] = 2048;
    v37 = v16;
    *v38 = 2048;
    *&v38[2] = v19;
    v39 = 2048;
    v40 = v22;
    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getDeviceLatencies: streamID(%lu) : input Latency(%f), output latency(%f), input safety offset (%f), output safety offset (%f)", buf, 0x44u);
  }

  *&v26 = 0.0;
LABEL_17:
  v30 = v34;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl18getDeviceLatenciesEmU13block_pointerFvP12NSDictionaryP7NSErrorE_block_invoke;
  *&buf[24] = &unk_1E7EF6878;
  v31 = v3;
  v37 = *&v26;
  *v38 = v31;
  *&buf[32] = v25;
  v32 = v26;
  v33 = v25;
  ControllerImpl::safeNotifyAlwaysAsync(v30, v3 != 0, buf);

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }
}

- (void)stopKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v24, "[AVVoiceController stopKeepAliveQueueForStream:completion:]", 0, 0);
  objc_msgSend_impl(self);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136316162;
    v15 = "AVVoiceController.mm";
    v16 = 1024;
    v17 = 1882;
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    streamCopy = stream;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: stopKeepAliveQueueForStream: streamHandle(%lu) completion(%p)", buf, 0x30u);
  }

LABEL_8:
  if (v12 && !self->mClientAPIClutch)
  {
    ControllerImpl::stopKeepAliveQueueForStream(v12, stream, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ElapsedTime::~ElapsedTime(v24);
}

- (void)startKeepAliveQueueForStream:(unint64_t)stream completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v24, "[AVVoiceController startKeepAliveQueueForStream:completion:]", 0, 0);
  objc_msgSend_impl(self);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136316162;
    v15 = "AVVoiceController.mm";
    v16 = 1024;
    v17 = 1869;
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    streamCopy = stream;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: startKeepAliveQueueForStream: streamHandle(%lu) completion(%p)", buf, 0x30u);
  }

LABEL_8:
  if (v12 && !self->mClientAPIClutch)
  {
    ControllerImpl::startKeepAliveQueueForStream(v12, stream, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ElapsedTime::~ElapsedTime(v24);
}

- (id)getPlaybackRouteForStream:(unint64_t)stream withError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1853;
    *&buf[18] = 2048;
    *&buf[20] = stream;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ### getPlaybackRouteForStream:withError: streamHandle(%lu)", buf, 0x1Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (!v16 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_20:
        v12 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1855;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_20;
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl16getPlaybackRouteEPU8__strongP8NSStringm_block_invoke;
  *&buf[24] = &__block_descriptor_56_e41_v16__0__NSObject_OS_dispatch_semaphore__8l;
  *&buf[32] = v16;
  streamCopy = stream;
  v21 = &v18;
  makeSynchronous(buf);
  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
    goto LABEL_22;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_22:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1860;
      *&buf[18] = 2112;
      *&buf[20] = v18;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Playback route: %@", buf, 0x1Cu);
    }
  }

  v12 = v18;
LABEL_26:
  v14 = v12;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    v14 = v18;
  }

  return v12;
}

- (void)getPlaybackRouteForStream:(unint64_t)stream withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v22, "[AVVoiceController getPlaybackRouteForStream:withCompletion:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _Block_copy(completionCopy);
    *buf = 136315906;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1834;
    v18 = 2048;
    streamCopy = stream;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ### getPlaybackRouteForStream: streamHandle(%lu) completionBlock(%p)", buf, 0x26u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  v11 = *buf;
  if (*buf && !self->mClientAPIClutch)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = __62__AVVoiceController_getPlaybackRouteForStream_withCompletion___block_invoke;
    v12[3] = &unk_1F3848BA0;
    v14 = *buf;
    v15 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    streamCopy2 = stream;
    v13 = completionCopy;
    ControllerImpl::safeWork(v11, v12, "[AVVoiceController getPlaybackRouteForStream:withCompletion:]");

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v22);
}

- (void)enableTriangleModeForStream:(unint64_t)stream enable:(BOOL)enable withCompletion:(id)completion
{
  enableCopy = enable;
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  ElapsedTime::ElapsedTime(v24, "[AVVoiceController enableTriangleModeForStream:enable:withCompletion:]", 0, 0);
  objc_msgSend_impl(self);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v15 = "AVVoiceController.mm";
    v16 = 1024;
    v17 = 1822;
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    streamCopy = stream;
    v22 = 1024;
    v23 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: enableTriangleModeForStream: streamHandle(%lu), opt value : %d", buf, 0x2Cu);
  }

LABEL_8:
  if (v12 && !self->mClientAPIClutch)
  {
    ControllerImpl::enableTriangleModeForStream(v12, stream, enableCopy, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ElapsedTime::~ElapsedTime(v24);
}

- (BOOL)isDuckingSupportedOnPickedRouteForStream:(unint64_t)stream error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v29, "[AVVoiceController isDuckingSupportedOnPickedRouteForStream:error:]", 0, 0);
  objc_msgSend_impl(self);
  v7 = v19;
  if (!v19 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_13:
        v12 = 0;
        isDuckingSupportedOnPickedRouteForStream = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 1807;
      v25 = 2048;
      selfCopy = v19;
      v27 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_13;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = "AVVoiceController.mm";
      v23 = 1024;
      v24 = 1808;
      v25 = 2048;
      selfCopy = self;
      v27 = 2048;
      streamCopy = stream;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: isDuckingSupportedOnPickedRouteForStream: streamHandle(%lu)", buf, 0x26u);
    }

    v7 = v19;
  }

  v18 = 0;
  isDuckingSupportedOnPickedRouteForStream = ControllerImpl::isDuckingSupportedOnPickedRouteForStream(v7, stream, &v18);
  v15 = v18;
  v12 = v15;
  if (error)
  {
    v16 = v15;
    *error = v12;
  }

LABEL_20:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ElapsedTime::~ElapsedTime(v29);
  return isDuckingSupportedOnPickedRouteForStream;
}

- (BOOL)setDuckOthersForStream:(unint64_t)stream withSettings:(id)settings error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  ElapsedTime::ElapsedTime(v32, "[AVVoiceController setDuckOthersForStream:withSettings:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v23 = "AVVoiceController.mm";
    v24 = 1024;
    v25 = 1791;
    v26 = 2048;
    selfCopy = self;
    v28 = 2048;
    streamCopy = stream;
    v30 = 2112;
    v31 = settingsCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setDuckOthersForStream: streamHandle(%lu), duckSettings(%@)", buf, 0x30u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (!v20 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
LABEL_19:
        v14 = 0;
        v12 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v23 = "AVVoiceController.mm";
      v24 = 1024;
      v25 = 1793;
      v26 = 2048;
      selfCopy = v20;
      v28 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_19;
  }

  v19 = 0;
  v12 = ControllerImpl::setDuckOthersForStream(v20, stream, settingsCopy, &v19);
  v13 = v19;
  v14 = v13;
  if (error)
  {
    v15 = v13;
    *error = v14;
  }

LABEL_20:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ElapsedTime::~ElapsedTime(v32);
  return v12;
}

- (void)getInputChannelInfoForStream:(unint64_t)stream completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_msgSend_impl(self);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "AVVoiceController.mm";
    v14 = 1024;
    v15 = 1776;
    v16 = 2048;
    selfCopy = self;
    v18 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getInputChannelInfoForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  if (v10 && !self->mClientAPIClutch)
  {
    ControllerImpl::getInputChannelInfoForStream(v10, completionCopy);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

- (BOOL)setAnnounceCallsEnabledForStream:(unint64_t)stream enable:(BOOL)enable
{
  enableCopy = enable;
  v26 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 1763;
    v20 = 2048;
    selfCopy = self;
    v22 = 2048;
    streamCopy = stream;
    v24 = 1024;
    v25 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setAnnounceCallsEnabledForStream: streamHandle(%lu), enable : %d", buf, 0x2Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v14 && !self->mClientAPIClutch)
  {
    v10 = ControllerImpl::setAnnounceCallsEnabledForStream(v14, stream, enableCopy) == 0;
    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_15:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 1765;
      v20 = 2048;
      selfCopy = v14;
      v22 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v10 = 0;
LABEL_19:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v10;
}

- (int64_t)getRecordModeForStream:(unint64_t)stream
{
  v22 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v15 = "AVVoiceController.mm";
    v16 = 1024;
    v17 = 1749;
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getRecordModeForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v12 && !self->mClientAPIClutch)
  {
    RecordModeForStream = ControllerImpl::getRecordModeForStream(v12, stream);
    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_15:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1751;
      v18 = 2048;
      selfCopy = v12;
      v20 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  RecordModeForStream = 0;
LABEL_19:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return RecordModeForStream;
}

- (BOOL)setRecordModeForStream:(unint64_t)stream recordMode:(int64_t)mode error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v19 = 4122;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v33, "[AVVoiceController setRecordModeForStream:recordMode:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "AVVoiceController.mm";
    v25 = 1024;
    v26 = 1728;
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    streamCopy = stream;
    v31 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setRecordModeForStream: streamHandle(%lu), mode : %d", buf, 0x2Cu);
  }

LABEL_8:
  if (!mode)
  {
    LOBYTE(v11) = 0;
    goto LABEL_25;
  }

  objc_msgSend_impl(self);
  if (v17 && !self->mClientAPIClutch)
  {
    v12 = ControllerImpl::setRecordModeForStream(v17, stream, mode);
    v13 = v12;
    if (error && v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    }

    LOBYTE(v11) = v13 == 0;
    goto LABEL_23;
  }

  if (!kAVVCScope)
  {
    v11 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_20;
  }

  v11 = *kAVVCScope;
  if (v11)
  {
LABEL_20:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v24 = "AVVoiceController.mm";
      v25 = 1024;
      v26 = 1734;
      v27 = 2048;
      selfCopy = v17;
      v29 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v11) = 0;
  }

LABEL_23:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

LABEL_25:
  ElapsedTime::~ElapsedTime(v33);
  TraceWrapper::~TraceWrapper(&v19);
  return v11;
}

- (BOOL)enableSmartRoutingConsiderationForStream:(unint64_t)stream enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v30 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v29, "[AVVoiceController enableSmartRoutingConsiderationForStream:enable:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v20 = "AVVoiceController.mm";
    v21 = 1024;
    v22 = 1708;
    v23 = 2048;
    selfCopy = self;
    v25 = 2048;
    streamCopy = stream;
    v27 = 1024;
    v28 = enableCopy;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: enableSmartRoutingConsideration: streamHandle(%lu), enable : %d", buf, 0x2Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v17 && !self->mClientAPIClutch)
  {
    v12 = ControllerImpl::enableSmartRoutingConsideration(v17, stream, enableCopy);
    v13 = v12;
    if (error && v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    }

    LOBYTE(v11) = v13 == 0;
  }

  else
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 1710;
      v23 = 2048;
      selfCopy = v17;
      v25 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v11) = 0;
  }

LABEL_21:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  ElapsedTime::~ElapsedTime(v29);
  return v11;
}

- (void)setRecordStatusChangeBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "AVVoiceController.mm";
    v14 = 1024;
    v15 = 1698;
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setRecordStatusChangeBlock", buf, 0x1Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v10 && !self->mClientAPIClutch)
  {
    ControllerImpl::setRecordStatusChangeBlock(v10, blockCopy);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v13 = "AVVoiceController.mm";
    v14 = 1024;
    v15 = 1699;
    v16 = 2048;
    selfCopy = v10;
    v18 = 1024;
    v19 = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

- (float)getAveragePowerForStream:(unint64_t)stream forChannel:(unint64_t)channel
{
  channelCopy = channel;
  v22 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v12 && !self->mClientAPIClutch)
  {
    AveragePowerForStreamAndChannel = ControllerImpl::getAveragePowerForStreamAndChannel(v12, stream, channelCopy);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_8:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1693;
      v18 = 2048;
      v19 = v12;
      v20 = 1024;
      v21 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  AveragePowerForStreamAndChannel = 0.0;
LABEL_12:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return AveragePowerForStreamAndChannel;
}

- (float)getPeakPowerForStream:(unint64_t)stream forChannel:(unint64_t)channel
{
  channelCopy = channel;
  v22 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v12 && !self->mClientAPIClutch)
  {
    PeakPowerForStreamAndChannel = ControllerImpl::getPeakPowerForStreamAndChannel(v12, stream, channelCopy);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_8:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1688;
      v18 = 2048;
      v19 = v12;
      v20 = 1024;
      v21 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  PeakPowerForStreamAndChannel = 0.0;
LABEL_12:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return PeakPowerForStreamAndChannel;
}

- (BOOL)updateMeterForStream:(unint64_t)stream
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    updated = ControllerImpl::updateMeterLevelForStream(v10, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1683;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  updated = 0;
LABEL_12:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return updated;
}

- (BOOL)isMeteringEnabledForStream:(unint64_t)stream
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    isMeteringEnabledForStream = ControllerImpl::isMeteringEnabledForStream(v10, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1678;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  isMeteringEnabledForStream = 0;
LABEL_12:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return isMeteringEnabledForStream;
}

- (id)getRecordSettingsForStream:(unint64_t)stream
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    v6 = ControllerImpl::getRecordSettingsForStream(v10, self, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1672;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v6 = 0;
LABEL_12:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v6;
}

- (double)getRecordBufferDurationForStream:(unint64_t)stream
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    RecordBufferDurationForStream = ControllerImpl::getRecordBufferDurationForStream(v10, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1666;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  RecordBufferDurationForStream = 0.0;
LABEL_12:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return RecordBufferDurationForStream;
}

- (BOOL)playAlertSoundForType:(int)type overrideMode:(int64_t)mode
{
  v35 = *MEMORY[0x1E69E9840];
  v20 = 4145;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v34, "[AVVoiceController playAlertSoundForType:overrideMode:]", 0, 0);
  objc_msgSend_impl(self);
  v7 = v18;
  if (!v18 || (*(v18 + 521) & 1) != 0 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      LOBYTE(v8) = 0;
      goto LABEL_12;
    }

    *buf = 136315394;
    v25 = "AVVoiceController.mm";
    v26 = 1024;
    v27 = 1652;
    v10 = "%25s:%-5d call to playAlertSoundForType blocked because mediaserverd is dead";
    v11 = v8;
    v12 = 18;
LABEL_10:
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_11;
  }

  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v25 = "AVVoiceController.mm";
    v26 = 1024;
    v27 = 1656;
    v28 = 2048;
    selfCopy = self;
    v30 = 1024;
    typeCopy = type;
    v32 = 1024;
    modeCopy = mode;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: playAlertSoundForStream: alertType(%d) overrideMode(%d)", buf, 0x28u);
  }

  v7 = v18;
LABEL_22:
  v16 = ControllerImpl::playAlertWithOverride(v7, self, type, mode);
  if (!v16)
  {
    LOBYTE(v8) = 1;
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_28;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_28:
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315650;
    v25 = "AVVoiceController.mm";
    v26 = 1024;
    v27 = 1659;
    v28 = 1024;
    LODWORD(selfCopy) = v16;
    v10 = "%25s:%-5d playAlertSoundForStream failed with error : %d";
    v11 = v8;
    v12 = 24;
    goto LABEL_10;
  }

LABEL_12:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ElapsedTime::~ElapsedTime(v34);
  TraceWrapper::~TraceWrapper(&v20);
  return v8;
}

- (void)playAlert:(int)alert withOverride:(int64_t)override completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v16 = 4145;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v30, "[AVVoiceController playAlert:withOverride:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1640;
    v24 = 2048;
    selfCopy = self;
    v26 = 1024;
    alertCopy = alert;
    v28 = 1024;
    overrideCopy = override;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: playAlert alertType(%d). overrideMode(%d)", buf, 0x28u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v14 && !self->mClientAPIClutch)
  {
    ControllerImpl::playAlertWithCompletion(v14, self, alert, override, completionCopy);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1641;
    v24 = 2048;
    selfCopy = v14;
    v26 = 1024;
    alertCopy = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  ElapsedTime::~ElapsedTime(v30);
  TraceWrapper::~TraceWrapper(&v16);
}

- (BOOL)setContextForStream:(id)stream forStream:(unint64_t)forStream error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v24 = 4146;
  v25 = 1;
  v26 = 0u;
  v27 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v40, "[AVVoiceController setContextForStream:forStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Get4CCFromInt([(AVVCContextSettings *)streamCopy activationMode]);
    activationDeviceUID = [(AVVCContextSettings *)streamCopy activationDeviceUID];
    *buf = 136316418;
    v29 = "AVVoiceController.mm";
    v30 = 1024;
    v31 = 1624;
    v32 = 2048;
    selfCopy = self;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = activationDeviceUID;
    v38 = 2048;
    forStreamCopy = forStream;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContextForStream: activationMode(%@), deviceUID(%@). streamHandle(%lu)", buf, 0x3Au);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (!v22 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_25:
        v16 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v29 = "AVVoiceController.mm";
      v30 = 1024;
      v31 = 1625;
      v32 = 2048;
      selfCopy = v22;
      v34 = 1024;
      LODWORD(v35) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_25;
  }

  v15 = ControllerImpl::setContextForStream(v22, self, streamCopy, forStream);
  v16 = v15 == 0;
  if (error && v15)
  {
    v17 = v15;
    if (v15 == 560557673)
    {
      v17 = -11785;
    }

    if (v15 == -66671)
    {
      v18 = -11785;
    }

    else
    {
      v18 = v17;
    }

    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v18 userInfo:0];
    *error = v16 = 0;
  }

LABEL_26:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  ElapsedTime::~ElapsedTime(v40);
  TraceWrapper::~TraceWrapper(&v24);

  return v16;
}

- (int64_t)getCurrentSessionStateForStream:(unint64_t)stream
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    AVVCSessionState = ControllerImpl::getAVVCSessionState(v10, stream);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_8:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1616;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  AVVCSessionState = 0;
LABEL_12:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return AVVCSessionState;
}

- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v16 = 4144;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v30, "[AVVoiceController deactivateAudioSessionForStream:withOptions:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1604;
    v24 = 2048;
    selfCopy = self;
    v26 = 1024;
    streamCopy = stream;
    v28 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: deactivateAudioSessionForStream:(%d) withOptions(%lu)", buf, 0x2Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v14 && !self->mClientAPIClutch)
  {
    ControllerImpl::deactivateAudioSessionWithOptions(v14, self, options, stream, error);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1605;
    v24 = 2048;
    selfCopy = v14;
    v26 = 1024;
    streamCopy = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  ElapsedTime::~ElapsedTime(v30);
  TraceWrapper::~TraceWrapper(&v16);
}

- (void)deactivateAudioSessionForStream:(unint64_t)stream withOptions:(unint64_t)options completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v16 = 4144;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v30, "[AVVoiceController deactivateAudioSessionForStream:withOptions:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1595;
    v24 = 2048;
    selfCopy = self;
    v26 = 1024;
    streamCopy = stream;
    v28 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: deactivateAudioSessionForStream:(%d) withOptions(%lu) completion:", buf, 0x2Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v14 && !self->mClientAPIClutch)
  {
    ControllerImpl::deactivateAudioSessionWithOptions(v14, self, options, stream, completionCopy);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1596;
    v24 = 2048;
    selfCopy = v14;
    v26 = 1024;
    streamCopy = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  ElapsedTime::~ElapsedTime(v30);
  TraceWrapper::~TraceWrapper(&v16);
}

- (void)deactivateAudioSessionWithOptions:(unint64_t)options
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = 4144;
  v13 = 1;
  v14 = 0u;
  v15 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v24, "[AVVoiceController deactivateAudioSessionWithOptions:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 1586;
    v20 = 2048;
    selfCopy = self;
    v22 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: deactivateAudioSessionWithOptions(%lu)", buf, 0x26u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v10 && !self->mClientAPIClutch)
  {
    ControllerImpl::deactivateAudioSessionWithOptions(v10, self, options, *(v10 + 472), 0);
    goto LABEL_18;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 1587;
    v20 = 2048;
    selfCopy = v10;
    v22 = 1024;
    LODWORD(optionsCopy) = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

LABEL_18:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  ElapsedTime::~ElapsedTime(v24);
  TraceWrapper::~TraceWrapper(&v12);
}

- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm recordMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  prewarmCopy = prewarm;
  v38 = *MEMORY[0x1E69E9840];
  v21 = 4144;
  v22 = 1;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v37, "[AVVoiceController activateAudioSessionForStream:isPrewarm:recordMode:error:]", 0, 0);
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v26 = "AVVoiceController.mm";
    v27 = 1024;
    v28 = 1573;
    v29 = 2048;
    selfCopy = self;
    v31 = 1024;
    v32 = prewarmCopy;
    v33 = 1024;
    v34 = modeCopy;
    v35 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: activateAudioSessionForStream isPrewarm(%d), switchRecordMode(%d). streamHandle(%lu)", buf, 0x32u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v19 && !self->mClientAPIClutch)
  {
    v14 = ControllerImpl::activateAudioSessionForStream(v19, self, stream, prewarmCopy, modeCopy);
    v15 = v14;
    if (error && v14)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    }

    LOBYTE(v13) = v15 == 0;
  }

  else
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v26 = "AVVoiceController.mm";
      v27 = 1024;
      v28 = 1574;
      v29 = 2048;
      selfCopy = v19;
      v31 = 1024;
      v32 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v13) = 0;
  }

LABEL_21:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ElapsedTime::~ElapsedTime(v37);
  TraceWrapper::~TraceWrapper(&v21);
  return v13;
}

- (BOOL)activateAudioSessionForStream:(unint64_t)stream isPrewarm:(BOOL)prewarm error:(id *)error
{
  prewarmCopy = prewarm;
  v34 = *MEMORY[0x1E69E9840];
  v19 = 4144;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v33, "[AVVoiceController activateAudioSessionForStream:isPrewarm:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "AVVoiceController.mm";
    v25 = 1024;
    v26 = 1560;
    v27 = 2048;
    selfCopy = self;
    v29 = 1024;
    v30 = prewarmCopy;
    v31 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: activateAudioSessionForStream isPrewarm(%d). streamHandle(%lu)", buf, 0x2Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v17 && !self->mClientAPIClutch)
  {
    v12 = ControllerImpl::activateAudioSessionForStream(v17, self, stream, prewarmCopy, 1);
    v13 = v12;
    if (error && v12)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v12 userInfo:0];
    }

    LOBYTE(v11) = v13 == 0;
  }

  else
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v24 = "AVVoiceController.mm";
      v25 = 1024;
      v26 = 1561;
      v27 = 2048;
      selfCopy = v17;
      v29 = 1024;
      v30 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    LOBYTE(v11) = 0;
  }

LABEL_21:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  ElapsedTime::~ElapsedTime(v33);
  TraceWrapper::~TraceWrapper(&v19);
  return v11;
}

- (id)getRecordDeviceInfoForStream:(unint64_t)stream
{
  v23 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v22, "[AVVoiceController getRecordDeviceInfoForStream:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v15 = "AVVoiceController.mm";
    v16 = 1024;
    v17 = 1550;
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getRecordDeviceInfoForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v12 && !self->mClientAPIClutch)
  {
    v8 = ControllerImpl::getRecordDeviceInfoForStream(v12, self, stream);
    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_15:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1551;
      v18 = 2048;
      selfCopy = v12;
      v20 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v8 = 0;
LABEL_19:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ElapsedTime::~ElapsedTime(v22);

  return v8;
}

- (int64_t)getCurrentStreamState:(unint64_t)state
{
  v24 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v12 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        CurrentStreamStateForStream = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1541;
      v18 = 2048;
      selfCopy = v12;
      v20 = 1024;
      LODWORD(stateCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    CurrentStreamStateForStream = 0;
    goto LABEL_13;
  }

  CurrentStreamStateForStream = ControllerImpl::getCurrentStreamStateForStream(v12, self, state);
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_18:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (CurrentStreamStateForStream > 6)
      {
        v11 = "ILLEGAL";
      }

      else
      {
        v11 = off_1E7EF6338[CurrentStreamStateForStream];
      }

      *buf = 136316162;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1543;
      v18 = 2048;
      selfCopy = self;
      v20 = 2048;
      stateCopy = state;
      v22 = 2080;
      v23 = v11;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: getCurrentStreamState: streamHandle(%lu). State(%s)", buf, 0x30u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return CurrentStreamStateForStream;
}

- (BOOL)stopRecordForStream:(unint64_t)stream error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  ElapsedTime::ElapsedTime(v28, "[AVVoiceController stopRecordForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 1519;
    v24 = 2048;
    streamCopy2 = self;
    v26 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: stopRecordForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (!v18 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_22:
        v12 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 1521;
      v24 = 2048;
      streamCopy2 = v18;
      v26 = 1024;
      LODWORD(streamCopy) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_22;
  }

  v10 = ControllerImpl::stopRecordForStream(v18, self, stream);
  v11 = v10;
  if (v10 > -309)
  {
    if (v10 == -308)
    {
      goto LABEL_29;
    }

    if (!v10)
    {
      v12 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    v12 = 0;
    if (v10 == -11793 || v10 == -11781)
    {
      if (!error)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v15 = *kAVVCScope;
  v16 = CALog::Scope::oslog(*kAVVCScope);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v21 = "[AVVoiceController stopRecordForStream:error:]";
    v22 = 1024;
    v23 = v11;
    v24 = 2048;
    streamCopy2 = stream;
    _os_log_fault_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_FAULT, "%s unexpected error (%d) returned from stopRecordForStream for streamHandle(%lu)", buf, 0x1Cu);
  }

LABEL_29:
  v12 = 1;
  if (error)
  {
LABEL_30:
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
  }

LABEL_31:
  kdebug_trace();
LABEL_32:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  ElapsedTime::~ElapsedTime(v28);
  return v12;
}

- (void)stopRecordForStream:(unint64_t)stream completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v10 = 4137;
  v11 = 1;
  v12 = 0u;
  v13 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v19, "[AVVoiceController stopRecordForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1506;
    v15 = 2048;
    selfCopy = self;
    v17 = 2048;
    streamCopy = stream;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d !! DEPRECATED !! #### AVVoiceController[self = %p]: stopRecordForStream: streamHandle(%lu)", buf, 0x26u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::stopRecordForStream(*buf, self, stream, completionCopy);
  }

  else if (completionCopy)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, stream, 0, 0, v9);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v19);
  TraceWrapper::~TraceWrapper(&v10);
}

- (BOOL)configureAlertBehaviorForStream:(id)stream error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v18 = 4147;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v36, "[AVVoiceController configureAlertBehaviorForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v23 = "AVVoiceController.mm";
    v24 = 1024;
    v25 = 1489;
    v26 = 2048;
    selfCopy = self;
    v28 = 2048;
    streamID = [(AVVCConfigureAlertBehaviorSettings *)streamCopy streamID];
    v30 = 1024;
    startAlert = [(AVVCConfigureAlertBehaviorSettings *)streamCopy startAlert];
    v32 = 1024;
    stopAlert = [(AVVCConfigureAlertBehaviorSettings *)streamCopy stopAlert];
    v34 = 1024;
    stopOnErrorAlert = [(AVVCConfigureAlertBehaviorSettings *)streamCopy stopOnErrorAlert];
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: configureAlertBehaviorForStream: streamHandle(%lu), AlertsOverride(%d,%d,%d)", buf, 0x38u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (!v16 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_20:
        v12 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v23 = "AVVoiceController.mm";
      v24 = 1024;
      v25 = 1491;
      v26 = 2048;
      selfCopy = v16;
      v28 = 1024;
      LODWORD(streamID) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_20;
  }

  v11 = ControllerImpl::configureAlertBehaviorForStream(v16, self, streamCopy);
  if (v11)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v11 userInfo:0];
      *error = v12 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v12 = 1;
LABEL_21:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  ElapsedTime::~ElapsedTime(v36);
  TraceWrapper::~TraceWrapper(&v18);

  return v12;
}

- (void)configureAlertBehaviorForStream:(id)stream completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  completionCopy = completion;
  v12 = 4147;
  v13 = 1;
  v14 = 0u;
  v15 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v27, "[AVVoiceController configureAlertBehaviorForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1475;
    v17 = 2048;
    selfCopy = self;
    v19 = 2048;
    streamID = [streamCopy streamID];
    v21 = 1024;
    startAlert = [streamCopy startAlert];
    v23 = 1024;
    stopAlert = [streamCopy stopAlert];
    v25 = 1024;
    stopOnErrorAlert = [streamCopy stopOnErrorAlert];
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: configureAlertBehaviorForStream:completion: streamHandle(%lu), AlertsOverride(%d,%d,%d)", buf, 0x38u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::configureAlertBehaviorForStream(*buf, self, streamCopy, completionCopy);
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v11);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v27);
  TraceWrapper::~TraceWrapper(&v12);
}

- (BOOL)startRecordForStream:(id)stream error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v43, "[AVVoiceController startRecordForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [(AVVCStartRecordSettings *)streamCopy streamID];
    startHostTime = [(AVVCStartRecordSettings *)streamCopy startHostTime];
    startAlert = [(AVVCStartRecordSettings *)streamCopy startAlert];
    stopAlert = [(AVVCStartRecordSettings *)streamCopy stopAlert];
    stopOnErrorAlert = [(AVVCStartRecordSettings *)streamCopy stopOnErrorAlert];
    skipAlert = [(AVVCStartRecordSettings *)streamCopy skipAlert];
    v16 = " will NOT skip alert";
    *buf = 136317186;
    v26 = "AVVoiceController.mm";
    v28 = 1457;
    v27 = 1024;
    if (skipAlert)
    {
      v16 = " will skip alert";
    }

    v29 = 2048;
    selfCopy = self;
    v31 = 2048;
    v32 = streamID;
    v33 = 2048;
    v34 = startHostTime;
    v35 = 1024;
    v36 = startAlert;
    v37 = 1024;
    v38 = stopAlert;
    v39 = 1024;
    v40 = stopOnErrorAlert;
    v41 = 2080;
    v42 = v16;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: startRecordForStream: streamHandle(%lu), startTime(%llu). AlertsOverride(%d,%d,%d,%s)", buf, 0x4Cu);
  }

LABEL_10:
  objc_msgSend_impl(self);
  if (!v23 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
LABEL_22:
        v19 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v26 = "AVVoiceController.mm";
      v27 = 1024;
      v28 = 1459;
      v29 = 2048;
      selfCopy = v23;
      v31 = 1024;
      LODWORD(v32) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_22;
  }

  started = ControllerImpl::startRecordForStream(v23, self, streamCopy);
  v19 = started == 0;
  if (error && started)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:started userInfo:0];
  }

  kdebug_trace();
LABEL_24:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  ElapsedTime::~ElapsedTime(v43);

  return v19;
}

- (void)startRecordForStream:(id)stream completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  completionCopy = completion;
  v20 = 4136;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v39, "[AVVoiceController startRecordForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [streamCopy streamID];
    startHostTime = [streamCopy startHostTime];
    startAlert = [streamCopy startAlert];
    stopAlert = [streamCopy stopAlert];
    stopOnErrorAlert = [streamCopy stopOnErrorAlert];
    skipAlert = [streamCopy skipAlert];
    v17 = " will NOT skip alert";
    *buf = 136317186;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[14] = 1443;
    *&buf[12] = 1024;
    if (skipAlert)
    {
      v17 = " will skip alert";
    }

    v25 = 2048;
    selfCopy = self;
    v27 = 2048;
    v28 = streamID;
    v29 = 2048;
    v30 = startHostTime;
    v31 = 1024;
    v32 = startAlert;
    v33 = 1024;
    v34 = stopAlert;
    v35 = 1024;
    v36 = stopOnErrorAlert;
    v37 = 2080;
    v38 = v17;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: startRecordForStream:completion: streamHandle(%lu), startTime(%llu). AlertsOverride(%d,%d,%d,%s)", buf, 0x4Cu);
  }

LABEL_10:
  objc_msgSend_impl(self);
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::startRecordForStream(*buf, self, streamCopy, completionCopy);
  }

  else if (completionCopy)
  {
    streamID2 = [streamCopy streamID];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, streamID2, 0, 0, v19);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v39);
  TraceWrapper::~TraceWrapper(&v20);
}

- (void)startRecordWithSettings:(id)settings completion:(id)completion alertCompletion:(id)alertCompletion audioCallback:(id)callback
{
  v37 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  alertCompletionCopy = alertCompletion;
  callbackCopy = callback;
  v19 = 4136;
  v20 = 1;
  v21 = 0u;
  v22 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v36, "[AVVoiceController startRecordWithSettings:completion:alertCompletion:audioCallback:]", 0, 0);
  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  v16 = v14;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316930;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1429;
    v24 = 2048;
    selfCopy = self;
    v26 = 2048;
    streamID = [settingsCopy streamID];
    v28 = 2048;
    startHostTime = [settingsCopy startHostTime];
    v30 = 1024;
    startAlert = [settingsCopy startAlert];
    v32 = 1024;
    stopAlert = [settingsCopy stopAlert];
    v34 = 1024;
    stopOnErrorAlert = [settingsCopy stopOnErrorAlert];
    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d !! DEPRECATED !! #### AVVoiceController[self = %p]: startRecordWithSettings:completion:alertCompletion:audioCallback: streamHandle(%lu), startTime(%llu). AlertsOverride(%d,%d,%d)", buf, 0x42u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::startRecordForStream(*buf, self, settingsCopy, completionCopy, alertCompletionCopy, callbackCopy);
  }

  else if (completionCopy)
  {
    streamID2 = [settingsCopy streamID];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, streamID2, 0, 0, v18);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v36);
  TraceWrapper::~TraceWrapper(&v19);
}

- (BOOL)prepareRecordForStream:(id)stream error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  v22 = 4135;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v38, "[AVVoiceController prepareRecordForStream:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [(AVVCPrepareRecordSettings *)streamCopy streamID];
    [(AVVCPrepareRecordSettings *)streamCopy recordBufferDuration];
    v12 = v11;
    avAudioSettings = [(AVVCPrepareRecordSettings *)streamCopy avAudioSettings];
    *buf = 136316418;
    v27 = "AVVoiceController.mm";
    v28 = 1024;
    v29 = 1412;
    v30 = 2048;
    selfCopy = self;
    v32 = 2048;
    v33 = streamID;
    v34 = 2048;
    v35 = v12;
    v36 = 2112;
    v37 = avAudioSettings;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: prepareRecordForStream: streamHandle(%lu), bufferDuration(%f), settings: %@", buf, 0x3Au);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (!v20 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_20:
        v16 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v27 = "AVVoiceController.mm";
      v28 = 1024;
      v29 = 1414;
      v30 = 2048;
      selfCopy = v20;
      v32 = 1024;
      LODWORD(v33) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_20;
  }

  v15 = ControllerImpl::prepareRecordForStream(v20, self, streamCopy);
  if (v15)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0];
      *error = v16 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = 1;
LABEL_21:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  ElapsedTime::~ElapsedTime(v38);
  TraceWrapper::~TraceWrapper(&v22);

  return v16;
}

- (void)prepareRecordForStream:(id)stream completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  completionCopy = completion;
  v17 = 4135;
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v30, "[AVVoiceController prepareRecordForStream:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    streamID = [streamCopy streamID];
    [streamCopy recordBufferDuration];
    v13 = v12;
    avAudioSettings = [streamCopy avAudioSettings];
    *buf = 136316418;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1399;
    v22 = 2048;
    selfCopy = self;
    v24 = 2048;
    v25 = streamID;
    v26 = 2048;
    v27 = v13;
    v28 = 2112;
    v29 = avAudioSettings;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d !! DEPRECATED !! #### AVVoiceController[self = %p]: prepareRecordForStream: streamHandle(%lu), bufferDuration(%f), settings: %@", buf, 0x3Au);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::prepareRecordForStream(*buf, self, streamCopy, completionCopy);
  }

  else if (completionCopy)
  {
    streamID2 = [streamCopy streamID];
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, streamID2, 0, v16);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v30);
  TraceWrapper::~TraceWrapper(&v17);
}

- (unint64_t)setContext:(id)context streamType:(int64_t *)type error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v22 = 4134;
  v23 = 1;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v36, "[AVVoiceController setContext:streamType:error:]", 0, 0);
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Get4CCFromInt([contextCopy activationMode]);
    activationDeviceUID = [contextCopy activationDeviceUID];
    *buf = 136316162;
    v27 = "AVVoiceController.mm";
    v28 = 1024;
    v29 = 1383;
    v30 = 2048;
    selfCopy = self;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = activationDeviceUID;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContext: activationMode(%@), deviceUID(%@)", buf, 0x30u);
  }

LABEL_8:
  v21 = 0;
  objc_msgSend_impl(self);
  if (v19 && !self->mClientAPIClutch)
  {
    v15 = ControllerImpl::setContext(v19, self, contextCopy, &v21, type);
    if (v15)
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:0];
      }

      v14 = 0;
      v21 = 0;
    }

    else
    {
      v14 = v21;
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v27 = "AVVoiceController.mm";
      v28 = 1024;
      v29 = 1385;
      v30 = 2048;
      selfCopy = v19;
      v32 = 1024;
      LODWORD(v33) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    v14 = 0;
  }

LABEL_21:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  ElapsedTime::~ElapsedTime(v36);
  TraceWrapper::~TraceWrapper(&v22);

  return v14;
}

- (unint64_t)setContext:(id)context error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v20 = 4134;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v34, "[AVVoiceController setContext:error:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = Get4CCFromInt([contextCopy activationMode]);
    activationDeviceUID = [contextCopy activationDeviceUID];
    *buf = 136316162;
    v25 = "AVVoiceController.mm";
    v26 = 1024;
    v27 = 1366;
    v28 = 2048;
    selfCopy = self;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = activationDeviceUID;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContext: activationMode(%@), deviceUID(%@)", buf, 0x30u);
  }

LABEL_8:
  v19 = 0;
  objc_msgSend_impl(self);
  if (v17 && !self->mClientAPIClutch)
  {
    v13 = ControllerImpl::setContext(v17, self, contextCopy, &v19, 0);
    if (v13)
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
      }

      v12 = 0;
      v19 = 0;
    }

    else
    {
      v12 = v19;
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v25 = "AVVoiceController.mm";
      v26 = 1024;
      v27 = 1368;
      v28 = 2048;
      selfCopy = v17;
      v30 = 1024;
      LODWORD(v31) = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    v12 = 0;
  }

LABEL_21:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  ElapsedTime::~ElapsedTime(v34);
  TraceWrapper::~TraceWrapper(&v20);

  return v12;
}

- (void)setContext:(id)context completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v14 = 4134;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v25, "[AVVoiceController setContext:completion:]", 0, 0);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Get4CCFromInt([contextCopy activationMode]);
    activationDeviceUID = [contextCopy activationDeviceUID];
    *buf = 136316162;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1352;
    v19 = 2048;
    selfCopy = self;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = activationDeviceUID;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: setContext:streamType:completion: activationMode(%@), deviceUID(%@)", buf, 0x30u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (*buf && !self->mClientAPIClutch)
  {
    ControllerImpl::setContext(*buf, self, contextCopy, completionCopy);
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v25);
  TraceWrapper::~TraceWrapper(&v14);
}

- (int64_t)_bringUp:(int64_t)up withError:(id *)error
{
  v6 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  operator new();
}

uint64_t __40__AVVoiceController__bringUp_withError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 48) + 464) setParentVoiceController:*(a1 + 32)];
  result = ControllerImpl::configureAlerts(*(a1 + 48), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)initVoiceControllerForClient:(int64_t)client withError:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  v49 = 4133;
  v50 = 1;
  v51 = 0u;
  v52 = 0u;
  kdebug_trace();
  Initialize_Logging();
  ElapsedTime::ElapsedTime(v53, "[AVVoiceController initVoiceControllerForClient:withError:]", 0, 0);
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v55 = "AVVoiceController.mm";
    v56 = 1024;
    *v57 = 1279;
    *&v57[4] = 1024;
    *&v57[6] = client;
    *&v57[10] = 2048;
    *&v57[12] = self;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] #### AVVoiceController: initVoiceControllerForClient:(%d) (V2): [self == %p]", buf, 0x22u);
  }

LABEL_8:
  v9 = [AVVoiceTriggerClient sharedInstance:client];
  selfCopy = self;
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = GetAVVCSingleInstanceSemaphore();
    v15 = [v14 debugDescription];
    *buf = 136315906;
    v55 = "AVVoiceController.mm";
    v56 = 1024;
    *v57 = 124;
    *&v57[4] = 2048;
    *&v57[6] = selfCopy;
    *&v57[14] = 2112;
    *&v57[16] = v15;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] before wait controller(%p), %@", buf, 0x26u);
  }

LABEL_15:
  v16 = GetAVVCSingleInstanceSemaphore();
  v17 = dispatch_time(0, 7500000000);
  v18 = dispatch_semaphore_wait(v16, v17);

  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  v21 = v19;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = GetAVVCSingleInstanceSemaphore();
    v23 = [v22 debugDescription];
    v24 = v23;
    v55 = "AVVoiceController.mm";
    v56 = 1024;
    v25 = " TIMEDOUT!";
    *v57 = 126;
    *&v57[4] = 2080;
    *buf = 136316162;
    if (!v18)
    {
      v25 = "";
    }

    *&v57[6] = v25;
    *&v57[14] = 2048;
    *&v57[16] = selfCopy;
    v58 = 2112;
    v59 = v23;
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] after wait%s controller(%p), %@", buf, 0x30u);
  }

LABEL_24:
  if (v18)
  {
    if (kAVVCScope)
    {
      v26 = *kAVVCScope;
      if (!v26)
      {
LABEL_32:
        v28 = *kAVVCScope;
        v29 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v55 = "BlockIfAnotherAVVCIsStillAlive";
          v56 = 2048;
          *v57 = selfCopy;
          _os_log_fault_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_FAULT, "[enforce 1 avvc] %s Timed out waiting to initialize, which means multiple AVVC objects exist simultaneously. Controller(%p)", buf, 0x16u);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v26 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v55 = "AVVoiceController.mm";
      v56 = 1024;
      *v57 = 129;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] Timed out waiting to initialize, which means multiple AVVC objects exist simultaneously", buf, 0x12u);
    }

    goto LABEL_32;
  }

LABEL_35:

  v48.receiver = selfCopy;
  v48.super_class = AVVoiceController;
  v30 = [(AVVoiceController *)&v48 init];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v33 = *kAVVCScope;
        if (v33)
        {
          v34 = v33;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v55 = "AVVCUtils.mm";
            v56 = 1024;
            *v57 = 80;
            *&v57[4] = 2048;
            *&v57[6] = v32;
            _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d RegisterObject: registering %p", buf, 0x1Cu);
          }
        }
      }
    }

    pthread_mutex_lock(&MapLocker::sMapLock);
    v35 = *(GetObjectMap() + 8);
    if (!v35)
    {
LABEL_48:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v36 = v35;
        v37 = v35[4];
        if (v32 >= v37)
        {
          break;
        }

        v35 = *v36;
        if (!*v36)
        {
          goto LABEL_48;
        }
      }

      if (v37 >= v32)
      {
        break;
      }

      v35 = v36[1];
      if (!v35)
      {
        goto LABEL_48;
      }
    }

    pthread_mutex_unlock(&MapLocker::sMapLock);

    v38 = [(AVVoiceController *)v32 _bringUp:client withError:error];
    if (v18)
    {
      if (IsMetricsOwnedByAVVC(void)::onceToken != -1)
      {
        dispatch_once(&IsMetricsOwnedByAVVC(void)::onceToken, &__block_literal_global_209);
      }

      if (IsMetricsOwnedByAVVC(void)::owned)
      {
        +[AVVCMetricsManager sharedManager];
      }

      else
      {
        [MEMORY[0x1E698D708] sharedInstance];
      }
      v39 = ;
      reporterID = [v39 reporterID];

      v41 = +[AVVCMetricsManager sharedManager];
      [v41 logABCMetric:@"avvcDualAVVC" category:8 type:5 reporterID:reporterID];
    }

    if (v38)
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v38 userInfo:0];
      }

      v47 = 0;
      [(AVVoiceController *)v32 _teardownWithError:&v47];
      v42 = v47;
      if (kAVVCScope)
      {
        v43 = *kAVVCScope;
        if (!v43)
        {
LABEL_67:

          v44 = 0;
          goto LABEL_68;
        }
      }

      else
      {
        v43 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v55 = "AVVoiceController.mm";
        v56 = 1024;
        *v57 = 1306;
        *&v57[4] = 2112;
        *&v57[6] = v42;
        _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to initialize. Teardown error: %@", buf, 0x1Cu);
      }

      goto LABEL_67;
    }
  }

  v44 = v31;
LABEL_68:
  ElapsedTime::~ElapsedTime(v53);
  TraceWrapper::~TraceWrapper(&v49);

  return v44;
}

- (NSDictionary)metrics
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__192;
  v15 = __Block_byref_object_dispose__193;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __28__AVVoiceController_metrics__block_invoke;
  v9 = &unk_1E7EF6988;
  v10 = &v11;
  selfCopy = self;
  v3 = v7;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    v8(v3);
  }

  else
  {
    v4 = selfCopy;
    objc_sync_enter(v4);
    v8(v3);
    objc_sync_exit(v4);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __28__AVVoiceController_metrics__block_invoke(uint64_t a1)
{
  v5 = +[AVVCMetricsManager sharedManager];
  v2 = [v5 retrieveMetrics];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)getAlertStartTime
{
  v17 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v7 && !self->mClientAPIClutch)
  {
    v3 = *(v7 + 376);
    goto LABEL_11;
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    mClientAPIClutch = self->mClientAPIClutch;
    *buf = 136315906;
    v10 = "AVVoiceController.mm";
    v11 = 1024;
    v12 = 1241;
    v13 = 2048;
    v14 = v7;
    v15 = 1024;
    v16 = mClientAPIClutch;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
  }

  v3 = 0;
LABEL_11:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v3;
}

- (float)alertVolume
{
  v18 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v8 && !self->mClientAPIClutch)
  {
    v4 = *(v8 + 400);
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v3 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v3 = *kAVVCScope;
  if (v3)
  {
LABEL_8:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v11 = "AVVoiceController.mm";
      v12 = 1024;
      v13 = 1233;
      v14 = 2048;
      v15 = v8;
      v16 = 1024;
      v17 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  v4 = 0.0;
LABEL_12:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v4;
}

- (void)setAlertVolume:(float)volume
{
  v23 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1216;
    v19 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setAlertVolume: %f ####", buf, 0x1Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v13 == 0.0 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1217;
      v19 = 2048;
      volumeCopy = v13;
      v21 = 1024;
      v22 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __36__AVVoiceController_setAlertVolume___block_invoke;
    v10[3] = &__block_descriptor_52_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v10[4] = v13;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    volumeCopy2 = volume;
    ControllerImpl::safeWork(*&v13, v10, "[AVVoiceController setAlertVolume:]");
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

LABEL_21:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void __36__AVVoiceController_setAlertVolume___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (*(v1 + 400) != v2)
  {
    *(v1 + 400) = v2;
    v4 = *(a1 + 40);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AlertLock::AlertLock(v6, v1, v4);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (ControllerImpl::getAlertQueueFromImplQueue(*(a1 + 32)))
    {
      AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(*(a1 + 32));
      AudioQueueSetParameter(AlertQueueFromImplQueue, 1u, *(*(a1 + 32) + 400));
    }

    VCLocker::~VCLocker(v6);
  }
}

- (void)setRecordEndWaitTime:(double)time
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3321888768;
    v8[2] = __42__AVVoiceController_setRecordEndWaitTime___block_invoke;
    v8[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v8[4] = time;
    v8[5] = v10;
    v9 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeWork(v10, v8, "[AVVoiceController setRecordEndWaitTime:]");
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1198;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_14:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void __42__AVVoiceController_setRecordEndWaitTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 448))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __42__AVVoiceController_setRecordEndWaitTime___block_invoke_2;
    v5[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v5[4] = v2;
    v4 = *(a1 + 48);
    v5[5] = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v3, "setRecordEndWaitTime", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __42__AVVoiceController_setRecordEndWaitTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fmax(v2, 0.25);
  if (v2 == -1.0)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 40);
  *(v5 + 448) = v4;
  WeakRetained = objc_loadWeakRetained((v5 + 416));
  [WeakRetained setEndWaitTime:*(*(a1 + 40) + 448)];
}

- (double)recordEndWaitTime
{
  v13 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v10 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1188;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __38__AVVoiceController_recordEndWaitTime__block_invoke;
  v8[3] = &unk_1F3848E28;
  v8[4] = buf;
  v8[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v10, v8);
  v4 = *(*&buf[8] + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v4;
}

double __38__AVVoiceController_recordEndWaitTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 448);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setRecordInterspeechWaitTime:(double)time
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (v10 && !self->mClientAPIClutch)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3321888768;
    v8[2] = __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke;
    v8[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v8[4] = time;
    v8[5] = v10;
    v9 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeWork(v10, v8, "[AVVoiceController setRecordInterspeechWaitTime:]");
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v13 = "AVVoiceController.mm";
      v14 = 1024;
      v15 = 1171;
      v16 = 2048;
      v17 = v10;
      v18 = 1024;
      v19 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_14:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 440))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke_2;
    v5[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v5[4] = v2;
    v4 = *(a1 + 48);
    v5[5] = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v3, "setRecordInterspeechWaitTime", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __50__AVVoiceController_setRecordInterspeechWaitTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fmax(v2, 0.25);
  if (v2 == -1.0)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 40);
  *(v5 + 440) = v4;
  WeakRetained = objc_loadWeakRetained((v5 + 416));
  [WeakRetained setInterspeechWaitTime:*(*(a1 + 40) + 440)];
}

- (double)recordInterspeechWaitTime
{
  v13 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v10 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1161;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __46__AVVoiceController_recordInterspeechWaitTime__block_invoke;
  v8[3] = &unk_1F3848E28;
  v8[4] = buf;
  v8[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v10, v8);
  v4 = *(*&buf[8] + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v4;
}

double __46__AVVoiceController_recordInterspeechWaitTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 440);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setRecordStartWaitTime:(double)time
{
  v22 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "AVVoiceController.mm";
    v16 = 1024;
    v17 = 1144;
    v18 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: recordStartWaitTime: %f ####", buf, 0x1Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v12 == 0.0 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 1145;
      v18 = 2048;
      timeCopy = v12;
      v20 = 1024;
      v21 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __44__AVVoiceController_setRecordStartWaitTime___block_invoke;
    v10[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v10[4] = time;
    *&v10[5] = v12;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeWork(*&v12, v10, "[AVVoiceController setRecordStartWaitTime:]");
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

LABEL_21:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void __44__AVVoiceController_setRecordStartWaitTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != *(v3 + 432))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __44__AVVoiceController_setRecordStartWaitTime___block_invoke_2;
    v5[3] = &__block_descriptor_56_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    *&v5[4] = v2;
    v4 = *(a1 + 48);
    v5[5] = v3;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v3, "setRecordStartWaitTime", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __44__AVVoiceController_setRecordStartWaitTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fmax(v2, 0.25);
  if (v2 == -1.0)
  {
    v4 = -1.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 40);
  *(v5 + 432) = v4;
  WeakRetained = objc_loadWeakRetained((v5 + 416));
  [WeakRetained setStartWaitTime:*(*(a1 + 40) + 432)];
}

- (double)recordStartWaitTime
{
  v13 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v10 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0.0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1134;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      *&buf[28] = 1024;
      *&buf[30] = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __40__AVVoiceController_recordStartWaitTime__block_invoke;
  v8[3] = &unk_1F3848E28;
  v8[4] = buf;
  v8[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v10, v8);
  v4 = *(*&buf[8] + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v4;
}

double __40__AVVoiceController_recordStartWaitTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 432);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setRecordEndpointMode:(int)mode
{
  v23 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 1120;
    v19 = 1024;
    LODWORD(v20) = mode;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setRecordEndpointMode: %d ####", buf, 0x18u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v13 && !self->mClientAPIClutch)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __43__AVVoiceController_setRecordEndpointMode___block_invoke;
    v10[3] = &__block_descriptor_52_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    v10[4] = v13;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    modeCopy = mode;
    ControllerImpl::safeWork(v13, v10, "[AVVoiceController setRecordEndpointMode:]");
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 1121;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_21:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void __43__AVVoiceController_setRecordEndpointMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 428) != v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3321888768;
    v5[2] = __43__AVVoiceController_setRecordEndpointMode___block_invoke_2;
    v5[3] = &__block_descriptor_52_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    v4 = *(a1 + 40);
    v5[4] = v2;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *(a1 + 48);
    }

    v7 = v3;
    ControllerImpl::safeNotify(v2, "setRecordEndpointMode", v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void __43__AVVoiceController_setRecordEndpointMode___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 428) = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((v2 + 416));
  if (*(a1 + 48) == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = WeakRetained;
  [WeakRetained setEndpointMode:v4];
}

- (int)recordEndpointMode
{
  v15 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v10 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_15:
        v4 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      *&buf[4] = "AVVoiceController.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1110;
      *&buf[18] = 2048;
      *&buf[20] = v10;
      v13 = 1024;
      v14 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __39__AVVoiceController_recordEndpointMode__block_invoke;
  v8[3] = &unk_1F3848E28;
  v8[4] = buf;
  v8[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v10, v8);
  v4 = *(*&buf[8] + 24);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Block_object_dispose(buf, 8);
LABEL_16:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v4;
}

- (void)setEndpointerDelegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "AVVoiceController.mm";
    v19 = 1024;
    v20 = 1100;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setEndpointerDelegate ####", buf, 0x12u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  v7 = v15;
  if (v15 && !self->mClientAPIClutch)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __43__AVVoiceController_setEndpointerDelegate___block_invoke;
    v11[3] = &unk_1F3848978;
    v13 = v15;
    v14 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11[4] = self;
    v12 = delegateCopy;
    ControllerImpl::safeWorkSync(v7, v11);

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v18 = "AVVoiceController.mm";
      v19 = 1024;
      v20 = 1101;
      v21 = 2048;
      v22 = v15;
      v23 = 1024;
      v24 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_21:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

- (Endpointer)endpointerDelegate
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__192;
  v16 = __Block_byref_object_dispose__193;
  v17 = 0;
  objc_msgSend_impl(self, a2);
  if (!v10 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_14:
        v4 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 1090;
      v22 = 2048;
      v23 = v10;
      v24 = 1024;
      v25 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __39__AVVoiceController_endpointerDelegate__block_invoke;
  v8[3] = &unk_1F3848E28;
  v8[4] = &v12;
  v8[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v10, v8);
  v4 = v13[5];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_15:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Block_object_dispose(&v12, 8);

  return v4;
}

uint64_t __39__AVVoiceController_endpointerDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 416));
  *(*(*(a1 + 32) + 8) + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8](WeakRetained);
}

- (void)setRecordDelegate:(id)delegate
{
  v16 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1065;
    v14 = 2048;
    v15 = delegateCopy;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setRecordDelegate: %p ####", buf, 0x1Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  v7 = *buf;
  if (*buf)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3321888768;
    v8[2] = __39__AVVoiceController_setRecordDelegate___block_invoke;
    v8[3] = &unk_1F3848978;
    v9 = delegateCopy;
    v11 = v7;
    v12 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    selfCopy = self;
    ControllerImpl::safeWorkSync(v7, v8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }
}

void __39__AVVoiceController_setRecordDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 168));

  if (v2 != WeakRetained)
  {
    ControllerImpl::waitForAllStopRecordCompletion(*(a1 + 48), *(a1 + 40));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3321888768;
    v6[2] = __39__AVVoiceController_setRecordDelegate___block_invoke_2;
    v6[3] = &unk_1F3848DF0;
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v8 = v5;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 32);
    ControllerImpl::safeNotifySync(v5, "set record delegate", v6);

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

- (AVVoiceControllerRecordDelegate)recordDelegate
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__192;
  v16 = __Block_byref_object_dispose__193;
  v17 = 0;
  objc_msgSend_impl(self, a2);
  if (!v10 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_14:
        v4 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 1055;
      v22 = 2048;
      v23 = v10;
      v24 = 1024;
      v25 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_14;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __35__AVVoiceController_recordDelegate__block_invoke;
  v8[3] = &unk_1F3848E28;
  v8[4] = &v12;
  v8[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v10, v8);
  v4 = v13[5];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_15:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Block_object_dispose(&v12, 8);

  return v4;
}

uint64_t __35__AVVoiceController_recordDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 168));
  *(*(*(a1 + 32) + 8) + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8](WeakRetained);
}

- (BOOL)setAlertSoundFromURL:(id)l forType:(int)type
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  objc_msgSend_impl(self);
  if (!v16 || self->mClientAPIClutch)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_13:
        LOBYTE(self) = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 1036;
      v22 = 2048;
      v23 = v16;
      v24 = 1024;
      typeCopy = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }

    goto LABEL_13;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [lCopy absoluteString];
    *buf = 136315906;
    v19 = "AVVoiceController.mm";
    v20 = 1024;
    v21 = 1038;
    v22 = 2112;
    v23 = absoluteString;
    v24 = 1024;
    typeCopy = type;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: setAlertSoundFromURL: %@ forType: %d ####", buf, 0x22u);
  }

LABEL_21:
  if ((type - 4) > 0xFFFFFFFC)
  {
    LOBYTE(self) = ControllerImpl::setAlertURL(v16, self, type, lCopy) == 0;
    goto LABEL_14;
  }

  if (!kAVVCScope)
  {
    self = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    goto LABEL_27;
  }

  self = *kAVVCScope;
  if (self)
  {
LABEL_27:
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 1040;
      _os_log_impl(&dword_1BA5AC000, &self->super, OS_LOG_TYPE_ERROR, "%25s:%-5d setAlertSoundFromURL:forType: Illegal alertType", buf, 0x12u);
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return self;
}

- (BOOL)IsDeviceAvailableInLocalRoute:(id)route error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "AVVoiceController.mm";
    v11 = 1024;
    v12 = 1029;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ### unimplemented in this platform", &v9, 0x12u);
  }

LABEL_10:
  return 1;
}

- (void)enableMiniDucking:(BOOL)ducking
{
  duckingCopy = ducking;
  v23 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 985;
    v19 = 1024;
    LODWORD(v20) = duckingCopy;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: enableMiniDucking: %d", buf, 0x18u);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (v13 && !self->mClientAPIClutch)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __39__AVVoiceController_enableMiniDucking___block_invoke;
    v10[3] = &__block_descriptor_49_ea8_32c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
    v10[4] = v13;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = duckingCopy;
    ControllerImpl::safeWorkSync(v13, v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 986;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_21:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void __39__AVVoiceController_enableMiniDucking___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v4, v2, v3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  ControllerImpl::enableMiniDucking(*(a1 + 32), *(a1 + 48));
  VCLocker::~VCLocker(v4);
}

- (void)dealloc
{
  v55 = *MEMORY[0x1E69E9840];
  v42 = 4114;
  v43 = 1;
  v44 = 0u;
  v45 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v41, "dealloc");
  ElapsedTime::ElapsedTime(v46, "[AVVoiceController dealloc]", 0, 0);
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    selfCopy2 = "AVVoiceController.mm";
    v49 = 1024;
    v50 = 965;
    v51 = 2048;
    selfCopy3 = self;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] #### AVVoiceController: dealloc [self == %p] ####", buf, 0x1Cu);
  }

LABEL_8:
  impl = self->_impl;
  if (!impl)
  {
    goto LABEL_24;
  }

  v6 = *impl;
  v7 = impl[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(v6 + 520) & 1) == 0)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_19:
        v10 = *kAVVCScope;
        v11 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          selfCopy2 = self;
          _os_log_fault_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_FAULT, "In dealloc without prior teardownWithError: call. Controller(%p)", buf, 0xCu);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy2 = "AVVoiceController.mm";
      v49 = 1024;
      v50 = 971;
      v51 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d In dealloc without prior teardownWithError: call. Controller(%p)", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

LABEL_22:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_24:
  selfCopy4 = self;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v13 = *kAVVCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          selfCopy2 = "AVVCUtils.mm";
          v49 = 1024;
          v50 = 87;
          v51 = 2048;
          selfCopy3 = selfCopy4;
          _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d UnregisterObject: unregistering %p", buf, 0x1Cu);
        }
      }
    }
  }

  if (!ObjectExists(selfCopy4))
  {
    CAVerboseAbort("ASSERTION FAILED: unregistering a nonexistent object!");
  }

  pthread_mutex_lock(&MapLocker::sMapLock);
  ObjectMap = GetObjectMap();
  v16 = ObjectMap[1];
  if (!v16)
  {
    goto LABEL_39;
  }

  v17 = (ObjectMap + 1);
  v18 = ObjectMap[1];
  do
  {
    v19 = v18[4];
    v20 = v19 >= selfCopy4;
    v21 = v19 < selfCopy4;
    if (v20)
    {
      v17 = v18;
    }

    v18 = v18[v21];
  }

  while (v18);
  if (v17 == (ObjectMap + 1) || v17[4] > selfCopy4)
  {
LABEL_39:
    v17 = (ObjectMap + 1);
  }

  v22 = v17[1];
  if (v22)
  {
    do
    {
      v23 = v22;
      v22 = *v22;
    }

    while (v22);
  }

  else
  {
    v24 = v17;
    do
    {
      v23 = v24[2];
      v25 = *v23 == v24;
      v24 = v23;
    }

    while (!v25);
  }

  if (*ObjectMap == v17)
  {
    *ObjectMap = v23;
  }

  ObjectMap[2] = (ObjectMap[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v16, v17);
  operator delete(v17);
  pthread_mutex_unlock(&MapLocker::sMapLock);

  if (kAVVCScope)
  {
    v26 = *kAVVCScope;
    if (!v26)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy2 = "AVVoiceController.mm";
    v49 = 1024;
    v50 = 977;
    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: exiting dealloc ####", buf, 0x12u);
  }

LABEL_55:
  v28 = selfCopy4;
  if (kAVVCScope)
  {
    v29 = *kAVVCScope;
    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  v31 = v29;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = GetAVVCSingleInstanceSemaphore();
    v33 = [v32 debugDescription];
    *buf = 136315906;
    selfCopy2 = "AVVoiceController.mm";
    v49 = 1024;
    v50 = 138;
    v51 = 2048;
    selfCopy3 = v28;
    v53 = 2112;
    v54 = v33;
    _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] before signal avvc(%p), %@", buf, 0x26u);
  }

LABEL_62:
  v34 = GetAVVCSingleInstanceSemaphore();
  dispatch_semaphore_signal(v34);

  if (kAVVCScope)
  {
    v35 = *kAVVCScope;
    if (!v35)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E9C10];
    v36 = MEMORY[0x1E69E9C10];
  }

  v37 = v35;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = GetAVVCSingleInstanceSemaphore();
    v39 = [v38 debugDescription];
    *buf = 136315906;
    selfCopy2 = "AVVoiceController.mm";
    v49 = 1024;
    v50 = 140;
    v51 = 2048;
    selfCopy3 = v28;
    v53 = 2112;
    v54 = v39;
    _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [enforce 1 avvc] after signal avvc(%p), %@", buf, 0x26u);
  }

LABEL_69:
  ElapsedTime::~ElapsedTime(v46);
  TraceMethod::~TraceMethod(v41);
  TraceWrapper::~TraceWrapper(&v42);
  v40.receiver = v28;
  v40.super_class = AVVoiceController;
  [(AVVoiceController *)&v40 dealloc];
}

- (void)_teardownWithError:(id *)error
{
  impl = self->_impl;
  if (!impl)
  {
    return;
  }

  v6 = *impl;
  v5 = *(impl + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = __40__AVVoiceController__teardownWithError___block_invoke;
  v8[3] = &unk_1F3848DF0;
  v8[4] = self;
  v8[5] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWorkSync(v6, v8);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    ControllerImpl::safeAllQueuesBarrier(v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = *(impl + 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  MEMORY[0x1BFAF5800](impl, 0x20C40A4A59CD2);
  self->_impl = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void __40__AVVoiceController__teardownWithError___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136315650;
    v39 = "AVVoiceController.mm";
    v40 = 1024;
    v41 = 885;
    v42 = 2048;
    v43 = v3;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d beginning teardown. self == %p", buf, 0x1Cu);
  }

LABEL_8:
  [*(a1 + 32) sessionCleanup];
  ControllerImpl::cleanup(*(a1 + 40), *(a1 + 32));
  ControllerImpl::deleteRecordingEngines(*(a1 + 40));
  v4 = *(a1 + 40);
  if (*(v4 + 521))
  {
    goto LABEL_37;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v36, v4, v5);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v28 = ControllerImpl::sessionManagerForStreamID(*(a1 + 40), 0, 0);
  v35 = 0;
  [v28 setActive:0 withOptions:objc_msgSend(v28 error:{"getSessionActivationOptions"), &v35}];
  v6 = v35;
  if (!v6)
  {
    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_18:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "AVVoiceController.mm";
      v40 = 1024;
      v41 = 904;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive(false): failed with error: %@", buf, 0x1Cu);
    }
  }

LABEL_21:
  v9 = +[AVVCSessionFactory sharedInstance];
  v10 = [v9 auxSessionManagers];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = MEMORY[0x1E69E9C10];
  v14 = *v32;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v32 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v31 + 1) + 8 * i);
      v17 = [v16 getSessionActivationOptions];
      v30 = v6;
      [v16 setActive:0 withOptions:v17 error:&v30];
      v18 = v30;

      v6 = v18;
      if (v18)
      {
        if (kAVVCScope)
        {
          v19 = *kAVVCScope;
          if (!v19)
          {
            continue;
          }
        }

        else
        {
          v20 = v13;
          v19 = v13;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v39 = "AVVoiceController.mm";
          v40 = 1024;
          v41 = 913;
          v42 = 2112;
          v43 = v6;
          _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d setActive(false): failed with error: %@", buf, 0x1Cu);
        }
      }
    }

    v12 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v12);
LABEL_36:

  VCLocker::~VCLocker(v36);
  v4 = *(a1 + 40);
LABEL_37:
  objc_storeWeak((v4 + 416), 0);
  v21 = *(a1 + 40);
  v22 = *(v21 + 456);
  *(v21 + 456) = 0;

  v23 = +[AVVoiceTriggerClient sharedInstance];
  [v23 setAVVCServerCrashedBlock:0];

  v24 = +[AVVoiceTriggerClient sharedInstance];
  [v24 setAVVCServerResetBlock:0];

  v25 = *(a1 + 40);
  *(v25 + 520) = 1;
  [*(v25 + 464) setParentVoiceController:0];
  if (kAVVCScope)
  {
    v26 = *kAVVCScope;
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v39 = "ControllerImpl.mm";
    v40 = 1024;
    v41 = 499;
    v42 = 1024;
    LODWORD(v43) = 1;
    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControllerImpl::setAVVCTeardownCompleted(%d)", buf, 0x18u);
  }
}

- (void)teardownWithError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  self->mClientAPIClutch = 1;
  v7 = 4138;
  v8 = 1;
  v9 = 0u;
  v10 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v17, "[AVVoiceController teardownWithError:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "AVVoiceController.mm";
    v13 = 1024;
    v14 = 864;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: teardownWithError: ", buf, 0x1Cu);
  }

LABEL_8:
  if (error)
  {
    *error = 0;
  }

  [(AVVoiceController *)self setRecordDelegate:0];
  [(AVVoiceController *)self _teardownWithError:error];
  ElapsedTime::~ElapsedTime(v17);
  TraceWrapper::~TraceWrapper(&v7);
}

- (void)removeStream:(unint64_t)stream completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_msgSend_impl(self);
  v7 = v17;
  if (v17 && !self->mClientAPIClutch)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __45__AVVoiceController_removeStream_completion___block_invoke;
    v11[3] = &unk_1F3848390;
    v14 = v17;
    v15 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    streamCopy = stream;
    v11[4] = self;
    v12 = 0;
    v13 = completionCopy;
    ControllerImpl::safeWork(v7, v11, "[AVVoiceController removeStream:completion:]");

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      mClientAPIClutch = self->mClientAPIClutch;
      *buf = 136315906;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 844;
      v23 = 2048;
      v24 = v17;
      v25 = 1024;
      v26 = mClientAPIClutch;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid operation. impl(%p) ClientAPIClutch(%d)", buf, 0x22u);
    }
  }

LABEL_14:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void __45__AVVoiceController_removeStream_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __45__AVVoiceController_removeStream_completion___block_invoke_2;
  v9[3] = &unk_1F3848BA0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v11 = v6;
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v10 = v7;
  v13 = v8;
  ControllerImpl::_removeEngineFromMap(v6, v3, v2, v4, v9);

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void __45__AVVoiceController_removeStream_completion___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVVoiceController_removeStream_completion___block_invoke_3;
  v5[3] = &unk_1E7EF6590;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  ControllerImpl::safeNotify(v2, "removeStream", v5);
}

uint64_t __45__AVVoiceController_removeStream_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), 0);
  }

  return result;
}

- (void)cleanSlateWithError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  self->mClientAPIClutch = 1;
  v12 = 4139;
  v13 = 1;
  v14 = 0u;
  v15 = 0u;
  kdebug_trace();
  ElapsedTime::ElapsedTime(v19, "[AVVoiceController cleanSlateWithError:]", 0, 0);
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVVoiceController.mm";
    *&buf[12] = 1024;
    *&buf[14] = 819;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p]: cleanSlate:", buf, 0x1Cu);
  }

LABEL_8:
  objc_msgSend_impl(self);
  if (*buf)
  {
    v7 = *(*buf + 184);
    v8 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    [(AVVoiceController *)self setRecordDelegate:0];
    [(AVVoiceController *)self _teardownWithError:error];
    v11 = 0;
    v9 = [(AVVoiceController *)self _bringUp:v7 withError:&v11];
    v10 = v11;
    if (error && v9)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v9 userInfo:0];
    }

    self->mClientAPIClutch = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  ElapsedTime::~ElapsedTime(v19);
  TraceWrapper::~TraceWrapper(&v12);
}

- (void)finalize
{
  TraceMethod::TraceMethod(v6, "finalize");
  objc_msgSend_impl(self);
  [(AVVoiceController *)self sessionCleanup];
  if (v4)
  {
    ControllerImpl::cleanup(v4, self);
  }

  v3.receiver = self;
  v3.super_class = AVVoiceController;
  [(AVVoiceController *)&v3 finalize];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TraceMethod::~TraceMethod(v6);
}

- (void)endAudioSessionActivate:(BOOL)activate
{
  activateCopy = activate;
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v11)
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((v11 + 168));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  v6 = objc_loadWeakRetained((v11 + 168));
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_8:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 786;
      v17 = 1024;
      v18 = activateCopy;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling record delegate's voiceControllerDidSetAudioSessionActive. Going active? : %d", buf, 0x18u);
    }
  }

  v10 = objc_loadWeakRetained((v11 + 168));
  [v10 voiceControllerDidSetAudioSessionActive:self isActivated:activateCopy];

LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

- (void)beginAudioSessionActivate:(BOOL)activate
{
  activateCopy = activate;
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v11)
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((v11 + 168));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  v6 = objc_loadWeakRetained((v11 + 168));
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_8:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "AVVoiceController.mm";
      v15 = 1024;
      v16 = 774;
      v17 = 1024;
      v18 = activateCopy;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Calling record delegate's voiceControllerWillSetAudioSessionActive. Going active? : %d", buf, 0x18u);
    }
  }

  v10 = objc_loadWeakRetained((v11 + 168));
  [v10 voiceControllerWillSetAudioSessionActive:self willActivate:activateCopy];

LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

- (void)endRecordInterruption
{
  v15 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v9)
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((v9 + 168));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  v4 = objc_loadWeakRetained((v9 + 168));
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_8;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_8:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "AVVoiceController.mm";
      v13 = 1024;
      v14 = 762;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStop: notifying", buf, 0x12u);
    }
  }

  v8 = objc_loadWeakRetained((v9 + 168));
  [v8 voiceControllerEndRecordInterruption:self];

LABEL_12:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

- (void)beginRecordInterruptionWithContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  objc_msgSend_impl(self);
  if (v17)
  {
    WeakRetained = objc_loadWeakRetained((v17 + 168));
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((v17 + 168));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        if (kAVVCScope)
        {
          v8 = *kAVVCScope;
          if (!v8)
          {
LABEL_22:
            v13 = objc_loadWeakRetained((v17 + 168));
            [v13 voiceControllerBeginRecordInterruption:self withContext:contextCopy];
LABEL_28:

            goto LABEL_29;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v20 = "AVVoiceController.mm";
          v21 = 1024;
          v22 = 744;
          v23 = 2112;
          v24 = contextCopy;
          _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStart: notifying with context: %@", buf, 0x1Cu);
        }

        goto LABEL_22;
      }
    }

    v9 = objc_loadWeakRetained((v17 + 168));
    if (v9)
    {
      v10 = objc_loadWeakRetained((v17 + 168));
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        if (kAVVCScope)
        {
          v12 = *kAVVCScope;
          if (!v12)
          {
LABEL_27:
            v13 = objc_loadWeakRetained((v17 + 168));
            [v13 voiceControllerBeginRecordInterruption:self];
            goto LABEL_28;
          }
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v20 = "AVVoiceController.mm";
          v21 = 1024;
          v22 = 747;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStart: notifying without context", buf, 0x12u);
        }

        goto LABEL_27;
      }
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 751;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleInterruptStart: WARNING: delegate does not respond to voiceControllerBeginRecordInterruption:", buf, 0x12u);
    }

    goto LABEL_28;
  }

LABEL_29:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

- (void)notifyEventOccured:(unint64_t)occured error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  objc_msgSend_impl(self);
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained((v14 + 168));
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((v14 + 168));
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
LABEL_17:
            v11 = objc_loadWeakRetained((v14 + 168));
            [v11 voiceControllerEventOccurred:self forStream:occured error:errorCopy];
LABEL_18:

            goto LABEL_19;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v17 = "AVVoiceController.mm";
          v18 = 1024;
          v19 = 727;
          v20 = 2048;
          occuredCopy = occured;
          v22 = 2112;
          v23 = errorCopy;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifying streamHandle(%lu) that an event occured: %@", buf, 0x26u);
        }

        goto LABEL_17;
      }
    }

    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "AVVoiceController.mm";
      v18 = 1024;
      v19 = 731;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d WARNING: delegate does not respond to voiceControllerEventOccurred:forStream:error:", buf, 0x12u);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

- (void)notifyStreamInvalidated:(unint64_t)invalidated
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  if (!v12)
  {
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained((v12 + 168));
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((v12 + 168));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
LABEL_17:
          v9 = objc_loadWeakRetained((v12 + 168));
          [v9 voiceControllerStreamInvalidated:self forStream:invalidated];
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "AVVoiceController.mm";
        v16 = 1024;
        v17 = 712;
        v18 = 2048;
        invalidatedCopy2 = invalidated;
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifying streamHandle(%lu) invalidated", buf, 0x1Cu);
      }

      goto LABEL_17;
    }
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
LABEL_11:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 716;
      v18 = 2048;
      invalidatedCopy2 = invalidated;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d streamHandle(%lu) invalidated but no record delegate, or notify selector not supported", buf, 0x1Cu);
    }

    goto LABEL_18;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_19:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

- (void)alertPlaybackFinishedWithSettings:(id)settings
{
  v33 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  objc_msgSend_impl(self);
  if (v21)
  {
    WeakRetained = objc_loadWeakRetained((v21 + 168));
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained((v21 + 168));
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained((v21 + 168));
        [v8 voiceControllerDidFinishAlertPlayback:self withSettings:settingsCopy error:0];

        if (kAVVCScope)
        {
          v9 = *kAVVCScope;
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v9 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        v16 = v9;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v24 = "AVVoiceController.mm";
          v25 = 1024;
          v26 = 697;
          v27 = 1024;
          type = [settingsCopy type];
          v29 = 1024;
          mode = [settingsCopy mode];
          v31 = 2048;
          alertEndTime = [settingsCopy alertEndTime];
          v17 = "%25s:%-5d Calling alert playback finished delegate. Settings { Type: %d, Mode: %d, alertEndTime: %llu }";
          v18 = v16;
          v19 = 40;
LABEL_18:
          _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    v10 = objc_loadWeakRetained((v21 + 168));
    if (v10)
    {
      v11 = objc_loadWeakRetained((v21 + 168));
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained((v21 + 168));
        [v13 voiceControllerDidFinishAlertPlayback:self ofType:objc_msgSend(settingsCopy error:{"type"), 0}];

        if (kAVVCScope)
        {
          v14 = *kAVVCScope;
          if (!v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        v16 = v14;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = "AVVoiceController.mm";
          v25 = 1024;
          v26 = 701;
          v27 = 1024;
          type = [settingsCopy type];
          v17 = "%25s:%-5d Calling alert playback finished delegate. Type: %d";
          v18 = v16;
          v19 = 24;
          goto LABEL_18;
        }

LABEL_19:
      }
    }
  }

LABEL_20:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

- (void)encodeError:(int)error
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  v5 = v16;
  if (!v16)
  {
    goto LABEL_19;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    CAX4CCString::CAX4CCString(v18, error);
    *buf = 136315650;
    v20 = "AVVoiceController.mm";
    v21 = 1024;
    v22 = 679;
    v23 = 2080;
    v24 = v18;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d     Reporting encoder error %s via delegate", buf, 0x1Cu);
  }

  v5 = v16;
LABEL_9:
  WeakRetained = objc_loadWeakRetained((v5 + 168));
  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained((v16 + 168));
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = [v12 initWithDomain:*MEMORY[0x1E696A768] code:error userInfo:0];
      v14 = objc_loadWeakRetained((v16 + 168));
      [v14 voiceControllerEncoderErrorDidOccur:self error:v13];

LABEL_18:
      goto LABEL_19;
    }
  }

  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "AVVoiceController.mm";
      v21 = 1024;
      v22 = 685;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d encodeError detected but no record delegate, or notify selector not supported", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

- (void)endpointDetectedAtTime:(double)time
{
  v26 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    objc_msgSend_impl(self);
    v5 = v18;
    if (!v18)
    {
      goto LABEL_30;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 661;
      v24 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### endpointDetected: time %.2f seconds ####", buf, 0x1Cu);
    }

    v5 = v18;
LABEL_17:
    WeakRetained = objc_loadWeakRetained((v5 + 168));
    if (WeakRetained && (v11 = objc_loadWeakRetained((v18 + 168)), v12 = objc_opt_respondsToSelector(), v11, WeakRetained, (v12 & 1) != 0))
    {
      v13 = objc_loadWeakRetained((v18 + 168));
      [v13 voiceControllerDidDetectEndpoint:self ofType:2 atTime:time];
    }

    else
    {
      v14 = objc_loadWeakRetained((v18 + 168));
      if (v14 && (v15 = objc_loadWeakRetained((v18 + 168)), v16 = objc_opt_respondsToSelector(), v15, v14, (v16 & 1) != 0))
      {
        v13 = objc_loadWeakRetained((v18 + 168));
        [v13 voiceControllerDidDetectEndpoint:self ofType:2];
      }

      else
      {
        if (kAVVCScope)
        {
          v13 = *kAVVCScope;
          if (!v13)
          {
LABEL_30:
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            return;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v21 = "AVVoiceController.mm";
          v22 = 1024;
          v23 = 669;
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidDetectEndpoint:ofType:", buf, 0x12u);
        }
      }
    }

    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 654;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d endpointDetected -> called after object destroyed -- ignoring call", buf, 0x12u);
  }
}

- (void)interspeechPointDetectedAtTime:(double)time
{
  v26 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    objc_msgSend_impl(self);
    v5 = v18;
    if (!v18)
    {
      goto LABEL_30;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 639;
      v24 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### interspeechPointDetected: time %.2f seconds ####", buf, 0x1Cu);
    }

    v5 = v18;
LABEL_17:
    WeakRetained = objc_loadWeakRetained((v5 + 168));
    if (WeakRetained && (v11 = objc_loadWeakRetained((v18 + 168)), v12 = objc_opt_respondsToSelector(), v11, WeakRetained, (v12 & 1) != 0))
    {
      v13 = objc_loadWeakRetained((v18 + 168));
      [v13 voiceControllerDidDetectEndpoint:self ofType:1 atTime:time];
    }

    else
    {
      v14 = objc_loadWeakRetained((v18 + 168));
      if (v14 && (v15 = objc_loadWeakRetained((v18 + 168)), v16 = objc_opt_respondsToSelector(), v15, v14, (v16 & 1) != 0))
      {
        v13 = objc_loadWeakRetained((v18 + 168));
        [v13 voiceControllerDidDetectEndpoint:self ofType:1];
      }

      else
      {
        if (kAVVCScope)
        {
          v13 = *kAVVCScope;
          if (!v13)
          {
LABEL_30:
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            return;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v21 = "AVVoiceController.mm";
          v22 = 1024;
          v23 = 647;
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidDetectEndpoint:ofType:", buf, 0x12u);
        }
      }
    }

    goto LABEL_30;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "AVVoiceController.mm";
    v22 = 1024;
    v23 = 632;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d interspeechPointDetected -> called after object destroyed -- ignoring call", buf, 0x12u);
  }
}

- (void)startpointDetected
{
  v19 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    objc_msgSend_impl(self);
    v3 = v13;
    if (!v13)
    {
      goto LABEL_27;
    }

    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 620;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### startpointDetected: ####", buf, 0x12u);
    }

    v3 = v13;
LABEL_17:
    WeakRetained = objc_loadWeakRetained((v3 + 168));
    if (WeakRetained && (v9 = objc_loadWeakRetained((v13 + 168)), v10 = objc_opt_respondsToSelector(), v9, WeakRetained, (v10 & 1) != 0))
    {
      v11 = objc_loadWeakRetained((v13 + 168));
      [v11 voiceControllerDidDetectStartpoint:self];
    }

    else
    {
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
LABEL_27:
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          return;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v16 = "AVVoiceController.mm";
        v17 = 1024;
        v18 = 625;
        _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidDetectStartpoint:", buf, 0x12u);
      }
    }

    goto LABEL_27;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 612;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d startpointDetected -> called after object destroyed -- ignoring call", buf, 0x12u);
  }
}

- (void)finishedRecording:(unint64_t)recording status:(int)status
{
  LODWORD(v4) = status;
  v30 = *MEMORY[0x1E69E9840];
  if (ObjectExists(self))
  {
    objc_msgSend_impl(self);
    v7 = v24;
    if (!v24)
    {
      goto LABEL_38;
    }

    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *v27 = "AVVoiceController.mm";
      v12 = v4 == -11789 || v4 == 0;
      *&v27[8] = 1024;
      v13 = v12;
      *&v27[10] = 595;
      *&v27[14] = 1024;
      *&v27[16] = v13;
      LOWORD(v28) = 1024;
      *(&v28 + 2) = v4;
      HIWORD(v28) = 2048;
      recordingCopy = recording;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: Recording finished (success = %d status = %d streamID = %llu) ####", buf, 0x28u);
    }

    v7 = v24;
LABEL_23:
    WeakRetained = objc_loadWeakRetained((v7 + 168));
    if (WeakRetained)
    {
      v15 = objc_loadWeakRetained((v24 + 168));
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained((v24 + 168));
        v4 = v4;
        [v17 voiceControllerDidStopRecording:self forStream:recording forReason:v4];

LABEL_37:
        *buf = 4116;
        v27[0] = 0;
        *&v27[4] = v4;
        *&v27[12] = 0;
        v28 = 0;
        recordingCopy = 0;
        kdebug_trace();
        TraceWrapper::~TraceWrapper(buf);
LABEL_38:
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        return;
      }
    }

    v18 = objc_loadWeakRetained((v24 + 168));
    if (v18)
    {
      v19 = objc_loadWeakRetained((v24 + 168));
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = objc_loadWeakRetained((v24 + 168));
        v4 = v4;
        [v21 voiceControllerDidStopRecording:self forReason:v4];

        goto LABEL_37;
      }
    }

    if (kAVVCScope)
    {
      v22 = *kAVVCScope;
      if (!v22)
      {
LABEL_36:
        v4 = v4;
        goto LABEL_37;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *v27 = "AVVoiceController.mm";
      *&v27[8] = 1024;
      *&v27[10] = 604;
      _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidStopRecording:forReason:", buf, 0x12u);
    }

    goto LABEL_36;
  }

  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *v27 = "AVVoiceController.mm";
    *&v27[8] = 1024;
    *&v27[10] = 586;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d finishedRecording -> called after AVVC object destroyed -- ignoring call and possibly leaking ControllerImpl", buf, 0x12u);
  }
}

- (void)beganRecording:(unint64_t)recording status:(int)status
{
  v31 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  v7 = v25;
  if (!v25)
  {
    goto LABEL_32;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *v28 = "AVVoiceController.mm";
    *&v28[8] = 1024;
    *&v28[10] = 561;
    *&v28[14] = 1024;
    *&v28[16] = status == 0;
    LOWORD(v29) = 1024;
    *(&v29 + 2) = status;
    HIWORD(v29) = 2048;
    recordingCopy = recording;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### beganRecording: (success = %d status = %d streamID = %llu) ####", buf, 0x28u);
  }

  v7 = v25;
LABEL_9:
  WeakRetained = objc_loadWeakRetained((v7 + 168));
  if (WeakRetained && (v11 = objc_loadWeakRetained((v25 + 168)), v12 = objc_opt_respondsToSelector(), v11, WeakRetained, (v12 & 1) != 0))
  {
    if (status)
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = [v13 initWithDomain:*MEMORY[0x1E696A768] code:status userInfo:0];
    }

    else
    {
      v14 = 0;
    }

    v23 = objc_loadWeakRetained((v25 + 168));
    [v23 voiceControllerDidStartRecording:self forStream:recording successfully:status == 0 error:v14];
  }

  else
  {
    v15 = objc_loadWeakRetained((v25 + 168));
    if (v15 && (v16 = objc_loadWeakRetained((v25 + 168)), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
    {
      if (status)
      {
        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = [v18 initWithDomain:*MEMORY[0x1E696A768] code:status userInfo:0];
      }

      else
      {
        v14 = 0;
      }

      v24 = objc_loadWeakRetained((v25 + 168));
      [v24 voiceControllerDidStartRecording:self successfully:status == 0 error:v14];
    }

    else
    {
      v19 = objc_loadWeakRetained((v25 + 168));
      if (v19 && (v20 = objc_loadWeakRetained((v25 + 168)), v21 = objc_opt_respondsToSelector(), v20, v19, (v21 & 1) != 0))
      {
        v14 = objc_loadWeakRetained((v25 + 168));
        [v14 voiceControllerDidStartRecording:self successfully:status == 0];
      }

      else
      {
        if (kAVVCScope)
        {
          v14 = *kAVVCScope;
          if (!v14)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v22 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *v28 = "AVVoiceController.mm";
          *&v28[8] = 1024;
          *&v28[10] = 575;
          _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerDidStartRecording: variants", buf, 0x12u);
        }
      }
    }
  }

LABEL_31:
  ProfileMetrics(&cfstr_AvvcProfilePro.isa);
  *buf = 4115;
  v28[0] = 0;
  *&v28[4] = status;
  *&v28[12] = 0;
  v29 = 0;
  recordingCopy = 0;
  kdebug_trace();
  TraceWrapper::~TraceWrapper(buf);
LABEL_32:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

- (void)handlePluginDidUnpublishDevice:(id)device withDevice:(id)withDevice
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  withDeviceCopy = withDevice;
  objc_msgSend_impl(self);
  v8 = v16;
  if (v16)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = __90__AVVoiceController_AVVoiceControllerInternal__handlePluginDidUnpublishDevice_withDevice___block_invoke;
    v11[3] = &unk_1F3848630;
    v14 = v16;
    v15 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11[4] = self;
    v12 = deviceCopy;
    v13 = withDeviceCopy;
    ControllerImpl::dispatchAndSafeWork(v8, v11, "[AVVoiceController(AVVoiceControllerInternal) handlePluginDidUnpublishDevice:withDevice:]");

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 524;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! handlePluginDidUNpublishDevice: ControllerImpl is NULL", buf, 0x12u);
    }
  }

LABEL_13:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void __90__AVVoiceController_AVVoiceControllerInternal__handlePluginDidUnpublishDevice_withDevice___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = v1;
  v6 = v2;
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 deviceIdentifier];
    v12 = 136316162;
    v13 = "ControllerImpl.mm";
    v14 = 1024;
    v15 = 740;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handlePluginDidUnpublishDevice notification for plugin(%p), device(%p), deviceID(%@)", &v12, 0x30u);
  }

LABEL_8:
  v11 = [v6 deviceIdentifier];
  ControllerImpl::_removeEngineFromMap(v3, v4, 0, v11, &__block_literal_global_5641);
}

- (void)handlePluginDidPublishDevice:(id)device withDevice:(id)withDevice
{
  v16 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  withDeviceCopy = withDevice;
  objc_msgSend_impl(self);
  if (v10)
  {
    ControllerImpl::handlePluginDidPublishDevice(self, deviceCopy, withDeviceCopy);
    goto LABEL_10;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "AVVoiceController.mm";
    v14 = 1024;
    v15 = 515;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error! handlePluginDidPublishDevice: ControllerImpl is NULL", buf, 0x12u);
  }

LABEL_10:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

- (void)configureVoiceTriggerClientCompletionBlocks
{
  v24 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke;
  aBlock[3] = &unk_1E7EF52B8;
  objc_copyWeak(&v14, &location);
  v2 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke_2;
  v11[3] = &unk_1E7EF52B8;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(v11);
  v4 = +[AVVoiceTriggerClient sharedInstance];
  [v4 setAVVCServerCrashedBlock:v2];

  v5 = +[AVVoiceTriggerClient sharedInstance];
  [v5 setAVVCServerResetBlock:v3];

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _Block_copy(v2);
    v10 = _Block_copy(v3);
    *buf = 136315906;
    v17 = "AVVoiceController.mm";
    v18 = 1024;
    v19 = 506;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configureVoiceTriggerClientCompletionBlocks: crashBlock: %p resetBlock: %p", buf, 0x26u);
  }

LABEL_8:
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleMediaServerDeath:v5];
  }

  else if (v5)
  {
    v5[2]();
  }
}

void __91__AVVoiceController_AVVoiceControllerInternal__configureVoiceTriggerClientCompletionBlocks__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleMediaServerReset:v5];
  }

  else if (v5)
  {
    v5[2]();
  }
}

- (void)handleMediaServerReset:(id)reset
{
  v24 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  v16 = 4111;
  v17 = 0;
  v18 = 0u;
  v19 = 0u;
  kdebug_trace();
  objc_msgSend_impl(self);
  v5 = v14;
  if (v14)
  {
    v6 = !self->mClientAPIClutch;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke;
    v9[3] = &unk_1F384CF78;
    v13 = v6;
    v11 = v14;
    v12 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[4] = self;
    v10 = resetCopy;
    ControllerImpl::dispatchAndSafeWork(v5, v9, "[AVVoiceController(AVVoiceControllerInternal) handleMediaServerReset:]");

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    goto LABEL_15;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_10;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_10:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 444;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d handleMediaServerReset: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }
  }

  if (resetCopy)
  {
    resetCopy[2](resetCopy);
  }

LABEL_15:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  TraceWrapper::~TraceWrapper(&v16);
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke(uint64_t a1, AVVoiceController *a2)
{
  if (*(a1 + 64) == 1)
  {
    ControllerImpl::handleServerReset(*(a1 + 48), a2);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke_2;
  v7[3] = &unk_1F3848A58;
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v6;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = *(a1 + 32);
  ControllerImpl::safeNotify(v3, "notify server reset", v7);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerReset___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1[6] + 168));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v5 = objc_loadWeakRetained((a1[6] + 168));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v8 = objc_loadWeakRetained((a1[6] + 168));
        [v8 voiceControllerMediaServicesWereReset:a1[4]];
      }
    }
  }
}

- (void)handleMediaServerDeath:(id)death
{
  v24 = *MEMORY[0x1E69E9840];
  deathCopy = death;
  v16 = 4110;
  v17 = 0;
  v18 = 0u;
  v19 = 0u;
  kdebug_trace();
  objc_msgSend_impl(self);
  v5 = v14;
  if (v14)
  {
    v6 = !self->mClientAPIClutch;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke;
    v9[3] = &unk_1F384CF78;
    v13 = v6;
    v11 = v14;
    v12 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[4] = self;
    v10 = deathCopy;
    ControllerImpl::dispatchAndSafeWork(v5, v9, "[AVVoiceController(AVVoiceControllerInternal) handleMediaServerDeath:]");

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    goto LABEL_15;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_10;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_10:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 409;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d handleMediaServerDeath: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }
  }

  if (deathCopy)
  {
    deathCopy[2](deathCopy);
  }

LABEL_15:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  TraceWrapper::~TraceWrapper(&v16);
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    ControllerImpl::handleServerDeath(*(a1 + 48), *(a1 + 32));
  }

  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = v3;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 48);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke_2;
  v5[3] = &unk_1F3847BD8;
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5[4] = *(a1 + 32);
  ControllerImpl::safeNotify(v4, "notify server death", v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void __71__AVVoiceController_AVVoiceControllerInternal__handleMediaServerDeath___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (!v2)
  {
    v4 = a1[7];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = a1[6];
        if (v6)
        {
          WeakRetained = objc_loadWeakRetained((v6 + 168));
          if (WeakRetained)
          {
            v8 = WeakRetained;
            v9 = objc_loadWeakRetained((v6 + 168));
            v10 = objc_opt_respondsToSelector();

            if (v10)
            {
              v11 = objc_loadWeakRetained((v6 + 168));
              [v11 voiceControllerMediaServicesWereLost:a1[4]];
            }
          }

LABEL_20:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          return;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "AVVoiceController.mm";
      v16 = 1024;
      v17 = 430;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (impl: %p). Bailing", &v14, 0x1Cu);
    }

LABEL_19:
    if (!v5)
    {
      return;
    }

    goto LABEL_20;
  }

  v3 = *(v2 + 16);

  v3();
}

- (void)handleRouteChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  objc_msgSend_impl(self);
  if (v18)
  {
    object = [changeCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [changeCopy object];

      if (!object2)
      {
        goto LABEL_16;
      }

      v7 = objc_alloc(MEMORY[0x1E695DF90]);
      userInfo = [changeCopy userInfo];
      v9 = [v7 initWithDictionary:userInfo];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3321888768;
      v12[2] = __66__AVVoiceController_AVVoiceControllerInternal__handleRouteChange___block_invoke;
      v12[3] = &unk_1F3848630;
      object = object2;
      v13 = object;
      v10 = v9;
      v14 = v10;
      v16 = v18;
      v17 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      selfCopy = self;
      ControllerImpl::dispatchAndSafeWork(v18, v12, "[AVVoiceController(AVVoiceControllerInternal) handleRouteChange:]");
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    goto LABEL_15;
  }

  if (!kAVVCScope)
  {
    object = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(object, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "AVVoiceController.mm";
      v22 = 1024;
      v23 = 381;
      _os_log_impl(&dword_1BA5AC000, object, OS_LOG_TYPE_ERROR, "%25s:%-5d handleRouteChange: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }

LABEL_15:

    goto LABEL_16;
  }

  object = *kAVVCScope;
  if (object)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void __66__AVVoiceController_AVVoiceControllerInternal__handleRouteChange___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentRoute];
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:@"AVAudioSessionRouteChangeCurrentRouteKey"];
  }

  v3 = *(a1 + 32);
  v4 = ControllerImpl::audioSessionForStreamID(*(a1 + 56), 0, 0);

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "aux";
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    if (v3 == v4)
    {
      v7 = "primary";
    }

    v27 = 136316162;
    v28 = "AVVoiceController.mm";
    v29 = 1024;
    v30 = 394;
    v31 = 2048;
    v32 = v8;
    v33 = 2080;
    v34 = v7;
    v35 = 2048;
    v36 = v9;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p] handleRouteChange: %s session (%p)", &v27, 0x30u);
  }

LABEL_12:
  v10 = *(a1 + 40);
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 objectForKey:@"AVAudioSessionRouteChangeCurrentRouteKey"];
    v15 = _logRouteDesc(v14);
    v27 = 136315650;
    v28 = "AVVCUtils.mm";
    v29 = 1024;
    v30 = 1142;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CurrentRoute: %@", &v27, 0x1Cu);
  }

LABEL_19:
  if (kAVVCScope)
  {
    v16 = *kAVVCScope;
    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v10 objectForKey:*MEMORY[0x1E698D6D8]];
    v20 = _logRouteDesc(v19);
    v27 = 136315650;
    v28 = "AVVCUtils.mm";
    v29 = 1024;
    v30 = 1143;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PreviousRoute: %@", &v27, 0x1Cu);
  }

LABEL_26:
  v21 = [v10 objectForKey:*MEMORY[0x1E698D6E0]];
  if (kAVVCScope)
  {
    v22 = *kAVVCScope;
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  v24 = v22;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v21)
    {
      v25 = [v21 unsignedIntegerValue];
      if (v25 > 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = off_1E7EF51D0[v25];
      }
    }

    else
    {
      v26 = "null";
    }

    v27 = 136315650;
    v28 = "AVVCUtils.mm";
    v29 = 1024;
    v30 = 1145;
    v31 = 2080;
    v32 = v26;
    _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RouteChangeReason: %s", &v27, 0x1Cu);
  }

LABEL_38:
  ControllerImpl::handleRouteChange(*(a1 + 56), *(a1 + 48), *(a1 + 32), *(a1 + 40));
}

- (void)handleInterruption:(id)interruption
{
  v22 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  objc_msgSend_impl(self);
  if (v16)
  {
    userInfo = [interruptionCopy userInfo];
    object = [interruptionCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [interruptionCopy object];

      if (!object2)
      {
LABEL_16:

        goto LABEL_17;
      }

      v8 = v16;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3321888768;
      v10[2] = __67__AVVoiceController_AVVoiceControllerInternal__handleInterruption___block_invoke;
      v10[3] = &unk_1F3848630;
      object = object2;
      v11 = object;
      v14 = v16;
      v15 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      selfCopy = self;
      v13 = userInfo;
      ControllerImpl::dispatchAndSafeWork(v8, v10, "[AVVoiceController(AVVoiceControllerInternal) handleInterruption:]");

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    goto LABEL_16;
  }

  if (!kAVVCScope)
  {
    userInfo = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
LABEL_14:
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AVVoiceController.mm";
      v20 = 1024;
      v21 = 355;
      _os_log_impl(&dword_1BA5AC000, userInfo, OS_LOG_TYPE_ERROR, "%25s:%-5d handleInterruption: ControllerImpl is nil. Bailing!", buf, 0x12u);
    }

    goto LABEL_16;
  }

  userInfo = *kAVVCScope;
  if (userInfo)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void __67__AVVoiceController_AVVoiceControllerInternal__handleInterruption___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ControllerImpl::audioSessionForStreamID(*(a1 + 56), 0, 0);

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "aux";
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (v2 == v3)
    {
      v6 = "primary";
    }

    v12 = 136316418;
    v13 = "AVVoiceController.mm";
    v14 = 1024;
    v15 = 363;
    v16 = 2048;
    v17 = v7;
    v18 = 2080;
    v19 = v6;
    v20 = 2048;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController[self = %p] handleInterruption: %s session (%p), %@", &v12, 0x3Au);
  }

LABEL_10:
  v10 = [*(a1 + 48) objectForKey:*MEMORY[0x1E698D580]];
  v11 = [v10 unsignedLongValue];
  if (v11)
  {
    if (v11 == 1)
    {
      ControllerImpl::handleInterruptStart(*(a1 + 56), *(a1 + 40), *(a1 + 32), *(a1 + 48));
    }
  }

  else
  {
    ControllerImpl::handleInterruptStop(*(a1 + 56), *(a1 + 40), *(a1 + 32), *(a1 + 48));
  }
}

- (void)hardwareConfigChanged:(int)changed
{
  v3 = *&changed;
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_impl(self, a2);
  v5 = v13;
  if (!v13)
  {
    goto LABEL_19;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "AVVoiceController.mm";
    v17 = 1024;
    v18 = 339;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### hardwareConfigChanged: ####", buf, 0x12u);
  }

  v5 = v13;
LABEL_9:
  WeakRetained = objc_loadWeakRetained((v5 + 168));
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained((v13 + 168));
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained((v13 + 168));
      [v11 voiceControllerRecordHardwareConfigurationDidChange:self toConfiguration:v3];
LABEL_18:

      goto LABEL_19;
    }
  }

  if (!kAVVCScope)
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
LABEL_16:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v16 = "AVVoiceController.mm";
      v17 = 1024;
      v18 = 344;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d WARNING: delegate is nil or does not respond to voiceControllerRecordHardwareConfigurationDidChange:toConfiguration:", buf, 0x12u);
    }

    goto LABEL_18;
  }

  v11 = *kAVVCScope;
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

- (void)removeSessionNotifications:(id)notifications
{
  v15 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  if (notificationsCopy)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_11:
        [notificationsCopy removeSessionNotifications:{self, *v12, *&v12[8]}];
        goto LABEL_12;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isPrimary = [notificationsCopy isPrimary];
      audioSession = [notificationsCopy audioSession];
      v10 = audioSession;
      v11 = "aux";
      *&v12[4] = "AVVoiceController.mm";
      *&v12[12] = 1024;
      *&v12[14] = 329;
      *v12 = 136315906;
      if (isPrimary)
      {
        v11 = "primary";
      }

      *&v12[18] = 2080;
      *&v12[20] = v11;
      v13 = 2048;
      v14 = audioSession;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d removeSessionNotifications: removing all notifications for %s session(%p)", v12, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)setSessionNotifications:(id)notifications
{
  v15 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  if (notificationsCopy)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_11:
        [notificationsCopy setupSessionNotifications:{self, *v12, *&v12[8]}];
        goto LABEL_12;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isPrimary = [notificationsCopy isPrimary];
      audioSession = [notificationsCopy audioSession];
      v10 = audioSession;
      v11 = "aux";
      *&v12[4] = "AVVoiceController.mm";
      *&v12[12] = 1024;
      *&v12[14] = 319;
      *v12 = 136315906;
      if (isPrimary)
      {
        v11 = "primary";
      }

      *&v12[18] = 2080;
      *&v12[20] = v11;
      v13 = 2048;
      v14 = audioSession;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setSessionNotifications: setting up notifications for %s session(%p)", v12, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)sessionCleanup
{
  v3 = +[AVVCSessionFactory sharedInstance];
  [v3 setSessionWasCreatedBlock:0];

  v4 = +[AVVCSessionFactory sharedInstance];
  [v4 setSessionWillBeDestroyedBlock:0];

  objc_msgSend_impl(self);
  if (v6)
  {
    v5 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
    [(AVVoiceController *)self removeSessionNotifications:v5];
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

- (void)sessionSetup
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke;
  v10[3] = &unk_1E7EF5290;
  objc_copyWeak(&v11, &location);
  v3 = +[AVVCSessionFactory sharedInstance];
  [v3 setSessionWasCreatedBlock:v10];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke_2;
  v8[3] = &unk_1E7EF5290;
  objc_copyWeak(&v9, &location);
  v4 = +[AVVCSessionFactory sharedInstance];
  [v4 setSessionWillBeDestroyedBlock:v8];

  objc_msgSend_impl(self);
  if (v6)
  {
    v5 = ControllerImpl::sessionManagerForStreamID(v6, 0, 0);
    [(AVVoiceController *)self setSessionNotifications:v5];
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSessionNotifications:v3];
}

void __60__AVVoiceController_AVVoiceControllerInternal__sessionSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeSessionNotifications:v3];
}

@end