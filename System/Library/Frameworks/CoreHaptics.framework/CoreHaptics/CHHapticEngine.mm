@interface CHHapticEngine
+ (BOOL)resourceIsRegistered:(unint64_t)registered;
+ (id)capabilitiesForHardware;
+ (void)clearResourceMap;
+ (void)dispatchOnGlobal:(id)global;
- (BOOL)checkEngineRunning:(id *)running;
- (BOOL)checkEngineStateOnStart:(id *)start;
- (BOOL)doInit:(unsigned int)init sessionIsShared:(BOOL)shared options:(id)options bypassAudioSession:(BOOL)session error:(id *)error;
- (BOOL)doInitWithOptions:(id)options error:(id *)error;
- (BOOL)doPlayPattern:(id)pattern error:(id *)error;
- (BOOL)doReferenceAudioResourceByID:(unint64_t)d;
- (BOOL)doStartEngineAndWait:(id *)wait;
- (BOOL)doStopEngineAndWait:(id *)wait;
- (BOOL)doUnregisterAudioResource:(unint64_t)resource fromPattern:(BOOL)pattern error:(id *)error;
- (BOOL)finishInit:(id *)init;
- (BOOL)hasPublicAudioResourceID:(unint64_t)d;
- (BOOL)isResourceLoopEnabled:(unint64_t)enabled;
- (BOOL)notifyPlayerStarted:(id)started atTime:(double)time;
- (BOOL)playPatternFromData:(NSData *)data error:(NSError *)outError;
- (BOOL)playPatternFromURL:(NSURL *)fileURL error:(NSError *)outError;
- (BOOL)setupEngineWithCategory:(id)category session:(id)session needsAudioPowerBudget:(BOOL)budget error:(id *)error;
- (BOOL)setupSystemSoundAudioSession:(id)session needsAudioPowerBudget:(BOOL)budget error:(id *)error;
- (BOOL)setupUnsharedAudioSession:(id)session isConstantVolume:(BOOL)volume needsAudioPowerBudget:(BOOL)budget error:(id *)error;
- (BOOL)startAndReturnError:(NSError *)outError;
- (BOOL)unregisterAudioResource:(CHHapticAudioResourceID)resourceID error:(NSError *)outError;
- (CHHapticAudioResourceID)registerAudioResource:(NSURL *)resourceURL options:(NSDictionary *)options error:(NSError *)outError;
- (CHHapticEngine)initAndReturnError:(NSError *)error;
- (CHHapticEngine)initWithAudioSession:(AVAudioSession *)audioSession error:(NSError *)error;
- (CHHapticEngine)initWithAudioSession:(id)session sessionIsShared:(BOOL)shared error:(id *)error;
- (CHHapticEngine)initWithAudioSession:(id)session sessionIsShared:(BOOL)shared options:(id)options error:(id *)error;
- (CHHapticEngine)initWithAudioSessionID:(unsigned int)d error:(id *)error;
- (CHHapticEngine)initWithAudioSessionID:(unsigned int)d options:(id)options error:(id *)error;
- (CHHapticEngine)initWithOptions:(id)options error:(id *)error;
- (NSString)locality;
- (__map_iterator<std::__tree_iterator<std::__value_type<unsigned)doFindPublicAudioResourceID:(unint64_t)d;
- (double)getDurationForResource:(unint64_t)resource;
- (id).cxx_construct;
- (id)createAdvancedPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError;
- (id)createAdvancedPlayerWithRingtoneData:(id)data error:(id *)error;
- (id)createAdvancedPlayerWithRingtonePattern:(id)pattern error:(id *)error;
- (id)createAdvancedPlayerWithVibePatternDictionary:(id)dictionary error:(id *)error;
- (id)createHapticPlayerWithOptions:(id)options;
- (id)createOptionsFromAudioSessionID:(unsigned int)d shared:(BOOL)shared bypassAudioSession:(BOOL)session;
- (id)createPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError;
- (id)createPrivilegedPlayerWithPlayable:(id)playable error:(id *)error;
- (id)getAvailableChannel:(id *)channel;
- (id)getMetricsForPlayer:(id)player;
- (id)getUsageCategory:(id)category;
- (int64_t)getReporterIDFromAVAudioSession:(id)session;
- (unint64_t)doRegisterAudioResource:(id)resource options:(id)options fromPattern:(BOOL)pattern error:(id *)error;
- (unint64_t)idForPublicAudioResourceURL:(id)l withOptions:(id)options;
- (unsigned)getSessionIDFromAVAudioSession:(id)session;
- (void)addPublicAudioResourceID:(unint64_t)d withURL:(id)l options:(id)options;
- (void)beginIdleTimer;
- (void)cancelIdleTimer;
- (void)connectAudioSession:(id)session;
- (void)createProcessTaskToken;
- (void)dealloc;
- (void)deallocateProcessTaskToken;
- (void)disconnectAudioSession:(id)session;
- (void)dispatchOnLocal:(id)local;
- (void)dispatchSyncOnLocal:(id)local;
- (void)doStartWithCompletionHandler:(id)handler;
- (void)doStopWithCompletionHandler:(id)handler;
- (void)doUnregisterAllAudioResources;
- (void)doUnregisterAllPublicAudioResources;
- (void)handleConnectionError;
- (void)handleFinish:(id)finish;
- (void)handleMediaServerDeath:(id)death;
- (void)handleMediaServerRecovery:(id)recovery;
- (void)notifyPlayerStopped:(id)stopped atTime:(double)time;
- (void)notifyWhenPlayersFinished:(CHHapticEngineFinishedHandler)finishedHandler;
- (void)prewarmWithCompletionHandler:(id)handler;
- (void)reconfigureAudioSession;
- (void)releaseChannel:(id)channel;
- (void)removePublicAudioResourceID:(unint64_t)d;
- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled;
- (void)setAutoShutdownTimeout:(double)timeout;
- (void)setIsMutedForAudio:(BOOL)isMutedForAudio;
- (void)setIsMutedForHaptics:(BOOL)isMutedForHaptics;
- (void)setMuteHapticsWhileRecordingAudio:(BOOL)audio;
- (void)setPlaysAudioOnly:(BOOL)playsAudioOnly;
- (void)setPlaysHapticsOnly:(BOOL)playsHapticsOnly;
- (void)startIdleTimerWithHandler:(id)handler;
- (void)startWithCompletionHandler:(CHHapticCompletionHandler)completionHandler;
- (void)stopAndWait;
- (void)stopPrewarm;
- (void)stopWithCompletionHandler:(CHHapticCompletionHandler)completionHandler;
- (void)storeOptions:(id)options;
- (void)toggleBehavior:(unint64_t)behavior set:(BOOL)set;
- (void)updateAudioConfigurations:(id)configurations session:(id)session;
- (void)updateEngineBehavior;
- (void)updateEngineBehaviorWithError:(id *)error;
@end

@implementation CHHapticEngine

- (id).cxx_construct
{
  self->_processTaskTokenDict.fObj.fObj = xpc_null_create();
  self->_publicAudioResources.__tree_.__size_ = 0;
  self->_publicAudioResources.__tree_.__end_node_.__left_ = 0;
  self->_publicAudioResources.__tree_.__begin_node_ = &self->_publicAudioResources.__tree_.__end_node_;
  return self;
}

- (void)stopPrewarm
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = CALog::Scope::oslog(kHAPIScope);
  v4 = os_signpost_id_make_with_pointer(v3, self);

  v5 = CALog::Scope::oslog(kHAPIScope);
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HapticEngine_stopPrewarm", " enableTelemetry=YES ", &v11, 2u);
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1224;
    v15 = 2080;
    v16 = "[CHHapticEngine stopPrewarm]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Stopping prewarm on the underlying Haptic Player", &v11, 0x1Cu);
  }

LABEL_11:
  [(AVHapticPlayer *)self->_player stopPrewarm];
  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_END, v4, "HapticEngine_stopPrewarm", &unk_215703E5B, &v11, 2u);
  }
}

- (void)createProcessTaskToken
{
  v22 = *MEMORY[0x277D85DE8];
  self->_processTaskToken = 0;
  v3 = xpc_null_create();
  v4 = xpc_null_create();

  fObj = self->_processTaskTokenDict.fObj.fObj;
  self->_processTaskTokenDict.fObj.fObj = v3;

  token = 0;
  v6 = task_create_identity_token(*MEMORY[0x277D85F48], &token);
  if (!v6)
  {
    self->_processTaskToken = token;
    applesauce::xpc::dict::create(buf);
    v8 = *buf;
    v9 = xpc_null_create();
    v10 = *buf;
    *buf = v9;

    v11 = self->_processTaskTokenDict.fObj.fObj;
    self->_processTaskTokenDict.fObj.fObj = v8;

    v12 = *buf;
    *buf = 0;

    v7 = CALog::Scope::oslog(&self->_processTaskTokenDict.fObj.fObj);
    xpc_dictionary_set_mach_send();
LABEL_9:

    return;
  }

  if (!kHAPIScope)
  {
    v7 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
LABEL_7:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 969;
      v18 = 2080;
      v19 = "[CHHapticEngine createProcessTaskToken]";
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR creating identify token with error %d. Resource memory usage will be billed to server", buf, 0x22u);
    }

    goto LABEL_9;
  }

  v7 = *kHAPIScope;
  if (v7)
  {
    goto LABEL_7;
  }
}

- (void)updateEngineBehavior
{
  v14 = *MEMORY[0x277D85DE8];
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

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "CHHapticEngine.mm";
    v8 = 1024;
    v9 = 865;
    v10 = 2080;
    v11 = "[CHHapticEngine updateEngineBehavior]";
    v12 = 1024;
    currentPlayerBehavior = [(CHHapticEngine *)self currentPlayerBehavior];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Setting player's behavior to 0x%x", &v6, 0x22u);
  }

LABEL_8:
  [(AVHapticPlayer *)self->_player setBehavior:[(CHHapticEngine *)self currentPlayerBehavior]];
}

+ (id)capabilitiesForHardware
{
  if (+[CHHapticEngine capabilitiesForHardware]::onceToken != -1)
  {
    +[CHHapticEngine capabilitiesForHardware];
  }

  v3 = +[CHHapticEngine capabilitiesForHardware]::sDefaultHardwareCapabilities;

  return v3;
}

- (void)reconfigureAudioSession
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NSString *)self->_usageCategory isEqualToString:@"SystemSound"])
  {
    avAudioSession = [(CHHapticEngine *)self avAudioSession];
    v4 = [avAudioSession setCategory:*MEMORY[0x277CEFC78] withOptions:2 error:0];

    if ((v4 & 1) == 0)
    {
      if (kHAPIScope)
      {
        v5 = *kHAPIScope;
        if (!v5)
        {
          return;
        }
      }

      else
      {
        v5 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315650;
        v8 = "CHHapticEngine.mm";
        v9 = 1024;
        v10 = 1140;
        v11 = 2080;
        v12 = "[CHHapticEngine reconfigureAudioSession]";
        _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot reconfigure audio session for system sound", &v7, 0x1Cu);
      }
    }
  }
}

uint64_t __41__CHHapticEngine_capabilitiesForHardware__block_invoke()
{
  +[CHHapticEngine capabilitiesForHardware]::sDefaultHardwareCapabilities = [[CHDefaultHapticDeviceCapability alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)setupUnsharedAudioSession:(id)session isConstantVolume:(BOOL)volume needsAudioPowerBudget:(BOOL)budget error:(id *)error
{
  budgetCopy = budget;
  volumeCopy = volume;
  v36 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"following ringer";
    *v31 = 136315906;
    *&v31[4] = "CHHapticEngineUsageCategory.mm";
    if (volumeCopy)
    {
      v12 = @"with constant";
    }

    *&v31[12] = 1024;
    *&v31[14] = 45;
    v32 = 2080;
    v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting SS&H category %@ volume, disabling notifications and NowPlaying for this audio session", v31, 0x26u);
  }

LABEL_10:
  v13 = *MEMORY[0x277CEFC80];
  if ([sessionCopy setCategory:v13 error:error])
  {
    v14 = *MEMORY[0x277CEFC88];
    if (volumeCopy)
    {
      v15 = *MEMORY[0x277CEFC90];

      v14 = v15;
    }

    if (([sessionCopy setMode:v14 error:{error, *v31, *&v31[8]}] & 1) == 0)
    {
      if (kHAPIScope)
      {
        v16 = *kHAPIScope;
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v31 = 136315906;
        *&v31[4] = "CHHapticEngineUsageCategory.mm";
        *&v31[12] = 1024;
        *&v31[14] = 56;
        v32 = 2080;
        v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set mode %@ on audio session. Continue", v31, 0x26u);
      }
    }

LABEL_27:
    if ([sessionCopy setAudioHardwareControlFlags:1179648 error:error])
    {
      goto LABEL_35;
    }

    if (kHAPIScope)
    {
      v20 = *kHAPIScope;
      if (!v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315650;
      *&v31[4] = "CHHapticEngineUsageCategory.mm";
      *&v31[12] = 1024;
      *&v31[14] = 61;
      v32 = 2080;
      v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio session with session flags. Continue", v31, 0x1Cu);
    }

LABEL_35:
    if ([sessionCopy setPreferredIOBufferFrameSize:256 error:error])
    {
      goto LABEL_43;
    }

    if (kHAPIScope)
    {
      v22 = *kHAPIScope;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v22 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315906;
      *&v31[4] = "CHHapticEngineUsageCategory.mm";
      *&v31[12] = 1024;
      *&v31[14] = 64;
      v32 = 2080;
      v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      v34 = 1024;
      LODWORD(v35) = 256;
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio buffer frame size to %u. Using default buffer size", v31, 0x22u);
    }

LABEL_43:
    if ([sessionCopy enableNotifications:0 error:error])
    {
      if ([sessionCopy setParticipatesInNowPlayingAppPolicy:0 error:error])
      {
        if (!budgetCopy)
        {
          goto LABEL_53;
        }

        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v24 = *kHAPIScope;
            if (v24)
            {
              v25 = v24;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *v31 = 136315650;
                *&v31[4] = "CHHapticEngineUsageCategory.mm";
                *&v31[12] = 1024;
                *&v31[14] = 77;
                v32 = 2080;
                v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
                _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting NeedsPowerBudgeting property on audio session", v31, 0x1Cu);
              }
            }
          }
        }

        if ([sessionCopy setNeedsHighPowerBudgeting:1 error:error])
        {
LABEL_53:
          LOBYTE(v17) = 1;
LABEL_69:

          goto LABEL_70;
        }

        if (kHAPIScope)
        {
          v17 = *kHAPIScope;
          if (!v17)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v17 = MEMORY[0x277D86220];
          v30 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        *v31 = 136315650;
        *&v31[4] = "CHHapticEngineUsageCategory.mm";
        *&v31[12] = 1024;
        *&v31[14] = 79;
        v32 = 2080;
        v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
        v27 = "%25s:%-5d %s: Failed to set audio session NeedsPowerBudgeting";
      }

      else
      {
        if (kHAPIScope)
        {
          v17 = *kHAPIScope;
          if (!v17)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v17 = MEMORY[0x277D86220];
          v28 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        *v31 = 136315650;
        *&v31[4] = "CHHapticEngineUsageCategory.mm";
        *&v31[12] = 1024;
        *&v31[14] = 72;
        v32 = 2080;
        v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
        v27 = "%25s:%-5d %s: Failed to disable audio session now-playing policy";
      }
    }

    else
    {
      if (kHAPIScope)
      {
        v17 = *kHAPIScope;
        if (!v17)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v17 = MEMORY[0x277D86220];
        v26 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      *v31 = 136315650;
      *&v31[4] = "CHHapticEngineUsageCategory.mm";
      *&v31[12] = 1024;
      *&v31[14] = 67;
      v32 = 2080;
      v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      v27 = "%25s:%-5d %s: Failed to disable audio session notifications";
    }

    _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, v27, v31, 0x1Cu);
LABEL_67:

LABEL_68:
    LOBYTE(v17) = 0;
    goto LABEL_69;
  }

  if (!kHAPIScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
LABEL_21:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v31 = 136315650;
      *&v31[4] = "CHHapticEngineUsageCategory.mm";
      *&v31[12] = 1024;
      *&v31[14] = 48;
      v32 = 2080;
      v33 = "[CHHapticEngine(EngineUsageCategory) setupUnsharedAudioSession:isConstantVolume:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set category on audio session", v31, 0x1Cu);
    }

    goto LABEL_68;
  }

  v14 = *kHAPIScope;
  if (v14)
  {
    goto LABEL_21;
  }

  LOBYTE(v17) = 0;
LABEL_70:

  return v17;
}

- (BOOL)setupSystemSoundAudioSession:(id)session needsAudioPowerBudget:(BOOL)budget error:(id *)error
{
  budgetCopy = budget;
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136315650;
    v32 = "CHHapticEngineUsageCategory.mm";
    v33 = 1024;
    v34 = 92;
    v35 = 2080;
    v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting for System Sound, disabling notifications and NowPlaying for this audio session", &v31, 0x1Cu);
  }

LABEL_8:
  if (([sessionCopy setCategory:*MEMORY[0x277CEFC78] withOptions:2 error:error] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v31 = 136315650;
    v32 = "CHHapticEngineUsageCategory.mm";
    v33 = 1024;
    v34 = 96;
    v35 = 2080;
    v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v13 = "%25s:%-5d %s: Failed to set category on audio session";
    goto LABEL_42;
  }

  if (([sessionCopy setAudioHardwareControlFlags:18 error:error] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315650;
      v32 = "CHHapticEngineUsageCategory.mm";
      v33 = 1024;
      v34 = 101;
      v35 = 2080;
      v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio session with session flags. Continue", &v31, 0x1Cu);
    }
  }

LABEL_23:
  if ([sessionCopy setPreferredIOBufferFrameSize:512 error:error])
  {
    goto LABEL_31;
  }

  if (kHAPIScope)
  {
    v15 = *kHAPIScope;
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v31 = 136315906;
    v32 = "CHHapticEngineUsageCategory.mm";
    v33 = 1024;
    v34 = 104;
    v35 = 2080;
    v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v37 = 1024;
    v38 = 512;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio buffer frame size to %u", &v31, 0x22u);
  }

LABEL_31:
  if (([sessionCopy enableNotifications:0 error:error] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v31 = 136315650;
    v32 = "CHHapticEngineUsageCategory.mm";
    v33 = 1024;
    v34 = 108;
    v35 = 2080;
    v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v13 = "%25s:%-5d %s: Failed to disable audio session notifications";
    goto LABEL_42;
  }

  if (([sessionCopy setPrefersNoDucking:1 error:error] & 1) == 0)
  {
    if (kHAPIScope)
    {
      v17 = *kHAPIScope;
      if (!v17)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315650;
      v32 = "CHHapticEngineUsageCategory.mm";
      v33 = 1024;
      v34 = 112;
      v35 = 2080;
      v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set not to be ducked by others", &v31, 0x1Cu);
    }
  }

LABEL_48:
  if ([sessionCopy setParticipatesInNowPlayingAppPolicy:0 error:error])
  {
    goto LABEL_56;
  }

  if (kHAPIScope)
  {
    v21 = *kHAPIScope;
    if (!v21)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v31 = 136315650;
    v32 = "CHHapticEngineUsageCategory.mm";
    v33 = 1024;
    v34 = 115;
    v35 = 2080;
    v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to disable audio session now-playing policy", &v31, 0x1Cu);
  }

LABEL_56:
  LODWORD(v20) = 1036831949;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v24 = [sessionCopy setDuckToLevelScalar:v23 error:error];

  if ((v24 & 1) == 0)
  {
    if (kHAPIScope)
    {
      v25 = *kHAPIScope;
      if (!v25)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315650;
      v32 = "CHHapticEngineUsageCategory.mm";
      v33 = 1024;
      v34 = 118;
      v35 = 2080;
      v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to set duck level", &v31, 0x1Cu);
    }
  }

LABEL_64:
  if (!budgetCopy)
  {
    goto LABEL_72;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v27 = *kHAPIScope;
      if (v27)
      {
        v28 = v27;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v31 = 136315650;
          v32 = "CHHapticEngineUsageCategory.mm";
          v33 = 1024;
          v34 = 121;
          v35 = 2080;
          v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
          _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting NeedsPowerBudgeting property on audio session", &v31, 0x1Cu);
        }
      }
    }
  }

  if ([sessionCopy setNeedsHighPowerBudgeting:1 error:error])
  {
LABEL_72:
    LOBYTE(v11) = 1;
    goto LABEL_73;
  }

  if (kHAPIScope)
  {
    v11 = *kHAPIScope;
    if (!v11)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v30 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v31 = 136315650;
    v32 = "CHHapticEngineUsageCategory.mm";
    v33 = 1024;
    v34 = 123;
    v35 = 2080;
    v36 = "[CHHapticEngine(EngineUsageCategory) setupSystemSoundAudioSession:needsAudioPowerBudget:error:]";
    v13 = "%25s:%-5d %s: Failed to set audio session NeedsPowerBudgeting";
LABEL_42:
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, v13, &v31, 0x1Cu);
  }

LABEL_43:

  LOBYTE(v11) = 0;
LABEL_73:

  return v11;
}

- (id)getUsageCategory:(id)category
{
  categoryCopy = category;
  v4 = categoryCopy;
  if (categoryCopy)
  {
    v5 = [categoryCopy valueForKey:@"UsageCategory"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setupEngineWithCategory:(id)category session:(id)session needsAudioPowerBudget:(BOOL)budget error:(id *)error
{
  budgetCopy = budget;
  v32 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  sessionCopy = session;
  if (([categoryCopy isEqualToString:@"UIFeedback"] & 1) == 0 && (objc_msgSend(categoryCopy, "isEqualToString:", @"DefaultWithConstantVolume") & 1) == 0)
  {
    if ([categoryCopy isEqualToString:@"iOSKeyboard"])
    {
      v14 = [(CHHapticEngine *)self setupUnsharedAudioSession:sessionCopy isConstantVolume:1 needsAudioPowerBudget:budgetCopy error:error];
      if (!v14)
      {
        if (kHAPIScope)
        {
          v17 = *kHAPIScope;
          if (!v17)
          {
            v14 = 0;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = MEMORY[0x277D86220];
          v19 = MEMORY[0x277D86220];
        }

        v20 = v17;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315906;
          v25 = "CHHapticEngineUsageCategory.mm";
          v26 = 1024;
          v27 = 153;
          v28 = 2080;
          v29 = "[CHHapticEngine(EngineUsageCategory) setupEngineWithCategory:session:needsAudioPowerBudget:error:]";
          v30 = 1024;
          opaqueSessionID = [sessionCopy opaqueSessionID];
          v21 = "%25s:%-5d %s: Cannot configure audio session %u";
LABEL_29:
          _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, v21, &v24, 0x22u);
        }

LABEL_30:

        goto LABEL_6;
      }

      if (([sessionCopy setPrefersNoDucking:1 error:error] & 1) == 0)
      {
        if (kHAPIScope)
        {
          v16 = *kHAPIScope;
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v16 = MEMORY[0x277D86220];
          v22 = MEMORY[0x277D86220];
        }

        v20 = v16;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315906;
          v25 = "CHHapticEngineUsageCategory.mm";
          v26 = 1024;
          v27 = 158;
          v28 = 2080;
          v29 = "[CHHapticEngine(EngineUsageCategory) setupEngineWithCategory:session:needsAudioPowerBudget:error:]";
          v30 = 1024;
          opaqueSessionID = [sessionCopy opaqueSessionID];
          v21 = "%25s:%-5d %s: Cannot set session %u prefering no ducking. Continue";
          goto LABEL_29;
        }

        goto LABEL_30;
      }

LABEL_19:
      v14 = 1;
      goto LABEL_6;
    }

    if ([categoryCopy isEqualToString:@"SystemSound"])
    {
      v13 = [(CHHapticEngine *)self setupSystemSoundAudioSession:sessionCopy needsAudioPowerBudget:budgetCopy error:error];
      goto LABEL_5;
    }

    if ([categoryCopy isEqualToString:@"SystemSoundHapticsParser"])
    {
      goto LABEL_19;
    }

    if (kHAPIScope)
    {
      v18 = *kHAPIScope;
      if (!v18)
      {
LABEL_35:
        v12 = 0;
        goto LABEL_4;
      }
    }

    else
    {
      v18 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315650;
      v25 = "CHHapticEngineUsageCategory.mm";
      v26 = 1024;
      v27 = 174;
      v28 = 2080;
      v29 = "[CHHapticEngine(EngineUsageCategory) setupEngineWithCategory:session:needsAudioPowerBudget:error:]";
      _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Using default usage category", &v24, 0x1Cu);
    }

    goto LABEL_35;
  }

  v12 = 1;
LABEL_4:
  v13 = [(CHHapticEngine *)self setupUnsharedAudioSession:sessionCopy isConstantVolume:v12 needsAudioPowerBudget:budgetCopy error:error];
LABEL_5:
  v14 = v13;
LABEL_6:

  return v14;
}

- (void)updateAudioConfigurations:(id)configurations session:(id)session
{
  v26 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  sessionCopy = session;
  if (!configurationsCopy || ![configurationsCopy isEqualToString:@"iOSKeyboard"])
  {
    goto LABEL_10;
  }

  if ([(CHHapticEngine *)self playsAudioOnly]|| [(CHHapticEngine *)self playsHapticsOnly])
  {
    if ([(CHHapticEngine *)self playsAudioOnly])
    {
      v14 = 0;
      v8 = [sessionCopy setPreferredIOBufferFrameSize:1024 error:&v14];
      v9 = v14;
      if ((v8 & 1) == 0)
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
          v12 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 136316162;
        v17 = "CHHapticEngineUsageCategory.mm";
        v18 = 1024;
        v19 = 192;
        v20 = 2080;
        v21 = "[CHHapticEngine(EngineUsageCategory) updateAudioConfigurations:session:]";
        v22 = 1024;
        v23 = 1024;
        v24 = 2112;
        v25 = v9;
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  v11 = [sessionCopy setPreferredIOBufferFrameSize:256 error:&v15];
  v9 = v15;
  if ((v11 & 1) == 0)
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
      v13 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136316162;
    v17 = "CHHapticEngineUsageCategory.mm";
    v18 = 1024;
    v19 = 186;
    v20 = 2080;
    v21 = "[CHHapticEngine(EngineUsageCategory) updateAudioConfigurations:session:]";
    v22 = 1024;
    v23 = 256;
    v24 = 2112;
    v25 = v9;
LABEL_22:
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set audio buffer frame size to %u. Error: %@", buf, 0x2Cu);
LABEL_23:
  }

LABEL_11:
}

+ (void)clearResourceMap
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v4 = ResourceRegistry::instance(v3);
  if (!ResourceRegistry::empty(v4))
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_9:
        ResourceRegistry::clear(v4);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 309;
      v11 = 2080;
      v12 = "+[CHHapticEngine clearResourceMap]";
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Clearing resource map", &v7, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  std::mutex::unlock(v2);
}

- (void)toggleBehavior:(unint64_t)behavior set:(BOOL)set
{
  setCopy = set;
  currentPlayerBehavior = [(CHHapticEngine *)self currentPlayerBehavior];
  if (setCopy)
  {
    v8 = currentPlayerBehavior | behavior;
  }

  else
  {
    v8 = currentPlayerBehavior & ~behavior;
  }

  [(CHHapticEngine *)self setCurrentPlayerBehavior:v8];
}

- (void)setPlaysHapticsOnly:(BOOL)playsHapticsOnly
{
  v3 = playsHapticsOnly;
  serverConfig = [(CHHapticEngine *)self serverConfig];
  if ([serverConfig supportsHapticPlayback])
  {
    serverConfig2 = [(CHHapticEngine *)self serverConfig];
    supportsAudioPlayback = [serverConfig2 supportsAudioPlayback];

    if (supportsAudioPlayback)
    {

      [(CHHapticEngine *)self toggleBehavior:1 set:v3];
    }
  }

  else
  {
  }
}

- (void)setPlaysAudioOnly:(BOOL)playsAudioOnly
{
  v3 = playsAudioOnly;
  serverConfig = [(CHHapticEngine *)self serverConfig];
  if ([serverConfig supportsHapticPlayback])
  {
    serverConfig2 = [(CHHapticEngine *)self serverConfig];
    supportsAudioPlayback = [serverConfig2 supportsAudioPlayback];

    if (!supportsAudioPlayback)
    {
      return;
    }

    [(CHHapticEngine *)self toggleBehavior:16 set:v3];
    serverConfig = [(CHHapticEngine *)self usageCategory];
    avAudioSession = [(CHHapticEngine *)self avAudioSession];
    [(CHHapticEngine *)self updateAudioConfigurations:serverConfig session:avAudioSession];
  }
}

- (void)setMuteHapticsWhileRecordingAudio:(BOOL)audio
{
  [(CHHapticEngine *)self toggleBehavior:512 set:!audio];

  [(CHHapticEngine *)self updateEngineBehavior];
}

- (void)setIsMutedForAudio:(BOOL)isMutedForAudio
{
  [(CHHapticEngine *)self toggleBehavior:32 set:isMutedForAudio];

  [(CHHapticEngine *)self updateEngineBehavior];
}

- (void)setIsMutedForHaptics:(BOOL)isMutedForHaptics
{
  [(CHHapticEngine *)self toggleBehavior:64 set:isMutedForHaptics];

  [(CHHapticEngine *)self updateEngineBehavior];
}

- (void)setAutoShutdownEnabled:(BOOL)autoShutdownEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_autoShutdownEnabled != autoShutdownEnabled)
  {
    v3 = autoShutdownEnabled;
    self->_autoShutdownEnabled = autoShutdownEnabled;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v3)
    {
      if ([(CHHapticEngine *)selfCopy running])
      {
        if (kHAPIScope)
        {
          v5 = *kHAPIScope;
          if (!v5)
          {
LABEL_19:
            objc_initWeak(buf, selfCopy);
            player = [(CHHapticEngine *)selfCopy player];
            v11[0] = MEMORY[0x277D85DD0];
            v11[1] = 3221225472;
            v11[2] = __41__CHHapticEngine_setAutoShutdownEnabled___block_invoke;
            v11[3] = &unk_2781C8FE0;
            objc_copyWeak(&v12, buf);
            [player finishWithCompletionHandler:v11];

            objc_destroyWeak(&v12);
            objc_destroyWeak(buf);
            goto LABEL_20;
          }
        }

        else
        {
          v5 = MEMORY[0x277D86220];
          v8 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v14 = "CHHapticEngine.mm";
          v15 = 1024;
          v16 = 417;
          v17 = 2080;
          v18 = "[CHHapticEngine setAutoShutdownEnabled:]";
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: auto-shutdown being enabled while running - wait for any existing players", buf, 0x1Cu);
        }

        goto LABEL_19;
      }

LABEL_20:
      objc_sync_exit(selfCopy);

      return;
    }

    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_14:
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __41__CHHapticEngine_setAutoShutdownEnabled___block_invoke_160;
        v10[3] = &unk_2781C9700;
        v10[4] = selfCopy;
        [(CHHapticEngine *)selfCopy dispatchOnLocal:v10];
        goto LABEL_20;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 429;
      v17 = 2080;
      v18 = "[CHHapticEngine setAutoShutdownEnabled:]";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: auto-shutdown being disabled", buf, 0x1Cu);
    }

    goto LABEL_14;
  }
}

void __41__CHHapticEngine_setAutoShutdownEnabled___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 420;
    v15 = 2080;
    v16 = "[CHHapticEngine setAutoShutdownEnabled:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of AV finishWithCompletionHandler block>", &v11, 0x1Cu);
  }

LABEL_8:
  if (!v3)
  {
    goto LABEL_16;
  }

  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315906;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 421;
    v15 = 2080;
    v16 = "[CHHapticEngine setAutoShutdownEnabled:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: finishWithCompletionHandler callback returned error: %@", &v11, 0x26u);
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFinish:v3];
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 424;
    v15 = 2080;
    v16 = "[CHHapticEngine setAutoShutdownEnabled:]_block_invoke";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of AV finishWithCompletionHandler block>", &v11, 0x1Cu);
  }

LABEL_23:
}

- (NSString)locality
{
  serverConfig = [(CHHapticEngine *)self serverConfig];
  currentLocality = [serverConfig currentLocality];

  return currentLocality;
}

- (void)setAutoShutdownTimeout:(double)timeout
{
  v14 = *MEMORY[0x277D85DE8];
  if (timeout >= 0.0)
  {
    self->_runTimeout = timeout;
    return;
  }

  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315906;
    v7 = "CHHapticEngine.mm";
    v8 = 1024;
    v9 = 479;
    v10 = 2080;
    v11 = "[CHHapticEngine setAutoShutdownTimeout:]";
    v12 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid shutdown timeout (%f) being ignored", &v6, 0x26u);
  }
}

- (void)handleMediaServerDeath:(id)death
{
  v19 = *MEMORY[0x277D85DE8];
  deathCopy = death;
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 501;
    v15 = 2080;
    v16 = "[CHHapticEngine handleMediaServerDeath:]";
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine %p was notified of server death", &v11, 0x26u);
  }

LABEL_8:
  +[CHHapticEngine clearResourceMap];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (kHAPIScope)
  {
    v8 = *kHAPIScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 504;
    v15 = 2080;
    v16 = "[CHHapticEngine handleMediaServerDeath:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Clearing public audio resources", &v11, 0x1Cu);
  }

LABEL_15:
  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(&selfCopy2->_publicAudioResources, selfCopy2->_publicAudioResources.__tree_.__end_node_.__left_);
  player = selfCopy2->_player;
  selfCopy2->_publicAudioResources.__tree_.__size_ = 0;
  selfCopy2->_player = 0;
  selfCopy2->_publicAudioResources.__tree_.__begin_node_ = &selfCopy2->_publicAudioResources.__tree_.__end_node_;
  selfCopy2->_publicAudioResources.__tree_.__end_node_.__left_ = 0;

  objc_sync_exit(selfCopy2);
}

- (void)handleMediaServerRecovery:(id)recovery
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CHHapticEngine_handleMediaServerRecovery___block_invoke;
  v4[3] = &unk_2781C9728;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [CHHapticEngine dispatchOnGlobal:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__CHHapticEngine_handleMediaServerRecovery___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = CALog::Scope::oslog(kHAPIScope);
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));

  v4 = CALog::Scope::oslog(kHAPIScope);
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "HapticEngine_handleMediaServerRecovery", " enableTelemetry=YES ", buf, 2u);
  }

  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    *buf = 136315906;
    v47 = "CHHapticEngine.mm";
    v48 = 1024;
    v49 = 516;
    v50 = 2080;
    v51 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
    v52 = 2048;
    v53 = WeakRetained;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Attempting to reconnect engine %p to server", buf, 0x26u);
  }

LABEL_11:
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = v10;
  if (v10)
  {
    if ([v10 isAutoShutdownEnabled])
    {
      [v11 cancelIdleTimer];
    }

    v12 = [v11 avAudioSession];
    *(v11 + 6) = [v11 getSessionIDFromAVAudioSession:v12];

    if (([v11 sessionIsShared] & 1) == 0)
    {
      v13 = [v11 usageCategory];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [v11 usageCategory];
        v16 = [v11 avAudioSession];
        v45 = 0;
        v17 = [v11 setupEngineWithCategory:v15 session:v16 needsAudioPowerBudget:objc_msgSend(v11 error:{"needsAudioPowerBudget"), &v45}];
        v18 = v45;

        if ((v17 & 1) == 0)
        {
          Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToSetUpA.isa, [v18 code]);
        }

LABEL_32:
        if (!*(v11 + 6))
        {
          Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToSetUpA_0.isa, -4815);
        }

        v22 = [*(a1 + 32) createOptionsFromAudioSessionID:objc_msgSend(v11 shared:"audioSessionID") bypassAudioSession:{objc_msgSend(v11, "sessionIsShared"), 0}];
        v23 = [v11 createHapticPlayerWithOptions:v22];
        v24 = v11[9];
        v11[9] = v23;

        v25 = [HapticServerConfig alloc];
        v26 = v11[9];
        v27 = v11[24];
        v44 = v18;
        v28 = [(HapticServerConfig *)v25 initWithHapticPlayer:v26 withOptions:v27 error:&v44];
        v29 = v44;

        v30 = v11[17];
        v11[17] = v28;

        if (v29)
        {
          Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToRecrea.isa, [v29 code]);
        }

        v43 = 0;
        v31 = [v11 finishInit:&v43];
        v32 = v43;

        v33 = v32;
        if (!v31)
        {
          goto LABEL_54;
        }

        v34 = [v11 resetHandler];
        v35 = v34 == 0;

        if (v35)
        {
LABEL_46:
          if (kHAPIScope)
          {
            v39 = *kHAPIScope;
            if (!v39)
            {
LABEL_53:
              v41 = [v11 metrics];
              [v41 handleServerRecovery];

LABEL_54:
              v42 = CALog::Scope::oslog(kHAPIScope);
              v19 = v42;
              if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_21569A000, v19, OS_SIGNPOST_INTERVAL_END, v3, "HapticEngine_handleMediaServerRecovery", &unk_215703E5B, buf, 2u);
              }

              goto LABEL_57;
            }
          }

          else
          {
            v39 = MEMORY[0x277D86220];
            v40 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v47 = "CHHapticEngine.mm";
            v48 = 1024;
            v49 = 557;
            v50 = 2080;
            v51 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
            v52 = 2048;
            v53 = v11;
            _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done with reconnect for engine %p", buf, 0x26u);
          }

          goto LABEL_53;
        }

        if (kHAPIScope)
        {
          v36 = *kHAPIScope;
          if (!v36)
          {
LABEL_45:
            v38 = [v11 resetHandler];
            v38[2]();

            goto LABEL_46;
          }
        }

        else
        {
          v36 = MEMORY[0x277D86220];
          v37 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v47 = "CHHapticEngine.mm";
          v48 = 1024;
          v49 = 554;
          v50 = 2080;
          v51 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
          _os_log_impl(&dword_21569A000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling engine-reset handler on default queue", buf, 0x1Cu);
        }

        goto LABEL_45;
      }

      if (kHAPIScope)
      {
        v18 = *kHAPIScope;
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v47 = "CHHapticEngine.mm";
        v48 = 1024;
        v49 = 536;
        v50 = 2080;
        v51 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
        _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine had external passed-in auxiliary session. Caller should reconfigure session", buf, 0x1Cu);
      }
    }

    v18 = 0;
    goto LABEL_32;
  }

  if (kHAPIScope)
  {
    v19 = *kHAPIScope;
    if (!v19)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v47 = "CHHapticEngine.mm";
    v48 = 1024;
    v49 = 519;
    v50 = 2080;
    v51 = "[CHHapticEngine handleMediaServerRecovery:]_block_invoke";
    _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine already destroyed - noop", buf, 0x1Cu);
  }

LABEL_57:

LABEL_58:
}

- (void)connectAudioSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = AVFASoftLink::getAVAudioSessionMediaServicesWereLostNotification(defaultCenter);
    [(AVFASoftLink *)defaultCenter addObserver:self selector:sel_handleMediaServerDeath_ name:v5 object:sessionCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = AVFASoftLink::getAVAudioSessionMediaServicesWereResetNotification(defaultCenter2);
    [(AVFASoftLink *)defaultCenter2 addObserver:self selector:sel_handleMediaServerRecovery_ name:v7 object:sessionCopy];
  }
}

- (void)disconnectAudioSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = AVFASoftLink::getAVAudioSessionMediaServicesWereResetNotification(defaultCenter);
    [(AVFASoftLink *)defaultCenter removeObserver:self name:v5 object:sessionCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = AVFASoftLink::getAVAudioSessionMediaServicesWereLostNotification(defaultCenter2);
    [(AVFASoftLink *)defaultCenter2 removeObserver:self name:v7 object:sessionCopy];
  }
}

- (unsigned)getSessionIDFromAVAudioSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v4 = sessionCopy;
  if (sessionCopy)
  {
    AVFASoftLink::getAVAudioSession(sessionCopy);
    LODWORD(v5) = [(AVFASoftLink *)v4 opaqueSessionID];
  }

  else
  {
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
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 603;
      v12 = 2080;
      v13 = "[CHHapticEngine getSessionIDFromAVAudioSession:]";
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No audio session used. Returning 0", &v8, 0x1Cu);
    }

    LODWORD(v5) = 0;
  }

LABEL_10:

  return v5;
}

- (int64_t)getReporterIDFromAVAudioSession:(id)session
{
  sessionCopy = session;
  AVFASoftLink::getAVAudioSession(sessionCopy);
  reporterID = [(AVFASoftLink *)sessionCopy reporterID];

  return reporterID;
}

- (id)createHapticPlayerWithOptions:(id)options
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (!kHAPIScope)
  {
    v4 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
    goto LABEL_5;
  }

  v4 = *kHAPIScope;
  if (v4)
  {
LABEL_5:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "CHHapticEngine.mm";
      v23 = 1024;
      v24 = 626;
      v25 = 2080;
      v26 = "[CHHapticEngine createHapticPlayerWithOptions:]";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating underlying Haptic Player", buf, 0x1Cu);
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D86220];
  *&v5 = 136315906;
  v19 = v5;
  do
  {
    if (v9)
    {
      if (kHAPIScope)
      {
        v11 = *kHAPIScope;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = v10;
        v11 = v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = v19;
        v22 = "CHHapticEngine.mm";
        v23 = 1024;
        v24 = 631;
        v25 = 2080;
        v26 = "[CHHapticEngine createHapticPlayerWithOptions:]";
        v27 = 1024;
        LODWORD(v28) = v9;
        _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Attempt #%d...", buf, 0x22u);
      }
    }

LABEL_17:
    v13 = [AVHapticPlayer alloc];
    v20 = v7;
    v14 = [(AVHapticPlayer *)v13 initWithOptions:optionsCopy error:&v20];
    v15 = v20;

    if (v9 > 4)
    {
      break;
    }

    ++v9;
    v7 = v15;
    v8 = v14;
  }

  while (v15);
  if (v15)
  {
    if (kHAPIScope)
    {
      v16 = *kHAPIScope;
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = v19;
      v22 = "CHHapticEngine.mm";
      v23 = 1024;
      v24 = 635;
      v25 = 2080;
      v26 = "[CHHapticEngine createHapticPlayerWithOptions:]";
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server failure: %@", buf, 0x26u);
    }

LABEL_28:
    Haptic_RaiseException(&cfstr_Chhapticerrorc.isa, &cfstr_FailedToConnec.isa, [v15 code]);
  }

  return v14;
}

- (void)handleConnectionError
{
  obj = self;
  objc_sync_enter(obj);
  player = obj->_player;
  obj->_player = 0;

  [(CHHapticEngine *)obj setRunning:0];
  objc_sync_exit(obj);
}

- (BOOL)finishInit:(id *)init
{
  v49 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __29__CHHapticEngine_finishInit___block_invoke;
  v34[3] = &unk_2781C8FE0;
  objc_copyWeak(&v35, &location);
  player = [(CHHapticEngine *)self player];
  [player setConnectionErrorHandler:v34];

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v44 = "CHHapticEngine.mm";
    v45 = 1024;
    v46 = 664;
    v47 = 2080;
    v48 = "[CHHapticEngine finishInit:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Allocating resources...", buf, 0x1Cu);
  }

LABEL_8:
  player2 = [(CHHapticEngine *)self player];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __29__CHHapticEngine_finishInit___block_invoke_185;
  v31[3] = &unk_2781C9750;
  v33 = &v36;
  v10 = v6;
  v32 = v10;
  [player2 allocateRenderResourcesWithCompletionHandler:v31];

  if (kHAPIScope)
  {
    v11 = *kHAPIScope;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v44 = "CHHapticEngine.mm";
    v45 = 1024;
    v46 = 673;
    v47 = 2080;
    v48 = "[CHHapticEngine finishInit:]";
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Waiting for server...", buf, 0x1Cu);
  }

LABEL_15:
  v13 = dispatch_time(0, 4000000000);
  if (!dispatch_group_wait(v10, v13))
  {
    goto LABEL_24;
  }

  if (!kHAPIScope)
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_20;
  }

  v14 = *kHAPIScope;
  if (v14)
  {
LABEL_20:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v44 = "CHHapticEngine.mm";
      v45 = 1024;
      v46 = 676;
      v47 = 2080;
      v48 = "[CHHapticEngine finishInit:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server timeout", buf, 0x1Cu);
    }
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4810 userInfo:0];
  v17 = v37[5];
  v37[5] = v16;

LABEL_24:
  if (init)
  {
    *init = v37[5];
  }

  v18 = v37[5];
  if (!v18)
  {
    sessionIsShared = [(CHHapticEngine *)self sessionIsShared];
    if (sessionIsShared)
    {
      if (kHAPIScope)
      {
        v20 = *kHAPIScope;
        if (!v20)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v20 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v44 = "CHHapticEngine.mm";
        v45 = 1024;
        v46 = 686;
        v47 = 2080;
        v48 = "[CHHapticEngine finishInit:]";
        v22 = "%25s:%-5d %s: Default behavior is to follow audio route";
LABEL_40:
        _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_DEBUG, v22, buf, 0x1Cu);
      }
    }

    else
    {
      if (kHAPIScope)
      {
        v20 = *kHAPIScope;
        if (!v20)
        {
LABEL_42:
          [(CHHapticEngine *)self setFollowAudioRoute:sessionIsShared];
          [(CHHapticEngine *)self updateEngineBehavior];
          objc_storeWeak(&location, self);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __29__CHHapticEngine_finishInit___block_invoke_186;
          v29[3] = &unk_2781C9778;
          objc_copyWeak(&v30, &location);
          v24 = MEMORY[0x21606F540](v29);
          player3 = [(CHHapticEngine *)self player];
          [player3 setStopRunningHandler:v24];

          if (kHAPIScope)
          {
            v26 = *kHAPIScope;
            if (!v26)
            {
LABEL_49:

              objc_destroyWeak(&v30);
              goto LABEL_50;
            }
          }

          else
          {
            v26 = MEMORY[0x277D86220];
            v27 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v44 = "CHHapticEngine.mm";
            v45 = 1024;
            v46 = 730;
            v47 = 2080;
            v48 = "[CHHapticEngine finishInit:]";
            _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Finished initializing", buf, 0x1Cu);
          }

          goto LABEL_49;
        }
      }

      else
      {
        v20 = MEMORY[0x277D86220];
        v23 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v44 = "CHHapticEngine.mm";
        v45 = 1024;
        v46 = 691;
        v47 = 2080;
        v48 = "[CHHapticEngine finishInit:]";
        v22 = "%25s:%-5d %s: Setting behavior to not follow audio route";
        goto LABEL_40;
      }
    }

    goto LABEL_42;
  }

LABEL_50:

  objc_destroyWeak(&v35);
  _Block_object_dispose(&v36, 8);

  objc_destroyWeak(&location);
  return v18 == 0;
}

void __29__CHHapticEngine_finishInit___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 localizedDescription];
    v14 = 136315906;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 656;
    v18 = 2080;
    v19 = "[CHHapticEngine finishInit:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server connection broke with error '%@'", &v14, 0x26u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionError];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 serverConfig];
  v11 = [v10 usingInternalHaptics];

  if (v11)
  {
    if (kHAPIScope)
    {
      v12 = *kHAPIScope;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 659;
      v18 = 2080;
      v19 = "[CHHapticEngine finishInit:]_block_invoke";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Waiting to reconnect", &v14, 0x1Cu);
    }
  }

LABEL_16:
}

void __29__CHHapticEngine_finishInit___block_invoke_185(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_9:
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 localizedDescription];
      v11 = 136315906;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 667;
      v15 = 2080;
      v16 = "[CHHapticEngine finishInit:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Resource allocation failure: %@", &v11, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 670;
    v15 = 2080;
    v16 = "[CHHapticEngine finishInit:]_block_invoke";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Releasing lock", &v11, 0x1Cu);
  }

LABEL_17:
  dispatch_group_leave(*(a1 + 32));
}

void __29__CHHapticEngine_finishInit___block_invoke_186(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 698;
    v13 = 2080;
    v14 = "[CHHapticEngine finishInit:]_block_invoke";
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: In player's stopRunningHandler block.  Stopped reason: %d", buf, 0x22u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__CHHapticEngine_finishInit___block_invoke_187;
  v7[3] = &unk_2781C9238;
  objc_copyWeak(v8, (a1 + 32));
  v8[1] = a2;
  [WeakRetained dispatchOnLocal:v7];

  objc_destroyWeak(v8);
}

void __29__CHHapticEngine_finishInit___block_invoke_187(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isAutoShutdownEnabled];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 cancelIdleTimer];
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (v5)
  {
    [v5 setRunning:0];
    v7 = [v6 stoppedHandler];

    if (v7)
    {
      v8 = *(a1 + 40) + 2;
      if (v8 >= 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = qword_2156F3A18[v8];
      }

      if (kHAPIScope)
      {
        v10 = *kHAPIScope;
        if (!v10)
        {
LABEL_15:
          v12 = [v6 stoppedHandler];
          v12[2](v12, v9);

          goto LABEL_16;
        }
      }

      else
      {
        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = "CHHapticEngine.mm";
        v15 = 1024;
        v16 = 723;
        v17 = 2080;
        v18 = "[CHHapticEngine finishInit:]_block_invoke";
        v19 = 1024;
        v20 = v9;
        _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling engine-stopped handler with reason %d", &v13, 0x22u);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)startIdleTimerWithHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (kHPWRScope)
  {
    v5 = *kHPWRScope;
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
    [(CHHapticEngine *)self autoShutdownTimeout];
    *buf = 136315906;
    v20 = "CHHapticEngine.mm";
    v21 = 1024;
    v22 = 752;
    v23 = 2080;
    v24 = "[CHHapticEngine startIdleTimerWithHandler:]";
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating idle timer for %.3f seconds", buf, 0x26u);
  }

LABEL_8:
  [(CHHapticEngine *)self autoShutdownTimeout];
  v10 = v9;
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__CHHapticEngine_startIdleTimerWithHandler___block_invoke;
  handler[3] = &unk_2781C9260;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);
  if (v13)
  {
    v14 = v10;
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(v13);
  }

  timer = self->_timer;
  self->_timer = v13;
}

uint64_t __44__CHHapticEngine_startIdleTimerWithHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (kHPWRScope)
  {
    v2 = *kHPWRScope;
    if (!v2)
    {
      return (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "CHHapticEngine.mm";
    v7 = 1024;
    v8 = 754;
    v9 = 2080;
    v10 = "[CHHapticEngine startIdleTimerWithHandler:]_block_invoke";
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling idle timeout handler on internal queue", &v5, 0x1Cu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)beginIdleTimer
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke;
  v3[3] = &unk_2781C9420;
  objc_copyWeak(&v4, &location);
  [(CHHapticEngine *)self dispatchOnLocal:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __32__CHHapticEngine_beginIdleTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (kHPWRScope)
  {
    v2 = *kHPWRScope;
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

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 763;
    v13 = 2080;
    v14 = "[CHHapticEngine beginIdleTimer]_block_invoke";
    _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Starting idle timer (on async dispatch)", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_initWeak(buf, WeakRetained);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke_189;
  v6[3] = &unk_2781C97A0;
  objc_copyWeak(&v8, buf);
  v7 = WeakRetained;
  v5 = WeakRetained;
  [v5 startIdleTimerWithHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __32__CHHapticEngine_beginIdleTimer__block_invoke_189(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHPWRScope)
  {
    v4 = *kHPWRScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "CHHapticEngine.mm";
    v12 = 1024;
    v13 = 767;
    v14 = 2080;
    v15 = "[CHHapticEngine beginIdleTimer]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Stopping engine in response to timeout", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke_190;
  v7[3] = &unk_2781C97A0;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  [WeakRetained stopWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
}

void __32__CHHapticEngine_beginIdleTimer__block_invoke_190(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) stoppedHandler];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__CHHapticEngine_beginIdleTimer__block_invoke_2;
    v5[3] = &unk_2781C9260;
    v6 = v3;
    v4 = v3;
    [WeakRetained dispatchOnLocal:v5];
  }
}

uint64_t __32__CHHapticEngine_beginIdleTimer__block_invoke_2(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHPWRScope)
    {
      v2 = *kHPWRScope;
      if (!v2)
      {
        return (*(*(v1 + 32) + 16))();
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "CHHapticEngine.mm";
      v6 = 1024;
      v7 = 775;
      v8 = 2080;
      v9 = "[CHHapticEngine beginIdleTimer]_block_invoke_2";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling client's engine-stopped handler on internal queue", &v4, 0x1Cu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)cancelIdleTimer
{
  v13 = *MEMORY[0x277D85DE8];
  timer = [(CHHapticEngine *)self timer];

  if (timer)
  {
    if (kHPWRScope)
    {
      v4 = *kHPWRScope;
      if (!v4)
      {
LABEL_9:
        timer2 = [(CHHapticEngine *)self timer];
        dispatch_source_cancel(timer2);

        [(CHHapticEngine *)self setTimer:0];
        return;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315650;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 788;
      v11 = 2080;
      v12 = "[CHHapticEngine cancelIdleTimer]";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Cancelling idle timer", &v7, 0x1Cu);
    }

    goto LABEL_9;
  }
}

- (void)handleFinish:(id)finish
{
  v30 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v21 = "CHHapticEngine.mm";
    v22 = 1024;
    v23 = 796;
    v24 = 2080;
    v25 = "[CHHapticEngine handleFinish:]";
    v26 = 2048;
    selfCopy = self;
    v28 = 2112;
    v29 = finishCopy;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Called on engine %p with error %@", buf, 0x30u);
  }

LABEL_8:
  objc_initWeak(&location, self);
  clientFinishedHandler = [(CHHapticEngine *)self clientFinishedHandler];
  stoppedHandler = [(CHHapticEngine *)self stoppedHandler];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__CHHapticEngine_handleFinish___block_invoke;
  v14[3] = &unk_2781C97C8;
  objc_copyWeak(&v18, &location);
  v9 = clientFinishedHandler;
  v16 = v9;
  v10 = finishCopy;
  v15 = v10;
  v11 = stoppedHandler;
  v17 = v11;
  [(CHHapticEngine *)self dispatchOnLocal:v14];
  if (kHAPIScope)
  {
    v12 = *kHAPIScope;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "CHHapticEngine.mm";
    v22 = 1024;
    v23 = 860;
    v24 = 2080;
    v25 = "[CHHapticEngine handleFinish:]";
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done handling finish", buf, 0x1Cu);
  }

LABEL_15:
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __31__CHHapticEngine_handleFinish___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 40))
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "CHHapticEngine.mm";
      v20 = 1024;
      v21 = 804;
      v22 = 2080;
      v23 = "[CHHapticEngine handleFinish:]_block_invoke";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling client's finishedHandler on internal queue", buf, 0x1Cu);
    }

LABEL_12:
    v6 = (*(*(a1 + 40) + 16))();
    if (v6 == 1)
    {
      if (kHAPIScope)
      {
        v7 = *kHAPIScope;
        if (!v7)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v7 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v19 = "CHHapticEngine.mm";
        v20 = 1024;
        v21 = 806;
        v22 = 2080;
        v23 = "[CHHapticEngine handleFinish:]_block_invoke";
        _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client requested engine stop-on-finish", buf, 0x1Cu);
      }
    }

LABEL_24:
    [WeakRetained setClientFinishedHandler:0];
    if (v6 == 1 && [*(a1 + 32) code] != -4805)
    {
      if (WeakRetained)
      {
        objc_initWeak(buf, WeakRetained);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __31__CHHapticEngine_handleFinish___block_invoke_191;
        v15[3] = &unk_2781C9058;
        objc_copyWeak(&v17, buf);
        v16 = *(a1 + 48);
        [WeakRetained doStopWithCompletionHandler:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(buf);
      }

      else
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __31__CHHapticEngine_handleFinish___block_invoke_194;
        v13[3] = &unk_2781C9260;
        v14 = *(a1 + 48);
        [CHHapticEngine dispatchOnGlobal:v13];
      }

      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v19 = "CHHapticEngine.mm";
    v20 = 1024;
    v21 = 812;
    v22 = 2080;
    v23 = "[CHHapticEngine handleFinish:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client finishedHandler is nil", buf, 0x1Cu);
  }

LABEL_26:
  if (!kHAPIScope)
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    goto LABEL_30;
  }

  v10 = *kHAPIScope;
  if (v10)
  {
LABEL_30:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "CHHapticEngine.mm";
      v20 = 1024;
      v21 = 853;
      v22 = 2080;
      v23 = "[CHHapticEngine handleFinish:]_block_invoke";
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Requested not to stop-on-finish", buf, 0x1Cu);
    }
  }

  if ([WeakRetained isAutoShutdownEnabled])
  {
    [WeakRetained beginIdleTimer];
  }

LABEL_35:
  v12 = [WeakRetained metrics];
  [WeakRetained currentTime];
  [v12 handleFinishedForPlayersAtTime:?];
}

void __31__CHHapticEngine_handleFinish___block_invoke_191(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 819;
    v18 = 2080;
    v19 = "[CHHapticEngine handleFinish:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of doStopWithCompletionHandler block>", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__CHHapticEngine_handleFinish___block_invoke_192;
    v12[3] = &unk_2781C9260;
    v7 = &v13;
    v13 = *(a1 + 32);
    [WeakRetained dispatchOnLocal:v12];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__CHHapticEngine_handleFinish___block_invoke_193;
    v10[3] = &unk_2781C9260;
    v7 = &v11;
    v11 = *(a1 + 32);
    [CHHapticEngine dispatchOnGlobal:v10];
  }

  if (kHAPIScope)
  {
    v8 = *kHAPIScope;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 839;
    v18 = 2080;
    v19 = "[CHHapticEngine handleFinish:]_block_invoke";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of doStopWithCompletionHandler block>", buf, 0x1Cu);
  }

LABEL_18:
}

uint64_t __31__CHHapticEngine_handleFinish___block_invoke_192(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        return (*(*(v1 + 32) + 16))();
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "CHHapticEngine.mm";
      v6 = 1024;
      v7 = 824;
      v8 = 2080;
      v9 = "[CHHapticEngine handleFinish:]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling engine-stopped handler on internal queue", &v4, 0x1Cu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

uint64_t __31__CHHapticEngine_handleFinish___block_invoke_193(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        return (*(*(v1 + 32) + 16))();
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
      v5 = MEMORY[0x21606F540](*(v1 + 32));
      v6 = 136315906;
      v7 = "CHHapticEngine.mm";
      v8 = 1024;
      v9 = 834;
      v10 = 2080;
      v11 = "[CHHapticEngine handleFinish:]_block_invoke";
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied stopped handler called on destroyed player - calling captured block %p on global queue", &v6, 0x26u);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

uint64_t __31__CHHapticEngine_handleFinish___block_invoke_194(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        return (*(*(v1 + 32) + 16))();
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
      v5 = MEMORY[0x21606F540](*(v1 + 32));
      v6 = 136315906;
      v7 = "CHHapticEngine.mm";
      v8 = 1024;
      v9 = 846;
      v10 = 2080;
      v11 = "[CHHapticEngine handleFinish:]_block_invoke";
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied stopped handler called on destroyed player - calling captured block %p on global queue", &v6, 0x26u);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)updateEngineBehaviorWithError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
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
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "CHHapticEngine.mm";
    v10 = 1024;
    v11 = 871;
    v12 = 2080;
    v13 = "[CHHapticEngine updateEngineBehaviorWithError:]";
    v14 = 1024;
    currentPlayerBehavior = [(CHHapticEngine *)self currentPlayerBehavior];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Setting player's behavior to 0x%x", &v8, 0x22u);
  }

LABEL_8:
  [(AVHapticPlayer *)self->_player setBehavior:[(CHHapticEngine *)self currentPlayerBehavior] error:error];
}

- (void)stopAndWait
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CHHapticEngine *)selfCopy running])
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
LABEL_12:
        stoppedHandler = [(CHHapticEngine *)selfCopy stoppedHandler];
        v13 = 0;
        [(CHHapticEngine *)selfCopy doStopEngineAndWait:&v13];
        v4 = v13;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __29__CHHapticEngine_stopAndWait__block_invoke;
        v11[3] = &unk_2781C9260;
        v8 = stoppedHandler;
        v12 = v8;
        [(CHHapticEngine *)selfCopy dispatchOnLocal:v11];

        goto LABEL_16;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      player = selfCopy->_player;
      *buf = 136315906;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 879;
      v18 = 2080;
      v19 = "[CHHapticEngine stopAndWait]";
      v20 = 2048;
      v21 = player;
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Synchronously stopping the underlying player %p", buf, 0x26u);
    }

    goto LABEL_12;
  }

  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = selfCopy->_player;
    *buf = 136315906;
    v15 = "CHHapticEngine.mm";
    v16 = 1024;
    v17 = 891;
    v18 = 2080;
    v19 = "[CHHapticEngine stopAndWait]";
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Underlying player %p not running", buf, 0x26u);
  }

LABEL_16:

LABEL_17:
  objc_sync_exit(selfCopy);
}

uint64_t __29__CHHapticEngine_stopAndWait__block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        return (*(*(v1 + 32) + 16))();
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315650;
      v5 = "CHHapticEngine.mm";
      v6 = 1024;
      v7 = 885;
      v8 = 2080;
      v9 = "[CHHapticEngine stopAndWait]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling stop completion handler on internal queue", &v4, 0x1Cu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
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
    v14 = "CHHapticEngine.mm";
    v15 = 1024;
    v16 = 898;
    v17 = 2080;
    v18 = "[CHHapticEngine dealloc]";
    v19 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: synchronously stopping and destroying engine %p", buf, 0x26u);
  }

LABEL_8:
  [(CHHapticEngine *)self stopAndWait];
  avAudioSession = [(CHHapticEngine *)self avAudioSession];
  [(CHHapticEngine *)self disconnectAudioSession:avAudioSession];

  [(CHHapticEngine *)self doUnregisterAllPublicAudioResources];
  [(CHHapticEngine *)self doUnregisterAllAudioResources];
  [(CHHapticEngine *)self deallocateProcessTaskToken];
  player = self->_player;
  self->_player = 0;

  avAudioSession = self->_avAudioSession;
  self->_avAudioSession = 0;

  stoppedHandler = self->_stoppedHandler;
  self->_stoppedHandler = 0;

  metrics = self->_metrics;
  self->_metrics = 0;

  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v14 = "CHHapticEngine.mm";
    v15 = 1024;
    v16 = 908;
    v17 = 2080;
    v18 = "[CHHapticEngine dealloc]";
    v19 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: done destroying engine %p", buf, 0x26u);
  }

LABEL_15:
  v12.receiver = self;
  v12.super_class = CHHapticEngine;
  [(CHHapticEngine *)&v12 dealloc];
}

- (id)createOptionsFromAudioSessionID:(unsigned int)d shared:(BOOL)shared bypassAudioSession:(BOOL)session
{
  sessionCopy = session;
  sharedCopy = shared;
  v8 = MEMORY[0x277CBEB38];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&d];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:sharedCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:sessionCopy];
  v12 = [v8 dictionaryWithObjectsAndKeys:{v9, @"AudioSessionID", v10, @"AudioSessionIsShared", v11, @"BypassAudioSession", 0}];

  v18 = xpc_null_create();
  LOBYTE(v9) = applesauce::xpc::operator==(&self->_processTaskTokenDict.fObj.fObj, &v18);
  v13 = v18;
  v18 = 0;

  if ((v9 & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x277CEFD68]);
    v15 = CALog::Scope::oslog(&self->_processTaskTokenDict.fObj.fObj);
    v16 = [v14 initWithXPCDictionary:v15];

    [v12 setObject:v16 forKey:@"ClientProcessTaskToken"];
  }

  return v12;
}

- (void)storeOptions:(id)options
{
  optionsCopy = options;
  v5 = [(NSDictionary *)optionsCopy valueForKey:@"Priority"];

  if (v5)
  {
    v6 = [(NSDictionary *)optionsCopy valueForKey:@"Priority"];
  }

  else
  {
    v6 = @"LowPriority";
  }

  priority = self->_priority;
  self->_priority = &v6->isa;

  v8 = [(NSDictionary *)optionsCopy valueForKey:@"HapticPowerUsage"];

  if (v8)
  {
    v9 = [(NSDictionary *)optionsCopy valueForKey:@"HapticPowerUsage"];
  }

  else
  {
    v9 = @"LowPower";
  }

  hapticPowerUsage = self->_hapticPowerUsage;
  self->_hapticPowerUsage = &v9->isa;

  v11 = [(NSDictionary *)optionsCopy valueForKey:@"AudioPowerUsage"];

  if (v11)
  {
    v12 = [(NSDictionary *)optionsCopy valueForKey:@"AudioPowerUsage"];
  }

  else
  {
    v12 = @"LowPower";
  }

  audioPowerUsage = self->_audioPowerUsage;
  self->_audioPowerUsage = &v12->isa;

  if (!self->_usageCategory)
  {
    v14 = [(NSDictionary *)optionsCopy valueForKey:@"UsageCategory"];

    if (v14)
    {
      v15 = [(NSDictionary *)optionsCopy valueForKey:@"UsageCategory"];
      usageCategory = self->_usageCategory;
      self->_usageCategory = v15;
    }
  }

  storedOptions = self->_storedOptions;
  self->_storedOptions = optionsCopy;
}

- (void)deallocateProcessTaskToken
{
  v3 = xpc_null_create();
  v4 = xpc_null_create();

  fObj = self->_processTaskTokenDict.fObj.fObj;
  self->_processTaskTokenDict.fObj.fObj = v3;

  processTaskToken = self->_processTaskToken;
  if (processTaskToken)
  {
    v7 = *MEMORY[0x277D85F48];

    mach_port_deallocate(v7, processTaskToken);
  }
}

- (BOOL)doInit:(unsigned int)init sessionIsShared:(BOOL)shared options:(id)options bypassAudioSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  sharedCopy = shared;
  v10 = *&init;
  v44 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (kHAPIScope)
  {
    v13 = *kHAPIScope;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v32 = 136316418;
    v33 = "CHHapticEngine.mm";
    v34 = 1024;
    v35 = 984;
    v36 = 2080;
    v37 = "[CHHapticEngine doInit:sessionIsShared:options:bypassAudioSession:error:]";
    v38 = 1024;
    v39 = v10;
    v40 = 1024;
    v41 = sharedCopy;
    v42 = 2112;
    v43 = optionsCopy;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: sessionID: %u, isShared: %u options: '%@'", &v32, 0x32u);
  }

LABEL_8:
  if (v10 || sessionCopy)
  {
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    [(CHHapticEngine *)self createProcessTaskToken];
    v17 = dispatch_queue_create("CHHapticEngineDispatchQueue", v16);
    dispatchQueue = self->_dispatchQueue;
    self->_dispatchQueue = v17;

    self->_audioSessionID = v10;
    self->_sessionIsShared = sharedCopy;
    v19 = [(CHHapticEngine *)self createOptionsFromAudioSessionID:v10 shared:sharedCopy bypassAudioSession:sessionCopy];
    v20 = [(CHHapticEngine *)self createHapticPlayerWithOptions:v19];
    player = self->_player;
    self->_player = v20;

    self->_runTimeout = 120.0;
    if (!optionsCopy)
    {
      optionsCopy = [MEMORY[0x277CBEAC0] dictionary];
    }

    v22 = [[HapticServerConfig alloc] initWithHapticPlayer:self->_player withOptions:optionsCopy error:error];
    serverConfig = self->_serverConfig;
    self->_serverConfig = v22;

    if (!self->_serverConfig)
    {
      v30 = 0;
LABEL_29:

      goto LABEL_31;
    }

    self->_currentPlayerBehavior = 2;
    serverConfig = [(CHHapticEngine *)self serverConfig];
    supportsHapticPlayback = [serverConfig supportsHapticPlayback];

    if (supportsHapticPlayback)
    {
      serverConfig2 = [(CHHapticEngine *)self serverConfig];
      supportsAudioPlayback = [serverConfig2 supportsAudioPlayback];

      if (supportsAudioPlayback)
      {
LABEL_28:
        v30 = [(CHHapticEngine *)self finishInit:error];
        goto LABEL_29;
      }

      v28 = 1;
    }

    else
    {
      v28 = self->_currentPlayerBehavior | 0x10;
    }

    self->_currentPlayerBehavior = v28;
    goto LABEL_28;
  }

  if (!kHAPIScope)
  {
    v15 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
    goto LABEL_20;
  }

  v15 = *kHAPIScope;
  if (v15)
  {
LABEL_20:
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315906;
      v33 = "CHHapticEngine.mm";
      v34 = 1024;
      v35 = 987;
      v36 = 2080;
      v37 = "[CHHapticEngine doInit:sessionIsShared:options:bypassAudioSession:error:]";
      v38 = 1024;
      v39 = 0;
      _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Invalid audio session ID: %u", &v32, 0x22u);
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4815 userInfo:0];
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_31:

  return v30;
}

- (CHHapticEngine)initAndReturnError:(NSError *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v5 = CALog::Scope::oslog(kHAPIScope);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HapticEngine_initAndReturnError", " enableTelemetry=YES ", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = CHHapticEngine;
  v9 = [(CHHapticEngine *)&v21 init];
  if (!v9)
  {
    goto LABEL_21;
  }

  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v23 = "CHHapticEngine.mm";
    v24 = 1024;
    v25 = 1051;
    v26 = 2080;
    v27 = "[CHHapticEngine initAndReturnError:]";
    v28 = 2048;
    v29 = v9;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with legacy initializer", buf, 0x26u);
  }

LABEL_14:
  v12 = +[CHHapticEngine capabilitiesForHardware];
  supportsHaptics = [v12 supportsHaptics];
  if (supportsHaptics & 1) != 0 || (supportsHaptics = [v12 supportsAudio], (supportsHaptics))
  {
    auxiliarySession = [AVFASoftLink::getAVAudioSession(supportsHaptics) auxiliarySession];
    avAudioSession = v9->_avAudioSession;
    v9->_avAudioSession = auxiliarySession;

    objc_storeStrong(&v9->_usageCategory, @"Default");
    if ([(CHHapticEngine *)v9 setupEngineWithCategory:v9->_usageCategory session:v9->_avAudioSession needsAudioPowerBudget:[(CHHapticEngine *)v9 needsAudioPowerBudget] error:error]&& ([(CHHapticEngine *)v9 connectAudioSession:v9->_avAudioSession], v16 = [(CHHapticEngine *)v9 getSessionIDFromAVAudioSession:v9->_avAudioSession], [(CHHapticEngine *)v9 doInit:v16 sessionIsShared:0 options:0 bypassAudioSession:0 error:error]))
    {
      v17 = [[CHMetrics alloc] initWithEngine:v9 audioSessionID:v16 sessionIsShared:v9->_sessionIsShared isSPI:0];
      metrics = v9->_metrics;
      v9->_metrics = v17;
    }

    else
    {
      metrics = v9;
      v9 = 0;
    }

LABEL_21:
    v19 = CALog::Scope::oslog(kHAPIScope);
    v12 = v19;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_END, v6, "HapticEngine_initAndReturnError", &unk_215703E5B, buf, 2u);
    }

    goto LABEL_27;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (CHHapticEngine)initWithAudioSession:(AVAudioSession *)audioSession error:(NSError *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = audioSession;
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v8 = CALog::Scope::oslog(kHAPIScope);
  v9 = os_signpost_id_make_with_pointer(v8, self);

  v10 = CALog::Scope::oslog(kHAPIScope);
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HapticEngine_initWithAudioSession", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = +[CHHapticEngine capabilitiesForHardware];
  if ([v13 supportsHaptics] & 1) != 0 || (objc_msgSend(v13, "supportsAudio"))
  {
    v33.receiver = self;
    v33.super_class = CHHapticEngine;
    v14 = [(CHHapticEngine *)&v33 init];
    if (!v14)
    {
      v16 = 0;
      goto LABEL_38;
    }

    if (v7)
    {
      if (kHAPIScope)
      {
        v15 = *kHAPIScope;
        if (!v15)
        {
LABEL_27:
          objc_storeStrong(&v14->_avAudioSession, audioSession);
          goto LABEL_33;
        }
      }

      else
      {
        v15 = MEMORY[0x277D86220];
        v22 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v35 = "CHHapticEngine.mm";
        v36 = 1024;
        v37 = 1100;
        v38 = 2080;
        v39 = "[CHHapticEngine initWithAudioSession:error:]";
        v40 = 2048;
        v41 = v14;
        v42 = 2048;
        v43 = v7;
        _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with audio session %p", buf, 0x30u);
      }

      goto LABEL_27;
    }

    if (kHAPIScope)
    {
      v20 = *kHAPIScope;
      v21 = v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v35 = "CHHapticEngine.mm";
      v36 = 1024;
      v37 = 1105;
      v38 = 2080;
      v39 = "[CHHapticEngine initWithAudioSession:error:]";
      v40 = 2048;
      v41 = v14;
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with internal audio session", buf, 0x26u);
    }

LABEL_32:
    auxiliarySession = [AVFASoftLink::getAVAudioSession(v20) auxiliarySession];
    avAudioSession = v14->_avAudioSession;
    v14->_avAudioSession = auxiliarySession;

    objc_storeStrong(&v14->_usageCategory, @"DefaultWithConstantVolume");
    if (![(CHHapticEngine *)v14 setupEngineWithCategory:v14->_usageCategory session:v14->_avAudioSession needsAudioPowerBudget:[(CHHapticEngine *)v14 needsAudioPowerBudget] error:error])
    {
      v16 = 0;
LABEL_37:

LABEL_38:
      v30 = CALog::Scope::oslog(kHAPIScope);
      v31 = v30;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v31, OS_SIGNPOST_INTERVAL_END, v9, "HapticEngine_initWithAudioSession", &unk_215703E5B, buf, 2u);
      }

      self = v16;
      selfCopy = self;
      goto LABEL_42;
    }

LABEL_33:
    [(CHHapticEngine *)v14 connectAudioSession:v14->_avAudioSession];
    v26 = [(CHHapticEngine *)v14 getSessionIDFromAVAudioSession:v14->_avAudioSession];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Default", @"Locality", 0}];
    if ([(CHHapticEngine *)v14 doInit:v26 sessionIsShared:v7 != 0 options:v27 bypassAudioSession:0 error:error])
    {
      v28 = [[CHMetrics alloc] initWithEngine:v14 audioSessionID:v26 sessionIsShared:v14->_sessionIsShared isSPI:0];
      metrics = v14->_metrics;
      v14->_metrics = v28;
      v16 = v14;
    }

    else
    {
      v16 = 0;
      metrics = v14;
    }

    v14 = v27;
    goto LABEL_37;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  }

  v17 = CALog::Scope::oslog(kHAPIScope);
  v18 = v17;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v18, OS_SIGNPOST_INTERVAL_END, v9, "HapticEngine_initWithAudioSession", &unk_215703E5B, buf, 2u);
  }

  selfCopy = 0;
LABEL_42:

  return selfCopy;
}

- (BOOL)doInitWithOptions:(id)options error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
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
    v25 = 136315906;
    v26 = "CHHapticEngine.mm";
    v27 = 1024;
    v28 = 1151;
    v29 = 2080;
    v30 = "[CHHapticEngine doInitWithOptions:error:]";
    v31 = 2112;
    v32 = optionsCopy;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: options: '%@'", &v25, 0x26u);
  }

LABEL_8:
  v9 = dispatch_queue_create("CHHapticEngineDispatchQueue", 0);
  dispatchQueue = self->_dispatchQueue;
  self->_dispatchQueue = v9;

  self->_audioSessionID = 0;
  self->_sessionIsShared = 0;
  v11 = [(CHHapticEngine *)self createHapticPlayerWithOptions:optionsCopy];
  player = self->_player;
  self->_player = v11;

  self->_runTimeout = 120.0;
  v13 = [[HapticServerConfig alloc] initWithHapticPlayer:self->_player withOptions:optionsCopy error:error];
  serverConfig = self->_serverConfig;
  self->_serverConfig = v13;

  if (!self->_serverConfig)
  {
    v23 = 0;
    goto LABEL_16;
  }

  self->_currentPlayerBehavior = 2;
  serverConfig = [(CHHapticEngine *)self serverConfig];
  supportsHapticPlayback = [serverConfig supportsHapticPlayback];

  if ((supportsHapticPlayback & 1) == 0)
  {
    v19 = self->_currentPlayerBehavior | 0x10;
    goto LABEL_13;
  }

  serverConfig2 = [(CHHapticEngine *)self serverConfig];
  supportsAudioPlayback = [serverConfig2 supportsAudioPlayback];

  if ((supportsAudioPlayback & 1) == 0)
  {
    v19 = 1;
LABEL_13:
    self->_currentPlayerBehavior = v19;
  }

  priority = self->_priority;
  self->_priority = @"LowPriority";

  hapticPowerUsage = self->_hapticPowerUsage;
  self->_hapticPowerUsage = @"HighPower";

  audioPowerUsage = self->_audioPowerUsage;
  self->_audioPowerUsage = @"HighPower";

  v23 = [(CHHapticEngine *)self finishInit:error];
LABEL_16:

  return v23;
}

- (CHHapticEngine)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_initWithOptions", " enableTelemetry=YES ", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = CHHapticEngine;
  v11 = [(CHHapticEngine *)&v16 init];
  v12 = v11;
  if (v11 && ![(CHHapticEngine *)v11 doInitWithOptions:optionsCopy error:error])
  {

    v12 = 0;
  }

  v13 = CALog::Scope::oslog(kHAPIScope);
  v14 = v13;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_initWithOptions", &unk_215703E5B, buf, 2u);
  }

  return v12;
}

- (void)prewarmWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = CALog::Scope::oslog(kHAPIScope);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HapticEngine_prewarmWithCompletionHandler", " enableTelemetry=YES ", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  obj = 0;
  [(CHHapticEngine *)self updateEngineBehaviorWithError:&obj];
  objc_storeStrong(&v24, obj);
  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315650;
    v26 = "CHHapticEngine.mm";
    v27 = 1024;
    v28 = 1204;
    v29 = 2080;
    v30 = "[CHHapticEngine prewarmWithCompletionHandler:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Prewarming the underlying Haptic Player", v25, 0x1Cu);
  }

LABEL_11:
  player = self->_player;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__CHHapticEngine_prewarmWithCompletionHandler___block_invoke;
  v15[3] = &unk_2781C97F0;
  v17 = buf;
  v12 = handlerCopy;
  v16 = v12;
  [(AVHapticPlayer *)player prewarmWithCompletionHandler:v15];
  v13 = CALog::Scope::oslog(kHAPIScope);
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_END, v6, "HapticEngine_prewarmWithCompletionHandler", &unk_215703E5B, v25, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void __47__CHHapticEngine_prewarmWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v4 localizedDescription];
    v13 = 136315906;
    v14 = "CHHapticEngine.mm";
    v15 = 1024;
    v16 = 1211;
    v17 = 2080;
    v18 = "[CHHapticEngine prewarmWithCompletionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player prewarm failed: %@", &v13, 0x26u);
  }

LABEL_11:
  if (*(a1 + 32))
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
LABEL_19:
        (*(*(a1 + 32) + 16))();
        goto LABEL_20;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1214;
      v17 = 2080;
      v18 = "[CHHapticEngine prewarmWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling prewarm completion handler", &v13, 0x1Cu);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)doStartWithCompletionHandler:(id)handler
{
  v18[2] = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1231;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine doStartWithCompletionHandler:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Starting underlying Haptic Player", buf, 0x1Cu);
  }

LABEL_8:
  [(CHHapticEngine *)self setRunning:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18[0] = 0;
  obj = 0;
  [(CHHapticEngine *)self updateEngineBehaviorWithError:&obj];
  objc_storeStrong(v18, obj);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke;
  v13[3] = &unk_2781C9700;
  v13[4] = self;
  [(CHHapticEngine *)self dispatchOnLocal:v13];
  [(CHHapticEngine *)self reconfigureAudioSession];
  player = self->_player;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_2781C9840;
  objc_copyWeak(&v12, &location);
  v11 = buf;
  v8 = handlerCopy;
  v10 = v8;
  [(AVHapticPlayer *)player startRunningWithCompletionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) metrics];
  [v1 handleEngineStart];
}

void __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "CHHapticEngine.mm";
    v21 = 1024;
    v22 = 1241;
    v23 = 2080;
    v24 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: In underlying AVHapticPlayer's completion handler block", buf, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    v8 = v7;

    v3 = v8;
  }

  if (WeakRetained)
  {
    objc_initWeak(buf, WeakRetained);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_221;
    v15[3] = &unk_2781C9818;
    objc_copyWeak(&v18, buf);
    v16 = v3;
    v17 = *(a1 + 32);
    v9 = v3;
    [WeakRetained dispatchOnLocal:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_222;
    v12[3] = &unk_2781C9030;
    v10 = *(a1 + 32);
    v13 = v3;
    v14 = v10;
    v11 = v3;
    [CHHapticEngine dispatchOnGlobal:v12];
  }
}

void __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_221(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
LABEL_11:
        [v3 setRunning:0];
        v8 = [v3 metrics];
        [v8 handleEngineStop];

        goto LABEL_12;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) localizedDescription];
      v11 = 136315906;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 1252;
      v15 = 2080;
      v16 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player start failed: %@", &v11, 0x26u);
    }

    goto LABEL_11;
  }

  if ([WeakRetained isAutoShutdownEnabled])
  {
    [v3 beginIdleTimer];
  }

LABEL_12:
  if (*(a1 + 40))
  {
    if (kHAPIScope)
    {
      v9 = *kHAPIScope;
      if (!v9)
      {
LABEL_20:
        (*(*(a1 + 40) + 16))();
        goto LABEL_21;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315650;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 1262;
      v15 = 2080;
      v16 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling start completion handler on internal queue", &v11, 0x1Cu);
    }

    goto LABEL_20;
  }

LABEL_21:
}

uint64_t __47__CHHapticEngine_doStartWithCompletionHandler___block_invoke_222(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        return (*(*(v1 + 40) + 16))();
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
      v5 = MEMORY[0x21606F540](*(v1 + 40));
      v6 = 136315906;
      v7 = "CHHapticEngine.mm";
      v8 = 1024;
      v9 = 1271;
      v10 = 2080;
      v11 = "[CHHapticEngine doStartWithCompletionHandler:]_block_invoke";
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied completion handler called on destroyed player - calling captured block %p on global queue", &v6, 0x26u);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)startWithCompletionHandler:(CHHapticCompletionHandler)completionHandler
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v23 = "CHHapticEngine.mm";
    v24 = 1024;
    v25 = 1281;
    v26 = 2080;
    v27 = "[CHHapticEngine startWithCompletionHandler:]";
    v28 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p", buf, 0x26u);
  }

LABEL_8:
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_startWithCompletionHandler", " enableTelemetry=YES ", buf, 2u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__CHHapticEngine_startWithCompletionHandler___block_invoke_225;
    v15[3] = &unk_2781C9868;
    v15[4] = self;
    v16 = v4;
    v17 = v8;
    [(CHHapticEngine *)self dispatchOnLocal:v15];
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_startWithCompletionHandler", &unk_215703E5B, buf, 2u);
    }
  }

  else
  {
    v21 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1282, "[CHHapticEngine startWithCompletionHandler:]", "_player != nil", -4810, &v21);
    v13 = v21;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__CHHapticEngine_startWithCompletionHandler___block_invoke;
    v18[3] = &unk_2781C9030;
    v19 = v13;
    v20 = v4;
    v14 = v13;
    [(CHHapticEngine *)self dispatchOnLocal:v18];
  }
}

uint64_t __45__CHHapticEngine_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __45__CHHapticEngine_startWithCompletionHandler___block_invoke_225(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) running])
  {
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 1286;
      v15 = 2080;
      v16 = "[CHHapticEngine startWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine already running", &v11, 0x1Cu);
    }

LABEL_12:
    if (!*(a1 + 40))
    {
LABEL_21:
      v8 = CALog::Scope::oslog(kHAPIScope);
      v9 = v8;
      v10 = *(a1 + 48);
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        LOWORD(v11) = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v9, OS_SIGNPOST_INTERVAL_END, v10, "HapticEngine_startWithCompletionHandler", &unk_215703E5B, &v11, 2u);
      }

      return;
    }

    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_20:
        (*(*(a1 + 40) + 16))();
        goto LABEL_21;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 1288;
      v15 = 2080;
      v16 = "[CHHapticEngine startWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Directly calling start completionHandler on internal queue", &v11, 0x1Cu);
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  [v3 doStartWithCompletionHandler:v4];
}

- (BOOL)doStartEngineAndWait:(id *)wait
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__CHHapticEngine_doStartEngineAndWait___block_invoke;
  v20[3] = &unk_2781C9890;
  v20[4] = self;
  v22 = &v23;
  v6 = v5;
  v21 = v6;
  [(CHHapticEngine *)self dispatchOnLocal:v20];
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v30 = "CHHapticEngine.mm";
    v31 = 1024;
    v32 = 1318;
    v33 = 2080;
    v34 = "[CHHapticEngine doStartEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Waiting for startup...", buf, 0x1Cu);
  }

LABEL_8:
  v9 = dispatch_time(0, 4000000000);
  if (!dispatch_group_wait(v6, v9))
  {
    goto LABEL_25;
  }

  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v30 = "CHHapticEngine.mm";
    v31 = 1024;
    v32 = 1321;
    v33 = 2080;
    v34 = "[CHHapticEngine doStartEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Startup timeout", buf, 0x1Cu);
  }

LABEL_16:
  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4808 userInfo:0];
  v13 = v24[5];
  v24[5] = v12;

  if (![(CHHapticEngine *)self running])
  {
    goto LABEL_25;
  }

  if (!kHAPIScope)
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_21;
  }

  v14 = *kHAPIScope;
  if (v14)
  {
LABEL_21:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "CHHapticEngine.mm";
      v31 = 1024;
      v32 = 1326;
      v33 = 2080;
      v34 = "[CHHapticEngine doStartEngineAndWait:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Warning: engine start timed out but server side may be running, triggering async stop", buf, 0x1Cu);
    }
  }

  [(CHHapticEngine *)self stopWithCompletionHandler:&__block_literal_global_228];
LABEL_25:
  if (wait)
  {
    *wait = v24[5];
  }

  if (kHAPIScope)
  {
    v16 = *kHAPIScope;
    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v30 = "CHHapticEngine.mm";
    v31 = 1024;
    v32 = 1335;
    v33 = 2080;
    v34 = "[CHHapticEngine doStartEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Startup complete", buf, 0x1Cu);
  }

LABEL_34:
  v18 = v24[5] == 0;

  _Block_object_dispose(&v23, 8);
  return v18;
}

void __39__CHHapticEngine_doStartEngineAndWait___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) running] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__CHHapticEngine_doStartEngineAndWait___block_invoke_2;
    v7[3] = &unk_2781C9750;
    v6 = *(a1 + 40);
    v4 = v6;
    v8 = v6;
    [v3 doStartWithCompletionHandler:v7];

    return;
  }

  if (!kHAPIScope)
  {
    v2 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v2 = *kHAPIScope;
  if (v2)
  {
LABEL_7:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v10 = "CHHapticEngine.mm";
      v11 = 1024;
      v12 = 1313;
      v13 = 2080;
      v14 = "[CHHapticEngine doStartEngineAndWait:]_block_invoke";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine already running", buf, 0x1Cu);
    }
  }

  [*(a1 + 32) reconfigureAudioSession];
  dispatch_group_leave(*(a1 + 40));
}

void __39__CHHapticEngine_doStartEngineAndWait___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __39__CHHapticEngine_doStartEngineAndWait___block_invoke_226(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 localizedDescription];
      v7 = 136315906;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 1328;
      v11 = 2080;
      v12 = "[CHHapticEngine doStartEngineAndWait:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: async stop after timeout failed with error %@", &v7, 0x26u);
    }
  }

LABEL_9:
}

- (BOOL)startAndReturnError:(NSError *)outError
{
  v23 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "CHHapticEngine.mm";
    v17 = 1024;
    v18 = 1341;
    v19 = 2080;
    v20 = "[CHHapticEngine startAndReturnError:]";
    v21 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p", &v15, 0x26u);
  }

LABEL_8:
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_startAndReturnError", " enableTelemetry=YES ", &v15, 2u);
    }

    v11 = [(CHHapticEngine *)self doStartEngineAndWait:outError];
    v12 = CALog::Scope::oslog(kHAPIScope);
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v13, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_startAndReturnError", &unk_215703E5B, &v15, 2u);
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1342, "[CHHapticEngine startAndReturnError:]", "_player != nil", -4810, outError);
    return 0;
  }

  return v11;
}

- (BOOL)doStopEngineAndWait:(id *)wait
{
  v36 = *MEMORY[0x277D85DE8];
  [(CHHapticEngine *)self setRunning:0];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1352;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine doStopEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Synchronously stopping underlying Haptic Player", buf, 0x1Cu);
  }

LABEL_8:
  v7 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  dispatch_group_enter(v7);
  player = self->_player;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __38__CHHapticEngine_doStopEngineAndWait___block_invoke;
  v24 = &unk_2781C9750;
  v26 = buf;
  v9 = v7;
  v25 = v9;
  [(AVHapticPlayer *)player stopRunningWithCompletionHandler:&v21];
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v27 = 136315650;
    v28 = "CHHapticEngine.mm";
    v29 = 1024;
    v30 = 1364;
    v31 = 2080;
    v32 = "[CHHapticEngine doStopEngineAndWait:]";
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Waiting for player stop...", v27, 0x1Cu);
  }

LABEL_15:
  v12 = dispatch_time(0, 4000000000);
  if (dispatch_group_wait(v9, v12))
  {
    if (kHAPIScope)
    {
      v13 = *kHAPIScope;
      if (!v13)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 136315650;
      v28 = "CHHapticEngine.mm";
      v29 = 1024;
      v30 = 1367;
      v31 = 2080;
      v32 = "[CHHapticEngine doStopEngineAndWait:]";
      v15 = "%25s:%-5d %s: WARNING: timed out waiting for underlying player to stop";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_28:
      _os_log_impl(&dword_21569A000, v16, v17, v15, v27, 0x1Cu);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (!kHAPIScope)
  {
    v13 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
LABEL_26:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 136315650;
      v28 = "CHHapticEngine.mm";
      v29 = 1024;
      v30 = 1370;
      v31 = 2080;
      v32 = "[CHHapticEngine doStopEngineAndWait:]";
      v15 = "%25s:%-5d %s: Done waiting for underlying player stop";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEBUG;
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  v13 = *kHAPIScope;
  if (v13)
  {
    goto LABEL_26;
  }

LABEL_30:
  if ([(CHHapticEngine *)self isAutoShutdownEnabled:v21])
  {
    [(CHHapticEngine *)self cancelIdleTimer];
  }

  *wait = *(*&buf[8] + 40);
  v19 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(buf, 8);
  return v19;
}

void __38__CHHapticEngine_doStopEngineAndWait___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "CHHapticEngine.mm";
    v15 = 1024;
    v16 = 1357;
    v17 = 2080;
    v18 = "[CHHapticEngine doStopEngineAndWait:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: In underlying AVHapticPlayer's completion handler block for doStopEngineAndWait", &v13, 0x1Cu);
  }

LABEL_8:
  if (v3)
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 localizedDescription];
      v13 = 136315906;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1359;
      v17 = 2080;
      v18 = "[CHHapticEngine doStopEngineAndWait:]_block_invoke";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player stop failed: %@", &v13, 0x26u);
    }
  }

LABEL_16:
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
  v12 = v3;

  dispatch_group_leave(*(a1 + 32));
}

- (void)doStopWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(CHHapticEngine *)self setRunning:0];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "CHHapticEngine.mm";
    v14 = 1024;
    v15 = 1382;
    v16 = 2080;
    v17 = "[CHHapticEngine doStopWithCompletionHandler:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Stopping underlying Haptic Player", buf, 0x1Cu);
  }

LABEL_8:
  objc_initWeak(buf, self);
  player = self->_player;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke;
  v9[3] = &unk_2781C9058;
  objc_copyWeak(&v11, buf);
  v8 = handlerCopy;
  v10 = v8;
  [(AVHapticPlayer *)player stopRunningWithCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v19 = "CHHapticEngine.mm";
    v20 = 1024;
    v21 = 1385;
    v22 = 2080;
    v23 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: In underlying AVHapticPlayer's completion handler block for doStopWithCompletionHandler", buf, 0x1Cu);
  }

LABEL_8:
  if (!v3)
  {
    goto LABEL_16;
  }

  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v3 localizedDescription];
    *buf = 136315906;
    v19 = "CHHapticEngine.mm";
    v20 = 1024;
    v21 = 1386;
    v22 = 2080;
    v23 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Lower-level player stop failed: %@", buf, 0x26u);
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(buf, WeakRetained);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_229;
    v14[3] = &unk_2781C98B8;
    objc_copyWeak(&v17, buf);
    v16 = *(a1 + 32);
    v15 = v3;
    [WeakRetained dispatchOnLocal:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_230;
    v11[3] = &unk_2781C9030;
    v13 = *(a1 + 32);
    v12 = v3;
    [CHHapticEngine dispatchOnGlobal:v11];
  }
}

void __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_229(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isAutoShutdownEnabled])
  {
    [WeakRetained cancelIdleTimer];
  }

  if (WeakRetained)
  {
    v3 = [WeakRetained metrics];
    [v3 handleEngineStop];
  }

  if (*(a1 + 40))
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
LABEL_13:
        (*(*(a1 + 40) + 16))();
        goto LABEL_14;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "CHHapticEngine.mm";
      v8 = 1024;
      v9 = 1399;
      v10 = 2080;
      v11 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling stop completion handler on internal queue", &v6, 0x1Cu);
    }

    goto LABEL_13;
  }

LABEL_14:
}

uint64_t __46__CHHapticEngine_doStopWithCompletionHandler___block_invoke_230(uint64_t result)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    if (kHAPIScope)
    {
      v2 = *kHAPIScope;
      if (!v2)
      {
        return (*(*(v1 + 40) + 16))();
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
      v5 = MEMORY[0x21606F540](*(v1 + 40));
      v6 = 136315906;
      v7 = "CHHapticEngine.mm";
      v8 = 1024;
      v9 = 1408;
      v10 = 2080;
      v11 = "[CHHapticEngine doStopWithCompletionHandler:]_block_invoke";
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-supplied completion handler called on destroyed player - calling captured block %p on global queue", &v6, 0x26u);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)stopWithCompletionHandler:(CHHapticCompletionHandler)completionHandler
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "CHHapticEngine.mm";
    v25 = 1024;
    v26 = 1418;
    v27 = 2080;
    v28 = "[CHHapticEngine stopWithCompletionHandler:]";
    v29 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p", buf, 0x26u);
  }

LABEL_8:
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_stopWithCompletionHandler", " enableTelemetry=YES ", buf, 2u);
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__CHHapticEngine_stopWithCompletionHandler___block_invoke_231;
    v16[3] = &unk_2781C98E0;
    objc_copyWeak(&v18, buf);
    v17 = v4;
    [(CHHapticEngine *)self dispatchOnLocal:v16];
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_stopWithCompletionHandler", &unk_215703E5B, v15, 2u);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1419, "[CHHapticEngine stopWithCompletionHandler:]", "_player != nil", -4810, &v22);
    v13 = v22;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__CHHapticEngine_stopWithCompletionHandler___block_invoke;
    v19[3] = &unk_2781C9030;
    v20 = v13;
    v21 = v4;
    v14 = v13;
    [(CHHapticEngine *)self dispatchOnLocal:v19];
  }
}

uint64_t __44__CHHapticEngine_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __44__CHHapticEngine_stopWithCompletionHandler___block_invoke_231(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (![WeakRetained running])
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 1428;
      v11 = 2080;
      v12 = "[CHHapticEngine stopWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Engine not running", &v7, 0x1Cu);
    }

LABEL_10:
    if (!*(a1 + 32))
    {
      goto LABEL_19;
    }

    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_18:
        (*(*(a1 + 32) + 16))();
        goto LABEL_19;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 1430;
      v11 = 2080;
      v12 = "[CHHapticEngine stopWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Directly calling stop completionHandler on internal queue", &v7, 0x1Cu);
    }

    goto LABEL_18;
  }

  [WeakRetained doStopWithCompletionHandler:*(a1 + 32)];
LABEL_19:
}

- (void)notifyWhenPlayersFinished:(CHHapticEngineFinishedHandler)finishedHandler
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = finishedHandler;
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
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x21606F540](v4);
    *buf = 136316162;
    v19 = "CHHapticEngine.mm";
    v20 = 1024;
    v21 = 1440;
    v22 = 2080;
    v23 = "[CHHapticEngine notifyWhenPlayersFinished:]";
    v24 = 2048;
    selfCopy = self;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Called on engine %p with finishedHandler %p", buf, 0x30u);
  }

LABEL_8:
  if (self->_player)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    [(CHHapticEngine *)selfCopy2 setClientFinishedHandler:v4];
    objc_initWeak(buf, selfCopy2);
    player = [(CHHapticEngine *)selfCopy2 player];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke_2;
    v12[3] = &unk_2781C8FE0;
    objc_copyWeak(&v13, buf);
    [player finishWithCompletionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    objc_sync_exit(selfCopy2);
  }

  else
  {
    v17 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1441, "[CHHapticEngine notifyWhenPlayersFinished:]", "_player != nil", -4810, &v17);
    v11 = v17;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke;
    v14[3] = &unk_2781C9030;
    v15 = v11;
    v16 = v4;
    selfCopy2 = v11;
    [(CHHapticEngine *)self dispatchOnLocal:v14];
  }
}

uint64_t __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __44__CHHapticEngine_notifyWhenPlayersFinished___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 1447;
    v13 = 2080;
    v14 = "[CHHapticEngine notifyWhenPlayersFinished:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of AV finishWithCompletionHandler block>", &v9, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleFinish:v3];
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "CHHapticEngine.mm";
    v11 = 1024;
    v12 = 1450;
    v13 = 2080;
    v14 = "[CHHapticEngine notifyWhenPlayersFinished:]_block_invoke";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of AV finishWithCompletionHandler block>", &v9, 0x1Cu);
  }

LABEL_15:
}

- (CHHapticEngine)initWithAudioSessionID:(unsigned int)d error:(id *)error
{
  v5 = *&d;
  v30 = *MEMORY[0x277D85DE8];
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_initWithAudioSessionID", " enableTelemetry=YES ", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = CHHapticEngine;
  v11 = [(CHHapticEngine *)&v19 init];
  if (v11)
  {
    if (kHAPIScope)
    {
      v12 = *kHAPIScope;
      if (!v12)
      {
LABEL_14:
        if ([(CHHapticEngine *)v11 doInit:v5 sessionIsShared:1 options:0 bypassAudioSession:0 error:error])
        {
          v14 = [[CHMetrics alloc] initWithEngine:v11 audioSessionID:v5 sessionIsShared:v11->_sessionIsShared isSPI:1];
          metrics = v11->_metrics;
          v11->_metrics = v14;
        }

        else
        {
          metrics = v11;
          v11 = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v21 = "CHHapticEngine.mm";
      v22 = 1024;
      v23 = 1465;
      v24 = 2080;
      v25 = "[CHHapticEngine initWithAudioSessionID:error:]";
      v26 = 2048;
      v27 = v11;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating engine %p with shared audio session ID %u", buf, 0x2Cu);
    }

    goto LABEL_14;
  }

LABEL_18:
  v16 = CALog::Scope::oslog(kHAPIScope);
  v17 = v16;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v17, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_initWithAudioSessionID", &unk_215703E5B, buf, 2u);
  }

  return v11;
}

- (CHHapticEngine)initWithAudioSessionID:(unsigned int)d options:(id)options error:(id *)error
{
  v6 = *&d;
  v35 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  v11 = CALog::Scope::oslog(kHAPIScope);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "HapticEngine_initWithAudioSessionID_options", " enableTelemetry=YES ", buf, 2u);
  }

  v24.receiver = self;
  v24.super_class = CHHapticEngine;
  v13 = [(CHHapticEngine *)&v24 init];
  v14 = v13;
  if (v13)
  {
    [(CHHapticEngine *)v13 storeOptions:optionsCopy];
    if (kHAPIScope)
    {
      v15 = *kHAPIScope;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v26 = "CHHapticEngine.mm";
      v27 = 1024;
      v28 = 1486;
      v29 = 2080;
      v30 = "[CHHapticEngine initWithAudioSessionID:options:error:]";
      v31 = 2048;
      v32 = v14;
      v33 = 1024;
      v34 = v6;
      _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating engine %p with shared audio session ID %u", buf, 0x2Cu);
    }

LABEL_14:
    if (![(CHHapticEngine *)v14 doInit:v6 sessionIsShared:1 options:optionsCopy bypassAudioSession:0 error:error])
    {
      metrics = v14;
      v14 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if (kHAPIScope)
    {
      v17 = *kHAPIScope;
      if (!v17)
      {
LABEL_23:
        [(CHHapticEngine *)v14 setActivateAudioSessionOnStart:0];
        [(CHHapticEngine *)v14 updateEngineBehavior];
        v20 = [[CHMetrics alloc] initWithEngine:v14 audioSessionID:v6 sessionIsShared:v14->_sessionIsShared isSPI:1];
        metrics = v14->_metrics;
        v14->_metrics = v20;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v26 = "CHHapticEngine.mm";
      v27 = 1024;
      v28 = 1491;
      v29 = 2080;
      v30 = "[CHHapticEngine initWithAudioSessionID:options:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting behavior to not activate audio session (if haptics-only)", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

LABEL_25:
  v21 = CALog::Scope::oslog(kHAPIScope);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v10, "HapticEngine_initWithAudioSessionID_options", &unk_215703E5B, buf, 2u);
  }

  return v14;
}

- (CHHapticEngine)initWithAudioSession:(id)session sessionIsShared:(BOOL)shared options:(id)options error:(id *)error
{
  sharedCopy = shared;
  v61 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  optionsCopy = options;
  if (setupHapticLogScopes(void)::once != -1)
  {
    setupHapticLogScopes();
  }

  v12 = CALog::Scope::oslog(kHAPIScope);
  v13 = os_signpost_id_make_with_pointer(v12, self);

  v14 = CALog::Scope::oslog(kHAPIScope);
  v15 = v14;
  spid = v13;
  v16 = v13 - 1;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "HapticEngine_initWithAudioSession", " enableTelemetry=YES ", buf, 2u);
  }

  v48.receiver = self;
  v48.super_class = CHHapticEngine;
  v17 = [(CHHapticEngine *)&v48 init];
  if (!v17)
  {
    goto LABEL_68;
  }

  if (kHAPIScope)
  {
    v18 = *kHAPIScope;
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "unshared";
    *buf = 136316418;
    v50 = "CHHapticEngine.mm";
    v51 = 1024;
    v52 = 1511;
    v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
    v53 = 2080;
    if (sharedCopy)
    {
      v20 = "shared";
    }

    v55 = 2048;
    v56 = v17;
    v57 = 2080;
    v58 = v20;
    v59 = 2048;
    v60 = sessionCopy;
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Creating engine %p with %s audio session %p", buf, 0x3Au);
  }

LABEL_16:
  if (sessionCopy && sharedCopy)
  {
    if (kHAPIScope)
    {
      v21 = *kHAPIScope;
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v50 = "CHHapticEngine.mm";
      v51 = 1024;
      v52 = 1515;
      v53 = 2080;
      v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Using passed-in shared audio session", buf, 0x1Cu);
    }

LABEL_34:

LABEL_35:
    v24 = sessionCopy;
    v25 = 0;
    v26 = 0;
    p_super = &v17->_avAudioSession->super;
    v17->_avAudioSession = v24;
LABEL_36:

    goto LABEL_37;
  }

  if (sessionCopy || !sharedCopy)
  {
    if (sessionCopy && !sharedCopy)
    {
      if (kHAPIScope)
      {
        v21 = *kHAPIScope;
        if (!v21)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v21 = MEMORY[0x277D86220];
        v43 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v50 = "CHHapticEngine.mm";
        v51 = 1024;
        v52 = 1526;
        v53 = 2080;
        v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
        _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Using passed-in auxiliary audio session with no UsageCategory", buf, 0x1Cu);
      }

      goto LABEL_34;
    }

    v31 = [(CHHapticEngine *)v17 getUsageCategory:optionsCopy];
    usageCategory = v17->_usageCategory;
    v17->_usageCategory = v31;

    if (!v31)
    {
      objc_storeStrong(&v17->_usageCategory, @"UIFeedback");
    }

    v33 = v17->_usageCategory;
    if (v33 == @"SystemSoundHapticsParser")
    {
      if (kHAPIScope)
      {
        p_super = *kHAPIScope;
        if (!p_super)
        {
          v25 = 1;
          v26 = 1;
LABEL_37:
          [(CHHapticEngine *)v17 storeOptions:optionsCopy];
          if (v26 && ![(CHHapticEngine *)v17 setupEngineWithCategory:v17->_usageCategory session:v17->_avAudioSession needsAudioPowerBudget:[(CHHapticEngine *)v17 needsAudioPowerBudget] error:error]|| ([(CHHapticEngine *)v17 connectAudioSession:v17->_avAudioSession], v28 = [(CHHapticEngine *)v17 getSessionIDFromAVAudioSession:v17->_avAudioSession], ![(CHHapticEngine *)v17 doInit:v28 sessionIsShared:sharedCopy options:optionsCopy bypassAudioSession:v25 error:error]))
          {
            metrics = v17;
            v17 = 0;
LABEL_67:

LABEL_68:
            v41 = CALog::Scope::oslog(kHAPIScope);
            v38 = v41;
            if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_21569A000, v38, OS_SIGNPOST_INTERVAL_END, spid, "HapticEngine_initWithAudioSession", &unk_215703E5B, buf, 2u);
            }

            goto LABEL_71;
          }

          if (sharedCopy)
          {
LABEL_66:
            v40 = [[CHMetrics alloc] initWithEngine:v17 audioSessionID:v28 sessionIsShared:v17->_sessionIsShared isSPI:1];
            metrics = v17->_metrics;
            v17->_metrics = v40;
            goto LABEL_67;
          }

          if (kHAPIScope)
          {
            v29 = *kHAPIScope;
            if (!v29)
            {
LABEL_65:
              [(CHHapticEngine *)v17 setActivateAudioSessionOnStart:0];
              [(CHHapticEngine *)v17 updateEngineBehavior];
              goto LABEL_66;
            }
          }

          else
          {
            v29 = MEMORY[0x277D86220];
            v39 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v50 = "CHHapticEngine.mm";
            v51 = 1024;
            v52 = 1557;
            v53 = 2080;
            v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
            _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting behavior to not activate audio session (if haptics-only)", buf, 0x1Cu);
          }

          goto LABEL_65;
        }
      }

      else
      {
        p_super = MEMORY[0x277D86220];
        v46 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v50 = "CHHapticEngine.mm";
        v51 = 1024;
        v52 = 1535;
        v53 = 2080;
        v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
        v55 = 2112;
        v56 = v33;
        _os_log_impl(&dword_21569A000, p_super, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Omitting audio session creation for usage category: %@", buf, 0x26u);
      }

      v25 = 1;
      goto LABEL_88;
    }

    if (kHAPIScope)
    {
      v34 = *kHAPIScope;
      v35 = v34;
      if (!v34)
      {
LABEL_83:
        auxiliarySession = [AVFASoftLink::getAVAudioSession(v34) auxiliarySession];
        v25 = 0;
        p_super = &v17->_avAudioSession->super;
        v17->_avAudioSession = auxiliarySession;
LABEL_88:
        v26 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v35 = MEMORY[0x277D86220];
      v44 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v50 = "CHHapticEngine.mm";
      v51 = 1024;
      v52 = 1539;
      v53 = 2080;
      v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
      _os_log_impl(&dword_21569A000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating internal unshared audio session", buf, 0x1Cu);
    }

    goto LABEL_83;
  }

  if (!kHAPIScope)
  {
    v22 = MEMORY[0x277D86220];
    v36 = MEMORY[0x277D86220];
    goto LABEL_52;
  }

  v22 = *kHAPIScope;
  if (v22)
  {
LABEL_52:
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v50 = "CHHapticEngine.mm";
      v51 = 1024;
      v52 = 1519;
      v53 = 2080;
      v54 = "[CHHapticEngine initWithAudioSession:sessionIsShared:options:error:]";
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Shared audio session cannot be nil", buf, 0x1Cu);
    }
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4815 userInfo:0];
  }

  v37 = CALog::Scope::oslog(kHAPIScope);
  v38 = v37;
  if (v16 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v38, OS_SIGNPOST_INTERVAL_END, spid, "HapticEngine_initWithAudioSession", &unk_215703E5B, buf, 2u);
  }

  v17 = 0;
LABEL_71:

  return v17;
}

- (CHHapticEngine)initWithAudioSession:(id)session sessionIsShared:(BOOL)shared error:(id *)error
{
  sharedCopy = shared;
  sessionCopy = session;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Default", @"Locality", 0}];
  v10 = [(CHHapticEngine *)self initWithAudioSession:sessionCopy sessionIsShared:sharedCopy options:v9 error:error];

  return v10;
}

- (id)createPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = pattern;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1584;
    v15 = 2080;
    v16 = "[CHHapticEngine createPlayerWithPattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating player from pattern", &v11, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[PatternPlayer alloc] initWithPlayable:v6 engine:self privileged:0 error:outError];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1585, "[CHHapticEngine createPlayerWithPattern:error:]", "_player != nil", -4810, outError);
    v9 = 0;
  }

  return v9;
}

- (id)createAdvancedPlayerWithPattern:(CHHapticPattern *)pattern error:(NSError *)outError
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = pattern;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1591;
    v15 = 2080;
    v16 = "[CHHapticEngine createAdvancedPlayerWithPattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from pattern", &v11, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithPattern:v6 engine:self privileged:0 error:outError];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1592, "[CHHapticEngine createAdvancedPlayerWithPattern:error:]", "_player != nil", -4810, outError);
    v9 = 0;
  }

  return v9;
}

- (id)createAdvancedPlayerWithRingtoneData:(id)data error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1600;
    v15 = 2080;
    v16 = "[CHHapticEngine createAdvancedPlayerWithRingtoneData:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from ringtone data", &v11, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithRingtoneData:dataCopy engine:self error:error];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1601, "[CHHapticEngine createAdvancedPlayerWithRingtoneData:error:]", "_player != nil", -4810, error);
    v9 = 0;
  }

  return v9;
}

- (id)createAdvancedPlayerWithVibePatternDictionary:(id)dictionary error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1609;
    v15 = 2080;
    v16 = "[CHHapticEngine createAdvancedPlayerWithVibePatternDictionary:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from vibe pattern dictionary", &v11, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithVibePatternDictionary:dictionaryCopy engine:self error:error];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1610, "[CHHapticEngine createAdvancedPlayerWithVibePatternDictionary:error:]", "_player != nil", -4810, error);
    v9 = 0;
  }

  return v9;
}

- (id)createAdvancedPlayerWithRingtonePattern:(id)pattern error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1617;
    v15 = 2080;
    v16 = "[CHHapticEngine createAdvancedPlayerWithRingtonePattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating advanced player from ringtone pattern", &v11, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[AdvancedPatternPlayer alloc] initWithPattern:patternCopy engine:self privileged:1 error:error];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1618, "[CHHapticEngine createAdvancedPlayerWithRingtonePattern:error:]", "_player != nil", -4810, error);
    v9 = 0;
  }

  return v9;
}

- (id)createPrivilegedPlayerWithPlayable:(id)playable error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  playableCopy = playable;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1626;
    v15 = 2080;
    v16 = "[CHHapticEngine createPrivilegedPlayerWithPlayable:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating privileged player from Playable", &v11, 0x1Cu);
  }

LABEL_8:
  if (self->_player)
  {
    v9 = [[PatternPlayer alloc] initWithPlayable:playableCopy engine:self privileged:1 error:error];
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1627, "[CHHapticEngine createPrivilegedPlayerWithPlayable:error:]", "_player != nil", -4810, error);
    v9 = 0;
  }

  return v9;
}

- (double)getDurationForResource:(unint64_t)resource
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  DurationForResource = ResourceRegistry::getDurationForResource(v6, resource);
  if ((v8 & 1) == 0)
  {
    if (kHAPIScope)
    {
      v10 = *kHAPIScope;
      if (!v10)
      {
LABEL_10:
        v9 = 0.0;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "CHHapticEngine.mm";
      v15 = 1024;
      v16 = 1642;
      v17 = 2080;
      v18 = "[CHHapticEngine getDurationForResource:]";
      v19 = 1024;
      resourceCopy = resource;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot find resource referenced by ID %u. Returning 0.0", &v13, 0x22u);
    }

    goto LABEL_10;
  }

  v9 = *&DurationForResource;
LABEL_11:
  std::mutex::unlock(v4);
  return v9;
}

- (BOOL)isResourceLoopEnabled:(unint64_t)enabled
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  isResourceLoopEnabled = ResourceRegistry::isResourceLoopEnabled(v6, enabled);
  LOBYTE(v8) = isResourceLoopEnabled;
  if ((isResourceLoopEnabled & 0x100) == 0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 1654;
      v15 = 2080;
      v16 = "[CHHapticEngine isResourceLoopEnabled:]";
      v17 = 1024;
      enabledCopy = enabled;
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot find resource referenced by ID %u. Returning FALSE", &v11, 0x22u);
    }

    LOBYTE(v8) = 0;
  }

LABEL_9:
  std::mutex::unlock(v4);
  return v8 & 1;
}

- (id)getMetricsForPlayer:(id)player
{
  v3 = [(CHMetrics *)self->_metrics getMetricsForPlayer:player];

  return v3;
}

- (__map_iterator<std::__tree_iterator<std::__value_type<unsigned)doFindPublicAudioResourceID:(unint64_t)d
{
  left = self->_publicAudioResources.__tree_.__end_node_.__left_;
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return p_end_node;
  }

  v6.var0.var0 = p_end_node;
  do
  {
    v7 = v4[4];
    v8 = v7 >= d;
    v9 = v7 < d;
    if (v8)
    {
      v6.var0.var0 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v6.var0.var0 == p_end_node || *(v6.var0.var0 + 4) > d)
  {
    return p_end_node;
  }

  return v6;
}

- (void)addPublicAudioResourceID:(unint64_t)d withURL:(id)l options:(id)options
{
  dCopy = d;
  v22 = *MEMORY[0x277D85DE8];
  dCopy2 = d;
  lCopy = l;
  optionsCopy = options;
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1693;
    v16 = 2080;
    v17 = "[CHHapticEngine addPublicAudioResourceID:withURL:options:]";
    v18 = 2048;
    selfCopy = self;
    v20 = 1024;
    v21 = dCopy;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine %p adding resID %u to public resource list", buf, 0x2Cu);
  }

LABEL_8:
  if (&self->_publicAudioResources.__tree_.__end_node_ != [(CHHapticEngine *)self doFindPublicAudioResourceID:dCopy2])
  {
    [CHHapticEngine addPublicAudioResourceID:withURL:options:];
  }

  v12 = lCopy;
  *buf = v12;
  v13 = optionsCopy;
  *&buf[8] = v13;
  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::__emplace_unique_key_args<unsigned long,unsigned long &,std::tuple<NSURL * {__strong},NSDictionary * {__strong}>>(&self->_publicAudioResources, &dCopy2, &dCopy2, buf);
}

- (BOOL)hasPublicAudioResourceID:(unint64_t)d
{
  dCopy = d;
  v23 = *MEMORY[0x277D85DE8];
  v5.var0.var0 = [(CHHapticEngine *)self doFindPublicAudioResourceID:?];
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      return p_end_node != v5.var0.var0;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = "did not find";
    v11 = 136316418;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 1702;
    v16 = "[CHHapticEngine hasPublicAudioResourceID:]";
    v15 = 2080;
    if (p_end_node != v5.var0.var0)
    {
      v9 = "found";
    }

    v17 = 2048;
    selfCopy = self;
    v19 = 2080;
    v20 = v9;
    v21 = 1024;
    v22 = dCopy;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine %p %s resID %u", &v11, 0x36u);
  }

  return p_end_node != v5.var0.var0;
}

- (unint64_t)idForPublicAudioResourceURL:(id)l withOptions:(id)options
{
  lCopy = l;
  optionsCopy = options;
  begin_node = self->_publicAudioResources.__tree_.__begin_node_;
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  if (begin_node != &self->_publicAudioResources.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v11 = begin_node[5].__left_;
      v12 = begin_node[6].__left_;
      absoluteString = [v11 absoluteString];
      absoluteString2 = [lCopy absoluteString];
      if ([absoluteString isEqualToString:absoluteString2])
      {
        v15 = [v12 isEqualToDictionary:optionsCopy];

        if (v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v16 = begin_node[1].__left_;
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = v16->__left_;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = begin_node[2].__left_;
          v18 = v17->__left_ == begin_node;
          begin_node = v17;
        }

        while (!v18);
      }

      begin_node = v17;
    }

    while (v17 != p_end_node);
  }

  left = 0;
LABEL_13:

  return left;
}

- (void)removePublicAudioResourceID:(unint64_t)d
{
  v18 = *MEMORY[0x277D85DE8];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136316162;
    v9 = "CHHapticEngine.mm";
    v10 = 1024;
    v11 = 1718;
    v12 = 2080;
    v13 = "[CHHapticEngine removePublicAudioResourceID:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 1024;
    dCopy = d;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Engine %p removing resID %u from public resource list", &v8, 0x2Cu);
  }

LABEL_8:
  v7 = [(CHHapticEngine *)self doFindPublicAudioResourceID:d];
  if (&self->_publicAudioResources.__tree_.__end_node_ == v7)
  {
    [CHHapticEngine removePublicAudioResourceID:];
  }

  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::erase(&self->_publicAudioResources, v7);
}

+ (BOOL)resourceIsRegistered:(unint64_t)registered
{
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  LOBYTE(registered) = ResourceRegistry::isResourceRegistered(v6, registered);
  std::mutex::unlock(v4);
  return registered;
}

- (CHHapticAudioResourceID)registerAudioResource:(NSURL *)resourceURL options:(NSDictionary *)options error:(NSError *)outError
{
  v8 = resourceURL;
  v9 = options;
  player = [(CHHapticEngine *)self player];

  if (player)
  {
    v11 = CALog::Scope::oslog(kHAPIScope);
    v12 = os_signpost_id_make_with_pointer(v11, self);

    v13 = CALog::Scope::oslog(kHAPIScope);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HapticEngine_registerAudioResource", " enableTelemetry=YES ", buf, 2u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16 = MEMORY[0x277CBEC10];
    if (v9)
    {
      v16 = v9;
    }

    v17 = v16;

    v18 = [(CHHapticEngine *)selfCopy idForPublicAudioResourceURL:v8 withOptions:v17];
    if (!v18)
    {
      v25 = 0;
      v18 = [(CHHapticEngine *)selfCopy doRegisterAudioResource:v8 options:v17 fromPattern:0 error:&v25];
      v19 = v25;
      if (!v19 && v18)
      {
        [(CHHapticEngine *)selfCopy addPublicAudioResourceID:v18 withURL:v8 options:v17];
      }

      if (outError)
      {
        v20 = v19;
        *outError = v19;
      }
    }

    objc_sync_exit(selfCopy);

    v21 = CALog::Scope::oslog(kHAPIScope);
    v22 = v21;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v12, "HapticEngine_registerAudioResource", &unk_215703E5B, v24, 2u);
    }
  }

  else
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1732, "[CHHapticEngine registerAudioResource:options:error:]", "self.player != nil", -4810, outError);
    v18 = 0;
    v17 = v9;
  }

  return v18;
}

- (BOOL)unregisterAudioResource:(CHHapticAudioResourceID)resourceID error:(NSError *)outError
{
  v27 = *MEMORY[0x277D85DE8];
  player = [(CHHapticEngine *)self player];

  if (!player)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1757, "[CHHapticEngine unregisterAudioResource:error:]", "self.player != nil", -4810, outError);
    return 0;
  }

  v8 = CALog::Scope::oslog(kHAPIScope);
  v9 = os_signpost_id_make_with_pointer(v8, self);

  v10 = CALog::Scope::oslog(kHAPIScope);
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HapticEngine_unregisterAudioResource", " enableTelemetry=YES ", &v19, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CHHapticEngine *)selfCopy hasPublicAudioResourceID:resourceID])
  {
    if ([(CHHapticEngine *)selfCopy doUnregisterAudioResource:resourceID fromPattern:0 error:outError])
    {
      [(CHHapticEngine *)selfCopy removePublicAudioResourceID:resourceID];
      v13 = 1;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (kHAPIScope)
  {
    v14 = *kHAPIScope;
    if (!v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315906;
    v20 = "CHHapticEngine.mm";
    v21 = 1024;
    v22 = 1768;
    v23 = 2080;
    v24 = "[CHHapticEngine unregisterAudioResource:error:]";
    v25 = 1024;
    v26 = resourceID;
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: audio resource ID %u not registered on this CHHapticEngine", &v19, 0x22u);
  }

LABEL_16:
  if (outError)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4824 userInfo:0];
    *outError = v13 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
LABEL_19:
  objc_sync_exit(selfCopy);

  v16 = CALog::Scope::oslog(kHAPIScope);
  v17 = v16;
  if (v9 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v17, OS_SIGNPOST_INTERVAL_END, v9, "HapticEngine_unregisterAudioResource", &unk_215703E5B, &v19, 2u);
  }

  return v13;
}

- (void)doUnregisterAllPublicAudioResources
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_publicAudioResources.__tree_.__size_)
  {
    if (kHAPIScope)
    {
      v3 = *kHAPIScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "CHHapticEngine.mm";
      v16 = 1024;
      v17 = 1778;
      v18 = 2080;
      v19 = "[CHHapticEngine doUnregisterAllPublicAudioResources]";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Attempting to remove all remaining public audio resources for this engine", buf, 0x1Cu);
    }
  }

LABEL_9:
  begin_node = self->_publicAudioResources.__tree_.__begin_node_;
  p_end_node = &self->_publicAudioResources.__tree_.__end_node_;
  if (begin_node != &self->_publicAudioResources.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      v8 = begin_node[5].__left_;
      v9 = begin_node[6].__left_;
      v13 = 0;
      [(CHHapticEngine *)self doUnregisterAudioResource:left fromPattern:0 error:&v13];

      v10 = begin_node[1].__left_;
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = v10->__left_;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = begin_node[2].__left_;
          v12 = v11->__left_ == begin_node;
          begin_node = v11;
        }

        while (!v12);
      }

      begin_node = v11;
    }

    while (v11 != p_end_node);
  }

  std::__tree<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<NSURL * {__strong},NSDictionary * {__strong}>>>>::destroy(&self->_publicAudioResources, self->_publicAudioResources.__tree_.__end_node_.__left_);
  self->_publicAudioResources.__tree_.__end_node_.__left_ = 0;
  self->_publicAudioResources.__tree_.__size_ = 0;
  self->_publicAudioResources.__tree_.__begin_node_ = p_end_node;
}

- (void)doUnregisterAllAudioResources
{
  v33 = *MEMORY[0x277D85DE8];
  player = [(CHHapticEngine *)self player];
  v4 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v6 = ResourceRegistry::instance(v5);
  ResourceRegistry::cleanUpRefCountKey(v6, self, v19);
  if (player)
  {
    for (i = v20; i; i = *i)
    {
      if (kHAPIScope)
      {
        v8 = *kHAPIScope;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = i[2];
        *buf = 136315906;
        *&buf[4] = "CHHapticEngine.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1802;
        *&buf[18] = 2080;
        *&buf[20] = "[CHHapticEngine doUnregisterAllAudioResources]";
        *&buf[28] = 1024;
        *&buf[30] = v10;
        _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: releasing resource ID %u from engine dealloc", buf, 0x22u);
      }

LABEL_10:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__3;
      *&buf[32] = __Block_byref_object_dispose__3;
      v32 = 0;
      v11 = i[2];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __47__CHHapticEngine_doUnregisterAllAudioResources__block_invoke;
      v18[3] = &unk_2781C93A8;
      v18[4] = buf;
      if (([player releaseCustomAudioEvent:v11 reply:v18] & 1) == 0)
      {
        if (!kHAPIScope)
        {
          v13 = MEMORY[0x277D86220];
          v14 = MEMORY[0x277D86220];
          v12 = v13;
LABEL_15:
          v15 = v12;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = i[2];
            localizedDescription = [*(*&buf[8] + 40) localizedDescription];
            *v21 = 136316162;
            v22 = "CHHapticEngine.mm";
            v23 = 1024;
            v24 = 1807;
            v25 = 2080;
            v26 = "[CHHapticEngine doUnregisterAllAudioResources]";
            v27 = 1024;
            v28 = v16;
            v29 = 2112;
            v30 = localizedDescription;
            _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: unable to release server-side audio resource with ID %u: %@", v21, 0x2Cu);
          }

          goto LABEL_18;
        }

        v12 = *kHAPIScope;
        if (v12)
        {
          goto LABEL_15;
        }
      }

LABEL_18:
      _Block_object_dispose(buf, 8);
    }
  }

  std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(v19);
  std::mutex::unlock(v4);
}

- (BOOL)playPatternFromURL:(NSURL *)fileURL error:(NSError *)outError
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = fileURL;
  if (!self->_player)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1813, "[CHHapticEngine playPatternFromURL:error:]", "_player != nil", -4810, outError);
    v15 = 0;
    goto LABEL_43;
  }

  v7 = CALog::Scope::oslog(kHAPIScope);
  v8 = os_signpost_id_make_with_pointer(v7, self);

  v9 = CALog::Scope::oslog(kHAPIScope);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_playPatternFromURL", " enableTelemetry=YES ", buf, 2u);
  }

  if (v6)
  {
    if ([(NSURL *)v6 isFileURL])
    {
      path = [(NSURL *)v6 path];
      pathExtension = [path pathExtension];
      v13 = [pathExtension isEqualToString:@"plist"];

      if (v13)
      {
        if (kHAPIScope)
        {
          v14 = *kHAPIScope;
          if (!v14)
          {
LABEL_32:
            v34 = 0;
            v24 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v6 error:&v34];
            v25 = v34;
            v33 = v25;
            v21 = [[CHHapticPattern alloc] initWithDictionary:v24 error:&v33];
            v20 = v33;

            goto LABEL_33;
          }
        }

        else
        {
          v14 = MEMORY[0x277D86220];
          v23 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v36 = "CHHapticEngine.mm";
          v37 = 1024;
          v38 = 1820;
          v39 = 2080;
          v40 = "[CHHapticEngine playPatternFromURL:error:]";
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating haptic pattern from plist...", buf, 0x1Cu);
        }

        goto LABEL_32;
      }
    }

    if (kHAPIScope)
    {
      v16 = *kHAPIScope;
      if (!v16)
      {
LABEL_22:
        v32 = 0;
        v19 = [[CHHapticPattern alloc] initWithContentsOfURL:v6 error:&v32];
        v20 = v32;
        v21 = v19;
LABEL_33:
        if (v21)
        {
          v31 = v20;
          v15 = [(CHHapticEngine *)self doPlayPattern:v21 error:&v31];
          v26 = v31;

          v20 = v26;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v36 = "CHHapticEngine.mm";
      v37 = 1024;
      v38 = 1825;
      v39 = 2080;
      v40 = "[CHHapticEngine playPatternFromURL:error:]";
      _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating haptic pattern from JSON or AHAP...", buf, 0x1Cu);
    }

    goto LABEL_22;
  }

  if (!kHAPIScope)
  {
    v17 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v17 = *kHAPIScope;
  if (v17)
  {
LABEL_24:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "CHHapticEngine.mm";
      v37 = 1024;
      v38 = 1836;
      v39 = 2080;
      v40 = "[CHHapticEngine playPatternFromURL:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming fileURL cannot be nil", buf, 0x1Cu);
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-50 userInfo:0];
  v15 = 0;
LABEL_37:
  if (outError)
  {
    v27 = v20;
    *outError = v20;
  }

  v28 = CALog::Scope::oslog(kHAPIScope);
  v29 = v28;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21569A000, v29, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_playPatternFromURL", &unk_215703E5B, buf, 2u);
  }

LABEL_43:
  return v15;
}

- (BOOL)playPatternFromData:(NSData *)data error:(NSError *)outError
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = data;
  if (self->_player)
  {
    v7 = CALog::Scope::oslog(kHAPIScope);
    v8 = os_signpost_id_make_with_pointer(v7, self);

    v9 = CALog::Scope::oslog(kHAPIScope);
    v10 = v9;
    v11 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21569A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HapticEngine_playPatternFromData", " enableTelemetry=YES ", buf, 2u);
    }

    if (v6)
    {
      v30 = 0;
      v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v30];
      v13 = v30;
      if (v12)
      {
        goto LABEL_9;
      }

      v29 = 0;
      v12 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v29];
      v14 = v29;

      if (v12)
      {
        v13 = v14;
LABEL_9:
        v28 = v13;
        v15 = [[CHHapticPattern alloc] initWithDictionary:v12 error:&v28];
        v14 = v28;

        if (v15)
        {
          v27 = v14;
          v16 = [(CHHapticEngine *)self doPlayPattern:v15 error:&v27];
          v17 = v27;

          v14 = v17;
        }

        else
        {
          v16 = 0;
        }

        if (!outError)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (kHAPIScope)
      {
        v23 = *kHAPIScope;
        if (!v23)
        {
LABEL_34:
          if (outError)
          {
            *outError = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4814 userInfo:0];
          }

          v25 = CALog::Scope::oslog(kHAPIScope);
          v22 = v25;
          if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_playPatternFromData", &unk_215703E5B, buf, 2u);
          }

          v16 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v23 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "CHHapticEngine.mm";
        v33 = 1024;
        v34 = 1861;
        v35 = 2080;
        v36 = "[CHHapticEngine playPatternFromData:error:]";
        _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming NSData is invalid", buf, 0x1Cu);
      }

      goto LABEL_34;
    }

    if (kHAPIScope)
    {
      v18 = *kHAPIScope;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "CHHapticEngine.mm";
      v33 = 1024;
      v34 = 1876;
      v35 = 2080;
      v36 = "[CHHapticEngine playPatternFromData:error:]";
      _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Incoming NSData cannot be nil", buf, 0x1Cu);
    }

LABEL_22:
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-50 userInfo:0];
    v16 = 0;
    if (!outError)
    {
LABEL_24:
      v21 = CALog::Scope::oslog(kHAPIScope);
      v22 = v21;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21569A000, v22, OS_SIGNPOST_INTERVAL_END, v8, "HapticEngine_playPatternFromData", &unk_215703E5B, buf, 2u);
      }

LABEL_40:

      goto LABEL_41;
    }

LABEL_23:
    v20 = v14;
    *outError = v14;
    goto LABEL_24;
  }

  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 1848, "[CHHapticEngine playPatternFromData:error:]", "_player != nil", -4810, outError);
  v16 = 0;
LABEL_41:

  return v16;
}

- (BOOL)doPlayPattern:(id)pattern error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
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
    *buf = 136315650;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1889;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine doPlayPattern:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Creating Pattern Player", buf, 0x1Cu);
  }

LABEL_8:
  v9 = [(CHHapticEngine *)self createPlayerWithPattern:patternCopy error:error];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  v39 = __Block_byref_object_dispose__3;
  v40 = 0;
  if (!kHAPIScope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v10 = *kHAPIScope;
  if (v10)
  {
LABEL_14:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v32 = 136315650;
      v33 = "CHHapticEngine.mm";
      v34 = 1024;
      v35 = 1899;
      v36 = 2080;
      v37 = "[CHHapticEngine doPlayPattern:error:]";
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting CHHapticEngine...", v32, 0x1Cu);
    }
  }

  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  objc_initWeak(v32, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __38__CHHapticEngine_doPlayPattern_error___block_invoke;
  v22[3] = &unk_2781C9930;
  v25 = buf;
  v14 = v13;
  v23 = v14;
  objc_copyWeak(&v27, v32);
  v26 = &v28;
  v24 = v9;
  [(CHHapticEngine *)self startWithCompletionHandler:v22];
  v15 = dispatch_time(0, 4000000000);
  v16 = dispatch_group_wait(v14, v15);
  v18 = (*&buf[8] + 40);
  v17 = *(*&buf[8] + 40);
  if (error && v17)
  {
    v11 = 0;
    *error = v17;
  }

  else
  {
    if (v16)
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4808 userInfo:0];
      v20 = v19;
      objc_storeStrong(v18, v19);
      *(v29 + 24) = 0;
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v11 = *(v29 + 24);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(v32);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v28, 8);
LABEL_26:

  return v11 & 1;
}

void __38__CHHapticEngine_doPlayPattern_error___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
LABEL_10:
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        dispatch_group_leave(*(a1 + 32));
        goto LABEL_11;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "CHHapticEngine.mm";
      v19 = 1024;
      v20 = 1906;
      v21 = 2080;
      v22 = "[CHHapticEngine doPlayPattern:error:]_block_invoke";
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot start haptic engine: error %@", location, 0x26u);
    }

    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_initWeak(location, WeakRetained);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__CHHapticEngine_doPlayPattern_error___block_invoke_246;
  v14[3] = &unk_2781C9908;
  objc_copyWeak(&v17, location);
  v12 = *(a1 + 56);
  v7 = *(a1 + 40);
  *&v8 = v12;
  *(&v8 + 1) = *(a1 + 48);
  v13 = v8;
  v9 = *(a1 + 32);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  v16 = v13;
  v15 = v10;
  [WeakRetained dispatchOnLocal:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(location);

LABEL_11:
}

void __38__CHHapticEngine_doPlayPattern_error___block_invoke_246(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained currentTime];
    v5 = v4;
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
LABEL_9:
        v8 = *(a1 + 32);
        v9 = *(*(a1 + 56) + 8);
        obj = *(v9 + 40);
        v10 = [v8 startAtTime:&obj error:v5];
        objc_storeStrong((v9 + 40), obj);
        *(*(*(a1 + 48) + 8) + 24) = v10;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v13 = "CHHapticEngine.mm";
      v14 = 1024;
      v15 = 1918;
      v16 = 2080;
      v17 = "[CHHapticEngine doPlayPattern:error:]_block_invoke";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting Pattern Player...", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));
}

+ (void)dispatchOnGlobal:(id)global
{
  globalCopy = global;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CHHapticEngine_CHHapticEngineInternal__dispatchOnGlobal___block_invoke;
  block[3] = &unk_2781C9260;
  v7 = globalCopy;
  v5 = globalCopy;
  dispatch_async(v4, block);
}

- (void)dispatchOnLocal:(id)local
{
  v20 = *MEMORY[0x277D85DE8];
  localCopy = local;
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
          v7 = MEMORY[0x21606F540](localCopy);
          *buf = 136315906;
          v13 = "CHHapticEngine.mm";
          v14 = 1024;
          v15 = 1998;
          v16 = 2080;
          v17 = "[CHHapticEngine(CHHapticEngineInternal) dispatchOnLocal:]";
          v18 = 2048;
          v19 = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Dispatching block %p async...>", buf, 0x26u);
        }
      }
    }
  }

  if (in_dispatch_sync == 1)
  {
    [CHHapticEngine(CHHapticEngineInternal) dispatchOnLocal:];
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CHHapticEngine_CHHapticEngineInternal__dispatchOnLocal___block_invoke;
  block[3] = &unk_2781C9260;
  v11 = localCopy;
  v9 = localCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__CHHapticEngine_CHHapticEngineInternal__dispatchOnLocal___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v1 = *kHAPIScope;
      if (v1)
      {
        v2 = v1;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          v3 = 136315650;
          v4 = "CHHapticEngine.mm";
          v5 = 1024;
          v6 = 2002;
          v7 = 2080;
          v8 = "[CHHapticEngine(CHHapticEngineInternal) dispatchOnLocal:]_block_invoke";
          _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Block async dispatch complete>", &v3, 0x1Cu);
        }
      }
    }
  }
}

- (void)dispatchSyncOnLocal:(id)local
{
  v20 = *MEMORY[0x277D85DE8];
  localCopy = local;
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
          v7 = MEMORY[0x21606F540](localCopy);
          *buf = 136315906;
          v13 = "CHHapticEngine.mm";
          v14 = 1024;
          v15 = 2008;
          v16 = 2080;
          v17 = "[CHHapticEngine(CHHapticEngineInternal) dispatchSyncOnLocal:]";
          v18 = 2048;
          v19 = v7;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Dispatching block %p sync...>", buf, 0x26u);
        }
      }
    }
  }

  in_dispatch_sync = 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CHHapticEngine_CHHapticEngineInternal__dispatchSyncOnLocal___block_invoke;
  block[3] = &unk_2781C9260;
  v11 = localCopy;
  v9 = localCopy;
  dispatch_sync(dispatchQueue, block);
  in_dispatch_sync = 0;
}

void __62__CHHapticEngine_CHHapticEngineInternal__dispatchSyncOnLocal___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 32) + 16))();
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v1 = *kHAPIScope;
      if (v1)
      {
        v2 = v1;
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
        {
          v3 = 136315650;
          v4 = "CHHapticEngine.mm";
          v5 = 1024;
          v6 = 2012;
          v7 = 2080;
          v8 = "[CHHapticEngine(CHHapticEngineInternal) dispatchSyncOnLocal:]_block_invoke";
          _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Block sync dispatch complete>", &v3, 0x1Cu);
        }
      }
    }
  }
}

- (BOOL)checkEngineStateOnStart:(id *)start
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(CHHapticEngine *)self isAutoShutdownEnabled]&& ![(CHHapticEngine *)self running])
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        return [(CHHapticEngine *)self doStartEngineAndWait:start];
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "CHHapticEngine.mm";
      v10 = 1024;
      v11 = 2020;
      v12 = 2080;
      v13 = "[CHHapticEngine(CHHapticEngineInternal) checkEngineStateOnStart:]";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: AutoShutdown on and engine stopped - auto start", &v8, 0x1Cu);
    }

    return [(CHHapticEngine *)self doStartEngineAndWait:start];
  }

  if ([(CHHapticEngine *)self running])
  {
    return 1;
  }

  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 2024, "[CHHapticEngine(CHHapticEngineInternal) checkEngineStateOnStart:]", "self.running", -4805, start);
  return 0;
}

- (BOOL)checkEngineRunning:(id *)running
{
  running = [(CHHapticEngine *)self running];
  if (!running)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/CHHapticEngine.mm", 2031, "[CHHapticEngine(CHHapticEngineInternal) checkEngineRunning:]", "self.running", -4805, running);
  }

  return running;
}

- (BOOL)notifyPlayerStarted:(id)started atTime:(double)time
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_initWeak(&location, selfCopy);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke;
  v10[3] = &unk_2781C9420;
  objc_copyWeak(&v11, &location);
  [(CHHapticEngine *)selfCopy dispatchOnLocal:v10];
  player = [(CHHapticEngine *)selfCopy player];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke_2;
  v8[3] = &unk_2781C8FE0;
  objc_copyWeak(&v9, &location);
  v6 = [player finishWithCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);

  return v6;
}

void __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isAutoShutdownEnabled])
  {
    [WeakRetained cancelIdleTimer];
  }
}

void __69__CHHapticEngine_CHHapticEngineInternal__notifyPlayerStarted_atTime___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kHAPIScope)
  {
    v4 = *kHAPIScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 2047;
    v15 = 2080;
    v16 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStarted:atTime:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Top of AV finishWithCompletionHandler block>", &v11, 0x1Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v3)
  {
    goto LABEL_16;
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315906;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 2049;
    v15 = 2080;
    v16 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStarted:atTime:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: finishWithCompletionHandler callback returned error: %@", &v11, 0x26u);
  }

LABEL_16:
  if (WeakRetained)
  {
    [WeakRetained handleFinish:v3];
  }

  if (kHAPIScope)
  {
    v9 = *kHAPIScope;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "CHHapticEngine.mm";
    v13 = 1024;
    v14 = 2053;
    v15 = 2080;
    v16 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStarted:atTime:]_block_invoke";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Bottom of AV finishWithCompletionHandler block>", &v11, 0x1Cu);
  }

LABEL_25:
}

- (void)notifyPlayerStopped:(id)stopped atTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  stoppedCopy = stopped;
  if (kHAPIScope)
  {
    v6 = *kHAPIScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136316162;
    v9 = "CHHapticEngine.mm";
    v10 = 1024;
    v11 = 2061;
    v12 = 2080;
    v13 = "[CHHapticEngine(CHHapticEngineInternal) notifyPlayerStopped:atTime:]";
    v14 = 2048;
    v15 = stoppedCopy;
    v16 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: player %p notified engine it will be stopping at time %.3f", &v8, 0x30u);
  }

LABEL_8:
}

- (id)getAvailableChannel:(id *)channel
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(AVHapticPlayer *)self->_player addChannel:channel];
  if (!v3)
  {
    if (kHAPIScope)
    {
      v4 = *kHAPIScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "CHHapticEngine.mm";
      v9 = 1024;
      v10 = 2068;
      v11 = 2080;
      v12 = "[CHHapticEngine(CHHapticEngineInternal) getAvailableChannel:]";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to add an additional player channel", &v7, 0x1Cu);
    }
  }

LABEL_9:

  return v3;
}

- (void)releaseChannel:(id)channel
{
  v15 = *MEMORY[0x277D85DE8];
  player = self->_player;
  v8 = 0;
  v4 = [(AVHapticPlayer *)player removeChannel:channel error:&v8];
  v5 = v8;
  if (!v4)
  {
    if (kHAPIScope)
    {
      v6 = *kHAPIScope;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = MEMORY[0x277D86220];
      v7 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = "CHHapticEngine.mm";
      v11 = 1024;
      v12 = 2079;
      v13 = 2080;
      v14 = "[CHHapticEngine(CHHapticEngineInternal) releaseChannel:]";
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: This channel was not registered", buf, 0x1Cu);
    }
  }

LABEL_9:
}

- (BOOL)doReferenceAudioResourceByID:(unint64_t)d
{
  v24 = *MEMORY[0x277D85DE8];
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
    v16 = 136315906;
    v17 = "CHHapticEngine.mm";
    v18 = 1024;
    v19 = 2085;
    v20 = 2080;
    v21 = "[CHHapticEngine(CHHapticEngineInternal) doReferenceAudioResourceByID:]";
    v22 = 1024;
    dCopy2 = d;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding reference to audio resource ID %u from pattern", &v16, 0x22u);
  }

LABEL_8:
  v7 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v9 = ResourceRegistry::instance(v8);
  v10 = ResourceRegistry::incrementReferenceCountNoCreate(v9, d, self);
  if (!v10)
  {
    if (kHAPIScope)
    {
      v11 = *kHAPIScope;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v16 = 136315906;
    v17 = "CHHapticEngine.mm";
    v18 = 1024;
    v19 = 2093;
    v20 = 2080;
    v21 = "[CHHapticEngine(CHHapticEngineInternal) doReferenceAudioResourceByID:]";
    v22 = 1024;
    dCopy2 = d;
    v13 = "%25s:%-5d %s: Resource ID %u not previously registered!";
    goto LABEL_21;
  }

  if (kHAPIScope)
  {
    v11 = *kHAPIScope;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 136315906;
    v17 = "CHHapticEngine.mm";
    v18 = 1024;
    v19 = 2090;
    v20 = 2080;
    v21 = "[CHHapticEngine(CHHapticEngineInternal) doReferenceAudioResourceByID:]";
    v22 = 1024;
    dCopy2 = v10;
    v13 = "%25s:%-5d %s:    found it - reference count now %u";
LABEL_21:
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, v13, &v16, 0x22u);
  }

LABEL_22:

LABEL_23:
  std::mutex::unlock(v7);
  return v10 != 0;
}

- (unint64_t)doRegisterAudioResource:(id)resource options:(id)options fromPattern:(BOOL)pattern error:(id *)error
{
  patternCopy = pattern;
  v76 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  v63 = resourceCopy;
  optionsCopy = options;
  player = [(CHHapticEngine *)self player];
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = "Public";
    *buf = 136316162;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2101;
    *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
    *&buf[18] = 2080;
    if (patternCopy)
    {
      v12 = "Pattern";
    }

    *&buf[28] = 2080;
    *&buf[30] = v12;
    *&buf[38] = 2112;
    v65 = resourceCopy;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Registering %s audio resource '%@'", buf, 0x30u);
  }

LABEL_10:
  v51 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v14 = ResourceRegistry::instance(v13);
  IdealMatch = ResourceRegistry::findIdealMatch(v14, v63, optionsCopy, self);
  v17 = IdealMatch;
  if (v14 + 1 == IdealMatch)
  {
    if (kHAPIScope)
    {
      v22 = *kHAPIScope;
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "CHHapticEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2177;
      *&buf[18] = 2080;
      *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resource not already registered - creating new entry", buf, 0x1Cu);
    }

LABEL_36:
    std::allocate_shared[abi:ne200100]<AudioResource,std::allocator<AudioResource>,NSURL * {__strong}&,0>();
  }

  v18 = v16;
  v19 = *(IdealMatch + 5);
  v20 = *(IdealMatch + 6);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (kHAPIScope)
  {
    v21 = *kHAPIScope;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  v24 = v21;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = *v19;
    absoluteString = [v25 absoluteString];
    v27 = *(v17 + 4);
    *buf = 136316162;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[18] = 2080;
    *&buf[14] = 2112;
    *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
    *&buf[28] = 2112;
    *&buf[30] = absoluteString;
    *&buf[38] = 1024;
    LODWORD(v65) = v27;
    _os_log_impl(&dword_21569A000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: -- Entry list has '%@' with ID %u", buf, 0x2Cu);
  }

LABEL_23:
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    if (kHAPIScope)
    {
      v28 = *kHAPIScope;
      if (!v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = MEMORY[0x277D86220];
      v31 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v32 = *(v17 + 4);
      *buf = 136315906;
      *&buf[4] = "CHHapticEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2118;
      *&buf[18] = 2080;
      *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      *&buf[28] = 1024;
      *&buf[30] = v32;
      _os_log_impl(&dword_21569A000, v28, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Resource already registered and request uses matching options - referencing existing ID (%u)", buf, 0x22u);
    }

LABEL_41:
    v33 = *(v17 + 4);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__3;
    *&buf[32] = __Block_byref_object_dispose__3;
    v65 = 0;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke;
    v62[3] = &unk_2781C93A8;
    v62[4] = buf;
    if ([player referenceCustomAudioEvent:v33 reply:{v62, v51}])
    {
      goto LABEL_67;
    }

    if (kHAPIScope)
    {
      v34 = *kHAPIScope;
      if (!v34)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v34 = MEMORY[0x277D86220];
      v41 = MEMORY[0x277D86220];
    }

    v42 = v34;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [*(*&buf[8] + 40) localizedDescription];
      v66 = 136316162;
      v67 = "CHHapticEngine.mm";
      v68 = 1024;
      v69 = 2122;
      v70 = 2080;
      v71 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      v72 = 1024;
      v73 = v33;
      v74 = 2112;
      v75 = localizedDescription;
      _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: unable to reference server-side audio resource with ID %u: %@", &v66, 0x2Cu);
    }

LABEL_67:
    if (!*(*&buf[8] + 40))
    {
      ResourceRegistry::incrementReferenceCountNoCreate(v14, v33, self);
      goto LABEL_78;
    }

    if (kHAPIScope)
    {
      v44 = *kHAPIScope;
      if (!v44)
      {
LABEL_76:
        v33 = 0;
        if (error)
        {
          *error = *(*&buf[8] + 40);
        }

LABEL_78:
        _Block_object_dispose(buf, 8);

        if (!v20)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v44 = MEMORY[0x277D86220];
      v45 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v66 = 136315650;
      v67 = "CHHapticEngine.mm";
      v68 = 1024;
      v69 = 2124;
      v70 = 2080;
      v71 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v44, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Returning ID 0 due to error", &v66, 0x1Cu);
    }

    goto LABEL_76;
  }

  if (kHAPIScope)
  {
    v29 = *kHAPIScope;
    if (!v29)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v29 = MEMORY[0x277D86220];
    v35 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v36 = *(v17 + 4);
    *buf = 136315906;
    *&buf[4] = "CHHapticEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2140;
    *&buf[18] = 2080;
    *&buf[20] = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
    *&buf[28] = 1024;
    *&buf[30] = v36;
    _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Resource already registered but request uses options - copy existing ID (%u) as new ID", buf, 0x22u);
  }

LABEL_49:
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000uLL;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3;
  *&buf[32] = __Block_byref_object_dispose__3;
  v65 = 0;
  v37 = *(v17 + 4);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke_485;
  v61[3] = &unk_2781C9380;
  v61[4] = &v56;
  v61[5] = buf;
  [player copyCustomAudioEvent:v37 options:optionsCopy reply:{v61, v51}];
  if (*(*&buf[8] + 40))
  {
    if (kHAPIScope)
    {
      v38 = *kHAPIScope;
      if (!v38)
      {
LABEL_60:
        v33 = 0;
        if (error)
        {
          *error = *(*&buf[8] + 40);
        }

        goto LABEL_90;
      }
    }

    else
    {
      v38 = MEMORY[0x277D86220];
      v40 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v66 = 136315650;
      v67 = "CHHapticEngine.mm";
      v68 = 1024;
      v69 = 2168;
      v70 = 2080;
      v71 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Returning ID 0 due to error", &v66, 0x1Cu);
    }

    goto LABEL_60;
  }

  if (!kHAPIScope)
  {
    v39 = MEMORY[0x277D86220];
    v46 = MEMORY[0x277D86220];
    goto LABEL_81;
  }

  v39 = *kHAPIScope;
  if (v39)
  {
LABEL_81:
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v47 = v57[3];
      v66 = 136316162;
      v67 = "CHHapticEngine.mm";
      v68 = 1024;
      v69 = 2153;
      v70 = 2080;
      v71 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]";
      v72 = 1024;
      v73 = v47;
      v74 = 2112;
      v75 = v63;
      _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Returning ID %u for copied resource '%@'", &v66, 0x2Cu);
    }
  }

  v48 = v57[3];
  v59 = v19;
  v60 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = ResourceRegistry::emplace(v14, v48, &v59, *v19, optionsCopy, self);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if ((v49 & 1) == 0)
  {
    [CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:];
  }

  v33 = v57[3];
LABEL_90:
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v56, 8);
  if (v20)
  {
LABEL_91:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_92:
  std::mutex::unlock(v52);

  return v33;
}

void __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke_485(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v6)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 localizedDescription];
      v11 = 136315906;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 2149;
      v15 = 2080;
      v16 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]_block_invoke";
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server failed to copy custom audio event: %@", &v11, 0x26u);
    }
  }

LABEL_9:
}

void __92__CHHapticEngine_CHHapticEngineInternal__doRegisterAudioResource_options_fromPattern_error___block_invoke_490(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v6)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v6 localizedDescription];
      v11 = 136315906;
      v12 = "CHHapticEngine.mm";
      v13 = 1024;
      v14 = 2206;
      v15 = 2080;
      v16 = "[CHHapticEngine(CHHapticEngineInternal) doRegisterAudioResource:options:fromPattern:error:]_block_invoke";
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server failed to create custom audio event: %@", &v11, 0x26u);
    }
  }

LABEL_9:
}

- (BOOL)doUnregisterAudioResource:(unint64_t)resource fromPattern:(BOOL)pattern error:(id *)error
{
  patternCopy = pattern;
  v45 = *MEMORY[0x277D85DE8];
  player = [(CHHapticEngine *)self player];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  if (kHAPIScope)
  {
    v10 = *kHAPIScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = "public-loaded";
    *buf = 136316162;
    v38 = "CHHapticEngine.mm";
    v40 = 2235;
    v42 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
    v39 = 1024;
    v41 = 2080;
    if (patternCopy)
    {
      v12 = "pattern-loaded";
    }

    v43 = 2080;
    *v44 = v12;
    *&v44[8] = 1024;
    *&v44[10] = resource;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Attempting to remove %s ID %u", buf, 0x2Cu);
  }

LABEL_10:
  v13 = _sResourceMutex;
  std::mutex::lock(_sResourceMutex);
  v15 = ResourceRegistry::instance(v14);
  v16 = ResourceRegistry::decrementReferenceCount(v15, resource, self);
  if (v16)
  {
    if (v16 == 1)
    {
      if (kHAPIScope)
      {
        v18 = *kHAPIScope;
        if (!v18)
        {
          v19 = 1;
          goto LABEL_48;
        }
      }

      else
      {
        v18 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      v19 = 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v38 = "CHHapticEngine.mm";
        v39 = 1024;
        v40 = 2247;
        v41 = 2080;
        v42 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
        _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s:    found it and decrementing refcount", buf, 0x1Cu);
      }

      goto LABEL_47;
    }

    if (v16 != 2)
    {
LABEL_41:
      v19 = 0;
      goto LABEL_48;
    }

    if (kHAPIScope)
    {
      v17 = *kHAPIScope;
      if (!v17)
      {
LABEL_35:
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __86__CHHapticEngine_CHHapticEngineInternal__doUnregisterAudioResource_fromPattern_error___block_invoke;
        v30[3] = &unk_2781C93A8;
        v30[4] = &v31;
        v24 = [player releaseCustomAudioEvent:resource reply:v30];
        v19 = v24;
        if (player)
        {
          v25 = v24;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
LABEL_48:
          if (error)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        if (kHAPIScope)
        {
          v26 = *kHAPIScope;
          if (!v26)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v26 = MEMORY[0x277D86220];
          v27 = MEMORY[0x277D86220];
        }

        v18 = v26;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v32[5] localizedDescription];
          *buf = 136316162;
          v38 = "CHHapticEngine.mm";
          v39 = 1024;
          v40 = 2255;
          v41 = 2080;
          v42 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
          v43 = 1024;
          *v44 = resource;
          *&v44[4] = 2112;
          *&v44[6] = localizedDescription;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: unable to release server-side audio resource with ID %u: %@", buf, 0x2Cu);
        }

        v19 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v17 = MEMORY[0x277D86220];
      v23 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v38 = "CHHapticEngine.mm";
      v39 = 1024;
      v40 = 2252;
      v41 = 2080;
      v42 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
      _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d %s:    found it and refcount is at zero - erasing and releasing on server", buf, 0x1Cu);
    }

    goto LABEL_35;
  }

  if (!kHAPIScope)
  {
    v20 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    goto LABEL_26;
  }

  v20 = *kHAPIScope;
  if (v20)
  {
LABEL_26:
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v38 = "CHHapticEngine.mm";
      v39 = 1024;
      v40 = 2242;
      v41 = 2080;
      v42 = "[CHHapticEngine(CHHapticEngineInternal) doUnregisterAudioResource:fromPattern:error:]";
      v43 = 1024;
      *v44 = resource;
      _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: could not find audio resource with ID %u", buf, 0x22u);
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4824 userInfo:0];
    *error = v19 = 0;
LABEL_49:
    *error = v32[5];
    goto LABEL_50;
  }

  v19 = 0;
LABEL_50:
  std::mutex::unlock(v13);
  _Block_object_dispose(&v31, 8);

  return v19;
}

- (void)addPublicAudioResourceID:withURL:options:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v5 = 136315394;
    *&v5[4] = "CHHapticEngine.mm";
    *&v5[12] = 1024;
    *&v5[14] = 1694;
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [([self doFindPublicAudioResourceID:resourceID] == std::end(_publicAudioResources)) != 0 is false]: ", v1, v2, v3, v4, *v5, *&v5[8], *&v5[16]);
  }

  __break(1u);
}

- (void)removePublicAudioResourceID:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v5 = 136315394;
    *&v5[4] = "CHHapticEngine.mm";
    *&v5[12] = 1024;
    *&v5[14] = 1720;
    OUTLINED_FUNCTION_0(&dword_21569A000, MEMORY[0x277D86220], v0, "%25s:%-5d ASSERTION FAILURE [(result != std::end(_publicAudioResources)) != 0 is false]: ", v1, v2, v3, v4, *v5, *&v5[8], *&v5[16]);
  }

  __break(1u);
}

@end