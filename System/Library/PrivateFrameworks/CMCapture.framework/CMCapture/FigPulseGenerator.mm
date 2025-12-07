@interface FigPulseGenerator
+ (BOOL)anyCaptureSourceSupportsMSG;
+ (BOOL)isSupported;
+ (id)sharedFigPulseGenerator;
+ (void)initialize;
- (FigPulseGenerator)init;
- (int)_configureFollowSync:(SyncHandle *)sync assertDur:(int64_t)dur offset:(unint64_t)offset;
- (int)_configureLeaderSync:(SyncHandle *)sync frameRate:(id)rate assertDur:(unint64_t)dur;
- (int)_disciplineMSGTimeSyncClock:(id)clock;
- (int)_getOrCreateTimeSyncMSGClockIdentifier:(id)identifier tsClockIdentifierOut:(unint64_t *)out;
- (int)_getTimeSyncClock:(unint64_t)clock clockOut:(id *)out;
- (int)_resetMsgSyncs;
- (int)_startSyncs:(id)syncs;
- (int)applySignalCompensationDelay:(id *)delay;
- (int)startWithFrameRate:(id)rate cmClock:(OpaqueCMClock *)clock clientAudioClockDeviceUIDOut:(id *)out externalSync:(BOOL)sync;
- (int)stopRunning;
- (void)_notifyDelegate:(unint64_t)delegate withError:(int)error;
- (void)_resetState;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation FigPulseGenerator

+ (id)sharedFigPulseGenerator
{
  if (!+[FigPulseGenerator isSupported])
  {
    return 0;
  }

  if (sharedFigPulseGenerator_sFigPulseGeneratorOnceToken != -1)
  {
    +[FigPulseGenerator sharedFigPulseGenerator];
  }

  return sharedFigPulseGenerator_sFigPulseGenerator;
}

+ (BOOL)isSupported
{
  if (isSupported_sFigPulseGeneratorSupportedOnceToken != -1)
  {
    +[FigPulseGenerator isSupported];
  }

  return isSupported_result;
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

void __44__FigPulseGenerator_sharedFigPulseGenerator__block_invoke()
{
  sharedFigPulseGenerator_sFigPulseGenerator = objc_alloc_init(FigPulseGenerator);
  os_unfair_lock_lock((sharedFigPulseGenerator_sFigPulseGenerator + 116));
  [sharedFigPulseGenerator_sFigPulseGenerator _resetState];
  v0 = (sharedFigPulseGenerator_sFigPulseGenerator + 116);

  os_unfair_lock_unlock(v0);
}

void __32__FigPulseGenerator_isSupported__block_invoke()
{
  if (FigCaptureCurrentProcessHasEntitlement(@"com.apple.private.master-sync-generator.user-access"))
  {
    v0 = +[FigPulseGenerator anyCaptureSourceSupportsMSG];
    if (MEMORY[0x1EEE83A20])
    {
      v1 = v0;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v1 = 0;
  }

  isSupported_result = v1;
}

+ (BOOL)anyCaptureSourceSupportsMSG
{
  v2 = [+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v7 "attributes")] > 0 || objc_msgSend(objc_msgSend(objc_msgSend(v7, "attributes"), "objectForKeyedSubscript:", @"LockedFrameDurationMaxFrameRate"), "intValue") > 0)
        {
          LOBYTE(v3) = 1;
          return v3;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
      LOBYTE(v3) = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (FigPulseGenerator)init
{
  v4.receiver = self;
  v4.super_class = FigPulseGenerator;
  v2 = [(FigPulseGenerator *)&v4 init];
  if (v2)
  {
    if (MEMORY[0x1EEE83A18] && MEMORY[0x1EEE83A20])
    {
      if (!MSGCreate())
      {
        v2->_msgHandleLeader = MSGAllocateSyncHandle();
        v2->_msgHandleRear = MSGAllocateSyncHandle();
        v2->_msgHandleFront = MSGAllocateSyncHandle();
        v2->_timeSyncMSGClockIdentifier = *MEMORY[0x1E69DA108];
        v2->_hasNotifiedDelegateOfClockCreation = 0;
        v2->_currentFrameRate.u = 0;
        v2->_currentFrameRate.tag = 0;
        return v2;
      }

      [FigPulseGenerator init];
    }

    else
    {
      [FigPulseGenerator init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  if (MEMORY[0x1EEE83A28])
  {
    msgHandleRear = self->_msgHandleRear;
    if (msgHandleRear)
    {
      MEMORY[0x1B26F0A90](msgHandleRear, a2);
    }

    msgHandleFront = self->_msgHandleFront;
    if (msgHandleFront)
    {
      MEMORY[0x1B26F0A90](msgHandleFront, a2);
    }

    msgHandleLeader = self->_msgHandleLeader;
    if (msgHandleLeader)
    {
      MEMORY[0x1B26F0A90](msgHandleLeader, a2);
    }
  }

  v6.receiver = self;
  v6.super_class = FigPulseGenerator;
  [(FigPulseGenerator *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  os_unfair_lock_lock(&self->_configureLock);
  objc_storeWeak(&self->_delegate, delegate);
  self->_hasNotifiedDelegateOfClockCreation = 0;

  os_unfair_lock_unlock(&self->_configureLock);
}

- (int)startWithFrameRate:(id)rate cmClock:(OpaqueCMClock *)clock clientAudioClockDeviceUIDOut:(id *)out externalSync:(BOOL)sync
{
  syncCopy = sync;
  var1 = rate.var1;
  var0 = rate.var0;
  if (dword_1EB58DD60)
  {
    LODWORD(v31) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&self->_configureLock);
  if (FigCaptureFrameRateNotEqual(var0, var1, *&self->_currentFrameRate.u, self->_currentFrameRate.tag) || self->_isExternalSync != syncCopy)
  {
    if (dword_1EB58DD60)
    {
      selfCopy = self;
      LODWORD(v31) = 0;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(FigPulseGenerator *)self _resetState:v26];
    var1 = [(FigPulseGenerator *)self _startSyncs:var0, var1];
    if (var1)
    {
      goto LABEL_26;
    }
  }

  self->_isExternalSync = syncCopy;
  if (syncCopy && (var1 = [(FigPulseGenerator *)self _disciplineMSGTimeSyncClock:var0, var1]) != 0)
  {
LABEL_26:
    v19 = var1;
    LODWORD(v26) = var1;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, v29, selfCopy, v29, v30, v31, *v32, *&v32[8]);
    LODWORD(v31) = 0;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    if (!(clock | out))
    {
LABEL_17:
      if (dword_1EB58DD60)
      {
        LODWORD(v31) = 0;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v31;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
        }

        else
        {
          v18 = v17 & 0xFFFFFFFE;
        }

        if (v18)
        {
          *v32 = 136315138;
          *&v32[4] = "[FigPulseGenerator startWithFrameRate:cmClock:clientAudioClockDeviceUIDOut:externalSync:]";
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v19 = 0;
      goto LABEL_25;
    }

    v31 = *MEMORY[0x1E69DA108];
    CMClockFromTimeSyncMSGClock = [(FigPulseGenerator *)self _getOrCreateTimeSyncMSGClockIdentifier:var0 tsClockIdentifierOut:var1, &v31];
    if (!CMClockFromTimeSyncMSGClock && (!clock || (CMClockFromTimeSyncMSGClock = FigCaptureCreateCMClockFromTimeSyncMSGClock(v31, clock)) == 0) && (!out || (CMClockFromTimeSyncMSGClock = [(FigPulseGenerator *)self _getTimeSyncClock:v31 clockOut:out]) == 0))
    {
      [(FigPulseGenerator *)self _notifyDelegate:v31 withError:0, v26];
      goto LABEL_17;
    }

    v19 = CMClockFromTimeSyncMSGClock;
    LODWORD(v26) = CMClockFromTimeSyncMSGClock;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, v29, selfCopy, v29, v30, v31, *v32, *&v32[8]);
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  LODWORD(v31) = 0;
  v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v24 = v31;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 & 0xFFFFFFFE;
  }

  if (v25)
  {
    *v32 = 136315394;
    *&v32[4] = "[FigPulseGenerator startWithFrameRate:cmClock:clientAudioClockDeviceUIDOut:externalSync:]";
    v33 = 1024;
    LODWORD(v34) = v19;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  [(FigPulseGenerator *)self _resetState];
LABEL_25:
  os_unfair_lock_unlock(&self->_configureLock);
  return v19;
}

- (int)stopRunning
{
  if (dword_1EB58DD60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&self->_configureLock);
  [(FigPulseGenerator *)self _resetState];
  os_unfair_lock_unlock(&self->_configureLock);
  return 0;
}

- (int)applySignalCompensationDelay:(id *)delay
{
  if (self->_enabled)
  {
    if ((delay->var2 & 0x1D) != 1)
    {
      v10 = -73194;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -73194, v3, v26, v27.value, v27.timescale, v27.epoch, time2.value, time2.timescale);
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_30:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v10;
    }

    v6 = FigCaptureFrameRateAsFloat(*&self->_currentFrameRate.u, self->_currentFrameRate.tag);
    memset(&v30, 0, sizeof(v30));
    v7 = 1.0 / v6;
    CMTimeMakeWithSeconds(&v30, v7, 24000000);
    v29 = *delay;
    *time1 = *&delay->var0;
    *&time1[16] = delay->var3;
    time2 = v30;
    if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0 || (*time1 = *&delay->var0, *&time1[16] = delay->var3, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(time1, &time2) < 0))
    {
      *time1 = *&delay->var0;
      *&time1[16] = delay->var3;
      Seconds = CMTimeGetSeconds(time1);
      v9 = fmod(Seconds, v7);
      if (v9 < 0.0)
      {
        v9 = v7 + v9;
      }

      CMTimeMakeWithSeconds(&v29, v9, 24000000);
    }

    memset(&v27, 0, sizeof(v27));
    *time1 = v29;
    CMTimeConvertScale(&v27, time1, 24000000, kCMTimeRoundingMethod_RoundTowardZero);
    if ((v27.flags & 1) == 0)
    {
      v10 = -73194;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -73194, v3, v26, v27.value, v27.timescale, v27.epoch, time2.value, time2.timescale);
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v34;
      if (os_log_type_enabled(v12, v33))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (!v14)
      {
        goto LABEL_30;
      }

      *time1 = *&delay->var0;
      *&time1[16] = delay->var3;
      v15 = CMTimeCopyDescription(0, time1);
      LODWORD(time2.value) = 136315394;
      *(&time2.value + 4) = "[FigPulseGenerator applySignalCompensationDelay:]";
      LOWORD(time2.flags) = 2112;
      *(&time2.flags + 2) = v15;
      goto LABEL_29;
    }

    self->_activeDerivedSyncConfig.offset.whole = v27.value;
    *&self->_activeDerivedSyncConfig.offset.frac = 0;
    assert_duration = self->_activeDerivedSyncConfig.assert_duration;
    *time1 = *&self->_activeDerivedSyncConfig.timer_sel;
    *&time1[16] = assert_duration;
    offset = self->_activeDerivedSyncConfig.offset;
    v17 = MSGConfigureDerivedSync();
    if (v17)
    {
      v10 = v17;
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v34;
      if (os_log_type_enabled(v18, v33))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v21 = self->_activeDerivedSyncConfig.assert_duration;
    *time1 = *&self->_activeDerivedSyncConfig.timer_sel;
    *&time1[16] = v21;
    offset = self->_activeDerivedSyncConfig.offset;
    v10 = MSGConfigureDerivedSync();
    if (v10)
    {
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v23 = v34;
      if (os_log_type_enabled(v22, v33))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (!v24)
      {
        goto LABEL_30;
      }

LABEL_28:
      LODWORD(time2.value) = 136315394;
      *(&time2.value + 4) = "[FigPulseGenerator applySignalCompensationDelay:]";
      LOWORD(time2.flags) = 1024;
      *(&time2.flags + 2) = v10;
LABEL_29:
      _os_log_send_and_compose_impl();
      goto LABEL_30;
    }
  }

  else
  {
    v10 = -73194;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -73194, v3, v26, v27.value, v27.timescale, v27.epoch, time2.value, time2.timescale);
  }

  return v10;
}

- (int)_startSyncs:(id)syncs
{
  var1 = syncs.var1;
  var0 = syncs.var0;
  v7 = syncs.var1;
  if (!FigCaptureFrameRateIsValidRational(*&syncs.var0, syncs.var1))
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -536870206, v3, v13, v14, v15, v16, v17, v18);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_15:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [(FigPulseGenerator *)self _resetMsgSyncs];
    self->_currentFrameRate.u = 0;
    self->_currentFrameRate.tag = 0;
    return -73196;
  }

  v8 = [(FigPulseGenerator *)self _leaderSyncInit:self->_msgHandleLeader trigger:1];
  if (v8 || (v8 = [(FigPulseGenerator *)self _followSyncInit:self->_msgHandleRear leader:0 trigger:1]) != 0 || (v8 = [(FigPulseGenerator *)self _followSyncInit:self->_msgHandleFront leader:0 trigger:1]) != 0 || (v8 = [(FigPulseGenerator *)self _configureLeaderSync:self->_msgHandleLeader frameRate:*&var0 assertDur:v7, 1000]) != 0 || (v8 = [(FigPulseGenerator *)self _configureFollowSync:self->_msgHandleRear assertDur:1000 offset:0]) != 0 || (v8 = [(FigPulseGenerator *)self _configureFollowSync:self->_msgHandleFront assertDur:1000 offset:0]) != 0 || (v8 = [(FigPulseGenerator *)self _syncInterruptEnable:self->_msgHandleLeader]) != 0 || (v8 = [(FigPulseGenerator *)self _startSync:self->_msgHandleLeader]) != 0 || (v8 = [(FigPulseGenerator *)self _startSync:self->_msgHandleRear]) != 0 || (v8 = [(FigPulseGenerator *)self _startSync:self->_msgHandleFront]) != 0)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v3, v13, v14, v15, v16, v17, v18);
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    goto LABEL_15;
  }

  if (dword_1EB58DD60)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
  self->_currentFrameRate.u = var0;
  self->_currentFrameRate.tag = var1;
  return result;
}

- (int)_getTimeSyncClock:(unint64_t)clock clockOut:(id *)out
{
  if (self->_timeSyncClockRef)
  {
    goto LABEL_5;
  }

  v6 = TimeSyncClockCreateWithClockIdentifier();
  self->_timeSyncClockRef = v6;
  if (v6)
  {
    if (dword_1EB58DD60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_5:
    AudioClockDeviceUID = TimeSyncClockCreateAudioClockDeviceUID();
    result = 0;
    *out = AudioClockDeviceUID;
    return result;
  }

  [FigPulseGenerator _getTimeSyncClock:clockOut:];
  return -73194;
}

- (void)_resetState
{
  if (dword_1EB58DD60)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_currentFrameRate.u = 0;
  self->_currentFrameRate.tag = 0;
  v4 = TimeSyncMSGClockInstanceIdentifier();
  if (self->_timeSyncMSGClockIdentifier != v4 && dword_1EB58DD60 != 0)
  {
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v37;
    if (os_log_type_enabled(v6, v36))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      timeSyncMSGClockIdentifier = self->_timeSyncMSGClockIdentifier;
      v30 = 136315650;
      v31 = "[FigPulseGenerator _resetState]";
      v32 = 2048;
      v33 = timeSyncMSGClockIdentifier;
      v34 = 2048;
      v35 = v4;
      LODWORD(v29) = 32;
      v28 = &v30;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *MEMORY[0x1E69DA108];
  if (v4 != *MEMORY[0x1E69DA108])
  {
    +[FigPulseGenerator kV5XTriggerID];
    v11 = TimeSyncMSGStopExternalSync();
    if (v11)
    {
      v12 = v11;
      v37 = 0;
      v36 = OS_LOG_TYPE_DEFAULT;
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = v37;
      if (os_log_type_enabled(v13, v36))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v30 = 136315394;
        v31 = "[FigPulseGenerator _resetState]";
        v32 = 1024;
        LODWORD(v33) = v12;
        LODWORD(v29) = 18;
        v28 = &v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((TimeSyncMSGRemoveClockInstance() & 1) == 0)
    {
      v37 = 0;
      v36 = OS_LOG_TYPE_DEFAULT;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v37;
      if (os_log_type_enabled(v16, v36))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v30 = 136315138;
        v31 = "[FigPulseGenerator _resetState]";
        LODWORD(v29) = 12;
        v28 = &v30;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [(FigPulseGenerator *)self _resetMsgSyncs:v28];
  v19 = [(FigPulseGenerator *)self _syncInterruptDisable:self->_msgHandleLeader];
  if (v19)
  {
    v20 = v19;
    v37 = 0;
    v36 = OS_LOG_TYPE_DEFAULT;
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v22 = v37;
    if (os_log_type_enabled(v21, v36))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      v30 = 136315394;
      v31 = "[FigPulseGenerator _resetState]";
      v32 = 1024;
      LODWORD(v33) = v20;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_timeSyncMSGClockIdentifier = v10;
  if (self->_timeSyncClockRef)
  {
    if (dword_1EB58DD60)
    {
      v37 = 0;
      v36 = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v37;
      if (os_log_type_enabled(v24, v36))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        timeSyncClockRef = self->_timeSyncClockRef;
        v30 = 136315394;
        v31 = "[FigPulseGenerator _resetState]";
        v32 = 2048;
        v33 = timeSyncClockRef;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    TimeSyncClockDispose();
  }

  self->_disciplinedMSGTimeSyncClock = 0;
  self->_timeSyncClockRef = 0;
  *&self->_isExternalSync = 0;
}

- (int)_disciplineMSGTimeSyncClock:(id)clock
{
  if (self->_disciplinedMSGTimeSyncClock)
  {
    goto LABEL_5;
  }

  +[FigPulseGenerator kV5XTriggerID];
  FigGetUpTimeNanoseconds();
  v5 = TimeSyncMSGStartExternalSync();
  FigGetUpTimeNanoseconds();
  if (!v5)
  {
    if (dword_1EB58DD60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_5:
    result = 0;
    self->_disciplinedMSGTimeSyncClock = 1;
    return result;
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v3, v9, v10, v11, v12, v13, v14);
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v5 == -536870186)
  {
    return -73195;
  }

  else
  {
    return -73194;
  }
}

- (void)_notifyDelegate:(unint64_t)delegate withError:(int)error
{
  v4 = *&error;
  if (dword_1EB58DD60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!self->_hasNotifiedDelegateOfClockCreation && objc_loadWeak(&self->_delegate))
  {
    if (dword_1EB58DD60)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_loadWeak(&self->_delegate) pulseGenerator:self updateSynchronizationClock:delegate withError:v4];
    self->_hasNotifiedDelegateOfClockCreation = 1;
  }
}

- (int)_resetMsgSyncs
{
  v4 = [(FigPulseGenerator *)self _syncReset:self->_msgHandleRear];
  if (v4 || (v4 = [(FigPulseGenerator *)self _syncReset:self->_msgHandleFront]) != 0)
  {
    v6 = v4;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v2, v10, v11, v12, v13, v14, v15);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_8:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v6;
  }

  v5 = [(FigPulseGenerator *)self _syncReset:self->_msgHandleLeader];
  v6 = v5;
  if (v5)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v2, v10, v11, v12, v13, v14, v15);
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    goto LABEL_8;
  }

  return v6;
}

- (int)_getOrCreateTimeSyncMSGClockIdentifier:(id)identifier tsClockIdentifierOut:(unint64_t *)out
{
  timeSyncMSGClockIdentifier = self->_timeSyncMSGClockIdentifier;
  if (timeSyncMSGClockIdentifier == *MEMORY[0x1E69DA108])
  {
    v8 = TimeSyncMSGAddClockInstance();
    if (v8 == timeSyncMSGClockIdentifier)
    {
      v9 = -73194;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -73194, v4, v14, v15, v16, v17, v18, v19);
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v12 = self->_timeSyncMSGClockIdentifier;
    }

    else
    {
      v12 = v8;
      if (dword_1EB58DD60)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v9 = 0;
      self->_timeSyncMSGClockIdentifier = v12;
    }
  }

  else
  {
    v9 = 0;
    v12 = self->_timeSyncMSGClockIdentifier;
  }

  *out = v12;
  return v9;
}

- (int)_configureLeaderSync:(SyncHandle *)sync frameRate:(id)rate assertDur:(unint64_t)dur
{
  v8 = 1536000000 * rate.var0.var0.var1 % rate.var0.var0.var0;
  LOWORD(v9) = LOWORD(rate.var0.var1);
  if (rate.var0.var0.var0 >= 0x10000)
  {
    var0 = rate.var0.var0.var0;
    v11 = rate.var0.var0.var0 >> 63;
    v12 = v8 >> 63;
    do
    {
      v13 = v8;
      *(&v14 + 1) = v12;
      *&v14 = v8;
      v8 = v14 >> 1;
      v15 = var0;
      *(&v14 + 1) = v11;
      *&v14 = var0;
      var0 = v14 >> 1;
      v16 = v11 | (v15 >> 17);
      v11 >>= 1;
      v12 >>= 1;
    }

    while (v16);
    v9 = v15 >> 1;
    v8 = v13 >> 1;
  }

  v17 = __divti3();
  v21 = 4;
  v22 = 1;
  *v23 = 0;
  *(&v19 + 1) = v18;
  *&v19 = v17;
  *&v23[7] = 0;
  *&v23[11] = dur;
  *&v23[19] = 0;
  *&v23[27] = v19 >> 6;
  v24 = v17 & 0x3F;
  v25 = v8;
  v26 = v9;
  v27 = 0;
  return [(FigPulseGenerator *)self _leaderSyncConfig:sync config:&v21];
}

- (int)_configureFollowSync:(SyncHandle *)sync assertDur:(int64_t)dur offset:(unint64_t)offset
{
  self->_activeDerivedSyncConfig.timer_sel = 4;
  self->_activeDerivedSyncConfig.repeat = 1;
  *(&self->_activeDerivedSyncConfig.repeat + 1) = 0;
  *&self->_activeDerivedSyncConfig.start_base_frame = 0;
  self->_activeDerivedSyncConfig.assert_duration.whole = dur;
  self->_activeDerivedSyncConfig.assert_duration.frac = 0;
  *(&self->_activeDerivedSyncConfig.assert_duration.remainder_denominator + 1) = 0;
  *&self->_activeDerivedSyncConfig.assert_duration.remainder_numerator = 0;
  self->_activeDerivedSyncConfig.offset.whole = offset;
  *&self->_activeDerivedSyncConfig.offset.frac = 0;
  v6 = 4;
  v7 = 1;
  *v8 = 0;
  *&v8[7] = 0;
  *&v8[11] = dur;
  v9 = 0;
  v11 = 0;
  v10 = 0;
  offsetCopy = offset;
  v13 = 0;
  return [(FigPulseGenerator *)self _followSyncConfig:sync config:&v6];
}

- (double)_getTimeSyncClock:clockOut:.cold.1()
{
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v0, v3, v4, v5, v6, v7, v8);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

@end