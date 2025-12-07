@interface BWAudioSourceNode
+ (id)audioSourceNodeWithAttributes:(id)attributes sessionPreset:(id)preset clock:(OpaqueCMClock *)clock doConfigureAudio:(BOOL)audio doMixWithOthers:(BOOL)others doAllowHQBluetoothRecording:(BOOL)recording audioSession:(id)session isAppAudioSession:(BOOL)self0 doEndInterruption:(BOOL)self1 audioSessionIsProxy:(BOOL)self2 audioIsPlayingToBuiltinSpeaker:(BOOL)self3 audioSessionActivatedByBWGraph:(BOOL)self4 clientAuditToken:(id *)self5 clientSDKVersionToken:(unint64_t)self6 clientOSVersionSupportsDecoupledIO:(BOOL)self7 clientAudioClockDeviceUID:(id)self8 preferredIOBufferDuration:(id)self9 audioCaptureConnectionConfigurations:(id)configurations isConfiguredForContinuityCapture:(BOOL)capture isAudioOnlyRecordingSession:(BOOL)recordingSession remoteIOOutputFormat:(id)format outErr:(int *)err;
+ (void)initialize;
- (BOOL)mixWithOthersActive;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (NSArray)audioLevels;
- (char)_initWithAttributes:(uint64_t)attributes sessionPreset:(const void *)preset clock:(char)clock doConfigureAudio:(char)audio doMixWithOthers:(char)others doAllowHQBluetoothRecording:(void *)recording audioSession:(char)session isAppAudioSession:(char)self0 doEndInterruption:(char)self1 audioSessionIsProxy:(char)self2 audioIsPlayingToBuiltinSpeaker:(unsigned __int8)self3 audioSessionActivatedByBWGraph:(_OWORD *)self4 clientAuditToken:(uint64_t)self5 clientSDKVersionToken:(char)self6 clientOSVersionSupportsDecoupledIO:(void *)self7 clientAudioClockDeviceUID:(void *)self8 preferredIOBufferDuration:(void *)self9 audioCaptureConnectionConfigurations:(char)configurations isConfiguredForContinuityCapture:(char)capture isAudioOnlyRecordingSession:(void *)recordingSession remoteIOOutputFormat:(int *)format outErr:;
- (double)_desiredSampleRate:(uint64_t)rate;
- (float)_setVADCameraParametersWithDirection:(uint64_t)direction zoomFactor:(float)factor forTime:;
- (id)_copyAudioSessionMXProperty:(unsigned int *)property err:;
- (id)_createSampleBufferForTimestampedAudioBufferList:(int)list audioBufferIndex:;
- (id)messageDispatchQueueForOutput:(id)output;
- (id)outputForMicSourcePosition:(int)position;
- (uint64_t)_configureAudioSessionWithDefaultHardwareSampleRate:(double)rate didCallDoNotNotifyOtherSessionsOnNextInactive:;
- (uint64_t)_deactivateAudioSessionIfNecessary:(uint64_t)necessary;
- (uint64_t)_generatePullBuffers;
- (uint64_t)_getAudioDevicePullFrames:(uint64_t)frames;
- (uint64_t)_selectMicForCurrentAudioRoute;
- (uint64_t)_setAudioSessionAudioModeAndSelectMic:(uint64_t)mic;
- (uint64_t)_setAudioSessionBatchedMXProperties:(uint64_t)properties;
- (uint64_t)_setAudioSessionMXPropertyWithKey:(uint64_t)key value:;
- (uint64_t)_setupAudioUnit;
- (uint64_t)_setupPrepareToRecordStateWithFlags:(uint64_t)result;
- (uint64_t)_updatePullFormatDescription;
- (void)_activeAudioRouteDidChangeHandler;
- (void)_generateSamples;
- (void)_generateSilenceIfNeeded;
- (void)_signalAndClearStartGroup;
- (void)_updateMXSessionAudioMode;
- (void)_updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:(uint64_t)timer;
- (void)dealloc;
- (void)makeCurrentConfigurationLive;
- (void)makeOutputsLiveIfNeeded;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)prepareToStartRecordingWithOrientation:(int)orientation recordingSettingsID:(int64_t)d prefersNoInterruptionsByRingtonesAndAlerts:(BOOL)alerts completionHandler:(id)handler;
- (void)setAudioCaptureMode:(int)audioCaptureMode;
- (void)setLevelMeteringEnabled:(BOOL)enabled;
- (void)setStereoAudioCapturePairedCameraZoomFactor:(float)factor;
- (void)unprepareForRecording;
- (void)updateStereoAudioCapturePairedCameraBaseFieldOfView:(float)view zoomFactor:(float)factor;
- (void)updateWithAudioSession:(id)session clientAuditToken:(id *)token;
- (void)zoomCommandHandler:(id)handler didApplyZoomFactor:(float)factor zoomFactorWithoutFudge:(float)fudge targetZoomFactor:(float)zoomFactor rampComplete:(BOOL)complete rampCommandID:(int)d;
@end

@implementation BWAudioSourceNode

- (uint64_t)_setupAudioUnit
{
  if (!self)
  {
    return 0;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0;
  selfCopy = 0;
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v3 = *(self + 320);
  inDesc.componentType = 1635086197;
  inDesc.componentSubType = v3;
  *&inDesc.componentManufacturer = 1634758764;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (Next)
  {
    v5 = Next;
    v6 = OUTLINED_FUNCTION_22_23();
    if (v6)
    {
      AudioUnitUninitialize(v6);
      v8 = OUTLINED_FUNCTION_22_23();
      AudioComponentInstanceDispose(v8);
      v7 = 312;
      *(self + 312) = 0;
    }

    Property = AudioComponentInstanceNew(v5, (self + v7));
    if (Property)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_100();
    Property = AudioUnitSetProperty(v10, v11, v12, v13, v14, 0x20u);
    if (Property)
    {
      goto LABEL_31;
    }

    if (*(self + 248))
    {
      v15 = *(self + 160);
      if (v15)
      {
        PrimaryAudioSessionIDForAuditToken = [v15 opaqueSessionID];
LABEL_14:
        inData[1] = PrimaryAudioSessionIDForAuditToken;
        OUTLINED_FUNCTION_22_23();
        OUTLINED_FUNCTION_100();
        AudioUnitSetProperty(v17, v18, v19, v20, v21, 4u);
        goto LABEL_15;
      }

      if (*(self + 197))
      {
        PrimaryAudioSessionIDForAuditToken = AudioSessionGetPrimaryAudioSessionIDForAuditToken();
        goto LABEL_14;
      }
    }

LABEL_15:
    inData[0] = 1;
    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_50_14();
    Property = AudioUnitSetProperty(v22, v23, v24, v25, v26, 4u);
    if (!Property)
    {
      inData[0] = 0;
      v27 = OUTLINED_FUNCTION_22_23();
      Property = AudioUnitSetProperty(v27, 0x7D3u, 2u, 0, inData, 4u);
      if (!Property)
      {
        v63 = 40;
        OUTLINED_FUNCTION_22_23();
        OUTLINED_FUNCTION_50_14();
        Property = AudioUnitGetProperty(v28, v29, v30, v31, v32, v33);
        if (!Property)
        {
          v68 = v71;
          v69 = v72;
          v70 = v73;
          HIDWORD(v68) = 12;
          if (BYTE12(v71))
          {
            LODWORD(v70) = 16;
            v34 = 2;
          }

          else
          {
            v34 = v70 >> 3;
          }

          DWORD2(v69) = v34 * HIDWORD(v69);
          LODWORD(v69) = v34 * HIDWORD(v69);
          if (*(self + 160))
          {
            OUTLINED_FUNCTION_33();
            if (v36)
            {
              *&v68 = [(BWAudioSourceNode *)self _desiredSampleRate:?];
              if (*(self + 160))
              {
                v58 = [FigWeakReference weakReferenceToObject:self];
                defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
                v60 = *MEMORY[0x1E698D6D0];
                v61 = *(self + 160);
                v62[0] = MEMORY[0x1E69E9820];
                v62[1] = 3221225472;
                v62[2] = __36__BWAudioSourceNode__setupAudioUnit__block_invoke;
                v62[3] = &unk_1E798FC90;
                v62[4] = v58;
                [defaultCenter addObserverForName:v60 object:v61 queue:0 usingBlock:v62];
              }
            }

            else
            {
              [v35 sampleRate];
              *&v68 = v37;
            }
          }

          OUTLINED_FUNCTION_22_23();
          OUTLINED_FUNCTION_52_14();
          Property = AudioUnitSetProperty(v38, v39, v40, v41, v42, 0x28u);
          if (!Property)
          {
            v43 = *(self + 296);
            if (v43)
            {
              CFRelease(v43);
              *(self + 296) = 0;
            }

            OUTLINED_FUNCTION_19_0();
            Property = CMAudioFormatDescriptionCreate(v44, v45, v46, v47, v48, 0, 0, v49);
            if (!Property)
            {
              for (i = 0; i != 24; i += 8)
              {
                [*(self + 128 + i) setFormat:+[BWAudioFormat formatWithAudioFormatDescription:](BWAudioFormat, "formatWithAudioFormatDescription:", *(self + 296))];
              }

              v66 = asn_audioUnitRenderProc;
              selfCopy = self;
              OUTLINED_FUNCTION_22_23();
              OUTLINED_FUNCTION_100();
              Property = AudioUnitSetProperty(v51, v52, v53, v54, v55, 0x10u);
            }
          }
        }
      }
    }

LABEL_31:
    v56 = Property;
    goto LABEL_32;
  }

  v56 = 4294954514;
LABEL_32:
  if (*v2 == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v56;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v2.receiver = self;
  v2.super_class = BWAudioSourceNode;
  [(BWNode *)&v2 prepareForCurrentConfigurationToBecomeLive];
}

void __36__BWAudioSourceNode__setupAudioUnit__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  [(BWAudioSourceNode *)v1 _activeAudioRouteDidChangeHandler];
}

- (void)_activeAudioRouteDidChangeHandler
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    currentRoute = [*(self + 160) currentRoute];
    v25 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    inputs = [currentRoute inputs];
    v5 = [inputs countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(inputs);
          }

          if (objc_msgSend_isEqualToString_([*(*(&v21 + 1) + 8 * i) portType]))
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [inputs countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    outputs = [currentRoute outputs];
    v11 = [outputs countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
LABEL_14:
      v14 = 0;
      while (1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(outputs);
        }

        if (objc_msgSend_isEqualToString_([*(*(&v16 + 1) + 8 * v14) portType]))
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [outputs countByEnumeratingWithState:&v16 objects:v15 count:16];
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }
      }

      if (v9)
      {
        goto LABEL_25;
      }

      [*(self + 160) overrideOutputAudioPort:1936747378 error:&v25];
      [v25 code];
    }

    else
    {
LABEL_25:
      [(BWAudioSourceNode *)self _selectMicForCurrentAudioRoute];
    }

    objc_autoreleasePoolPop(v2);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)makeCurrentConfigurationLive
{
  generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BWAudioSourceNode_makeCurrentConfigurationLive__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(generateSamplesDispatchQueue, block);
}

void *__49__BWAudioSourceNode_makeCurrentConfigurationLive__block_invoke(uint64_t a1)
{
  v2 = 128;
  v3 = 3;
  do
  {
    v4 = *(*(a1 + 32) + v2);
    if ([v4 liveFormat])
    {
      [*(*(a1 + 32) + v2) markEndOfLiveOutputForConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(a1 + 32), "liveConfigurationID"))}];
    }

    result = [v4 makeConfiguredFormatLive];
    v2 += 8;
    --v3;
  }

  while (v3);
  return result;
}

- (id)messageDispatchQueueForOutput:(id)output
{
  v3 = self->_generateSamplesDispatchQueue;

  return v3;
}

- (BOOL)start:(id *)start
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v125[0] = 0;
  if (self->_streamStarted)
  {
    v6 = 1;
    goto LABEL_69;
  }

  deviceIDOut[0] = 0;
  AudioDevice = CMAudioDeviceClockGetAudioDevice(self->_clock, 0, deviceIDOut, 0);
  if (AudioDevice)
  {
    self->_audioDeviceID = deviceIDOut[0];
  }

  if (self->_audioSessionIsProxy)
  {
    [(BWAudioSourceNode *)AudioDevice start:v8, v9, v10, v11, v12, v13, v14];
    code = -12782;
    v38 = 1;
LABEL_125:
    startCopy6 = start;
    goto LABEL_49;
  }

  v104 = 280;
  audioSession = self->_audioSession;
  if (self->_configuresSession)
  {
    if (audioSession)
    {
      [(BWAudioSourceNode *)self _setAudioSessionAudioModeAndSelectMic:v125];
    }
  }

  else
  {
    if (audioSession)
    {
      v16 = dword_1ED844430 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      LODWORD(v123) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v123;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        LODWORD(time.value) = 136315138;
        *(&time.value + 4) = "[BWAudioSourceNode start:]";
        LODWORD(v103) = 12;
        p_time = &time;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v20 = self->_audioSession;
  if (!v20)
  {
LABEL_102:
    updated = [(BWAudioSourceNode *)self _updatePullFormatDescription];
    if (updated)
    {
      code = updated;
      v38 = 1;
LABEL_138:
      startCopy6 = start;
      goto LABEL_48;
    }

    generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__BWAudioSourceNode_start___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(generateSamplesDispatchQueue, block);
    self->_auRenderCount = 0;
    self->_silenceFramesGeneratedSinceLastAURenderProc = 0;
    self->_currentSilenceBuffer.sampleTime = 0.0;
    *&self->_currentSilenceBuffer.pts.timescale = 0u;
    *&self->_currentSilenceBuffer.abl = 0u;
    *&self->_currentSilenceBuffer.allocator = 0u;
    *&self->_currentSilenceBuffer.dataBytesCapacity = 0u;
    TimestampedAudioBufferListQueueTransfer(self->_activeBuffersQueue, self->_inactiveBuffersQueue);
    if (!self->_audioSession || self->_isAppAudioSession)
    {
LABEL_105:
      v66 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_generateSamplesDispatchQueue);
      self->_silenceTimer = v66;
      if (v66)
      {
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __27__BWAudioSourceNode_start___block_invoke_36;
        handler[3] = &unk_1E798F870;
        handler[4] = self;
        dispatch_source_set_event_handler(v66, handler);
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(self->_auOutputFormatDescription);
        CurrentHostTime = AudioGetCurrentHostTime();
        v76 = AudioConvertHostTimeToNanos(CurrentHostTime);
        CMTimeMake(&time, v76, 1000000000);
        HostTimeClock = CMClockGetHostTimeClock();
        CMSyncConvertTime(&v124, &time, HostTimeClock, *(&self->super.super.super.isa + v104));
        *&self->_currentSilenceBuffer.pts.value = *&v124.value;
        epoch = v124.epoch;
        self->_currentSilenceBuffer.pts.epoch = v124.epoch;
        mSampleRate = StreamBasicDescription->mSampleRate;
        *&time.value = *&self->_currentSilenceBuffer.pts.value;
        time.epoch = epoch;
        v6 = 1;
        CMTimeConvertScale(&v124, &time, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        self->_currentSilenceBuffer.pts = v124;
        silenceTimer = self->_silenceTimer;
        v81 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(silenceTimer, v81, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_resume(self->_silenceTimer);
        v82 = AudioOutputUnitStart(self->_audioUnit);
        if (!v82)
        {
          self->_streamStarted = 1;
          zoomHandlerQueue = self->_zoomHandlerQueue;
          v108 = MEMORY[0x1E69E9820];
          v109 = 3221225472;
          v110 = __27__BWAudioSourceNode_start___block_invoke_37;
          v111 = &unk_1E798F870;
          selfCopy = self;
          dispatch_sync(zoomHandlerQueue, &v108);
          v5 = MEMORY[0x1E695FF58];
          goto LABEL_70;
        }

        code = v82;
        if (self->_audioSession && !self->_isAppAudioSession)
        {
          v93 = MEMORY[0x1E695E110];
          [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
          [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:v93 value:?];
        }

        LODWORD(v123) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v84 = v123;
        if (os_log_type_enabled(v83, type[0]))
        {
          v85 = v84;
        }

        else
        {
          v85 = v84 & 0xFFFFFFFE;
        }

        startCopy6 = start;
        if (v85)
        {
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 1024;
          *(&time.flags + 2) = code;
          LODWORD(v103) = 18;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v38 = 0;
        goto LABEL_48;
      }

      [(BWAudioSourceNode *)0 start:v67, v68, v69, v70, v71, v72, v73];
      v38 = 0;
      code = -12780;
      goto LABEL_138;
    }

    v87 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?];
    if (v87)
    {
      code = v87;
      v89 = MEMORY[0x1E695FF58];
      LODWORD(v123) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v100 = v123;
      if (os_log_type_enabled(v99, type[0]))
      {
        v101 = v100;
      }

      else
      {
        v101 = v100 & 0xFFFFFFFE;
      }

      if (!v101)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v88 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?];
      if (!v88)
      {
        goto LABEL_105;
      }

      code = v88;
      v89 = MEMORY[0x1E695FF58];
      LODWORD(v123) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v91 = v123;
      if (os_log_type_enabled(v90, type[0]))
      {
        v92 = v91;
      }

      else
      {
        v92 = v91 & 0xFFFFFFFE;
      }

      if (!v92)
      {
        goto LABEL_145;
      }
    }

    LODWORD(time.value) = 136315394;
    *(&time.value + 4) = "[BWAudioSourceNode start:]";
    LOWORD(time.flags) = 1024;
    *(&time.flags + 2) = code;
    LODWORD(v103) = 18;
    p_time = &time;
    _os_log_send_and_compose_impl();
LABEL_145:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v38 = 0;
    v5 = v89;
    goto LABEL_125;
  }

  isActive = [(AVAudioSession *)v20 isActive];
  v22 = isActive;
  if (!self->_clientAudioClockDeviceUID)
  {
    if (isActive)
    {
      if (self->_audioSession && dword_1ED844430)
      {
        LODWORD(v123) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v60 = v123;
        if (os_log_type_enabled(v59, type[0]))
        {
          v61 = v60;
        }

        else
        {
          v61 = v60 & 0xFFFFFFFE;
        }

        if (v61)
        {
          v62 = self->_audioSession;
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v62;
          LODWORD(v103) = 22;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_101:
      [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
      goto LABEL_102;
    }

LABEL_32:
    v29 = self->_audioSession;
    if (v29)
    {
      if (dword_1ED844430)
      {
        LODWORD(v123) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v31 = v123;
        if (os_log_type_enabled(v30, type[0]))
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 & 0xFFFFFFFE;
        }

        if (v32)
        {
          v33 = self->_audioSession;
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = v33;
          LODWORD(v103) = 22;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v29 = self->_audioSession;
      }

      v123 = 0;
      [(AVAudioSession *)v29 setActive:1 error:&v123, p_time, v103, 280];
      code = [v123 code];
      if (code)
      {
        LODWORD(v123) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v35 = v123;
        if (os_log_type_enabled(v34, type[0]))
        {
          v36 = v35;
        }

        else
        {
          v36 = v35 & 0xFFFFFFFE;
        }

        if (v36)
        {
          LODWORD(time.value) = 136315394;
          *(&time.value + 4) = "[BWAudioSourceNode start:]";
          LOWORD(time.flags) = 1024;
          *(&time.flags + 2) = code;
          LODWORD(v103) = 18;
          p_time = &time;
          _os_log_send_and_compose_impl();
        }

        startCopy6 = start;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_47;
      }

      if (!self->_isConfiguredForContinuityCapture)
      {
        v115[0] = @"camera wind suppression";
        v116[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_windNoiseRemovalEnabled];
        v115[1] = @"camera real time dynamics";
        v116[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:!self->_cinematicVideoCaptureEnabled];
        v115[2] = @"camera capture is audio only";
        v116[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_isAudioOnlyRecordingSession];
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:3];
        if ([v55 count])
        {
          if (dword_1ED844430)
          {
            *type = 0;
            v121 = OS_LOG_TYPE_DEFAULT;
            v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v57 = *type;
            if (os_log_type_enabled(v56, v121))
            {
              v58 = v57;
            }

            else
            {
              v58 = v57 & 0xFFFFFFFE;
            }

            if (v58)
            {
              LODWORD(time.value) = 136315394;
              *(&time.value + 4) = "[BWAudioSourceNode start:]";
              LOWORD(time.flags) = 2112;
              *(&time.flags + 2) = v55;
              LODWORD(v103) = 22;
              p_time = &time;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v63 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:v55 value:?];
          if (v63)
          {
            code = v63;
            [(BWAudioSourceNode *)v63 start:?];
            startCopy6 = start;
LABEL_47:
            v38 = 1;
LABEL_48:
            v5 = MEMORY[0x1E695FF58];
            goto LABEL_49;
          }
        }
      }
    }

    self->_didBeginInterruption = 1;
    goto LABEL_101;
  }

  v123 = 0;
  v23 = [(AVAudioSession *)self->_audioSession setActive:0 error:&v123];
  code = [v123 code];
  if (!code && v23)
  {
    v25 = [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:self->_clientAudioClockDeviceUID value:?];
    if (v25)
    {
      code = v25;
      LODWORD(p_time) = v25;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_time, v3, 0x118, start, deviceIDOut[0], v108, v109, v110);
      *type = 0;
      v121 = OS_LOG_TYPE_DEFAULT;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v27 = *type;
      if (os_log_type_enabled(v26, v121))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        LODWORD(time.value) = 136315394;
        *(&time.value + 4) = "[BWAudioSourceNode start:]";
        LOWORD(time.flags) = 1024;
        *(&time.flags + 2) = code;
        LODWORD(v103) = 18;
        p_time = &time;
        _os_log_send_and_compose_impl();
      }

      startCopy6 = v106;
      v38 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v94 = MEMORY[0x1E695FF58];
  *type = 0;
  v121 = OS_LOG_TYPE_DEFAULT;
  v95 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v96 = *type;
  if (os_log_type_enabled(v95, v121))
  {
    v97 = v96;
  }

  else
  {
    v97 = v96 & 0xFFFFFFFE;
  }

  if (v97)
  {
    v98 = @"NO";
    *(&time.value + 4) = "[BWAudioSourceNode start:]";
    LOWORD(time.flags) = 2112;
    LODWORD(time.value) = 136315906;
    if (v22)
    {
      v98 = @"YES";
    }

    *(&time.flags + 2) = v98;
    HIWORD(time.epoch) = 1024;
    v118 = v23;
    v119 = 1024;
    v120 = code;
    LODWORD(v103) = 34;
    p_time = &time;
    _os_log_send_and_compose_impl();
  }

  startCopy6 = start;
  v38 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v6 = 1;
  v5 = v94;
  if (!code)
  {
    goto LABEL_69;
  }

LABEL_49:
  AudioUnitUninitialize(self->_audioUnit);
  if (self->_didBeginInterruption)
  {
    self->_didBeginInterruption = 0;
    v39 = self->_audioSession;
    if (v39)
    {
      *deviceIDOut = 0;
      [(AVAudioSession *)v39 setActive:0 error:deviceIDOut];
      if (*deviceIDOut)
      {
        v40 = v5;
        *type = 0;
        v121 = OS_LOG_TYPE_DEFAULT;
        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v42 = *type;
        if (os_log_type_enabled(v41, v121))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (!v43)
        {
          goto LABEL_64;
        }

        goto LABEL_56;
      }
    }
  }

  else if (v125[0] == 1)
  {
    [(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
    v44 = self->_audioSession;
    if (v44)
    {
      *deviceIDOut = 0;
      [(AVAudioSession *)v44 setActive:0 error:deviceIDOut];
      if (*deviceIDOut)
      {
        v40 = v5;
        *type = 0;
        v121 = OS_LOG_TYPE_DEFAULT;
        v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v46 = *type;
        if (os_log_type_enabled(v45, v121))
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 & 0xFFFFFFFE;
        }

        if (!v47)
        {
          goto LABEL_64;
        }

LABEL_56:
        LODWORD(time.value) = 136315394;
        *(&time.value + 4) = "[BWAudioSourceNode start:]";
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = *deviceIDOut;
        LODWORD(v103) = 22;
        p_time = &time;
        _os_log_send_and_compose_impl();
LABEL_64:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v40;
      }
    }
  }

  if (!startCopy6)
  {
    v6 = 0;
    if (!v38)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v6 = 0;
  *startCopy6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:code userInfo:0];
  if (v38)
  {
LABEL_69:
    [(BWAudioSourceNode *)self makeOutputsLiveIfNeeded:p_time];
  }

LABEL_70:
  os_unfair_lock_lock(&self->_startGroupLock);
  startGroup = self->_startGroup;
  os_unfair_lock_unlock(&self->_startGroupLock);
  if (startGroup)
  {
    [(BWAudioSourceNode *)self _signalAndClearStartGroup];
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    deviceIDOut[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v51 = deviceIDOut[0];
    if (os_log_type_enabled(v50, type[0]))
    {
      v52 = v51;
    }

    else
    {
      v52 = v51 & 0xFFFFFFFE;
    }

    if (v52)
    {
      LODWORD(time.value) = 136315138;
      *(&time.value + 4) = "[BWAudioSourceNode start:]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v124.value) = 0;
    v53 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v53, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 626, @"LastShownDate:BWAudioSourceNode.m:626", @"LastShownBuild:BWAudioSourceNode.m:626", 0);
    free(v53);
  }

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

void __27__BWAudioSourceNode_start___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 128;
  v4 = -3;
  do
  {
    v5 = *(*(v1 + 32) + v3);
    if (v5)
    {
      if ([v5 liveFormat])
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v1 = a1;
        [*(*(a1 + 32) + v3) format];
        [*(*(a1 + 32) + v3) liveFormat];
        v7 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 485, @"LastShownDate:BWAudioSourceNode.m:485", @"LastShownBuild:BWAudioSourceNode.m:485", 0);
        free(v7);
      }

      else
      {
        [*(*(v1 + 32) + v3) makeConfiguredFormatLive];
      }
    }

    ++v2;
    v3 += 8;
  }

  while (!__CFADD__(v4++, 1));
}

void __27__BWAudioSourceNode_start___block_invoke_37(uint64_t a1)
{
  *(*(a1 + 32) + 624) = FigGetUpTimeNanoseconds();
  v2 = *(a1 + 32);

  [(BWAudioSourceNode *)v2 _updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:?];
}

- (void)makeOutputsLiveIfNeeded
{
  generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BWAudioSourceNode_makeOutputsLiveIfNeeded__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(generateSamplesDispatchQueue, block);
}

void *__44__BWAudioSourceNode_makeOutputsLiveIfNeeded__block_invoke(uint64_t a1)
{
  v2 = 128;
  v3 = 3;
  do
  {
    result = *(*(a1 + 32) + v2);
    if (result)
    {
      result = [result liveFormat];
      if (!result)
      {
        result = [*(*(a1 + 32) + v2) makeConfiguredFormatLive];
      }
    }

    v2 += 8;
    --v3;
  }

  while (v3);
  return result;
}

- (BOOL)stop:(id *)stop
{
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  streamStarted = self->_streamStarted;
  self->_streamStarted = 0;
  silenceTimer = self->_silenceTimer;
  if (silenceTimer)
  {
    dispatch_source_cancel(silenceTimer);
  }

  generateSamplesDispatchQueue = self->_generateSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__BWAudioSourceNode_stop___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(generateSamplesDispatchQueue, block);
  if (streamStarted)
  {
    AudioOutputUnitStop(self->_audioUnit);
    AudioUnitUninitialize(self->_audioUnit);
    if (self->_audioSession)
    {
      if (self->_clientAudioClockDeviceUID)
      {
        [BWAudioSourceNode stop:?];
      }

      if (!self->_isAppAudioSession)
      {
        [BWAudioSourceNode stop:?];
      }
    }

    self->_nextExpectedHostTime = 0;
    v8 = MEMORY[0x1E6960C70];
    v9 = *(MEMORY[0x1E6960C70] + 16);
    self->_nextExpectedSampleTime.epoch = v9;
    v10 = *v8;
    *&self->_nextExpectedSampleTime.value = *v8;
    *&self->_prevPTS.value = v10;
    self->_prevPTS.epoch = v9;
    if (self->_didBeginInterruption && !self->_keepAudioSessionActiveOnStop)
    {
      audioSession = self->_audioSession;
      if (audioSession)
      {
        if (self->_doEndInterruption || self->_livePhotoCaptureEnabled || self->_mixWithOthersEnabled)
        {
          v15 = 0;
          [(AVAudioSession *)audioSession setActive:0 error:&v15];
          self->_didBeginInterruption = 0;
        }
      }
    }
  }

  zoomHandlerQueue = self->_zoomHandlerQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __26__BWAudioSourceNode_stop___block_invoke_2;
  v14[3] = &unk_1E798F870;
  v14[4] = self;
  dispatch_sync(zoomHandlerQueue, v14);
  if (!self->_stopSourceAsynchronously)
  {
    dispatch_sync(self->_generateSamplesDispatchQueue, &__block_literal_global_106);
  }

  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return 1;
}

void __26__BWAudioSourceNode_stop___block_invoke(uint64_t a1)
{
  v2 = 128;
  v3 = 3;
  do
  {
    v4 = *(*(a1 + 32) + v2);
    if ([v4 liveFormat])
    {
      [v4 markEndOfLiveOutput];
    }

    v2 += 8;
    --v3;
  }

  while (v3);
  *(*(a1 + 32) + 449) = 1;
  v5 = *(*(a1 + 32) + 480);
  if (v5)
  {

    *(*(a1 + 32) + 480) = 0;
  }
}

void __26__BWAudioSourceNode_stop___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 632);
  if (v2)
  {
    dispatch_source_cancel(v2);

    *(*(a1 + 32) + 632) = 0;
  }
}

+ (id)audioSourceNodeWithAttributes:(id)attributes sessionPreset:(id)preset clock:(OpaqueCMClock *)clock doConfigureAudio:(BOOL)audio doMixWithOthers:(BOOL)others doAllowHQBluetoothRecording:(BOOL)recording audioSession:(id)session isAppAudioSession:(BOOL)self0 doEndInterruption:(BOOL)self1 audioSessionIsProxy:(BOOL)self2 audioIsPlayingToBuiltinSpeaker:(BOOL)self3 audioSessionActivatedByBWGraph:(BOOL)self4 clientAuditToken:(id *)self5 clientSDKVersionToken:(unint64_t)self6 clientOSVersionSupportsDecoupledIO:(BOOL)self7 clientAudioClockDeviceUID:(id)self8 preferredIOBufferDuration:(id)self9 audioCaptureConnectionConfigurations:(id)configurations isConfiguredForContinuityCapture:(BOOL)capture isAudioOnlyRecordingSession:(BOOL)recordingSession remoteIOOutputFormat:(id)format outErr:(int *)err
{
  v24 = [BWAudioSourceNode alloc];
  v25 = *&token->var0[4];
  v34[0] = *token->var0;
  v34[1] = v25;
  v26 = [(BWAudioSourceNode *)v24 _initWithAttributes:attributes sessionPreset:preset clock:clock doConfigureAudio:audio doMixWithOthers:others doAllowHQBluetoothRecording:recording audioSession:session isAppAudioSession:audioSession doEndInterruption:interruption audioSessionIsProxy:proxy audioIsPlayingToBuiltinSpeaker:speaker audioSessionActivatedByBWGraph:graph clientAuditToken:v34 clientSDKVersionToken:versionToken clientOSVersionSupportsDecoupledIO:o clientAudioClockDeviceUID:d preferredIOBufferDuration:duration audioCaptureConnectionConfigurations:configurations isConfiguredForContinuityCapture:capture isAudioOnlyRecordingSession:recordingSession remoteIOOutputFormat:format outErr:err];

  return v26;
}

- (void)setLevelMeteringEnabled:(BOOL)enabled
{
  self->_levelMeteringEnabled = enabled;
  inData = enabled;
  if (AudioUnitSetProperty(self->_audioUnit, 0x766u, 1u, 1u, &inData, 4u))
  {
    self->_levelMeteringEnabled = 0;
  }
}

- (BOOL)mixWithOthersActive
{
  v7 = 0;
  v2 = [(BWAudioSourceNode *)self _copyAudioSessionMXProperty:&v7 err:?];
  v3 = v2;
  v4 = 0;
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v4 = [v2 unsignedIntValue] == 16;
  }

  return v4;
}

- (void)setAudioCaptureMode:(int)audioCaptureMode
{
  if (dword_1ED844430)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_audioCaptureMode = audioCaptureMode;
  if (audioCaptureMode == 5)
  {
    self->_silenceFramesFillingDisabled = 1;
    if (!dword_1ED844430)
    {
      return;
    }

    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    audioCaptureMode = self->_audioCaptureMode;
  }

  if (audioCaptureMode == 7)
  {
    self->_useDecoupledIO = 1;
  }
}

- (void)updateWithAudioSession:(id)session clientAuditToken:(id *)token
{
  if (self->_streamStarted)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v11[0]) = 0;
    v6 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v6, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 1175, @"LastShownDate:BWAudioSourceNode.m:1175", @"LastShownBuild:BWAudioSourceNode.m:1175", 0);
    free(v6);
  }

  else
  {
    v9 = *&token->var0[4];
    *self->_clientAuditToken.val = *token->var0;
    *&self->_clientAuditToken.val[4] = v9;
    v10 = *&token->var0[4];
    v11[0] = *token->var0;
    v11[1] = v10;
    self->_clientPID = FigCaptureGetPIDFromAuditToken(v11);

    self->_audioSession = session;
    self->_audioSessionIsProxy = 0;
    *&v11[0] = 0;
    if (FigAudioSessionClockCreateForAVAudioSession())
    {
      [BWAudioSourceNode updateWithAudioSession:clientAuditToken:];
    }

    else
    {
      [BWAudioSourceNode updateWithAudioSession:v11 clientAuditToken:?];
    }
  }
}

- (id)outputForMicSourcePosition:(int)position
{
  if (position > 2)
  {
    return 0;
  }

  else
  {
    return self->_outputsByMicSourcePosition[position];
  }
}

- (void)setStereoAudioCapturePairedCameraZoomFactor:(float)factor
{
  if (!self->_streamStarted)
  {
    self->_stereoAudioCapturePairedCameraZoomFactor = factor;
    self->_nextZoomFactor = factor;
  }
}

- (void)updateStereoAudioCapturePairedCameraBaseFieldOfView:(float)view zoomFactor:(float)factor
{
  os_unfair_lock_lock(&self->_zoomLock);
  stereoAudioCapturePairedCameraBaseFieldOfView = self->_stereoAudioCapturePairedCameraBaseFieldOfView;
  stereoAudioCapturePairedCameraZoomFactor = self->_stereoAudioCapturePairedCameraZoomFactor;
  if (stereoAudioCapturePairedCameraBaseFieldOfView == view && stereoAudioCapturePairedCameraZoomFactor == factor)
  {

    os_unfair_lock_unlock(&self->_zoomLock);
  }

  else
  {
    self->_stereoAudioCapturePairedCameraZoomFactor = (stereoAudioCapturePairedCameraBaseFieldOfView / view) * stereoAudioCapturePairedCameraZoomFactor;
    self->_stereoAudioCapturePairedCameraBaseFieldOfView = view;
    self->_nextZoomFactor = factor;
    os_unfair_lock_unlock(&self->_zoomLock);
    zoomHandlerQueue = self->_zoomHandlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__BWAudioSourceNode_updateStereoAudioCapturePairedCameraBaseFieldOfView_zoomFactor___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(zoomHandlerQueue, block);
  }
}

- (void)zoomCommandHandler:(id)handler didApplyZoomFactor:(float)factor zoomFactorWithoutFudge:(float)fudge targetZoomFactor:(float)zoomFactor rampComplete:(BOOL)complete rampCommandID:(int)d
{
  os_unfair_lock_lock(&self->_zoomLock);
  self->_nextZoomFactor = factor;
  os_unfair_lock_unlock(&self->_zoomLock);
  zoomHandlerQueue = self->_zoomHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__BWAudioSourceNode_zoomCommandHandler_didApplyZoomFactor_zoomFactorWithoutFudge_targetZoomFactor_rampComplete_rampCommandID___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(zoomHandlerQueue, block);
}

- (void)prepareToStartRecordingWithOrientation:(int)orientation recordingSettingsID:(int64_t)d prefersNoInterruptionsByRingtonesAndAlerts:(BOOL)alerts completionHandler:(id)handler
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  alertsCopy = alerts;
  self->_prefersNoInterruptionsByRingtonesAndAlerts = alerts;
  if (alerts || FigCFEqual())
  {
    [(BWAudioSourceNode *)self _setupPrepareToRecordStateWithFlags:?];
    audioSessionSetRecordingRelatedPropertyQueue = self->_audioSessionSetRecordingRelatedPropertyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke;
    block[3] = &unk_1E799B928;
    orientationCopy = orientation;
    block[4] = self;
    block[5] = handler;
    block[6] = v15;
    block[7] = d;
    v11 = block;
  }

  else
  {
    audioSessionSetRecordingRelatedPropertyQueue = self->_preparedToRecordHandlerCallbackQueue;
    if (!audioSessionSetRecordingRelatedPropertyQueue)
    {
      audioSessionSetRecordingRelatedPropertyQueue = FigDispatchQueueCreateWithPriority();
      self->_preparedToRecordHandlerCallbackQueue = audioSessionSetRecordingRelatedPropertyQueue;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_2;
    v12[3] = &unk_1E79903B8;
    v12[4] = handler;
    v12[5] = d;
    v11 = v12;
  }

  dispatch_async(audioSessionSetRecordingRelatedPropertyQueue, v11);
  _Block_object_dispose(v15, 8);
}

void __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke(uint64_t a1)
{
  v25 = **&MEMORY[0x1E6960CC0];
  if (FigCFEqual())
  {
    os_unfair_lock_lock((*(a1 + 32) + 652));
    v2 = *(*(a1 + 32) + 656);
    os_unfair_lock_unlock((*(a1 + 32) + 652));
    if (v2)
    {
      v3 = dispatch_time(0, 2000000000);
      v4 = dispatch_group_wait(v2, v3);

      if (v4)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        LODWORD(rhs.value) = 0;
        v24 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOWORD(v23.value) = 0;
        v7 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWAudioSourceNode.m", 3251, @"LastShownDate:BWAudioSourceNode.m:3251", @"LastShownBuild:BWAudioSourceNode.m:3251", 0);
        free(v7);
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(a1 + 32) + 160))
  {
    FigGetUpTimeNanoseconds();
    v23.value = 0;
    [*(*(a1 + 32) + 160) setPrefersNoInterruptionsFromSystemAlerts:1 error:&v23];
    [v23.value code];
    FigGetUpTimeNanoseconds();
  }

  if (FigCFEqual())
  {
    FigGetUpTimeNanoseconds();
    v11 = [MEMORY[0x1E695DF88] dataWithLength:16];
    v12 = [v11 mutableBytes];
    *v12 = *(a1 + 64);
    *(v12 + 8) = 0;
    [(BWAudioSourceNode *)*(a1 + 32) _setAudioSessionMXPropertyWithKey:v11 value:?];
    FigGetUpTimeNanoseconds();
    v13 = AudioConvertHostTimeToNanos(*([v11 mutableBytes] + 8));
    CMTimeMake(&v25, v13, 1000000000);
    HostTimeClock = CMClockGetHostTimeClock();
    v15 = *(*(a1 + 32) + 280);
    time = v25;
    CMSyncConvertTime(&v23, &time, HostTimeClock, v15);
    v25 = v23;
    v16 = *(*(a1 + 32) + 464);
    time = v23;
    CMTimeConvertScale(&v23, &time, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v25 = v23;
    v17 = *(a1 + 32) + 456;
    time = v23;
    v18 = *v17;
    rhs.epoch = *(v17 + 16);
    *&rhs.value = v18;
    CMTimeSubtract(&v23, &time, &rhs);
    v25 = v23;
  }

  v8 = *(*(a1 + 32) + 576);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_103;
  block[3] = &unk_1E799B900;
  v9 = *(a1 + 40);
  v20 = v25;
  v10 = *(a1 + 56);
  block[4] = v9;
  block[5] = v10;
  dispatch_async(v8, block);
}

uint64_t __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_103(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return v3(v2, &v5, v1);
}

uint64_t __141__BWAudioSourceNode_prepareToStartRecordingWithOrientation_recordingSettingsID_prefersNoInterruptionsByRingtonesAndAlerts_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v5 = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  return v3(v2, &v5, v1);
}

- (void)unprepareForRecording
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  prefersNoInterruptionsByRingtonesAndAlerts = self->_prefersNoInterruptionsByRingtonesAndAlerts;
  v3 = prefersNoInterruptionsByRingtonesAndAlerts;
  self->_prefersNoInterruptionsByRingtonesAndAlerts = 0;
  if (v3 || FigCFEqual())
  {
    audioSessionSetRecordingRelatedPropertyQueue = self->_audioSessionSetRecordingRelatedPropertyQueue;
    if (!audioSessionSetRecordingRelatedPropertyQueue)
    {
      audioSessionSetRecordingRelatedPropertyQueue = FigDispatchQueueCreateWithPriority();
      self->_audioSessionSetRecordingRelatedPropertyQueue = audioSessionSetRecordingRelatedPropertyQueue;
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__BWAudioSourceNode_unprepareForRecording__block_invoke;
    v5[3] = &unk_1E798FAF8;
    v5[4] = self;
    v5[5] = v6;
    dispatch_async(audioSessionSetRecordingRelatedPropertyQueue, v5);
  }

  _Block_object_dispose(v6, 8);
}

uint64_t __42__BWAudioSourceNode_unprepareForRecording__block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    FigGetUpTimeNanoseconds();
    v2 = *(*(a1 + 32) + 160);
    if (v2)
    {
      v5 = 0;
      [v2 setPrefersNoInterruptionsFromSystemAlerts:0 error:&v5];
      [v5 code];
    }

    FigGetUpTimeNanoseconds();
  }

  v3 = (a1 + 32);
  result = FigCFEqual();
  if (result)
  {
    return __42__BWAudioSourceNode_unprepareForRecording__block_invoke_cold_1(v3);
  }

  return result;
}

- (uint64_t)_setAudioSessionAudioModeAndSelectMic:(uint64_t)mic
{
  if (mic)
  {
    if (*(mic + 160))
    {
      [(BWAudioSourceNode *)mic _updateMXSessionAudioMode];
      v4 = [(BWAudioSourceNode *)mic _desiredSampleRate:?];
      [(BWAudioSourceNode *)mic _configureAudioSessionWithDefaultHardwareSampleRate:a2 didCallDoNotNotifyOtherSessionsOnNextInactive:v4];
    }

    [(BWAudioSourceNode *)mic _selectMicForCurrentAudioRoute];
  }

  return 0;
}

- (uint64_t)_setAudioSessionMXPropertyWithKey:(uint64_t)key value:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v9 = 0;
  [*(self + 160) setMXSessionProperty:a2 value:key error:&v9];
  code = [v9 code];
  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return code;
}

- (uint64_t)_updatePullFormatDescription
{
  if (result)
  {
    v1 = result;
    v341[0] = 0;
    v2 = *(result + 588);
    memset(__s2, 0, sizeof(__s2));
    v3 = *(result + 160);
    v339 = 0;
    if (v3)
    {
      [v3 inputSampleRate];
      v5 = v4;
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v1 + 296));
      if (!StreamBasicDescription)
      {
        v341[0] = -12710;
        OUTLINED_FUNCTION_19_29();
        OUTLINED_FUNCTION_18_28();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v293 = OUTLINED_FUNCTION_27_17(os_log_and_send_and_compose_flags_and_os_log_type, v286, v287, v288, v289, v290, v291, v292, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
        if (OUTLINED_FUNCTION_5_2(v293))
        {
          *__s1 = 136315138;
          *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
          OUTLINED_FUNCTION_3_89();
          OUTLINED_FUNCTION_4_80();
          OUTLINED_FUNCTION_124(v294, v295, v296, v297, v298);
        }

        goto LABEL_161;
      }

      v7 = *&StreamBasicDescription->mSampleRate;
      v8 = *&StreamBasicDescription->mBytesPerPacket;
      *&__s2[32] = *&StreamBasicDescription->mBitsPerChannel;
      *&__s2[16] = v8;
      *__s2 = v7;
      v9 = v5;
      if (*(v1 + 198) == 1)
      {
        v232 = [(BWAudioSourceNode *)v1 _desiredSampleRate:?];
        if (v5 <= v232)
        {
          v9 = v5;
        }

        else
        {
          v9 = v232;
        }
      }

      v10 = *__s2 != v9;
      if (*__s2 == v9)
      {
        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v34 = OUTLINED_FUNCTION_17_30(v26, v27, v28, v29, v30, v31, v32, v33, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
          if (OUTLINED_FUNCTION_6(v34))
          {
            *__s1 = 136315650;
            OUTLINED_FUNCTION_42_13();
            *&__s1[24] = v5;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_18_2(v35, v36, v37, v38, v39);
            OUTLINED_FUNCTION_32_12();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_17_8(v45, v46, v47, v48, v49);
        }
      }

      else
      {
        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = OUTLINED_FUNCTION_17_30(v11, v12, v13, v14, v15, v16, v17, v18, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
          if (OUTLINED_FUNCTION_6(v19))
          {
            *__s1 = 136315906;
            OUTLINED_FUNCTION_42_13();
            *&__s1[24] = v9;
            *&__s1[32] = v20;
            *&__s1[34] = v5;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_18_2(v21, v22, v23, v24, v25);
            OUTLINED_FUNCTION_32_12();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_17_8(v40, v41, v42, v43, v44);
        }

        *__s2 = v9;
      }

      if (*(v1 + 160))
      {
        v233 = [(BWAudioSourceNode *)v1 _copyAudioSessionMXProperty:v341 err:?];
        intValue = [v233 intValue];

        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v234 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v242 = OUTLINED_FUNCTION_58_14(v234, v235, v236, v237, v238, v239, v240, v241, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
          if (OUTLINED_FUNCTION_5_24(v242))
          {
            *__s1 = 136315394;
            *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
            *&__s1[12] = 1024;
            *&__s1[14] = intValue;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_40_16();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_13_0(v243, v244, v245, v246, v247);
        }

        if (v341[0])
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v248 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v256 = OUTLINED_FUNCTION_27_17(v248, v249, v250, v251, v252, v253, v254, v255, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
          if (OUTLINED_FUNCTION_5_2(v256))
          {
            *__s1 = 136315394;
            OUTLINED_FUNCTION_9_54();
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_124(v257, v258, v259, v260, v261);
          }

          goto LABEL_161;
        }
      }

      else
      {
        intValue = 0;
      }

      if (*&__s2[28] != intValue)
      {
        if (dword_1ED844430)
        {
          OUTLINED_FUNCTION_19_29();
          OUTLINED_FUNCTION_18_28();
          v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v59 = OUTLINED_FUNCTION_58_14(v51, v52, v53, v54, v55, v56, v57, v58, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
          if (OUTLINED_FUNCTION_5_24(v59))
          {
            *__s1 = 136315650;
            OUTLINED_FUNCTION_9_54();
            *&__s1[18] = v60;
            *&__s1[20] = intValue;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_80();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_40_16();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_13_0(v61, v62, v63, v64, v65);
        }

        *&__s2[24] = (*&__s2[32] >> 3) * intValue;
        *&__s2[28] = intValue;
        *&__s2[16] = *&__s2[24];
        v10 = 1;
      }

      if (FigCFEqual())
      {
        *__s1 = *__s2;
        *&__s1[16] = *&__s2[16];
        *&__s1[32] = *&__s2[32];
        if (*&__s2[28] != 3)
        {
          v341[0] = -12780;
          v313 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v321 = OUTLINED_FUNCTION_59_11(v313, v314, v315, v316, v317, v318, v319, v320, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, OS_LOG_TYPE_DEFAULT, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, 0);
          if (OUTLINED_FUNCTION_5_2(v321))
          {
            OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_124(v322, v323, v324, v325, v326);
          }

          goto LABEL_161;
        }

        *&__s2[12] |= 0x20u;
        *&__s2[16] = *&__s2[32] >> 3;
        *&__s2[20] = 1;
        *&__s2[24] = *&__s2[32] >> 3;
        v10 = memcmp(__s1, __s2, 0x28uLL) != 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0.0;
      v5 = 0.0;
    }

    if (*(v1 + 194) == 1)
    {
      *__s2 = 0x40E7700000000000;
      *&__s2[24] = 4;
      *&__s2[8] = xmmword_1AD0566D0;
      *&__s2[32] = 32;
      if (v2 == 5)
      {
        *&__s2[28] = 4;
        goto LABEL_33;
      }

      v10 = 1;
      *&__s2[28] = 1;
    }

    if (v2 != 2)
    {
      goto LABEL_34;
    }

    *__s2 = 0x40E7700000000000;
    *&__s2[8] = xmmword_1AD0566D0;
    *&__s2[24] = xmmword_1AD0566E0;
LABEL_33:
    v10 = 1;
LABEL_34:
    v66 = -346533888;
    if ([OUTLINED_FUNCTION_47_12() streamDescription])
    {
      streamDescription = [OUTLINED_FUNCTION_47_12() streamDescription];
      v2 = 0;
      v68 = *(streamDescription + 32);
      v69 = *(streamDescription + 16);
      *__s2 = *streamDescription;
      *&__s2[16] = v69;
      *&__s2[32] = v68;
    }

    else if (!v10)
    {
      v106 = 0;
      goto LABEL_59;
    }

    if (dword_1ED844430)
    {
      OUTLINED_FUNCTION_15_35();
      v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v78 = OUTLINED_FUNCTION_17_30(v70, v71, v72, v73, v74, v75, v76, v77, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
      if (OUTLINED_FUNCTION_6(v78))
      {
        *__s1 = 136316418;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 1024;
        *&__s1[14] = *&__s2[8];
        *&__s1[18] = 2048;
        *&__s1[20] = *__s2;
        *&__s1[28] = 1024;
        *&__s1[30] = *&__s2[12];
        *&__s1[34] = 1024;
        *&__s1[36] = *&__s2[28];
        *&__s1[40] = 1024;
        *&__s1[42] = *&__s2[32];
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_80();
        OUTLINED_FUNCTION_18_2(v79, v80, v81, v82, v83);
        OUTLINED_FUNCTION_32_12();
      }

      OUTLINED_FUNCTION_0_102();
      OUTLINED_FUNCTION_17_8(v84, v85, v86, v87, v88);
    }

    OUTLINED_FUNCTION_34_20();
    OUTLINED_FUNCTION_52_14();
    v341[0] = AudioUnitSetProperty(v89, v90, v91, v92, v93, 0x28u);
    if (v341[0])
    {
      return v341[0];
    }

    if (v2 == 2)
    {
      *__s1 = xmmword_1AD0566F0;
      *&__s1[16] = unk_1AD056700;
      OUTLINED_FUNCTION_34_20();
      OUTLINED_FUNCTION_52_14();
      v341[0] = AudioUnitSetProperty(v94, v95, v96, v97, v98, 0x20u);
      if (v341[0])
      {
        OUTLINED_FUNCTION_41_13();
        v299 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v307 = OUTLINED_FUNCTION_59_11(v299, v300, v301, v302, v303, v304, v305, v306, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, *v337);
        if (OUTLINED_FUNCTION_5_2(v307))
        {
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_4_80();
          OUTLINED_FUNCTION_124(v308, v309, v310, v311, v312);
        }

        goto LABEL_161;
      }

      if ((dword_1ED844430 & 0x20) != 0)
      {
        OUTLINED_FUNCTION_41_13();
        v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v100 = *v337;
        if (os_log_type_enabled(v99, type))
        {
          v101 = v100;
        }

        else
        {
          v101 = v100 & 0xFFFFFFFE;
        }

        if (v101)
        {
          *v331 = 136315394;
          *&v331[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
          *&v331[12] = 2112;
          *&v331[14] = BWStringFromAudioChannelLayout(__s1);
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_58_1(v101, v102, &v338, v103, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_0_102();
        OUTLINED_FUNCTION_17_8(v114, v115, v116, v117, v118);
      }

      v106 = 1;
      v2 = 2;
    }

    else if ([OUTLINED_FUNCTION_47_12() channelLayout] && (v104 = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_47_12(), "channelLayout"), "layout")) != 0)
    {
      v105 = v104;
      OUTLINED_FUNCTION_34_20();
      v106 = 1;
      OUTLINED_FUNCTION_52_14();
      v341[0] = AudioUnitSetProperty(v107, v108, v109, v110, v105, v111);
      if (v341[0])
      {
        OUTLINED_FUNCTION_19_29();
        OUTLINED_FUNCTION_18_28();
        v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v113 = os_log_type_enabled(v112, v337[0]);
        if (OUTLINED_FUNCTION_6(v113))
        {
          *__s1 = 136315394;
          OUTLINED_FUNCTION_9_54();
          OUTLINED_FUNCTION_3_89();
          OUTLINED_FUNCTION_4_80();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_32_12();
        }

        goto LABEL_131;
      }
    }

    else
    {
      v106 = 1;
    }

LABEL_59:
    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(*(v1 + 296), 0);
    v120 = OUTLINED_FUNCTION_34_20();
    v341[0] = AudioUnitInitialize(v120);
    if (v341[0])
    {
      OUTLINED_FUNCTION_15_35();
      v262 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v270 = OUTLINED_FUNCTION_27_17(v262, v263, v264, v265, v266, v267, v268, v269, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
      if (!OUTLINED_FUNCTION_5_2(v270))
      {
        goto LABEL_161;
      }

      *__s1 = 136315394;
      OUTLINED_FUNCTION_9_54();
      OUTLINED_FUNCTION_3_89();
      goto LABEL_151;
    }

    if (ChannelLayout)
    {
      v121 = v106;
    }

    else
    {
      v121 = 1;
    }

    if (v121 != 1)
    {
LABEL_124:
      v341[0] = [(BWAudioSourceNode *)v1 _getAudioDevicePullFrames:?];
      if (v341[0])
      {
        return v341[0];
      }

      v214 = v339;
      if (v9 != v5)
      {
        v214 = vcvtpd_u64_f64(v9 * v339 / v5);
        v339 = v214;
      }

      if (v214 != *(v1 + 304))
      {
        *(v1 + 304) = v214;
        v341[0] = [(BWAudioSourceNode *)v1 _generatePullBuffers];
        if (v341[0])
        {
          return v341[0];
        }
      }

      [OUTLINED_FUNCTION_24_20() sampleRate];
      v216 = v215;
      [OUTLINED_FUNCTION_24_20() inputLatency];
      CMTimeMake(&v338, (v216 * v217 + 0.5), *__s2);
      *(v1 + 456) = v338;
      CMTimeMake(&v338, 2, *__s2);
      *(v1 + 384) = v338;
      if (!dword_1ED844430)
      {
        return v341[0];
      }

      OUTLINED_FUNCTION_15_35();
      v218 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v226 = OUTLINED_FUNCTION_17_30(v218, v219, v220, v221, v222, v223, v224, v225, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type, *__s1, *&__s1[8], *&__s1[16], *&__s1[24], *&__s1[32], *&__s1[40], v335, v336, v337[0]);
      if (OUTLINED_FUNCTION_6(v226))
      {
        *__s1 = 136315394;
        OUTLINED_FUNCTION_9_54();
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_80();
        OUTLINED_FUNCTION_18_2(v227, v228, v229, v230, v231);
        OUTLINED_FUNCTION_32_12();
      }

LABEL_131:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v341[0];
    }

    *v337 = 0;
    HIDWORD(v336) = 0;
    if (*(v1 + 664))
    {
      v122 = 2;
    }

    else
    {
      v122 = 1;
    }

    v123 = OUTLINED_FUNCTION_34_20();
    v341[0] = AudioUnitGetPropertyInfo(v123, 0x13u, v122, 1u, &v336 + 1, 0);
    if (v341[0] || !HIDWORD(v336))
    {
      OUTLINED_FUNCTION_1_112();
      v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v132 = os_log_type_enabled(v131, type);
      if (OUTLINED_FUNCTION_6(v132))
      {
        *__s1 = 136315650;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 1024;
        *&__s1[14] = v341[0];
        *&__s1[18] = 1024;
        *&__s1[20] = HIDWORD(v336);
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_80();
        OUTLINED_FUNCTION_18_2(v133, v134, v135, v136, v137);
        OUTLINED_FUNCTION_32_12();
      }

      v126 = &unk_1ED844000;
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8(v138, v139, v140, v141, v142);
    }

    else
    {
      v124 = malloc_type_malloc(HIDWORD(v336), 0x74A508A4uLL);
      v125 = OUTLINED_FUNCTION_34_20();
      v341[0] = AudioUnitGetProperty(v125, 0x13u, v122, 1u, v124, &v336 + 1);
      v126 = &unk_1ED844000;
      if (!v341[0])
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_1_112();
      v127 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v66 = *v331;
      if (os_log_type_enabled(v127, type))
      {
        v128 = *v331;
      }

      else
      {
        v128 = *v331 & 0xFFFFFFFE;
      }

      if (v128)
      {
        v129 = v341[0];
        v130 = BWStringFromAudioChannelLayout(v124);
        *__s1 = 136315906;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 1024;
        *&__s1[14] = v129;
        *&__s1[18] = 2112;
        *&__s1[20] = v130;
        *&__s1[28] = 1024;
        *&__s1[30] = HIDWORD(v336);
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
        v66 = *v331;
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      HIDWORD(v336) = 0;
      if (!v124)
      {
LABEL_81:
        if (v126[268])
        {
          OUTLINED_FUNCTION_1_112();
          v143 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_26_21(v143, v144, v145, v146, v147, v148, v149, v150, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type);
          OUTLINED_FUNCTION_46();
          if (v66)
          {
            v151 = BWStringFromAudioChannelLayout(v124);
            *__s1 = 136315394;
            *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
            *&__s1[12] = 2112;
            *&__s1[14] = v151;
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_40_16();
          }

          OUTLINED_FUNCTION_0_102();
          OUTLINED_FUNCTION_13_0(v152, v153, v154, v155, v156);
        }

        if (v2 == 2 && v124)
        {
          if (!*v124 && v124[2] == 6 && v124[3] == 208 && v124[8] == 209 && v124[13] == 0x20000 && v124[18] == 131073 && v124[23] == 131074 && v124[28] == 131075)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_1_112();
          v157 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_26_21(v157, v158, v159, v160, v161, v162, v163, v164, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type);
          OUTLINED_FUNCTION_46();
          if (!v66)
          {
LABEL_102:
            OUTLINED_FUNCTION_1_4();
            OUTLINED_FUNCTION_13_0(v174, v175, v176, v177, v178);
LABEL_103:
            OUTLINED_FUNCTION_2_5();
            v341[0] = CMAudioFormatDescriptionCreate(v179, v180, v181, v182, v183, v184, 0, v185);
            free(v124);
            if (!v341[0])
            {
              if (v126[268])
              {
                OUTLINED_FUNCTION_1_112();
                v186 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v187 = os_log_type_enabled(v186, type);
                if (OUTLINED_FUNCTION_5_24(v187))
                {
                  *__s1 = 136315394;
                  *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
                  *&__s1[12] = 2112;
                  *&__s1[14] = *v337;
                  OUTLINED_FUNCTION_3_89();
                  OUTLINED_FUNCTION_4_80();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_40_16();
                }

                OUTLINED_FUNCTION_0_102();
                OUTLINED_FUNCTION_13_0(v188, v189, v190, v191, v192);
              }

              v193 = *(v1 + 296);
              v194 = *v337;
              *(v1 + 296) = *v337;
              if (v194)
              {
                CFRetain(v194);
              }

              if (v193)
              {
                CFRelease(v193);
              }

              if (*v337)
              {
                CFRelease(*v337);
              }

              type = 0;
              if (!FigCFEqual())
              {
                type = CFRetain(*(v1 + 296));
LABEL_121:
                v212 = 3;
                v213 = v1;
                do
                {
                  [*(v213 + 128) setFormat:+[BWAudioFormat formatWithAudioFormatDescription:](BWAudioFormat, "formatWithAudioFormatDescription:", type)];
                  v213 += 8;
                  --v212;
                }

                while (v212);
                CFRelease(type);
                goto LABEL_124;
              }

              *v331 = *__s2;
              *&v331[16] = *&__s2[16];
              v332 = *&__s2[32];
              *&v331[28] = 1;
              *&v331[12] = *&__s2[12] & 0xFFFFFFDF;
              v195 = malloc_type_calloc(0xCuLL, 1uLL, 0xC43F175AuLL);
              *v195 = 6553601;
              OUTLINED_FUNCTION_2_5();
              v203 = CMAudioFormatDescriptionCreate(v196, v197, v198, v199, v200, v201, 0, v202);
              v341[0] = v203;
              if (v126[268])
              {
                OUTLINED_FUNCTION_39_17();
                v204 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v205 = os_log_type_enabled(v204, BYTE3(v330));
                if (OUTLINED_FUNCTION_5_24(v205))
                {
                  *__s1 = 136315394;
                  *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
                  *&__s1[12] = 2112;
                  *&__s1[14] = 0;
                  OUTLINED_FUNCTION_3_89();
                  OUTLINED_FUNCTION_4_80();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_0_102();
                OUTLINED_FUNCTION_13_0(v207, v208, v209, v210, v211);
                v206 = v341[0];
              }

              else
              {
                v206 = v203;
              }

              free(v195);
              if (!v206)
              {
                goto LABEL_121;
              }

              OUTLINED_FUNCTION_39_17();
              v278 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v279 = os_log_type_enabled(v278, BYTE3(v330));
              if (OUTLINED_FUNCTION_5_2(v279))
              {
                *__s1 = 136316674;
                *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
                *&__s1[12] = 1024;
                *&__s1[14] = v341[0];
                *&__s1[18] = 1024;
                *&__s1[20] = *&v331[8];
                *&__s1[24] = 2048;
                *&__s1[26] = *v331;
                *&__s1[34] = 1024;
                *&__s1[36] = *&v331[12];
                *&__s1[40] = 1024;
                *&__s1[42] = 1;
                *&__s1[46] = 1024;
                LODWORD(v335) = v332;
                OUTLINED_FUNCTION_3_89();
                OUTLINED_FUNCTION_4_80();
                OUTLINED_FUNCTION_124(v280, v281, v282, v283, v284);
              }

LABEL_161:
              OUTLINED_FUNCTION_1_4();
              goto LABEL_131;
            }

            OUTLINED_FUNCTION_1_112();
            v271 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v272 = os_log_type_enabled(v271, type);
            if (!OUTLINED_FUNCTION_5_2(v272))
            {
              goto LABEL_161;
            }

            *__s1 = 136316674;
            *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
            *&__s1[12] = 1024;
            *&__s1[14] = v341[0];
            *&__s1[18] = 1024;
            *&__s1[20] = *&__s2[8];
            *&__s1[24] = 2048;
            *&__s1[26] = *__s2;
            *&__s1[34] = 1024;
            *&__s1[36] = *&__s2[12];
            *&__s1[40] = 1024;
            *&__s1[42] = *&__s2[28];
            *&__s1[46] = 1024;
            LODWORD(v335) = *&__s2[32];
            OUTLINED_FUNCTION_3_89();
LABEL_151:
            OUTLINED_FUNCTION_4_80();
            OUTLINED_FUNCTION_124(v273, v274, v275, v276, v277);
            goto LABEL_161;
          }
        }

        else
        {
          if (v2 != 1 || !v124 || v124[2] == 2)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_1_112();
          v165 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_26_21(v165, v166, v167, v168, v169, v170, v171, v172, v327, v328, v329, v330, *v331, *&v331[8], *&v331[16], *&v331[24], v332, type);
          OUTLINED_FUNCTION_46();
          if (!v66)
          {
            goto LABEL_102;
          }
        }

        v173 = BWStringFromAudioChannelLayout(v124);
        *__s1 = 136315394;
        *&__s1[4] = "[BWAudioSourceNode _updatePullFormatDescription]";
        *&__s1[12] = 2112;
        *&__s1[14] = v173;
        OUTLINED_FUNCTION_3_89();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_40_16();
        goto LABEL_102;
      }

      free(v124);
    }

    v124 = 0;
    goto LABEL_81;
  }

  return result;
}

- (void)_generateSilenceIfNeeded
{
  if (self && (*(self + 648) & 1) == 0 && *(self + 448) == 1 && (*(self + 449) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    if (*(self + 512) == atomic_fetch_add((self + 488), 0))
    {
      contexta = v2;
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(self + 296));
      memset(&v65, 0, sizeof(v65));
      OUTLINED_FUNCTION_30_13();
      CMTimeMake(&v65, v4, v5);
      memset(&v64, 0, sizeof(v64));
      CurrentHostTime = AudioGetCurrentHostTime();
      v7 = AudioConvertHostTimeToNanos(CurrentHostTime);
      CMTimeMake(&time, v7, 1000000000);
      HostTimeClock = CMClockGetHostTimeClock();
      CMSyncConvertTime(&v64, &time, HostTimeClock, *(self + 280));
      OUTLINED_FUNCTION_30_13();
      v62 = v64;
      CMTimeConvertScale(&time, &v62, v9, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v64 = time;
      *&v62.value = *&time.value;
      OUTLINED_FUNCTION_23_22();
      CMTimeSubtract(v12, v10, v11);
      v64 = time;
      memset(&time, 0, sizeof(time));
      *&v62.value = *(self + 528);
      OUTLINED_FUNCTION_23_22();
      CMTimeAdd(v15, v13, v14);
      if (OUTLINED_FUNCTION_29_17(time.epoch, v24, contexta, v32, v34, v36, v40, v44, v47, v50, v53, v57, v59, v60, time.value, *&time.timescale, v62.epoch) <= 0)
      {
        while (1)
        {
          *(self + 560) = *(self + 304);
          if ((StreamBasicDescription->mFormatFlags & 0x20) != 0 && *(self + 588) == 6)
          {
            break;
          }

          v19 = [(BWAudioSourceNode *)self _createSampleBufferForTimestampedAudioBufferList:0 audioBufferIndex:?];
          [*(self + 16) emitSampleBuffer:v19];
          NumSamples = CMSampleBufferGetNumSamples(v19);
          if (v19)
          {
            CFRelease(v19);
          }

LABEL_20:
          *(self + 496) += NumSamples;
          memset(&v62, 0, sizeof(v62));
          OUTLINED_FUNCTION_30_13();
          CMTimeMake(&v62, v20, v21);
          OUTLINED_FUNCTION_55_13(v62.epoch, v25, context, v62.value, *&v62.timescale, v37, v41, *(self + 528), *(self + 536), *(self + 544), v54, *v58);
          *(self + 528) = *v58;
          *(self + 544) = *&v58[16];
          OUTLINED_FUNCTION_49_11(self + 528);
          OUTLINED_FUNCTION_55_13(v65.epoch, v26, contextb, v65.value, *&v65.timescale, v38, v42, v45, v48, v51, v55, *v58);
          time = *v58;
          if (OUTLINED_FUNCTION_29_17(*&v58[16], v27, contextc, v33, v35, v39, v43, v46, v49, v52, v56, *v58, *&v58[16], v61, *v58, *&v58[8], v62.epoch) >= 1)
          {
            goto LABEL_21;
          }
        }

        v16 = 0;
        NumSamples = 0;
        while (1)
        {
          if (*(self + 128 + 8 * v16))
          {
            v18 = [(BWAudioSourceNode *)self _createSampleBufferForTimestampedAudioBufferList:v16 audioBufferIndex:?];
            [*(self + 128 + 8 * v16) emitSampleBuffer:v18];
            if (NumSamples)
            {
              if (!v18)
              {
                goto LABEL_11;
              }

LABEL_17:
              CFRelease(v18);
              goto LABEL_11;
            }

            NumSamples = CMSampleBufferGetNumSamples(v18);
            if (v18)
            {
              goto LABEL_17;
            }
          }

LABEL_11:
          if (++v16 == 3)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_21:
      v62 = v65;
      Seconds = CMTimeGetSeconds(&v62);
      v23 = dispatch_time(0, (Seconds * 1000000000.0));
      OUTLINED_FUNCTION_53_10(v23);
      v2 = context;
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:(uint64_t)timer
{
  if (timer)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v10);
    }

    if (BWAudioCaptureModeIsSpatial(*(timer + 588)))
    {
      OUTLINED_FUNCTION_33();
      if (v4)
      {
        if (!*(timer + 632))
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v6 = dispatch_time(0, 0);
          if (UpTimeNanoseconds >= *(timer + 624))
          {
            os_unfair_lock_lock((timer + 644));
            v9 = *(timer + 640);
            os_unfair_lock_unlock((timer + 644));
            [(BWAudioSourceNode *)timer _setVADCameraParametersWithDirection:UpTimeNanoseconds zoomFactor:v9 forTime:?];
            if (!a2)
            {
              return;
            }
          }

          else if (!a2)
          {
            return;
          }

          v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(timer + 608));
          *(timer + 632) = v7;
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __82__BWAudioSourceNode__updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer___block_invoke;
          handler[3] = &unk_1E798F870;
          handler[4] = timer;
          dispatch_source_set_event_handler(v7, handler);
          v8 = dispatch_time(v6, *(timer + 624) - UpTimeNanoseconds);
          OUTLINED_FUNCTION_53_10(v8);
          dispatch_resume(*(timer + 632));
        }
      }
    }
  }
}

- (void)_signalAndClearStartGroup
{
  if (self)
  {
    os_unfair_lock_lock((self + 652));
    v2 = *(self + 656);
    if (v2)
    {
      dispatch_group_leave(v2);

      *(self + 656) = 0;
    }

    os_unfair_lock_unlock((self + 652));
  }
}

- (char)_initWithAttributes:(uint64_t)attributes sessionPreset:(const void *)preset clock:(char)clock doConfigureAudio:(char)audio doMixWithOthers:(char)others doAllowHQBluetoothRecording:(void *)recording audioSession:(char)session isAppAudioSession:(char)self0 doEndInterruption:(char)self1 audioSessionIsProxy:(char)self2 audioIsPlayingToBuiltinSpeaker:(unsigned __int8)self3 audioSessionActivatedByBWGraph:(_OWORD *)self4 clientAuditToken:(uint64_t)self5 clientSDKVersionToken:(char)self6 clientOSVersionSupportsDecoupledIO:(void *)self7 clientAudioClockDeviceUID:(void *)self8 preferredIOBufferDuration:(void *)self9 audioCaptureConnectionConfigurations:(char)configurations isConfiguredForContinuityCapture:(char)capture isAudioOnlyRecordingSession:(void *)recordingSession remoteIOOutputFormat:(int *)format outErr:
{
  selfCopy = self;
  if (self)
  {
    if (preset)
    {
      v98.receiver = self;
      v98.super_class = BWAudioSourceNode;
      selfCopy = objc_msgSendSuper2(&v98, sel_init);
      if (!selfCopy)
      {
        return selfCopy;
      }

      v73 = v23;
      recordingSessionCopy3 = recordingSession;
      dCopy = d;
      oCopy = o;
      graphCopy = graph;
      HIDWORD(v74) = proxy;
      *(selfCopy + 35) = CFRetain(preset);
      *(selfCopy + 72) = 0;
      *(selfCopy + 113) = 1;
      *(selfCopy + 19) = [objc_msgSend(a2 objectForKeyedSubscript:{@"AudioSettingsForPresetsMap", "objectForKeyedSubscript:", attributes}];
      selfCopy[194] = configurations;
      selfCopy[648] = 0;
      if (selfCopy[648] == 1 && dword_1ED844430)
      {
        recordingSessionCopy2 = recordingSession;
        v97 = 0;
        v96 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        recordingSessionCopy3 = recordingSession;
      }

      speakerCopy2 = speaker;
      selfCopy[649] = proxy;
      if (recording)
      {
        LODWORD(recordingSessionCopy2) = capture;
        LODWORD(v70) = session;
        HIDWORD(v70) = interruption;
        HIDWORD(v74) = speaker;
        *(selfCopy + 20) = recording;
        selfCopy[198] = clock;
        selfCopy[199] = audio;
        selfCopy[200] = others;
        selfCopy[196] = audioSession;
        selfCopy[197] = session;
        selfCopy[192] = interruption;
        OUTLINED_FUNCTION_33();
        if (v36)
        {
          *(selfCopy + 21) = CFRetain(*MEMORY[0x1E69AF828]);
          v37 = [objc_msgSend(a2 objectForKeyedSubscript:{@"PrefersDecoupledIO", "BOOLValue"}];
          speakerCopy2 = speaker;
          if (v37)
          {
            if (versionToken)
            {
              OUTLINED_FUNCTION_33();
              if (v36)
              {
                if ((selfCopy[194] & 1) == 0)
                {
                  selfCopy[176] = 1;
                }
              }
            }
          }
        }
      }

      selfCopy[195] = speakerCopy2;
      v38 = graph[1];
      *(selfCopy + 216) = *graph;
      *(selfCopy + 232) = v38;
      v39 = *(selfCopy + 232);
      v95[0] = *(selfCopy + 216);
      v95[1] = v39;
      *(selfCopy + 62) = FigCaptureGetPIDFromAuditToken(v95);
      *(selfCopy + 32) = token;
      *(selfCopy + 33) = o;
      *(selfCopy + 34) = d;
      selfCopy[650] = capture;
      builtInMicrophoneRequiredSampleRate = recordingSessionCopy3;
      v48 = 0;
      *(selfCopy + 83) = builtInMicrophoneRequiredSampleRate;
      *(selfCopy + 80) = 1919512419;
      *(selfCopy + 26) = 0;
      do
      {
        builtInMicrophoneRequiredSampleRate = OUTLINED_FUNCTION_60_1(builtInMicrophoneRequiredSampleRate, v41, v42, v43, v44, v45, v46, v47, v67, v68, v69, v70, recordingSessionCopy2, v73, v74, graphCopy, oCopy, dCopy, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
        if (builtInMicrophoneRequiredSampleRate)
        {
          v49 = builtInMicrophoneRequiredSampleRate;
          v50 = MEMORY[0];
          while (2)
          {
            v51 = 0;
            do
            {
              if (MEMORY[0] != v50)
              {
                objc_enumerationMutation(duration);
              }

              v52 = *(8 * v51);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                isKindOfClass = [v52 builtInMicrophonePosition];
                if (v48 == isKindOfClass)
                {
                  v61 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:selfCopy];
                  *&selfCopy[8 * v48 + 128] = v61;
                  [selfCopy addOutput:v61];

                  builtInMicrophoneRequiredSampleRate = [v52 builtInMicrophoneRequiredSampleRate];
                  if (v62 > *(selfCopy + 26))
                  {
                    builtInMicrophoneRequiredSampleRate = [v52 builtInMicrophoneRequiredSampleRate];
                    *(selfCopy + 26) = v63;
                  }

                  goto LABEL_30;
                }
              }

              v51 = v51 + 1;
            }

            while (v49 != v51);
            builtInMicrophoneRequiredSampleRate = OUTLINED_FUNCTION_60_1(isKindOfClass, v54, v55, v56, v57, v58, v59, v60, v67, v68, v69, v70, recordingSessionCopy2, v73, v74, graphCopy, oCopy, dCopy, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
            v49 = builtInMicrophoneRequiredSampleRate;
            if (builtInMicrophoneRequiredSampleRate)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:
        ++v48;
      }

      while (v48 != 3);
      *(selfCopy + 55) = FigDispatchQueueCreateWithPriority();
      *(selfCopy + 76) = FigDispatchQueueCreateWithPriority();
      *(selfCopy + 161) = 0;
      *(selfCopy + 77) = 100000000;
      [selfCopy setSupportsLiveReconfiguration:1];
      [selfCopy setSupportsPrepareWhileRunning:1];
      _setupAudioUnit = [(BWAudioSourceNode *)selfCopy _setupAudioUnit];
      if (!_setupAudioUnit)
      {
        *(selfCopy + 163) = 0;
        v65 = dispatch_group_create();
        *(selfCopy + 82) = v65;
        dispatch_group_enter(v65);
        return selfCopy;
      }

      v66 = _setupAudioUnit;
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v67, v68, v69, v70, recordingSessionCopy2, v73, v74, graphCopy);
    }

    else
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v68, v69, v70, recordingSessionCopy2, v72, v74, v75);
      v66 = -12780;
    }

    if (format)
    {
      *format = v66;
    }

    return 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (self->_configuresSession && self->_audioSession)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E698D6D0] object:self->_audioSession];
  }

  MXSessionAudioMode = self->_MXSessionAudioMode;
  if (MXSessionAudioMode)
  {
    CFRelease(MXSessionAudioMode);
    self->_MXSessionAudioMode = 0;
  }

  audioUnit = self->_audioUnit;
  if (audioUnit)
  {
    AudioUnitUninitialize(audioUnit);
    AudioComponentInstanceDispose(self->_audioUnit);
    self->_audioUnit = 0;
  }

  renderProcErrorQueue = self->_renderProcErrorQueue;
  if (renderProcErrorQueue)
  {
    CFRelease(renderProcErrorQueue);
    self->_renderProcErrorQueue = 0;
  }

  TimestampedAudioBufferListQueueReleaseAndClear(&self->_inactiveBuffersQueue);
  TimestampedAudioBufferListQueueReleaseAndClear(&self->_activeBuffersQueue);
  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
    self->_clock = 0;
  }

  auOutputFormatDescription = self->_auOutputFormatDescription;
  if (auOutputFormatDescription)
  {
    CFRelease(auOutputFormatDescription);
    self->_auOutputFormatDescription = 0;
  }

  [(BWAudioSourceNode *)self _signalAndClearStartGroup];
  v9.receiver = self;
  v9.super_class = BWAudioSourceNode;
  [(BWNode *)&v9 dealloc];
}

- (id)_copyAudioSessionMXProperty:(unsigned int *)property err:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v11 = 0;
  v7 = [*(self + 160) getMXSessionProperty:a2 error:&v11];
  if (v11)
  {
    code = [v11 code];
  }

  else
  {
    code = 0;
  }

  v9 = v7;
  if (property)
  {
    *property = code;
  }

  OUTLINED_FUNCTION_18();
  if (v6)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v9;
}

- (NSArray)audioLevels
{
  OUTLINED_FUNCTION_50_14();
  AudioUnitGetPropertyInfo(v2, v3, v4, v5, v6, 0);
  free(0);
  return 0;
}

- (float)_setVADCameraParametersWithDirection:(uint64_t)direction zoomFactor:(float)factor forTime:
{
  if (result)
  {
    v7 = result;
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3(v15);
    }

    if ((*(v7 + 194) & 1) == 0)
    {
      if (factor < 1.0)
      {
        factor = 1.0;
      }

      if (a2 != -1 || factor != v7[150])
      {
        *&v8 = v7[149] / factor;
        v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
        if ((a2 & 0x80000000) != 0)
        {
          v10 = 0;
        }

        else
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInt:a2];
        }

        v11 = MEMORY[0x1E695DF20];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v7 + 592)];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v7 + 593) ^ 1u];
        v14 = [v11 dictionaryWithObjectsAndKeys:{v9, @"camera fov", v12, @"camera wind suppression", v13, @"camera real time dynamics", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(v7 + 650)), @"camera capture is audio only", v10, @"camera dir", 0}];
        result = [(BWAudioSourceNode *)v7 _setAudioSessionMXPropertyWithKey:v14 value:?];
        if (!result)
        {
          v7[150] = factor;
        }
      }

      *(v7 + 78) = *(v7 + 77) + direction;
    }
  }

  return result;
}

void __82__BWAudioSourceNode__updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 632) = 0;
  v2 = *(a1 + 32);

  [(BWAudioSourceNode *)v2 _updateStereoAudioCapturePairedCameraZoomFactorAndStartTimer:?];
}

- (double)_desiredSampleRate:(uint64_t)rate
{
  if (!rate)
  {
    return 0.0;
  }

  v3 = *(rate + 208);
  result = fmax(v3, 0.0);
  if (*(rate + 194))
  {
    result = 48000.0;
  }

  if (v3 > 0.0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(rate + 194);
  }

  if (result == 0.0)
  {
    result = FigCaptureSourceDefaultAudioSampleRateForClientSDKVersionToken(*(rate + 256));
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

- (uint64_t)_setAudioSessionBatchedMXProperties:(uint64_t)properties
{
  if (!properties)
  {
    return 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v35[0] = 0;
  [*(properties + 160) setMXProperties:a2 propertyErrors:v35];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35[0];
  v3 = [v35[0] countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        allKeys = [objc_msgSend(v8 allKeys];
        v10 = [objc_msgSend(v8 objectForKeyedSubscript:{allKeys), "integerValue"}];
        if (v10)
        {
          v29 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v12 = v29;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v14 = [a2 objectForKeyedSubscript:allKeys];
            v20 = 136315906;
            v21 = "[BWAudioSourceNode _setAudioSessionBatchedMXProperties:]";
            v22 = 2112;
            v23 = allKeys;
            v24 = 2112;
            v25 = v14;
            v26 = 1024;
            v27 = v10;
            LODWORD(v17) = 38;
            v16 = &v20;
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_1_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v5 = v10;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return v5;
}

- (uint64_t)_selectMicForCurrentAudioRoute
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  HIDWORD(v17) = 0;
  availableInputs = [*(v1 + 160) availableInputs];
  if ([availableInputs count])
  {
    v4 = [availableInputs objectAtIndexedSubscript:0];
    isEqualToString = objc_msgSend_isEqualToString_([v4 portType]);
    if (v4)
    {
      if (isEqualToString)
      {
        OUTLINED_FUNCTION_48_15();
        if (!FigCFEqual())
        {
          OUTLINED_FUNCTION_48_15();
          if (!FigCFEqual())
          {
            OUTLINED_FUNCTION_48_15();
            if (!FigCFEqual())
            {
              OUTLINED_FUNCTION_48_15();
              if (!FigCFEqual())
              {
                [(BWAudioSourceNode *)v1 _setAudioSessionMXPropertyWithKey:0 value:?];
                goto LABEL_25;
              }
            }
          }
        }

        v6 = [(BWAudioSourceNode *)v1 _copyAudioSessionMXProperty:&v17 + 1 err:?];
        bw_builtInMicRouteDictionary = [v6 bw_builtInMicRouteDictionary];
        if (bw_builtInMicRouteDictionary)
        {
          v8 = bw_builtInMicRouteDictionary;
          if (*(v1 + 144))
          {
            if ([v1 isAudioPlayingToBuiltinSpeaker])
            {
              v9 = 1651799149;
            }

            else
            {
              v9 = 1718775412;
            }

LABEL_19:
            v10 = [v8 bw_dataSourceDictionaryForDesiredMicOrientation:v9];
            if (v10)
            {
              v11 = v10;
              v12 = [v10 bw_optimalMicPolarPatternForAudioCaptureMode:*(v1 + 588)];
              v13 = [MEMORY[0x1E695DEC8] bw_selectedInputsArrayForBuiltInMicRouteDictionary:v8 dataSource:v11 polarPattern:v12];
              if (v13)
              {
                HIDWORD(v17) = [(BWAudioSourceNode *)v1 _setAudioSessionMXPropertyWithKey:v13 value:?];
                if (HIDWORD(v17))
                {
                  OUTLINED_FUNCTION_1_5();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, v20, v21);
                }
              }

              else
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, v20, v21);
                HIDWORD(v17) = -12783;
              }
            }

            goto LABEL_23;
          }

          if (*(v1 + 136))
          {
            v9 = 1650549611;
            goto LABEL_19;
          }
        }

LABEL_23:
        if (v6)
        {
          CFRelease(v6);
        }
      }
    }
  }

LABEL_25:
  if (*v2 == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return HIDWORD(v17);
}

- (uint64_t)_configureAudioSessionWithDefaultHardwareSampleRate:(double)rate didCallDoNotNotifyOtherSessionsOnNextInactive:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v10)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  v31 = 0;
  v6 = *(self + 176);
  [(BWAudioSourceNode *)self _deactivateAudioSessionIfNecessary:a2];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"PlayAndRecord" forKeyedSubscript:*MEMORY[0x1E69AFCC0]];
  [dictionary setObject:*(self + 168) forKeyedSubscript:*MEMORY[0x1E69AFCE8]];
  [dictionary setObject:@"Speaker" forKeyedSubscript:*MEMORY[0x1E69AFD70]];
  mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
  [objc_msgSend(mEMORY[0x1E69AED10] attributeForKey:{*MEMORY[0x1E69AEB30]), "count"}];
  if ((*(self + 584) & 1) != 0 || ((OUTLINED_FUNCTION_33(), v10) ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    [dictionary setObject:&unk_1F2246360 forKeyedSubscript:*MEMORY[0x1E69B0020]];
  }

  [(BWAudioSourceNode *)self _setAudioSessionBatchedMXProperties:dictionary];
  if (-[BWAudioSourceNode _setAudioSessionMXPropertyWithKey:value:](self, *MEMORY[0x1E69B02B8], [MEMORY[0x1E696AD98] numberWithBool:*(self + 200)]))
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_28;
  }

  if (v6 && ([OUTLINED_FUNCTION_24_20() preferDecoupledIO:1 error:&v31], !objc_msgSend(v31, "code")))
  {
    [OUTLINED_FUNCTION_24_20() setPreferredInputSampleRate:&v31 error:rate];
  }

  else
  {
    [OUTLINED_FUNCTION_24_20() setPreferredOutputSampleRate:&v31 error:rate];
  }

  [v31 code];
  [OUTLINED_FUNCTION_24_20() setAudioHardwareControlFlags:? error:?];
  if (![v31 code])
  {
    v11 = *(self + 272);
    if (!v11 || (v12 = *(self + 160), [v11 doubleValue], objc_msgSend(v12, "setPreferredIOBufferFrameSize:error:", (v13 * rate), &v31), !objc_msgSend(v31, "code")))
    {
      OUTLINED_FUNCTION_33();
      if (!v10)
      {
        goto LABEL_23;
      }

      mEMORY[0x1E69AED10]2 = [MEMORY[0x1E69AED10] sharedInstance];
      v15 = [objc_msgSend(self "graph")];
      [mEMORY[0x1E69AED10]2 setAttribute:v15 forKey:*MEMORY[0x1E69AE9E0] error:&v31];
      if (![v31 code])
      {
        if ([(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?])
        {
LABEL_45:
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_28;
        }

LABEL_23:
        if (![(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:0 value:?])
        {
          if (BWAudioCaptureModeIsSpatial(*(self + 588)))
          {
            v16 = *(self + 144) == 0;
            os_unfair_lock_lock((self + 644));
            v17 = *(self + 640);
            os_unfair_lock_unlock((self + 644));
            v18 = *(self + 608);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __119__BWAudioSourceNode__configureAudioSessionWithDefaultHardwareSampleRate_didCallDoNotNotifyOtherSessionsOnNextInactive___block_invoke;
            block[3] = &unk_1E7990178;
            block[4] = self;
            v29 = v16;
            v30 = v17;
            dispatch_async(v18, block);
          }

          else if (FigCFEqual() && (*(self + 194) & 1) == 0)
          {
            v20 = *(self + 128);
            v10 = v20 == 0;
            v21 = v20 != 0;
            if (v10)
            {
              v22 = 2;
            }

            else
            {
              v22 = 3;
            }

            if (*(self + 136))
            {
              v21 = v22;
            }

            if (*(self + 144))
            {
              v23 = v21 | 4u;
            }

            else
            {
              v23 = v21;
            }

            v26[0] = @"camera mics";
            v27[0] = [MEMORY[0x1E696AD98] numberWithInt:v23];
            v26[1] = @"camera wind suppression";
            v27[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(self + 592)];
            v26[2] = @"camera real time dynamics";
            v27[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(self + 593) ^ 1u];
            v26[3] = @"camera capture is audio only";
            v27[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(self + 650)];
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
            if ([(BWAudioSourceNode *)self _setAudioSessionMXPropertyWithKey:v24 value:?])
            {
              OUTLINED_FUNCTION_1_5();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            }
          }

          goto LABEL_28;
        }

        goto LABEL_45;
      }
    }
  }

  OUTLINED_FUNCTION_0_8();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25);
LABEL_28:
  OUTLINED_FUNCTION_18();
  if (v10)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return 0;
}

- (uint64_t)_deactivateAudioSessionIfNecessary:(uint64_t)necessary
{
  if (necessary)
  {
    if ([*(necessary + 160) isActive])
    {
      category = [OUTLINED_FUNCTION_24_20() category];
      if ((objc_msgSend_isEqualToString_(category) & 1) == 0)
      {
        if ((*(necessary + 196) & 1) == 0)
        {
          [(BWAudioSourceNode *)necessary _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E118] value:?];
          *a2 = 1;
        }

        v6 = 0;
        [OUTLINED_FUNCTION_24_20() setActive:0 error:&v6];
      }
    }
  }

  return 0;
}

float *__119__BWAudioSourceNode__configureAudioSessionWithDefaultHardwareSampleRate_didCallDoNotNotifyOtherSessionsOnNextInactive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();

  return [(BWAudioSourceNode *)v1 _setVADCameraParametersWithDirection:v2 zoomFactor:UpTimeNanoseconds forTime:v3];
}

- (void)_updateMXSessionAudioMode
{
  if (self)
  {
    v1 = *(self + 588);
    if (v1 == 6)
    {
      v2 = MEMORY[0x1E69AF8B0];
    }

    else if (*(self + 584) == 1)
    {
      v2 = MEMORY[0x1E69AF870];
    }

    else if (v1 == 2)
    {
      v2 = MEMORY[0x1E69AF918];
    }

    else if (v1 == 1)
    {
      v2 = MEMORY[0x1E69AF920];
    }

    else if (*(self + 594) == 1)
    {
      v2 = MEMORY[0x1E69AF978];
    }

    else if ((v1 - 3) < 2)
    {
      v2 = MEMORY[0x1E69AF9B0];
    }

    else if (v1 == 5)
    {
      v2 = MEMORY[0x1E69AF9B8];
    }

    else if (v1 == 7)
    {
      v2 = MEMORY[0x1E69AF890];
    }

    else
    {
      v2 = MEMORY[0x1E69AF828];
    }

    v3 = *v2;
    v4 = *(self + 168);
    *(self + 168) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }
}

- (uint64_t)_getAudioDevicePullFrames:(uint64_t)frames
{
  if (!frames)
  {
    return 0;
  }

  v3 = 0;
  v15 = 0;
  if (a2)
  {
    v5 = [(BWAudioSourceNode *)frames _copyAudioSessionMXProperty:&v15 err:?];
    v6 = v5;
    if (v15)
    {
      v14 = 0;
      v13 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_8(v8, v9, v10, v11, v12);
    }

    else
    {
      *a2 = [v5 intValue];
    }

    return v15;
  }

  return v3;
}

- (uint64_t)_generatePullBuffers
{
  if (!self)
  {
    return 0;
  }

  TimestampedAudioBufferListQueueReleaseAndClear((self + 336));
  TimestampedAudioBufferListQueueReleaseAndClear((self + 344));
  v2 = *(self + 328);
  if (v2)
  {
    CFRelease(v2);
    *(self + 328) = 0;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(self + 296));
  if (StreamBasicDescription->mSampleRate <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(self + 304);
    if (v4)
    {
      v4 = (StreamBasicDescription->mSampleRate / v4);
    }
  }

  if (v4 <= 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = OUTLINED_FUNCTION_46_16(336);
  if (v7)
  {
    return v7;
  }

  v7 = OUTLINED_FUNCTION_46_16(344);
  if (v7)
  {
    return v7;
  }

  v7 = OUTLINED_FUNCTION_46_16(328);
  if (v7)
  {
    return v7;
  }

  OUTLINED_FUNCTION_100();
  AudioUnitGetProperty(v8, v9, v10, v11, v12, v13);
  mFormatFlags = StreamBasicDescription->mFormatFlags;
  if ((mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
  }

  else
  {
    mChannelsPerFrame = 1;
  }

  if ((mFormatFlags & 0x20) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = StreamBasicDescription->mChannelsPerFrame;
  }

  while (1)
  {
    v17 = TimestampedAudioBufferListNew(v6, mChannelsPerFrame, v16, StreamBasicDescription->mBytesPerFrame << 12);
    v18 = CMSimpleQueueEnqueue(*(self + 336), v17);
    if (v18)
    {
      break;
    }

    if (!--v5)
    {
      v19 = 0;
      *(self + 352) = 0;
      v20 = *MEMORY[0x1E6960C70];
      v21 = *(MEMORY[0x1E6960C70] + 16);
      *(self + 376) = v21;
      *(self + 360) = v20;
      *(self + 408) = v20;
      *(self + 424) = v21;
      return v19;
    }
  }

  v19 = v18;
  TimestampedAudioBufferListDispose(v17);
  return v19;
}

- (id)_createSampleBufferForTimestampedAudioBufferList:(int)list audioBufferIndex:
{
  if (result)
  {
    v5 = result;
    v6 = [objc_msgSend(result[2] "format")];
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v6);
    v8 = StreamBasicDescription;
    mBytesPerFrame = StreamBasicDescription->mBytesPerFrame;
    v10 = mBytesPerFrame * *(a2 + 56);
    v11 = *(a2 + 20) * mBytesPerFrame;
    if (StreamBasicDescription->mChannelsPerFrame >= 2 && (StreamBasicDescription->mFormatFlags & 0x20) != 0 && [-[opaqueCMSampleBuffer outputs](v5 "outputs")] == 1)
    {
      mChannelsPerFrame = v8->mChannelsPerFrame;
      v10 = mChannelsPerFrame * v10;
      v11 = mChannelsPerFrame * v11;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v46 = 0;
    blockBufferOut = 0;
    dataPointerOut = 0;
    memset(&v44, 0, sizeof(v44));
    mBytesPerPacket = 0;
    v14 = *MEMORY[0x1E695E480];
    v15 = 1;
    OUTLINED_FUNCTION_2_5();
    if (!CMBlockBufferCreateWithMemoryBlock(v16, v17, v18, v19, v20, v21, v22, 1u, &blockBufferOut) && !CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      v39 = v5;
      if (v10)
      {
        v23 = v13;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        bzero(dataPointerOut, v10);
      }

      formatDescription = v6;
      if (v11)
      {
        if (*(v5 + 595) == 1 && v8->mChannelsPerFrame == 2 && (v8->mFormatFlags & 0x20) == 0)
        {
          v24 = 0;
          v25 = v8->mBytesPerFrame >> 1;
          v26 = *(*(a2 + 48) + 16 * list + 16);
          v27 = &dataPointerOut[v10];
          do
          {
            memcpy(&v27[v25], v26, v25);
            memcpy(v27, &v26[v25], v25);
            v28 = v8->mBytesPerFrame;
            v26 += v28;
            v27 += v28;
            v24 += v28;
          }

          while (v24 < v11);
        }

        else if (v13)
        {
          if (**(a2 + 48))
          {
            v29 = 0;
            v30 = v8->mChannelsPerFrame;
            v31 = v10 / v30;
            v32 = v11 / v30;
            v33 = v32 + v10 / v30;
            v34 = 16;
            do
            {
              v35 = &dataPointerOut[v33 * v29];
              bzero(v35, v31);
              memcpy(&v35[v31], *(*(a2 + 48) + v34), v32);
              ++v29;
              v34 += 16;
            }

            while (v29 < **(a2 + 48));
          }
        }

        else
        {
          memcpy(&dataPointerOut[v10], *(*(a2 + 48) + 16 * list + 16), v11);
        }
      }

      mBytesPerPacket = v8->mBytesPerPacket;
      if (v13)
      {
        sampleSizeArray = 0;
      }

      else
      {
        sampleSizeArray = &mBytesPerPacket;
      }

      CMTimeMake(&v44.duration, 1, v8->mSampleRate);
      lhs = *(a2 + 24);
      OUTLINED_FUNCTION_49_11(v39 + 456);
      CMTimeSubtract(&v42, &lhs, &rhs);
      v44.presentationTimeStamp = v42;
      v44.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      v15 = CMSampleBufferCreate(v14, blockBufferOut, 1u, 0, 0, formatDescription, (*(a2 + 56) + *(a2 + 20)), 1, &v44, v13 ^ 1u, sampleSizeArray, &v46) != 0;
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    result = v46;
    if (v46)
    {
      v37 = v15;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      CFRelease(v46);
      return 0;
    }
  }

  return result;
}

- (void)_generateSamples
{
  if (self && (*(self + 449) & 1) == 0)
  {
    context = objc_autoreleasePoolPush();
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(self + 296));
    mFormatFlags = StreamBasicDescription->mFormatFlags;
    v5 = *(self + 496);
    *(self + 496) = 0;
      ;
    }

    v6 = CMSimpleQueueDequeue(*(self + 344));
    if (v6)
    {
      v8 = v6;
      v9 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
      *&v7 = 136315394;
      v31 = v7;
      do
      {
        v37 = *(v8 + 1);
        if (v8[14])
        {
          OUTLINED_FUNCTION_30_13();
          CMTimeMake(&rhs, v10, v11);
          lhs = *(v8 + 1);
          CMTimeAdd(&v37, &lhs, &rhs);
        }

        if (v5)
        {
          v12 = v8[14];
          if (v12)
          {
            v13 = v12 - v5;
            if (v13 < 0)
            {
              v35 = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              if (OUTLINED_FUNCTION_54_10(os_log_and_send_and_compose_flags_and_os_log_type))
              {
                v15 = v1;
              }

              else
              {
                v15 = v1 & 0xFFFFFFFE;
              }

              if (v15)
              {
                LODWORD(lhs.value) = v31;
                OUTLINED_FUNCTION_16_36(&lhs);
                _os_log_send_and_compose_impl();
              }

              v9 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
              OUTLINED_FUNCTION_1_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              LODWORD(v13) = 0;
            }

            v8[14] = v13;
            OUTLINED_FUNCTION_30_13();
            CMTimeMake(&lhs, v18, v19);
            OUTLINED_FUNCTION_57_12(*(v8 + 5), v27, v28, v29, context, v31, *(&v31 + 1), *(v8 + 3), *(v8 + 4), v32, v33, rhs.value);
            *(v8 + 1) = rhs;
          }

          else
          {
            v35 = 0;
            v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (OUTLINED_FUNCTION_54_10(v16))
            {
              v17 = v1;
            }

            else
            {
              v17 = v1 & 0xFFFFFFFE;
            }

            if (v17)
            {
              LODWORD(lhs.value) = v31;
              OUTLINED_FUNCTION_16_36(&lhs);
              _os_log_send_and_compose_impl();
            }

            v9 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
            OUTLINED_FUNCTION_1_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        if ((mFormatFlags & 0x20) != 0 && *(self + 588) == 6)
        {
          for (i = 0; i != 3; ++i)
          {
            if (*(self + 128 + 8 * i))
            {
              v21 = [(BWAudioSourceNode *)self _createSampleBufferForTimestampedAudioBufferList:v8 audioBufferIndex:i];
              [*(self + 128 + 8 * i) emitSampleBuffer:v21];
              if (v21)
              {
                CFRelease(v21);
              }
            }
          }
        }

        else
        {
          v22 = [(BWAudioSourceNode *)self _createSampleBufferForTimestampedAudioBufferList:v8 audioBufferIndex:0];
          [*(self + 16) emitSampleBuffer:v22];
          if (v22)
          {
            CFRelease(v22);
          }
        }

        v23 = self + v9[1009];
        *(v23 + 8) = *(v8 + 1);
        OUTLINED_FUNCTION_30_13();
        CMTimeMake(&lhs, v24, v25);
        OUTLINED_FUNCTION_57_12(v37.epoch, v27, v28, v29, context, v31, *(&v31 + 1), v37.value, *&v37.timescale, v32, v33, rhs.value);
        *(v23 + 24) = rhs;
        v1 = *(self + 480);
        v26 = dispatch_time(0, ((2 * v8[5]) / StreamBasicDescription->mSampleRate * 1000000000.0));
        dispatch_source_set_timer(v1, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
        TimestampedAudioBufferListReset(v8);
        CMSimpleQueueEnqueue(*(self + 336), v8);
        v8 = CMSimpleQueueDequeue(*(self + 344));
        v5 = 0;
      }

      while (v8);
    }

    objc_autoreleasePoolPop(context);
  }
}

- (uint64_t)_setupPrepareToRecordStateWithFlags:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ((a2 & 1) != 0 && !*(result + 184))
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v3 + 184) = result;
      if ((a2 & 2) == 0)
      {
        return result;
      }
    }

    else if ((a2 & 2) == 0)
    {
      return result;
    }

    if (!*(v3 + 576))
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v3 + 576) = result;
    }
  }

  return result;
}

- (double)start:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_31_18(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v22, v24, v26, v28, v29, v30, v31);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    v33 = 136315138;
    OUTLINED_FUNCTION_2_11("[BWAudioSourceNode start:]");
    OUTLINED_FUNCTION_21(v17, v18, v32, v19, &dword_1AC90E000);
  }

  OUTLINED_FUNCTION_1_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

- (double)start:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_31_18(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v22, v24, v26, v28, v29, v30, v31);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    v33 = 136315138;
    OUTLINED_FUNCTION_2_11("[BWAudioSourceNode start:]");
    OUTLINED_FUNCTION_21(v17, v18, v32, v19, &dword_1AC90E000);
  }

  OUTLINED_FUNCTION_1_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

- (uint64_t)stop:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = MEMORY[0x1E695E110];
  [(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:MEMORY[0x1E695E110] value:?];
  return [(BWAudioSourceNode *)a1 _setAudioSessionMXPropertyWithKey:v2 value:?];
}

- (uint64_t)updateWithAudioSession:(uint64_t)a1 clientAuditToken:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 280);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 280) = *a2;
  result = [(BWAudioSourceNode *)a1 _setupAudioUnit];
  if (result)
  {
    OUTLINED_FUNCTION_1_5();
    return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
  }

  return result;
}

uint64_t __42__BWAudioSourceNode_unprepareForRecording__block_invoke_cold_1(uint64_t *a1)
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:16];
  *[v2 mutableBytes] = 5;
  FigGetUpTimeNanoseconds();
  [(BWAudioSourceNode *)*a1 _setAudioSessionMXPropertyWithKey:v2 value:?];
  return FigGetUpTimeNanoseconds();
}

@end