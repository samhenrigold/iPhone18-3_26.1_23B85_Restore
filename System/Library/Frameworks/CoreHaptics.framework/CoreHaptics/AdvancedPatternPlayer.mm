@interface AdvancedPatternPlayer
- (AdvancedPatternPlayer)initWithPattern:(id)pattern engine:(id)engine privileged:(BOOL)privileged error:(id *)error;
- (AdvancedPatternPlayer)initWithRingtoneData:(id)data engine:(id)engine error:(id *)error;
- (AdvancedPatternPlayer)initWithVibePatternDictionary:(id)dictionary engine:(id)engine error:(id *)error;
- (BOOL)activateChannelByIndex:(unint64_t)index atTime:(double)time error:(id *)error;
- (BOOL)cancelAndReturnError:(id *)error;
- (BOOL)doResumeAtTime:(double)time error:(id *)error;
- (BOOL)doStartFromPausedAtTime:(double)time error:(id *)error;
- (BOOL)doStartFromStoppedAtTime:(double)time error:(id *)error;
- (BOOL)earlyUnduckAudioAtTime:(double)time error:(id *)error;
- (BOOL)pauseAtTime:(double)time error:(id *)error;
- (BOOL)resumeAtTime:(double)time error:(id *)error;
- (BOOL)scheduleParameterCurve:(id)curve atTime:(double)time error:(id *)error;
- (BOOL)seekToOffset:(double)offset error:(id *)error;
- (BOOL)sendParameters:(id)parameters atTime:(double)time error:(id *)error;
- (BOOL)setVolume:(float)volume atTime:(double)time error:(id *)error;
- (BOOL)startAtTime:(double)time error:(id *)error;
- (BOOL)stopAtTime:(double)time error:(id *)error;
- (double)patternDuration;
- (double)seekOffset;
- (float)volume;
- (id).cxx_construct;
- (id)completionHandler;
- (void)clearExternalResources:(id)resources;
- (void)clearSeekOffset;
- (void)dealloc;
- (void)doSetMute:(BOOL)mute;
- (void)finishInit;
- (void)setCompletionHandler:(id)handler;
- (void)setIsMuted:(BOOL)muted;
- (void)setLoopEnd:(double)end;
- (void)setPlaybackRate:(float)rate;
- (void)setSeekOffset:(double)offset;
- (void)setVolume:(float)volume;
@end

@implementation AdvancedPatternPlayer

- (void)finishInit
{
  v18 = *MEMORY[0x277D85DE8];
  eventBehavior = [(AVHapticSequence *)self->_sequence eventBehavior];
  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  muteHapticsWhileRecordingAudio = [WeakRetained muteHapticsWhileRecordingAudio];

  v6 = 4;
  if (muteHapticsWhileRecordingAudio)
  {
    v6 = 0;
  }

  [(AVHapticSequence *)self->_sequence setEventBehavior:v6 | eventBehavior & 0xFFFFFFFFFFFFFFFBLL];
  objc_initWeak(&location, self);
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v13 = "CHHapticAdvancedPatternPlayer.mm";
    v14 = 1024;
    v15 = 60;
    v16 = 2080;
    v17 = "[AdvancedPatternPlayer finishInit]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting default completion handler on underlying AVHapticSequence", buf, 0x1Cu);
  }

LABEL_10:
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__AdvancedPatternPlayer_finishInit__block_invoke;
  v9[3] = &unk_2781C8FE0;
  objc_copyWeak(&v10, &location);
  [(AVHapticSequence *)self->_sequence setCompletionHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__AdvancedPatternPlayer_finishInit__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315906;
    v6 = "CHHapticAdvancedPatternPlayer.mm";
    v7 = 1024;
    v8 = 63;
    v9 = 2080;
    v10 = "[AdvancedPatternPlayer finishInit]_block_invoke";
    v11 = 2048;
    v12 = WeakRetained;
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Player %p default completion handler called", &v5, 0x26u);
  }

LABEL_8:
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    [v4 clearSeekOffset];
    [v4 resetState];
    objc_sync_exit(v4);
  }
}

- (AdvancedPatternPlayer)initWithPattern:(id)pattern engine:(id)engine privileged:(BOOL)privileged error:(id *)error
{
  privilegedCopy = privileged;
  v51 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  engineCopy = engine;
  v42.receiver = self;
  v42.super_class = AdvancedPatternPlayer;
  v12 = [(AdvancedPatternPlayer *)&v42 init];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = CALog::Scope::oslog(kHAPIScope);
  spid = os_signpost_id_make_with_pointer(v13, v12);

  v14 = CALog::Scope::oslog(kHAPIScope);
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AdvancedPatternPlayer_initWithPattern", " enableTelemetry=YES ", buf, 2u);
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
    v44 = "CHHapticAdvancedPatternPlayer.mm";
    v45 = 1024;
    v46 = 85;
    v47 = 2080;
    v48 = "[AdvancedPatternPlayer initWithPattern:engine:privileged:error:]";
    v49 = 2048;
    v50 = v12;
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player %p", buf, 0x26u);
  }

LABEL_12:
  objc_storeWeak(&v12->super._engine, engineCopy);
  v12->super._muteState = 0;
  v12->_state = 0;
  if (v12->_seekOffset.__engaged_)
  {
    v12->_seekOffset.__engaged_ = 0;
  }

  v12->_volume = 1.0;
  v12->super._previousAction = 0;
  v18 = [patternCopy resolveExternalResources:engineCopy error:{error, spid - 1}];
  if (!v18)
  {

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4824 userInfo:0];
      *error = v12 = 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  parameters = [patternCopy parameters];
  parameterCurves = [patternCopy parameterCurves];
  v21 = [CHHapticPattern eventListFromEvents:v18 parameters:parameters parameterCurves:parameterCurves engine:engineCopy privileged:privilegedCopy];
  events = v12->super._events;
  v12->super._events = v21;

  if (![(NSArray *)v12->super._events count])
  {

LABEL_22:
    v12 = 0;
    goto LABEL_26;
  }

  v23 = [AVHapticSequence alloc];
  v24 = v12->super._events;
  player = [engineCopy player];
  v26 = [(AVHapticSequence *)v23 initWithEvents:v24 player:player error:error];
  sequence = v12->_sequence;
  v12->_sequence = v26;

  if (!v12->_sequence)
  {
    v35 = v12;
    v12 = 0;
    goto LABEL_24;
  }

  patternID = [patternCopy patternID];
  patternID = v12->super._patternID;
  v12->super._patternID = patternID;

  [(AVHapticSequence *)v12->_sequence duration];
  v12->super._patternDuration = v30;
  WeakRetained = objc_loadWeakRetained(&v12->super._engine);
  metrics = [WeakRetained metrics];
  [metrics handleInitForPlayer:v12 events:v12->super._events isAdvanced:1 patternID:v12->super._patternID];

  parameterCurves2 = [patternCopy parameterCurves];
  v34 = [parameterCurves2 count] == 0;

  if (!v34)
  {
    v35 = objc_loadWeakRetained(&v12->super._engine);
    metrics2 = [v35 metrics];
    [metrics2 handleParamCurveEncountered];

LABEL_24:
  }

  [(AdvancedPatternPlayer *)v12 patternDuration];
  [(AdvancedPatternPlayer *)v12 setLoopEnd:?];
  [(AdvancedPatternPlayer *)v12 finishInit];
LABEL_26:
  v37 = CALog::Scope::oslog(kHAPIScope);
  v38 = v37;
  if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v38, OS_SIGNPOST_INTERVAL_END, spid, "AdvancedPatternPlayer_initWithPattern", &unk_215703E5B, buf, 2u);
  }

LABEL_30:
  return v12;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
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
    v8 = "CHHapticAdvancedPatternPlayer.mm";
    v9 = 1024;
    v10 = 133;
    v11 = 2080;
    v12 = "[AdvancedPatternPlayer dealloc]";
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Destroying advanced player %p", buf, 0x26u);
  }

LABEL_8:
  if (![(AVHapticSequence *)self->_sequence invalidated])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    [(AdvancedPatternPlayer *)self clearExternalResources:WeakRetained];
  }

  v6.receiver = self;
  v6.super_class = AdvancedPatternPlayer;
  [(AdvancedPatternPlayer *)&v6 dealloc];
}

- (void)doSetMute:(BOOL)mute
{
  muteCopy = mute;
  v13 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = "un";
    *v10 = 136316162;
    *&v10[4] = "CHHapticAdvancedPatternPlayer.mm";
    *&v10[12] = 1024;
    *&v10[14] = 141;
    *&v10[20] = "[AdvancedPatternPlayer doSetMute:]";
    *&v10[18] = 2080;
    if (muteCopy)
    {
      v7 = "";
    }

    *&v10[28] = 2048;
    *&v10[30] = self;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Advanced player %p: Sending %smute params", v10, 0x30u);
  }

LABEL_10:
  if (muteCopy)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(AVHapticSequence *)self->_sequence setParameter:1014 value:0 channel:0 atTime:COERCE_DOUBLE(LODWORD(v8)) error:0.0, *v10, *&v10[8], *&v10[24]];
  *&v9 = v8;
  [(AVHapticSequence *)self->_sequence setParameter:2014 value:0 channel:0 atTime:v9 error:0.0];
  [(AVHapticSequence *)self->_sequence setIsMuted:muteCopy];
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
          v12 = "CHHapticAdvancedPatternPlayer.mm";
          v13 = 1024;
          v14 = 150;
          v15 = 2080;
          v16 = "[AdvancedPatternPlayer clearExternalResources:]";
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

- (BOOL)doStartFromStoppedAtTime:(double)time error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  engine = [(PatternPlayerBase *)self engine];
  v8 = [engine checkEngineStateOnStart:error];

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  muteState = self->super._muteState;
  if ((muteState - 1) <= 1)
  {
    v10 = muteState == 2;
    [(AdvancedPatternPlayer *)self doSetMute:muteState == 2];
    self->super._muteState = newStateFromOld(self->super._muteState, v10, 1);
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v11 = *kHAPIScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(AdvancedPatternPlayer *)self seekOffset];
          v22 = 136315906;
          v23 = "CHHapticAdvancedPatternPlayer.mm";
          v24 = 1024;
          v25 = 173;
          v26 = 2080;
          v27 = "[AdvancedPatternPlayer doStartFromStoppedAtTime:error:]";
          v28 = 2048;
          v29 = v13;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Starting sequence with offset %.3f", &v22, 0x26u);
        }
      }
    }
  }

  sequence = self->_sequence;
  [(AdvancedPatternPlayer *)self seekOffset];
  if (![(AVHapticSequence *)sequence playAtTime:error offset:time error:v15])
  {
    return 0;
  }

  [(AdvancedPatternPlayer *)self setRunning];
  [(AdvancedPatternPlayer *)self clearSeekOffset];
  engine2 = [(PatternPlayerBase *)self engine];
  v17 = [engine2 notifyPlayerStarted:self atTime:time];

  WeakRetained = objc_loadWeakRetained(&self->super._engine);
  metrics = [WeakRetained metrics];
  patternID = [(PatternPlayerBase *)self patternID];
  [metrics handleStartForPlayer:self time:1 isAdvanced:patternID patternID:time];

  return v17;
}

- (BOOL)doStartFromPausedAtTime:(double)time error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(AdvancedPatternPlayer *)self seekOffset];
          v16 = 136315906;
          v17 = "CHHapticAdvancedPatternPlayer.mm";
          v18 = 1024;
          v19 = 186;
          v20 = 2080;
          v21 = "[AdvancedPatternPlayer doStartFromPausedAtTime:error:]";
          v22 = 2048;
          v23 = v9;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Restarting paused sequence with offset %.3f", &v16, 0x26u);
        }
      }
    }
  }

  if (![(AdvancedPatternPlayer *)self paused])
  {
    [AdvancedPatternPlayer doStartFromPausedAtTime:error:];
  }

  sequence = self->_sequence;
  [(AdvancedPatternPlayer *)self seekOffset];
  v12 = [(AVHapticSequence *)sequence playAtTime:error offset:time error:v11];
  if (v12)
  {
    [(AdvancedPatternPlayer *)self setRunning];
    WeakRetained = objc_loadWeakRetained(&self->super._engine);
    metrics = [WeakRetained metrics];
    [metrics handleActionForPlayer:self action:2 time:1 isAdvanced:time];
  }

  return v12;
}

- (BOOL)doResumeAtTime:(double)time error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  if (![(AdvancedPatternPlayer *)self paused])
  {
    [AdvancedPatternPlayer doResumeAtTime:error:];
  }

  if (!self->_seekOffset.__engaged_)
  {
    goto LABEL_10;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(AdvancedPatternPlayer *)self seekOffset];
          v15 = 136315906;
          v16 = "CHHapticAdvancedPatternPlayer.mm";
          v17 = 1024;
          v18 = 201;
          v19 = 2080;
          v20 = "[AdvancedPatternPlayer doResumeAtTime:error:]";
          v21 = 2048;
          v22 = v9;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resuming paused sequence with offset %.3f", &v15, 0x26u);
        }
      }
    }
  }

  sequence = self->_sequence;
  [(AdvancedPatternPlayer *)self seekOffset];
  v11 = [(AVHapticSequence *)sequence seekToTime:error error:?];
  if (v11)
  {
LABEL_10:
    v11 = [(AVHapticSequence *)self->_sequence resumeAtTime:error error:time];
    if (v11)
    {
      [(AdvancedPatternPlayer *)self setRunning];
      WeakRetained = objc_loadWeakRetained(&self->super._engine);
      metrics = [WeakRetained metrics];
      [metrics handleActionForPlayer:self action:2 time:1 isAdvanced:time];

      LOBYTE(v11) = 1;
    }
  }

  return v11;
}

- (BOOL)startAtTime:(double)time error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
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
    v21 = 136316162;
    v22 = "CHHapticAdvancedPatternPlayer.mm";
    v23 = 1024;
    v24 = 219;
    v25 = 2080;
    v26 = "[AdvancedPatternPlayer startAtTime:error:]";
    v27 = 2048;
    selfCopy = self;
    v29 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting player %p at time %.3f", &v21, 0x30u);
  }

LABEL_8:
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 220, "[AdvancedPatternPlayer startAtTime:error:]", "time >= 0.0", -4840, error);
    return 0;
  }

  if (!self->_sequence)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 221, "[AdvancedPatternPlayer startAtTime:error:]", "_sequence != nil", -4812, error);
    return 0;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AdvancedPatternPlayer_startAtTime", " enableTelemetry=YES ", &v21, 2u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if ([(PatternPlayerBase *)selfCopy2 needsResetForAction:2]&& (v14 = [(AVHapticSequence *)self->_sequence resetAtTime:error error:time], *&v15 = selfCopy2->_volume, [(AdvancedPatternPlayer *)selfCopy2 setVolume:v15], !v14))
  {
    v17 = 0;
  }

  else
  {
    if ([(AdvancedPatternPlayer *)selfCopy2 paused])
    {
      v16 = [(AdvancedPatternPlayer *)selfCopy2 doStartFromPausedAtTime:error error:time];
    }

    else
    {
      v16 = [(AdvancedPatternPlayer *)selfCopy2 doStartFromStoppedAtTime:error error:time];
    }

    v17 = v16;
  }

  objc_sync_exit(selfCopy2);

  v18 = CALog::Scope::oslog(kHAPIScope);
  v19 = v18;
  if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v10, "AdvancedPatternPlayer_startAtTime", &unk_215703E5B, &v21, 2u);
  }

  return v17;
}

- (BOOL)stopAtTime:(double)time error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
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
    v26 = 136316162;
    v27 = "CHHapticAdvancedPatternPlayer.mm";
    v28 = 1024;
    v29 = 242;
    v30 = 2080;
    v31 = "[AdvancedPatternPlayer stopAtTime:error:]";
    v32 = 2048;
    selfCopy = self;
    v34 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Stopping player %p at time %.3f", &v26, 0x30u);
  }

LABEL_8:
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 243, "[AdvancedPatternPlayer stopAtTime:error:]", "time >= 0.0", -4840, error);
LABEL_26:
    LOBYTE(v17) = 0;
    return v17;
  }

  if (!self->_sequence)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 244, "[AdvancedPatternPlayer stopAtTime:error:]", "_sequence != nil", -4812, error);
    goto LABEL_26;
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AdvancedPatternPlayer_stopAtTime", " enableTelemetry=YES ", &v26, 2u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  WeakRetained = objc_loadWeakRetained(&selfCopy2->super._engine);
  v16 = [WeakRetained checkEngineRunning:error];

  if ((v16 & 1) == 0)
  {
    v23 = CALog::Scope::oslog(kHAPIScope);
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v26) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v24, OS_SIGNPOST_INTERVAL_END, v10, "AdvancedPatternPlayer_stopAtTime", &unk_215703E5B, &v26, 2u);
    }

    objc_sync_exit(selfCopy2);
    goto LABEL_26;
  }

  v17 = [(AVHapticSequence *)self->_sequence stopAtTime:error error:time];
  if (v17)
  {
    engine = [(PatternPlayerBase *)selfCopy2 engine];
    [engine notifyPlayerStopped:selfCopy2 atTime:time];

    [(AdvancedPatternPlayer *)selfCopy2 resetState];
    v19 = objc_loadWeakRetained(&selfCopy2->super._engine);
    metrics = [v19 metrics];
    [metrics handleActionForPlayer:selfCopy2 action:3 time:1 isAdvanced:time];
  }

  objc_sync_exit(selfCopy2);

  v21 = CALog::Scope::oslog(kHAPIScope);
  v22 = v21;
  if (v13 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v10, "AdvancedPatternPlayer_stopAtTime", &unk_215703E5B, &v26, 2u);
  }

  return v17;
}

- (BOOL)sendParameters:(id)parameters atTime:(double)time error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  if (time < 0.0)
  {
    v9 = -4840;
    v10 = "time >= 0.0";
    v11 = 265;
LABEL_27:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", v11, "[AdvancedPatternPlayer sendParameters:atTime:error:]", v10, v9, error);
    v36 = 0;
    goto LABEL_37;
  }

  if (!self->_sequence)
  {
    v9 = -4812;
    v10 = "_sequence != nil";
    v11 = 266;
    goto LABEL_27;
  }

  v12 = CALog::Scope::oslog(kHAPIScope);
  v13 = os_signpost_id_make_with_pointer(v12, self);

  v14 = CALog::Scope::oslog(kHAPIScope);
  v15 = v14;
  spid = v13;
  v42 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "AdvancedPatternPlayer_sendParameters", " enableTelemetry=YES ", buf, 2u);
  }

  engine = [(PatternPlayerBase *)self engine];
  [engine currentTime];
  v18 = v17 > time;

  if (v18)
  {
    engine2 = [(PatternPlayerBase *)self engine];
    [engine2 currentTime];
    time = v20;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v21 = *kHAPIScope;
      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          v49 = "CHHapticAdvancedPatternPlayer.mm";
          v50 = 1024;
          v51 = 271;
          v52 = 2080;
          v53 = "[AdvancedPatternPlayer sendParameters:atTime:error:]";
          v54 = 2048;
          selfCopy = self;
          v56 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sending player %p parameters at time %.3f", buf, 0x30u);
        }
      }
    }
  }

  if ([(PatternPlayerBase *)self needsResetForAction:1]&& ![(AVHapticSequence *)self->_sequence resetAtTime:error error:time])
  {
    v36 = 0;
  }

  else
  {
    engine3 = [(PatternPlayerBase *)self engine];
    v24 = [CHHapticPattern eventListFromEvents:0 parameters:parametersCopy parameterCurves:0 engine:engine3 privileged:0];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v26)
    {
      v40 = parametersCopy;
      v27 = *v44;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          sequence = self->_sequence;
          paramType = [v29 paramType];
          [v29 value];
          v33 = v32;
          [v29 time];
          v35 = time + v34;
          LODWORD(v34) = v33;
          if (![(AVHapticSequence *)sequence setParameter:paramType value:0 channel:error atTime:v34 error:v35])
          {
            v36 = 0;
            goto LABEL_29;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

      v36 = 1;
LABEL_29:
      parametersCopy = v40;
    }

    else
    {
      v36 = 1;
    }
  }

  v37 = CALog::Scope::oslog(kHAPIScope);
  v38 = v37;
  if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v38, OS_SIGNPOST_INTERVAL_END, spid, "AdvancedPatternPlayer_sendParameters", &unk_215703E5B, buf, 2u);
  }

LABEL_37:
  return v36;
}

- (BOOL)scheduleParameterCurve:(id)curve atTime:(double)time error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  if (kHAPIScope)
  {
    v8 = *kHAPIScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315650;
    v12 = "CHHapticAdvancedPatternPlayer.mm";
    v13 = 1024;
    v14 = 296;
    v15 = 2080;
    v16 = "[AdvancedPatternPlayer scheduleParameterCurve:atTime:error:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Parameter curves are not yet supported on CHHapticAdvancedPlayers", &v11, 0x1Cu);
  }

LABEL_8:
  if (time >= 0.0)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 297, "[AdvancedPatternPlayer scheduleParameterCurve:atTime:error:]", "time >= 0.0", -4840, error);
  }

  return 0;
}

- (BOOL)pauseAtTime:(double)time error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->super._engine);
  v8 = [WeakRetained checkEngineRunning:error];

  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (![(AdvancedPatternPlayer *)selfCopy paused])
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136316162;
      v19 = "CHHapticAdvancedPatternPlayer.mm";
      v20 = 1024;
      v21 = 310;
      v22 = 2080;
      v23 = "[AdvancedPatternPlayer pauseAtTime:error:]";
      v24 = 2048;
      v25 = selfCopy;
      v26 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pausing player %p at time %.3f", &v18, 0x30u);
    }

LABEL_11:
    if (time >= 0.0)
    {
      if (selfCopy->_sequence)
      {
        v15 = objc_loadWeakRetained(&selfCopy->super._engine);
        metrics = [v15 metrics];
        [metrics handleActionForPlayer:selfCopy action:1 time:1 isAdvanced:time];

        if ([(AVHapticSequence *)selfCopy->_sequence pauseAtTime:error error:time])
        {
          [(AdvancedPatternPlayer *)selfCopy setPaused];
          goto LABEL_3;
        }

LABEL_18:
        v9 = 0;
        goto LABEL_19;
      }

      v12 = -4812;
      v13 = "_sequence != nil";
      v14 = 312;
    }

    else
    {
      v12 = -4840;
      v13 = "time >= 0.0";
      v14 = 311;
    }

    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", v14, "[AdvancedPatternPlayer pauseAtTime:error:]", v13, v12, error);
    goto LABEL_18;
  }

LABEL_3:
  v9 = 1;
LABEL_19:
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)resumeAtTime:(double)time error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->super._engine);
  v8 = [WeakRetained checkEngineRunning:error];

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![(AdvancedPatternPlayer *)selfCopy paused])
  {
    v10 = 1;
    goto LABEL_18;
  }

  if (!kHAPIScope)
  {
    v9 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    goto LABEL_8;
  }

  v9 = *kHAPIScope;
  if (v9)
  {
LABEL_8:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136316162;
      v17 = "CHHapticAdvancedPatternPlayer.mm";
      v18 = 1024;
      v19 = 332;
      v20 = 2080;
      v21 = "[AdvancedPatternPlayer resumeAtTime:error:]";
      v22 = 2048;
      v23 = selfCopy;
      v24 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resuming player %p at time %.3f", &v16, 0x30u);
    }
  }

  if (time < 0.0)
  {
    v12 = -4840;
    v13 = "time >= 0.0";
    v14 = 333;
LABEL_16:
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", v14, "[AdvancedPatternPlayer resumeAtTime:error:]", v13, v12, error);
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if (!selfCopy->_sequence)
  {
    v12 = -4812;
    v13 = "_sequence != nil";
    v14 = 334;
    goto LABEL_16;
  }

  v10 = [(AdvancedPatternPlayer *)selfCopy doResumeAtTime:error error:time];
LABEL_18:
  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)seekToOffset:(double)offset error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(AdvancedPatternPlayer *)selfCopy running]&& ![(AdvancedPatternPlayer *)selfCopy paused])
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
LABEL_18:
        v9 = [(AVHapticSequence *)selfCopy->_sequence seekToTime:error error:offset];
        [(AdvancedPatternPlayer *)selfCopy clearSeekOffset];
        goto LABEL_19;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136316162;
      v14 = "CHHapticAdvancedPatternPlayer.mm";
      v15 = 1024;
      v16 = 351;
      v17 = 2080;
      v18 = "[AdvancedPatternPlayer seekToOffset:error:]";
      v19 = 2048;
      v20 = selfCopy;
      v21 = 2048;
      offsetCopy2 = offset;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Seeking on player %p to offset %.2f", &v13, 0x30u);
    }

    goto LABEL_18;
  }

  if (!kHAPIScope)
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v7 = *kHAPIScope;
  if (v7)
  {
LABEL_7:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136316162;
      v14 = "CHHapticAdvancedPatternPlayer.mm";
      v15 = 1024;
      v16 = 347;
      v17 = 2080;
      v18 = "[AdvancedPatternPlayer seekToOffset:error:]";
      v19 = 2048;
      v20 = selfCopy;
      v21 = 2048;
      offsetCopy2 = offset;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Caching player %p offset %.2f for later start/resume", &v13, 0x30u);
    }
  }

  [(AdvancedPatternPlayer *)selfCopy setSeekOffset:offset];
  v9 = 1;
LABEL_19:
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)cancelAndReturnError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v5 = *kHAPIScope;
    if (!v5)
    {
      return [(AVHapticSequence *)self->_sequence cancelAndReturnError:error];
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "CHHapticAdvancedPatternPlayer.mm";
    v10 = 1024;
    v11 = 361;
    v12 = 2080;
    v13 = "[AdvancedPatternPlayer cancelAndReturnError:]";
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Cancelling commands for player %p immediately", &v8, 0x26u);
  }

  return [(AVHapticSequence *)self->_sequence cancelAndReturnError:error];
}

- (double)patternDuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  paused = [(AdvancedPatternPlayer *)selfCopy paused];
  objc_sync_exit(selfCopy);

  v4 = 1800.0;
  if (!paused && ![(AVHapticSequence *)selfCopy->_sequence loopingEnabled])
  {
    patternDuration = selfCopy->super._patternDuration;
    [(AVHapticSequence *)selfCopy->_sequence playbackRate];
    return patternDuration / v6;
  }

  return v4;
}

- (void)setLoopEnd:(double)end
{
  if (end >= 0.0)
  {
    endCopy = end;
    *&end = end;
    if ([(AVHapticSequence *)self->_sequence setLoopLength:0 error:end])
    {
      self->_loopEnd = endCopy;
    }
  }
}

- (void)setPlaybackRate:(float)rate
{
  if (rate > 0.0)
  {
    [(AVHapticSequence *)self->_sequence setPlaybackRate:?];
  }
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

    [(AdvancedPatternPlayer *)self doSetMute:mutedCopy];
  }
}

- (void)setCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x21606F540](handlerCopy);
    *buf = 136315906;
    v17 = "CHHapticAdvancedPatternPlayer.mm";
    v18 = 1024;
    v19 = 449;
    v20 = 2080;
    v21 = "[AdvancedPatternPlayer setCompletionHandler:]";
    v22 = 2048;
    v23 = v8;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Wrapping client's completion handler block %p in our block and setting on underlying AVHapticSequence", buf, 0x26u);
  }

LABEL_8:
  v9 = MEMORY[0x21606F540](handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke;
  v13[3] = &unk_2781C9058;
  objc_copyWeak(&v15, buf);
  v14 = handlerCopy;
  sequence = self->_sequence;
  v12 = handlerCopy;
  [(AVHapticSequence *)sequence setCompletionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained engine];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_2;
    v14[3] = &unk_2781C9008;
    v7 = v5;
    v15 = v7;
    v17 = *(a1 + 32);
    v16 = v3;
    [v6 dispatchOnLocal:v14];

    v8 = v7;
    objc_sync_enter(v8);
    [v8 resetState];
    v9 = &v15;
    v10 = &v17;
    objc_sync_exit(v8);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_13;
    v11[3] = &unk_2781C9030;
    v13 = *(a1 + 32);
    v12 = v3;
    [CHHapticEngine dispatchOnGlobal:v11];
    v9 = &v13;
    v10 = &v12;
  }
}

void __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x21606F540](*(a1 + 48));
    v9 = 136316162;
    v10 = "CHHapticAdvancedPatternPlayer.mm";
    v11 = 1024;
    v12 = 457;
    v13 = 2080;
    v14 = "[AdvancedPatternPlayer setCompletionHandler:]_block_invoke_2";
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Player %p client-supplied completion handler called - calling captured block %p on internal queue", &v9, 0x30u);
  }

LABEL_8:
  (*(*(a1 + 48) + 16))();
  v7 = [*(a1 + 32) engine];
  v8 = [v7 metrics];
  [v8 handleActionForPlayer:*(a1 + 32) action:3 time:1 isAdvanced:0.0];
}

uint64_t __46__AdvancedPatternPlayer_setCompletionHandler___block_invoke_13(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v2 = *kHAPIScope;
    if (!v2)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x21606F540](*(a1 + 40));
    v7 = 136315906;
    v8 = "CHHapticAdvancedPatternPlayer.mm";
    v9 = 1024;
    v10 = 468;
    v11 = 2080;
    v12 = "[AdvancedPatternPlayer setCompletionHandler:]_block_invoke";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied completion handler called on destroyed player - calling captured block %p on global queue", &v7, 0x26u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)completionHandler
{
  v2 = MEMORY[0x21606F540](self->_completionHandler, a2);

  return v2;
}

- (AdvancedPatternPlayer)initWithRingtoneData:(id)data engine:(id)engine error:(id *)error
{
  dataCopy = data;
  engineCopy = engine;
  v26.receiver = self;
  v26.super_class = AdvancedPatternPlayer;
  v10 = [(AdvancedPatternPlayer *)&v26 init];
  if (v10)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, v10);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AdvancedPatternPlayer_initWithRingtoneData", " enableTelemetry=YES ", v25, 2u);
    }

    objc_storeWeak(&v10->super._engine, engineCopy);
    events = v10->super._events;
    v10->super._events = 0;

    v10->_volume = 1.0;
    v16 = [AVHapticSequence alloc];
    player = [engineCopy player];
    v18 = [(AVHapticSequence *)v16 initWithData:dataCopy player:player error:error];
    sequence = v10->_sequence;
    v10->_sequence = v18;

    v20 = v10->_sequence;
    if (v20)
    {
      [(AVHapticSequence *)v20 duration];
      v10->super._patternDuration = v21;
      [(AdvancedPatternPlayer *)v10 finishInit];
    }

    else
    {

      v10 = 0;
    }

    v22 = CALog::Scope::oslog(kHAPIScope);
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v23, OS_SIGNPOST_INTERVAL_END, v12, "AdvancedPatternPlayer_initWithRingtoneData", &unk_215703E5B, v25, 2u);
    }
  }

  return v10;
}

- (AdvancedPatternPlayer)initWithVibePatternDictionary:(id)dictionary engine:(id)engine error:(id *)error
{
  dictionaryCopy = dictionary;
  engineCopy = engine;
  v26.receiver = self;
  v26.super_class = AdvancedPatternPlayer;
  v10 = [(AdvancedPatternPlayer *)&v26 init];
  if (v10)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, v10);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AdvancedPatternPlayer_initWithVibePatternDictionary", " enableTelemetry=YES ", v25, 2u);
    }

    objc_storeWeak(&v10->super._engine, engineCopy);
    events = v10->super._events;
    v10->super._events = 0;

    v10->_state = 0;
    if (v10->_seekOffset.__engaged_)
    {
      v10->_seekOffset.__engaged_ = 0;
    }

    v10->_volume = 1.0;
    v10->super._previousAction = 0;
    v16 = [AVHapticSequence alloc];
    player = [engineCopy player];
    v18 = [(AVHapticSequence *)v16 initWithDictionary:dictionaryCopy player:player error:error];
    sequence = v10->_sequence;
    v10->_sequence = v18;

    v20 = v10->_sequence;
    if (v20)
    {
      [(AVHapticSequence *)v20 duration];
      v10->super._patternDuration = v21;
      [(AdvancedPatternPlayer *)v10 finishInit];
    }

    else
    {

      v10 = 0;
    }

    v22 = CALog::Scope::oslog(kHAPIScope);
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v23, OS_SIGNPOST_INTERVAL_END, v12, "AdvancedPatternPlayer_initWithVibePatternDictionary", &unk_215703E5B, v25, 2u);
    }
  }

  return v10;
}

- (BOOL)activateChannelByIndex:(unint64_t)index atTime:(double)time error:(id *)error
{
  if (time >= 0.0)
  {
    sequence = self->_sequence;

    return [AVHapticSequence activateChannelByIndex:"activateChannelByIndex:atTime:error:" atTime:index error:?];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 533, "[AdvancedPatternPlayer activateChannelByIndex:atTime:error:]", "time >= 0.0", -4840, error);
    return 0;
  }
}

- (BOOL)setVolume:(float)volume atTime:(double)time error:(id *)error
{
  if (time >= 0.0)
  {
    sequence = self->_sequence;

    return [AVHapticSequence setVolume:"setVolume:atTime:error:" atTime:? error:?];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 539, "[AdvancedPatternPlayer setVolume:atTime:error:]", "time >= 0.0", -4840, error);
    return 0;
  }
}

- (BOOL)earlyUnduckAudioAtTime:(double)time error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  if (time < 0.0)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticAdvancedPatternPlayer.mm", 545, "[AdvancedPatternPlayer earlyUnduckAudioAtTime:error:]", "time >= 0.0", -4840, error);
    return 0;
  }

  if (!kHAPIScope)
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v8 = *kHAPIScope;
  if (v8)
  {
LABEL_7:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136316162;
      v11 = "CHHapticAdvancedPatternPlayer.mm";
      v12 = 1024;
      v13 = 546;
      v14 = 2080;
      v15 = "[AdvancedPatternPlayer earlyUnduckAudioAtTime:error:]";
      v16 = 2048;
      selfCopy = self;
      v18 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting player %p to early unduck audio at time %.3f", &v10, 0x30u);
    }
  }

  return [(AVHapticSequence *)self->_sequence earlyUnduckAudioAtTime:error error:time];
}

- (float)volume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  volume = selfCopy->_volume;
  objc_sync_exit(selfCopy);

  return volume;
}

- (void)setVolume:(float)volume
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v16 = "CHHapticAdvancedPatternPlayer.mm";
    v17 = 1024;
    v18 = 560;
    v19 = 2080;
    v20 = "[AdvancedPatternPlayer setVolume:]";
    v21 = 2048;
    v22 = selfCopy;
    v23 = 2048;
    volumeCopy2 = volume;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting player %p audio and haptics volume to %.3f. Server will clamp volume argument to [0, 1]", buf, 0x30u);
  }

LABEL_8:
  sequence = selfCopy->_sequence;
  v14 = 0;
  *&v6 = volume;
  [(AVHapticSequence *)sequence setVolume:&v14 atTime:v6 error:0.0];
  v9 = v14;
  if (v9)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 136316418;
      v16 = "CHHapticAdvancedPatternPlayer.mm";
      v17 = 1024;
      v18 = 563;
      v19 = 2080;
      v20 = "[AdvancedPatternPlayer setVolume:]";
      v21 = 2048;
      v22 = selfCopy;
      v23 = 2048;
      volumeCopy2 = volume;
      v25 = 2112;
      v26 = localizedDescription;
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Error setting player %p audio and haptics volume to %.3f: %@", buf, 0x3Au);
    }
  }

  else
  {
    selfCopy->_volume = volume;
  }

LABEL_17:

  objc_sync_exit(selfCopy);
}

- (double)seekOffset
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  val = 0.0;
  if (selfCopy->_seekOffset.__engaged_)
  {
    val = selfCopy->_seekOffset.var0.__val_;
  }

  objc_sync_exit(selfCopy);

  return val;
}

- (void)setSeekOffset:(double)offset
{
  obj = self;
  objc_sync_enter(obj);
  obj->_seekOffset.var0.__val_ = offset;
  obj->_seekOffset.__engaged_ = 1;
  objc_sync_exit(obj);
}

- (void)clearSeekOffset
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_seekOffset.__engaged_)
  {
    obj->_seekOffset.__engaged_ = 0;
  }

  objc_sync_exit(obj);
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 80) = 0;
  return self;
}

- (void)doStartFromPausedAtTime:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "CHHapticAdvancedPatternPlayer.mm";
    v2 = 1024;
    v3 = 187;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(self.paused) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

- (void)doResumeAtTime:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "CHHapticAdvancedPatternPlayer.mm";
    v2 = 1024;
    v3 = 199;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(self.paused) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

@end