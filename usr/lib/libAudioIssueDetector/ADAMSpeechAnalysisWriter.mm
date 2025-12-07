@interface ADAMSpeechAnalysisWriter
+ (id)censoredResultFromInputResult:(id)result;
- (ADAMSpeechAnalysisWriter)initWithWriterName:(id)name sessionID:(unsigned int)d audioFormat:(id)format speechMetricsSRWriter:(id)writer completionHandler:(id)handler;
- (BOOL)isMonitoring;
- (BOOL)verifyStateInit;
- (id).cxx_construct;
- (int)write:(id)write withMetadata:(const Metadata *)metadata;
- (unint64_t)_fetchTimestampforTask:(id)task;
- (void)_initSpeechAnalyzer;
- (void)_recordTimestamp:(unint64_t)timestamp forTask:(id)task;
- (void)createAndLogOSTransaction;
- (void)destroyAndLogOSTransaction;
- (void)logResultCountAndFirstTimeStamp;
- (void)speechRecognitionDidDetectSpeech:(id)speech;
- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition;
- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully;
- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription;
- (void)speechRecognitionTaskWasCancelled:(id)cancelled;
@end

@implementation ADAMSpeechAnalysisWriter

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 112) = 0;
  *(self + 120) = 0;
  return self;
}

- (void)logResultCountAndFirstTimeStamp
{
  v22 = *MEMORY[0x29EDCA608];
  if (self->_firstContinuousTimestampPerMinute.__engaged_)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v3 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
    {
      resultCounterPerMinute = self->_resultCounterPerMinute;
      v8 = 136316418;
      v9 = "ADAMSpeechAnalysisWriter.mm";
      v10 = 1024;
      v11 = 425;
      v12 = 1040;
      v13 = 24;
      v14 = 2080;
      v15 = "ADAMSpeechAnalysisWriter]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 1024;
      LODWORD(v19) = resultCounterPerMinute;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] # speech results sent previous minute : %d", &v8, 0x32u);
    }

    self->_resultCounterPerMinute = 0;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v5 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (!self->_firstContinuousTimestampPerMinute.__engaged_)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      val = self->_firstContinuousTimestampPerMinute.var0.__val_;
      firstAbsoluteTimestampPerMinute = self->_firstAbsoluteTimestampPerMinute;
      v8 = 136316674;
      v9 = "ADAMSpeechAnalysisWriter.mm";
      v10 = 1024;
      v11 = 428;
      v12 = 1040;
      v13 = 24;
      v14 = 2080;
      v15 = "ADAMSpeechAnalysisWriter]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2048;
      v19 = val;
      v20 = 2048;
      v21 = firstAbsoluteTimestampPerMinute;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] first speech timestamps of previous minute : continuous %llu, absolute %f", &v8, 0x40u);
    }

    if (self->_firstContinuousTimestampPerMinute.__engaged_)
    {
      self->_firstContinuousTimestampPerMinute.__engaged_ = 0;
    }
  }
}

- (BOOL)verifyStateInit
{
  isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechMetricsSRWriter isValidSRSensorWriterPresent];
  if (isValidSRSensorWriterPresent)
  {
    LOBYTE(isValidSRSensorWriterPresent) = self->_SpeechRecognizer == 0;
  }

  return isValidSRSensorWriterPresent;
}

- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully
{
  taskCopy = task;
  dispatch_semaphore_signal(self->_throttlingSemaphore);
  queue = self->_queue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __72__ADAMSpeechAnalysisWriter_speechRecognitionTask_didFinishSuccessfully___block_invoke;
  block[3] = &unk_29EE52668;
  block[4] = self;
  v10 = taskCopy;
  successfullyCopy = successfully;
  v8 = taskCopy;
  dispatch_async(queue, block);
}

void __72__ADAMSpeechAnalysisWriter_speechRecognitionTask_didFinishSuccessfully___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) _removePendingRequest];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v3 = *ADAM::ADAMLogScope(void)::scope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x29EDBA070] numberWithBool:*(a1 + 48)];
    v8 = [*(a1 + 40) error];
    v12 = 136316418;
    v13 = "ADAMSpeechAnalysisWriter.mm";
    v14 = 1024;
    v15 = 392;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = v2;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d -> FINISHED task %@, successful(%@), error: %@, pending requests: %llu", &v12, 0x3Au);
  }

LABEL_10:
  [*(a1 + 32) logResultCountAndFirstTimeStamp];
  v9 = [*(a1 + 40) error];
  if ([*(a1 + 40) isEqual:*(*(a1 + 32) + 144)])
  {
    *(*(a1 + 32) + 152) = 1;
  }

  if (!v2)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    if (v11)
    {
      if (*(v10 + 152) == 1)
      {
        (*(v11 + 16))(v11, v9);
      }
    }
  }
}

- (void)speechRecognitionTaskWasCancelled:(id)cancelled
{
  v13 = *MEMORY[0x29EDCA608];
  cancelledCopy = cancelled;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "ADAMSpeechAnalysisWriter.mm";
    v9 = 1024;
    v10 = 374;
    v11 = 2112;
    v12 = cancelledCopy;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d recognition task %@ cancelled", &v7, 0x1Cu);
  }

LABEL_10:
  [(ADAMSpeechAnalysisWriter *)self speechRecognitionTask:cancelledCopy didFinishSuccessfully:0];
}

- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition
{
  v46 = *MEMORY[0x29EDCA608];
  taskCopy = task;
  recognitionCopy = recognition;
  if (ADAM::isXCTest(void)::once != -1)
  {
    dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
  }

  if ((ADAM::isXCTest(void)::isXCTest & 1) == 0)
  {
    if (recognitionCopy && ([recognitionCopy speechRecognitionMetadata], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [ADAMSpeechAnalysisWriter censoredResultFromInputResult:recognitionCopy];
      v10 = [(ADAMSpeechAnalysisWriter *)self _fetchTimestampforTask:taskCopy];
      self->_lastTimestamp = v10;
      if (!self->_firstContinuousTimestampPerMinute.__engaged_)
      {
        self->_firstAbsoluteTimestampPerMinute = SRAbsoluteTimeFromContinuousTime(v10);
        self->_firstContinuousTimestampPerMinute.var0.__val_ = self->_lastTimestamp;
        self->_firstContinuousTimestampPerMinute.__engaged_ = 1;
      }

      v11 = objc_alloc(MEMORY[0x29EDBBD00]);
      sessionID = self->_sessionID;
      v13 = SRAbsoluteTimeFromContinuousTime(self->_lastTimestamp);
      v14 = [v11 initWithSessionIdentifier:sessionID sessionFlags:0 timestamp:0 audioLevel:v9 speechRecognition:0 soundClassification:0 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v13)];
      speechMetricsSRWriter = self->_speechMetricsSRWriter;
      v25 = 0;
      [(ADAMSRSensorWriter *)speechMetricsSRWriter provideSample:v14 error:&v25];
      v16 = v25;
      if (v16)
      {
        {
          ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
        }

        v17 = ADAM::get_log(void)::adam_os_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          lastTimestamp = self->_lastTimestamp;
          v19 = SRAbsoluteTimeFromContinuousTime(lastTimestamp);
          v27 = "ADAMSpeechAnalysisWriter.mm";
          v28 = 1024;
          v29 = 350;
          v30 = 1040;
          v31 = 24;
          v32 = 2080;
          *buf = 136316930;
          v33 = "ADAMSpeechAnalysisWriter]";
          v34 = 2048;
          selfCopy2 = self;
          v36 = 2112;
          v37 = v16;
          v38 = 2048;
          v39 = lastTimestamp;
          v40 = 2048;
          v41 = v19;
          _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] failed to write speech metrics result to SensorKit: %@ timestamp: continuous %llu, absolute %f", buf, 0x4Au);
        }
      }

      else
      {
        ++self->_resultCounterPerMinute;
        {
          ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
        }

        v17 = ADAM::get_log(void)::adam_os_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          bestTranscription = [recognitionCopy bestTranscription];
          formattedString = [bestTranscription formattedString];
          v23 = self->_lastTimestamp;
          v24 = SRAbsoluteTimeFromContinuousTime(v23);
          *buf = 136317443;
          v27 = "ADAMSpeechAnalysisWriter.mm";
          v28 = 1024;
          v29 = 356;
          v30 = 1040;
          v31 = 24;
          v32 = 2080;
          v33 = "ADAMSpeechAnalysisWriter]";
          v34 = 2048;
          selfCopy2 = self;
          v36 = 2112;
          v37 = taskCopy;
          v38 = 2117;
          v39 = formattedString;
          v40 = 2112;
          v41 = *&v14;
          v42 = 2048;
          v43 = v23;
          v44 = 2048;
          v45 = v24;
          _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] -> WRITE speech metrics for task %@, best result: %{sensitive}@ speech metrics: %@ timestamp: continuous %llu, absolute %f", buf, 0x5Eu);
        }
      }
    }

    else
    {
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v16 = *ADAM::ADAMLogScope(void)::scope;
        if (!v16)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v16 = MEMORY[0x29EDCA988];
        v20 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "ADAMSpeechAnalysisWriter.mm";
        v28 = 1024;
        v29 = 362;
        _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Speech Metrics are null", buf, 0x12u);
      }
    }
  }

LABEL_25:
}

- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription
{
  v21 = *MEMORY[0x29EDCA608];
  taskCopy = task;
  transcriptionCopy = transcription;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v7 = *ADAM::ADAMLogScope(void)::scope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    formattedString = [transcriptionCopy formattedString];
    v11 = 136316162;
    v12 = "ADAMSpeechAnalysisWriter.mm";
    v13 = 1024;
    v14 = 290;
    v15 = 2112;
    v16 = taskCopy;
    v17 = 2112;
    v18 = formattedString;
    v19 = 2048;
    state = [taskCopy state];
    _os_log_impl(&dword_296C34000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d didHypothesizeTranscription for task %@, Transcription: %@ Task state: %ld", &v11, 0x30u);
  }

LABEL_10:
}

- (void)speechRecognitionDidDetectSpeech:(id)speech
{
  v12 = *MEMORY[0x29EDCA608];
  speechCopy = speech;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v4 = *ADAM::ADAMLogScope(void)::scope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "ADAMSpeechAnalysisWriter.mm";
    v8 = 1024;
    v9 = 281;
    v10 = 2112;
    v11 = speechCopy;
    _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d deteced speech for task %@", &v6, 0x1Cu);
  }

LABEL_10:
}

- (int)write:(id)write withMetadata:(const Metadata *)metadata
{
  writeCopy = write;
  if ([(ADAMSpeechAnalysisWriter *)self isMonitoring])
  {
    if (!self->_transaction)
    {
      [(ADAMSpeechAnalysisWriter *)self createAndLogOSTransaction];
    }

    mHostTime = metadata->var0.mHostTime;
    v16 = 0;
    v15 = 0;
    mach_get_times();
    v8 = metadata->var2 != 0;
    queue = self->_queue;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __47__ADAMSpeechAnalysisWriter_write_withMetadata___block_invoke;
    v11[3] = &unk_29EE52640;
    v11[4] = self;
    v14 = v8;
    v12 = writeCopy;
    v13 = mHostTime;
    dispatch_async(queue, v11);
  }

  return 0;
}

void __47__ADAMSpeechAnalysisWriter_write_withMetadata___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  [*(a1 + 32) _initSpeechAnalyzer];
  [*(a1 + 32) _addPendingRequest];
  v2 = objc_alloc_init(MEMORY[0x29EDBBE28]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) setShouldReportPartialResults:0];
  [*(*(a1 + 32) + 16) setRequiresOnDeviceRecognition:1];
  [*(*(a1 + 32) + 16) appendAudioPCMBuffer:*(a1 + 40)];
  v5 = [*(*(a1 + 32) + 8) recognitionTaskWithRequest:*(*(a1 + 32) + 16) delegate:?];
  if (*(a1 + 56) == 1)
  {
    objc_storeStrong((*(a1 + 32) + 144), v5);
  }

  [*(a1 + 32) _recordTimestamp:*(a1 + 48) forTask:v5];
  [*(*(a1 + 32) + 16) endAudio];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v6 = *ADAM::ADAMLogScope(void)::scope;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
    v7 = MEMORY[0x29EDCA988];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 16);
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v5];
    v11 = [*(a1 + 32) _getNumPendingRequests];
    v12 = *(a1 + 48);
    v18 = 136316674;
    v19 = "ADAMSpeechAnalysisWriter.mm";
    v20 = 1024;
    v21 = 257;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2048;
    v31 = v12;
    _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d -> SENT speech recognition request [ %@ ] with task [ %@ (%@)] requests pending: %llu timestamp: %llu", &v18, 0x44u);
  }

LABEL_12:
  v13 = *(*(a1 + 32) + 48);
  v14 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 30000000000);
  if (dispatch_semaphore_wait(v13, v14))
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v15 = *ADAM::ADAMLogScope(void)::scope;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
      v16 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 32) + 16);
      v18 = 136315906;
      v19 = "ADAMSpeechAnalysisWriter.mm";
      v20 = 1024;
      v21 = 267;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_296C34000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d error: request [%@] , task [%@] timed out...", &v18, 0x26u);
    }
  }

LABEL_22:
  [*(a1 + 32) destroyAndLogOSTransaction];
}

- (unint64_t)_fetchTimestampforTask:(id)task
{
  v29 = *MEMORY[0x29EDCA608];
  taskCopy = task;
  os_unfair_lock_lock(&self->_timestampLock);
  taskTimestamps = self->_taskTimestamps;
  v6 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
  v7 = [(NSMutableDictionary *)taskTimestamps objectForKey:v6];

  if (!v7)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v12 = *ADAM::ADAMLogScope(void)::scope;
      if (!v12)
      {
LABEL_20:
        unsignedLongLongValue = self->_lastTimestamp + 5;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
      v16 = MEMORY[0x29EDCA988];
    }

    v17 = v12;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
      lastTimestamp = self->_lastTimestamp;
      v21 = 136315906;
      v22 = "ADAMSpeechAnalysisWriter.mm";
      v23 = 1024;
      v24 = 206;
      v25 = 2112;
      v26 = v18;
      v27 = 2048;
      v28 = lastTimestamp;
      _os_log_impl(&dword_296C34000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d timestamp missing for task %@, last timestamp: %llu", &v21, 0x26u);
    }

    goto LABEL_20;
  }

  unsignedLongLongValue = [v7 unsignedLongLongValue];
  v9 = self->_taskTimestamps;
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
  [(NSMutableDictionary *)v9 removeObjectForKey:v10];

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v11 = *ADAM::ADAMLogScope(void)::scope;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
    v13 = MEMORY[0x29EDCA988];
  }

  v14 = v11;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
    v21 = 136315906;
    v22 = "ADAMSpeechAnalysisWriter.mm";
    v23 = 1024;
    v24 = 201;
    v25 = 2112;
    v26 = v15;
    v27 = 2048;
    v28 = unsignedLongLongValue;
    _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d removed timestamp for task %@, timestamp: %llu", &v21, 0x26u);
  }

LABEL_21:
  os_unfair_lock_unlock(&self->_timestampLock);

  return unsignedLongLongValue;
}

- (void)_recordTimestamp:(unint64_t)timestamp forTask:(id)task
{
  v28 = *MEMORY[0x29EDCA608];
  taskCopy = task;
  os_unfair_lock_lock(&self->_timestampLock);
  taskTimestamps = self->_taskTimestamps;
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
  v9 = [(NSMutableDictionary *)taskTimestamps objectForKey:v8];

  if (v9)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v10 = *ADAM::ADAMLogScope(void)::scope;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = MEMORY[0x29EDCA988];
      v15 = MEMORY[0x29EDCA988];
    }

    v16 = v10;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
      v20 = 136315650;
      v21 = "ADAMSpeechAnalysisWriter.mm";
      v22 = 1024;
      v23 = 184;
      v24 = 2112;
      timestampCopy = v17;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d timestamp already exists for task %@?", &v20, 0x1Cu);
    }
  }

  else
  {
    v11 = self->_taskTimestamps;
    v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:timestamp];
    v13 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v14 = *ADAM::ADAMLogScope(void)::scope;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = MEMORY[0x29EDCA988];
      v18 = MEMORY[0x29EDCA988];
    }

    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:taskCopy];
      v20 = 136315906;
      v21 = "ADAMSpeechAnalysisWriter.mm";
      v22 = 1024;
      v23 = 179;
      v24 = 2048;
      timestampCopy = timestamp;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Recorded timestamp (%llu) for task %@", &v20, 0x26u);
    }
  }

LABEL_19:
  os_unfair_lock_unlock(&self->_timestampLock);
}

- (BOOL)isMonitoring
{
  ADAM::Parameters::instance(self);
  if (ADAM::Parameters::GetParamValue<BOOL>(5u))
  {
    LOBYTE(isValidSRSensorWriterPresent) = 1;
  }

  else
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechMetricsSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechMetricsSRWriter isMonitoring];
      if (isValidSRSensorWriterPresent)
      {
        speechMetricsSRWriter = self->_speechMetricsSRWriter;

        LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)speechMetricsSRWriter isBundleIdentifierEligible];
      }
    }
  }

  return isValidSRSensorWriterPresent;
}

- (void)_initSpeechAnalyzer
{
  os_unfair_lock_lock(&self->_initLock);
  if (!self->_SpeechRecognizerInitialized)
  {
    v3 = objc_alloc(MEMORY[0x29EDBBE38]);
    v4 = [MEMORY[0x29EDB8DE0] localeWithLocaleIdentifier:@"en-US"];
    v5 = [v3 initWithLocale:v4];
    SpeechRecognizer = self->_SpeechRecognizer;
    self->_SpeechRecognizer = v5;

    SpeechRequest = self->_SpeechRequest;
    self->_SpeechRequest = 0;

    self->_SpeechRecognizerInitialized = 1;
  }

  os_unfair_lock_unlock(&self->_initLock);
}

- (ADAMSpeechAnalysisWriter)initWithWriterName:(id)name sessionID:(unsigned int)d audioFormat:(id)format speechMetricsSRWriter:(id)writer completionHandler:(id)handler
{
  v9 = *&d;
  v46 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  writerCopy = writer;
  handlerCopy = handler;
  v35.receiver = self;
  v35.super_class = ADAMSpeechAnalysisWriter;
  v14 = [(ADAMSpeechAnalysisWriter *)&v35 init];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = MEMORY[0x29C261430](handlerCopy);
  completionHandler = v14->_completionHandler;
  v14->_completionHandler = v15;

  v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", v9];
  sessionID = v14->_sessionID;
  v14->_sessionID = v17;

  {
    ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
  }

  v19 = ADAM::get_log(void)::adam_os_log;
  if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v37 = "ADAMSpeechAnalysisWriter.mm";
    v38 = 1024;
    v39 = 94;
    v40 = 1040;
    *v41 = 24;
    *&v41[4] = 2080;
    *&v41[6] = "ADAMSpeechAnalysisWriter]";
    v42 = 2048;
    v43 = v14;
    v44 = 1024;
    v45 = v9;
    _os_log_impl(&dword_296C34000, v19, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] Created with session ID: %d", buf, 0x32u);
  }

  atomic_store(0, &v14->_pendingRequestCount.__a_.__a_value);
  v14->_lastTimestamp = 0;
  *&v14->_timestampLock._os_unfair_lock_opaque = 0;
  v20 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  taskTimestamps = v14->_taskTimestamps;
  v14->_taskTimestamps = v20;

  lastBatchTask = v14->_lastBatchTask;
  v14->_lastBatchTask = 0;

  v14->_lastBatchTaskFinished = 0;
  v14->_resultCounterPerMinute = 0;
  v14->_firstAbsoluteTimestampPerMinute = 0.0;
  v14->_SpeechRecognizerInitialized = 0;
  v23 = dispatch_semaphore_create(0);
  throttlingSemaphore = v14->_throttlingSemaphore;
  v14->_throttlingSemaphore = v23;

  if ([(ADAMSpeechAnalysisWriter *)v14 isMonitoring])
  {
    [(ADAMSpeechAnalysisWriter *)v14 createAndLogOSTransaction];
  }

  v25 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"SiriUplink"];
  v26 = [nameCopy hasPrefix:v25];

  if (v26)
  {
    v27 = "SiriUplink";
LABEL_11:
    objc_storeStrong(&v14->_speechMetricsSRWriter, writer);
    v30 = dispatch_queue_create(v27, 0);
    queue = v14->_queue;
    v14->_queue = v30;

LABEL_12:
    v32 = v14;
    goto LABEL_13;
  }

  v28 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"TelephonyUplink"];
  v29 = [nameCopy hasPrefix:v28];

  if (v29)
  {
    v27 = "TelephonyUplink";
    goto LABEL_11;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v32 = *ADAM::ADAMLogScope(void)::scope;
    if (!v32)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v32 = MEMORY[0x29EDCA988];
    v34 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(&v32->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v37 = "ADAMSpeechAnalysisWriter.mm";
    v38 = 1024;
    v39 = 130;
    v40 = 2112;
    *v41 = nameCopy;
    _os_log_impl(&dword_296C34000, &v32->super, OS_LOG_TYPE_ERROR, "%25s:%-5d unknown audio buffer stream type: %@", buf, 0x1Cu);
  }

  v32 = 0;
LABEL_13:

  return v32;
}

- (void)destroyAndLogOSTransaction
{
  v9 = *MEMORY[0x29EDCA608];
  transaction = self->_transaction;
  self->_transaction = 0;

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v3 = *ADAM::ADAMLogScope(void)::scope;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "ADAMSpeechAnalysisWriter.mm";
    v7 = 1024;
    v8 = 80;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroyed os_transaction for speech", &v5, 0x12u);
  }
}

- (void)createAndLogOSTransaction
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "ADAMSpeechAnalysisWriter.mm";
    v9 = 1024;
    v10 = 74;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created os_transaction for speech", &v7, 0x12u);
  }
}

+ (id)censoredResultFromInputResult:(id)result
{
  v34 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  array = [MEMORY[0x29EDB8DE8] array];
  bestTranscription = [resultCopy bestTranscription];
  segments = [bestTranscription segments];

  if (segments)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    bestTranscription2 = [resultCopy bestTranscription];
    segments2 = [bestTranscription2 segments];
    v8 = resultCopy;

    v9 = [segments2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = *v30;
      v11 = MEMORY[0x29EDB8E90];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(segments2);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if (v13)
          {
            v14 = objc_alloc(MEMORY[0x29EDBBE48]);
            [v13 timestamp];
            v16 = v15;
            [v13 duration];
            v18 = v17;
            [v13 confidence];
            LODWORD(v20) = v19;
            v21 = [v14 _initWithSubstring:&stru_2A1DEEE38 range:0 timestamp:0 duration:v11 confidence:v11 alternativeSubstrings:&stru_2A1DEEE38 alternativeConfidences:v16 phoneSequence:v18 ipaPhoneSequence:v20 voiceAnalytics:{&stru_2A1DEEE38, 0}];
            [array addObject:v21];
          }
        }

        v9 = [segments2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    resultCopy = v8;
  }

  v22 = [objc_alloc(MEMORY[0x29EDBBE40]) _initWithSegments:array formattedString:&stru_2A1DEEE38 speakingRate:0.0 averagePauseDuration:0.0];
  v23 = objc_alloc(MEMORY[0x29EDBBE30]);
  isFinal = [resultCopy isFinal];
  speechRecognitionMetadata = [resultCopy speechRecognitionMetadata];
  v26 = [v23 _initWithBestTranscription:v22 rawTranscription:0 final:isFinal speechRecognitionMetadata:speechRecognitionMetadata];

  return v26;
}

@end