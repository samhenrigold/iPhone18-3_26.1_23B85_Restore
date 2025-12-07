@interface ADAMSoundAnalysisWriter
- (ADAMSoundAnalysisWriter)initWithWriterName:(id)name sessionID:(unsigned int)d audioFormat:(id)format speechMetricsSRWriter:(id)writer soundDetectionSRWriter:(id)rWriter speechEmotionSRWriter:(id)sRWriter completionHandler:(id)handler;
- (BOOL)_isMonitoringEmotion;
- (BOOL)_isMonitoringSoundDetection;
- (BOOL)_isMonitoringSpeechMetrics;
- (BOOL)isMonitoring;
- (BOOL)verifyStateInit;
- (BOOL)verifyStateOn;
- (id).cxx_construct;
- (int)write:(id)write withMetadata:(const Metadata *)metadata;
- (void)_initializeSoundAnalyzer;
- (void)_setProcessing:(BOOL)processing;
- (void)createAndLogOSTransaction;
- (void)destroyAndLogOSTransaction;
- (void)logResultCountAndFirstTimeStamp;
- (void)reinitializeSpeechEmotionRequest;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
- (void)sendCachedDetectionResultsToSensorKit;
@end

@implementation ADAMSoundAnalysisWriter

- (id).cxx_construct
{
  *(self + 152) = 0;
  *(self + 160) = 0;
  *(self + 184) = 0;
  *(self + 192) = 0;
  *(self + 30) = 0;
  *(self + 29) = self + 240;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 31) = 0;
  *(self + 32) = self + 264;
  return self;
}

- (BOOL)isMonitoring
{
  if ([(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion]|| [(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection])
  {
    return 1;
  }

  return [(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics];
}

- (BOOL)_isMonitoringEmotion
{
  ADAM::Parameters::instance(self);
  if (ADAM::Parameters::GetParamValue<BOOL>(5u))
  {
    LOBYTE(isValidSRSensorWriterPresent) = 1;
  }

  else
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isMonitoring];
      if (isValidSRSensorWriterPresent)
      {
        speechEmotionSRWriter = self->_speechEmotionSRWriter;

        LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)speechEmotionSRWriter isBundleIdentifierEligible];
      }
    }
  }

  return isValidSRSensorWriterPresent;
}

- (BOOL)_isMonitoringSoundDetection
{
  ADAM::Parameters::instance(self);
  if (ADAM::Parameters::GetParamValue<BOOL>(5u))
  {
    LOBYTE(isValidSRSensorWriterPresent) = 1;
  }

  else
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_soundDetectionSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_soundDetectionSRWriter isMonitoring];
      if (isValidSRSensorWriterPresent)
      {
        soundDetectionSRWriter = self->_soundDetectionSRWriter;

        LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)soundDetectionSRWriter isBundleIdentifierEligible];
      }
    }
  }

  return isValidSRSensorWriterPresent;
}

- (BOOL)_isMonitoringSpeechMetrics
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

- (void)sendCachedDetectionResultsToSensorKit
{
  v65 = *MEMORY[0x29EDCA608];
  begin_node = self->_detectionCachedTimestamps.__tree_.__begin_node_;
  p_end_node = &self->_detectionCachedTimestamps.__tree_.__end_node_;
  if (begin_node != &self->_detectionCachedTimestamps.__tree_.__end_node_)
  {
    v4 = 0;
    while (1)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v41 = begin_node;
      frameCnt = begin_node->_frameCnt;
      p_frameCnt = &begin_node->_frameCnt;
      *buf = &begin_node->_frameCnt;
      obj = std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_detectionCachedResultMap, frameCnt, buf)[5];
      v6 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
      if (v6)
      {
        break;
      }

LABEL_37:

      v36 = v41;
      SNAnalyzer = v41->_SNAnalyzer;
      if (SNAnalyzer)
      {
        do
        {
          left = SNAnalyzer;
          SNAnalyzer = SNAnalyzer->super.isa;
        }

        while (SNAnalyzer);
      }

      else
      {
        do
        {
          left = v36[2].__left_;
          v39 = left->__left_ == v36;
          v36 = left;
        }

        while (!v39);
      }

      begin_node = left;
      if (left == p_end_node)
      {
        goto LABEL_45;
      }
    }

    LODWORD(v7) = 0;
    v43 = *v52;
LABEL_5:
    v44 = v6;
    v8 = 0;
    v7 = v7;
    while (1)
    {
      if (*v52 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v51 + 1) + 8 * v8);
      v10 = *p_frameCnt;
      if ([(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection])
      {
        v11 = v7 + v10;
        soundDetectionSRWriter = self->_soundDetectionSRWriter;
        v50 = v4;
        [(ADAMSRSensorWriter *)soundDetectionSRWriter provideSample:v9 continuousTimestamp:v7 + v10 error:&v50];
        v13 = v50;

        if (v13)
        {
          {
            ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
          }

          v14 = ADAM::get_log(void)::adam_os_log;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = SRAbsoluteTimeFromContinuousTime(v11);
            *buf = 136317186;
            *&buf[4] = "ADAMSoundAnalysisWriter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 607;
            *&buf[18] = 1040;
            *&buf[20] = 23;
            *&buf[24] = 2080;
            *&buf[26] = "ADAMSoundAnalysisWriter]";
            *&buf[34] = 2048;
            *&buf[36] = self;
            *&buf[44] = 2112;
            *&buf[46] = v9;
            v58 = 2048;
            v59 = v11;
            v60 = 2048;
            v61 = v15;
            v62 = 2112;
            v63 = v13;
            _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] failed to write SNDetectionResult result to SensorKit: %@, timestamp: continuous %llu, absolute %f, err: %@", buf, 0x54u);
          }

          v4 = v13;
        }

        else
        {
          v4 = 0;
        }
      }

      if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
      {
        goto LABEL_28;
      }

      identifier = [v9 identifier];
      v55 = identifier;
      v17 = MEMORY[0x29EDBA070];
      [v9 confidence];
      v18 = [v17 numberWithDouble:?];
      v56 = v18;
      v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

      v20 = [objc_alloc(MEMORY[0x29EDBBDC0]) initWithClassificationDictionary:v19];
      if (v9)
      {
        objc_msgSend_timeRange(v9);
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
      }

      *buf = v47;
      *&buf[16] = v48;
      *&buf[32] = v49;
      [v20 setTimeRange:buf];
      v21 = objc_alloc(MEMORY[0x29EDBBD00]);
      sessionID = self->_sessionID;
      v23 = SRAbsoluteTimeFromContinuousTime(*p_frameCnt);
      v24 = [v21 initWithSessionIdentifier:sessionID sessionFlags:0 timestamp:0 audioLevel:0 speechRecognition:v20 soundClassification:0 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v23)];
      speechMetricsSRWriter = self->_speechMetricsSRWriter;
      v46 = v4;
      [(ADAMSRSensorWriter *)speechMetricsSRWriter provideSample:v24 error:&v46];
      v26 = v46;

      if (v26)
      {
        {
          ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
        }

        v27 = ADAM::get_log(void)::adam_os_log;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v28 = *p_frameCnt;
        v29 = SRAbsoluteTimeFromContinuousTime(*p_frameCnt);
        *buf = 136317186;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 624;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v24;
        v58 = 2048;
        v59 = v28;
        v60 = 2048;
        v61 = v29;
        v62 = 2112;
        v63 = v26;
        v30 = v27;
        v31 = OS_LOG_TYPE_ERROR;
        v32 = "[%s:%-5d %.*s:%p] failed to write SRSpeechMetrics result to SensorKit: %@, timestamp: continuous %llu, absolute %f, err: %@";
        v33 = 84;
      }

      else
      {
        ++self->_detectionResultCounterPerMinute;
        {
          ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
        }

        v27 = ADAM::get_log(void)::adam_os_log;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        v34 = *p_frameCnt;
        v35 = SRAbsoluteTimeFromContinuousTime(*p_frameCnt);
        *buf = 136316930;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 629;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v24;
        v58 = 2048;
        v59 = v34;
        v60 = 2048;
        v61 = v35;
        v30 = v27;
        v31 = OS_LOG_TYPE_DEBUG;
        v32 = "[%s:%-5d %.*s:%p] Write SRSpeechMetrics result: %@, timestamp: continuous %llu, absolute %f";
        v33 = 74;
      }

      _os_log_impl(&dword_296C34000, v30, v31, v32, buf, v33);
LABEL_27:

      v4 = v26;
LABEL_28:
      v7 += 5;
      if (v44 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (!v6)
        {
          goto LABEL_37;
        }

        goto LABEL_5;
      }
    }
  }

  v4 = 0;
LABEL_45:
  std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(self->_detectionCachedResultMap.__tree_.__end_node_.__left_);
  self->_detectionCachedResultMap.__tree_.__end_node_.__left_ = 0;
  self->_detectionCachedResultMap.__tree_.__size_ = 0;
  self->_detectionCachedResultMap.__tree_.__begin_node_ = &self->_detectionCachedResultMap.__tree_.__end_node_;
  std::__tree<ADAM::EndPointBitMask>::destroy(self->_detectionCachedTimestamps.__tree_.__end_node_.__left_);
  self->_detectionCachedTimestamps.__tree_.__end_node_.__left_ = 0;
  self->_detectionCachedTimestamps.__tree_.__size_ = 0;
  self->_detectionCachedTimestamps.__tree_.__begin_node_ = p_end_node;
}

- (void)logResultCountAndFirstTimeStamp
{
  v27 = *MEMORY[0x29EDCA608];
  if (self->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v3 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
    {
      detectionResultCounterPerMinute = self->_detectionResultCounterPerMinute;
      v13 = 136316418;
      v14 = "ADAMSoundAnalysisWriter.mm";
      v15 = 1024;
      v16 = 566;
      v17 = 1040;
      v18 = 23;
      v19 = 2080;
      v20 = "ADAMSoundAnalysisWriter]";
      v21 = 2048;
      selfCopy4 = self;
      v23 = 1024;
      LODWORD(v24) = detectionResultCounterPerMinute;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] # detection results sent previous minute : %d", &v13, 0x32u);
    }

    self->_detectionResultCounterPerMinute = 0;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v5 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (!self->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      val = self->_detectionFirstContinuousTimeStampPerMinute.var0.__val_;
      detectionFirstAbsoluteTimestampPerMinute = self->_detectionFirstAbsoluteTimestampPerMinute;
      v13 = 136316674;
      v14 = "ADAMSoundAnalysisWriter.mm";
      v15 = 1024;
      v16 = 569;
      v17 = 1040;
      v18 = 23;
      v19 = 2080;
      v20 = "ADAMSoundAnalysisWriter]";
      v21 = 2048;
      selfCopy4 = self;
      v23 = 2048;
      v24 = val;
      v25 = 2048;
      v26 = detectionFirstAbsoluteTimestampPerMinute;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] first detection timestamp of previous minute : continuous %llu, absolute %f", &v13, 0x40u);
    }

    if (self->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
    {
      self->_detectionFirstContinuousTimeStampPerMinute.__engaged_ = 0;
    }
  }

  if (self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v8 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
    {
      emotionResultCounterPerMinute = self->_emotionResultCounterPerMinute;
      v13 = 136316418;
      v14 = "ADAMSoundAnalysisWriter.mm";
      v15 = 1024;
      v16 = 575;
      v17 = 1040;
      v18 = 23;
      v19 = 2080;
      v20 = "ADAMSoundAnalysisWriter]";
      v21 = 2048;
      selfCopy4 = self;
      v23 = 1024;
      LODWORD(v24) = emotionResultCounterPerMinute;
      _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] # emotion results sent previous minute : %d", &v13, 0x32u);
    }

    self->_emotionResultCounterPerMinute = 0;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v10 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (!self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v11 = self->_emotionFirstContinuousTimeStampPerMinute.var0.__val_;
      emotionFirstAbsoluteTimestampPerMinute = self->_emotionFirstAbsoluteTimestampPerMinute;
      v13 = 136316674;
      v14 = "ADAMSoundAnalysisWriter.mm";
      v15 = 1024;
      v16 = 578;
      v17 = 1040;
      v18 = 23;
      v19 = 2080;
      v20 = "ADAMSoundAnalysisWriter]";
      v21 = 2048;
      selfCopy4 = self;
      v23 = 2048;
      v24 = v11;
      v25 = 2048;
      v26 = emotionFirstAbsoluteTimestampPerMinute;
      _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] first emotion timestamps of previous minute : continuous %llu, absolute %f", &v13, 0x40u);
    }

    if (self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
    {
      self->_emotionFirstContinuousTimeStampPerMinute.__engaged_ = 0;
    }
  }
}

- (BOOL)verifyStateOn
{
  isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isValidSRSensorWriterPresent];
  if (isValidSRSensorWriterPresent)
  {
    soundDetectionSRWriter = self->_soundDetectionSRWriter;

    LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)soundDetectionSRWriter isValidSRSensorWriterPresent];
  }

  return isValidSRSensorWriterPresent;
}

- (BOOL)verifyStateInit
{
  isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isValidSRSensorWriterPresent];
  if (isValidSRSensorWriterPresent)
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_soundDetectionSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      LOBYTE(isValidSRSensorWriterPresent) = self->_SNAnalyzer == 0;
    }
  }

  return isValidSRSensorWriterPresent;
}

- (void)requestDidComplete:(id)complete
{
  v14 = *MEMORY[0x29EDCA608];
  completeCopy = complete;
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
    v8 = 136315650;
    v9 = "ADAMSoundAnalysisWriter.mm";
    v10 = 1024;
    v11 = 542;
    v12 = 2112;
    v13 = completeCopy;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SN Request: %@ did complete", &v8, 0x1Cu);
  }

LABEL_10:
  [(NSMutableArray *)self->_requests removeObject:completeCopy];
  if (![(NSMutableArray *)self->_requests count])
  {
    completeHandler = self->_completeHandler;
    if (completeHandler)
    {
      completeHandler[2](completeHandler, 0);
    }
  }
}

- (void)request:(id)request didFailWithError:(id)error
{
  v17 = *MEMORY[0x29EDCA608];
  requestCopy = request;
  errorCopy = error;
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "ADAMSoundAnalysisWriter.mm";
    v11 = 1024;
    v12 = 535;
    v13 = 2112;
    v14 = requestCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SN Request: %@ failed with error: %@", &v9, 0x26u);
  }

LABEL_10:
}

- (void)request:(id)request didProduceResult:(id)result
{
  v111 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  if (ADAM::isXCTest(void)::once != -1)
  {
    dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
  }

  if (ADAM::isXCTest(void)::isXCTest)
  {
    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion]&& ![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
    {
      goto LABEL_82;
    }

    v6 = resultCopy;
    speechEmotionTimestamp = self->_speechEmotionTimestamp;
    cont = 0;
    *buf = 0;
    mach_get_times();
    v8 = speechEmotionTimestamp;
    if (!self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
    {
      self->_emotionFirstAbsoluteTimestampPerMinute = SRAbsoluteTimeFromContinuousTime(*buf + speechEmotionTimestamp - cont);
      self->_emotionFirstContinuousTimeStampPerMinute.var0.__val_ = speechEmotionTimestamp;
      self->_emotionFirstContinuousTimeStampPerMinute.__engaged_ = 1;
    }

    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion])
    {
      v10 = 0;
      goto LABEL_59;
    }

    speechEmotionSRWriter = self->_speechEmotionSRWriter;
    v104 = 0;
    [(ADAMSRSensorWriter *)speechEmotionSRWriter provideSample:v6 continuousTimestamp:speechEmotionTimestamp error:&v104];
    v10 = v104;
    if (!v10)
    {
      goto LABEL_59;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v46 = MEMORY[0x29EDCA988];
    }

    v47 = v11;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = SRAbsoluteTimeFromContinuousTime(v8);
      *buf = 136316418;
      *&buf[4] = "ADAMSoundAnalysisWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 415;
      *&buf[18] = 2112;
      *&buf[20] = v6;
      *&buf[28] = 2048;
      *&buf[30] = v8;
      *&buf[38] = 2048;
      *&buf[40] = v48;
      *&buf[48] = 2112;
      *&buf[50] = v10;
      _os_log_impl(&dword_296C34000, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d failed to write SNSpeechEmotionResult result to SensorKit: %@, continuous timestamp: continuous %llu, absolute %f, err: %@", buf, 0x3Au);
    }

LABEL_59:
    v49 = objc_alloc(MEMORY[0x29EDBBCF8]);
    v50 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"1"];
    if (v6)
    {
      objc_msgSend_timeRange(v6);
    }

    else
    {
      memset(buf, 0, 48);
    }

    [v6 confidence];
    v52 = v51;
    [v6 mood];
    v54 = v53;
    [v6 valence];
    v56 = v55;
    [v6 arousal];
    v58 = v57;
    [v6 dominance];
    v60 = [v49 initWithVersion:v50 timeRange:buf confidence:v52 mood:v54 valence:v56 activation:v58 dominance:v59];

    v61 = objc_alloc(MEMORY[0x29EDBBD00]);
    sessionID = self->_sessionID;
    v63 = SRAbsoluteTimeFromContinuousTime(v8);
    v64 = [v61 initWithSessionIdentifier:sessionID sessionFlags:0 timestamp:0 audioLevel:0 speechRecognition:0 soundClassification:v60 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v63)];
    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
    {
      goto LABEL_78;
    }

    speechMetricsSRWriter = self->_speechMetricsSRWriter;
    v103 = 0;
    [(ADAMSRSensorWriter *)speechMetricsSRWriter provideSample:v64 error:&v103];
    v68 = v103;
    if (v68)
    {
      v10 = v68;
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v69 = *ADAM::ADAMLogScope(void)::scope;
        if (!v69)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v69 = MEMORY[0x29EDCA988];
        v72 = MEMORY[0x29EDCA988];
      }

      v70 = v69;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v73 = SRAbsoluteTimeFromContinuousTime(v8);
        *buf = 136316418;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 432;
        *&buf[18] = 2112;
        *&buf[20] = v64;
        *&buf[28] = 2048;
        *&buf[30] = v8;
        *&buf[38] = 2048;
        *&buf[40] = v73;
        *&buf[48] = 2112;
        *&buf[50] = v10;
        _os_log_impl(&dword_296C34000, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d failed to write SRSpeechMetrics result to SensorKit: %@, continuous timestamp: continuous %llu, absolute %f, err: %@", buf, 0x3Au);
      }
    }

    else
    {
      ++self->_emotionResultCounterPerMinute;
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v70 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v71 = SRAbsoluteTimeFromContinuousTime(v8);
        *buf = 136316930;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 438;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v64;
        *&buf[54] = 2048;
        *&buf[56] = v8;
        v107 = 2048;
        v108 = v71;
        _os_log_impl(&dword_296C34000, v70, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Write SpeechExpression result: %@, timestamp: continuous %llu, absolute %f", buf, 0x4Au);
      }

      v10 = 0;
    }

LABEL_78:
    v74 = self->_speechEmotionTimestamp;
    if (v6)
    {
      objc_msgSend_timeRange(v6);
      v76 = *&buf[24];
      v77 = *&buf[32];
    }

    else
    {
      v77 = 0;
      v76 = 0;
      v75 = 0.0;
      memset(buf, 0, 48);
    }

    self->_speechEmotionTimestamp = ADAM::absoluteTimeFromCMTimeRange(v74, v76, v77, v75, v65, v66);

    goto LABEL_82;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v21 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 527;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = resultCopy;
        _os_log_impl(&dword_296C34000, v21, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] Unknown SN result: %@", buf, 0x36u);
      }

      goto LABEL_82;
    }

    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
    {
      goto LABEL_82;
    }

    v18 = resultCopy;
    audioLevelTimestamp = self->_audioLevelTimestamp;
    cont = 0;
    *buf = 0;
    mach_get_times();
    v20 = objc_alloc(MEMORY[0x29EDBBCE8]);
    if (v18)
    {
      objc_msgSend_timeRange(v18);
    }

    else
    {
      memset(buf, 0, 48);
    }

    [v18 decibelLevel];
    v79 = [v20 initWithTimeRange:buf loudness:v78];
    v80 = objc_alloc(MEMORY[0x29EDBBD00]);
    v81 = audioLevelTimestamp;
    v82 = self->_sessionID;
    v83 = SRAbsoluteTimeFromContinuousTime(v81);
    v84 = [v80 initWithSessionIdentifier:v82 sessionFlags:0 timestamp:v79 audioLevel:0 speechRecognition:0 soundClassification:0 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v83)];
    v85 = self->_speechMetricsSRWriter;
    v102 = 0;
    [(ADAMSRSensorWriter *)v85 provideSample:v84 error:&v102];
    v86 = v102;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v87 = ADAM::get_log(void)::adam_os_log;
    v88 = v87;
    if (v86)
    {
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        v89 = SRAbsoluteTimeFromContinuousTime(v81);
        *buf = 136317186;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 513;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v84;
        *&buf[54] = 2048;
        *&buf[56] = v81;
        v107 = 2048;
        v108 = v89;
        v109 = 2112;
        v110 = v86;
        v90 = "[%s:%-5d %.*s:%p] failed to write SNLKFSResult result to SensorKit: %@, continuous timestamp: continuous %llu, absolute %f, err: %@";
        v91 = v88;
        v92 = OS_LOG_TYPE_ERROR;
        v93 = 84;
LABEL_93:
        _os_log_impl(&dword_296C34000, v91, v92, v90, buf, v93);
      }
    }

    else if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
    {
      v95 = SRAbsoluteTimeFromContinuousTime(v81);
      *buf = 136316930;
      *&buf[4] = "ADAMSoundAnalysisWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 518;
      *&buf[18] = 1040;
      *&buf[20] = 23;
      *&buf[24] = 2080;
      *&buf[26] = "ADAMSoundAnalysisWriter]";
      *&buf[34] = 2048;
      *&buf[36] = self;
      *&buf[44] = 2112;
      *&buf[46] = v84;
      *&buf[54] = 2048;
      *&buf[56] = v81;
      v107 = 2048;
      v108 = v95;
      v90 = "[%s:%-5d %.*s:%p] Write SNLKFSResult result: %@, timestamp: continuous %llu, absolute %f";
      v91 = v88;
      v92 = OS_LOG_TYPE_DEBUG;
      v93 = 74;
      goto LABEL_93;
    }

    v98 = self->_audioLevelTimestamp;
    if (v18)
    {
      objc_msgSend_timeRange(v18);
      v100 = *&buf[24];
      v101 = *&buf[32];
    }

    else
    {
      v101 = 0;
      v100 = 0;
      v99 = 0.0;
      memset(buf, 0, 48);
    }

    self->_audioLevelTimestamp = ADAM::absoluteTimeFromCMTimeRange(v98, v100, v101, v99, v96, v97);

    goto LABEL_82;
  }

  if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection]&& ![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
  {
    goto LABEL_82;
  }

  v12 = resultCopy;
  selfCopy = self;
  v14 = v12;
  identifier = [v14 identifier];
  v16 = [identifier isEqualToString:*MEMORY[0x29EDBBE10]];

  if (v16)
  {
    v17 = 208;
  }

  else
  {
    identifier2 = [v14 identifier];
    v23 = [identifier2 isEqualToString:*MEMORY[0x29EDBBE18]];

    if (v23)
    {
      v17 = 216;
    }

    else
    {
      identifier3 = [v14 identifier];
      v25 = [identifier3 isEqualToString:*MEMORY[0x29EDBBE20]];

      if (!v25)
      {
        v94 = ADAM::get_log(v26);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "ADAMSoundAnalysisWriter.mm";
          *&buf[12] = 1024;
          *&buf[14] = 490;
          *&buf[18] = 1040;
          *&buf[20] = 23;
          *&buf[24] = 2080;
          *&buf[26] = "ADAMSoundAnalysisWriter]";
          *&buf[34] = 2048;
          *&buf[36] = selfCopy;
          *&buf[44] = 2112;
          *&buf[46] = v14;
          _os_log_impl(&dword_296C34000, v94, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] Unknown SNDetection result: %@", buf, 0x36u);
        }

        goto LABEL_82;
      }

      v17 = 224;
    }
  }

  v27 = *(&selfCopy->super.isa + v17);
  *buf = 0;
  mach_get_times();
  v28 = v27;
  cont = v27;
  left = selfCopy->_detectionCachedTimestamps.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_41;
  }

  p_end_node = &selfCopy->_detectionCachedTimestamps.__tree_.__end_node_;
  do
  {
    frameCnt = left->_frameCnt;
    v32 = frameCnt >= v27;
    v33 = frameCnt < v27;
    if (v32)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + v33);
  }

  while (left);
  if (p_end_node == &selfCopy->_detectionCachedTimestamps.__tree_.__end_node_ || v27 < p_end_node->_frameCnt)
  {
LABEL_41:
    v34 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:3];
    *buf = &cont;
    v35 = std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&selfCopy->_detectionCachedResultMap, cont, buf);
    v36 = v35[5];
    v35[5] = v34;

    v28 = cont;
  }

  *buf = &cont;
  [std::__tree<std::__value_type<unsigned long long NSMutableArray * {:std::__map_value_compare<unsigned long long :{std::__value_type<unsigned long long, NSMutableArray * {__strong}>, std::less<unsigned long long>, true>, std::allocator<std::__value_type<unsigned long long, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(&selfCopy->_detectionCachedResultMap, v28, buf)[5], "addObject:", v14}strong}>];
  v39 = selfCopy->_detectionCachedTimestamps.__tree_.__end_node_.__left_;
  if (!v39)
  {
LABEL_48:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v40 = v39;
      v41 = v39[4];
      if (cont >= v41)
      {
        break;
      }

      v39 = *v40;
      if (!*v40)
      {
        goto LABEL_48;
      }
    }

    if (v41 >= cont)
    {
      break;
    }

    v39 = v40[1];
    if (!v39)
    {
      goto LABEL_48;
    }
  }

  v42 = *(&selfCopy->super.isa + v17);
  if (v14)
  {
    objc_msgSend_timeRange(v14);
    v44 = *&buf[24];
    v45 = *&buf[32];
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v43 = 0.0;
    memset(buf, 0, 48);
  }

  *(&selfCopy->super.isa + v17) = ADAM::absoluteTimeFromCMTimeRange(v42, v44, v45, v43, v37, v38);
  if (!selfCopy->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
  {
    selfCopy->_detectionFirstAbsoluteTimestampPerMinute = SRAbsoluteTimeFromContinuousTime(cont);
    selfCopy->_detectionFirstContinuousTimeStampPerMinute.var0.__val_ = cont;
    selfCopy->_detectionFirstContinuousTimeStampPerMinute.__engaged_ = 1;
  }

LABEL_82:
}

- (void)_setProcessing:(BOOL)processing
{
  os_unfair_lock_lock(&self->_statusLock);
  self->_processing = processing;

  os_unfair_lock_unlock(&self->_statusLock);
}

- (int)write:(id)write withMetadata:(const Metadata *)metadata
{
  v22 = *MEMORY[0x29EDCA608];
  writeCopy = write;
  if ([(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion]|| [(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection]|| [(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
  {
    if (!self->_transaction)
    {
      [(ADAMSoundAnalysisWriter *)self createAndLogOSTransaction];
    }

    v7 = metadata->var2 != 0;
    mHostTime = metadata->var0.mHostTime;
    queue = self->_queue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __46__ADAMSoundAnalysisWriter_write_withMetadata___block_invoke;
    block[3] = &unk_29EE525A0;
    block[4] = self;
    v15 = mHostTime;
    v14 = writeCopy;
    metadataCopy = metadata;
    v17 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "ADAMSoundAnalysisWriter.mm";
      v20 = 1024;
      v21 = 372;
      _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d emotion and detection not being monitored...", buf, 0x12u);
    }
  }

LABEL_7:

  return 0;
}

uint64_t __46__ADAMSoundAnalysisWriter_write_withMetadata___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  [*(a1 + 32) _initializeSoundAnalyzer];
  v2 = *(a1 + 32);
  if (v2[97] == 1)
  {
    v3 = v2[96];
    if (((-64 * v3) | ((-85 * v3) >> 2)) <= 0x15u)
    {
      [v2 reinitializeSpeechEmotionRequest];
      v2 = *(a1 + 32);
      v3 = v2[96];
    }

    v2[96] = v3 + 1;
    *(*(a1 + 32) + 96) %= 0xCu;
  }

  else
  {
    [v2 reinitializeSpeechEmotionRequest];
  }

  [*(a1 + 32) _setProcessing:1];
  v4 = *(a1 + 48);
  *(*(a1 + 32) + 40) = v4;
  *(*(a1 + 32) + 208) = v4;
  v5 = *(a1 + 48);
  *(*(a1 + 32) + 216) = v5;
  *(*(a1 + 32) + 224) = v5;
  *(*(a1 + 32) + 280) = *(a1 + 48);
  [*(*(a1 + 32) + 8) analyzeAudioBuffer:*(a1 + 40) atAudioFramePosition:*(*(a1 + 32) + 32)];
  [*(a1 + 32) sendCachedDetectionResultsToSensorKit];
  [*(a1 + 32) logResultCountAndFirstTimeStamp];
  *(*(a1 + 32) + 32) += *(*(a1 + 56) + 64);
  [*(a1 + 32) _setProcessing:0];
  if (*(a1 + 64) == 1)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v6 = *ADAM::ADAMLogScope(void)::scope;
      if (!v6)
      {
LABEL_16:
        *(*(a1 + 32) + 68) = 1;
        [*(*(a1 + 32) + 8) completeAnalysis];
        return [*(a1 + 32) destroyAndLogOSTransaction];
      }
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "ADAMSoundAnalysisWriter.mm";
      v11 = 1024;
      v12 = 361;
      _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sending the last batch of audio data to SoundAnalysis", &v9, 0x12u);
    }

    goto LABEL_16;
  }

  return [*(a1 + 32) destroyAndLogOSTransaction];
}

- (void)reinitializeSpeechEmotionRequest
{
  v27 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained(&self->_speechEmotionRequest);

  if (WeakRetained)
  {
    SNAnalyzer = self->_SNAnalyzer;
    v5 = objc_loadWeakRetained(&self->_speechEmotionRequest);
    [(SNAudioStreamAnalyzer *)SNAnalyzer removeRequest:v5];

    requests = self->_requests;
    v7 = objc_loadWeakRetained(&self->_speechEmotionRequest);
    [(NSMutableArray *)requests removeObject:v7];

    objc_storeWeak(&self->_speechEmotionRequest, 0);
  }

  v8 = objc_alloc_init(MEMORY[0x29EDBBDD8]);
  [(NSMutableArray *)self->_requests addObject:v8];
  v9 = objc_storeWeak(&self->_speechEmotionRequest, v8);
  v10 = self->_SNAnalyzer;
  v11 = v9;
  v20 = 0;
  [(SNAudioStreamAnalyzer *)v10 addRequest:v8 withObserver:self error:&v20];
  v12 = v20;

  if (v12)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v13 = *ADAM::ADAMLogScope(void)::scope;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDCA988];
      v15 = MEMORY[0x29EDCA988];
    }

    v16 = v13;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_loadWeakRetained(&self->_speechEmotionRequest);
      *buf = 136315650;
      v22 = "ADAMSoundAnalysisWriter.mm";
      v23 = 1024;
      v24 = 298;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to add SN request: %@", buf, 0x1Cu);
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
      v14 = *ADAM::ADAMLogScope(void)::scope;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = MEMORY[0x29EDCA988];
      v18 = MEMORY[0x29EDCA988];
    }

    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_loadWeakRetained(&self->_speechEmotionRequest);
      *buf = 136315650;
      v22 = "ADAMSoundAnalysisWriter.mm";
      v23 = 1024;
      v24 = 302;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added SN request: %@", buf, 0x1Cu);
    }
  }

LABEL_21:
}

- (void)_initializeSoundAnalyzer
{
  v39 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_initLock);
  if (!self->_soundAnalyzerInitialized)
  {
    v3 = [objc_alloc(MEMORY[0x29EDBBDB8]) initWithFormat:self->_format];
    SNAnalyzer = self->_SNAnalyzer;
    self->_SNAnalyzer = v3;

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v5 = *ADAM::ADAMLogScope(void)::scope;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_SNAnalyzer;
      *buf = 136315650;
      v32 = "ADAMSoundAnalysisWriter.mm";
      v33 = 1024;
      v34 = 182;
      v35 = 2112;
      *v36 = v7;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created SN AudioStreamAnalyzer %@", buf, 0x1Cu);
    }

LABEL_11:
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    requests = self->_requests;
    self->_requests = v8;

    v10 = objc_opt_new();
    [v10 setComputeUnits:0];
    v11 = objc_alloc(MEMORY[0x29EDBBDC8]);
    v12 = [v11 initWithDetectorIdentifier:*MEMORY[0x29EDBBDF8] error:0];
    [v12 setModelConfiguration:v10];
    [(NSMutableArray *)self->_requests addObject:v12];
    v13 = objc_alloc(MEMORY[0x29EDBBDC8]);
    v14 = [v13 initWithDetectorIdentifier:*MEMORY[0x29EDBBE00] error:0];
    [v14 setModelConfiguration:v10];
    [(NSMutableArray *)self->_requests addObject:v14];
    v15 = objc_alloc(MEMORY[0x29EDBBDC8]);
    v16 = [v15 initWithDetectorIdentifier:*MEMORY[0x29EDBBE08] error:0];
    [v16 setModelConfiguration:v10];
    [(NSMutableArray *)self->_requests addObject:v16];
    v17 = self->_requests;
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 3221225472;
    v30[2] = __51__ADAMSoundAnalysisWriter__initializeSoundAnalyzer__block_invoke;
    v30[3] = &unk_29EE52578;
    v30[4] = self;
    [(NSMutableArray *)v17 enumerateObjectsUsingBlock:v30];
    v18 = objc_alloc_init(MEMORY[0x29EDBBDE8]);
    audioLevelRequest = self->_audioLevelRequest;
    self->_audioLevelRequest = v18;

    [(NSMutableArray *)self->_requests addObject:self->_audioLevelRequest];
    v20 = self->_SNAnalyzer;
    v21 = self->_audioLevelRequest;
    v29 = 0;
    [(SNAudioStreamAnalyzer *)v20 addRequest:v21 withObserver:self error:&v29];
    v22 = v29;
    if (v22)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v24 = ADAM::get_log(void)::adam_os_log;
      if (!os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136316162;
      v32 = "ADAMSoundAnalysisWriter.mm";
      v33 = 1024;
      v34 = 232;
      v35 = 1040;
      *v36 = 23;
      *&v36[4] = 2080;
      *&v36[6] = "ADAMSoundAnalysisWriter]";
      v37 = 2048;
      selfCopy2 = self;
      v25 = "[%s:%-5d %.*s:%p] failed to add SNMeasureAudioLevelRequest";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v28 = ADAM::get_log(void)::adam_os_log;
      if (!os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *buf = 136316162;
      v32 = "ADAMSoundAnalysisWriter.mm";
      v33 = 1024;
      v34 = 236;
      v35 = 1040;
      *v36 = 23;
      *&v36[4] = 2080;
      *&v36[6] = "ADAMSoundAnalysisWriter]";
      v37 = 2048;
      selfCopy2 = self;
      v25 = "[%s:%-5d %.*s:%p] added SNMeasureAudioLevelRequest";
      v26 = v28;
      v27 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_296C34000, v26, v27, v25, buf, 0x2Cu);
LABEL_19:

    self->_frameCnt = 0;
    self->_speechEmotionTimestamp = 0;
    self->_soundAnalyzerInitialized = 1;
  }

  os_unfair_lock_unlock(&self->_initLock);
}

void __51__ADAMSoundAnalysisWriter__initializeSoundAnalyzer__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v13 = 0;
  [v5 addRequest:v3 withObserver:v4 error:&v13];
  v6 = v13;
  if (!v6)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v7 = *ADAM::ADAMLogScope(void)::scope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315650;
    v15 = "ADAMSoundAnalysisWriter.mm";
    v16 = 1024;
    v17 = 217;
    v18 = 2112;
    v19 = v3;
    v9 = "%25s:%-5d added SN request: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v7 = *ADAM::ADAMLogScope(void)::scope;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "ADAMSoundAnalysisWriter.mm";
    v16 = 1024;
    v17 = 213;
    v18 = 2112;
    v19 = v3;
    v9 = "%25s:%-5d failed to add SN request: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_18:
    _os_log_impl(&dword_296C34000, v10, v11, v9, buf, 0x1Cu);
  }

LABEL_19:

LABEL_20:
}

- (ADAMSoundAnalysisWriter)initWithWriterName:(id)name sessionID:(unsigned int)d audioFormat:(id)format speechMetricsSRWriter:(id)writer soundDetectionSRWriter:(id)rWriter speechEmotionSRWriter:(id)sRWriter completionHandler:(id)handler
{
  v13 = *&d;
  v59 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  formatCopy = format;
  writerCopy = writer;
  rWriterCopy = rWriter;
  sRWriterCopy = sRWriter;
  handlerCopy = handler;
  v49.receiver = self;
  v49.super_class = ADAMSoundAnalysisWriter;
  v17 = [(ADAMSoundAnalysisWriter *)&v49 init];
  p_isa = &v17->super.isa;
  v19 = v17;
  if (!v17)
  {
LABEL_12:
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v35 = *ADAM::ADAMLogScope(void)::scope;
      if (!v35)
      {
LABEL_21:
        v42 = v19;
        goto LABEL_22;
      }
    }

    else
    {
      v35 = MEMORY[0x29EDCA988];
      v36 = MEMORY[0x29EDCA988];
    }

    v37 = v35;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [MEMORY[0x29EDBA070] numberWithBool:{-[ADAMSoundAnalysisWriter _isMonitoringEmotion](v19, "_isMonitoringEmotion")}];
      v39 = [MEMORY[0x29EDBA070] numberWithBool:{-[ADAMSoundAnalysisWriter _isMonitoringSoundDetection](v19, "_isMonitoringSoundDetection")}];
      v40 = [MEMORY[0x29EDBA070] numberWithBool:{-[ADAMSoundAnalysisWriter _isMonitoringSpeechMetrics](v19, "_isMonitoringSpeechMetrics")}];
      v41 = [(NSMutableArray *)v19->_requests count];
      *buf = 136316674;
      v51 = "ADAMSoundAnalysisWriter.mm";
      v52 = 1024;
      v53 = 169;
      v54 = 2112;
      *v55 = v19;
      *&v55[8] = 2112;
      *&v55[10] = v38;
      *&v55[18] = 2112;
      *&v55[20] = v39;
      *&v55[28] = 2112;
      v56 = v40;
      v57 = 2048;
      v58 = v41;
      _os_log_impl(&dword_296C34000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created ADAM SN Writer: %@ monitoring emotion? %@, monitoring detecion? %@, monitoring speech metrics? %@, num requests: %lu", buf, 0x44u);
    }

    goto LABEL_21;
  }

  objc_storeStrong(&v17->_format, format);
  v20 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", v13];
  sessionID = v19->_sessionID;
  v19->_sessionID = v20;

  {
    ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
  }

  v22 = ADAM::get_log(void)::adam_os_log;
  if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v51 = "ADAMSoundAnalysisWriter.mm";
    v52 = 1024;
    v53 = 112;
    v54 = 1040;
    *v55 = 23;
    *&v55[4] = 2080;
    *&v55[6] = "ADAMSoundAnalysisWriter]";
    *&v55[14] = 2048;
    *&v55[16] = v19;
    *&v55[24] = 1024;
    *&v55[26] = v13;
    _os_log_impl(&dword_296C34000, v22, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] Created with session ID: %d", buf, 0x32u);
  }

  v23 = MEMORY[0x29C261430](handlerCopy);
  completeHandler = v19->_completeHandler;
  v19->_completeHandler = v23;

  v19->_processing = 0;
  v19->_soundAnalyzerInitialized = 0;
  *&v19->_statusLock._os_unfair_lock_opaque = 0;
  v19->_isLastBatch = 0;
  objc_storeWeak(p_isa + 10, 0);
  audioLevelRequest = v19->_audioLevelRequest;
  v19->_audioLevelRequest = 0;

  v19->_siriAudioBufferCount = 0;
  v19->_detectionResultCounterPerMinute = 0;
  v19->_emotionResultCounterPerMinute = 0;
  v19->_detectionFirstAbsoluteTimestampPerMinute = 0.0;
  v19->_emotionFirstAbsoluteTimestampPerMinute = 0.0;
  v19->_audioLevelTimestamp = 0;
  objc_storeStrong(p_isa + 17, writer);
  v19->_laughterTimeTracker = 0;
  v19->_shoutingTimeTracker = 0;
  v19->_speechTimeTracker = 0;
  if ([(ADAMSoundAnalysisWriter *)v19 isMonitoring])
  {
    [(ADAMSoundAnalysisWriter *)v19 createAndLogOSTransaction];
  }

  v26 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"SiriUplink"];
  v27 = [nameCopy hasPrefix:v26];

  if (v27)
  {
    v28 = 0;
    v29 = 1;
    v30 = "SiriUplink";
LABEL_11:
    v19->_streamType = v28;
    objc_storeStrong(p_isa + 15, sRWriter);
    objc_storeStrong(p_isa + 16, rWriter);
    v33 = dispatch_queue_create(v30, 0);
    queue = v19->_queue;
    v19->_queue = v33;

    v19->_inSiriUseCase = v29;
    goto LABEL_12;
  }

  v31 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"TelephonyUplink"];
  v32 = [nameCopy hasPrefix:v31];

  if (v32)
  {
    v29 = 0;
    v30 = "TelephonyUplink";
    v28 = 1;
    goto LABEL_11;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v42 = *ADAM::ADAMLogScope(void)::scope;
    if (!v42)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v42 = MEMORY[0x29EDCA988];
    v44 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(&v42->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v51 = "ADAMSoundAnalysisWriter.mm";
    v52 = 1024;
    v53 = 162;
    v54 = 2112;
    *v55 = nameCopy;
    _os_log_impl(&dword_296C34000, &v42->super, OS_LOG_TYPE_ERROR, "%25s:%-5d unknown audio buffer stream type: %@", buf, 0x1Cu);
  }

  v42 = 0;
LABEL_22:

  return v42;
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
    v6 = "ADAMSoundAnalysisWriter.mm";
    v7 = 1024;
    v8 = 97;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroyed os_transaction for sound analysis", &v5, 0x12u);
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
    v8 = "ADAMSoundAnalysisWriter.mm";
    v9 = 1024;
    v10 = 91;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created os_transaction for sound analysis", &v7, 0x12u);
  }
}

@end