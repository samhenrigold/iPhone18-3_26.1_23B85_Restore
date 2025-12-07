@interface SSCoreHapticsPlayer
- (BOOL)createAudioPlayerAndReturnError:(id *)error;
- (BOOL)doInit:(id)init haptic:(id)haptic error:(id *)error;
- (BOOL)playWithOptions:(id)options completionCallbackToken:(unsigned int)token error:(id *)error;
- (BOOL)prepareHapticPatternFromPlayOptions:(id)options;
- (BOOL)startPlayerAtTime:(double)time forAudio:(BOOL)audio error:(id *)error;
- (SSCoreHapticsPlayer)initWithAudio:(id)audio haptic:(id)haptic error:(id *)error;
- (SSCoreHapticsPlayer)initWithAudio:(id)audio hapticDictionary:(id)dictionary error:(id *)error;
- (id)getHapticDictionaryFromURL:(id)l;
- (id)setupDefaultEngineConfigBlock;
- (unint64_t)createAudioResource:(id)resource error:(id *)error;
- (void)createHapticPlayer:(id)player error:(id *)error;
- (void)dealloc;
- (void)handleFinish;
- (void)prewarm:(BOOL)prewarm;
- (void)registerCompletionPortion:(BOOL)portion;
- (void)setupLooping;
- (void)stop:(BOOL)stop;
@end

@implementation SSCoreHapticsPlayer

- (void)prewarm:(BOOL)prewarm
{
  prewarmCopy = prewarm;
  v20 = *MEMORY[0x1E69E9840];
  if (kSystemSoundClientLogSubsystem)
  {
    v5 = *kSystemSoundClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Unprewarming";
    ssid = self->_ssid;
    v10 = 136316162;
    v11 = "SSCoreHapticsPlayer.mm";
    v12 = 1024;
    if (prewarmCopy)
    {
      v7 = @"Prewarming";
    }

    v13 = 603;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = ssid;
    v18 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ SSID %u, SSCoreHapticsPlayer %p", &v10, 0x2Cu);
  }

LABEL_10:
  engine = self->_engine;
  if (prewarmCopy)
  {
    [(CHHapticEngine *)engine prewarmWithCompletionHandler:0];
  }

  else
  {
    [(CHHapticEngine *)engine stopPrewarm];
  }
}

- (void)stop:(BOOL)stop
{
  stopCopy = stop;
  v18 = *MEMORY[0x1E69E9840];
  if (!kSystemSoundClientLogSubsystem)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
LABEL_6:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      ssid = self->_ssid;
      v8 = 136316162;
      v9 = "SSCoreHapticsPlayer.mm";
      v10 = 1024;
      v11 = 585;
      v12 = 1024;
      v13 = ssid;
      v14 = 2048;
      selfCopy = self;
      v16 = 1024;
      v17 = stopCopy;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping SSID %u, SSCoreHapticsPlayer %p. stopNow: %d", &v8, 0x28u);
    }

    if (stopCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v5 = *kSystemSoundClientLogSubsystem;
  if (v5)
  {
    goto LABEL_6;
  }

  if (stopCopy)
  {
LABEL_4:
    [(SSCoreHapticsPlayer *)self registerCompletionAndStop];
    return;
  }

LABEL_9:
  if (self->_shouldPlayAudioFinal)
  {
    [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setLoopEnabled:0];
  }

  if (self->_shouldPlayHapticsFinal)
  {
    [(CHHapticAdvancedPatternPlayerExtended *)self->_hapticPlayer setLoopEnabled:0];
  }
}

- (BOOL)playWithOptions:(id)options completionCallbackToken:(unsigned int)token error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v8 = getpid();
  self->_clientCompletionToken = token;
  v9 = [(SSCoreHapticsPlayer *)self prepareHapticPatternFromPlayOptions:optionsCopy];
  SSClientPlayOptions::SSClientPlayOptions(&v63, self->_ssid, optionsCopy);
  if (*(&v63 + 3) < 0.0)
  {
    HIDWORD(v63) = 0;
  }

  v10 = 0.0;
  if (*&v64 < 0.0 || (v10 = 1.0, *&v64 > 1.0))
  {
    *&v64 = v10;
  }

  v11 = -1.0;
  if (*(&v64 + 1) < -1.0 || (v11 = 1.0, *(&v64 + 1) > 1.0))
  {
    *(&v64 + 1) = v11;
  }

  if (*(&v64 + 2) < 0.0)
  {
    DWORD2(v64) = 0;
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v12 = *kSystemSoundClientLogSubsystem;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  v14 = v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    ssid = self->_ssid;
    caulk::platform::process_name(&__p, v8);
    v16 = v56 >= 0 ? &__p : __p;
    *buf = 136317698;
    *&buf[4] = "SSCoreHapticsPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 489;
    *&buf[18] = 1024;
    *&buf[20] = ssid;
    LOWORD(v68) = 1024;
    *(&v68 + 2) = v8;
    WORD3(v68) = 2080;
    *(&v68 + 1) = v16;
    LOWORD(v69) = 1024;
    *(&v69 + 2) = DWORD1(v63);
    HIWORD(v69) = 1024;
    *v70 = v9;
    *&v70[4] = 1024;
    *&v70[6] = BYTE12(v64);
    *v71 = 2048;
    *&v71[2] = *(&v63 + 3);
    v72 = 1024;
    v73 = DWORD2(v63);
    v74 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d -> Incoming Request : SSID %d, inClientPID %d(%s), behaviorID %d, customHapticsProvided %d, loop %d, loopPeriod %f, inFlags %u, SSCoreHapticsPlayer %p", buf, 0x54u);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_22:
  audioPlayer = self->_audioPlayer;
  hapticPlayer = self->_hapticPlayer;
  shouldPlayAudioFinal = audioPlayer != 0;
  self->_shouldPlayAudioFinal = audioPlayer != 0;
  self->_shouldPlayHapticsFinal = hapticPlayer != 0;
  v20 = BYTE8(v63);
  if ((BYTE8(v63) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (audioPlayer)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v21 = *kSystemSoundClientLogSubsystem;
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_ssid;
      *buf = 136315906;
      *&buf[4] = "SSCoreHapticsPlayer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 499;
      *&buf[18] = 1024;
      *&buf[20] = v23;
      LOWORD(v68) = 2048;
      *(&v68 + 2) = self;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling audio for SSID %d, SSCoreHapticsPlayer %p as suppress audio flag is set", buf, 0x22u);
    }
  }

LABEL_31:
  shouldPlayAudioFinal = 0;
  self->_shouldPlayAudioFinal = 0;
LABEL_32:
  if ((v20 & 2) != 0)
  {
    if (self->_shouldPlayHapticsFinal)
    {
      if (kSystemSoundClientLogSubsystem)
      {
        v24 = *kSystemSoundClientLogSubsystem;
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_ssid;
        *buf = 136315906;
        *&buf[4] = "SSCoreHapticsPlayer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 503;
        *&buf[18] = 1024;
        *&buf[20] = v26;
        LOWORD(v68) = 2048;
        *(&v68 + 2) = self;
        _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling haptics for SSID %d, SSCoreHapticsPlayer %p as suppress haptic flag is set", buf, 0x22u);
      }
    }

LABEL_41:
    self->_shouldPlayHapticsFinal = 0;
    shouldPlayAudioFinal = self->_shouldPlayAudioFinal;
  }

  if (!shouldPlayAudioFinal && !self->_shouldPlayHapticsFinal)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v39 = *kSystemSoundClientLogSubsystem;
      if (!v39)
      {
LABEL_65:
        [(SSCoreHapticsPlayer *)self registerCompletionAndStop];
        v37 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    v41 = v39;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = self->_ssid;
      *buf = 136316162;
      *&buf[4] = "SSCoreHapticsPlayer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 508;
      *&buf[18] = 1024;
      *&buf[20] = v42;
      LOWORD(v68) = 1024;
      *(&v68 + 2) = DWORD1(v63);
      WORD3(v68) = 2048;
      *(&v68 + 1) = self;
      _os_log_impl(&dword_1B9A08000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Both sound and haptic flags are false for SSID %d, behaviorID: %d, SSCoreHapticsPlayer %p", buf, 0x28u);
    }

    goto LABEL_65;
  }

  v27 = objc_opt_new();
  self->_audioPlaybackFinished = !self->_shouldPlayAudioFinal;
  self->_hapticPlaybackFinished = !self->_shouldPlayHapticsFinal;
  if (!kSystemSoundClientLogSubsystem)
  {
    v28 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    goto LABEL_48;
  }

  v28 = *kSystemSoundClientLogSubsystem;
  if (v28)
  {
LABEL_48:
    v30 = v28;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      shouldPlayHapticsFinal = self->_shouldPlayHapticsFinal;
      v32 = self->_shouldPlayAudioFinal;
      v33 = self->_ssid;
      *buf = 136317186;
      *&buf[4] = "SSCoreHapticsPlayer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      *&buf[18] = 1024;
      *&buf[20] = v33;
      LOWORD(v68) = 2048;
      *(&v68 + 2) = self;
      WORD5(v68) = 1024;
      HIDWORD(v68) = v32;
      LOWORD(v69) = 1024;
      *(&v69 + 2) = shouldPlayHapticsFinal;
      HIWORD(v69) = 2048;
      *v70 = *&v64;
      *&v70[8] = 1024;
      *v71 = 0;
      *&v71[4] = 1024;
      *&v71[6] = 0;
      _os_log_impl(&dword_1B9A08000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SSID %d, SSCoreHapticsPlayer %p, shouldPlayAudio %d, shouldPlayHaptics %d, clientVolumeScalar %f, needsUnduckCall %d, interruptCurrentSystemSounds %d", buf, 0x44u);
    }
  }

  objc_initWeak(&location, self);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke;
  v60[3] = &unk_1E7ECEAE0;
  objc_copyWeak(&v61, &location);
  [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setCompletionHandler:v60];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_63;
  v58[3] = &unk_1E7ECEAE0;
  objc_copyWeak(&v59, &location);
  [(CHHapticAdvancedPatternPlayerExtended *)self->_hapticPlayer setCompletionHandler:v58];
  if (BYTE12(v64) == 1)
  {
    [(SSCoreHapticsPlayer *)self setupLooping];
  }

  __p = 0;
  p_p = &__p;
  v56 = 0x2020000000;
  v57 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v68 = __Block_byref_object_copy__3676;
  *(&v68 + 1) = __Block_byref_object_dispose__3677;
  v69 = 0;
  engine = self->_engine;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3321888768;
  v45[2] = __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_64;
  v45[3] = &unk_1F37BD028;
  v45[4] = self;
  v48 = &__p;
  v51 = v64;
  v50 = v63;
  v35 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v52 = v35;
  applesauce::xpc::object::object(&v53, v66);
  v46 = optionsCopy;
  v49 = buf;
  v36 = v27;
  v47 = v36;
  [(CHHapticEngine *)engine startWithCompletionHandler:v45];
  v37 = *(p_p + 24);

  v38 = v53;
  v53 = 0;

  if (v52)
  {
    CFRelease(v52);
  }

  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&__p, 8);
  objc_destroyWeak(&v59);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);

LABEL_66:
  v43 = v66;
  v66 = 0;

  if (cf)
  {
    CFRelease(cf);
  }

  return v37;
}

void __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kSystemSoundClientLogSubsystem)
  {
    v2 = *kSystemSoundClientLogSubsystem;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = WeakRetained[10];
    v5 = 136315650;
    v6 = "SSCoreHapticsPlayer.mm";
    v7 = 1024;
    v8 = 529;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Audio player completion handler called. SSID %d", &v5, 0x18u);
  }

LABEL_8:
  [WeakRetained registerCompletionPortion:1];
}

void __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_63(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kSystemSoundClientLogSubsystem)
  {
    v2 = *kSystemSoundClientLogSubsystem;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = WeakRetained[10];
    v5 = 136315650;
    v6 = "SSCoreHapticsPlayer.mm";
    v7 = 1024;
    v8 = 534;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Haptic player completion handler called. SSID %d", &v5, 0x18u);
  }

LABEL_8:
  [WeakRetained registerCompletionPortion:0];
}

void __69__SSCoreHapticsPlayer_playWithOptions_completionCallbackToken_error___block_invoke_64(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v4 = *kSystemSoundClientLogSubsystem;
      if (!v4)
      {
LABEL_9:
        [*(a1 + 32) registerCompletionAndStop];
        *(*(*(a1 + 56) + 8) + 24) = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 80);
      *buf = 136316162;
      v49 = "SSCoreHapticsPlayer.mm";
      v50 = 1024;
      v51 = 548;
      v52 = 2048;
      *v53 = v6;
      *&v53[8] = 1024;
      *v54 = v7;
      *&v54[4] = 2112;
      *&v54[6] = v3;
      _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot start SSCoreHapticsPlayer %p for SSID %d, error %@", buf, 0x2Cu);
    }

    goto LABEL_9;
  }

LABEL_10:
  v8 = *(a1 + 32);
  if (*(v8 + 68) != 1)
  {
    goto LABEL_24;
  }

  if (!kSystemSoundClientLogSubsystem)
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v9 = *kSystemSoundClientLogSubsystem;
  if (v9)
  {
LABEL_15:
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 80);
      v14 = *(a1 + 76);
      v15 = *(a1 + 88);
      *buf = 136316418;
      v49 = "SSCoreHapticsPlayer.mm";
      v50 = 1024;
      v51 = 555;
      v52 = 1024;
      *v53 = v13;
      *&v53[4] = 1024;
      *&v53[6] = v14;
      *v54 = 2048;
      *&v54[2] = v12;
      *&v54[10] = 2048;
      *&v54[12] = v15;
      _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting audio: SSID %u, behaviorID %u, SSCoreHapticsPlayer %p, clientVolumeScalar %f", buf, 0x32u);
    }
  }

  v16 = [*(a1 + 40) objectForKey:@"PlaySystemSoundOption_UnduckTime"];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    if (v18 > 0.00999999978)
    {
      v19 = *(a1 + 32);
      v20 = *(v19 + 8);
      [*(v19 + 72) currentTime];
      v22 = v21;
      [v17 doubleValue];
      v24 = *(*(a1 + 64) + 8);
      obj = *(v24 + 40);
      [v20 earlyUnduckAudioAtTime:&obj error:v22 + v23];
      objc_storeStrong((v24 + 40), obj);
    }
  }

  [*(*(a1 + 32) + 72) currentTime];
  v26 = v25 + 0.03;
  v27 = *(a1 + 32);
  v28 = *(*(a1 + 64) + 8);
  v46 = *(v28 + 40);
  v29 = [v27 startPlayerAtTime:1 forAudio:&v46 error:v25 + 0.03];
  objc_storeStrong((v28 + 40), v46);
  if ((v29 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v30 = *(*(a1 + 32) + 8);
  v31 = *(a1 + 48);
  v32 = *(*(a1 + 64) + 8);
  v45 = *(v32 + 40);
  [v30 sendParameters:v31 atTime:&v45 error:v26];
  objc_storeStrong((v32 + 40), v45);

  v8 = *(a1 + 32);
LABEL_24:
  if (*(v8 + 69) != 1)
  {
    goto LABEL_34;
  }

  [*(v8 + 72) currentTime];
  v34 = v33;
  if (!kSystemSoundClientLogSubsystem)
  {
    v35 = MEMORY[0x1E69E9C10];
    v36 = MEMORY[0x1E69E9C10];
    goto LABEL_29;
  }

  v35 = *kSystemSoundClientLogSubsystem;
  if (v35)
  {
LABEL_29:
    v37 = v35;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 76);
      v39 = *(a1 + 32);
      v40 = *(v39 + 80);
      *buf = 136316162;
      v49 = "SSCoreHapticsPlayer.mm";
      v50 = 1024;
      v51 = 573;
      v52 = 1024;
      *v53 = v40;
      *&v53[4] = 1024;
      *&v53[6] = v38;
      *v54 = 2048;
      *&v54[2] = v39;
      _os_log_impl(&dword_1B9A08000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting haptics: SSID %u, behaviorID %u, SSCoreHapticsPlayer %p", buf, 0x28u);
    }
  }

  v41 = *(a1 + 32);
  v42 = *(*(a1 + 64) + 8);
  v44 = *(v42 + 40);
  v43 = [v41 startPlayerAtTime:0 forAudio:&v44 error:v34 + 0.03];
  objc_storeStrong((v42 + 40), v44);
  if ((v43 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

LABEL_34:
}

- (SSCoreHapticsPlayer)initWithAudio:(id)audio hapticDictionary:(id)dictionary error:(id *)error
{
  audioCopy = audio;
  dictionaryCopy = dictionary;
  if (audioCopy | dictionaryCopy)
  {
    v14.receiver = self;
    v14.super_class = SSCoreHapticsPlayer;
    v10 = [(SSCoreHapticsPlayer *)&v14 init];
    v11 = v10;
    if (v10 && ![(SSCoreHapticsPlayer *)v10 doInit:audioCopy haptic:dictionaryCopy error:error])
    {

      v11 = 0;
    }

    self = v11;
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4813 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SSCoreHapticsPlayer)initWithAudio:(id)audio haptic:(id)haptic error:(id *)error
{
  audioCopy = audio;
  hapticCopy = haptic;
  if (audioCopy | hapticCopy)
  {
    v15.receiver = self;
    v15.super_class = SSCoreHapticsPlayer;
    v10 = [(SSCoreHapticsPlayer *)&v15 init];
    v11 = v10;
    if (v10)
    {
      v12 = [(SSCoreHapticsPlayer *)v10 getHapticDictionaryFromURL:hapticCopy];
      if (![(SSCoreHapticsPlayer *)v11 doInit:audioCopy haptic:v12 error:error])
      {

        v11 = 0;
      }
    }

    self = v11;
    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4813 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (kSystemSoundClientLogSubsystem)
  {
    v3 = *kSystemSoundClientLogSubsystem;
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "SSCoreHapticsPlayer.mm";
    v12 = 1024;
    v13 = 429;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Destroying SSCoreHapticsPlayer %p", buf, 0x1Cu);
  }

LABEL_8:
  v5 = +[SSCoreHapticsInfo instance];
  [v5 unregisterSSID:self->_ssid];

  engine = self->_engine;
  self->_engine = 0;

  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  hapticPlayer = self->_hapticPlayer;
  self->_hapticPlayer = 0;

  v9.receiver = self;
  v9.super_class = SSCoreHapticsPlayer;
  [(SSCoreHapticsPlayer *)&v9 dealloc];
}

- (void)registerCompletionPortion:(BOOL)portion
{
  portionCopy = portion;
  v21 = *MEMORY[0x1E69E9840];
  if (portion)
  {
    if (!self->_audioPlayer)
    {
      return;
    }

    p_audioPlaybackFinished = &self->_audioPlaybackFinished;
    if (!self->_audioPlaybackFinished)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (!self->_hapticPlayer)
    {
      return;
    }

    p_audioPlaybackFinished = &self->_hapticPlaybackFinished;
    if (!self->_hapticPlaybackFinished)
    {
LABEL_4:
      *p_audioPlaybackFinished = 1;
      if (kSystemSoundClientLogSubsystem)
      {
        v6 = *kSystemSoundClientLogSubsystem;
        if (!v6)
        {
LABEL_18:
          [(SSCoreHapticsPlayer *)self handleFinish:*v14];
          return;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"Haptics";
        ssid = self->_ssid;
        *&v14[4] = "SSCoreHapticsPlayer.mm";
        *v14 = 136316162;
        *&v14[12] = 1024;
        if (portionCopy)
        {
          v9 = @"Audio";
        }

        *&v14[14] = 415;
        v15 = 2112;
        v16 = v9;
        v17 = 1024;
        v18 = ssid;
        v19 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ completed for SSID %d, SSCoreHapticsPlayer %p", v14, 0x2Cu);
      }

      goto LABEL_18;
    }
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v7 = *kSystemSoundClientLogSubsystem;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"Haptics";
    v13 = self->_ssid;
    *&v14[4] = "SSCoreHapticsPlayer.mm";
    *v14 = 136316162;
    *&v14[12] = 1024;
    if (portionCopy)
    {
      v12 = @"Audio";
    }

    *&v14[14] = 410;
    v15 = 2112;
    v16 = v12;
    v17 = 1024;
    v18 = v13;
    v19 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ for SSID %d, SSCoreHapticsPlayer %p has already finished or never started", v14, 0x2Cu);
  }
}

- (void)handleFinish
{
  if (self->_audioPlaybackFinished && self->_hapticPlaybackFinished)
  {
    engine = self->_engine;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__SSCoreHapticsPlayer_handleFinish__block_invoke;
    v3[3] = &unk_1E7ECEAB8;
    v3[4] = self;
    [(CHHapticEngine *)engine stopWithCompletionHandler:v3];
  }
}

void __35__SSCoreHapticsPlayer_handleFinish__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (kSystemSoundClientLogSubsystem)
  {
    v4 = *kSystemSoundClientLogSubsystem;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    v9 = 136315906;
    v10 = "SSCoreHapticsPlayer.mm";
    v11 = 1024;
    v12 = 397;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d System sound finished playing, SSID %d, SSCoreHapticsPlayer %p", &v9, 0x22u);
  }

LABEL_8:
  v8 = CADeprecated::TSingleton<SSClientCompletion>::instance();
  SSClientCompletion::SendClientCompletion(v8, *(*(a1 + 32) + 64), *(*(a1 + 32) + 80));
}

- (BOOL)startPlayerAtTime:(double)time forAudio:(BOOL)audio error:(id *)error
{
  audioCopy = audio;
  v30 = *MEMORY[0x1E69E9840];
  v9 = 16;
  if (audio)
  {
    v9 = 8;
  }

  v10 = *(&self->super.isa + v9);
  [v10 startAtTime:error error:time];
  v11 = *error;
  if (*error)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v12 = *kSystemSoundClientLogSubsystem;
      if (!v12)
      {
LABEL_13:
        [(SSCoreHapticsPlayer *)self registerCompletionPortion:audioCopy];
        goto LABEL_14;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ssid = self->_ssid;
      v15 = @"haptics";
      v16 = *error;
      if (audioCopy)
      {
        v15 = @"audio";
      }

      v18 = 136316418;
      v19 = "SSCoreHapticsPlayer.mm";
      v20 = 1024;
      v21 = 386;
      v22 = 2112;
      v23 = v15;
      v24 = 1024;
      v25 = ssid;
      v26 = 2048;
      selfCopy = self;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot start %@ portion for SSID %d, SSCoreHapticsPlayer %p, error %@", &v18, 0x36u);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v11 == 0;
}

- (void)setupLooping
{
  if (self->_shouldPlayAudioFinal)
  {
    if (self->_shouldPlayHapticsFinal)
    {
      if (self->_audioPatternDuration < self->_hapticPatternDuration)
      {
        hapticPatternDuration = self->_hapticPatternDuration;
      }

      else
      {
        hapticPatternDuration = self->_audioPatternDuration;
      }

      [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setLoopEnd:hapticPatternDuration];
      hapticPlayer = self->_hapticPlayer;
      audioPatternDuration = hapticPatternDuration;
    }

    else
    {
      [(CHHapticAdvancedPatternPlayerExtended *)self->_audioPlayer setLoopEnabled:1];
      hapticPlayer = self->_audioPlayer;
      audioPatternDuration = self->_audioPatternDuration;
    }
  }

  else
  {
    if (!self->_shouldPlayHapticsFinal)
    {
      return;
    }

    [(CHHapticAdvancedPatternPlayerExtended *)self->_hapticPlayer setLoopEnabled:1];
    hapticPlayer = self->_hapticPlayer;
    audioPatternDuration = self->_hapticPatternDuration;
  }

  [(CHHapticAdvancedPatternPlayerExtended *)hapticPlayer setLoopEnd:audioPatternDuration];
}

- (BOOL)prepareHapticPatternFromPlayOptions:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [options objectForKey:@"PlaySystemSoundOption_VibrationPattern"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SSCoreHapticsPlayer *)self getHapticDictionaryFromURL:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = v4;
  }

  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToDictionary:self->_hapticPatternDict])
    {
      if (kSystemSoundClientLogSubsystem)
      {
        v7 = *kSystemSoundClientLogSubsystem;
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SSCoreHapticsPlayer.mm";
        v15 = 1024;
        v16 = 343;
        v17 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d playOptions contain haptic pattern identical to the one stored in SSCoreHapticsPlayer %p. NOT recreating haptic player", buf, 0x1Cu);
      }

      goto LABEL_16;
    }

    hapticPlayer = self->_hapticPlayer;
    self->_hapticPlayer = 0;

    v12 = 0;
    [(SSCoreHapticsPlayer *)self createHapticPlayer:v6 error:&v12];
LABEL_16:

    v8 = 1;
    goto LABEL_17;
  }

LABEL_10:
  v8 = 0;
LABEL_17:

  return v8;
}

- (id)getHapticDictionaryFromURL:(id)l
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    path = [lCopy path];
    pathExtension = [path pathExtension];
    if ([pathExtension isEqualToString:@"json"])
    {

      goto LABEL_5;
    }

    path2 = [lCopy path];
    pathExtension2 = [path2 pathExtension];
    v8 = [pathExtension2 isEqualToString:@"ahap"];

    if (v8)
    {
LABEL_5:
      v9 = MEMORY[0x1E695DEF0];
      path3 = [lCopy path];
      v11 = [v9 dataWithContentsOfFile:path3];

      if (kSystemSoundClientLogSubsystem)
      {
        v12 = *kSystemSoundClientLogSubsystem;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v22 = "SSCoreHapticsPlayer.mm";
        v23 = 1024;
        v24 = 307;
        _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating haptic dictionary from JSON or AHAP...", buf, 0x12u);
      }

LABEL_19:
      v20 = 0;
      v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v20];
      v13 = v20;
      if (v13)
      {
        if (kSystemSoundClientLogSubsystem)
        {
          v17 = *kSystemSoundClientLogSubsystem;
          if (!v17)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v18 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v22 = "SSCoreHapticsPlayer.mm";
          v23 = 1024;
          v24 = 310;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot create haptic dictionary. error: %@", buf, 0x1Cu);
        }
      }

LABEL_27:

      goto LABEL_28;
    }
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v13 = *kSystemSoundClientLogSubsystem;
    if (!v13)
    {
      v14 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "SSCoreHapticsPlayer.mm";
    v23 = 1024;
    v24 = 314;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Incoming ahapURL not a valid file path URL or file type not supported. Not creating haptic portion", buf, 0x12u);
  }

  v14 = 0;
LABEL_28:

LABEL_29:

  return v14;
}

- (BOOL)doInit:(id)init haptic:(id)haptic error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  initCopy = init;
  hapticCopy = haptic;
  if (kSystemSoundClientLogSubsystem)
  {
    v10 = *kSystemSoundClientLogSubsystem;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [initCopy absoluteString];
    *buf = 136315650;
    *&buf[4] = "SSCoreHapticsPlayer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 232;
    *&buf[18] = 2112;
    *&buf[20] = absoluteString;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating new system sound. Audio: %@", buf, 0x1Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__3676;
  v47 = __Block_byref_object_dispose__3677;
  v48 = 0;
  self->_audioResourceID = 0;
  *&self->_shouldPlayAudioFinal = 16842752;
  setupDefaultEngineConfigBlock = [(SSCoreHapticsPlayer *)self setupDefaultEngineConfigBlock];
  v15 = objc_alloc(MEMORY[0x1E695F578]);
  v16 = (*&buf[8] + 40);
  obj = *(*&buf[8] + 40);
  v17 = [v15 initWithAudioSession:0 sessionIsShared:0 options:setupDefaultEngineConfigBlock error:&obj];
  objc_storeStrong(v16, obj);
  engine = self->_engine;
  self->_engine = v17;

  v19 = (*&buf[8] + 40);
  if (*(*&buf[8] + 40))
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v20 = *kSystemSoundClientLogSubsystem;
      if (!v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v28 = *v19;
      *location = 136315650;
      *&location[4] = "SSCoreHapticsPlayer.mm";
      v42 = 1024;
      v43 = 248;
      v44 = 2112;
      v45 = v28;
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot initialize CHHapticEngine. error: %@", location, 0x1Cu);
    }

LABEL_21:
    if (error)
    {
      v29 = *(*&buf[8] + 40);
LABEL_23:
      v26 = 0;
      *error = v29;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!self->_engine)
  {
    if (error)
    {
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4898 userInfo:0];
      goto LABEL_23;
    }

LABEL_26:
    v26 = 0;
    goto LABEL_27;
  }

  v39 = 0;
  v21 = [(SSCoreHapticsPlayer *)self createAudioResource:initCopy error:&v39];
  objc_storeStrong(v19, v39);
  self->_audioResourceID = v21;
  if (v21)
  {
    v22 = (*&buf[8] + 40);
    v38 = *(*&buf[8] + 40);
    v23 = [(SSCoreHapticsPlayer *)self createAudioPlayerAndReturnError:&v38];
    objc_storeStrong(v22, v38);
    if (v23)
    {
      [(CHHapticEngine *)self->_engine setFollowAudioRoute:1];
    }
  }

  v24 = (*&buf[8] + 40);
  v37 = *(*&buf[8] + 40);
  [(SSCoreHapticsPlayer *)self createHapticPlayer:hapticCopy error:&v37];
  objc_storeStrong(v24, v37);
  objc_initWeak(location, self);
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __43__SSCoreHapticsPlayer_doInit_haptic_error___block_invoke;
  v34 = &unk_1E7ECEA90;
  objc_copyWeak(&v36, location);
  v35 = buf;
  [(CHHapticEngine *)self->_engine setResetHandler:&v31];
  objc_destroyWeak(&v36);
  objc_destroyWeak(location);
  v25 = [SSCoreHapticsInfo instance:v31];
  self->_ssid = [v25 generateNewSSIDForPlayer:self];

  v26 = self->_ssid != 0;
LABEL_27:

  _Block_object_dispose(buf, 8);
  return v26;
}

void __43__SSCoreHapticsPlayer_doInit_haptic_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (kSystemSoundClientLogSubsystem)
  {
    v3 = *kSystemSoundClientLogSubsystem;
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
    v20 = "SSCoreHapticsPlayer.mm";
    v21 = 1024;
    v22 = 271;
    v23 = 2048;
    v24 = WeakRetained;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SSCoreHapticsPlayer %p: Lost connection with server. re-creating players", buf, 0x1Cu);
  }

LABEL_8:
  v5 = WeakRetained[1];
  WeakRetained[1] = 0;

  v6 = WeakRetained[9];
  v7 = WeakRetained[4];
  v8 = *(*(a1 + 32) + 8);
  obj = *(v8 + 40);
  [v6 unregisterAudioResource:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v9 = WeakRetained[3];
  v10 = *(*(a1 + 32) + 8);
  v17 = *(v10 + 40);
  v11 = [WeakRetained createAudioResource:v9 error:&v17];
  objc_storeStrong((v10 + 40), v17);
  WeakRetained[4] = v11;
  if (v11)
  {
    v12 = *(*(a1 + 32) + 8);
    v16 = *(v12 + 40);
    [WeakRetained createAudioPlayerAndReturnError:&v16];
    objc_storeStrong((v12 + 40), v16);
  }

  v13 = WeakRetained[5];
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  [WeakRetained createHapticPlayer:v13 error:&v15];
  objc_storeStrong((v14 + 40), v15);
}

- (id)setupDefaultEngineConfigBlock
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695F550];
  v3 = *MEMORY[0x1E695F4A0];
  v8[0] = *MEMORY[0x1E695F498];
  v8[1] = v3;
  v9[0] = v2;
  v9[1] = v2;
  v4 = *MEMORY[0x1E695F4A8];
  v8[2] = *MEMORY[0x1E695F4B8];
  v8[3] = v4;
  v5 = *MEMORY[0x1E695F4F0];
  v9[2] = *MEMORY[0x1E695F558];
  v9[3] = v5;
  v8[4] = @"UsageCategory";
  v9[4] = @"SystemSound";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

- (void)createHapticPlayer:(id)player error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v7 = playerCopy;
  if (!playerCopy)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      hapticPatternDict = *kSystemSoundClientLogSubsystem;
      if (!hapticPatternDict)
      {
        goto LABEL_30;
      }
    }

    else
    {
      hapticPatternDict = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&hapticPatternDict->super, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315394;
      v25 = "SSCoreHapticsPlayer.mm";
      v26 = 1024;
      v27 = 185;
      _os_log_impl(&dword_1B9A08000, &hapticPatternDict->super, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No haptic dictionary passed in", &v24, 0x12u);
    }

    goto LABEL_29;
  }

  v8 = [playerCopy objectForKey:*MEMORY[0x1E695F540]];

  if (!v8)
  {
    v13 = [(CHHapticEngine *)self->_engine createAdvancedPlayerWithVibePatternDictionary:v7 error:error];
    hapticPlayer = self->_hapticPlayer;
    self->_hapticPlayer = v13;

    goto LABEL_27;
  }

  v9 = [objc_alloc(MEMORY[0x1E695F598]) initWithDictionary:v7 error:error];
  v10 = v9;
  if (!*error)
  {
    [v9 duration];
    self->_hapticPatternDuration = v15;
    if (kSystemSoundClientLogSubsystem)
    {
      v16 = *kSystemSoundClientLogSubsystem;
      if (!v16)
      {
LABEL_24:
        v22 = [(CHHapticEngine *)self->_engine createAdvancedPlayerWithPattern:v10 error:error];
        v11 = self->_hapticPlayer;
        self->_hapticPlayer = v22;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      hapticPatternDuration = self->_hapticPatternDuration;
      v24 = 136315650;
      v25 = "SSCoreHapticsPlayer.mm";
      v26 = 1024;
      v27 = 196;
      v28 = 2048;
      v29 = hapticPatternDuration;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d haptic duration: %.2fs", &v24, 0x1Cu);
    }

    goto LABEL_24;
  }

  if (kSystemSoundClientLogSubsystem)
  {
    v11 = *kSystemSoundClientLogSubsystem;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *error;
    v24 = 136315650;
    v25 = "SSCoreHapticsPlayer.mm";
    v26 = 1024;
    v27 = 192;
    v28 = 2112;
    v29 = *&v19;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalid haptic pattern. Not creating haptic player and continue. error: %@", &v24, 0x1Cu);
  }

LABEL_25:

LABEL_26:
LABEL_27:
  if (!*error)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7 copyItems:1];
    hapticPatternDict = self->_hapticPatternDict;
    self->_hapticPatternDict = v23;
LABEL_29:
  }

LABEL_30:
}

- (BOOL)createAudioPlayerAndReturnError:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  [(CHHapticEngine *)self->_engine getDurationForResource:self->_audioResourceID];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E695F598]);
  v9 = objc_alloc(MEMORY[0x1E695F580]);
  v10 = [v9 initWithAudioResourceID:self->_audioResourceID parameters:MEMORY[0x1E695E0F0] relativeTime:0.0 duration:v7];
  v33[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v12 = [v8 initWithEvents:v11 parameters:MEMORY[0x1E695E0F0] error:error];

  if (*error)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v13 = *kSystemSoundClientLogSubsystem;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_24:

LABEL_25:
      v23 = 0;
      goto LABEL_26;
    }

    v17 = *error;
    v27 = 136315650;
    v28 = "SSCoreHapticsPlayer.mm";
    v29 = 1024;
    v30 = 166;
    v31 = 2112;
    v32 = *&v17;
    v18 = "%25s:%-5d Invalid audio pattern. Not creating audio player and continue. error: %@";
LABEL_23:
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, v18, &v27, 0x1Cu);
    goto LABEL_24;
  }

  [v12 duration];
  self->_audioPatternDuration = v14;
  if (kSystemSoundClientLogSubsystem)
  {
    v15 = *kSystemSoundClientLogSubsystem;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    audioPatternDuration = self->_audioPatternDuration;
    v27 = 136315650;
    v28 = "SSCoreHapticsPlayer.mm";
    v29 = 1024;
    v30 = 172;
    v31 = 2048;
    v32 = audioPatternDuration;
    _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d audio duration: %.2fs", &v27, 0x1Cu);
  }

LABEL_15:
  v21 = [(CHHapticEngine *)self->_engine createAdvancedPlayerWithPattern:v12 error:error];
  v22 = self->_audioPlayer;
  self->_audioPlayer = v21;

  if (*error)
  {
    if (kSystemSoundClientLogSubsystem)
    {
      v13 = *kSystemSoundClientLogSubsystem;
      if (!v13)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v25 = *error;
    v27 = 136315650;
    v28 = "SSCoreHapticsPlayer.mm";
    v29 = 1024;
    v30 = 175;
    v31 = 2112;
    v32 = *&v25;
    v18 = "%25s:%-5d Failed to create audio player and continue. error: %@";
    goto LABEL_23;
  }

  v23 = 1;
LABEL_26:

  return v23;
}

- (unint64_t)createAudioResource:(id)resource error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (resourceCopy)
  {
    engine = self->_engine;
    v26 = *MEMORY[0x1E695F488];
    v27[0] = MEMORY[0x1E695E110];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = [(CHHapticEngine *)engine registerAudioResource:resourceCopy options:v8 error:error];

    if (!*error)
    {
      v11 = [resourceCopy copy];
      audioURL = self->_audioURL;
      self->_audioURL = v11;
LABEL_18:

      goto LABEL_19;
    }

    if (kSystemSoundClientLogSubsystem)
    {
      audioURL = *kSystemSoundClientLogSubsystem;
      if (!audioURL)
      {
        goto LABEL_8;
      }
    }

    else
    {
      audioURL = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&audioURL->super, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *error;
      v20 = 136315650;
      v21 = "SSCoreHapticsPlayer.mm";
      v22 = 1024;
      v23 = 148;
      v24 = 2112;
      v25 = v13;
      v14 = "%25s:%-5d Invalid audio resource. Not creating audio player and continue. error: %@";
      p_super = &audioURL->super;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 28;
LABEL_16:
      _os_log_impl(&dword_1B9A08000, p_super, v16, v14, &v20, v17);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (!kSystemSoundClientLogSubsystem)
  {
    audioURL = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
LABEL_14:
    if (os_log_type_enabled(&audioURL->super, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315394;
      v21 = "SSCoreHapticsPlayer.mm";
      v22 = 1024;
      v23 = 141;
      v14 = "%25s:%-5d audioURL not valid";
      p_super = &audioURL->super;
      v16 = OS_LOG_TYPE_DEBUG;
      v17 = 18;
      goto LABEL_16;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  audioURL = *kSystemSoundClientLogSubsystem;
  if (audioURL)
  {
    goto LABEL_14;
  }

LABEL_8:
  v9 = 0;
LABEL_19:

  return v9;
}

@end