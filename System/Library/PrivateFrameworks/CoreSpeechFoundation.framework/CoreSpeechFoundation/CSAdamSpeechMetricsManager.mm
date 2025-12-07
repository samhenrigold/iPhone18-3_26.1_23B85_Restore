@interface CSAdamSpeechMetricsManager
- (CSAdamSpeechMetricsManager)init;
- (int)audioIssueDetectorAnalyzeBuffer:(AudioBufferList *)buffer numFrames:(unsigned int)frames hostTime:(unint64_t)time;
- (int)setAudioIssueDetectorFormat:(AudioStreamBasicDescription *)format numFrames:(unsigned int)frames;
- (void)dealloc;
- (void)stopAndDispose;
- (void)updateWithNewReporterID;
@end

@implementation CSAdamSpeechMetricsManager

- (int)audioIssueDetectorAnalyzeBuffer:(AudioBufferList *)buffer numFrames:(unsigned int)frames hostTime:(unint64_t)time
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v11[0] = 0;
  v12 = 0u;
  v11[1] = time;
  v14 = 0;
  v15 = 2;
  adamClientSessionId = self->_adamClientSessionId;
  if (adamClientSessionId == 561211748)
  {
    return 0;
  }

  v7 = *&frames;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v6 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId, 0, buffer, v7, v11);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 560033897;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[CSAdamSpeechMetricsManager audioIssueDetectorAnalyzeBuffer:numFrames:hostTime:]";
    v18 = 1024;
    v19 = v6;
    _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s ADAMClientProcessAudio is failing with error: %d", buf, 0x12u);
  }

  return v6;
}

- (void)stopAndDispose
{
  v7 = *MEMORY[0x1E69E9840];
  adamClientSessionId = self->_adamClientSessionId;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId);
  }

  self->_isDisposed = 1;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAdamSpeechMetricsManager stopAndDispose]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAdamSpeechMetricsManager stopAndDispose", &v5, 0xCu);
  }
}

- (int)setAudioIssueDetectorFormat:(AudioStreamBasicDescription *)format numFrames:(unsigned int)frames
{
  v16 = *MEMORY[0x1E69E9840];
  adamClientSessionId = self->_adamClientSessionId;
  if (adamClientSessionId == 561211748)
  {
    return 0;
  }

  v6 = *&frames;
  v15 = 16;
  strcpy(__p, "avvc-recordQueue");
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (!AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v5 = 560033897;
    goto LABEL_11;
  }

  v9 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId, 0, __p, format, v6, 0);
  v5 = v9;
  if (v15 < 0)
  {
    operator delete(*__p);
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_11:
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      return v5;
    }

    *__p = 136315394;
    *&__p[4] = "[CSAdamSpeechMetricsManager setAudioIssueDetectorFormat:numFrames:]";
    *&__p[12] = 1024;
    *&__p[14] = v5;
    v13 = "%s ADAMClientCreateNodePCM is failing with error: %d";
LABEL_22:
    _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, v13, __p, 0x12u);
    return v5;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_13:
  v12 = self->_adamClientSessionId;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v5 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(v12);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = 560033897;
  }

  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *__p = 136315394;
    *&__p[4] = "[CSAdamSpeechMetricsManager setAudioIssueDetectorFormat:numFrames:]";
    *&__p[12] = 1024;
    *&__p[14] = v5;
    v13 = "%s ADAMClientInitialize is failing with error: %d";
    goto LABEL_22;
  }

  return v5;
}

- (void)updateWithNewReporterID
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E6958468] = [MEMORY[0x1E6958468] sharedInstance];
  reporterID = [mEMORY[0x1E6958468] reporterID];

  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSAdamSpeechMetricsManager updateWithNewReporterID]";
    *&buf[12] = 2048;
    *&buf[14] = reporterID;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s New reporterId is generated: %lld", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  if (reporterID)
  {
    operator new();
  }

  adamClientSessionId = self->_adamClientSessionId;
  if (adamClientSessionId != 561211748)
  {
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      v7 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId, buf);
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 560033897;
    }

    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CSAdamSpeechMetricsManager updateWithNewReporterID]";
      v11 = 1024;
      v12 = v7;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s ADAMClientUpdateReportingSessions is failing with error: %d", &v9, 0x12u);
    }
  }

LABEL_14:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_isDisposed)
  {
    adamClientSessionId = self->_adamClientSessionId;
    if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
    }

    if (AudioDataAnalysisManagerLibraryLoader(void)::libSym)
    {
      AudioDataAnalysisManagerLibraryLoader(void)::libSym(adamClientSessionId);
    }
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSAdamSpeechMetricsManager dealloc]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAdamSpeechMetricsManager dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = CSAdamSpeechMetricsManager;
  [(CSAdamSpeechMetricsManager *)&v5 dealloc];
}

- (CSAdamSpeechMetricsManager)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CSAdamSpeechMetricsManager;
  v2 = [(CSAdamSpeechMetricsManager *)&v10 init];
  if (!v2)
  {
    goto LABEL_14;
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  if (AudioDataAnalysisManagerLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioDataAnalysisManagerLibraryLoader(void)::once, &__block_literal_global_11614);
  }

  if (!AudioDataAnalysisManagerLibraryLoader(void)::libSym)
  {
    v2->_adamClientSessionId = 560033897;
    v2->_isDisposed = 0;
LABEL_14:
    v5 = v2;
    goto LABEL_15;
  }

  v3 = AudioDataAnalysisManagerLibraryLoader(void)::libSym(4, &__p);
  v2->_adamClientSessionId = v3;
  v2->_isDisposed = 0;
  if (v3 != 561211748)
  {
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    goto LABEL_14;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = "[CSAdamSpeechMetricsManager init]";
    _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Failed to create Adam client", buf, 0xCu);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  v5 = 0;
LABEL_15:

  return v5;
}

@end