@interface PatternPlayer
- (BOOL)cancelAndReturnError:(id *)error;
- (BOOL)scheduleParameterCurve:(id)curve atTime:(double)time error:(id *)error;
- (BOOL)sendParameters:(id)parameters atTime:(double)time error:(id *)error;
- (BOOL)startAtTime:(double)time error:(id *)error;
- (BOOL)startAtTime:(double)time withImmediateParameters:(id)parameters error:(id *)error;
- (BOOL)stopAtTime:(double)time error:(id *)error;
- (PatternPlayer)initWithPlayable:(id)playable engine:(id)engine privileged:(BOOL)privileged error:(id *)error;
- (id)processImmediateParameters:(id)parameters;
- (void)clearExternalResources:(id)resources;
- (void)dealloc;
- (void)doSetMute:(BOOL)mute;
- (void)releaseExternalResources:(id)resources events:(id)events;
- (void)setIsMuted:(BOOL)muted;
@end

@implementation PatternPlayer

- (void)releaseExternalResources:(id)resources events:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  eventsCopy = events;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v14 = "CHHapticPatternPlayer.mm";
          v15 = 1024;
          v16 = 37;
          v17 = 2080;
          v18 = "[PatternPlayer releaseExternalResources:events:]";
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Clearing any externally-registered audio resources", buf, 0x1Cu);
        }
      }
    }
  }

  for (i = 0; i < [eventsCopy count]; ++i)
  {
    v10 = [eventsCopy objectAtIndexedSubscript:i];
    if (+[CHHapticEngine resourceIsRegistered:](CHHapticEngine, "resourceIsRegistered:", [v10 audioResID]))
    {
      audioResID = [v10 audioResID];
      v12 = 0;
      [resourcesCopy doUnregisterAudioResource:audioResID fromPattern:1 error:&v12];
    }
  }
}

- (id)processImmediateParameters:(id)parameters
{
  parametersCopy = parameters;
  if (parametersCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__PatternPlayer_processImmediateParameters___block_invoke;
    v7[3] = &unk_2781C8F70;
    v5 = dictionary;
    v8 = v5;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __44__PatternPlayer_processImmediateParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:CHHapticEventParameterIDAudioVolume])
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1000];
    [v7 setObject:v6 forKey:v8];
LABEL_13:

    goto LABEL_14;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDAudioPitch])
  {
    v9 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1001];
    [v9 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDAudioBrightness])
  {
    v10 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1013];
    [v10 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDAudioPan])
  {
    v11 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1015];
    [v11 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDHapticIntensity])
  {
    v12 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2000];
    [v12 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:CHHapticEventParameterIDHapticSharpness])
  {
    v14 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2001];
    [v14 setObject:v6 forKey:v8];
    goto LABEL_13;
  }

  v15 = CALog::LogObjIfEnabled(3, kHAPIScope, v13);
  v16 = v15;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315906;
    v18 = "CHHapticPatternPlayer.mm";
    v19 = 1024;
    v20 = 74;
    v21 = 2080;
    v22 = "[PatternPlayer processImmediateParameters:]_block_invoke";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: EventParameter %@ does not support ImmediateParameter modulation. Ignore", &v17, 0x26u);
  }

LABEL_14:
}

- (PatternPlayer)initWithPlayable:(id)playable engine:(id)engine privileged:(BOOL)privileged error:(id *)error
{
  privilegedCopy = privileged;
  v54 = *MEMORY[0x277D85DE8];
  playableCopy = playable;
  engineCopy = engine;
  v45.receiver = self;
  v45.super_class = PatternPlayer;
  v12 = [(PatternPlayer *)&v45 init];
  if (v12)
  {
    v13 = CALog::Scope::oslog(kHAPIScope);
    spid = os_signpost_id_make_with_pointer(v13, v12);

    v14 = CALog::Scope::oslog(kHAPIScope);
    v15 = v14;
    v42 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PatternPlayer_initWithPlayable", " enableTelemetry=YES ", buf, 2u);
    }

    if (kHAPIScope)
    {
      v16 = *kHAPIScope;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v47 = "CHHapticPatternPlayer.mm";
      v48 = 1024;
      v49 = 88;
      v50 = 2080;
      v51 = "[PatternPlayer initWithPlayable:engine:privileged:error:]";
      v52 = 2048;
      v53 = v12;
      _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: creating player %p", buf, 0x26u);
    }

LABEL_12:
    objc_storeWeak(&v12->super._engine, engineCopy);
    v12->super._muteState = 0;
    v12->super._previousAction = 0;
    v18 = [playableCopy resolveExternalResources:engineCopy error:error];
    if (!v18)
    {

      v36 = CALog::Scope::oslog(kHAPIScope);
      v37 = v36;
      if (v42 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v37, OS_SIGNPOST_INTERVAL_END, spid, "PatternPlayer_initWithPlayable", &unk_215703E5B, buf, 2u);
      }

      goto LABEL_38;
    }

    parameters = [playableCopy parameters];
    parameterCurves = [playableCopy parameterCurves];
    v21 = [CHHapticPattern eventListFromEvents:v18 parameters:parameters parameterCurves:parameterCurves engine:engineCopy privileged:privilegedCopy];
    events = v12->super._events;
    v12->super._events = v21;

    if ([(NSArray *)v12->super._events count])
    {
      patternID = [playableCopy patternID];
      patternID = v12->super._patternID;
      v12->super._patternID = patternID;

      [playableCopy duration];
      v12->super._patternDuration = v25;
      WeakRetained = objc_loadWeakRetained(&v12->super._engine);
      metrics = [WeakRetained metrics];
      [metrics handleInitForPlayer:v12 events:v12->super._events isAdvanced:0 patternID:v12->super._patternID];

      parameterCurves2 = [playableCopy parameterCurves];
      LOBYTE(metrics) = [parameterCurves2 count] == 0;

      if ((metrics & 1) == 0)
      {
        v29 = objc_loadWeakRetained(&v12->super._engine);
        metrics2 = [v29 metrics];
        [metrics2 handleParamCurveEncountered];
      }

      v31 = [engineCopy getAvailableChannel:{error, v42}];
      channel = v12->_channel;
      v12->_channel = v31;

      if (!v12->_channel)
      {
        engine = [(PatternPlayerBase *)v12 engine];
        [(PatternPlayer *)v12 releaseExternalResources:engine events:v18];

        v12 = 0;
      }

      v34 = CALog::Scope::oslog(kHAPIScope);
      v35 = v34;
      if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v35, OS_SIGNPOST_INTERVAL_END, spid, "PatternPlayer_initWithPlayable", &unk_215703E5B, buf, 2u);
      }

      goto LABEL_39;
    }

    if (kHAPIScope)
    {
      v38 = *kHAPIScope;
      if (!v38)
      {
LABEL_33:
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4821 userInfo:0];
        }

        v40 = CALog::Scope::oslog(kHAPIScope);
        v37 = v40;
        if (v42 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v40))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21569A000, v37, OS_SIGNPOST_INTERVAL_END, spid, "PatternPlayer_initWithPlayable", &unk_215703E5B, buf, 2u);
        }

LABEL_38:

        v12 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v38 = MEMORY[0x277D86220];
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v47 = "CHHapticPatternPlayer.mm";
      v48 = 1024;
      v49 = 125;
      v50 = 2080;
      v51 = "[PatternPlayer initWithPlayable:engine:privileged:error:]";
      _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: pattern contains no playable events", buf, 0x1Cu);
    }

    goto LABEL_33;
  }

LABEL_40:

  return v12;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v3 = *kHAPIScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v9 = "CHHapticPatternPlayer.mm";
    v10 = 1024;
    v11 = 168;
    v12 = 2080;
    v13 = "[PatternPlayer dealloc]";
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: destroying player %p", buf, 0x26u);
  }

LABEL_8:
  if (![(AVHapticPlayerChannel *)self->_channel invalidated])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    [(PatternPlayer *)self clearExternalResources:WeakRetained];
  }

  if (self->_channel)
  {
    v6 = objc_loadWeakRetained(&self->super._engine);
    [v6 releaseChannel:self->_channel];
  }

  v7.receiver = self;
  v7.super_class = PatternPlayer;
  [(PatternPlayer *)&v7 dealloc];
}

- (void)doSetMute:(BOOL)mute
{
  muteCopy = mute;
  v11 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v5 = *kHAPIScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = "un";
          *v10 = 136315906;
          *&v10[4] = "CHHapticPatternPlayer.mm";
          *&v10[12] = 1024;
          *&v10[14] = 179;
          *&v10[20] = "[PatternPlayer doSetMute:]";
          *&v10[18] = 2080;
          if (muteCopy)
          {
            v7 = "";
          }

          *&v10[28] = 2080;
          *&v10[30] = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending %smute params", v10, 0x26u);
        }
      }
    }
  }

  if (muteCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(AVHapticPlayerChannel *)self->_channel setParameter:1014 value:0 atTime:COERCE_DOUBLE(LODWORD(v8)) error:0.0, *v10, *&v10[8], *&v10[24]];
  *&v9 = v8;
  [(AVHapticPlayerChannel *)self->_channel setParameter:2014 value:0 atTime:v9 error:0.0];
}

- (void)clearExternalResources:(id)resources
{
  v17 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v5 = *kHAPIScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v12 = "CHHapticPatternPlayer.mm";
          v13 = 1024;
          v14 = 187;
          v15 = 2080;
          v16 = "[PatternPlayer clearExternalResources:]";
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Clearing any externally-registered audio resources", buf, 0x1Cu);
        }
      }
    }
  }

  for (i = 0; i < [(NSArray *)self->super._events count]; ++i)
  {
    v8 = [(NSArray *)self->super._events objectAtIndexedSubscript:i];
    if (+[CHHapticEngine resourceIsRegistered:](CHHapticEngine, "resourceIsRegistered:", [v8 eventType]))
    {
      eventType = [v8 eventType];
      v10 = 0;
      [resourcesCopy doUnregisterAudioResource:eventType fromPattern:1 error:&v10];
    }
  }
}

- (BOOL)startAtTime:(double)time error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v28 = 136316162;
    v29 = "CHHapticPatternPlayer.mm";
    v30 = 1024;
    v31 = 201;
    v32 = 2080;
    v33 = "[PatternPlayer startAtTime:error:]";
    v34 = 2048;
    selfCopy = self;
    v36 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting simple player %p at time %.3f", &v28, 0x30u);
  }

LABEL_8:
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 202, "[PatternPlayer startAtTime:error:]", "time >= 0.0", -4840, error);
    return 0;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PatternPlayer_startAtTime", " enableTelemetry=YES ", &v28, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v15 = [WeakRetained checkEngineStateOnStart:error];

  if ((v15 & 1) == 0)
  {
    v23 = CALog::Scope::oslog(kHAPIScope);
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v24, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_startAtTime", &unk_215703E5B, &v28, 2u);
    }

    return 0;
  }

  muteState = self->super._muteState;
  if ((muteState - 1) <= 1)
  {
    v17 = muteState == 2;
    [(PatternPlayer *)self doSetMute:muteState == 2];
    self->super._muteState = newStateFromOld(self->super._muteState, v17, 1);
  }

  if ((![(PatternPlayerBase *)self needsResetForAction:2]|| [(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time]) && [(AVHapticPlayerChannel *)self->_channel sendEvents:self->super._events atTime:error error:time])
  {
    v18 = objc_loadWeakRetained(&self->super._engine);
    v19 = [v18 notifyPlayerStarted:self atTime:time];

    v20 = objc_loadWeakRetained(&self->super._engine);
    metrics = [v20 metrics];
    patternID = [(PatternPlayerBase *)self patternID];
    [metrics handleStartForPlayer:self time:0 isAdvanced:patternID patternID:time];
  }

  else
  {
    v19 = 0;
  }

  v25 = CALog::Scope::oslog(kHAPIScope);
  v26 = v25;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v26, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_startAtTime", &unk_215703E5B, &v28, 2u);
  }

  return v19;
}

- (BOOL)stopAtTime:(double)time error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v25 = 136316162;
    v26 = "CHHapticPatternPlayer.mm";
    v27 = 1024;
    v28 = 232;
    v29 = 2080;
    v30 = "[PatternPlayer stopAtTime:error:]";
    v31 = 2048;
    selfCopy = self;
    v33 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Stopping simple player %p at time %.3f", &v25, 0x30u);
  }

LABEL_8:
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 233, "[PatternPlayer stopAtTime:error:]", "time >= 0.0", -4840, error);
LABEL_24:
    LOBYTE(v16) = 0;
    return v16;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PatternPlayer_stopAtTime", " enableTelemetry=YES ", &v25, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v15 = [WeakRetained checkEngineRunning:error];

  if ((v15 & 1) == 0)
  {
    v22 = CALog::Scope::oslog(kHAPIScope);
    v23 = v22;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      LOWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v23, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_stopAtTime", &unk_215703E5B, &v25, 2u);
    }

    goto LABEL_24;
  }

  v16 = [(AVHapticPlayerChannel *)self->_channel clearEvents:error error:time];
  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->super._engine);
    [v17 notifyPlayerStopped:self atTime:time];

    v18 = objc_loadWeakRetained(&self->super._engine);
    metrics = [v18 metrics];
    [metrics handleActionForPlayer:self action:3 time:0 isAdvanced:time];
  }

  v20 = CALog::Scope::oslog(kHAPIScope);
  v21 = v20;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v21, OS_SIGNPOST_INTERVAL_END, v10, "PatternPlayer_stopAtTime", &unk_215703E5B, &v25, 2u);
  }

  return v16;
}

- (BOOL)sendParameters:(id)parameters atTime:(double)time error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v21 = 136316162;
          v22 = "CHHapticPatternPlayer.mm";
          v23 = 1024;
          v24 = 250;
          v25 = 2080;
          v26 = "[PatternPlayer sendParameters:atTime:error:]";
          v27 = 2048;
          selfCopy = self;
          v29 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending simple player %p parameters at time %.3f", &v21, 0x30u);
        }
      }
    }
  }

  if (time >= 0.0)
  {
    v12 = CALog::Scope::oslog(kHAPIScope);
    v13 = os_signpost_id_make_with_pointer(v12, self);

    v14 = CALog::Scope::oslog(kHAPIScope);
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PatternPlayer_sendParameters", " enableTelemetry=YES ", &v21, 2u);
    }

    if ([(PatternPlayerBase *)self needsResetForAction:1]&& ![(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time])
    {
      v11 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->super._engine);
      v17 = [CHHapticPattern eventListFromEvents:0 parameters:parametersCopy parameterCurves:0 engine:WeakRetained privileged:0];

      v11 = [(AVHapticPlayerChannel *)self->_channel sendEvents:v17 atTime:error error:time];
    }

    v18 = CALog::Scope::oslog(kHAPIScope);
    v19 = v18;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v13, "PatternPlayer_sendParameters", &unk_215703E5B, &v21, 2u);
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 251, "[PatternPlayer sendParameters:atTime:error:]", "time >= 0.0", -4840, error);
    v11 = 0;
  }

  return v11;
}

- (BOOL)cancelAndReturnError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 136315906;
    v23 = "CHHapticPatternPlayer.mm";
    v24 = 1024;
    v25 = 273;
    v26 = 2080;
    v27 = "[PatternPlayer cancelAndReturnError:]";
    v28 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Cancelling events on simple player %p immediately", &v22, 0x26u);
  }

LABEL_8:
  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PatternPlayer_cancelAndReturnError", " enableTelemetry=YES ", &v22, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v13 = [WeakRetained checkEngineRunning:error];

  if (v13)
  {
    v14 = [(AVHapticPlayerChannel *)self->_channel clearEvents:error error:0.0];
    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->super._engine);
      [v15 notifyPlayerStopped:self atTime:0.0];

      v16 = objc_loadWeakRetained(&self->super._engine);
      metrics = [v16 metrics];
      [metrics handleActionForPlayer:self action:3 time:0 isAdvanced:0.0];
    }

    v18 = CALog::Scope::oslog(kHAPIScope);
    v19 = v18;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v8, "PatternPlayer_cancelAndReturnError", &unk_215703E5B, &v22, 2u);
    }
  }

  else
  {
    v20 = CALog::Scope::oslog(kHAPIScope);
    v19 = v20;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v8, "PatternPlayer_cancelAndReturnError", &unk_215703E5B, &v22, 2u);
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)scheduleParameterCurve:(id)curve atTime:(double)time error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v30 = "CHHapticPatternPlayer.mm";
          v31 = 1024;
          v32 = 290;
          v33 = 2080;
          v34 = "[PatternPlayer scheduleParameterCurve:atTime:error:]";
          v35 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending player %p a parameter curve", buf, 0x26u);
        }
      }
    }
  }

  if (time >= 0.0)
  {
    v12 = CALog::Scope::oslog(kHAPIScope);
    v13 = os_signpost_id_make_with_pointer(v12, self);

    v14 = CALog::Scope::oslog(kHAPIScope);
    v15 = v14;
    v16 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PatternPlayer_scheduleParameterCurve", " enableTelemetry=YES ", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    v18 = [WeakRetained checkEngineRunning:error];

    if (v18)
    {
      if ([(PatternPlayerBase *)self needsResetForAction:1]&& ![(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time])
      {
        v11 = 0;
      }

      else
      {
        [curveCopy relativeTime];
        v20 = v19;
        [curveCopy setRelativeTime:0.0];
        v28 = curveCopy;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
        v22 = objc_loadWeakRetained(&self->super._engine);
        v23 = [CHHapticPattern eventListFromEvents:0 parameters:0 parameterCurves:v21 engine:v22 privileged:0];

        v11 = [(AVHapticPlayerChannel *)self->_channel sendEvents:v23 atTime:error error:time];
        [curveCopy setRelativeTime:v20];
      }

      v26 = CALog::Scope::oslog(kHAPIScope);
      v25 = v26;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v25, OS_SIGNPOST_INTERVAL_END, v13, "PatternPlayer_scheduleParameterCurve", &unk_215703E5B, buf, 2u);
      }
    }

    else
    {
      v24 = CALog::Scope::oslog(kHAPIScope);
      v25 = v24;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v25, OS_SIGNPOST_INTERVAL_END, v13, "PatternPlayer_scheduleParameterCurve", &unk_215703E5B, buf, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 291, "[PatternPlayer scheduleParameterCurve:atTime:error:]", "time >= 0.0", -4840, error);
    v11 = 0;
  }

  return v11;
}

- (BOOL)startAtTime:(double)time withImmediateParameters:(id)parameters error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v30 = 136316162;
    v31 = "CHHapticPatternPlayer.mm";
    v32 = 1024;
    v33 = 319;
    v34 = 2080;
    v35 = "[PatternPlayer startAtTime:withImmediateParameters:error:]";
    v36 = 2048;
    selfCopy = self;
    v38 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting simple player extended %p at time %.3f", &v30, 0x30u);
  }

LABEL_8:
  if (time >= 0.0)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, self);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    v15 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v30) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PatternPlayer_startAtTime_withImmediateParameters", " enableTelemetry=YES ", &v30, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    v17 = [WeakRetained checkEngineStateOnStart:error];

    if (v17)
    {
      muteState = self->super._muteState;
      if ((muteState - 1) <= 1)
      {
        [(PatternPlayer *)self doSetMute:muteState == 2];
        self->super._muteState = newStateFromOld(self->super._muteState, muteState == 2, 1);
      }

      if ([(PatternPlayerBase *)self needsResetForAction:2]&& ![(AVHapticPlayerChannel *)self->_channel resetAtTime:error error:time])
      {
        LOBYTE(error) = 0;
      }

      else
      {
        channel = self->_channel;
        events = self->super._events;
        v21 = [(PatternPlayer *)self processImmediateParameters:parametersCopy];
        LODWORD(error) = [(AVHapticPlayerChannel *)channel sendEvents:events withImmediateParameters:v21 atTime:error error:time];

        if (error)
        {
          v22 = objc_loadWeakRetained(&self->super._engine);
          LOBYTE(error) = [v22 notifyPlayerStarted:self atTime:time];

          v23 = objc_loadWeakRetained(&self->super._engine);
          metrics = [v23 metrics];
          patternID = [(PatternPlayerBase *)self patternID];
          [metrics handleStartForPlayer:self time:0 isAdvanced:patternID patternID:time];
        }
      }

      v28 = CALog::Scope::oslog(kHAPIScope);
      v27 = v28;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        LOWORD(v30) = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v27, OS_SIGNPOST_INTERVAL_END, v12, "PatternPlayer_startAtTime_withImmediateParameters", &unk_215703E5B, &v30, 2u);
      }
    }

    else
    {
      v26 = CALog::Scope::oslog(kHAPIScope);
      v27 = v26;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(v30) = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v27, OS_SIGNPOST_INTERVAL_END, v12, "PatternPlayer_startAtTime_withImmediateParameters", &unk_215703E5B, &v30, 2u);
      }

      LOBYTE(error) = 0;
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticPatternPlayer.mm", 320, "[PatternPlayer startAtTime:withImmediateParameters:error:]", "time >= 0.0", -4840, error);
    LOBYTE(error) = 0;
  }

  return error;
}

- (void)setIsMuted:(BOOL)muted
{
  mutedCopy = muted;
  muteState = self->super._muteState;
  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  v7 = newStateFromOld(muteState, mutedCopy, [WeakRetained running]);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = muteState == 3;
  }

  v9 = !v8;
  self->super._muteState = v7;
  if (muteState)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 == 3;
  }

  if (v10 || (v9 & 1) == 0)
  {

    [(PatternPlayer *)self doSetMute:mutedCopy];
  }
}

@end