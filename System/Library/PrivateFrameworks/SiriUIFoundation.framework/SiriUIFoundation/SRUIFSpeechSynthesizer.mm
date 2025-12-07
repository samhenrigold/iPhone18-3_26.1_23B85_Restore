@interface SRUIFSpeechSynthesizer
- (BOOL)_isSynthesisQueueEmpty;
- (BOOL)isSpeaking;
- (SRUIFSpeechSynthesizer)init;
- (SRUIFSpeechSynthesizerClientStateManagerDelegate)clientStateManagerDelegate;
- (SRUIFSpeechSynthesizerDelegate)delegate;
- (SiriTTSDaemonSession)ttsSession;
- (id)_activeTaskWithTTSRequest:(id)request;
- (id)_filterVoices:(id)voices gender:(id)gender;
- (int64_t)_genderForString:(id)string;
- (int64_t)_speechFootPrintForVoice:(id)voice;
- (void)_cancelByCancellingActiveTasksOnly:(BOOL)only matching:(id)matching;
- (void)_duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)_enqueueText:(id)text audioData:(id)data identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)self0 isPhonetic:(BOOL)self1 provisionally:(BOOL)self2 eligibleAfterDuration:(double)self3 delayed:(BOOL)self4 canUseServerTTS:(BOOL)self5 preparationIdentifier:(id)self6 shouldCache:(BOOL)self7 completion:(id)self8 analyticsContext:(id)self9 speakableContextInfo:(id)info;
- (void)_findVoiceForLanguage:(id)language gender:(id)gender completion:(id)completion;
- (void)_handleAudioData:(id)data completion:(id)completion;
- (void)_handleText:(id)text completion:(id)completion;
- (void)_prepareAudioSessionIfNeededWithCompletion:(id)completion;
- (void)_processProvisionalTasks;
- (void)_processTaskQueue;
- (void)cancel;
- (void)cancelProvisionalTasks;
- (void)cancelSynthesisForIdentifier:(id)identifier;
- (void)dealloc;
- (void)didFinishAudioTask:(id)task withError:(id)error;
- (void)didFinishSpeakTask:(id)task withError:(id)error;
- (void)didStartAudioTask:(id)task;
- (void)didStartSpeakTask:(id)task;
- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)enqueueAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration completion:(id)completion;
- (void)enqueuePhaticWithCompletion:(id)completion;
- (void)enqueueSpeechSynthesisRequest:(id)request;
- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id completion:(id)completion;
- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id language:(id)language gender:(id)gender isPhonetic:(BOOL)phonetic provisionally:(BOOL)provisionally eligibleAfterDuration:(double)self0 delayed:(BOOL)self1 canUseServerTTS:(BOOL)self2 preparationIdentifier:(id)self3 completion:(id)self4 analyticsContext:(id)self5 speakableContextInfo:(id)self6;
- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)style isPhonetic:(BOOL)self0 provisionally:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 canUseServerTTS:(BOOL)self4 preparationIdentifier:(id)self5 completion:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8;
- (void)invalidate;
- (void)invalidateOnMainThread;
- (void)isSynthesisQueueEmpty:(id)empty;
- (void)prewarmIfNeededKeepActive:(BOOL)active;
- (void)processDelayedItem:(id)item;
- (void)reloadSynthesisVoice;
- (void)setOutputVoice:(id)voice;
- (void)speakTask:(id)task didGenerateMetrics:(id)metrics;
- (void)speakTask:(id)task didGenerateWordTimingInfo:(id)info;
- (void)taskEligibilityDidChange:(id)change;
@end

@implementation SRUIFSpeechSynthesizer

- (SRUIFSpeechSynthesizer)init
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = SRUIFSpeechSynthesizer;
  v2 = [(SRUIFSpeechSynthesizer *)&v24 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    activeTasks = v2->_activeTasks;
    v2->_activeTasks = array;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    delayedTasks = v2->_delayedTasks;
    v2->_delayedTasks = v5;

    v7 = objc_alloc_init(MEMORY[0x277CEF370]);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v7;

    [(AFQueue *)v2->_taskQueue setDelegate:v2];
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    outputVoice = [mEMORY[0x277CEF368] outputVoice];
    outputVoice = v2->_outputVoice;
    v2->_outputVoice = outputVoice;

    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v2->_outputVoice;
      *buf = 136315394;
      v26 = "[SRUIFSpeechSynthesizer init]";
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_DEFAULT, "%s #tts outputVoice:%@", buf, 0x16u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    availableVoicesForLanguage = v2->_availableVoicesForLanguage;
    v2->_availableVoicesForLanguage = v14;

    v16 = dispatch_queue_create("SpeechSynthesisProcessingTasksQueue", 0);
    processingTasksQueue = v2->_processingTasksQueue;
    v2->_processingTasksQueue = v16;

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create("SpeechSynthesisPendingTasksQueue", v18);
    pendingTasksQueue = v2->_pendingTasksQueue;
    v2->_pendingTasksQueue = v19;

    v21 = dispatch_group_create();
    pendingTasksGroup = v2->_pendingTasksGroup;
    v2->_pendingTasksGroup = v21;
  }

  return v2;
}

- (SRUIFSpeechSynthesizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancel
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRUIFSpeechSynthesizer cancel]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts", &v4, 0xCu);
  }

  [(SRUIFSpeechSynthesizer *)self _cancelByCancellingActiveTasksOnly:0 matching:0];
}

- (SiriTTSDaemonSession)ttsSession
{
  if (!self->_ttsSession && AFDeviceSupportsTTS())
  {
    v3 = objc_alloc_init(MEMORY[0x277D61400]);
    ttsSession = self->_ttsSession;
    self->_ttsSession = v3;
  }

  v5 = self->_ttsSession;

  return v5;
}

- (SRUIFSpeechSynthesizerClientStateManagerDelegate)clientStateManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientStateManagerDelegate);

  return WeakRetained;
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(dispatch_group_t *)WeakRetained _activeTasks];
      v7 = [v6 count];
      v8 = [(dispatch_group_t *)WeakRetained _taskQueue];
      *buf = 136315650;
      v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
      v52 = 2048;
      v53 = v7;
      v54 = 2048;
      v55 = [v8 count];
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts activeTasks=%tu taskQueue=%tu", buf, 0x20u);
    }

    v9 = [(dispatch_group_t *)WeakRetained _taskQueue];
    v10 = [(dispatch_group_t *)WeakRetained _activeTasks];
    if ([v10 count])
    {
LABEL_5:
    }

    else
    {
      *&v11 = 136315395;
      v43 = v11;
      while (1)
      {
        v12 = [v9 count] == 0;

        if (v12)
        {
          break;
        }

        [(dispatch_group_t *)WeakRetained reloadSynthesisVoice];
        [(dispatch_group_t *)WeakRetained _processProvisionalTasks];
        v10 = [v9 frontObject];
        v13 = [v10 canUseServerTTS];
        v14 = *v3;
        v15 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = v14;
            v17 = [v10 text];
            v18 = [v10 identifier];
            *buf = 136315650;
            v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
            v52 = 2112;
            v53 = v17;
            v54 = 2112;
            v55 = v18;
            _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Processing task text=%@ identifier=%@", buf, 0x20u);
          }
        }

        else if (v15)
        {
          v19 = v14;
          v20 = [v10 text];
          v21 = [v10 identifier];
          *buf = 136315651;
          v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
          v52 = 2117;
          v53 = v20;
          v54 = 2112;
          v55 = v21;
          _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Processing task text=%{sensitive}@ identifier=%@", buf, 0x20u);
        }

        if (([v10 isEligibleForSynthesis] & 1) == 0)
        {
          v42 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
            v52 = 2112;
            v53 = v10;
            _os_log_impl(&dword_26951F000, v42, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] task not eligible: %@", buf, 0x16u);
          }

          goto LABEL_5;
        }

        v22 = [v9 dequeueObject];
        v23 = [v10 audioData];

        if (v23)
        {
          dispatch_group_enter(WeakRetained[5]);
          v24 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [v10 audioData];
            *buf = 136315394;
            v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
            v52 = 2112;
            v53 = v26;
            _os_log_impl(&dword_26951F000, v25, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Audio Data:%@", buf, 0x16u);
          }

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_99;
          v46[3] = &unk_279C61870;
          objc_copyWeak(&v47, (a1 + 32));
          [(dispatch_group_t *)WeakRetained _handleAudioData:v10 completion:v46];
          v27 = WeakRetained[5];
          v28 = dispatch_time(0, 120000000000);
          dispatch_group_wait(v27, v28);
          objc_destroyWeak(&v47);
        }

        else
        {
          v29 = [v10 text];

          if (v29)
          {
            v30 = [v10 canUseServerTTS];
            v31 = *v3;
            v32 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
            if (v30)
            {
              if (v32)
              {
                v33 = v31;
                v34 = [v10 text];
                *buf = 136315394;
                v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke_2";
                v52 = 2112;
                v53 = v34;
                _os_log_impl(&dword_26951F000, v33, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%@", buf, 0x16u);
              }
            }

            else if (v32)
            {
              v36 = v31;
              v37 = [v10 text];
              *buf = v43;
              v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
              v52 = 2117;
              v53 = v37;
              _os_log_impl(&dword_26951F000, v36, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%{sensitive}@", buf, 0x16u);
            }

            dispatch_group_enter(WeakRetained[5]);
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_101;
            v44[3] = &unk_279C61870;
            objc_copyWeak(&v45, (a1 + 32));
            [(dispatch_group_t *)WeakRetained _handleText:v10 completion:v44];
            v38 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke_2";
              _os_log_impl(&dword_26951F000, v38, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Pending Tasks Group Wait", buf, 0xCu);
            }

            v39 = WeakRetained[5];
            v40 = dispatch_time(0, 120000000000);
            dispatch_group_wait(v39, v40);
            v41 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v51 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
              _os_log_impl(&dword_26951F000, v41, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Pending Tasks Group Complete", buf, 0xCu);
            }

            objc_destroyWeak(&v45);
          }

          else
          {
            v35 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
            {
              __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_cold_1(v48, &v49, v35);
            }

            [v10 executeCompletion];
          }
        }

        v10 = [(dispatch_group_t *)WeakRetained _activeTasks];
        if ([v10 count])
        {
          goto LABEL_5;
        }
      }
    }
  }
}

- (void)_processTaskQueue
{
  objc_initWeak(&location, self);
  processingTasksQueue = self->_processingTasksQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke;
  v4[3] = &unk_279C61870;
  objc_copyWeak(&v5, &location);
  dispatch_async(processingTasksQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isSynthesisQueueEmpty
{
  _activeTasks = [(SRUIFSpeechSynthesizer *)self _activeTasks];
  if ([_activeTasks count])
  {
    v4 = 0;
  }

  else
  {
    _taskQueue = [(SRUIFSpeechSynthesizer *)self _taskQueue];
    v4 = [_taskQueue count] == 0;
  }

  return v4;
}

- (void)reloadSynthesisVoice
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  outputVoice = [mEMORY[0x277CEF368] outputVoice];

  if (outputVoice)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      outputVoice = self->_outputVoice;
      v7 = v5;
      name = [(AFVoiceInfo *)outputVoice name];
      name2 = [outputVoice name];
      v10 = 136315650;
      v11 = "[SRUIFSpeechSynthesizer reloadSynthesisVoice]";
      v12 = 2112;
      v13 = name;
      v14 = 2112;
      v15 = name2;
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Output voice reload request %@ -> %@", &v10, 0x20u);
    }

    [(SRUIFSpeechSynthesizer *)self setOutputVoice:outputVoice];
  }
}

- (void)_processProvisionalTasks
{
  v15 = *MEMORY[0x277D85DE8];
  _taskQueue = [(SRUIFSpeechSynthesizer *)self _taskQueue];
  frontObject = [_taskQueue frontObject];
  if ([frontObject isProvisional])
  {
    v5 = MEMORY[0x277CEF098];
    *&v4 = 136315394;
    v10 = v4;
    do
    {
      if ([_taskQueue count] <= 1)
      {
        break;
      }

      v6 = [_taskQueue objectAtIndex:1];
      isEligibleForProcessing = [v6 isEligibleForProcessing];

      if (!isEligibleForProcessing)
      {
        goto LABEL_11;
      }

      dequeueObject = [_taskQueue dequeueObject];
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v10;
        v12 = "[SRUIFSpeechSynthesizer _processProvisionalTasks]";
        v13 = 2112;
        v14 = dequeueObject;
        _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Discarding %@; it is provisional and there are other tasks enqueued", buf, 0x16u);
      }

      if (![dequeueObject synthesisResult])
      {
        [dequeueObject setSynthesisResult:2];
      }

      [dequeueObject executeCompletion];

      frontObject = [_taskQueue frontObject];
    }

    while (([frontObject isProvisional] & 1) != 0);
  }

LABEL_11:
}

- (void)cancelProvisionalTasks
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SRUIFSpeechSynthesizer cancelProvisionalTasks]";
    v6 = 2112;
    v7 = &__block_literal_global_23;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts predicate=%@: { [task isProvisional] }", &v4, 0x16u);
  }

  [(SRUIFSpeechSynthesizer *)self _cancelByCancellingActiveTasksOnly:0 matching:&__block_literal_global_23];
}

- (void)prewarmIfNeededKeepActive:(BOOL)active
{
  activeCopy = active;
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[SRUIFSpeechSynthesizer prewarmIfNeededKeepActive:]";
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts", &v12, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D61470]);
  languageCode = [(AFVoiceInfo *)self->_outputVoice languageCode];
  name = [(AFVoiceInfo *)self->_outputVoice name];
  v9 = [v6 initWithLanguage:languageCode name:name];

  [v9 setFootprint:{-[SRUIFSpeechSynthesizer _speechFootPrintForVoice:](self, "_speechFootPrintForVoice:", self->_outputVoice)}];
  v10 = [objc_alloc(MEMORY[0x277D61460]) initWithText:&stru_287A10D80 voice:v9];
  ttsSession = [(SRUIFSpeechSynthesizer *)self ttsSession];
  [ttsSession prewarmWithRequest:v10 didFinish:&__block_literal_global_1];

  if (activeCopy && ([(SiriTTSDaemonSession *)self->_ttsSession keepActive]& 1) == 0)
  {
    [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:1];
  }
}

void __52__SRUIFSpeechSynthesizer_prewarmIfNeededKeepActive___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[SRUIFSpeechSynthesizer prewarmIfNeededKeepActive:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Unable to prewarm session, error=%@", &v4, 0x16u);
    }
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[SRUIFSpeechSynthesizer dealloc]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = SRUIFSpeechSynthesizer;
  [(SRUIFSpeechSynthesizer *)&v4 dealloc];
}

- (BOOL)isSpeaking
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = dispatch_semaphore_create(0);
  ttsSession = [(SRUIFSpeechSynthesizer *)self ttsSession];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SRUIFSpeechSynthesizer_isSpeaking__block_invoke;
  v8[3] = &unk_279C61C90;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [ttsSession isSpeaking:v8];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  LOBYTE(ttsSession) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return ttsSession;
}

- (void)isSynthesisQueueEmpty:(id)empty
{
  emptyCopy = empty;
  processingTasksQueue = self->_processingTasksQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke;
  v7[3] = &unk_279C61CE0;
  v7[4] = self;
  v8 = emptyCopy;
  v6 = emptyCopy;
  dispatch_async(processingTasksQueue, v7);
}

void __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSynthesisQueueEmpty];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke_2;
  v3[3] = &unk_279C61CB8;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke;
  v11[3] = &unk_279C619E0;
  v12 = completionCopy;
  v9 = completionCopy;
  *&v10 = to;
  [(SRUIFSpeechSynthesizer *)self _duckTTSVolumeTo:v11 rampTime:v10 completion:time];
}

void __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke_2;
  v6[3] = &unk_279C61D08;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  ttsSession = self->_ttsSession;
  if (ttsSession)
  {
    *&v9 = to;
    [(SiriTTSDaemonSession *)ttsSession adjustVolume:completionCopy rampTime:v9 didFinish:time];
  }

  else if (completionCopy)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__0;
    v15[4] = __Block_byref_object_dispose__0;
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v11 initWithDomain:*MEMORY[0x277CEF588] code:6 userInfo:0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__SRUIFSpeechSynthesizer__duckTTSVolumeTo_rampTime_completion___block_invoke;
    v12[3] = &unk_279C61D30;
    v13 = completionCopy;
    v14 = v15;
    dispatch_async(MEMORY[0x277D85CD0], v12);

    _Block_object_dispose(v15, 8);
  }
}

- (void)cancelSynthesisForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SRUIFSpeechSynthesizer_cancelSynthesisForIdentifier___block_invoke;
  aBlock[3] = &unk_279C61D58;
  v5 = identifierCopy;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = _Block_copy(v6);
    *buf = 136315650;
    v13 = "[SRUIFSpeechSynthesizer cancelSynthesisForIdentifier:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts predicate=%@: { [task identifier] == %@ }", buf, 0x20u);
  }

  [(SRUIFSpeechSynthesizer *)self _cancelByCancellingActiveTasksOnly:0 matching:v6];
}

BOOL __55__SRUIFSpeechSynthesizer_cancelSynthesisForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_cancelByCancellingActiveTasksOnly:(BOOL)only matching:(id)matching
{
  matchingCopy = matching;
  objc_initWeak(&location, self);
  processingTasksQueue = self->_processingTasksQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke;
  v9[3] = &unk_279C61DE8;
  objc_copyWeak(&v11, &location);
  onlyCopy = only;
  v10 = matchingCopy;
  v8 = matchingCopy;
  dispatch_async(processingTasksQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = _Block_copy(v6);
      *buf = 136315650;
      v37 = "[SRUIFSpeechSynthesizer _cancelByCancellingActiveTasksOnly:matching:]_block_invoke";
      v38 = 1024;
      v39 = v5;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #tts cancelActiveTasksOnly=%d; predicate=%@", buf, 0x1Cu);
    }

    if (*(a1 + 48))
    {
      v9 = 0;
    }

    else if (*(a1 + 32))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = [WeakRetained _taskQueue];
      v12 = [v11 dequeueAllObjects];

      if ([v12 count])
      {
        v13 = 0;
        do
        {
          v14 = [v12 objectAtIndex:v13];
          if ((*(*(a1 + 32) + 16))())
          {
            [v14 setSynthesisResult:3];
            [v10 addObject:v14];
          }

          else
          {
            v15 = [WeakRetained _taskQueue];
            [v15 enqueueObject:v14];
          }

          ++v13;
        }

        while ([v12 count] > v13);
      }

      v9 = [v10 copy];
    }

    else
    {
      v16 = [WeakRetained _taskQueue];
      v9 = [v16 dequeueAllObjects];

      [v9 enumerateObjectsUsingBlock:&__block_literal_global_27];
    }

    v17 = [WeakRetained _activeTasks];
    v18 = [v17 copy];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke_2;
    v33[3] = &unk_279C61DC0;
    v34 = *(a1 + 32);
    [v18 enumerateObjectsUsingBlock:v33];
    v19 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[SRUIFSpeechSynthesizer _cancelByCancellingActiveTasksOnly:matching:]_block_invoke_3";
      _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_DEFAULT, "%s #tts Canceling speech synthesis", buf, 0xCu);
    }

    if (WeakRetained[13])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          v24 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v29 + 1) + 8 * v24);
            v26 = *(a1 + 32);
            if (!v26 || (*(v26 + 16))(v26, *(*(&v29 + 1) + 8 * v24)))
            {
              v27 = WeakRetained[13];
              v28 = [v25 ttsSessionRequest];
              [v27 cancelWithRequest:v28];
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v22);
      }
    }

    [v9 makeObjectsPerformSelector:{sel_executeCompletion, v29}];
  }
}

uint64_t __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(v4, v3), v3 = v7, v5))
  {
    [v3 setSynthesisResult:3];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)invalidateOnMainThread
{
  [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:0];

  [(SRUIFSpeechSynthesizer *)self cancel];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SRUIFSpeechSynthesizer invalidate]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Invalidating %@", &v4, 0x16u);
  }

  [(SRUIFSpeechSynthesizer *)self performSelectorOnMainThread:sel_invalidateOnMainThread withObject:0 waitUntilDone:1];
}

- (void)taskEligibilityDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRUIFSpeechSynthesizer taskEligibilityDidChange:]";
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts task=%@", &v6, 0x16u);
  }

  [(SRUIFSpeechSynthesizer *)self _processTaskQueue];
}

- (void)didStartAudioTask:(id)task
{
  identifier = [task identifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SRUIFSpeechSynthesizer_didStartAudioTask___block_invoke;
  v6[3] = &unk_279C61E10;
  v6[4] = self;
  v7 = identifier;
  v5 = identifier;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__SRUIFSpeechSynthesizer_didStartAudioTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 speechSynthesisDidStartSpeakingWithIdentifier:*(a1 + 40)];
}

- (void)didFinishAudioTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  kdebug_trace();
  objc_initWeak(&location, self);
  processingTasksQueue = self->_processingTasksQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke;
  v11[3] = &unk_279C61820;
  objc_copyWeak(&v14, &location);
  v12 = taskCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = taskCopy;
  dispatch_async(processingTasksQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [v3 ttsSessionRequest];
    v5 = [v4 description];

    v6 = [WeakRetained clientStateManagerDelegate];
    [v6 notifyClientStateManagerTransactionBegan:WeakRetained];

    v7 = MEMORY[0x277CEF098];
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v28 = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts request=%@ error=%@", buf, 0x20u);
    }

    if (v3)
    {
      v10 = [WeakRetained _activeTasks];
      [v10 removeObject:v3];
    }

    else
    {
      v11 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v20 = *(a1 + 40);
    v19 = (a1 + 40);
    if (v20)
    {
      [v3 setSynthesisError:?];
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_2();
      }
    }

    else
    {
      v21 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
        v29 = 2112;
        v30 = v5;
        _os_log_impl(&dword_26951F000, v21, OS_LOG_TYPE_DEFAULT, "%s #tts Finished speaking presynthesized audio %@", buf, 0x16u);
      }
    }

    if (![v3 synthesisResult])
    {
      if (*v19)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      [v3 setSynthesisResult:v22];
    }

    [v3 executeCompletion];
    [WeakRetained _processTaskQueue];
    v23 = WeakRetained[3];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_33;
    v25[3] = &unk_279C61E10;
    v25[4] = WeakRetained;
    v26 = v3;
    v24 = v3;
    dispatch_async(v23, v25);
  }
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_33(uint64_t a1)
{
  if (![*(*(a1 + 32) + 88) count])
  {
    v2 = [*(a1 + 32) clientStateManagerDelegate];
    [v2 notifyClientStateManagerSpeakingEnded:*(a1 + 32)];
  }

  v3 = [*(a1 + 32) clientStateManagerDelegate];
  [v3 notifyClientStateManagerTransactionEnded:*(a1 + 32)];

  LOBYTE(v3) = [*(a1 + 32) _isSynthesisQueueEmpty];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_2;
  block[3] = &unk_279C61E38;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) identifier];
  [v3 speechSynthesisDidStopSpeakingWithIdentifier:v2 queueIsEmpty:*(a1 + 48)];
}

- (void)didStartSpeakTask:(id)task
{
  v15 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  ttsSessionRequest = [taskCopy ttsSessionRequest];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SRUIFSpeechSynthesizer didStartSpeakTask:]";
    v13 = 2112;
    v14 = ttsSessionRequest;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #tts Started:%@", buf, 0x16u);
  }

  identifier = [taskCopy identifier];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SRUIFSpeechSynthesizer_didStartSpeakTask___block_invoke;
  v9[3] = &unk_279C61E10;
  v9[4] = self;
  v10 = identifier;
  v8 = identifier;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __44__SRUIFSpeechSynthesizer_didStartSpeakTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 speechSynthesisDidStartSpeakingWithIdentifier:*(a1 + 40)];
}

- (void)didFinishSpeakTask:(id)task withError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  ttsSessionRequest = [taskCopy ttsSessionRequest];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]";
    v22 = 2112;
    v23 = ttsSessionRequest;
    _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Finished %@", buf, 0x16u);
  }

  kdebug_trace();
  objc_initWeak(buf, self);
  processingTasksQueue = self->_processingTasksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke;
  block[3] = &unk_279C61E60;
  objc_copyWeak(&v19, buf);
  v15 = errorCopy;
  v16 = taskCopy;
  v17 = ttsSessionRequest;
  selfCopy = self;
  v11 = ttsSessionRequest;
  v12 = taskCopy;
  v13 = errorCopy;
  dispatch_async(processingTasksQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_38;
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 canUseServerTTS];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  v9 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    v11 = [v5 text];
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    *buf = 136316162;
    v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v52 = 2112;
    v53 = v11;
    v54 = 2112;
    v55 = v12;
    v56 = 2112;
    v57 = v13;
    v58 = 1024;
    v59 = v4 == 0;
    v14 = "%s #tts [Post] text=%@ error=%@ request=%@ finishedSpeaking=%i";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    v11 = [v5 text];
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    *buf = 136316163;
    v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v52 = 2117;
    v53 = v11;
    v54 = 2112;
    v55 = v15;
    v56 = 2112;
    v57 = v16;
    v58 = 1024;
    v59 = v4 == 0;
    v14 = "%s #tts [Post] text=%{sensitive}@ error=%@ request=%@ finishedSpeaking=%i";
  }

  _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, v14, buf, 0x30u);

LABEL_8:
  v17 = [WeakRetained clientStateManagerDelegate];
  [v17 notifyClientStateManagerTransactionBegan:WeakRetained];

  v18 = *v7;
  v19 = *v7;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v52 = 2112;
      v53 = v5;
      _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Removing Task: %@", buf, 0x16u);
    }

    v20 = [WeakRetained _activeTasks];
    [v20 removeObject:v5];
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_1(v18, v21, v22, v23, v24, v25, v26, v27);
  }

  if (!*v3)
  {
    goto LABEL_28;
  }

  [v5 setSynthesisError:?];
  v28 = [SRUIFSpeechSynthesisUtility isSpeechSynthesisErrorUserCancelled:*v3];
  v29 = [v5 canUseServerTTS];
  v30 = *v7;
  v31 = *v7;
  if (!v28)
  {
    v37 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v37)
      {
        __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_3(v30, v5);
      }
    }

    else if (v37)
    {
      __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_2(v30, v5);
    }

    goto LABEL_28;
  }

  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v32)
    {
      v33 = v30;
      v34 = [v5 text];
      v35 = *v3;
      *buf = 136315650;
      v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v52 = 2112;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      v36 = "%s #tts [Post] Synthesis was cancelled, marking speech request finished %@: %{public}@";
LABEL_24:
      _os_log_impl(&dword_26951F000, v33, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);
    }
  }

  else if (v32)
  {
    v33 = v30;
    v34 = [v5 text];
    v38 = *v3;
    *buf = 136315651;
    v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v52 = 2117;
    v53 = v34;
    v54 = 2114;
    v55 = v38;
    v36 = "%s #tts [Post] Synthesis was cancelled, marking speech request finished %{sensitive}@: %{public}@";
    goto LABEL_24;
  }

  [v5 setSynthesisResult:1];
LABEL_28:
  if (![v5 synthesisResult])
  {
    v39 = *v7;
    v40 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    if (v40)
    {
      v42 = v39;
      v43 = SRUIFSpeechSynthesisResultGetName(v41);
      *buf = 136315394;
      v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v52 = 2112;
      v53 = v43;
      _os_log_impl(&dword_26951F000, v42, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Marking result %@", buf, 0x16u);
    }

    [v5 setSynthesisResult:v41];
  }

  v44 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v52 = 2112;
    v53 = v5;
    _os_log_impl(&dword_26951F000, v44, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Calling completion for Task: %@", buf, 0x16u);
  }

  [v5 executeCompletion];
  [WeakRetained _processTaskQueue];
  v45 = WeakRetained[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35;
  block[3] = &unk_279C61820;
  objc_copyWeak(&v49, (a1 + 64));
  block[4] = *(a1 + 56);
  v48 = v5;
  v46 = v5;
  dispatch_async(v45, block);

  objc_destroyWeak(&v49);
LABEL_38:
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *MEMORY[0x277CEF098];
  if (WeakRetained)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = WeakRetained[11];
      v5 = v3;
      *buf = 136315394;
      v20 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v21 = 2048;
      v22 = [v4 count];
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Active Task count: %tu", buf, 0x16u);
    }

    if (![WeakRetained[11] count])
    {
      v6 = [WeakRetained clientStateManagerDelegate];
      [v6 notifyClientStateManagerSpeakingEnded:*(a1 + 32)];
    }

    v7 = [WeakRetained clientStateManagerDelegate];
    [v7 notifyClientStateManagerTransactionEnded:*(a1 + 32)];

    LOBYTE(v7) = [WeakRetained _isSynthesisQueueEmpty];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_36;
    block[3] = &unk_279C617F8;
    objc_copyWeak(&v17, (a1 + 48));
    v16 = *(a1 + 40);
    v18 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v17);
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35_cold_1(v3, v8, v9, v10, v11, v12, v13, v14);
  }
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [*(a1 + 32) identifier];
  [v2 speechSynthesisDidStopSpeakingWithIdentifier:v3 queueIsEmpty:*(a1 + 48)];
}

- (void)speakTask:(id)task didGenerateMetrics:(id)metrics
{
  v65 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  metricsCopy = metrics;
  canUseServerTTS = [taskCopy canUseServerTTS];
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  v11 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (canUseServerTTS)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v10;
    text = [taskCopy text];
    ttsSessionRequest = [taskCopy ttsSessionRequest];
    *buf = 136315650;
    v60 = "[SRUIFSpeechSynthesizer speakTask:didGenerateMetrics:]";
    v61 = 2112;
    v62 = text;
    v63 = 2112;
    v64 = ttsSessionRequest;
    v15 = "%s #tts [Post] text=%@ request=%@";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v10;
    text = [taskCopy text];
    ttsSessionRequest = [taskCopy ttsSessionRequest];
    *buf = 136315651;
    v60 = "[SRUIFSpeechSynthesizer speakTask:didGenerateMetrics:]";
    v61 = 2117;
    v62 = text;
    v63 = 2112;
    v64 = ttsSessionRequest;
    v15 = "%s #tts [Post] text=%{sensitive}@ request=%@";
  }

  _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);

LABEL_7:
  v16 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    ttsSessionRequest2 = [taskCopy ttsSessionRequest];
    *buf = 136315394;
    v60 = "[SRUIFSpeechSynthesizer speakTask:didGenerateMetrics:]";
    v61 = 2112;
    v62 = ttsSessionRequest2;
    _os_log_impl(&dword_26951F000, v17, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Finished Metrics generated %@", buf, 0x16u);
  }

  if (metricsCopy)
  {
    selfCopy = self;
    analyticsContext = [taskCopy analyticsContext];
    v20 = analyticsContext;
    v21 = MEMORY[0x277CBEC10];
    if (analyticsContext)
    {
      v22 = analyticsContext;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    v23 = v22;

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:uUIDString forKey:@"id"];
    v57 = @"id";
    v58 = uUIDString;
    v46 = uUIDString;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    if (AFIsInternalInstall())
    {
      v55 = @"text";
      text2 = [taskCopy text];
      v29 = text2;
      v30 = &stru_287A10D80;
      if (text2)
      {
        v30 = text2;
      }

      v56 = v30;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    }

    requestCreatedTime = [metricsCopy requestCreatedTime];
    if (requestCreatedTime)
    {
      v32 = requestCreatedTime;
      v54[0] = dictionary;
      v54[1] = v23;
      v54[2] = v21;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
      v34 = AFAnalyticsContextsMerge();
      [mEMORY[0x277CEF158] logEventWithType:1801 machAbsoluteTime:v32 context:v34];
    }

    speechBeginTime = [metricsCopy speechBeginTime];
    if (speechBeginTime)
    {
      v53[0] = v27;
      v53[1] = v23;
      v53[2] = v21;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
      v37 = AFAnalyticsContextsMerge();
      [mEMORY[0x277CEF158] logEventWithType:1802 machAbsoluteTime:speechBeginTime context:v37];
    }

    speechEndTime = [metricsCopy speechEndTime];
    if (speechEndTime)
    {
      v52[0] = v27;
      v52[1] = v23;
      v52[2] = v21;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
      v40 = AFAnalyticsContextsMerge();
      [mEMORY[0x277CEF158] logEventWithType:1803 machAbsoluteTime:speechEndTime context:v40];
    }

    v41 = objc_alloc(MEMORY[0x277CEF4A8]);
    text3 = [taskCopy text];
    v43 = [v41 initWithUtterance:text3 beginTimestamp:speechBeginTime endTimestamp:speechEndTime];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SRUIFSpeechSynthesizer_speakTask_didGenerateMetrics___block_invoke;
    block[3] = &unk_279C61E88;
    block[4] = selfCopy;
    v50 = v43;
    v51 = taskCopy;
    v44 = v43;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v45 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      [SRUIFSpeechSynthesizer speakTask:v45 didGenerateMetrics:taskCopy];
    }
  }
}

void __55__SRUIFSpeechSynthesizer_speakTask_didGenerateMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) identifier];
    [v4 speechSynthesisDidFinish:v5 withIdentifier:v6];
  }

  v7 = [*(a1 + 32) delegate];
  [v7 speechSynthesisDidFinish:*(a1 + 40)];
}

- (void)speakTask:(id)task didGenerateWordTimingInfo:(id)info
{
  infoCopy = info;
  identifier = [task identifier];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SRUIFSpeechSynthesizer_speakTask_didGenerateWordTimingInfo___block_invoke;
  block[3] = &unk_279C61E88;
  block[4] = self;
  v11 = infoCopy;
  v12 = identifier;
  v8 = identifier;
  v9 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__SRUIFSpeechSynthesizer_speakTask_didGenerateWordTimingInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 speechSynthesisDidReceiveWordTimingInfo:*(a1 + 40) withIdentifier:*(a1 + 48)];
  }
}

- (void)setOutputVoice:(id)voice
{
  v15 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  outputVoice = self->_outputVoice;
  p_outputVoice = &self->_outputVoice;
  v6 = outputVoice;
  if (!outputVoice || ([(AFVoiceInfo *)v6 isEqual:voiceCopy]& 1) == 0)
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[SRUIFSpeechSynthesizer setOutputVoice:]";
      v13 = 2112;
      v14 = voiceCopy;
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts Updating synthesizer voice to %@", &v11, 0x16u);
    }

    objc_storeStrong(p_outputVoice, voice);
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    [mEMORY[0x277CEF368] synchronizeVoiceServicesLanguageCode];
  }
}

- (void)enqueueSpeechSynthesisRequest:(id)request
{
  requestCopy = request;
  text = [requestCopy text];
  audioData = [requestCopy audioData];
  identifier = [requestCopy identifier];
  sessionId = [requestCopy sessionId];
  language = [requestCopy language];
  gender = [requestCopy gender];
  promptStyle = [requestCopy promptStyle];
  isPhonetic = [requestCopy isPhonetic];
  provisional = [requestCopy provisional];
  eligibleAfterDuration = [requestCopy eligibleAfterDuration];
  delayed = [requestCopy delayed];
  canUseServerTTS = [requestCopy canUseServerTTS];
  preparationIdentifier = [requestCopy preparationIdentifier];
  completion = [requestCopy completion];
  analyticsContext = [requestCopy analyticsContext];
  speakableContextInfo = [requestCopy speakableContextInfo];

  LOBYTE(v15) = 1;
  BYTE3(v14) = canUseServerTTS;
  BYTE2(v14) = delayed;
  BYTE1(v14) = provisional;
  LOBYTE(v14) = isPhonetic;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:text identifier:audioData sessionId:identifier preferredVoice:sessionId language:0 gender:language promptStyle:eligibleAfterDuration isPhonetic:gender provisionally:promptStyle eligibleAfterDuration:v14 delayed:preparationIdentifier canUseServerTTS:v15 preparationIdentifier:completion shouldCache:analyticsContext completion:speakableContextInfo analyticsContext:? speakableContextInfo:?];
}

- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id language:(id)language gender:(id)gender isPhonetic:(BOOL)phonetic provisionally:(BOOL)provisionally eligibleAfterDuration:(double)self0 delayed:(BOOL)self1 canUseServerTTS:(BOOL)self2 preparationIdentifier:(id)self3 completion:(id)self4 analyticsContext:(id)self5 speakableContextInfo:(id)self6
{
  LOBYTE(v17) = 1;
  WORD1(v16) = __PAIR16__(s, delayed);
  BYTE1(v16) = provisionally;
  LOBYTE(v16) = phonetic;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:text identifier:0 sessionId:identifier preferredVoice:id language:0 gender:language promptStyle:duration isPhonetic:gender provisionally:0 eligibleAfterDuration:v16 delayed:preparationIdentifier canUseServerTTS:v17 preparationIdentifier:completion shouldCache:context completion:info analyticsContext:? speakableContextInfo:?];
}

- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)style isPhonetic:(BOOL)self0 provisionally:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 canUseServerTTS:(BOOL)self4 preparationIdentifier:(id)self5 completion:(id)self6 analyticsContext:(id)self7 speakableContextInfo:(id)self8
{
  LOBYTE(v19) = 1;
  WORD1(v18) = __PAIR16__(s, delayed);
  LOWORD(v18) = __PAIR16__(provisionally, phonetic);
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:text identifier:0 sessionId:identifier preferredVoice:id language:voice gender:language promptStyle:duration isPhonetic:gender provisionally:style eligibleAfterDuration:v18 delayed:preparationIdentifier canUseServerTTS:v19 preparationIdentifier:completion shouldCache:context completion:info analyticsContext:? speakableContextInfo:?];
}

- (void)enqueueAudioData:(id)data identifier:(id)identifier sessionId:(id)id provisionally:(BOOL)provisionally eligibleAfterDuration:(double)duration completion:(id)completion
{
  LOBYTE(v9) = 1;
  WORD1(v8) = 256;
  BYTE1(v8) = provisionally;
  LOBYTE(v8) = 0;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:0 identifier:data sessionId:identifier preferredVoice:id language:0 gender:0 promptStyle:duration isPhonetic:0 provisionally:0 eligibleAfterDuration:v8 delayed:0 canUseServerTTS:v9 preparationIdentifier:completion shouldCache:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

- (void)enqueuePhaticWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SRUIFSpeechSynthesizer enqueuePhaticWithCompletion:]";
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #phatic [Pre]", buf, 0xCu);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  LOBYTE(v9) = 0;
  LODWORD(v8) = 0x1000000;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:@"\x1B\\mrk=play=phat\" identifier:0 sessionId:uUIDString preferredVoice:uUIDString language:0 gender:0 promptStyle:0.0 isPhonetic:0 provisionally:0 eligibleAfterDuration:v8 delayed:0 canUseServerTTS:v9 preparationIdentifier:completionCopy shouldCache:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

- (void)_prepareAudioSessionIfNeededWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  delegate = [(SRUIFSpeechSynthesizer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SRUIFSpeechSynthesizer *)self delegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SRUIFSpeechSynthesizer__prepareAudioSessionIfNeededWithCompletion___block_invoke;
    v9[3] = &unk_279C61EB0;
    v10 = completionCopy;
    [delegate2 speechSynthesisRequestsForceAudioSessionActiveWithCompletion:v9];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[SRUIFSpeechSynthesizer _prepareAudioSessionIfNeededWithCompletion:]";
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts delegate has not implemented speechSynthesisRequestsForceAudioSessionActiveWithCompletion:; assuming that audio session preparation is not required", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 1);
  }
}

uint64_t __69__SRUIFSpeechSynthesizer__prepareAudioSessionIfNeededWithCompletion___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SRUIFSpeechSynthesizer _prepareAudioSessionIfNeededWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts audio session opened successfully", &v7, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }
}

- (void)_enqueueText:(id)text audioData:(id)data identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender promptStyle:(id)self0 isPhonetic:(BOOL)self1 provisionally:(BOOL)self2 eligibleAfterDuration:(double)self3 delayed:(BOOL)self4 canUseServerTTS:(BOOL)self5 preparationIdentifier:(id)self6 shouldCache:(BOOL)self7 completion:(id)self8 analyticsContext:(id)self9 speakableContextInfo:(id)info
{
  v71 = *MEMORY[0x277D85DE8];
  textCopy = text;
  dataCopy = data;
  identifierCopy = identifier;
  idCopy = id;
  voiceCopy = voice;
  languageCopy = language;
  genderCopy = gender;
  styleCopy = style;
  preparationIdentifierCopy = preparationIdentifier;
  completionCopy = completion;
  contextCopy = context;
  infoCopy = info;
  v30 = *MEMORY[0x277CEF098];
  v31 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (s)
  {
    v32 = textCopy;
    if (!v31)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v68 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]";
    v69 = 2112;
    v70 = textCopy;
    v33 = "%s #tts [Pre] text:%@";
  }

  else
  {
    v32 = textCopy;
    if (!v31)
    {
      goto LABEL_7;
    }

    *buf = 136315395;
    v68 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]";
    v69 = 2117;
    v70 = textCopy;
    v33 = "%s #tts [Pre] text:%{sensitive}@";
  }

  _os_log_impl(&dword_26951F000, v30, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);
LABEL_7:
  selfCopy2 = self;
  if (preparationIdentifierCopy)
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke;
    aBlock[3] = &unk_279C61F00;
    objc_copyWeak(&v65, buf);
    v63 = preparationIdentifierCopy;
    v64 = v32;
    sCopy = s;
    v35 = _Block_copy(aBlock);

    objc_destroyWeak(&v65);
    objc_destroyWeak(buf);
  }

  else
  {
    v35 = 0;
  }

  v36 = [SRUIFSpeechSynthesisTask alloc];
  durationCopy = 0.0;
  if (provisionally)
  {
    durationCopy = duration;
  }

  LOBYTE(v49) = s;
  v38 = infoCopy;
  v47 = contextCopy;
  v48 = infoCopy;
  v39 = contextCopy;
  v40 = completionCopy;
  LOWORD(v46) = __PAIR16__(delayed, provisionally);
  v41 = [(SRUIFSpeechSynthesisTask *)v36 initWithText:v32 audioData:dataCopy identifier:identifierCopy sessionId:idCopy preferredVoice:voiceCopy language:languageCopy gender:durationCopy voicePromptStyle:genderCopy provisional:styleCopy eligibleAfterDuration:v46 delayed:v35 preparation:completionCopy completion:v47 analyticsContext:v48 speakableContextInfo:v49 canUseServerTTS:self->_processingTasksQueue eligibilityChangedQueue:?];
  [(SRUIFSpeechSynthesisTask *)v41 setIsPhonetic:phonetic];
  [(SRUIFSpeechSynthesisTask *)v41 setDelegate:self];
  [(SRUIFSpeechSynthesisTask *)v41 setShouldCache:cache];
  if (delayed)
  {
    if (identifierCopy)
    {
      _delayedTasks = [(SRUIFSpeechSynthesizer *)self _delayedTasks];
      [_delayedTasks setObject:v41 forKeyedSubscript:identifierCopy];
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:];
      }

      [(SRUIFSpeechSynthesisTask *)v41 setDelayed:0];
    }

    selfCopy2 = self;
  }

  kdebug_trace();
  v43 = selfCopy2;
  processingTasksQueue = selfCopy2->_processingTasksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke_59;
  block[3] = &unk_279C61E10;
  v60 = v41;
  v61 = v43;
  v45 = v41;
  dispatch_async(processingTasksQueue, block);
}

void __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v13 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Preparation %@", buf, 0x16u);
    }

    v7 = objc_loadWeakRetained(WeakRetained + 8);

    if (v7)
    {
      v8 = objc_loadWeakRetained(WeakRetained + 8);
      v9 = *(a1 + 32);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke_55;
      v10[3] = &unk_279C61ED8;
      v11 = v3;
      [v8 speechSynthesisGetPreparedTextForIdentifier:v9 completion:v10];
    }

    else
    {
      (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 56));
    }
  }
}

void __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke_59(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Enqueueing task: %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) _taskQueue];
  [v4 enqueueObject:*(a1 + 32)];
}

- (void)enqueueText:(id)text identifier:(id)identifier sessionId:(id)id completion:(id)completion
{
  LOBYTE(v7) = 1;
  LODWORD(v6) = 0x1000000;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:text identifier:0 sessionId:identifier preferredVoice:id language:0 gender:0 promptStyle:0.0 isPhonetic:0 provisionally:0 eligibleAfterDuration:v6 delayed:0 canUseServerTTS:v7 preparationIdentifier:completion shouldCache:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

- (void)processDelayedItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    _delayedTasks = [(SRUIFSpeechSynthesizer *)self _delayedTasks];
    v6 = [_delayedTasks objectForKeyedSubscript:itemCopy];
    [v6 setDelayed:0];

    _delayedTasks2 = [(SRUIFSpeechSynthesizer *)self _delayedTasks];
    [_delayedTasks2 removeObjectForKey:itemCopy];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFSpeechSynthesizer *)v8 processDelayedItem:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

- (void)_handleAudioData:(id)data completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]";
    v36 = 2112;
    v37 = dataCopy;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts %@", buf, 0x16u);
  }

  clientStateManagerDelegate = [(SRUIFSpeechSynthesizer *)self clientStateManagerDelegate];
  [clientStateManagerDelegate notifyClientStateManagerTransactionBegan:self];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke;
  aBlock[3] = &unk_279C61F28;
  aBlock[4] = self;
  v10 = dataCopy;
  v32 = v10;
  v11 = completionCopy;
  v33 = v11;
  v12 = _Block_copy(aBlock);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v10);
  v13 = objc_alloc(MEMORY[0x277CEF530]);
  pendingTasksQueue = self->_pendingTasksQueue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2;
  v27[3] = &unk_279C61990;
  objc_copyWeak(&v29, buf);
  v15 = v12;
  v28 = v15;
  v16 = [v13 initWithTimeoutInterval:pendingTasksQueue onQueue:v27 timeoutHandler:3.5];
  pendingTaskTimer = self->_pendingTaskTimer;
  self->_pendingTaskTimer = v16;

  [(AFWatchdogTimer *)self->_pendingTaskTimer start];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62;
  v21[3] = &unk_279C61FC8;
  objc_copyWeak(&v25, buf);
  objc_copyWeak(&v26, &location);
  v18 = v10;
  v22 = v18;
  v19 = v15;
  v23 = v19;
  v20 = v11;
  v24 = v20;
  [(SRUIFSpeechSynthesizer *)self _prepareAudioSessionIfNeededWithCompletion:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

uint64_t __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) didFinishAudioTask:*(a1 + 40) withError:a2];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [WeakRetained[6] cancel];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v11 + 16))(v11, v12);
  }
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62(id *a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = objc_loadWeakRetained(a1 + 8);
  v8 = v7;
  if (WeakRetained && v7)
  {
    if ([*(WeakRetained + 6) cancelIfNotAlreadyCanceled])
    {
      v9 = *(WeakRetained + 4);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63;
      block[3] = &unk_279C61FA0;
      v26 = a3;
      v19 = a1[4];
      v22 = a1[5];
      v20 = WeakRetained;
      v25 = a2;
      v21 = v8;
      objc_copyWeak(&v24, a1 + 8);
      v23 = a1[6];
      dispatch_async(v9, block);

      objc_destroyWeak(&v24);
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  if (*(a1 + 84))
  {
    [*(a1 + 40) setAudioSessionID:*(a1 + 80)];
    v3 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 80);
      *buf = 136315394;
      *&buf[4] = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts audio session active; setting audio session id: %u", buf, 0x12u);
    }

    v5 = [*(a1 + 48) audioData];
    v36 = 0;
    memset(buf, 0, sizeof(buf));
    v6 = [*(a1 + 48) audioData];
    v7 = [v6 decoderStreamDescription];
    ASBDForSAUIAD(v7, buf);

    v8 = objc_alloc_init(MEMORY[0x277D613D8]);
    *v33 = *buf;
    *&v33[16] = *&buf[16];
    v34 = v36;
    [v8 setAsbd:v33];
    v9 = [v5 audioBuffer];
    [v8 setAudioData:v9];

    v10 = [objc_alloc(MEMORY[0x277D613F0]) initWithAudio:v8];
    [v10 setAudioSessionId:*(a1 + 80)];
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [*(a1 + 48) sessionId];
    v13 = [v11 initWithUUIDString:v12];
    [v10 setSiriRequestId:v13];

    if (objc_opt_respondsToSelector())
    {
      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = [*(a1 + 48) identifier];
      v16 = [v14 initWithUUIDString:v15];
      [v10 setSiriAceViewId:v16];
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_68;
    v31[3] = &unk_279C61F50;
    v31[4] = *(a1 + 40);
    objc_copyWeak(&v32, (a1 + 72));
    [v10 setDidStartSpeaking:v31];
    [*(a1 + 48) setTtsSessionRequest:v10];
    v17 = [*(a1 + 40) ttsSession];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_69;
    v28 = &unk_279C61F78;
    v29 = *(a1 + 40);
    objc_copyWeak(&v30, (a1 + 72));
    [v17 speakWithAudioRequest:v10 didFinish:&v25];

    v18 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      *v33 = 136315394;
      *&v33[4] = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]_block_invoke_3";
      *&v33[12] = 2112;
      *&v33[14] = v19;
      _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #tts started presynthesized audio for %@", v33, 0x16u);
    }

    kdebug_trace();
    v20 = [*(a1 + 40) _activeTasks];
    [v20 addObject:*(a1 + 48)];

    v21 = [*(a1 + 40) clientStateManagerDelegate];
    [v21 notifyClientStateManagerSpeakingBegan:*(a1 + 40)];

    v22 = [*(a1 + 40) clientStateManagerDelegate];
    [v22 notifyClientStateManagerTransactionEnded:*(a1 + 40)];

    v23 = *(a1 + 64);
    if (v23)
    {
      (*(v23 + 16))();
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63_cold_1();
    }

    v24 = *(a1 + 56);
    v5 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v24 + 16))(v24, v5);
  }
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 didStartAudioTask:WeakRetained];
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_69(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 didFinishAudioTask:WeakRetained withError:v4];
}

- (void)_handleText:(id)text completion:(id)completion
{
  v115 = *MEMORY[0x277D85DE8];
  textCopy = text;
  completionCopy = completion;
  canUseServerTTS = [textCopy canUseServerTTS];
  v9 = *MEMORY[0x277CEF098];
  v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (canUseServerTTS)
  {
    if (v10)
    {
      v11 = v9;
      text = [textCopy text];
      *buf = 136315394;
      v104 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
      v105 = 2112;
      v106 = text;
      _os_log_impl(&dword_26951F000, v11, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%@", buf, 0x16u);
    }
  }

  else if (v10)
  {
    v13 = v9;
    text2 = [textCopy text];
    *buf = 136315395;
    v104 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
    v105 = 2117;
    v106 = text2;
    _os_log_impl(&dword_26951F000, v13, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%{sensitive}@", buf, 0x16u);
  }

  clientStateManagerDelegate = [(SRUIFSpeechSynthesizer *)self clientStateManagerDelegate];
  [clientStateManagerDelegate notifyClientStateManagerTransactionBegan:self];

  text3 = [textCopy text];
  isPhonetic = [textCopy isPhonetic];
  if (text3)
  {
    v18 = isPhonetic;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\x1B/+%@\x1B/+", text3];

    text3 = v19;
  }

  language = [textCopy language];
  if (language)
  {
    languageCode = [(AFVoiceInfo *)self->_outputVoice languageCode];
    language2 = [textCopy language];
    v69 = [languageCode caseInsensitiveCompare:language2] == 0;
  }

  else
  {
    v69 = 1;
  }

  gender = [textCopy gender];
  if (gender)
  {
    genderString = [(AFVoiceInfo *)self->_outputVoice genderString];
    gender2 = [textCopy gender];
    v26 = [genderString caseInsensitiveCompare:gender2] == 0;

    v69 &= v26;
  }

  v27 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    outputVoice = self->_outputVoice;
    v29 = v27;
    languageCode2 = [(AFVoiceInfo *)outputVoice languageCode];
    genderString2 = [(AFVoiceInfo *)self->_outputVoice genderString];
    if (v69)
    {
      v32 = @"matches";
    }

    else
    {
      v32 = @"mismatches";
    }

    language3 = [textCopy language];
    gender3 = [textCopy gender];
    *buf = 136316418;
    v104 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
    v105 = 2112;
    v106 = languageCode2;
    v107 = 2112;
    v108 = genderString2;
    v109 = 2112;
    v110 = v32;
    v111 = 2112;
    v112 = language3;
    v113 = 2112;
    v114 = gender3;
    _os_log_impl(&dword_26951F000, v29, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Output voice [%@, %@] %@ specified language %@, gender %@", buf, 0x3Eu);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, textCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke;
  aBlock[3] = &unk_279C61FF0;
  objc_copyWeak(&v99, &location);
  objc_copyWeak(&v100, &from);
  v35 = textCopy;
  v97 = v35;
  v36 = completionCopy;
  v98 = v36;
  v37 = _Block_copy(aBlock);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_80;
  v92[3] = &unk_279C62040;
  objc_copyWeak(&v94, &location);
  objc_copyWeak(&v95, &from);
  v38 = v36;
  v93 = v38;
  v39 = _Block_copy(v92);
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_83;
  v85[3] = &unk_279C62130;
  objc_copyWeak(&v90, &location);
  objc_copyWeak(&v91, &from);
  v40 = text3;
  v86 = v40;
  v41 = v35;
  v87 = v41;
  v67 = v37;
  v88 = v67;
  v68 = v39;
  v89 = v68;
  v42 = _Block_copy(v85);
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_94;
  v81[3] = &unk_279C62158;
  v43 = v41;
  v82 = v43;
  selfCopy = self;
  v44 = v38;
  v84 = v44;
  v45 = _Block_copy(v81);
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95;
  v77[3] = &unk_279C62158;
  v46 = v43;
  v78 = v46;
  selfCopy2 = self;
  v66 = v44;
  v80 = v66;
  v47 = _Block_copy(v77);
  if (v40)
  {
    preferredVoice = [v46 preferredVoice];
    v49 = *MEMORY[0x277CEF098];
    v50 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (preferredVoice)
    {
      if (v50)
      {
        *buf = 136315138;
        v104 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
        _os_log_impl(&dword_26951F000, v49, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Using preferredVoice", buf, 0xCu);
      }

      v51 = objc_alloc(MEMORY[0x277CEF528]);
      languageString = [preferredVoice languageString];
      name = [preferredVoice name];
      v54 = [v51 initWithLanguageCode:languageString gender:0 isCustom:0 name:name footprint:0 contentVersion:0 masteredVersion:0];

      v42[2](v42, v54);
    }

    else
    {
      if (v69)
      {
        if (v50)
        {
          *buf = 136315138;
          v104 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
          _os_log_impl(&dword_26951F000, v49, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] outputVoiceMatches", buf, 0xCu);
        }

        v42[2](v42, self->_outputVoice);
        goto LABEL_40;
      }

      if (v50)
      {
        *buf = 136315138;
        v104 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
        _os_log_impl(&dword_26951F000, v49, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] No match for output voice", buf, 0xCu);
      }

      language4 = [v46 language];
      v64 = language4;
      if (language4)
      {
        languageCode3 = language4;
      }

      else
      {
        languageCode3 = [(AFVoiceInfo *)self->_outputVoice languageCode];
      }

      gender4 = [v46 gender];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_97;
      v71[3] = &unk_279C621A8;
      objc_copyWeak(&v76, &location);
      v72 = v46;
      v74 = v42;
      v54 = languageCode3;
      v73 = v54;
      v75 = v47;
      [(SRUIFSpeechSynthesizer *)self _findVoiceForLanguage:v54 gender:gender4 completion:v71];

      objc_destroyWeak(&v76);
    }

LABEL_40:
    goto LABEL_41;
  }

  v55 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [(SRUIFSpeechSynthesizer *)v55 _handleText:v56 completion:v57, v58, v59, v60, v61, v62];
  }

  v45[2](v45);
LABEL_41:

  objc_destroyWeak(&v91);
  objc_destroyWeak(&v90);

  objc_destroyWeak(&v95);
  objc_destroyWeak(&v94);

  objc_destroyWeak(&v100);
  objc_destroyWeak(&v99);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = v5;
  if (WeakRetained && v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_cold_1();
    }

    if (![v6 synthesisResult])
    {
      [v6 setSynthesisResult:2];
    }

    [v6 setSynthesisError:v3];
    [v6 executeCompletion];
    v7 = [WeakRetained clientStateManagerDelegate];
    [v7 notifyClientStateManagerTransactionEnded:WeakRetained];

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_80(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Success PrepareAudioSession:%@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = v7;
  if (WeakRetained && v7)
  {
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts 24 [Pre] Calling speakWithSpeechRequest:%@", buf, 0x16u);
    }

    v10 = [WeakRetained ttsSession];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_81;
    v19 = &unk_279C62018;
    objc_copyWeak(&v20, (a1 + 40));
    objc_copyWeak(&v21, (a1 + 48));
    [v10 speakWithSpeechRequest:v3 didFinish:&v16];

    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke_2";
      v24 = 2112;
      v25 = v3;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_26951F000, v11, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Started synthesis, %@, %@", buf, 0x20u);
    }

    [v8 setTtsSessionRequest:{v3, v16, v17, v18, v19}];
    kdebug_trace();
    v12 = [WeakRetained _activeTasks];
    [v12 addObject:v8];

    v13 = [WeakRetained clientStateManagerDelegate];
    [v13 notifyClientStateManagerSpeakingBegan:WeakRetained];

    v14 = [WeakRetained clientStateManagerDelegate];
    [v14 notifyClientStateManagerTransactionEnded:WeakRetained];

    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))();
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakTask:v4 withError:v3];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_83(id *a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Success ValidOutputVoice:%@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v6 = objc_loadWeakRetained(a1 + 9);
  v7 = v6;
  if (WeakRetained && v6)
  {
    v8 = objc_alloc(MEMORY[0x277D61470]);
    v9 = [v3 languageCode];
    v10 = [v3 name];
    v39 = [v8 initWithLanguage:v9 name:v10];

    v11 = objc_alloc(MEMORY[0x277D61450]);
    v12 = a1[4];
    v13 = [a1[5] voicePromptStyle];
    v14 = [v11 initWithText:v12 voice:v39 promptStyle:v13];

    if (_os_feature_enabled_impl())
    {
      v15 = [MEMORY[0x277CEF368] sharedPreferences];
      v16 = [v15 siriSpeechRate];
      [v16 floatValue];
      v18 = v17;

      LODWORD(v19) = v18;
      [v14 setRate:v19];
    }

    v20 = objc_alloc(MEMORY[0x277CCAD78]);
    v21 = [v7 sessionId];
    v22 = [v20 initWithUUIDString:v21];
    [v14 setSiriRequestId:v22];

    if (objc_opt_respondsToSelector())
    {
      v23 = objc_alloc(MEMORY[0x277CCAD78]);
      v24 = [v7 identifier];
      v25 = [v23 initWithUUIDString:v24];
      [v14 setSiriAceViewId:v25];
    }

    v26 = [v7 speakableContextInfo];
    [v14 setContextInfo:v26];

    [v14 setPrivacySensitive:{objc_msgSend(v7, "canUseServerTTS") ^ 1}];
    [v14 setAudioSessionId:{objc_msgSend(WeakRetained, "audioSessionID")}];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_87;
    v58[3] = &unk_279C62068;
    objc_copyWeak(&v59, a1 + 8);
    objc_copyWeak(&v60, a1 + 9);
    [v14 setDidStartSpeaking:v58];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2;
    v55[3] = &unk_279C62090;
    objc_copyWeak(&v56, a1 + 8);
    objc_copyWeak(&v57, a1 + 9);
    [v14 setDidReportInstrument:v55];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_3;
    v52[3] = &unk_279C620B8;
    objc_copyWeak(&v53, a1 + 8);
    objc_copyWeak(&v54, a1 + 9);
    [v14 setDidGenerateWordTimings:v52];
    if ([a1[4] isEqualToString:@"\x1B\\mrk=play=phat\"])
    {
      v27 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v64 = 0;
      v28 = [WeakRetained ttsSession];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_4;
      v49[3] = &unk_279C61C90;
      v51 = buf;
      v29 = v27;
      v50 = v29;
      [v28 queryPhaticCapabilityWithVoice:v40 reply:v49];

      v30 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v29, v30);
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v36 = a1[6];
        v37 = [MEMORY[0x277CEF2A0] errorWithCode:401];
        v36[2](v36, v37);

        v38 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315138;
          v62 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke_5";
          _os_log_impl(&dword_26951F000, v38, OS_LOG_TYPE_DEFAULT, "%s #phatic [Post] Fail! Phatic Not Supported", v61, 0xCu);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(buf, 8);
    }

    if ([a1[4] isEqualToString:@"\x1B\\mrk=play=phat\"])
    {
      v31 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
        _os_log_impl(&dword_26951F000, v31, OS_LOG_TYPE_DEFAULT, "%s #phatic [Pre] Success", buf, 0xCu);
      }

      (*(a1[7] + 2))();
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277CEF530]);
      v33 = WeakRetained[4];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90;
      v46[3] = &unk_279C61990;
      objc_copyWeak(&v48, a1 + 8);
      v47 = a1[6];
      v34 = [v32 initWithTimeoutInterval:v33 onQueue:v46 timeoutHandler:3.5];
      v35 = WeakRetained[6];
      WeakRetained[6] = v34;

      [WeakRetained[6] start];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91;
      v41[3] = &unk_279C62108;
      v41[4] = WeakRetained;
      v42 = a1[5];
      v44 = a1[6];
      v45 = a1[7];
      v43 = v14;
      [WeakRetained _prepareAudioSessionIfNeededWithCompletion:v41];

      objc_destroyWeak(&v48);
    }

LABEL_20:
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v53);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v59);
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didStartSpeakTask:v2];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained speakTask:v4 didGenerateMetrics:v3];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained speakTask:v4 didGenerateWordTimingInfo:v3];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [WeakRetained[6] cancel];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v11 + 16))(v11, v12);
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91(uint64_t a1, int a2, char a3)
{
  if ([*(*(a1 + 32) + 48) cancelIfNotAlreadyCanceled])
  {
    v6 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92;
    block[3] = &unk_279C620E0;
    v25 = a3;
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v24 = a2;
    *&v9 = v7;
    *(&v9 + 1) = *(a1 + 32);
    v19 = v9;
    v23 = *(a1 + 64);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v8;
    v21 = v19;
    v22 = v10;
    dispatch_async(v6, block);
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 76))
  {
    [*(a1 + 40) setAudioSessionID:*(a1 + 72)];
    v2 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 72);
      v6 = 136315394;
      v7 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #tts audio session active; setting audio session id: %u", &v6, 0x12u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92_cold_1();
    }

    v4 = *(a1 + 56);
    v5 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_94(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] No text, marking finished", &v5, 0xCu);
  }

  [*(a1 + 32) setSynthesisResult:1];
  [*(a1 + 32) executeCompletion];
  v3 = [*(a1 + 40) clientStateManagerDelegate];
  [v3 notifyClientStateManagerTransactionEnded:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95(uint64_t a1)
{
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  [*(a1 + 32) setSynthesisResult:2];
  [*(a1 + 32) executeCompletion];
  v10 = [*(a1 + 40) clientStateManagerDelegate];
  [v10 notifyClientStateManagerTransactionEnded:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_97(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98;
    v13[3] = &unk_279C62180;
    objc_copyWeak(&v17, a1 + 8);
    v14 = v3;
    v7 = a1[4];
    v8 = a1[6];
    v9 = a1[5];
    v10 = a1[7];
    *&v11 = v8;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v9;
    v15 = v12;
    v16 = v11;
    dispatch_async(v6, v13);

    objc_destroyWeak(&v17);
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = v4;
        v7 = [v5 language];
        v8 = [*(a1 + 40) gender];
        v9 = *(a1 + 32);
        v20 = 136315906;
        v21 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke_2";
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Found voice for %@ %@: %@", &v20, 0x2Au);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v10 = [WeakRetained[2] objectForKey:*(a1 + 48)];
      v11 = [v10 count];

      if (v11)
      {
        v12 = [v3[2] objectForKey:*(a1 + 48)];
        v13 = [v12 firstObject];

        v14 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = v14;
          v17 = [v15 language];
          v18 = [*(a1 + 40) gender];
          v20 = 136315906;
          v21 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
          v22 = 2112;
          v23 = v17;
          v24 = 2112;
          v25 = v18;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] No voice for %@ %@. Using %@", &v20, 0x2Au);
        }

        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v19 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98_cold_1(a1, v19);
        }

        (*(*(a1 + 64) + 16))();
      }
    }
  }
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_99(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_group_leave(WeakRetained[5]);
    WeakRetained = v2;
  }
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_101(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_group_leave(WeakRetained[5]);
    WeakRetained = v2;
  }
}

- (id)_activeTaskWithTTSRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  _activeTasks = [(SRUIFSpeechSynthesizer *)self _activeTasks];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SRUIFSpeechSynthesizer__activeTaskWithTTSRequest___block_invoke;
  v9[3] = &unk_279C621D0;
  v6 = requestCopy;
  v10 = v6;
  v11 = &v12;
  [_activeTasks enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__SRUIFSpeechSynthesizer__activeTaskWithTTSRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 ttsSessionRequest];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_findVoiceForLanguage:(id)language gender:(id)gender completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  genderCopy = gender;
  completionCopy = completion;
  v11 = [(NSMutableDictionary *)self->_availableVoicesForLanguage objectForKey:languageCopy];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_availableVoicesForLanguage objectForKey:languageCopy];
    v13 = [(SRUIFSpeechSynthesizer *)self _filterVoices:v12 gender:genderCopy];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v13);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CEF528] allVoicesForSiriSessionLanguage:languageCopy];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __66__SRUIFSpeechSynthesizer__findVoiceForLanguage_gender_completion___block_invoke;
    v25 = &unk_279C621F8;
    v15 = languageCopy;
    v26 = v15;
    v16 = v14;
    v27 = v16;
    [v13 enumerateObjectsUsingBlock:&v22];
    if ([v16 count])
    {
      v17 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x277CCABB0];
        v19 = v17;
        v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        *buf = 136315650;
        v29 = "[SRUIFSpeechSynthesizer _findVoiceForLanguage:gender:completion:]";
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_DEFAULT, "%s #tts %@ has %@ available Voices", buf, 0x20u);
      }

      [(NSMutableDictionary *)self->_availableVoicesForLanguage setObject:v16 forKey:v15];
      v21 = [(SRUIFSpeechSynthesizer *)self _filterVoices:v16 gender:genderCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v21);
      }
    }

    else if (completionCopy)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [SRUIFSpeechSynthesizer _findVoiceForLanguage:gender:completion:];
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

void __66__SRUIFSpeechSynthesizer__findVoiceForLanguage_gender_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 languageCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (int64_t)_genderForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy caseInsensitiveCompare:@"female"])
    {
      if ([v4 caseInsensitiveCompare:@"male"])
      {
        if ([v4 caseInsensitiveCompare:@"neutral"])
        {
          v5 = 0;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_filterVoices:(id)voices gender:(id)gender
{
  voicesCopy = voices;
  genderCopy = gender;
  v8 = [(SRUIFSpeechSynthesizer *)self _genderForString:genderCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SRUIFSpeechSynthesizer__filterVoices_gender___block_invoke;
  v13[3] = &unk_279C62220;
  v13[5] = &v14;
  v13[6] = v8;
  v13[4] = &v20;
  [voicesCopy enumerateObjectsUsingBlock:v13];
  v9 = v21[5];
  if (!v9)
  {
    v10 = v15[5];
    if (v10)
    {
      objc_storeStrong(v21 + 5, v10);
      v9 = v21[5];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v9;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __47__SRUIFSpeechSynthesizer__filterVoices_gender___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v9 = v7;
  if (!a1[6] || (v8 = [v7 gender] == a1[6], v7 = v9, v8))
  {
    if ([v7 isCustom])
    {
      objc_storeStrong((*(a1[4] + 8) + 40), a2);
      *a4 = 1;
    }

    else
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
    }

    v7 = v9;
  }
}

- (int64_t)_speechFootPrintForVoice:(id)voice
{
  result = [voice footprint];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts Expected an active task that corresponds to an active speech request, but got nothing!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_2()
{
  LODWORD(v2) = 136315650;
  *(&v2 + 4) = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_26951F000, v0, v1, "%s #tts Unable to finish speaking presynthesized request%@: %{public}@", v2, DWORD2(v2));
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts [Post] Expected an active task that corresponds to an active speech request, but got nothing!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 text];
  LODWORD(v11) = 136315651;
  *(&v11 + 4) = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_26951F000, v5, v6, "%s #tts [Post] Unable to finish speaking %{sensitive}@: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 text];
  LODWORD(v11) = 136315650;
  *(&v11 + 4) = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_26951F000, v5, v6, "%s #tts [Post] Unable to finish speaking %@: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts strongSelf==nil", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)speakTask:(void *)a1 didGenerateMetrics:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 ttsSessionRequest];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_3();
  v7 = v5;
  _os_log_error_impl(&dword_26951F000, v3, OS_LOG_TYPE_ERROR, "%s #tts [Post] Event metrics was missing for the request%@", v6, 0x16u);
}

- (void)_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v0, v1, "%s #tts [Pre] Task is delayed but no identifier provided. This will likely result in out-of-order TTS: %@", v2, v3, v4, v5, v6);
}

- (void)processDelayedItem:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer processDelayedItem:]";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts [Pre] nil is an invalid delayed item identifier", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]_block_invoke_2";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts prepare audio session request timed out", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts pendingTask timer already timed out; not continuing", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v0, v1, "%s #tts failed to prepare audio session, failing speech synthesis task %@", v2, v3, v4, v5, v6);
}

- (void)_handleText:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer _handleText:completion:]";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts Not speaking nil text", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_26951F000, v0, v1, "%s #tts [Post] Synthesis failed for with %@ for %@ ", v2);
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts prepare audio session request timed out", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts pendingTask timer already timed out; not continuing", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v0, v1, "%s #tts failed to prepare audio session, failing speech synthesis task %@", v2, v3, v4, v5, v6);
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts [Post] Failed onNoOutputVoice", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98_cold_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 language];
  v6 = [*(a1 + 40) gender];
  v13 = 136315650;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_26951F000, v7, v8, "%s #tts [Pre] Could not find voice for %@ %@", v9, v10, v11, v12, v13);
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s #tts [Pre] Invalid speak request. No text and no audio data", buf, 0xCu);
}

- (void)_findVoiceForLanguage:gender:completion:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_26951F000, v0, v1, "%s #tts No voice found for language: %@ gender: %@", v2);
}

@end