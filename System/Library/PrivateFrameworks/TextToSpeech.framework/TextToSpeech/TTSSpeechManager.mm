@interface TTSSpeechManager
+ (BOOL)_isCharacterNativelySpeakable:(unsigned __int16)speakable languageCode:(id)code;
+ (BOOL)currentProcessAllowedToSaveVoiceInfo;
+ (URegularExpression)createRegularExpressionFromString:(id)string;
+ (id)_resetAvailableVoices;
+ (id)availableSuperCompactVoices;
+ (id)availableVoices;
+ (id)availableVoices:(BOOL)voices;
+ (id)currentLanguageCode;
+ (id)languageCodeForVoiceIdentifier:(id)identifier;
+ (id)literalStringMarkup:(id)markup string:(id)string speakCap:(BOOL)cap;
+ (id)matchedRangesForString:(id)string withRegularExpression:(URegularExpression *)expression;
+ (id)spellOutLetterCaseMarkupString:(id)string string:(id)a4;
+ (void)test_actionStartTap:(id)tap;
- (AVAudioSession)audioSession;
- (BOOL)_enqueueSelectorOnSpeechThread:(SEL)thread object:(id)object waitUntilDone:(BOOL)done;
- (BOOL)isInAudioInterruption;
- (BOOL)isPaused;
- (BOOL)isSpeaking;
- (NSArray)outputChannels;
- (NSString)audioSessionCategory;
- (TTSSpeechManager)init;
- (id)_phonemeSubstitutionsForAction:(id)action;
- (id)externalVoiceIdentifierUsedForLanguage:(id)language;
- (id)voiceIdentifierUsedForLanguage:(id)language;
- (unint64_t)audioSessionCategoryOptions;
- (unint64_t)setActiveOptions;
- (unsigned)audioQueueFlags;
- (void)__speechJobFinished:(id)finished;
- (void)_continueSpeaking;
- (void)_didBeginInterruption;
- (void)_didEndInterruption;
- (void)_dispatchSpeechAction:(id)action;
- (void)_handleAudioInterruption:(id)interruption;
- (void)_handleMediaServicesWereLost:(id)lost;
- (void)_handleMediaServicesWereReset:(id)reset;
- (void)_initialize;
- (void)_isSpeaking:(id)speaking;
- (void)_pauseSpeaking:(id)speaking;
- (void)_processAudioBufferCallback:(id)callback;
- (void)_processDidContinueCallback:(id)callback;
- (void)_processDidEncounterMarker:(id)marker;
- (void)_processDidPauseCallback:(id)callback;
- (void)_processDidStartCallback:(id)callback;
- (void)_processWillSpeechRange:(id)range;
- (void)_resetInterruptionTracking;
- (void)_setVoiceForAction:(id)action snippet:(id)snippet;
- (void)_speechJobFinished:(BOOL)finished action:(id)action;
- (void)_startNextSpeechJob;
- (void)_stopSpeaking:(id)speaking;
- (void)_tearDown;
- (void)_updateAudioSessionProperties;
- (void)_updateAuxiliarySession;
- (void)_updateUserSubstitutions;
- (void)clearSpeechQueue;
- (void)continueSpeaking;
- (void)dealloc;
- (void)dispatchSpeechAction:(id)action;
- (void)handleAudioInterruption:(id)interruption;
- (void)handleAudioSessionObservers:(BOOL)observers;
- (void)handleMediaServicesWereLost:(id)lost;
- (void)handleMediaServicesWereReset:(id)reset;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseSpeaking:(int64_t)speaking;
- (void)setAudioQueueFlags:(unsigned int)flags;
- (void)setAudioSession:(id)session;
- (void)setAudioSessionCategory:(id)category;
- (void)setAudioSessionCategoryOptions:(unint64_t)options;
- (void)setIsInAudioInterruption:(BOOL)interruption;
- (void)setIsPaused:(BOOL)paused;
- (void)setOutputChannels:(id)channels;
- (void)setSetActiveOptions:(unint64_t)options;
- (void)setSpeechEnabled:(BOOL)enabled;
- (void)setSpeechSource:(id)source;
- (void)setUsesAuxiliarySession:(BOOL)session;
- (void)speechSynthesizer:(id)synthesizer didContinueSpeakingRequest:(id)request;
- (void)speechSynthesizer:(id)synthesizer didEncounterMarker:(id)marker forRequest:(id)request;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully withError:(id)error;
- (void)speechSynthesizer:(id)synthesizer didPauseSpeakingRequest:(id)request;
- (void)speechSynthesizer:(id)synthesizer didStartSpeakingRequest:(id)request;
- (void)stopSpeaking:(int64_t)speaking;
- (void)tearDown;
@end

@implementation TTSSpeechManager

- (TTSSpeechManager)init
{
  v18.receiver = self;
  v18.super_class = TTSSpeechManager;
  v2 = [(TTSSpeechManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("speech-manager-properties", 0);
    propertyQueue = v2->_propertyQueue;
    v2->_propertyQueue = v3;

    v5 = dispatch_queue_create("speech-manager-audio", 0);
    audioOperationQueue = v2->_audioOperationQueue;
    v2->_audioOperationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    speechQueue = v2->_speechQueue;
    v2->_speechQueue = v7;

    v2->_speechEnabled = 1;
    [(TTSSpeechManager *)v2 setShouldHandleAudioInterruptions:1];
    v9 = objc_alloc(MEMORY[0x1E6988780]);
    v10 = [v9 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
    audioDeactivatorTimer = v2->_audioDeactivatorTimer;
    v2->_audioDeactivatorTimer = v10;

    [(AXDispatchTimer *)v2->_audioDeactivatorTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(TTSSpeechManager *)v2 setAudioSessionInactiveTimeout:2.0];
    v12 = objc_opt_new();
    speechThreadQueueLock = v2->_speechThreadQueueLock;
    v2->_speechThreadQueueLock = v12;

    v14 = objc_alloc_init(TTSSpeechThread);
    runThread = v2->_runThread;
    v2->_runThread = v14;

    [(TTSSpeechThread *)v2->_runThread start];
    [(TTSSpeechManager *)v2 performSelector:sel__initialize onThread:v2->_runThread withObject:0 waitUntilDone:0];
    v16 = v2;
  }

  return v2;
}

- (void)setSpeechSource:(id)source
{
  objc_storeStrong(&self->_speechSource, source);
  sourceCopy = source;
  [(TTSSpeechSynthesizer *)self->_synthesizer setSpeechSource:sourceCopy];
}

- (void)setUsesAuxiliarySession:(BOOL)session
{
  if (self->_usesAuxiliarySession != session)
  {
    self->_usesAuxiliarySession = session;
    [(TTSSpeechManager *)self performSelector:sel__updateAuxiliarySession onThread:self->_runThread withObject:0 waitUntilDone:0];
  }
}

- (void)_updateAuxiliarySession
{
  v52 = *MEMORY[0x1E69E9840];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  if (currentThread != self->_runThread)
  {
    sub_1A9579270();
  }

  [(TTSSpeechManager *)self handleAudioSessionObservers:0];
  if (self->_synthesizer)
  {
    audioSession = [(TTSSpeechManager *)self audioSession];
    audioSessionCategory = [(TTSSpeechManager *)self audioSessionCategory];
    audioSessionCategoryOptions = [(TTSSpeechManager *)self audioSessionCategoryOptions];
    if (self->_usesAuxiliarySession)
    {
      v7 = audioSessionCategoryOptions;
      v8 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9324000, v8, OS_LOG_TYPE_INFO, "Requesting use of aux session", buf, 2u);
      }

      audioSession2 = [(TTSSpeechManager *)self audioSession];
      if (audioSession2)
      {
        v10 = audioSession2;
        audioSession3 = [(TTSSpeechManager *)self audioSession];
        mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
        v13 = [audioSession3 isEqual:mEMORY[0x1E6958468]];

        if ((v13 & 1) == 0)
        {
          if (!audioSessionCategory)
          {
            audioSessionCategory = *MEMORY[0x1E6958098];
          }

          v34 = AXLogSpeechSynthesis();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = audioSessionCategory;
            _os_log_impl(&dword_1A9324000, v34, OS_LOG_TYPE_INFO, "Aux session exists. Updating with category: %@", buf, 0xCu);
          }

          audioSession4 = [(TTSSpeechManager *)self audioSession];
          v49 = 0;
          v36 = [audioSession4 setCategory:audioSessionCategory error:&v49];
          v26 = v49;

          if (!v26 && (v36 & 1) != 0)
          {
            goto LABEL_46;
          }

          v37 = AXLogSpeechSynthesis();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1A957929C();
          }

          goto LABEL_45;
        }
      }

      audioSession5 = [(TTSSpeechManager *)self audioSession];
      if (audioSession5)
      {
        v15 = audioSession5;
        audioSession6 = [(TTSSpeechManager *)self audioSession];
        mEMORY[0x1E6958468]2 = [MEMORY[0x1E6958468] sharedInstance];
        v18 = [audioSession6 isEqual:mEMORY[0x1E6958468]2];

        if (!v18)
        {
          goto LABEL_46;
        }
      }

      if (!v7)
      {
        v7 = 3;
      }

      if (!audioSessionCategory)
      {
        audioSessionCategory = *MEMORY[0x1E6958098];
      }

      auxiliarySession = [MEMORY[0x1E6958468] auxiliarySession];
      [(TTSSpeechManager *)self setAudioSession:auxiliarySession];

      audioSession7 = [(TTSSpeechManager *)self audioSession];
      v48 = 0;
      v21 = [audioSession7 setParticipatesInNowPlayingAppPolicy:0 error:&v48];
      v22 = v48;

      if (v22 || (v21 & 1) == 0)
      {
        v23 = AXLogSpeechSynthesis();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1A9579304();
        }
      }

      v24 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = audioSessionCategory;
        _os_log_impl(&dword_1A9324000, v24, OS_LOG_TYPE_INFO, "Aux session does not exist. Creating and updating with category: %@", buf, 0xCu);
      }

      audioSession8 = [(TTSSpeechManager *)self audioSession];
      v47 = v22;
      [audioSession8 setCategory:audioSessionCategory withOptions:v7 error:&v47];
      v26 = v47;

      if (((v26 == 0) & v21) != 0)
      {
        v26 = 0;
LABEL_41:
        synthesizer = self->_synthesizer;
        audioSession9 = [(TTSSpeechManager *)self audioSession];
        -[TTSSpeechSynthesizer useSpecificAudioSession:](synthesizer, "useSpecificAudioSession:", [audioSession9 opaqueSessionID]);

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v37 = defaultCenter;
        v41 = *MEMORY[0x1E69580E0];
        if (audioSession)
        {
          [defaultCenter removeObserver:self name:*MEMORY[0x1E69580E0] object:audioSession];
          v42 = *MEMORY[0x1E6958118];
          [v37 removeObserver:self name:*MEMORY[0x1E6958118] object:audioSession];
          v43 = *MEMORY[0x1E6958120];
          [v37 removeObserver:self name:*MEMORY[0x1E6958120] object:audioSession];
        }

        else
        {
          v42 = *MEMORY[0x1E6958118];
          v43 = *MEMORY[0x1E6958120];
        }

        audioSession10 = [(TTSSpeechManager *)self audioSession];
        [v37 addObserver:self selector:sel_handleAudioInterruption_ name:v41 object:audioSession10];

        audioSession11 = [(TTSSpeechManager *)self audioSession];
        [v37 addObserver:self selector:sel_handleMediaServicesWereLost_ name:v42 object:audioSession11];

        audioSession12 = [(TTSSpeechManager *)self audioSession];
        [v37 addObserver:self selector:sel_handleMediaServicesWereReset_ name:v43 object:audioSession12];

LABEL_45:
LABEL_46:
        [(TTSSpeechManager *)self handleAudioSessionObservers:1];

        goto LABEL_47;
      }

      mEMORY[0x1E6958468]4 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(mEMORY[0x1E6958468]4, OS_LOG_TYPE_ERROR))
      {
        sub_1A957929C();
      }
    }

    else
    {
      audioSession13 = [(TTSSpeechManager *)self audioSession];
      if (audioSession13)
      {
        v28 = audioSession13;
        audioSession14 = [(TTSSpeechManager *)self audioSession];
        mEMORY[0x1E6958468]3 = [MEMORY[0x1E6958468] sharedInstance];
        v31 = [audioSession14 isEqual:mEMORY[0x1E6958468]3];

        if (v31)
        {
          goto LABEL_46;
        }
      }

      v32 = AXLogSpeechSynthesis();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9324000, v32, OS_LOG_TYPE_INFO, "Reverting back to shared audio session", buf, 2u);
      }

      mEMORY[0x1E6958468]4 = [MEMORY[0x1E6958468] sharedInstance];
      [(TTSSpeechManager *)self setAudioSession:mEMORY[0x1E6958468]4];
      v26 = 0;
    }

    goto LABEL_41;
  }

  audioSession = AXLogSpeechSynthesis();
  if (os_log_type_enabled(audioSession, OS_LOG_TYPE_ERROR))
  {
    sub_1A957936C(audioSession);
  }

LABEL_47:
}

- (void)handleAudioSessionObservers:(BOOL)observers
{
  observersCopy = observers;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  if (currentThread != self->_runThread)
  {
    sub_1A95793B0();
  }

  if (observersCopy)
  {
    if (!self->_audioSessionObserversEnabled)
    {
      [(TTSSpeechManager *)self addObserver:self forKeyPath:@"audioSessionCategory" options:0 context:0];
      [(TTSSpeechManager *)self addObserver:self forKeyPath:@"audioSessionCategoryOptions" options:0 context:0];
    }
  }

  else if (self->_audioSessionObserversEnabled)
  {
    [(TTSSpeechManager *)self removeObserver:self forKeyPath:@"audioSessionCategory" context:0];
    [(TTSSpeechManager *)self removeObserver:self forKeyPath:@"audioSessionCategoryOptions" context:0];
  }

  self->_audioSessionObserversEnabled = observersCopy;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TTSSpeechManager;
  [(TTSSpeechManager *)&v4 dealloc];
}

- (BOOL)_enqueueSelectorOnSpeechThread:(SEL)thread object:(id)object waitUntilDone:(BOOL)done
{
  doneCopy = done;
  objectCopy = object;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  if ([currentThread isEqual:self->_runThread])
  {
    sub_1A95793DC();
  }

  [(NSLock *)self->_speechThreadQueueLock lock];
  speechThreadFinished = self->_speechThreadFinished;
  if (!speechThreadFinished)
  {
    [(TTSSpeechManager *)self performSelector:thread onThread:self->_runThread withObject:objectCopy waitUntilDone:doneCopy];
  }

  [(NSLock *)self->_speechThreadQueueLock unlock];

  return !speechThreadFinished;
}

- (void)tearDown
{
  [(NSLock *)self->_speechThreadQueueLock lock];
  self->_speechThreadFinished = 1;
  CFRetain(self);
  [(TTSSpeechManager *)self performSelector:sel__tearDown onThread:self->_runThread withObject:0 waitUntilDone:0];
  speechThreadQueueLock = self->_speechThreadQueueLock;

  [(NSLock *)speechThreadQueueLock unlock];
}

- (void)_tearDown
{
  if (self->_usesAuxiliarySession)
  {
    audioDeactivatorTimer = [(TTSSpeechManager *)self audioDeactivatorTimer];
    [audioDeactivatorTimer cancel];

    audioSession = [(TTSSpeechManager *)self audioSession];
    [audioSession setActive:0 withOptions:0 error:0];
  }

  [(TTSSpeechManager *)self setAudioSession:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69580E0];
  audioSession2 = [(TTSSpeechManager *)self audioSession];
  [defaultCenter removeObserver:self name:v5 object:audioSession2];

  v7 = *MEMORY[0x1E6958118];
  audioSession3 = [(TTSSpeechManager *)self audioSession];
  [defaultCenter removeObserver:self name:v7 object:audioSession3];

  v9 = *MEMORY[0x1E6958120];
  audioSession4 = [(TTSSpeechManager *)self audioSession];
  [defaultCenter removeObserver:self name:v9 object:audioSession4];

  [(TTSSpeechManager *)self handleAudioSessionObservers:0];
  [(TTSSpeechThread *)self->_runThread stop];
  CFRelease(self);
}

- (void)handleMediaServicesWereLost:(id)lost
{
  lostCopy = lost;
  audioOperationQueue = [(TTSSpeechManager *)self audioOperationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A93625D0;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(audioOperationQueue, v7);
}

- (void)_handleMediaServicesWereLost:(id)lost
{
  if ([(TTSSpeechManager *)self shouldHandleAudioInterruptions])
  {
    [(TTSSpeechManager *)self _didBeginInterruption];
  }

  if (self->_usesAuxiliarySession)
  {
    propertyQueue = self->_propertyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A93626AC;
    block[3] = &unk_1E787FE20;
    block[4] = self;
    dispatch_sync(propertyQueue, block);
    [(TTSSpeechManager *)self performSelector:sel__updateAuxiliarySession onThread:self->_runThread withObject:0 waitUntilDone:0];
  }

  [(TTSSpeechManager *)self performSelector:sel__updateAudioSessionProperties onThread:self->_runThread withObject:0 waitUntilDone:0];
}

- (void)handleMediaServicesWereReset:(id)reset
{
  resetCopy = reset;
  audioOperationQueue = [(TTSSpeechManager *)self audioOperationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A936276C;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = resetCopy;
  v6 = resetCopy;
  dispatch_async(audioOperationQueue, v7);
}

- (void)_handleMediaServicesWereReset:(id)reset
{
  if ([(TTSSpeechManager *)self shouldHandleAudioInterruptions])
  {
    [(TTSSpeechManager *)self _didEndInterruption];
  }

  runThread = self->_runThread;

  [(TTSSpeechManager *)self performSelector:sel__updateAudioSessionProperties onThread:runThread withObject:0 waitUntilDone:0];
}

- (void)_resetInterruptionTracking
{
  [(TTSSpeechManager *)self setAudioInterruptionStartedTime:0.0];
  [(TTSSpeechManager *)self setWasSpeakingBeforeAudioInterruption:0];
  [(TTSSpeechManager *)self setDidRequestStartSpeakingDuringAudioInterruption:0];
  [(TTSSpeechManager *)self setDidRequestPauseSpeakingDuringAudioInterruption:0];
  [(TTSSpeechManager *)self setDidRequestResumeSpeakingDuringAudioInterruption:0];

  [(TTSSpeechManager *)self setRequestedActionDuringAudioInterruption:0];
}

- (void)_didEndInterruption
{
  [(TTSSpeechManager *)self setIsInAudioInterruption:0];
  if ([(TTSSpeechManager *)self didRequestStartSpeakingDuringAudioInterruption])
  {
    requestedActionDuringAudioInterruption = [(TTSSpeechManager *)self requestedActionDuringAudioInterruption];
    [(TTSSpeechManager *)self dispatchSpeechAction:requestedActionDuringAudioInterruption];
  }

  else if ([(TTSSpeechManager *)self wasSpeakingBeforeAudioInterruption]&& ![(TTSSpeechManager *)self didRequestPauseSpeakingDuringAudioInterruption]|| [(TTSSpeechManager *)self didRequestResumeSpeakingDuringAudioInterruption])
  {
    [(TTSSpeechManager *)self continueSpeaking];
  }

  MEMORY[0x1EEE66B58](self, sel__resetInterruptionTracking);
}

- (void)_didBeginInterruption
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(TTSSpeechManager *)self isSpeaking]&& ![(TTSSpeechManager *)self isPaused])
  {
    [(TTSSpeechManager *)self setWasSpeakingBeforeAudioInterruption:1];
    [(TTSSpeechManager *)self pauseSpeaking:0];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Speech interrupted, pausing"];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _didBeginInterruption]", 642, v3];
    if (qword_1ED970350 != -1)
    {
      sub_1A9579408();
    }

    v5 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
      v7 = v5;
      *buf = 136446210;
      uTF8String = [v4 UTF8String];
      _os_log_impl(&dword_1A9324000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  [(TTSSpeechManager *)self setAudioInterruptionStartedTime:CFAbsoluteTimeGetCurrent()];
  [(TTSSpeechManager *)self setIsInAudioInterruption:1];
}

- (void)handleAudioInterruption:(id)interruption
{
  interruptionCopy = interruption;
  audioOperationQueue = [(TTSSpeechManager *)self audioOperationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A9362B40;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = interruptionCopy;
  v6 = interruptionCopy;
  dispatch_async(audioOperationQueue, v7);
}

- (void)_handleAudioInterruption:(id)interruption
{
  v17 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  if ([(TTSSpeechManager *)self shouldHandleAudioInterruptions])
  {
    v5 = MEMORY[0x1E696AEC0];
    userInfo = [interruptionCopy userInfo];
    v7 = [v5 stringWithFormat:@"AVSpeechSynthesizer Audio interruption notification: %@", userInfo];

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _handleAudioInterruption:]", 660, v7];
    if (qword_1ED970350 != -1)
    {
      sub_1A957941C();
    }

    v9 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v11 = v9;
      *buf = 136446210;
      uTF8String = [v8 UTF8String];
      _os_log_impl(&dword_1A9324000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    userInfo2 = [interruptionCopy userInfo];
    v13 = [userInfo2 objectForKey:*MEMORY[0x1E69580F8]];
    integerValue = [v13 integerValue];

    if (integerValue)
    {
      if (integerValue == 1)
      {
        [(TTSSpeechManager *)self _didBeginInterruption];
      }
    }

    else
    {
      [(TTSSpeechManager *)self _didEndInterruption];
    }
  }
}

- (void)_updateAudioSessionProperties
{
  v18 = *MEMORY[0x1E69E9840];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  if (([currentThread isEqual:self->_runThread] & 1) == 0)
  {
    sub_1A9579430();
  }

  audioSessionCategory = [(TTSSpeechManager *)self audioSessionCategory];
  audioSessionCategoryOptions = [(TTSSpeechManager *)self audioSessionCategoryOptions];
  if (audioSessionCategory)
  {
    v6 = audioSessionCategoryOptions;
    audioSession = [(TTSSpeechManager *)self audioSession];
    v15 = 0;
    [audioSession setCategory:audioSessionCategory withOptions:v6 error:&v15];
    v8 = v15;

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error setting category: %@", v8];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _updateAudioSessionProperties]", 687, v9];
      if (qword_1ED970350 != -1)
      {
        sub_1A957945C();
      }

      v11 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v10;
        v13 = v11;
        uTF8String = [v10 UTF8String];
        *buf = 136446210;
        v17 = uTF8String;
        _os_log_impl(&dword_1A9324000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"audioSessionCategory"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"audioSessionCategoryOptions"))
  {
    [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__updateAudioSessionProperties object:0 waitUntilDone:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TTSSpeechManager;
    [(TTSSpeechManager *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_initialize
{
  v19 = *MEMORY[0x1E69E9840];
  [(TTSSpeechManager *)self handleAudioSessionObservers:1];
  [(TTSSpeechManager *)self _updateAudioSessionProperties];
  objc_initWeak(&location, self);
  v3 = [objc_allocWithZone(TTSSpeechSynthesizer) init];
  synthesizer = self->_synthesizer;
  self->_synthesizer = v3;

  speechSource = [(TTSSpeechManager *)self speechSource];
  [(TTSSpeechSynthesizer *)self->_synthesizer setSpeechSource:speechSource];

  [(TTSSpeechSynthesizer *)self->_synthesizer setDelegate:self];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(TTSSpeechSynthesizer *)self->_synthesizer setBundleIdentifier:bundleIdentifier];

  sharedInstance = [sub_1A93632E0() sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A93633C0;
  v14[3] = &unk_1E7880C60;
  objc_copyWeak(&v15, &location);
  [sharedInstance registerUpdateBlock:v14 forRetrieveSelector:sel_customPronunciationSubstitutions withListener:self];

  [(TTSSpeechManager *)self _updateUserSubstitutions];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Synthesizer created: %@", self->_synthesizer];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _initialize]", 729, v9];
  if (qword_1ED970350 != -1)
  {
    sub_1A9579484();
  }

  v11 = qword_1ED970348;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = v10;
    uTF8String = [v10 UTF8String];
    *buf = 136446210;
    v18 = uTF8String;
    _os_log_impl(&dword_1A9324000, v11, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  [(TTSSpeechManager *)self _updateAuxiliarySession];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (unint64_t)setActiveOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A93634F0;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSetActiveOptions:(unint64_t)options
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A9363578;
  v4[3] = &unk_1E7880C88;
  v4[4] = self;
  v4[5] = options;
  dispatch_async(propertyQueue, v4);
}

- (void)setAudioSessionCategory:(id)category
{
  categoryCopy = category;
  propertyQueue = self->_propertyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A936361C;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = categoryCopy;
  v6 = categoryCopy;
  dispatch_async(propertyQueue, v7);
}

- (NSString)audioSessionCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A9363718;
  v10 = sub_1A9363728;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363730;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAudioSessionCategoryOptions:(unint64_t)options
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A93637B8;
  v4[3] = &unk_1E7880C88;
  v4[4] = self;
  v4[5] = options;
  dispatch_async(propertyQueue, v4);
}

- (unint64_t)audioSessionCategoryOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363870;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isInAudioInterruption
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363930;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsInAudioInterruption:(BOOL)interruption
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A93639BC;
  v4[3] = &unk_1E7880CB0;
  v4[4] = self;
  interruptionCopy = interruption;
  dispatch_async(propertyQueue, v4);
}

- (AVAudioSession)audioSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A9363718;
  v10 = sub_1A9363728;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363ABC;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAudioSession:(id)session
{
  sessionCopy = session;
  propertyQueue = self->_propertyQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A9363B68;
  v7[3] = &unk_1E787FE98;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(propertyQueue, v7);
}

- (BOOL)isPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9363C20;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsPaused:(BOOL)paused
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A9363CAC;
  v4[3] = &unk_1E7880CB0;
  v4[4] = self;
  pausedCopy = paused;
  dispatch_async(propertyQueue, v4);
}

- (void)_updateUserSubstitutions
{
  sharedInstance = [sub_1A93632E0() sharedInstance];
  customPronunciationSubstitutions = [sharedInstance customPronunciationSubstitutions];
  [(TTSSpeechSynthesizer *)self->_synthesizer setUserSubstitutions:customPronunciationSubstitutions];
}

+ (id)currentLanguageCode
{
  v2 = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();

  return v2;
}

+ (id)spellOutLetterCaseMarkupString:(id)string string:(id)a4
{
  stringCopy = string;
  v6 = a4;
  if ([v6 length] == 1)
  {
    uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    if ([uppercaseLetterCharacterSet characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}])
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  v9 = [TTSSpeechSynthesizer speechMarkupStringForType:v8 forIdentifier:stringCopy string:v6];

  return v9;
}

+ (id)languageCodeForVoiceIdentifier:(id)identifier
{
  v3 = [TTSSpeechSynthesizer voiceForIdentifier:identifier];
  language = [v3 language];

  return language;
}

+ (BOOL)_isCharacterNativelySpeakable:(unsigned __int16)speakable languageCode:(id)code
{
  speakableCopy = speakable;
  codeCopy = code;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v6 = qword_1EB3910D0;
  v18 = qword_1EB3910D0;
  if (!qword_1EB3910D0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A9369604;
    v14[3] = &unk_1E787FF60;
    v14[4] = &v15;
    sub_1A9369604(v14);
    v6 = v16[3];
  }

  v7 = v6;
  _Block_object_dispose(&v15, 8);
  sharedInstance = [v6 sharedInstance];
  v9 = [sharedInstance dialectForLanguageID:codeCopy];

  locale = [v9 locale];
  exemplarCharacterSet = [locale exemplarCharacterSet];

  if (exemplarCharacterSet)
  {
    v12 = [exemplarCharacterSet characterIsMember:speakableCopy];
  }

  else
  {
    v12 = 1;
  }

  return (speakableCopy != 12540) & v12;
}

+ (id)literalStringMarkup:(id)markup string:(id)string speakCap:(BOOL)cap
{
  markupCopy = markup;
  stringCopy = string;
  if (![stringCopy length])
  {
    v26 = stringCopy;
    goto LABEL_23;
  }

  v9 = [TTSSpeechManager languageCodeForVoiceIdentifier:markupCopy];
  if (!v9)
  {
    v9 = +[TTSSpeechManager currentLanguageCode];
  }

  v10 = [TTSSpeechManager spellOutLetterCaseMarkupString:markupCopy string:stringCopy];
  if ([stringCopy length] == 1)
  {
    v11 = [stringCopy characterAtIndex:0];
    uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    [uppercaseLetterCharacterSet characterIsMember:v11];

    v13 = [self _isCharacterNativelySpeakable:v11 languageCode:v9];
    v14 = v9;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v15 = off_1EB3910D8;
    v37 = off_1EB3910D8;
    if (!off_1EB3910D8)
    {
      v16 = sub_1A9369498();
      v35[3] = dlsym(v16, "AXVOLocalizedStringForCharacter");
      off_1EB3910D8 = v35[3];
      v15 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (!v15)
    {
      sub_1A95794AC();
    }

    v17 = v15(v11, v14);

    if (v17)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18 & 1) != 0 || ([v17 isEqualToString:stringCopy])
    {
      goto LABEL_21;
    }

    v19 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"]\\-^"];
    [v19 characterIsMember:{objc_msgSend(stringCopy, "characterAtIndex:", 0)}];
    v20 = AXCFormattedString();
    v21 = [v17 rangeOfString:v20 options:{1024, stringCopy}];
    v33 = v22;

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = [stringCopy stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];
      v23 = AXCFormattedString();
      v21 = [v17 rangeOfString:v23 options:{1024, v32}];
      v33 = v24;

      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {

        v25 = v17;
LABEL_20:
        v28 = v25;

        v10 = v28;
LABEL_21:

        goto LABEL_22;
      }

      v27 = [TTSSpeechManager spellOutLetterCaseMarkupString:markupCopy string:v32];

      v10 = v27;
    }

    v25 = [v17 stringByReplacingCharactersInRange:v21 withString:{v33, v10}];
    goto LABEL_20;
  }

LABEL_22:
  v29 = VOTBundle();
  v30 = AXNSLocalizedStringForLocale();

  v26 = AXCFormattedString();

LABEL_23:

  return v26;
}

+ (id)availableVoices
{
  [self currentProcessAllowedToSaveVoiceInfo];

  return MEMORY[0x1EEE66B58](self, sel_availableVoices_);
}

+ (id)availableSuperCompactVoices
{
  v2 = +[TTSAXResourceManager sharedInstance];
  v3 = [v2 resourcesWithType:4 subType:2];

  v4 = [v3 ax_filteredArrayUsingBlock:&unk_1F1CF0298];

  v5 = [v4 ax_flatMappedArrayUsingBlock:&unk_1F1CF02B8];

  return v5;
}

+ (id)availableVoices:(BOOL)voices
{
  if (byte_1EB3910C0 != 1 || qword_1EB3910B8 == 0)
  {
    if (qword_1ED971000 != -1)
    {
      sub_1A95795C0();
    }

    v4 = +[TTSAXResourceManager sharedInstance];
    v5 = [v4 allVoices:1];

    v6 = [v5 ax_flatMappedArrayUsingBlock:&unk_1F1CF0338];
  }

  else
  {
    v6 = qword_1EB3910B8;
  }

  return v6;
}

+ (id)_resetAvailableVoices
{
  [self currentProcessAllowedToSaveVoiceInfo];

  return MEMORY[0x1EEE66B58](self, sel__resetAvailableVoices_);
}

+ (BOOL)currentProcessAllowedToSaveVoiceInfo
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  if ([processName isEqualToString:@"com.apple.accessibility.AccessibilityUIServer"])
  {
    v4 = 1;
  }

  else
  {
    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    processName2 = [processInfo2 processName];
    if ([processName2 isEqualToString:@"com.apple.AccessibilityUIServer"])
    {
      v4 = 1;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v4 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];
    }
  }

  return v4;
}

+ (URegularExpression)createRegularExpressionFromString:(id)string
{
  status = U_ZERO_ERROR;
  stringCopy = string;
  v4 = [stringCopy length];
  v5 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
  [stringCopy getCharacters:v5 range:{0, v4}];

  v6 = uregex_open(v5, v4, 0, &v8, &status);
  free(v5);
  uregex_useAnchoringBounds(v6, 1, &status);
  return v6;
}

+ (id)matchedRangesForString:(id)string withRegularExpression:(URegularExpression *)expression
{
  stringCopy = string;
  status = U_ZERO_ERROR;
  v6 = [stringCopy length];
  v7 = malloc_type_malloc(2 * v6, 0x1000040BDFB0063uLL);
  [stringCopy getCharacters:v7];
  uregex_setText(expression, v7, v6, &status);
  array = [MEMORY[0x1E695DF70] array];
  if (uregex_find(expression, -1, &status) && status == U_ZERO_ERROR)
  {
    do
    {
      v9 = uregex_start(expression, 0, &status);
      v10 = uregex_end(expression, 0, &status);
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v9, v10 - v9}];
      [array addObject:v11];
    }

    while (uregex_find(expression, v10, &status) && status == U_ZERO_ERROR);
  }

  free(v7);

  return array;
}

- (void)_speechJobFinished:(BOOL)finished action:(id)action
{
  v45 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  [(TTSSpeechManager *)self setIsPaused:0];
  [actionCopy setState:2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93655B0;
  block[3] = &unk_1E7880CB0;
  v7 = actionCopy;
  v41 = v7;
  finishedCopy = finished;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8 = MEMORY[0x1E696AEC0];
  firstObject = [(NSMutableArray *)self->_speechQueue firstObject];
  v10 = [v8 stringWithFormat:@"Removing from queue: %@", firstObject];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _speechJobFinished:action:]", 1120, v10];
  if (qword_1ED970350 != -1)
  {
    sub_1A9579610();
  }

  v12 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v13 = v11;
    v14 = v12;
    uTF8String = [v11 UTF8String];
    *buf = 136446210;
    v44 = uTF8String;
    _os_log_impl(&dword_1A9324000, v14, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  [(NSMutableArray *)self->_speechQueue removeObjectIdenticalTo:v7];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Remaining queue: %@", self->_speechQueue];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _speechJobFinished:action:]", 1123, v16];
  if (qword_1ED970350 != -1)
  {
    sub_1A9579638();
  }

  v18 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v19 = v17;
    v20 = v18;
    uTF8String2 = [v17 UTF8String];
    *buf = 136446210;
    v44 = uTF8String2;
    _os_log_impl(&dword_1A9324000, v20, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  audioOperationQueue = [(TTSSpeechManager *)self audioOperationQueue];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1A93656C0;
  v39[3] = &unk_1E787FE20;
  v39[4] = self;
  dispatch_sync(audioOperationQueue, v39);

  self->_isSpeaking = 0;
  [(TTSSpeechManager *)self setIsPaused:0];
  if ([(NSMutableArray *)self->_speechQueue count])
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start next job"];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _speechJobFinished:action:]", 1133, v23];
    if (qword_1ED970350 != -1)
    {
      sub_1A9579660();
    }

    v25 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
    {
      v26 = v24;
      v27 = v25;
      uTF8String3 = [v24 UTF8String];
      *buf = 136446210;
      v44 = uTF8String3;
      _os_log_impl(&dword_1A9324000, v27, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    [(TTSSpeechManager *)self _startNextSpeechJob];
  }

  else if (self->_usesAuxiliarySession)
  {
    [(TTSSpeechManager *)self audioSessionInactiveTimeout];
    v30 = v29;
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Scheduling audio session deactivation in: %f", *&v29];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _speechJobFinished:action:]", 1141, v31];
    if (qword_1ED970350 != -1)
    {
      sub_1A9579688();
    }

    v33 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v32;
      v35 = v33;
      uTF8String4 = [v32 UTF8String];
      *buf = 136446210;
      v44 = uTF8String4;
      _os_log_impl(&dword_1A9324000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    audioDeactivatorTimer = [(TTSSpeechManager *)self audioDeactivatorTimer];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1A9365750;
    v38[3] = &unk_1E787FE20;
    v38[4] = self;
    [audioDeactivatorTimer afterDelay:v38 processBlock:v30];
  }
}

- (id)externalVoiceIdentifierUsedForLanguage:(id)language
{
  languageCopy = language;
  v4 = [objc_opt_class() _speechVoiceForIdentifier:0 language:languageCopy footprint:1];

  identifier = [v4 identifier];

  return identifier;
}

- (id)voiceIdentifierUsedForLanguage:(id)language
{
  languageCopy = language;
  v4 = [objc_opt_class() _speechVoiceForIdentifier:0 language:languageCopy footprint:1];

  identifier = [v4 identifier];

  return identifier;
}

- (id)_phonemeSubstitutionsForAction:(id)action
{
  attributedString = [action attributedString];
  if ([attributedString length])
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = *MEMORY[0x1E6958358];
    v6 = [attributedString length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A9365B14;
    v9[3] = &unk_1E7880CF8;
    v10 = attributedString;
    v7 = array;
    v11 = v7;
    [v10 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startNextSpeechJob
{
  v95 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_speechQueue count])
  {
    v3 = [(NSMutableArray *)self->_speechQueue objectAtIndex:0];
    if ([v3 state])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Existing speech job already in flight"];
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _startNextSpeechJob]", 1197, v4];
      if (qword_1ED970350 != -1)
      {
        sub_1A95796D8();
      }

      v6 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
      {
        v7 = v5;
        v8 = v6;
        *buf = 136446210;
        uTF8String = [v5 UTF8String];
        _os_log_impl(&dword_1A9324000, v8, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
      }
    }

    else if ([(TTSSpeechManager *)self isInAudioInterruption]&& (Current = CFAbsoluteTimeGetCurrent(), [(TTSSpeechManager *)self audioInterruptionStartedTime], Current - v10 < 1.5))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Is in audio interruption, not starting speech"];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _startNextSpeechJob]", 1205, v11];
      if (qword_1ED970350 != -1)
      {
        sub_1A9579778();
      }

      v13 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12;
        v15 = v13;
        *buf = 136446210;
        uTF8String = [v12 UTF8String];
        _os_log_impl(&dword_1A9324000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      [(TTSSpeechManager *)self setDidRequestStartSpeakingDuringAudioInterruption:1];
      [(TTSSpeechManager *)self setDidRequestPauseSpeakingDuringAudioInterruption:0];
      [(TTSSpeechManager *)self setDidRequestResumeSpeakingDuringAudioInterruption:0];
      [(TTSSpeechManager *)self setRequestedActionDuringAudioInterruption:v3];
    }

    else
    {
      [v3 preprocessAction];
      v16 = MEMORY[0x1E696AEC0];
      currentThread = [MEMORY[0x1E696AF00] currentThread];
      name = [currentThread name];
      string = [v3 string];
      v20 = [v16 stringWithFormat:@"%@ Will speak: %@ %f", name, string, CFAbsoluteTimeGetCurrent()];

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _startNextSpeechJob]", 1215, v20];
      if (qword_1ED970350 != -1)
      {
        sub_1A95796EC();
      }

      v22 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
      {
        v23 = v21;
        v24 = v22;
        *buf = 136446210;
        uTF8String = [v21 UTF8String];
        _os_log_impl(&dword_1A9324000, v24, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
      }

      if ([(TTSSpeechSynthesizer *)self->_synthesizer isSpeaking])
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stopping existing job"];
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _startNextSpeechJob]", 1219, v25];
        if (qword_1ED970350 != -1)
        {
          sub_1A9579700();
        }

        v27 = qword_1ED970348;
        if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v26;
          v29 = v27;
          uTF8String2 = [v26 UTF8String];
          *buf = 136446210;
          uTF8String = uTF8String2;
          _os_log_impl(&dword_1A9324000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        [(TTSSpeechSynthesizer *)self->_synthesizer stopSpeakingAtNextBoundary:0 synchronously:1 error:0];
      }

      [v3 speakingRate];
      *&v31 = v31;
      [(TTSSpeechSynthesizer *)self->_synthesizer setNormalizedRate:v31];
      [v3 volume];
      *&v32 = v32;
      [(TTSSpeechSynthesizer *)self->_synthesizer setVolume:v32];
      voiceSelection = [v3 voiceSelection];
      voiceSettings = [voiceSelection voiceSettings];
      [(TTSSpeechSynthesizer *)self->_synthesizer setPerVoiceSettings:voiceSettings];

      voiceSelection2 = [v3 voiceSelection];
      effects = [voiceSelection2 effects];
      [(TTSSpeechSynthesizer *)self->_synthesizer setAudioEffects:effects];

      synthesizer = self->_synthesizer;
      [v3 pitch];
      *&v38 = v38;
      [(TTSSpeechSynthesizer *)synthesizer setPitch:v38];
      [(TTSSpeechSynthesizer *)self->_synthesizer setAudioQueueFlags:[(TTSSpeechManager *)self audioQueueFlags]];
      voiceIdentifier = [v3 voiceIdentifier];
      [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:voiceIdentifier];

      if ([v3 ignoreCustomSubstitutions])
      {
        [(TTSSpeechSynthesizer *)self->_synthesizer setUserSubstitutions:0];
      }

      -[TTSSpeechSynthesizer setSynthesizeSilently:](self->_synthesizer, "setSynthesizeSilently:", [v3 synthesizeSilently]);
      v40 = [(TTSSpeechManager *)self _phonemeSubstitutionsForAction:v3];
      [(TTSSpeechSynthesizer *)self->_synthesizer setPhonemeSubstitutions:v40];

      [(TTSSpeechSynthesizer *)self->_synthesizer setSpeakingRequestClientContext:v3];
      audioBufferCallback = [v3 audioBufferCallback];
      v42 = audioBufferCallback != 0;

      voiceIdentifier2 = [(TTSSpeechSynthesizer *)self->_synthesizer voiceIdentifier];
      IsAllowedToUseBufferCallbackAPIInCurrentProcess = TTSVoiceWithIdentifierIsAllowedToUseBufferCallbackAPIInCurrentProcess(voiceIdentifier2);

      if ((IsAllowedToUseBufferCallbackAPIInCurrentProcess & v42) == 1)
      {
        objc_initWeak(buf, self);
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = sub_1A93668A0;
        v90[3] = &unk_1E7880D20;
        objc_copyWeak(&v92, buf);
        v91 = v3;
        [(TTSSpeechSynthesizer *)self->_synthesizer setAudioBufferCallback:v90];

        objc_destroyWeak(&v92);
        objc_destroyWeak(buf);
      }

      else
      {
        [(TTSSpeechSynthesizer *)self->_synthesizer setAudioBufferCallback:0];
      }

      self->_isSpeaking = 1;
      [(TTSSpeechManager *)self setIsPaused:0];
      attributedString = [v3 attributedString];
      string2 = [attributedString string];
      v47 = string2;
      if (string2)
      {
        string3 = string2;
      }

      else
      {
        string3 = [v3 string];
      }

      v49 = string3;

      processedString = [v3 processedString];
      v51 = processedString == 0;

      if (!v51)
      {
        processedString2 = [v3 processedString];

        v49 = processedString2;
      }

      if ([v49 length])
      {
        requestWillStart = [(TTSSpeechManager *)self requestWillStart];
        v54 = requestWillStart == 0;

        if (!v54)
        {
          requestWillStart2 = [(TTSSpeechManager *)self requestWillStart];
          (requestWillStart2)[2](requestWillStart2, v3);
        }

        audioDeactivatorTimer = [(TTSSpeechManager *)self audioDeactivatorTimer];
        [audioDeactivatorTimer cancel];

        audioSession = [(TTSSpeechManager *)self audioSession];
        v89 = 0;
        [audioSession setActive:1 withOptions:-[TTSSpeechManager setActiveOptions](self error:{"setActiveOptions"), &v89}];
        v58 = v89;

        if (v58)
        {
          v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error setting active: %@", v58];
          v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _startNextSpeechJob]", 1328, v59];
          if (qword_1ED970350 != -1)
          {
            sub_1A9579728();
          }

          v61 = qword_1ED970348;
          if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
          {
            v62 = v60;
            v63 = v61;
            uTF8String3 = [v60 UTF8String];
            *buf = 136446210;
            uTF8String = uTF8String3;
            _os_log_impl(&dword_1A9324000, v63, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }
        }

        [v3 setState:1];
        taggedSSML = [v3 taggedSSML];
        v66 = taggedSSML == 0;

        if (v66)
        {
          v76 = self->_synthesizer;
          language = [v3 language];
          v85 = v58;
          v86 = 0;
          [(TTSSpeechSynthesizer *)v76 startSpeakingString:v49 withLanguageCode:language request:&v86 error:&v85];
          v73 = v86;
          v74 = v85;
          ssml = v58;
        }

        else
        {
          taggedSSML2 = [v3 taggedSSML];
          ssmlSnippets = [taggedSSML2 ssmlSnippets];
          language = [ssmlSnippets objectAtIndexedSubscript:{objc_msgSend(v3, "currentSSMLSnippetIndex")}];

          [(TTSSpeechManager *)self _setVoiceForAction:v3 snippet:language];
          v70 = self->_synthesizer;
          ssml = [language ssml];
          language2 = [v3 language];
          v87 = v58;
          v88 = 0;
          [(TTSSpeechSynthesizer *)v70 startSpeakingSSML:ssml withLanguageCode:language2 request:&v88 error:&v87];
          v73 = v88;
          v74 = v87;
        }

        if (v3 && v73)
        {
          objc_setAssociatedObject(v73, &unk_1EB3910E0, v3, 1);
        }

        if (v74)
        {
          v77 = MEMORY[0x1E696AEC0];
          localizedDescription = [v74 localizedDescription];
          v79 = [v77 stringWithFormat:@"Speech Error:%@", localizedDescription];

          v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _startNextSpeechJob]", 1346, v79];
          if (qword_1ED970350 != -1)
          {
            sub_1A9579750();
          }

          v81 = qword_1ED970348;
          if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
          {
            v82 = v80;
            v83 = v81;
            uTF8String4 = [v80 UTF8String];
            *buf = 136446210;
            uTF8String = uTF8String4;
            _os_log_impl(&dword_1A9324000, v83, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          }
        }
      }

      else
      {
        v75 = objc_alloc_init(TTSSpeechRequest);
        v73 = v75;
        if (v3 && v75)
        {
          objc_setAssociatedObject(v75, &unk_1EB3910E0, v3, 1);
        }

        [(TTSSpeechManager *)self speechSynthesizer:self->_synthesizer didStartSpeakingRequest:v73];
        [(TTSSpeechManager *)self speechSynthesizer:self->_synthesizer didFinishSpeakingRequest:v73 successfully:1 withError:0];
        v74 = 0;
      }
    }
  }
}

- (void)_setVoiceForAction:(id)action snippet:(id)snippet
{
  actionCopy = action;
  snippetCopy = snippet;
  voiceName = [snippetCopy voiceName];

  if (voiceName)
  {
    v8 = MEMORY[0x1E69584F8];
    voiceName2 = [snippetCopy voiceName];
    v10 = [v8 _voiceFromInternalVoiceListWithIdentifier:voiceName2];
LABEL_5:
    v13 = v10;
    identifier = [v10 identifier];
    [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:identifier];

    goto LABEL_6;
  }

  language = [snippetCopy language];

  if (language)
  {
    v12 = MEMORY[0x1E69584F8];
    voiceName2 = [snippetCopy language];
    v10 = [v12 voiceWithLanguage:voiceName2];
    goto LABEL_5;
  }

  voiceName2 = [actionCopy voiceIdentifier];
  [(TTSSpeechSynthesizer *)self->_synthesizer setVoiceIdentifier:voiceName2];
LABEL_6:
}

- (void)_processAudioBufferCallback:(id)callback
{
  callbackCopy = callback;
  if ([callbackCopy count] != 2)
  {
    v4 = AXLogSpeechSynthesis();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A957978C();
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A9366C8C;
  block[3] = &unk_1E787FE20;
  v7 = callbackCopy;
  v5 = callbackCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setSpeechEnabled:(BOOL)enabled
{
  self->_speechEnabled = enabled;
  if (!enabled)
  {
    [(TTSSpeechManager *)self clearSpeechQueue];
  }
}

- (void)_dispatchSpeechAction:(id)action
{
  v43 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = MEMORY[0x1E696AEC0];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  name = [currentThread name];
  string = [actionCopy string];
  v9 = [v5 stringWithFormat:@"%@ Should queue: %@ -> %d", name, string, objc_msgSend(actionCopy, "shouldQueue")];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _dispatchSpeechAction:]", 1392, v9];
  if (qword_1ED970350 != -1)
  {
    sub_1A9579800();
  }

  v11 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v12 = v10;
    v13 = v11;
    *buf = 136446210;
    uTF8String = [v10 UTF8String];
    _os_log_impl(&dword_1A9324000, v13, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  if ([actionCopy shouldQueue] & 1) != 0 || -[NSMutableArray count](self->_speechQueue, "count") && (-[NSMutableArray objectAtIndex:](self->_speechQueue, "objectAtIndex:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "cannotInterrupt"), v14, (v15))
  {
    v16 = 1;
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Telling synthesizer to stop because this job doesn't want to queue"];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _dispatchSpeechAction:]", 1402, v17];
    if (qword_1ED970350 != -1)
    {
      sub_1A9579814();
    }

    v19 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
    {
      v20 = v18;
      v21 = v19;
      uTF8String2 = [v18 UTF8String];
      *buf = 136446210;
      uTF8String = uTF8String2;
      _os_log_impl(&dword_1A9324000, v21, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    [(NSMutableArray *)self->_speechQueue removeAllObjects];
    [(TTSSpeechSynthesizer *)self->_synthesizer stopSpeakingAtNextBoundary:0 synchronously:1 error:0];
    v16 = 0;
  }

  [(NSMutableArray *)self->_speechQueue addObject:actionCopy];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isSpeaking: %d", self->_isSpeaking];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _dispatchSpeechAction:]", 1410, v23];
  if (qword_1ED970350 != -1)
  {
    sub_1A957983C();
  }

  v25 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v26 = v24;
    v27 = v25;
    uTF8String3 = [v24 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String3;
    _os_log_impl(&dword_1A9324000, v27, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Speech queue items: %@", self->_speechQueue];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _dispatchSpeechAction:]", 1411, v29];
  if (qword_1ED970350 != -1)
  {
    sub_1A9579864();
  }

  v31 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v32 = v30;
    v33 = v31;
    uTF8String4 = [v30 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String4;
    _os_log_impl(&dword_1A9324000, v33, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  if (!v16 || !self->_isSpeaking)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting next job"];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager _dispatchSpeechAction:]", 1414, v35];
    if (qword_1ED970350 != -1)
    {
      sub_1A957988C();
    }

    v37 = qword_1ED970348;
    if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
    {
      v38 = v36;
      v39 = v37;
      uTF8String5 = [v36 UTF8String];
      *buf = 136446210;
      uTF8String = uTF8String5;
      _os_log_impl(&dword_1A9324000, v39, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
    }

    [(TTSSpeechManager *)self _startNextSpeechJob];
  }
}

- (void)clearSpeechQueue
{
  if (_AXSInUnitTestMode() && [(TTSSpeechThread *)self->_runThread isFinished])
  {
    sub_1A95798B4();
  }

  [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__clearSpeechQueue object:0 waitUntilDone:0];
}

- (void)dispatchSpeechAction:(id)action
{
  actionCopy = action;
  if ([(TTSSpeechManager *)self speechEnabled])
  {
    if (_AXSInUnitTestMode() && [(TTSSpeechThread *)self->_runThread isFinished])
    {
      sub_1A95798E0();
    }

    [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__dispatchSpeechAction_ object:actionCopy waitUntilDone:0];
  }
}

- (void)_pauseSpeaking:(id)speaking
{
  speakingCopy = speaking;
  if ([(TTSSpeechManager *)self isInAudioInterruption]&& [(TTSSpeechManager *)self wasSpeakingBeforeAudioInterruption])
  {
    [(TTSSpeechManager *)self setDidRequestPauseSpeakingDuringAudioInterruption:1];
    [(TTSSpeechManager *)self setDidRequestResumeSpeakingDuringAudioInterruption:0];
    [(TTSSpeechManager *)self setDidRequestStartSpeakingDuringAudioInterruption:0];
    [(TTSSpeechManager *)self setRequestedActionDuringAudioInterruption:0];
  }

  -[TTSSpeechSynthesizer pauseSpeakingAtNextBoundary:error:](self->_synthesizer, "pauseSpeakingAtNextBoundary:error:", [speakingCopy intValue], 0);
}

- (void)pauseSpeaking:(int64_t)speaking
{
  if (_AXSInUnitTestMode() && [(TTSSpeechThread *)self->_runThread isFinished])
  {
    sub_1A957990C();
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:speaking];
  [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__pauseSpeaking_ object:v5 waitUntilDone:1];
}

- (void)_continueSpeaking
{
  if ([(TTSSpeechManager *)self isInAudioInterruption])
  {
    [(TTSSpeechManager *)self setDidRequestResumeSpeakingDuringAudioInterruption:1];
    [(TTSSpeechManager *)self setDidRequestPauseSpeakingDuringAudioInterruption:0];
    [(TTSSpeechManager *)self setDidRequestStartSpeakingDuringAudioInterruption:0];
    [(TTSSpeechManager *)self setRequestedActionDuringAudioInterruption:0];
  }

  synthesizer = self->_synthesizer;

  MEMORY[0x1EEE66B58](synthesizer, sel_continueSpeakingWithError_);
}

- (void)continueSpeaking
{
  if (_AXSInUnitTestMode() && [(TTSSpeechThread *)self->_runThread isFinished])
  {
    sub_1A9579938();
  }

  [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__continueSpeaking object:0 waitUntilDone:0];
}

- (void)_stopSpeaking:(id)speaking
{
  synthesizer = self->_synthesizer;
  integerValue = [speaking integerValue];

  [(TTSSpeechSynthesizer *)synthesizer stopSpeakingAtNextBoundary:integerValue synchronously:1 error:0];
}

- (void)stopSpeaking:(int64_t)speaking
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:speaking];
  [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__stopSpeaking_ object:v4 waitUntilDone:0];
}

- (void)_isSpeaking:(id)speaking
{
  synthesizer = self->_synthesizer;
  speakingCopy = speaking;
  if ([(TTSSpeechSynthesizer *)synthesizer isSpeaking])
  {
    v4 = @"1";
  }

  else
  {
    v4 = @"0";
  }

  [speakingCopy setString:v4];
}

- (BOOL)isSpeaking
{
  if (_AXSInUnitTestMode() && [(TTSSpeechThread *)self->_runThread isFinished])
  {
    sub_1A9579964();
  }

  if (([(TTSSpeechThread *)self->_runThread isFinished]& 1) != 0)
  {
    return 0;
  }

  string = [MEMORY[0x1E696AD60] string];
  [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__isSpeaking_ object:string waitUntilDone:1];
  bOOLValue = [string BOOLValue];

  return bOOLValue;
}

- (NSArray)outputChannels
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A9363718;
  v10 = sub_1A9363728;
  v11 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A936798C;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = [TTSAudioSessionChannel convertChannels:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setOutputChannels:(id)channels
{
  v23 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  if ([channelsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = channelsCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [TTSAudioSessionChannel channelWithChannel:*(*(&v17 + 1) + 8 * v10)];
          if (v11)
          {
            [array addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
    }

    propertyQueue = self->_propertyQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A9367BF8;
    v15[3] = &unk_1E787FE98;
    v15[4] = self;
    v16 = array;
    v13 = array;
    dispatch_async(propertyQueue, v15);
  }

  else
  {
    v14 = self->_propertyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9367BE8;
    block[3] = &unk_1E787FE20;
    block[4] = self;
    dispatch_async(v14, block);
  }
}

- (unsigned)audioQueueFlags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  propertyQueue = self->_propertyQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A9367CB0;
  v5[3] = &unk_1E7880670;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(propertyQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAudioQueueFlags:(unsigned int)flags
{
  propertyQueue = self->_propertyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A9367D3C;
  v4[3] = &unk_1E7880D48;
  v4[4] = self;
  flagsCopy = flags;
  dispatch_async(propertyQueue, v4);
}

- (void)_processDidStartCallback:(id)callback
{
  callbackCopy = callback;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  if (([currentThread isEqual:self->_runThread] & 1) == 0)
  {
    sub_1A9579990();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_getAssociatedObject(callbackCopy, &unk_1EB3910E0);
  taggedSSML = [v7 taggedSSML];
  if (!taggedSSML || (v9 = taggedSSML, v10 = [v7 currentSSMLSnippetIndex], v9, !v10))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9367E74;
    block[3] = &unk_1E787FE20;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)speechSynthesizer:(id)synthesizer didStartSpeakingRequest:(id)request
{
  v5 = MEMORY[0x1E696AF00];
  requestCopy = request;
  currentThread = [v5 currentThread];
  v7 = [currentThread isEqual:self->_runThread];

  if (v7)
  {
    [(TTSSpeechManager *)self _processDidStartCallback:requestCopy];
  }

  else
  {
    [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__processDidStartCallback_ object:requestCopy waitUntilDone:1];
  }
}

- (void)__speechJobFinished:(id)finished
{
  finishedCopy = finished;
  v7 = [finishedCopy objectAtIndexedSubscript:0];
  bOOLValue = [v7 BOOLValue];
  v6 = [finishedCopy objectAtIndexedSubscript:1];

  [(TTSSpeechManager *)self _speechJobFinished:bOOLValue action:v6];
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully withError:(id)error
{
  successfullyCopy = successfully;
  v60 = *MEMORY[0x1E69E9840];
  synthesizerCopy = synthesizer;
  requestCopy = request;
  errorCopy = error;
  context = objc_autoreleasePoolPush();
  v11 = MEMORY[0x1E696AEC0];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  name = [currentThread name];
  errorCopy = [v11 stringWithFormat:@"%@ Speech finished: %d %@", name, successfullyCopy, errorCopy];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager speechSynthesizer:didFinishSpeakingRequest:successfully:withError:]", 1642, errorCopy];
  if (qword_1ED970350 != -1)
  {
    sub_1A95799BC();
  }

  v16 = qword_1ED970348;
  if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEBUG))
  {
    v17 = v15;
    v18 = v16;
    *buf = 136446210;
    uTF8String = [v15 UTF8String];
    _os_log_impl(&dword_1A9324000, v18, OS_LOG_TYPE_DEBUG, "%{public}s", buf, 0xCu);
  }

  if (([(TTSSpeechThread *)self->_runThread isFinished]& 1) == 0)
  {
    v19 = objc_getAssociatedObject(requestCopy, &unk_1EB3910E0);
    v20 = v19;
    if (v19)
    {
      if (errorCopy)
      {
        v21 = [v19 copy];
        languageCode = [requestCopy languageCode];
        v23 = [TTSSpeechSynthesizer _speechVoiceForIdentifier:0 language:languageCode footprint:1];

        v24 = VOTLogSpeech();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1A95799D0(errorCopy, v23, v24);
        }

        identifier = [v23 identifier];
        [v21 setVoiceIdentifier:identifier];

        [(TTSSpeechManager *)self dispatchSpeechAction:v21];
      }

      taggedSSML = [v20 taggedSSML];

      if (taggedSSML && ([v20 setCurrentSSMLSnippetIndex:{objc_msgSend(v20, "currentSSMLSnippetIndex") + 1}], v27 = objc_msgSend(v20, "currentSSMLSnippetIndex"), objc_msgSend(v20, "taggedSSML"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "ssmlSnippets"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, v28, v27 < v30))
      {
        taggedSSML2 = [v20 taggedSSML];
        ssmlSnippets = [taggedSSML2 ssmlSnippets];
        v33 = [ssmlSnippets objectAtIndexedSubscript:{objc_msgSend(v20, "currentSSMLSnippetIndex")}];

        [(TTSSpeechManager *)self _setVoiceForAction:v20 snippet:v33];
        synthesizer = self->_synthesizer;
        ssml = [v33 ssml];
        language = [v33 language];
        v55 = errorCopy;
        v56 = 0;
        [(TTSSpeechSynthesizer *)synthesizer startSpeakingSSML:ssml withLanguageCode:language request:&v56 error:&v55];
        v37 = v56;
        v38 = v55;

        if (v37)
        {
          objc_setAssociatedObject(v37, &unk_1EB3910E0, v20, 1);
        }

        errorCopy = v38;
      }

      else
      {
        if ([v20 ignoreCustomSubstitutions])
        {
          [(TTSSpeechManager *)self _updateUserSubstitutions];
        }

        text = [requestCopy text];

        if (text)
        {
          text2 = [requestCopy text];
          [v20 setFinalSpokenString:text2];
        }

        if (errorCopy)
        {
          v41 = 0;
        }

        else
        {
          v41 = successfullyCopy;
        }

        v42 = [MEMORY[0x1E696AD98] numberWithInt:v41];
        v57[0] = v42;
        v57[1] = v20;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];

        currentThread2 = [MEMORY[0x1E696AF00] currentThread];
        v45 = [currentThread2 isEqual:self->_runThread];

        if (v45)
        {
          [(TTSSpeechManager *)self __speechJobFinished:v43];
        }

        else
        {
          [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel___speechJobFinished_ object:v43 waitUntilDone:0];
        }
      }
    }

    else
    {
      requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No action for request: %@", requestCopy];
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d %@", "-[TTSSpeechManager speechSynthesizer:didFinishSpeakingRequest:successfully:withError:]", 1653, requestCopy];
      if (qword_1ED970350 != -1)
      {
        sub_1A9579A84();
      }

      v48 = qword_1ED970348;
      if (os_log_type_enabled(qword_1ED970348, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v47;
        v50 = v48;
        uTF8String2 = [v47 UTF8String];
        *buf = 136446210;
        uTF8String = uTF8String2;
        _os_log_impl(&dword_1A9324000, v50, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }

      [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel___speechJobFinished_ object:0 waitUntilDone:0];
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)speechSynthesizer:(id)synthesizer didPauseSpeakingRequest:(id)request
{
  v5 = MEMORY[0x1E696AF00];
  requestCopy = request;
  currentThread = [v5 currentThread];
  v7 = [currentThread isEqual:self->_runThread];

  if (v7)
  {
    [(TTSSpeechManager *)self _processDidPauseCallback:requestCopy];
  }

  else
  {
    [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__processDidPauseCallback_ object:requestCopy waitUntilDone:1];
  }
}

- (void)_processDidPauseCallback:(id)callback
{
  callbackCopy = callback;
  [(TTSSpeechManager *)self setIsPaused:1];
  v5 = objc_autoreleasePoolPush();
  v6 = objc_getAssociatedObject(callbackCopy, &unk_1EB3910E0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93687E4;
  block[3] = &unk_1E787FE20;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_autoreleasePoolPop(v5);
}

- (void)speechSynthesizer:(id)synthesizer didContinueSpeakingRequest:(id)request
{
  v5 = MEMORY[0x1E696AF00];
  requestCopy = request;
  currentThread = [v5 currentThread];
  v7 = [currentThread isEqual:self->_runThread];

  if (v7)
  {
    [(TTSSpeechManager *)self _processDidContinueCallback:requestCopy];
  }

  else
  {
    [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__processDidContinueCallback_ object:requestCopy waitUntilDone:1];
  }
}

- (void)_processDidContinueCallback:(id)callback
{
  callbackCopy = callback;
  [(TTSSpeechManager *)self setIsPaused:0];
  v5 = objc_autoreleasePoolPush();
  v6 = objc_getAssociatedObject(callbackCopy, &unk_1EB3910E0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A93689E0;
  block[3] = &unk_1E787FE20;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_autoreleasePoolPop(v5);
}

- (void)speechSynthesizer:(id)synthesizer didEncounterMarker:(id)marker forRequest:(id)request
{
  v21[2] = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  requestCopy = request;
  v21[0] = requestCopy;
  v21[1] = markerCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  if ([markerCopy markType] == 1)
  {
    v10 = markerCopy;
    v20[0] = requestCopy;
    v11 = MEMORY[0x1E696B098];
    wordRange = [v10 wordRange];
    v14 = [v11 valueWithRange:{wordRange, v13}];
    v20[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

    currentThread = [MEMORY[0x1E696AF00] currentThread];
    v17 = [currentThread isEqual:self->_runThread];

    if (v17)
    {
      [(TTSSpeechManager *)self _processDidEncounterMarker:v9];
      [(TTSSpeechManager *)self _processWillSpeechRange:v15];
    }

    else
    {
      [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__processDidEncounterMarker_ object:v9 waitUntilDone:1];
      [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__processWillSpeechRange_ object:v15 waitUntilDone:1];
    }
  }

  else
  {
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    v19 = [currentThread2 isEqual:self->_runThread];

    if (v19)
    {
      [(TTSSpeechManager *)self _processDidEncounterMarker:v9];
    }

    else
    {
      [(TTSSpeechManager *)self _enqueueSelectorOnSpeechThread:sel__processDidEncounterMarker_ object:v9 waitUntilDone:1];
    }
  }
}

- (void)_processDidEncounterMarker:(id)marker
{
  markerCopy = marker;
  v4 = [markerCopy objectAtIndexedSubscript:0];
  v5 = [markerCopy objectAtIndexedSubscript:1];

  v6 = objc_getAssociatedObject(v4, &unk_1EB3910E0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A9368D38;
  v9[3] = &unk_1E787FE98;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (void)_processWillSpeechRange:(id)range
{
  rangeCopy = range;
  v4 = [rangeCopy objectAtIndexedSubscript:0];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3010000000;
  rangeValue = 0;
  v15 = 0;
  v13[3] = &unk_1A95FC00D;
  v5 = [rangeCopy objectAtIndexedSubscript:1];
  rangeValue = [v5 rangeValue];
  v15 = v6;

  v7 = objc_autoreleasePoolPush();
  v8 = objc_getAssociatedObject(v4, &unk_1EB3910E0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A9368F04;
  v10[3] = &unk_1E787FF38;
  v11 = v8;
  v12 = v13;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_autoreleasePoolPop(v7);
  _Block_object_dispose(v13, 8);
}

+ (void)test_actionStartTap:(id)tap
{
  qword_1EB3910C8 = _Block_copy(tap);

  MEMORY[0x1EEE66BB8]();
}

@end