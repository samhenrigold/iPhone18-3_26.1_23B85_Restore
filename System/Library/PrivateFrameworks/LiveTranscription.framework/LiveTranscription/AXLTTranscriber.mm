@interface AXLTTranscriber
+ (AXLTTranscriber)sharedInstance;
- (AXLTTranscriber)init;
- (BOOL)isAssetPending;
- (BOOL)isTranscribingForPID:(int)d;
- (float)_coalsecingTime;
- (int64_t)defaultTaskHint;
- (int64_t)mapUserTaskHint;
- (int64_t)recognitionTaskHint;
- (void)_downloadAndInstallSpeechRecognizer;
- (void)_handleAssetDownloadError:(id)error;
- (void)_restartTranscription;
- (void)appendAudioPCMBuffer:(id)buffer forPID:(int)d;
- (void)dealloc;
- (void)resumeTranscriptionForPID:(int)d;
- (void)speechRecognitionDidDetectSpeech:(id)speech;
- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition;
- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully;
- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription;
- (void)speechRecognitionTaskFinishedReadingAudio:(id)audio;
- (void)speechRecognitionTaskWasCancelled:(id)cancelled;
- (void)startTranscriptionForPID:(int)d appName:(id)name callback:(id)callback completionCallback:(id)completionCallback;
- (void)stopTranscriptionForPID:(int)d;
@end

@implementation AXLTTranscriber

+ (AXLTTranscriber)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AXLTTranscriber_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __33__AXLTTranscriber_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXLTTranscriber)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXLTTranscriber;
  v2 = [(AXLTTranscriber *)&v12 init];
  if (v2)
  {
    v3 = +[AXLTLanguageAssetManager sharedInstance];
    languageAssetManager = v2->_languageAssetManager;
    v2->_languageAssetManager = v3;

    languageAssetManager = [(AXLTTranscriber *)v2 languageAssetManager];
    locale = [languageAssetManager locale];

    v7 = AXLogLiveTranscription();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localeIdentifier = [locale localeIdentifier];
      *buf = 138412290;
      v14 = localeIdentifier;
      _os_log_impl(&dword_256022000, v7, OS_LOG_TYPE_DEFAULT, "Transcriber: Using locale: %@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CDCF00]) initWithLocale:locale];
    [(AXLTTranscriber *)v2 setRecognizer:v9];

    recognizer = [(AXLTTranscriber *)v2 recognizer];
    [recognizer setDelegate:v2];

    v2->_downloadState = -2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber dealloc];
  }

  v4.receiver = self;
  v4.super_class = AXLTTranscriber;
  [(AXLTTranscriber *)&v4 dealloc];
}

- (int64_t)recognitionTaskHint
{
  if (self->_taskHint)
  {
    return [(AXLTTranscriber *)self mapUserTaskHint];
  }

  else
  {
    return [(AXLTTranscriber *)self defaultTaskHint];
  }
}

- (int64_t)mapUserTaskHint
{
  result = [(AXLTTranscriber *)self taskHint]- 1;
  if (result >= 4)
  {

    return [(AXLTTranscriber *)self defaultTaskHint];
  }

  return result;
}

- (int64_t)defaultTaskHint
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v4 = [localeIdentifier isEqualToString:@"en_US"];

  if (v4)
  {
    return 1004;
  }

  else
  {
    return 1;
  }
}

- (void)startTranscriptionForPID:(int)d appName:(id)name callback:(id)callback completionCallback:(id)completionCallback
{
  v8 = *&d;
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  callbackCopy = callback;
  completionCallbackCopy = completionCallback;
  if ([(AXLTTranscriber *)self isAssetPending])
  {
    v13 = AXLogLiveTranscription();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [AXLTTranscriber startTranscriptionForPID:appName:callback:completionCallback:];
    }

    goto LABEL_16;
  }

  isTranscribing = [(AXLTTranscriber *)self isTranscribing];
  v15 = AXLogLiveTranscription();
  languageAssetManager = v15;
  if (isTranscribing)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [AXLTTranscriber startTranscriptionForPID:nameCopy appName:self callback:? completionCallback:?];
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    *buf = 138412802;
    v22 = nameCopy;
    v23 = 2112;
    v24 = v17;
    v25 = 1024;
    isPending = [(AXLTTranscriber *)self isPending];
    _os_log_impl(&dword_256022000, languageAssetManager, OS_LOG_TYPE_DEFAULT, "Transcriber: Starting transcription for app: %@, pid: %@, pending: %d", buf, 0x1Cu);
  }

  if ([(AXLTTranscriber *)self pid]!= v8 || ![(AXLTTranscriber *)self isPending])
  {
    [(AXLTTranscriber *)self stopTranscriptionForPID:[(AXLTTranscriber *)self pid]];
  }

  [(AXLTTranscriber *)self setPid:v8];
  [(AXLTTranscriber *)self setAppName:nameCopy];
  [(AXLTTranscriber *)self setTranscriptionCallback:callbackCopy];
  [(AXLTTranscriber *)self setCompletionCallback:completionCallbackCopy];
  [(AXLTTranscriber *)self setCurrentTranscription:0];
  if (![(AXLTTranscriber *)self isPending])
  {
    [(AXLTTranscriber *)self setIsPending:1];
    languageAssetManager = [(AXLTTranscriber *)self languageAssetManager];
    recognitionTaskHint = [(AXLTTranscriber *)self recognitionTaskHint];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke;
    v19[3] = &unk_27981CB10;
    v19[4] = self;
    v20 = v8;
    [languageAssetManager languageAssetAvaliableForTaskHint:recognitionTaskHint completion:v19];
LABEL_15:
  }

LABEL_16:
}

void __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = AXLogLiveTranscription();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_256022000, v4, OS_LOG_TYPE_DEFAULT, "Transcriber: Language asset is available: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke_289;
  v6[3] = &unk_27981CAE8;
  v8 = a2;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __80__AXLTTranscriber_startTranscriptionForPID_appName_callback_completionCallback___block_invoke_289(uint64_t a1)
{
  v2 = *(a1 + 44);
  v3 = *(a1 + 32);
  if (v2)
  {
    return [v3 resumeTranscriptionForPID:*(a1 + 40)];
  }

  else
  {
    return [v3 _downloadAndInstallSpeechRecognizer];
  }
}

- (void)stopTranscriptionForPID:(int)d
{
  v3 = *&d;
  v18 = *MEMORY[0x277D85DE8];
  if ([(AXLTTranscriber *)self pid]== d)
  {
    [(AXLTTranscriber *)self setIsPending:0];
    [(AXLTTranscriber *)self setIsTranscribing:0];
    v5 = AXLogLiveTranscription();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      appName = [(AXLTTranscriber *)self appName];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[AXLTTranscriber pid](self, "pid")}];
      v14 = 138412546;
      v15 = appName;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_DEFAULT, "Transcriber: Stopping transcription for app: %@, pid: %@", &v14, 0x16u);
    }

    [(AXLTTranscriber *)self setCurrentTranscription:0];
    [(AXLTTranscriber *)self setPid:0];
    [(AXLTTranscriber *)self setAppName:0];
    recognitionTask = [(AXLTTranscriber *)self recognitionTask];

    if (recognitionTask)
    {
      v9 = AXLogLiveTranscription();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [AXLTTranscriber stopTranscriptionForPID:];
      }

      recognitionTask2 = [(AXLTTranscriber *)self recognitionTask];
      [recognitionTask2 cancel];

      recognitionTask3 = [(AXLTTranscriber *)self recognitionTask];
      [recognitionTask3 finish];

      [(AXLTTranscriber *)self setRecognitionTask:0];
    }

    recognitionRequest = [(AXLTTranscriber *)self recognitionRequest];
    [recognitionRequest endAudio];

    [(AXLTTranscriber *)self setRecognitionRequest:0];
  }

  else
  {
    v13 = AXLogLiveTranscription();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(AXLTTranscriber *)v3 stopTranscriptionForPID:?];
    }
  }
}

- (void)resumeTranscriptionForPID:(int)d
{
  v3 = *&d;
  v29 = *MEMORY[0x277D85DE8];
  if ([(AXLTTranscriber *)self isTranscribing])
  {
    v5 = AXLogLiveTranscription();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXLTTranscriber resumeTranscriptionForPID:];
    }
  }

  else if ([(AXLTTranscriber *)self pid])
  {
    if ([(AXLTTranscriber *)self pid]== v3)
    {
      recognizer = [(AXLTTranscriber *)self recognizer];
      supportsOnDeviceRecognition = [recognizer supportsOnDeviceRecognition];

      if (supportsOnDeviceRecognition)
      {
        [(AXLTTranscriber *)self setIsPending:0];
        [(AXLTTranscriber *)self setIsTranscribing:1];
        [(AXLTTranscriber *)self setCurrentTranscription:0];
        v8 = objc_alloc_init(MEMORY[0x277CDCEC0]);
        [(AXLTTranscriber *)self setRecognitionRequest:v8];

        recognitionRequest = [(AXLTTranscriber *)self recognitionRequest];
        [recognitionRequest setTaskIdentifier:@"systemlivecaptions"];

        recognitionRequest2 = [(AXLTTranscriber *)self recognitionRequest];
        [recognitionRequest2 setShouldReportPartialResults:1];

        recognitionRequest3 = [(AXLTTranscriber *)self recognitionRequest];
        [recognitionRequest3 setDetectMultipleUtterances:0];

        recognitionRequest4 = [(AXLTTranscriber *)self recognitionRequest];
        [recognitionRequest4 _setMaximumRecognitionDuration:7200.0];

        recognitionRequest5 = [(AXLTTranscriber *)self recognitionRequest];
        [recognitionRequest5 setRequiresOnDeviceRecognition:1];

        if (_os_feature_enabled_impl())
        {
          noPunctuation = [(AXLTTranscriber *)self noPunctuation];
          recognitionRequest6 = [(AXLTTranscriber *)self recognitionRequest];
          [recognitionRequest6 setAddsPunctuation:!noPunctuation];
        }

        v16 = AXLogLiveTranscription();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [AXLTTranscriber resumeTranscriptionForPID:?];
        }

        recognitionTaskHint = [(AXLTTranscriber *)self recognitionTaskHint];
        recognitionRequest7 = [(AXLTTranscriber *)self recognitionRequest];
        [recognitionRequest7 setTaskHint:recognitionTaskHint];

        recognizer2 = [(AXLTTranscriber *)self recognizer];
        recognitionRequest8 = [(AXLTTranscriber *)self recognitionRequest];
        v21 = [recognizer2 recognitionTaskWithRequest:recognitionRequest8 delegate:self];
        [(AXLTTranscriber *)self setRecognitionTask:v21];

        v5 = AXLogLiveTranscription();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          appName = [(AXLTTranscriber *)self appName];
          v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[AXLTTranscriber pid](self, "pid")}];
          v25 = 138412546;
          v26 = appName;
          v27 = 2112;
          v28 = v23;
          _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_DEFAULT, "Transcriber: Resuming transcription for app: %@, pid: %@", &v25, 0x16u);
        }
      }

      else
      {
        v5 = AXLogLiveTranscription();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_DEFAULT, "Transcriber: Cannot start on-device recognition for Live Captions", &v25, 2u);
        }
      }
    }

    else
    {
      v5 = AXLogLiveTranscription();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(AXLTTranscriber *)v3 resumeTranscriptionForPID:?];
      }
    }
  }

  else
  {
    v5 = AXLogLiveTranscription();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&dword_256022000, v5, OS_LOG_TYPE_DEFAULT, "Transcriber: Can't resume transcription for pid: %@, startTranscription wasn't called", &v25, 0xCu);
    }
  }
}

- (BOOL)isTranscribingForPID:(int)d
{
  isTranscribing = [(AXLTTranscriber *)self isTranscribing];
  if (isTranscribing)
  {
    LOBYTE(isTranscribing) = [(AXLTTranscriber *)self pid]== d;
  }

  return isTranscribing;
}

- (void)appendAudioPCMBuffer:(id)buffer forPID:(int)d
{
  v4 = *&d;
  v19 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if (![(AXLTTranscriber *)self pid])
  {
    recognitionRequest = AXLogLiveTranscription();
    if (!os_log_type_enabled(recognitionRequest, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v13 = 138412546;
    v14 = v10;
    v15 = 1024;
    LODWORD(v16) = [(AXLTTranscriber *)self isTranscribing];
    _os_log_impl(&dword_256022000, recognitionRequest, OS_LOG_TYPE_DEFAULT, "Transcriber: Can't appendAudioPCMBuffer for pid: %@, no active transcribing session, isTranscribing: %d", &v13, 0x12u);
LABEL_10:

    goto LABEL_11;
  }

  v7 = [(AXLTTranscriber *)self pid];
  v8 = AXLogLiveTranscription();
  recognitionRequest = v8;
  if (v7 != v4)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[AXLTTranscriber pid](self, "pid")}];
    appName = [(AXLTTranscriber *)self appName];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = appName;
    _os_log_impl(&dword_256022000, recognitionRequest, OS_LOG_TYPE_DEFAULT, "Transcriber: Can't appendAudioPCMBuffer for pid: %@, transcribing for pid: %@ app: %@", &v13, 0x20u);

    goto LABEL_10;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber appendAudioPCMBuffer:bufferCopy forPID:self];
  }

  recognitionRequest = [(AXLTTranscriber *)self recognitionRequest];
  [recognitionRequest appendAudioPCMBuffer:bufferCopy];
LABEL_11:
}

- (void)_restartTranscription
{
  v3 = [(AXLTTranscriber *)self pid];
  appName = [(AXLTTranscriber *)self appName];
  transcriptionCallback = [(AXLTTranscriber *)self transcriptionCallback];
  completionCallback = [(AXLTTranscriber *)self completionCallback];
  [(AXLTTranscriber *)self startTranscriptionForPID:v3 appName:appName callback:transcriptionCallback completionCallback:completionCallback];
}

- (BOOL)isAssetPending
{
  if ([(AXLTTranscriber *)self downloadState]== -2 || [(AXLTTranscriber *)self downloadState]== 100)
  {
    return 0;
  }

  downloadState = [(AXLTTranscriber *)self downloadState];
  v5 = AXLogLiveTranscription();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (downloadState == -1)
  {
    if (v6)
    {
      [AXLTTranscriber isAssetPending];
    }
  }

  else if (v6)
  {
    [AXLTTranscriber isAssetPending];
  }

  return 1;
}

- (void)_downloadAndInstallSpeechRecognizer
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "downloadState")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2;
  v2[3] = &unk_27981CB38;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_256022000, v3, OS_LOG_TYPE_DEFAULT, "Transcriber: Language asset download fractionCompleted %lu", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) transcriptionCallback];

  if (v5)
  {
    v6 = [*(a1 + 32) transcriptionCallback];
    v6[2](v6, 0, *(a1 + 40));
  }
}

void __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2_299;
  v6[3] = &unk_27981C9D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __54__AXLTTranscriber__downloadAndInstallSpeechRecognizer__block_invoke_2_299(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_256022000, v3, OS_LOG_TYPE_DEFAULT, "Transcriber: Language asset finished, error: %@", &v11, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) transcriptionCallback];

  if (v5)
  {
    if (v6)
    {
      v7 = [*(a1 + 40) transcriptionCallback];
      v8 = -1;
      v7[2](v7, 0, -1);
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    if (v6)
    {
      v9 = [*(a1 + 40) transcriptionCallback];
      v9[2](v9, 0, 100);
    }

    [*(a1 + 40) resumeTranscriptionForPID:{objc_msgSend(*(a1 + 40), "pid")}];
    v8 = 100;
  }

  return [*(a1 + 40) setDownloadState:v8];
}

- (void)_handleAssetDownloadError:(id)error
{
  transcriptionCallback = [(AXLTTranscriber *)self transcriptionCallback];
  transcriptionCallback[2](transcriptionCallback, 0, -1);

  [(AXLTTranscriber *)self setDownloadState:-1];
}

- (void)speechRecognitionDidDetectSpeech:(id)speech
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionDidDetectSpeech:];
  }
}

- (void)speechRecognitionTaskFinishedReadingAudio:(id)audio
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTaskFinishedReadingAudio:];
  }
}

- (void)speechRecognitionTaskWasCancelled:(id)cancelled
{
  v3 = AXLogLiveTranscription();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTaskWasCancelled:];
  }
}

- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully
{
  v6 = AXLogLiveTranscription();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTask:didFinishSuccessfully:];
  }

  if (!successfully)
  {
    v7 = AXLogLiveTranscription();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_256022000, v7, OS_LOG_TYPE_DEFAULT, "Transcriber: Task was unsuccessful", v10, 2u);
    }
  }

  [(AXLTTranscriber *)self setCurrentTranscription:0];
  transcriptionCallback = [(AXLTTranscriber *)self transcriptionCallback];

  if (transcriptionCallback)
  {
    transcriptionCallback2 = [(AXLTTranscriber *)self transcriptionCallback];
    transcriptionCallback2[2](transcriptionCallback2, 0, -2);
  }
}

- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription
{
  taskCopy = task;
  transcriptionCopy = transcription;
  v8 = AXLogLiveTranscription();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTask:transcriptionCopy didHypothesizeTranscription:?];
  }

  transcriptionCallback = [(AXLTTranscriber *)self transcriptionCallback];

  if (transcriptionCallback)
  {
    v10 = [AXLTTranscription alloc];
    currentTranscription = [(AXLTTranscriber *)self currentTranscription];
    v12 = [(AXLTTranscription *)v10 initWithRecognitionTask:taskCopy transcription:transcriptionCopy previousTranscription:currentTranscription];

    [(AXLTTranscriber *)self setCurrentTranscription:v12];
    transcriptionCallback2 = [(AXLTTranscriber *)self transcriptionCallback];
    currentTranscription2 = [(AXLTTranscriber *)self currentTranscription];
    (transcriptionCallback2)[2](transcriptionCallback2, currentTranscription2, -2);
  }
}

- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition
{
  taskCopy = task;
  recognitionCopy = recognition;
  v8 = AXLogLiveTranscription();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXLTTranscriber speechRecognitionTask:didFinishRecognition:];
  }

  [(AXLTTranscriber *)self setCurrentTranscription:0];
  transcriptionCallback = [(AXLTTranscriber *)self transcriptionCallback];

  if (transcriptionCallback)
  {
    v10 = [AXLTTranscription alloc];
    bestTranscription = [recognitionCopy bestTranscription];
    currentTranscription = [(AXLTTranscriber *)self currentTranscription];
    v13 = [(AXLTTranscription *)v10 initWithRecognitionTask:taskCopy transcription:bestTranscription previousTranscription:currentTranscription];

    transcriptionCallback2 = [(AXLTTranscriber *)self transcriptionCallback];
    (transcriptionCallback2)[2](transcriptionCallback2, v13, -2);
  }

  completionCallback = [(AXLTTranscriber *)self completionCallback];

  if (completionCallback)
  {
    completionCallback2 = [(AXLTTranscriber *)self completionCallback];
    completionCallback2[2]();
  }
}

- (float)_coalsecingTime
{
  if (_coalsecingTime_onceToken != -1)
  {
    [AXLTTranscriber _coalsecingTime];
  }

  [_coalsecingTime_s_userDefaults floatForKey:@"CoalesceCaptionsTimeKey"];
  if (result == 0.0)
  {
    return 0.5;
  }

  return result;
}

uint64_t __34__AXLTTranscriber__coalsecingTime__block_invoke()
{
  _coalsecingTime_s_userDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.accessibility.LiveCaptions"];

  return MEMORY[0x2821F96F8]();
}

- (void)startTranscriptionForPID:(uint64_t)a1 appName:(void *)a2 callback:completionCallback:.cold.1(uint64_t a1, void *a2)
{
  v3 = [a2 appName];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "pid")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)startTranscriptionForPID:appName:callback:completionCallback:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_256022000, v0, OS_LOG_TYPE_DEBUG, "Transcriber: Can't start transcription for app, asset is not ready: %@", v1, 0xCu);
}

- (void)stopTranscriptionForPID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = [a2 appName];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "pid")}];
  LODWORD(v12) = 138412802;
  *(&v12 + 4) = v3;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_256022000, v6, v7, "Transcriber: Can't stop transcription for pid: %@, active app: %@, pid %@", v8, v9, v10, v11, v12, DWORD2(v12));
}

- (void)resumeTranscriptionForPID:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v4 = [a2 appName];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "pid")}];
  LODWORD(v12) = 138412802;
  *(&v12 + 4) = v3;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_256022000, v6, v7, "Transcriber: Can't resume transcription for pid: %@, active app: %@, pid: %@", v8, v9, v10, v11, v12, DWORD2(v12));
}

- (void)resumeTranscriptionForPID:(void *)a1 .cold.2(void *a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 recognitionRequest];
  v3 = [v1 numberWithBool:{objc_msgSend(v2, "addsPunctuation")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)appendAudioPCMBuffer:(void *)a1 forPID:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1, "frameCapacity")}];
  v9 = [a2 appName];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)speechRecognitionTask:(void *)a1 didHypothesizeTranscription:.cold.1(void *a1)
{
  v1 = [a1 formattedString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end