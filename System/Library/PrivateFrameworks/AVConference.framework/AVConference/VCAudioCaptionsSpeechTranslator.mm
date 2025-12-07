@interface VCAudioCaptionsSpeechTranslator
- (BOOL)addToCaptionTasksWithError:(id *)error;
- (BOOL)setUpCaptionsWithError:(id *)error;
- (BOOL)setupTranslatorSharedWithError:(id *)error;
- (BOOL)setupTranslatorStandaloneWithError:(id *)error;
- (BOOL)shouldPushSamples;
- (BOOL)startCaptionsWithError:(id *)error;
- (VCAudioCaptionsSpeechTranslator)initWithDelegate:(id)delegate isLocal:(BOOL)local taskIdentifier:(id)identifier reportingAgent:(opaqueRTCReporting *)agent;
- (void)client:(id)client didReceiveTranscriptionResult:(id)result;
- (void)client:(id)client didReceiveTranslationResult:(id)result;
- (void)client:(id)client didStopTranslationWithError:(id)error;
- (void)dealloc;
- (void)destroyCaptions;
- (void)packageAndSendTranscribedString:(id)string withTask:(id)task;
- (void)packageAndSendTranslatedString:(id)string withTask:(id)task;
- (void)pushSamples:(char *)samples numSamples:(int)numSamples hostTime:(double)time;
- (void)serverDidDisconnectForClient:(id)client;
- (void)stopCaptions;
- (void)translationDidStartForClient:(id)client;
@end

@implementation VCAudioCaptionsSpeechTranslator

- (VCAudioCaptionsSpeechTranslator)initWithDelegate:(id)delegate isLocal:(BOOL)local taskIdentifier:(id)identifier reportingAgent:(opaqueRTCReporting *)agent
{
  localCopy = local;
  v117 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechTranslator-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
      *&buf[22] = 1024;
      *&buf[24] = 46;
      *&buf[28] = 2048;
      *&buf[30] = self;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechTranslator-init instance=%p", buf, 0x26u);
    }
  }

  v103.receiver = self;
  v103.super_class = VCAudioCaptionsSpeechTranslator;
  v13 = [(VCAudioCaptions *)&v103 initWithDelegate:delegate isLocal:localCopy taskIdentifier:identifier reportingAgent:agent];
  v14 = v13;
  if (v13)
  {
    v13->super._frameworkType = 3;
    v15 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    v14->super._frameworkAudioFormat = v15;
    v16 = objc_opt_class();
    v17 = &selRef_isLatencySensitiveModeEnabled;
    if (!v15)
    {
      [VCAudioCaptionsSpeechTranslator initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
LABEL_64:
      if (objc_opt_class() == v14)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:];
          }
        }
      }

      else
      {
        v81 = v17[456];
        if (objc_opt_respondsToSelector())
        {
          v82 = [(VCAudioCaptionsSpeechTranslator *)v14 performSelector:v81];
        }

        else
        {
          v82 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v83 = VRTraceErrorLogLevelToCSTR();
          v84 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            frameworkType = v14->super._frameworkType;
            *buf = 136316418;
            *&buf[4] = v83;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
            *&buf[22] = 1024;
            *&buf[24] = 75;
            *&buf[28] = 2112;
            *&buf[30] = v82;
            *&buf[38] = 2048;
            v105 = v14;
            v106 = 1024;
            *v107 = frameworkType;
            _os_log_error_impl(&dword_1DB56E000, v84, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VCAudioCaptionsSpeechTranslator-init FAILED with frameworkType=%d", buf, 0x36u);
          }
        }
      }

      [(VCAudioCaptionsSpeechTranslator *)v14 dealloc];
      return 0;
    }

    if (v16 == v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v89 = *[(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
          v87 = FourccToCStr([(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][8]);
          v21 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][16];
          v22 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][20];
          v23 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][24];
          v24 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][28];
          v25 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][32];
          *buf = 136317442;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 60;
          *&buf[28] = 2048;
          *&buf[30] = v89;
          *&buf[38] = 2080;
          v105 = v87;
          v106 = 1024;
          *v107 = v21;
          *&v107[4] = 1024;
          *&v107[6] = v22;
          v17 = &selRef_isLatencySensitiveModeEnabled;
          LOWORD(v108) = 1024;
          *(&v108 + 2) = v23;
          HIWORD(v108) = 1024;
          *v109 = v24;
          *&v109[4] = 1024;
          *v110 = v25;
          v26 = " [%s] %s:%d Translator preferred format: samplerate=%f formatid=%s bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
          v27 = v20;
          v28 = 78;
LABEL_16:
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCAudioCaptionsSpeechTranslator *)v14 performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v88 = *[(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
          v86 = FourccToCStr([(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][8]);
          v31 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][16];
          v32 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][20];
          v33 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][24];
          v34 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][28];
          v35 = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription][32];
          *buf = 136317954;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 60;
          *&buf[28] = 2112;
          *&buf[30] = v18;
          *&buf[38] = 2048;
          v105 = v14;
          v106 = 2048;
          *v107 = v88;
          *&v107[8] = 2080;
          v108 = v86;
          *v109 = 1024;
          *&v109[2] = v31;
          *v110 = 1024;
          *&v110[2] = v32;
          v17 = &selRef_isLatencySensitiveModeEnabled;
          v111 = 1024;
          v112 = v33;
          v113 = 1024;
          v114 = v34;
          v115 = 1024;
          v116 = v35;
          v26 = " [%s] %s:%d %@(%p) Translator preferred format: samplerate=%f formatid=%s bytePerPacket=%d framesPerPacket=%d bytesPerFrame=%d channelsPerFrame=%d bitsPerChannel=%d";
          v27 = v30;
          v28 = 98;
          goto LABEL_16;
        }
      }
    }

    streamDescription = [(AVAudioFormat *)v14->super._frameworkAudioFormat streamDescription];
    v102 = *(streamDescription + 32);
    v100 = *streamDescription;
    v101 = *(streamDescription + 16);
    captionsFormat = v14->super._captionsFormat;
    *buf = v100;
    *&buf[16] = v101;
    *&buf[32] = v102;
    [(ASBDWrapper *)captionsFormat setAsbd:buf];
    if (objc_opt_class() == v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v47 = v14->super._captionsFormat;
          if (v47)
          {
            objc_msgSend_asbd(v47);
            v48 = v99;
          }

          else
          {
            v48 = 0;
          }

          v63 = v14->super._captionsFormat;
          if (v63)
          {
            objc_msgSend_asbd(v63);
            v64 = v98;
          }

          else
          {
            v64 = 0;
          }

          v65 = v14->super._captionsFormat;
          if (v65)
          {
            objc_msgSend_asbd(v65);
            v66 = v97;
          }

          else
          {
            v66 = 0.0;
          }

          v67 = v14->super._captionsFormat;
          if (v67)
          {
            objc_msgSend_asbd(v67);
            LODWORD(v68) = v96;
            v69 = v68;
          }

          else
          {
            v69 = 0.0;
          }

          *buf = 136316418;
          *&buf[4] = v45;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 63;
          *&buf[28] = 1024;
          *&buf[30] = v48;
          *&buf[34] = 1024;
          *&buf[36] = v64;
          LOWORD(v105) = 1024;
          *(&v105 + 2) = (v66 * v69 * 20.0) / 1000;
          v60 = " [%s] %s:%d Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
          v61 = v46;
          v62 = 46;
          goto LABEL_51;
        }
      }
    }

    else
    {
      v38 = v17[456];
      if (objc_opt_respondsToSelector())
      {
        v39 = [(VCAudioCaptionsSpeechTranslator *)v14 performSelector:v38];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v51 = v14->super._captionsFormat;
          if (v51)
          {
            objc_msgSend_asbd(v51);
            v52 = v95;
          }

          else
          {
            v52 = 0;
          }

          v53 = v14->super._captionsFormat;
          if (v53)
          {
            objc_msgSend_asbd(v53);
            v54 = v94;
          }

          else
          {
            v54 = 0;
          }

          v55 = v14->super._captionsFormat;
          if (v55)
          {
            objc_msgSend_asbd(v55);
            v56 = v93;
          }

          else
          {
            v56 = 0.0;
          }

          v57 = v14->super._captionsFormat;
          if (v57)
          {
            objc_msgSend_asbd(v57);
            LODWORD(v58) = v92;
            v59 = v58;
          }

          else
          {
            v59 = 0.0;
          }

          *buf = 136316930;
          *&buf[4] = v49;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
          *&buf[22] = 1024;
          *&buf[24] = 63;
          *&buf[28] = 2112;
          *&buf[30] = v39;
          *&buf[38] = 2048;
          v105 = v14;
          v106 = 1024;
          *v107 = v52;
          *&v107[4] = 1024;
          *&v107[6] = v54;
          LOWORD(v108) = 1024;
          *(&v108 + 2) = (v56 * v59 * 20.0) / 1000;
          v60 = " [%s] %s:%d %@(%p) Create PCM copy buffer allocator: sampleRate=%d, bytesPerPacket=%d, capacity=%d";
          v61 = v50;
          v62 = 66;
LABEL_51:
          _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, v60, buf, v62);
        }
      }
    }

    v70 = *MEMORY[0x1E695E480];
    v71 = v14->super._captionsFormat;
    if (v71)
    {
      objc_msgSend_asbd(v71);
      v72 = v91;
      v73 = v14->super._captionsFormat;
      if (v73)
      {
        objc_msgSend_asbd(v73);
        LODWORD(v74) = v90;
        v75 = v74;
LABEL_57:
        v76 = VCAudioBufferAllocatorCreate(v70, (v72 * v75 * 20.0 / 1000.0), 2, v40, v41, v42, v43, v44);
        v14->super._avAudioPCMAudioBufferAllocator = v76;
        if (v76)
        {
          v14->super._translatedUtteranceNumber = 1;
          v14->_currentTranslatedUpdateNumber = 0;
          v14->_currentSourceUpdateNumber = 0;
          v14->_transcriptionTimes = objc_alloc_init(MEMORY[0x1E695DF90]);
          MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioCaptionsSpeechTranslator-init Finished");
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v77 = VRTraceErrorLogLevelToCSTR();
            v78 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v79 = v14->super._frameworkType;
              *buf = 136316162;
              *&buf[4] = v77;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
              *&buf[22] = 1024;
              *&buf[24] = 81;
              *&buf[28] = 2048;
              *&buf[30] = v14;
              *&buf[38] = 1024;
              LODWORD(v105) = v79;
              _os_log_impl(&dword_1DB56E000, v78, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioCaptionsSpeechTranslator-init Finished instance=%p Succeeded with frameworkType=%d", buf, 0x2Cu);
            }
          }

          return v14;
        }

        [VCAudioCaptionsSpeechTranslator initWithDelegate:v14 isLocal:? taskIdentifier:? reportingAgent:?];
        goto LABEL_64;
      }
    }

    else
    {
      v72 = 0.0;
    }

    v75 = 0.0;
    goto LABEL_57;
  }

  return v14;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCAudioCaptionsSpeechTranslator dealloc]";
        v16 = 1024;
        v17 = 91;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCAudioCaptionsSpeechTranslator dealloc]";
        v16 = 1024;
        v17 = 91;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCAudioCaptionsSpeechTranslator;
  [(VCAudioCaptions *)&v11 dealloc];
}

- (void)packageAndSendTranslatedString:(id)string withTask:(id)task
{
  v63 = *MEMORY[0x1E69E9840];
  if ([(VCAudioCaptions *)self delegate])
  {
    v7 = [(VCAudioCaptions *)self taskInfoForTask:task];
    if (v7)
    {
      v8 = v7;
      [(__CFString *)v7 setUtteranceNumber:self->super._translatedUtteranceNumber];
      ++self->_currentTranslatedUpdateNumber;
      [(__CFString *)v8 setUpdateNumber:?];
      if (![string isFinal])
      {
        goto LABEL_32;
      }

      v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_transcriptionTimes, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._translatedUtteranceNumber]);
      if (v9)
      {
        v11 = micro(v9, v10);
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_transcriptionTimes objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->super._translatedUtteranceNumber)), "doubleValue"}];
        v13 = v11 - v12;
        -[NSMutableDictionary removeObjectForKey:](self->_transcriptionTimes, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->super._translatedUtteranceNumber]);
        translatedUtteranceNumber = self->super._translatedUtteranceNumber;
        if (translatedUtteranceNumber && v13 >= 0.0)
        {
          self->super._translatedLatencyAverage = self->super._translatedLatencyAverage + (v13 - self->super._translatedLatencyAverage) / translatedUtteranceNumber;
        }
      }

      else
      {
        v13 = 0.0;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_31;
        }

        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        translatedLatencyAverage = self->super._translatedLatencyAverage;
        v27 = self->super._translatedUtteranceNumber;
        v45 = 136316674;
        v46 = v24;
        v47 = 2080;
        v48 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v49 = 1024;
        v50 = 122;
        v51 = 2112;
        v52 = v8;
        v53 = 2048;
        selfCopy3 = *&v13;
        v55 = 2048;
        v56 = translatedLatencyAverage;
        v57 = 1024;
        LODWORD(v58) = v27;
        v28 = " [%s] %s:%d Update translatedResult utterance from info=%@, currentLatency=%f, average translatedLatency=%f for utterance count=%d";
        v29 = v25;
        v30 = 64;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v21 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_31;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v33 = self->super._translatedLatencyAverage;
        v34 = self->super._translatedUtteranceNumber;
        v45 = 136317186;
        v46 = v31;
        v47 = 2080;
        v48 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v49 = 1024;
        v50 = 122;
        v51 = 2112;
        v52 = v21;
        v53 = 2048;
        selfCopy3 = self;
        v55 = 2112;
        v56 = *&v8;
        v57 = 2048;
        v58 = v13;
        v59 = 2048;
        v60 = v33;
        v61 = 1024;
        v62 = v34;
        v28 = " [%s] %s:%d %@(%p) Update translatedResult utterance from info=%@, currentLatency=%f, average translatedLatency=%f for utterance count=%d";
        v29 = v32;
        v30 = 84;
      }

      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v45, v30);
LABEL_31:
      ++self->super._translatedUtteranceNumber;
      self->_currentTranslatedUpdateNumber = 0;
LABEL_32:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_43;
        }

        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v45 = 136315906;
        v46 = v36;
        v47 = 2080;
        v48 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v49 = 1024;
        v50 = 126;
        v51 = 2112;
        v52 = v8;
        v38 = " [%s] %s:%d Update translatedResult utterance to info=%@";
        v39 = v37;
        v40 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v35 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v35 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_43;
        }

        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        v45 = 136316418;
        v46 = v41;
        v47 = 2080;
        v48 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
        v49 = 1024;
        v50 = 126;
        v51 = 2112;
        v52 = v35;
        v53 = 2048;
        selfCopy3 = self;
        v55 = 2112;
        v56 = *&v8;
        v38 = " [%s] %s:%d %@(%p) Update translatedResult utterance to info=%@";
        v39 = v42;
        v40 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v38, &v45, v40);
LABEL_43:
      v43 = -[VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:]([VCCaptionsTranscription alloc], "initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:", [string translatedText], v8, self->super._isLocal, objc_msgSend(string, "isFinal"), 1);
      if (v43)
      {
        v44 = v43;
        [(VCAudioCaptions *)self sendTranscriptionResult:v43 taskInfo:v8];
      }

      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v45 = 136315650;
          v46 = v16;
          v47 = 2080;
          v48 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
          v49 = 1024;
          v50 = 107;
          v18 = " [%s] %s:%d Cannot sendTranscription as we don't have a task for it";
          v19 = v17;
          v20 = 28;
LABEL_22:
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, &v45, v20);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v45 = 136316162;
          v46 = v22;
          v47 = 2080;
          v48 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranslatedString:withTask:]";
          v49 = 1024;
          v50 = 107;
          v51 = 2112;
          v52 = v15;
          v53 = 2048;
          selfCopy3 = self;
          v18 = " [%s] %s:%d %@(%p) Cannot sendTranscription as we don't have a task for it";
          v19 = v23;
          v20 = 48;
          goto LABEL_22;
        }
      }
    }
  }
}

- (void)packageAndSendTranscribedString:(id)string withTask:(id)task
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(VCAudioCaptions *)self delegate])
  {
    v7 = [(VCAudioCaptions *)self taskInfoForTask:task];
    if (v7)
    {
      v8 = v7;
      [(__CFString *)v7 setUtteranceNumber:self->super._currentUtteranceNumber];
      ++self->_currentSourceUpdateNumber;
      [(__CFString *)v8 setUpdateNumber:?];
      if (![string isFinal])
      {
        goto LABEL_27;
      }

      if (objc_opt_class() == self)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule < 7)
        {
          goto LABEL_26;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!ErrorLogLevelForModule)
        {
          goto LABEL_26;
        }

        v37 = 136315906;
        v38 = v18;
        v39 = 2080;
        v40 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v41 = 1024;
        v42 = 150;
        v43 = 2112;
        v44 = v8;
        v20 = " [%s] %s:%d Update transcriptionResult utterance from info=%@";
        v21 = v19;
        v22 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule < 7)
        {
          goto LABEL_26;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        if (!ErrorLogLevelForModule)
        {
          goto LABEL_26;
        }

        v37 = 136316418;
        v38 = v25;
        v39 = 2080;
        v40 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v41 = 1024;
        v42 = 150;
        v43 = 2112;
        v44 = v9;
        v45 = 2048;
        selfCopy3 = self;
        v47 = 2112;
        v48 = v8;
        v20 = " [%s] %s:%d %@(%p) Update transcriptionResult utterance from info=%@";
        v21 = v26;
        v22 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, &v37, v22);
LABEL_26:
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_transcriptionTimes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithDouble:{micro(ErrorLogLevelForModule, v17)}], objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", self->super._currentUtteranceNumber));
      ++self->super._currentUtteranceNumber;
      self->_currentSourceUpdateNumber = 0;
LABEL_27:
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_38;
        }

        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v37 = 136315906;
        v38 = v28;
        v39 = 2080;
        v40 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v41 = 1024;
        v42 = 156;
        v43 = 2112;
        v44 = v8;
        v30 = " [%s] %s:%d Update transcriptionResult utterance to info=%@";
        v31 = v29;
        v32 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v27 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v27 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_38;
        }

        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v37 = 136316418;
        v38 = v33;
        v39 = 2080;
        v40 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
        v41 = 1024;
        v42 = 156;
        v43 = 2112;
        v44 = v27;
        v45 = 2048;
        selfCopy3 = self;
        v47 = 2112;
        v48 = v8;
        v30 = " [%s] %s:%d %@(%p) Update transcriptionResult utterance to info=%@";
        v31 = v34;
        v32 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, &v37, v32);
LABEL_38:
      v35 = -[VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:]([VCCaptionsTranscription alloc], "initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:", [string text], v8, self->super._isLocal, objc_msgSend(string, "isFinal"), 0);
      if (v35)
      {
        v36 = v35;
        [(VCAudioCaptions *)self sendTranscriptionResult:v35 taskInfo:v8];
      }

      return;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136315650;
          v38 = v11;
          v39 = 2080;
          v40 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
          v41 = 1024;
          v42 = 143;
          v13 = " [%s] %s:%d Cannot sendTranscription as we don't have a task for it";
          v14 = v12;
          v15 = 28;
LABEL_20:
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, &v37, v15);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136316162;
          v38 = v23;
          v39 = 2080;
          v40 = "[VCAudioCaptionsSpeechTranslator packageAndSendTranscribedString:withTask:]";
          v41 = 1024;
          v42 = 143;
          v43 = 2112;
          v44 = v10;
          v45 = 2048;
          selfCopy3 = self;
          v13 = " [%s] %s:%d %@(%p) Cannot sendTranscription as we don't have a task for it";
          v14 = v24;
          v15 = 48;
          goto LABEL_20;
        }
      }
    }
  }
}

- (BOOL)setupTranslatorStandaloneWithError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];

  self->_translatorConfiguration = 0;
  v5 = [objc_alloc(VCSpeechTranslation_STSpeechTranslatorConfigurationClass()) initWithSourceLocale:self->super._sourceLocale targetLocale:self->super._locale];
  self->_translatorConfiguration = v5;
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        v23 = 176;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v30 = v21;
          v31 = 2080;
          v32 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
          v33 = 1024;
          v34 = 176;
          v35 = 2112;
          v36 = v19;
          v37 = 2048;
          selfCopy3 = self;
          _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the _translatorConfiguration for SpeechTranslator", buf, 0x30u);
        }

        goto LABEL_33;
      }
    }

    v23 = 176;
LABEL_33:
    v24 = 19;
    goto LABEL_40;
  }

  [(STSpeechTranslatorConfiguration *)v5 setOmitTranslatedAudio:1];
  v6 = [objc_alloc(VCSpeechTranslation_STSpeechTranslatorClientClass()) initWithConfiguration:self->_translatorConfiguration delegate:self delegateQueue:self->super._delegateQueue];
  self->_translatorClient = v6;
  if (v6)
  {
    [(STSpeechTranslatorClient *)v6 setProduceAudio:0];
    if (objc_opt_class() == self)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_14;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!ErrorLogLevelForModule)
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v30 = v10;
      v31 = 2080;
      v32 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
      v33 = 1024;
      v34 = 183;
      v12 = " [%s] %s:%d Setup and start translator client for VCAudioCaptionsTranslatorModeStandalone";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_14;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!ErrorLogLevelForModule)
      {
        goto LABEL_14;
      }

      *buf = 136316162;
      v30 = v15;
      v31 = 2080;
      v32 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
      v33 = 1024;
      v34 = 183;
      v35 = 2112;
      v36 = v7;
      v37 = 2048;
      selfCopy3 = self;
      v12 = " [%s] %s:%d %@(%p) Setup and start translator client for VCAudioCaptionsTranslatorModeStandalone";
      v13 = v16;
      v14 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_14:
    self->_translatorStartTime = micro(ErrorLogLevelForModule, v9);
    self->_translatorStartDuration = NAN;
    translatorClient = self->_translatorClient;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke;
    v28[3] = &unk_1E85F7538;
    v28[4] = self;
    [(STSpeechTranslatorClient *)translatorClient startTranslationWithCompletionHandler:v28];

    self->super._translatorIdentifier = [-[STSpeechTranslatorClient translatorIdentifier](self->_translatorClient "translatorIdentifier")];
    return 1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      v23 = 180;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v30 = v25;
        v31 = 2080;
        v32 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]";
        v33 = 1024;
        v34 = 180;
        v35 = 2112;
        v36 = v20;
        v37 = 2048;
        selfCopy3 = self;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the _translatorClient for standalone SpeechTranslator", buf, 0x30u);
      }

      goto LABEL_39;
    }
  }

  v23 = 180;
LABEL_39:
  v24 = 12;
LABEL_40:

  self->_translatorConfiguration = 0;
  self->_translatorClient = 0;
  if (!error)
  {
    return 0;
  }

  v27 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", v23], v24);
  result = 0;
  *error = v27;
  return result;
}

void __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke(uint64_t a1, void *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 624) = micro(a1, a2) - *(*(a1 + 32) + 616);
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke_cold_1(v4, a2, v5);
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 208);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke_9;
    v8[3] = &unk_1E85F3778;
    v8[4] = v6;
    dispatch_async(v7, v8);
  }
}

- (BOOL)setupTranslatorSharedWithError:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->super._translatorIdentifier)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v11 = 217;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v17 = v9;
          v18 = 2080;
          v19 = "[VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:]";
          v20 = 1024;
          v21 = 217;
          v22 = 2112;
          v23 = v7;
          v24 = 2048;
          selfCopy2 = self;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed as Nil _translatorIdentifier passed to initialize SpeechTranslator", buf, 0x30u);
        }

        goto LABEL_22;
      }
    }

    v11 = 217;
LABEL_22:
    v12 = 14;
    goto LABEL_29;
  }

  v5 = [objc_alloc(VCSpeechTranslation_STSpeechTranslatorClientClass()) initWithTranslatorIdentifier:self->super._translatorIdentifier delegate:self delegateQueue:self->super._delegateQueue];
  self->_translatorClient = v5;
  if (v5)
  {
    return 1;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v11 = 220;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v17 = v13;
        v18 = 2080;
        v19 = "[VCAudioCaptionsSpeechTranslator setupTranslatorSharedWithError:]";
        v20 = 1024;
        v21 = 220;
        v22 = 2112;
        v23 = v8;
        v24 = 2048;
        selfCopy2 = self;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create the _translatorClient for shared SpeechTranslator", buf, 0x30u);
      }

      goto LABEL_28;
    }
  }

  v11 = 220;
LABEL_28:
  v12 = 12;
LABEL_29:

  self->_translatorClient = 0;
  if (!error)
  {
    return 0;
  }

  v15 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", v11], v12);
  result = 0;
  *error = v15;
  return result;
}

- (BOOL)addToCaptionTasksWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [VCCaptionTaskInfo alloc];
  translatorClient = self->_translatorClient;
  streamToken = self->super._streamToken;
  ++self->super._currentUtteranceNumber;
  v8 = [(VCCaptionTaskInfo *)v5 initWithTask:translatorClient token:streamToken utteranceNumber:?];
  v9 = v8;
  if (error && !v8)
  {
    [VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:error];
  }

  else if (v8)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *v24 = 136315906;
      *&v24[4] = v11;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 242;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v9;
      v13 = " [%s] %s:%d taskInfo=%@";
      v14 = v12;
      v15 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *v24 = 136316418;
      *&v24[4] = v16;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 242;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v10;
      HIWORD(v25) = 2048;
      selfCopy2 = self;
      LOWORD(v27) = 2112;
      *(&v27 + 2) = v9;
      v13 = " [%s] %s:%d %@(%p) taskInfo=%@";
      v14 = v17;
      v15 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v24, v15);
LABEL_15:
    [(NSMutableArray *)self->super._captionTasks addObject:v9, *v24, *&v24[8], v25, selfCopy2, v27];

    self->super._currentTaskInfo = v9;
    LOBYTE(v18) = 1;
    return v18;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      [VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v18 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v18)
      {
        return v18;
      }

      v22 = self->super._streamToken;
      *v24 = 136316418;
      *&v24[4] = v20;
      *&v24[12] = 2080;
      *&v24[14] = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
      *&v24[22] = 1024;
      LODWORD(v25) = 241;
      WORD2(v25) = 2112;
      *(&v25 + 6) = v19;
      HIWORD(v25) = 2048;
      selfCopy2 = self;
      LOWORD(v27) = 2048;
      *(&v27 + 2) = v22;
      _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate taskInfo for token=%lu", v24, 0x3Au);
    }
  }

  LOBYTE(v18) = 0;
  return v18;
}

- (BOOL)shouldPushSamples
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->super._recognizerState == 2 && self->_translatorClient && self->super._translatorMode == 1)
  {
    return 1;
  }

  HIDWORD(v4) = -1030792151 * self->super._logMessageCounter;
  LODWORD(v4) = HIDWORD(v4);
  if ((v4 >> 1) <= 0x51EB851 && self->super._translatorMode != 2)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      recognizerState = self->super._recognizerState;
      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechTranslator shouldPushSamples]";
      v19 = 1024;
      v20 = 353;
      v21 = 1024;
      LODWORD(v22) = recognizerState;
      v9 = " [%s] %s:%d Will not push samples; Recognizer state=%d";
      v10 = v7;
      v11 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_18;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = self->super._recognizerState;
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCAudioCaptionsSpeechTranslator shouldPushSamples]";
      v19 = 1024;
      v20 = 353;
      v21 = 2112;
      v22 = v5;
      v23 = 2048;
      selfCopy = self;
      v25 = 1024;
      v26 = v14;
      v9 = " [%s] %s:%d %@(%p) Will not push samples; Recognizer state=%d";
      v10 = v13;
      v11 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
  }

LABEL_18:
  result = 0;
  ++self->super._logMessageCounter;
  return result;
}

- (void)pushSamples:(char *)samples numSamples:(int)numSamples hostTime:(double)time
{
  v23 = *MEMORY[0x1E69E9840];
  VCCaptionTaskInfo_HostTime(self->super._currentTaskInfo);
  v8 = VCAudioCaptions_ConvertSamplesToPCM(self, samples, numSamples);
  self->super._isAudioConverterActive = 1;
  v12 = v8;
  if (v8)
  {
    [(VCAudioCaptions *)self recordAudioSampleMetrics];
    [(STSpeechTranslatorClient *)self->_translatorClient translateAudioSamples:v12];
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioCaptionsSpeechTranslator pushSamples:numSamples:hostTime:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator pushSamples:numSamples:hostTime:]";
        v17 = 1024;
        v18 = 379;
        v19 = 2112;
        v20 = v9;
        v21 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Sample PCM buffer is nil", buf, 0x30u);
      }
    }
  }
}

- (void)stopCaptions
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = 136316162;
    v12 = v9;
    v13 = 2080;
    v14 = "[VCAudioCaptionsSpeechTranslator stopCaptions]";
    v15 = 1024;
    v16 = 389;
    v17 = 2112;
    v18 = v3;
    v19 = 2048;
    selfCopy = self;
    v6 = " [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCAudioCaptionsSpeechTranslator stopCaptions]";
      v15 = 1024;
      v16 = 389;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

LABEL_12:
  if (self->super._translatorMode == 1)
  {
    [(STSpeechTranslatorClient *)self->_translatorClient stopTranslation];
    self->_isStarted = 0;
  }

  ++self->super._captionTaskCount;
}

- (void)destroyCaptions
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315650;
        *&v11[4] = v4;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechTranslator destroyCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 404;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v11, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v9;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioCaptionsSpeechTranslator destroyCaptions]";
        *&v11[22] = 1024;
        LODWORD(v12) = 404;
        WORD2(v12) = 2112;
        *(&v12 + 6) = v3;
        HIWORD(v12) = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  [(NSMutableArray *)self->super._captionTasks removeObject:self->super._currentTaskInfo, *v11, *&v11[8], v12, selfCopy];

  self->super._currentTaskInfo = 0;
  [(STSpeechTranslatorClient *)self->_translatorClient invalidate];

  self->_translatorClient = 0;
}

- (void)translationDidStartForClient:(id)client
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator translationDidStartForClient:]";
        v17 = 1024;
        v18 = 419;
        v19 = 2112;
        clientCopy = client;
        v8 = " [%s] %s:%d Translation started for STSpeechTranslatorClient=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator translationDidStartForClient:]";
        v17 = 1024;
        v18 = 419;
        v19 = 2112;
        clientCopy = v5;
        v21 = 2048;
        selfCopy = self;
        v23 = 2112;
        clientCopy2 = client;
        v8 = " [%s] %s:%d %@(%p) Translation started for STSpeechTranslatorClient=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)client:(id)client didStopTranslationWithError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCAudioCaptionsSpeechTranslator client:didStopTranslationWithError:]";
        v19 = 1024;
        v20 = 423;
        v21 = 2112;
        clientCopy = client;
        v23 = 2112;
        selfCopy = error;
        v10 = " [%s] %s:%d Translation stopped for STSpeechTranslatorClient=%@ with error=%@";
        v11 = v9;
        v12 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316674;
        v16 = v13;
        v17 = 2080;
        v18 = "[VCAudioCaptionsSpeechTranslator client:didStopTranslationWithError:]";
        v19 = 1024;
        v20 = 423;
        v21 = 2112;
        clientCopy = v7;
        v23 = 2048;
        selfCopy = self;
        v25 = 2112;
        clientCopy2 = client;
        v27 = 2112;
        errorCopy2 = error;
        v10 = " [%s] %s:%d %@(%p) Translation stopped for STSpeechTranslatorClient=%@ with error=%@";
        v11 = v14;
        v12 = 68;
        goto LABEL_11;
      }
    }
  }
}

- (void)client:(id)client didReceiveTranslationResult:(id)result
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranslationResult:]";
        v21 = 1024;
        v22 = 427;
        v23 = 2048;
        clientCopy = client;
        v25 = 1024;
        *v26 = [result isFinal];
        *&v26[4] = 2112;
        *&v26[6] = [result identifier];
        v10 = " [%s] %s:%d TranslatorClient=%p didReceiveTranslationResult isFinal=%d, id=%@";
        v11 = v9;
        v12 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranslationResult:]";
        v21 = 1024;
        v22 = 427;
        v23 = 2112;
        clientCopy = v7;
        v25 = 2048;
        *v26 = self;
        *&v26[8] = 2048;
        *&v26[10] = client;
        v27 = 1024;
        isFinal = [result isFinal];
        v29 = 2112;
        identifier = [result identifier];
        v10 = " [%s] %s:%d %@(%p) TranslatorClient=%p didReceiveTranslationResult isFinal=%d, id=%@";
        v11 = v14;
        v12 = 74;
        goto LABEL_11;
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VCAudioCaptionsSpeechTranslator_client_didReceiveTranslationResult___block_invoke;
  block[3] = &unk_1E85F3E30;
  block[4] = self;
  block[5] = result;
  block[6] = client;
  dispatch_async(captionsQueue, block);
}

- (void)client:(id)client didReceiveTranscriptionResult:(id)result
{
  v31 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v18 = v8;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranscriptionResult:]";
        v21 = 1024;
        v22 = 434;
        v23 = 2048;
        clientCopy = client;
        v25 = 1024;
        *v26 = [result isFinal];
        *&v26[4] = 2112;
        *&v26[6] = [result identifier];
        v10 = " [%s] %s:%d TranslatorClient=%p didReceiveTranscriptionResult isFinal=%d, id=%@";
        v11 = v9;
        v12 = 54;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCAudioCaptionsSpeechTranslator client:didReceiveTranscriptionResult:]";
        v21 = 1024;
        v22 = 434;
        v23 = 2112;
        clientCopy = v7;
        v25 = 2048;
        *v26 = self;
        *&v26[8] = 2048;
        *&v26[10] = client;
        v27 = 1024;
        isFinal = [result isFinal];
        v29 = 2112;
        identifier = [result identifier];
        v10 = " [%s] %s:%d %@(%p) TranslatorClient=%p didReceiveTranscriptionResult isFinal=%d, id=%@";
        v11 = v14;
        v12 = 74;
        goto LABEL_11;
      }
    }
  }

  captionsQueue = self->super._captionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VCAudioCaptionsSpeechTranslator_client_didReceiveTranscriptionResult___block_invoke;
  block[3] = &unk_1E85F3E30;
  block[4] = self;
  block[5] = result;
  block[6] = client;
  dispatch_async(captionsQueue, block);
}

- (void)serverDidDisconnectForClient:(id)client
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator serverDidDisconnectForClient:]";
        v17 = 1024;
        v18 = 441;
        v19 = 2112;
        clientCopy = client;
        v8 = " [%s] %s:%d The server disconnected for the STSpeechTranslatorClient=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCAudioCaptionsSpeechTranslator serverDidDisconnectForClient:]";
        v17 = 1024;
        v18 = 441;
        v19 = 2112;
        clientCopy = v5;
        v21 = 2048;
        selfCopy = self;
        v23 = 2112;
        clientCopy2 = client;
        v8 = " [%s] %s:%d %@(%p) The server disconnected for the STSpeechTranslatorClient=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (BOOL)setUpCaptionsWithError:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._captionsQueue);
  v6 = objc_opt_class();
  v7 = MEMORY[0x1E6986650];
  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v8 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8_33();
        OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_3_39();
        *v54 = v10;
        v11 = " [%s] %s:%d Setup captions for translatorMode=%@";
        v12 = v8;
        v13 = 38;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_18_12();
        OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_3_39();
        OUTLINED_FUNCTION_14_20();
        v11 = " [%s] %s:%d %@(%p) Setup captions for translatorMode=%@";
        v12 = v9;
        v13 = 58;
        goto LABEL_10;
      }
    }
  }

  if (self->_translatorClient)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_43;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 136315650;
      v49 = v16;
      v50 = 2080;
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      v52 = 263;
      OUTLINED_FUNCTION_20_10();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_43;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_22_9())
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_16_14();
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      v52 = 263;
      v53 = 2112;
      *v54 = v14;
      *&v54[8] = 2048;
      *&v54[10] = self;
      OUTLINED_FUNCTION_10_22();
      v22 = 48;
    }

LABEL_42:
    _os_log_impl(v17, v18, v19, v20, v21, v22);
LABEL_43:
    LOBYTE(IsInternalOSInstalled) = 1;
    return IsInternalOSInstalled;
  }

  translatorMode = self->super._translatorMode;
  if (!self->super._translatorMode)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_50;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_8_33();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_3_39();
      *v54 = v37;
      OUTLINED_FUNCTION_9_29();
      v43 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      if (VRTraceGetErrorLogLevelForModule() < 3 || (VRTraceErrorLogLevelToCSTR(), v36 = *v7, !os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR)))
      {
LABEL_50:
        if (!error)
        {
LABEL_52:
          IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
          if (!IsInternalOSInstalled)
          {
            return IsInternalOSInstalled;
          }

          if (self->super._translatorMode)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v45 = self->super._translatorMode;
            if (v45 > 2)
            {
              v46 = 0;
            }

            else
            {
              v46 = off_1E85F9308[v45];
            }

            [currentHandler handleFailureInMethod:a2 object:self file:@"VCAudioCaptionsSpeechTranslator.m" lineNumber:282 description:{@"Fatal error in STSpeechTranslator usage. In SpeechTranslator module but translator mode is OFF translatorMode=%@", v46}];
          }

          goto LABEL_54;
        }

LABEL_51:
        *error = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", 279], 8);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_3_39();
      OUTLINED_FUNCTION_14_20();
      v38 = &dword_1DB56E000;
      v41 = " [%s] %s:%d %@(%p) Fatal error in STSpeechTranslator usage with translator mode set to OFF. Unexpected translatorMode=%@";
      v42 = buf;
      v39 = v36;
      v40 = OS_LOG_TYPE_ERROR;
      v43 = 58;
    }

    _os_log_error_impl(v38, v39, v40, v41, v42, v43);
    if (!error)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (translatorMode != 2)
  {
    if (translatorMode == 1 && ![(VCAudioCaptionsSpeechTranslator *)self setupTranslatorStandaloneWithError:error])
    {
      goto LABEL_54;
    }

LABEL_29:
    [(STSpeechTranslatorClient *)self->_translatorClient setProduceTranscripts:1];
    [(STSpeechTranslatorClient *)self->_translatorClient setProduceTranslatedText:1];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_43;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      v27 = self->super._translatorMode;
      translatorClient = self->_translatorClient;
      [(STSpeechTranslatorClient *)translatorClient translatorIdentifier];
      *buf = 136316418;
      v49 = v25;
      v50 = 2080;
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      v52 = 288;
      v53 = v29;
      *v54 = v27;
      *&v54[4] = 2048;
      *&v54[6] = translatorClient;
      *&v54[14] = 2112;
      *&v54[16] = v30;
      v17 = &dword_1DB56E000;
      v20 = " [%s] %s:%d translatorMode=%d, _translatorClient=%p identifier=%@";
      v21 = buf;
      v18 = v26;
      v19 = OS_LOG_TYPE_DEFAULT;
      v22 = 54;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = OUTLINED_FUNCTION_6_1();
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_43;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_22_9())
      {
        goto LABEL_43;
      }

      v31 = self->super._translatorMode;
      v32 = self->_translatorClient;
      [(STSpeechTranslatorClient *)v32 translatorIdentifier];
      OUTLINED_FUNCTION_16_14();
      v51 = "[VCAudioCaptionsSpeechTranslator setUpCaptionsWithError:]";
      OUTLINED_FUNCTION_6_38();
      OUTLINED_FUNCTION_3_39();
      *v54 = v24;
      *&v54[8] = 2048;
      *&v54[10] = self;
      *&v54[18] = v33;
      *&v54[20] = v31;
      v55 = 2048;
      v56 = v32;
      v57 = v34;
      v58 = v35;
      OUTLINED_FUNCTION_10_22();
      v22 = 74;
    }

    goto LABEL_42;
  }

  IsInternalOSInstalled = [(VCAudioCaptionsSpeechTranslator *)self setupTranslatorSharedWithError:error];
  if (!IsInternalOSInstalled)
  {
    return IsInternalOSInstalled;
  }

  if ([(VCAudioCaptionsSpeechTranslator *)self addToCaptionTasksWithError:error])
  {
    goto LABEL_29;
  }

LABEL_54:
  LOBYTE(IsInternalOSInstalled) = 0;
  return IsInternalOSInstalled;
}

- (BOOL)startCaptionsWithError:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = MEMORY[0x1E6986650];
  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_23_7())
      {
        *buf = 136315650;
        v56 = v3;
        OUTLINED_FUNCTION_0_24();
        v60 = 303;
        OUTLINED_FUNCTION_10_22();
        v13 = 28;
LABEL_10:
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_12_14())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v3 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v56 = v14;
        OUTLINED_FUNCTION_0_24();
        v60 = 303;
        OUTLINED_FUNCTION_2_31();
        v8 = &dword_1DB56E000;
        v11 = " [%s] %s:%d %@(%p) ";
        v12 = buf;
        v9 = v3;
        v10 = OS_LOG_TYPE_DEFAULT;
        v13 = 48;
        goto LABEL_10;
      }
    }
  }

  if (self->super._translatorMode != 1)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 136315650;
      v56 = v28;
      OUTLINED_FUNCTION_0_24();
      v60 = 309;
      OUTLINED_FUNCTION_20_10();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [(VCAudioCaptionsSpeechTranslator *)self performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 1;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_23_7())
      {
        return 1;
      }

      *buf = 136316162;
      v56 = v3;
      OUTLINED_FUNCTION_0_24();
      v60 = 309;
      v61 = 2112;
      v62 = *&v27;
      v63 = 2048;
      selfCopy2 = self;
      OUTLINED_FUNCTION_10_22();
      v34 = 48;
    }

    _os_log_impl(v29, v30, v31, v32, v33, v34);
    return 1;
  }

  if (![(VCAudioCaptions *)self updateAudioConverterForStreamDescription:[(AVAudioFormat *)self->super._frameworkAudioFormat streamDescription]])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v35 = VRTraceErrorLogLevelToCSTR();
        v36 = os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR);
        v37 = 311;
        if (v36)
        {
          *buf = 136315650;
          v56 = v35;
          OUTLINED_FUNCTION_0_24();
          v60 = 311;
          OUTLINED_FUNCTION_16_0();
LABEL_54:
          _os_log_error_impl(v38, v39, v40, v41, v42, v43);
        }

LABEL_56:
        v52 = 4;
        goto LABEL_63;
      }
    }

    else
    {
      if (OUTLINED_FUNCTION_12_14())
      {
        OUTLINED_FUNCTION_37_0();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v51 = VRTraceErrorLogLevelToCSTR();
        v37 = 311;
        if (OUTLINED_FUNCTION_31())
        {
          *buf = 136316162;
          v56 = v51;
          OUTLINED_FUNCTION_0_24();
          v60 = 311;
          OUTLINED_FUNCTION_2_31();
          OUTLINED_FUNCTION_9_29();
          v43 = 48;
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    v37 = 311;
    goto LABEL_56;
  }

  if (![(VCAudioCaptionsSpeechTranslator *)self addToCaptionTasksWithError:error])
  {
    return 1;
  }

  if (self->_isStarted)
  {
    goto LABEL_24;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_24;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_24;
    }

    translatorStartDuration = self->_translatorStartDuration;
    *buf = 136315906;
    v56 = v16;
    v57 = 2080;
    v58 = "[VCAudioCaptionsSpeechTranslator startCaptionsWithError:]";
    v59 = 1024;
    v60 = 320;
    v61 = 2048;
    v62 = translatorStartDuration;
    v19 = &dword_1DB56E000;
    v20 = " [%s] %s:%d Translation client start failed in duration=%0.6f seconds";
    v21 = buf;
    v22 = v17;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 38;
LABEL_27:
    _os_log_error_impl(v19, v22, v23, v20, v21, v24);
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_12_14())
  {
    v15 = OUTLINED_FUNCTION_37_0();
  }

  else
  {
    v15 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8_33();
      v58 = "[VCAudioCaptionsSpeechTranslator startCaptionsWithError:]";
      v59 = 1024;
      OUTLINED_FUNCTION_3_39();
      v62 = *&v15;
      v63 = 2048;
      selfCopy2 = self;
      v65 = 2048;
      v66 = v26;
      OUTLINED_FUNCTION_9_29();
      v24 = 58;
      goto LABEL_27;
    }
  }

LABEL_24:
  if (self->_isStarted)
  {
    return 1;
  }

  if (objc_opt_class() != self)
  {
    if (OUTLINED_FUNCTION_12_14())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v37 = 323;
      if (OUTLINED_FUNCTION_31())
      {
        *buf = 136316162;
        v56 = v53;
        OUTLINED_FUNCTION_0_24();
        v60 = 323;
        OUTLINED_FUNCTION_2_31();
        OUTLINED_FUNCTION_9_29();
        v50 = 48;
        goto LABEL_60;
      }

      goto LABEL_62;
    }

LABEL_61:
    v37 = 323;
    goto LABEL_62;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_61;
  }

  v44 = VRTraceErrorLogLevelToCSTR();
  v37 = 323;
  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v56 = v44;
    OUTLINED_FUNCTION_0_24();
    v60 = 323;
    OUTLINED_FUNCTION_16_0();
LABEL_60:
    _os_log_error_impl(v45, v46, v47, v48, v49, v50);
  }

LABEL_62:
  v52 = 13;
LABEL_63:
  if (!error)
  {
    return 0;
  }

  v54 = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 9, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", v37], v52);
  result = 0;
  *error = v54;
  return result;
}

- (void)initWithDelegate:(uint64_t)a1 isLocal:taskIdentifier:reportingAgent:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(char)a1 isLocal:(uint64_t)a2 taskIdentifier:reportingAgent:.cold.2(char a1, uint64_t a2)
{
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_16_0();
LABEL_11:
        _os_log_error_impl(v2, v3, v4, v5, v6, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_3_1();
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithDelegate:isLocal:taskIdentifier:reportingAgent:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCAudioCaptionsSpeechTranslator initWithDelegate:isLocal:taskIdentifier:reportingAgent:]";
  v4 = 1024;
  v5 = 75;
  v6 = 1024;
  v7 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAudioCaptionsSpeechTranslator-init FAILED with frameworkType=%d", v2, 0x22u);
}

- (void)setupTranslatorStandaloneWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupTranslatorStandaloneWithError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __70__VCAudioCaptionsSpeechTranslator_setupTranslatorStandaloneWithError___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  [a2 localizedDescription];
  OUTLINED_FUNCTION_11();
  v7 = v4;
  v8 = "[VCAudioCaptionsSpeechTranslator setupTranslatorStandaloneWithError:]_block_invoke";
  v9 = 1024;
  v10 = 189;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to start translator client. SpeechTranslator error=%@", v6, 0x26u);
}

- (void)setupTranslatorSharedWithError:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupTranslatorSharedWithError:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (id)addToCaptionTasksWithError:(void *)a1 .cold.1(void *a1)
{
  result = +[VCSessionErrorUtils VCSessionCaptionsErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionCaptionsErrorEvent:errorPath:returnCode:", 8, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Captions/VCAudioCaptionsSpeechTranslator.m", 239], 5);
  *a1 = result;
  return result;
}

- (void)addToCaptionTasksWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  v3 = "[VCAudioCaptionsSpeechTranslator addToCaptionTasksWithError:]";
  v4 = 1024;
  v5 = 241;
  v6 = 2048;
  v7 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate taskInfo for token=%lu", v2, 0x26u);
}

- (void)pushSamples:numSamples:hostTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end