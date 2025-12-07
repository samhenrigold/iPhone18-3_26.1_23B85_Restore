@interface VCAudioTransmitter
- ($630EEFBF570FF8F3C5E9582E2A557BD5)currentChannelMetrics;
- (BOOL)allocateLastInputSampleBuffer:(unsigned int)buffer;
- (BOOL)chooseAudioNetworkBitrate;
- (BOOL)isCodecModeChangeRequestValid:(_VCAudioCodecModeChangeEvent *)valid;
- (BOOL)sendCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event;
- (BOOL)setupAudio:(id *)audio;
- (BOOL)setupAudioEncoders;
- (BOOL)setupAudioTierPicker;
- (BOOL)setupEncoderBuffer;
- (BOOL)shouldUpdateCodecBandwidth:(_VCAudioCodecModeChangeEvent *)bandwidth;
- (BOOL)shouldUpdateCodecBitrate:(_VCAudioCodecModeChangeEvent *)bitrate;
- (NSDictionary)dtxMetrics;
- (VCAudioTransmitter)initWithConfig:(id)config;
- (float)nextAudioInterval:(int)interval;
- (id)packetsPerBundle;
- (int)redundancyControllerModeForOperatingMode:(int)mode isRedEnabled:(BOOL)enabled isHigherAudioREDCutoverU1Enabled:(BOOL)u1Enabled;
- (unsigned)initialTargetBitrate;
- (unsigned)maximumSamplesPerFrame;
- (void)audioIssueDetectorCreateAndConfigure;
- (void)audioIssueDetectorStopAndFinalize;
- (void)currentPayloadUsed:(int)used payloadUsed:(id *)payloadUsed;
- (void)dealloc;
- (void)gatherRealtimeStats:(__CFDictionary *)stats;
- (void)handleActiveConnectionChange:(id)change;
- (void)handleActiveConnectionChangeDefault:(id)default;
- (void)handleActiveConnectionChangeMultiway:(id)multiway;
- (void)handleCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event didUpdateBandwidth:(BOOL *)bandwidth didUpdateBitrate:(BOOL *)bitrate;
- (void)initAudioValues;
- (void)logNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (void)logNWConnectionNotificationBBAdvisoryTypeBWLimitation:(tagVCNWConnectionNotification *)limitation;
- (void)logNWConnectionNotificationBBAdvisoryTypeCDRX:(tagVCNWConnectionNotification *)x;
- (void)logNWConnectionNotificationBBAdvisoryTypeDefault:(tagVCNWConnectionNotification *)default;
- (void)logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:(tagVCNWConnectionNotification *)measurement;
- (void)logTierInfo:(int)info;
- (void)process5GRATInNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (void)processCDRXInNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (void)processNWConnectionNotification:(tagVCNWConnectionNotification *)notification;
- (void)redundancyController:(id)controller redundancyIntervalDidChange:(double)change;
- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change;
- (void)removeUnusedAudioPayloads;
- (void)reportRTCPPacket;
- (void)reportRedundancyConfigChange;
- (void)setCellTech:(int)tech remoteCellular:(int)cellular isIPV6:(int)v6 audioCap:(unsigned int)cap;
- (void)setCurrentChannelMetrics:(id *)metrics;
- (void)setCurrentDTXEnable:(BOOL)enable;
- (void)setOperatingMode:(int)mode;
- (void)setRedNumPayloads:(int)payloads withMaxDelay:(int)delay shouldResetHistory:(BOOL)history shouldEnableShortRED:(BOOL)d;
- (void)setStreamIDs:(id)ds;
- (void)setTierPickerMode:(unsigned __int8)mode;
- (void)setupAudioEncoders;
- (void)setupAudioHeaderSize;
- (void)start;
- (void)stop;
- (void)updateAudioTxBitrate;
- (void)updateAudioTxRate;
- (void)useAudioPayload:(id)payload withBitrate:(unsigned int)bitrate redNumPayloads:(unsigned int)payloads;
- (void)useAudioTier:(id)tier;
@end

@implementation VCAudioTransmitter

- (void)redundancyController:(id)controller redundancyIntervalDidChange:(double)change
{
  self->_redundancyInterval = change;
  v5 = [+[VCDefaults forceRedMaxDelay:controller]];
  if (v5)
  {
    self->_redundancyInterval = (20 * v5);
  }
}

- (VCAudioTransmitter)initWithConfig:(id)config
{
  v43 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = VCAudioTransmitter;
  v4 = [(VCAudioTransmitter *)&v41 init];
  if (!v4)
  {
    return v4;
  }

  if (objc_opt_class() == v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    __str = 0;
    v6 = config ? [objc_msgSend(config "description")] : "<nil>";
    asprintf(&__str, "Initializing with config=%s", v6);
    if (!__str)
    {
      goto LABEL_28;
    }

    __lasts = 0;
    v13 = strtok_r(__str, "\n", &__lasts);
    v14 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter initWithConfig:]";
          *&buf[22] = 1024;
          *&buf[24] = 165;
          *&buf[28] = 2080;
          *&buf[30] = "";
          *&buf[38] = 2080;
          *&buf[40] = v13;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v13 = strtok_r(0, "\n", &__lasts);
    }

    while (v13);
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_28;
    }

    __str = 0;
    uTF8String = [(__CFString *)v5 UTF8String];
    v8 = config ? [objc_msgSend(config "description")] : "<nil>";
    asprintf(&__str, "%s(%p) Initializing with config=%s", uTF8String, v4, v8);
    if (!__str)
    {
      goto LABEL_28;
    }

    __lasts = 0;
    v9 = strtok_r(__str, "\n", &__lasts);
    v10 = MEMORY[0x1E6986650];
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter initWithConfig:]";
          *&buf[22] = 1024;
          *&buf[24] = 165;
          *&buf[28] = 2080;
          *&buf[30] = "";
          *&buf[38] = 2080;
          *&buf[40] = v9;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
        }
      }

      v9 = strtok_r(0, "\n", &__lasts);
    }

    while (v9);
  }

  free(__str);
LABEL_28:
  *(v4 + 37) = [config rtpHandle];
  controlInfoGenerator = [config controlInfoGenerator];
  if (controlInfoGenerator)
  {
    controlInfoGenerator = CFRetain(controlInfoGenerator);
  }

  *(v4 + 41) = controlInfoGenerator;
  *(v4 + 45) = [objc_msgSend(config "audioPayloads")];
  *(v4 + 47) = [config chosenAudioPayload];
  *(v4 + 46) = [config chosenDTXPayload];
  v4[344] = [config isRedEnabled];
  *(v4 + 96) = [config chosenRedPayloadType];
  v4[345] = [config includeRedSequenceOffset];
  *(v4 + 87) = [config redNumPayloads];
  *(v4 + 88) = [config redMaxDelay20ms];
  v4[336] = [config useRateControl];
  v4[337] = [config isUseCaseWatchContinuity];
  v4[338] = [config allowAudioSwitching];
  *(v4 + 38) = [config afrcHandle];
  *(v4 + 113) = [config operatingMode];
  v4[339] = [config supportsAdaptation];
  v4[340] = [config needsPacketThread];
  *(v4 + 57) = [config transportSession];
  *(v4 + 39) = [config mediaQueue];
  *(v4 + 40) = [config rtpVideo];
  v18 = v4 + 392;
  if (config)
  {
    objc_msgSend_inputFormat(config);
  }

  else
  {
    memset(buf, 0, 48);
  }

  v19 = *&buf[16];
  *v18 = *buf;
  *(v4 + 408) = v19;
  *(v4 + 424) = *&buf[32];
  *(v4 + 31) = [config statisticsCollector];
  v4[356] = [config transmitROC];
  v4[472] = [config ignoreSilence];
  *(v4 + 52) = [v4 initialTargetBitrate];
  *(v4 + 119) = [config tierNetworkBitrate];
  *(v4 + 174) = [config maxIDSStreamIdCount];
  *(v4 + 88) = [config supportedNumRedundantPayload];
  v4[480] = [config sendActiveVoiceOnly];
  v4[712] = [config isCurrentDTXEnabled];
  v4[713] = [config mediaControlInfoVersion];
  v4[714] = [config alwaysOnAudioRedundancyEnabled];
  v4[715] = [config cellularAllowRedLowBitratesEnabled];
  v4[716] = [config wifiAllowRedLowBitratesEnabled];
  *(v4 + 91) = [config remoteIDSParticipantID];
  v4[736] = [config useChannelDataFormat];
  *(v4 + 121) = [config qualityIndex];
  v4[737] = [config useWifiTiers];
  v4[738] = [config supportsCodecBandwidthUpdate];
  v4[924] = [config tierPickerMode];
  v4[992] = [config targetBitrateIsAudioOnly];
  if ([config maxAudioPacketSize])
  {
    maxAudioPacketSize = [config maxAudioPacketSize];
  }

  else
  {
    maxAudioPacketSize = 1280;
  }

  *(v4 + 24) = maxAudioPacketSize;
  *(v4 + 25) = [config constantTransportOverhead];
  v4[961] = [config isACC24Enabled];
  *(v4 + 121) = [config experimentManager];
  if (v4[736] == 1)
  {
    v21 = *(v4 + 174);
    if (*(v4 + 25))
    {
      v22 = *(v4 + 25) + VCNetworkUtils_AdditionalOverheadForIDSOptions(v21, 1, 0);
    }

    else
    {
      v22 = VCNetworkUtils_WorstCaseIDSOverheadForOptions(v21, 1, 0);
    }

    *(v4 + 25) = v22;
    v4[695] = 1;
  }

  v23 = *(v4 + 91);
  if (v23)
  {
    v4[646] = 1;
    *(v4 + 81) = v23;
  }

  sframeCryptor = [config sframeCryptor];
  if (sframeCryptor)
  {
    sframeCryptor = CFRetain(sframeCryptor);
  }

  *(v4 + 106) = sframeCryptor;
  *(v4 + 247) = [config packetExpirationTime];
  *(v4 + 122) = [config ratType];
  v25 = *(v4 + 55);
  reportingAgent = [config reportingAgent];
  *(v4 + 55) = reportingAgent;
  if (reportingAgent)
  {
    CFRetain(reportingAgent);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  *(v4 + 112) = VCReporting_GetDynamicReportingModuleID();
  [config reportingParentID];
  reportingInheritModuleSpecificInfoFromParent();
  *(v4 + 90) = VCMemoryPool_CreateTyped(0x640uLL, 2964314069);
  v27 = *(v4 + 46);
  v28 = *(v4 + 57);
  v29 = *(v4 + 31);
  *(v4 + 1) = -[VCPacketBundler initWithOperatingMode:bundlingScheme:]([VCPacketBundler alloc], "initWithOperatingMode:bundlingScheme:", *(v4 + 113), [config bundlingScheme]);
  [*(v4 + 1) setPacketsPerBundle:{objc_msgSend(config, "packetsPerBundle")}];
  *(v4 + 2) = -[VCPacketBundler initWithOperatingMode:bundlingScheme:]([VCPacketBundler alloc], "initWithOperatingMode:bundlingScheme:", *(v4 + 113), [config bundlingScheme]);
  [*(v4 + 2) setPacketsPerBundle:{objc_msgSend(config, "packetsPerBundle")}];
  v4[916] = 0;
  *(v4 + 230) = 0;
  *(v4 + 228) = 128;
  [v4 initAudioValues];
  *(v4 + 3) = [[VCAudioRedBuilder alloc] initWithRedPayloadType:*(v4 + 96) sampleRate:*(v4 + 49) samplesPerFrame:*(v4 + 108) numPayloads:*(v4 + 87) maxDelay:*(v4 + 88) includeSequenceOffset:v4[345]];
  if ([config shouldCreateRedundancyController])
  {
    *(v4 + 4) = -[VCRedundancyControllerAudio initWithDelegate:statisticsCollector:mode:experimentManager:]([VCRedundancyControllerAudio alloc], "initWithDelegate:statisticsCollector:mode:experimentManager:", v4, *(v4 + 31), [v4 redundancyControllerModeForOperatingMode:*(v4 + 113) isRedEnabled:v4[344] isHigherAudioREDCutoverU1Enabled:{objc_msgSend(config, "isHigherAudioREDCutoverU1Enabled")}], *(v4 + 121));
  }

  forceRedNumPayloads = [+[VCDefaults sharedInstance](VCDefaults forceRedNumPayloads];
  if (forceRedNumPayloads)
  {
    *(v4 + 56) = 100 * forceRedNumPayloads;
  }

  forceRedMaxDelay = [+[VCDefaults sharedInstance](VCDefaults forceRedMaxDelay];
  if (forceRedMaxDelay)
  {
    *(v4 + 29) = (20 * forceRedMaxDelay);
  }

  v32 = *(v4 + 49);
  *(v4 + 28) = *(v4 + 108) / v32;
  [*(v4 + 1) setMaxPacketSize:1600];
  [*(v4 + 2) setMaxPacketSize:1600];
  *(v4 + 244) = RTPGetTimestampBase(*(v4 + 37));
  [v4 setStreamIDs:{objc_msgSend(config, "streamIDs")}];
  v4[980] = VCDefaults_GetBoolValueForKey(@"shouldApplyRedAsBoolean", [config shouldApplyRedAsBoolean]);
  *(v4 + 107) = 0;
  if ([config audioIssueDetectorEnabled])
  {
    [v4 audioIssueDetectorCreateAndConfigure];
  }

  v4[888] = [config audioDumpEnabled];
  *(v4 + 113) = v18;
  *(v4 + 223) = [objc_msgSend_config(*(v4 + 47)) payload];
  v4[896] = [objc_msgSend_config(*(v4 + 47)) payloadOctetAligned];
  v4[897] = [objc_msgSend_config(*(v4 + 47)) evsHeaderFullOnly];
  v4[608] = 0;
  *(v4 + 872) = 0u;
  v4[925] = [config ramStadSRCEnabled];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    __str = 0;
    v33 = objc_opt_class() ? [objc_msgSend(objc_opt_class() "description")] : "<nil>";
    asprintf(&__str, "%s[%p] %s", v33, v4, [objc_msgSend(config "description")]);
    if (__str)
    {
      __lasts = 0;
      v34 = strtok_r(__str, "\n", &__lasts);
      v35 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *v35;
          if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioTransmitter initWithConfig:]";
            *&buf[22] = 1024;
            *&buf[24] = 287;
            *&buf[28] = 2080;
            *&buf[30] = "[VCAudioTransmitter initWithConfig:]";
            *&buf[38] = 2080;
            *&buf[40] = v34;
            _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v34 = strtok_r(0, "\n", &__lasts);
      }

      while (v34);
      free(__str);
    }
  }

  return v4;
}

- (unsigned)initialTargetBitrate
{
  if ([(VCAudioTransmitter *)self isStandaloneStreamMode]&& self->_inputFormat.format.mChannelsPerFrame == 4)
  {
    return 900000;
  }

  else
  {
    return 100000;
  }
}

- (int)redundancyControllerModeForOperatingMode:(int)mode isRedEnabled:(BOOL)enabled isHigherAudioREDCutoverU1Enabled:(BOOL)u1Enabled
{
  v5 = 1 << mode;
  if (u1Enabled)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (!enabled)
  {
    v6 = 1;
  }

  if ((v5 & 0x86) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4;
  }

  if ((v5 & 0x3F39) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (mode <= 0xD)
  {
    return v8;
  }

  else
  {
    return 4;
  }
}

- (void)initAudioValues
{
  self->_lastIsTalking = 1;
  self->_lastUpdateQualityIndicator = 0.0;
  self->_qualityIndicator = 0;
  self->_audioTierChangeRequestCount = 0;
  self->_lastTierSwitch = 0.0;
  self->_audioTxBitrate = 32000;
  LODWORD(v2) = self->_inputFormat.samplesPerFrame;
  self->_audioInterval = v2 / self->_inputFormat.format.mSampleRate;
  self->_lastSentAudioSampleTime = 0;
  self->_inputMeter = 0;
  self->_audioHeaderSize = -1;
  self->_audioTierChangeCount = 0;
  self->_sendSilenceSamplesEnabled = 0;
  self->_firstSilencePacketTimeStamp = NAN;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  reportingUnregisterPeriodicTask();
  reportingCacheModuleSpecificInfo();
  reportingAgent = self->_reportingAgent;
  if (reportingAgent)
  {
    CFRelease(reportingAgent);
  }

  objc_storeWeak(&self->_delegate, 0);
  lastInputSampleBuffer = self->_lastInputSampleBuffer;
  if (lastInputSampleBuffer)
  {
    free(lastInputSampleBuffer);
  }

  [(VCRedundancyControllerAudio *)self->_redundancyController unregisterStatistics];
  controlInfoGenerator = self->_controlInfoGenerator;
  if (controlInfoGenerator)
  {
    CFRelease(controlInfoGenerator);
  }

  sframeCryptor = self->_sframeCryptor;
  if (sframeCryptor)
  {
    CFRelease(sframeCryptor);
  }

  VCAudioBufferList_Destroy(&self->_encodeBuffer);
  audioBundlePool = self->_audioBundlePool;
  if (audioBundlePool)
  {
    VCMemoryPool_Destroy(audioBundlePool);
    self->_audioBundlePool = 0;
  }

  if (self->_audioIssueDetector)
  {
    [(VCAudioTransmitter *)self audioIssueDetectorStopAndFinalize];
  }

  VCAudioDump_Finalize(&self->_encoderOutAudioDump);
  VCAudioDump_Finalize(&self->_encoderInAudioDump);
  v8.receiver = self;
  v8.super_class = VCAudioTransmitter;
  [(VCAudioTransmitter *)&v8 dealloc];
}

- (BOOL)isCodecModeChangeRequestValid:(_VCAudioCodecModeChangeEvent *)valid
{
  v5 = [VCPayloadUtils isCodecModeSupported:valid->codecRateMode forBandwidth:valid->codecBandwidth withPayload:valid->payload];
  v6 = +[VCPayloadUtils skipBandWidthCheckForCodecRateModes:supportedBitrates:](VCPayloadUtils, "skipBandWidthCheckForCodecRateModes:supportedBitrates:", valid->payload, [objc_msgSend_config(self->_currentAudioPayload) supportedBitrates]);
  result = v6 && v5;
  if (!v6 && v5)
  {
    if ([(VCAudioPayload *)self->_currentAudioPayload bandwidth]== valid->codecBandwidth)
    {
      return 1;
    }

    else
    {
      supportedBandwidths = [objc_msgSend_config(self->_currentAudioPayload) supportedBandwidths];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:valid->codecBandwidth];

      return [supportedBandwidths containsObject:v9];
    }
  }

  return result;
}

- (void)handleCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event didUpdateBandwidth:(BOOL *)bandwidth didUpdateBitrate:(BOOL *)bitrate
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = *event;
  if ([(VCAudioTransmitter *)self isCodecModeChangeRequestValid:&v31])
  {
    v9 = [VCPayloadUtils isEVSPayload:event->payload];
    offset = event->RFParams.offset;
    v11 = offset > 7;
    v12 = (1 << offset) & 0xAC;
    if (!v11 && v12 != 0 && event->RFParams.indicator < 2 && v9)
    {
      if ([(VCAudioPayload *)self->_currentAudioPayload setEVSRFParams:&event->RFParams])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v17 = event->RFParams.offset;
            indicator = event->RFParams.indicator;
            v31.payload = 136316418;
            *&v31.codecRateMode = v15;
            LOWORD(v31.codecBitrate) = 2080;
            *(&v31.codecBitrate + 2) = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
            HIWORD(v31.RFParams.indicator) = 1024;
            v32 = 455;
            v33 = 2048;
            selfCopy3 = self;
            v35 = 1024;
            v36 = v17;
            v37 = 1024;
            v38 = indicator;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] EVSCodec rfparams change requested offset=%u indicator=%u ", &v31, 0x32u);
          }
        }
      }
    }

    if (self->_supportsCodecBandwidthUpdate)
    {
      v31 = *event;
      if ([(VCAudioTransmitter *)self shouldUpdateCodecBandwidth:&v31])
      {
        v19 = [(VCAudioPayload *)self->_currentAudioPayload setBandwidth:event->codecBandwidth];
        if (bandwidth)
        {
          if (v19)
          {
            *bandwidth = 1;
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v20 = VRTraceErrorLogLevelToCSTR();
              v21 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                payload = event->payload;
                codecRateMode = event->codecRateMode;
                codecBandwidth = event->codecBandwidth;
                v31.payload = 136316674;
                *&v31.codecRateMode = v20;
                LOWORD(v31.codecBitrate) = 2080;
                *(&v31.codecBitrate + 2) = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
                HIWORD(v31.RFParams.indicator) = 1024;
                v32 = 462;
                v33 = 2048;
                selfCopy3 = self;
                v35 = 1024;
                v36 = payload;
                v37 = 1024;
                v38 = codecRateMode;
                v39 = 1024;
                v40 = codecBandwidth;
                _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Codec bandwidth change requested for payload=%u: mode=%u bandwidth=%u", &v31, 0x38u);
              }
            }
          }
        }
      }
    }

    v31 = *event;
    if ([(VCAudioTransmitter *)self shouldUpdateCodecBitrate:&v31])
    {
      v25 = [(VCAudioPayload *)self->_currentAudioPayload setBitrate:event->codecBitrate];
      if (bitrate)
      {
        if (v25)
        {
          *bitrate = 1;
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v28 = event->payload;
              v29 = event->codecRateMode;
              codecBitrate = event->codecBitrate;
              v31.payload = 136316674;
              *&v31.codecRateMode = v26;
              LOWORD(v31.codecBitrate) = 2080;
              *(&v31.codecBitrate + 2) = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
              HIWORD(v31.RFParams.indicator) = 1024;
              v32 = 469;
              v33 = 2048;
              selfCopy3 = self;
              v35 = 1024;
              v36 = v28;
              v37 = 1024;
              v38 = v29;
              v39 = 1024;
              v40 = codecBitrate;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Codec rate mode change requested for payload=%u: mode=%u bitrate=%u", &v31, 0x38u);
            }
          }
        }
      }
    }
  }

  else
  {
    [VCAudioTransmitter handleCodecModeChangeEvent:? didUpdateBandwidth:? didUpdateBitrate:?];
  }
}

- (BOOL)sendCodecModeChangeEvent:(_VCAudioCodecModeChangeEvent *)event
{
  v25 = *MEMORY[0x1E69E9840];
  currentAudioPayload = self->_currentAudioPayload;
  v17 = *event;
  v6 = [(VCAudioPayload *)currentAudioPayload setCodecModeRequest:&v17];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        codecRateMode = event->codecRateMode;
        codecBandwidth = event->codecBandwidth;
        v17.payload = 136316418;
        *&v17.codecRateMode = v8;
        LOWORD(v17.codecBitrate) = 2080;
        *(&v17.codecBitrate + 2) = "[VCAudioTransmitter sendCodecModeChangeEvent:]";
        HIWORD(v17.RFParams.indicator) = 1024;
        v18 = 479;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 1024;
        v22 = codecRateMode;
        v23 = 1024;
        v24 = codecBandwidth;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Requested codec rate mode change: mode=%u bandwidth=%u", &v17, 0x32u);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = event->codecRateMode;
      v16 = event->codecBandwidth;
      v17.payload = 136316418;
      *&v17.codecRateMode = v12;
      LOWORD(v17.codecBitrate) = 2080;
      *(&v17.codecBitrate + 2) = "[VCAudioTransmitter sendCodecModeChangeEvent:]";
      HIWORD(v17.RFParams.indicator) = 1024;
      v18 = 481;
      v19 = 2048;
      selfCopy2 = self;
      v21 = 1024;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCAudioTransmitter[%p] Failed requesting codec rate mode change: mode=%u bandwidth=%u", &v17, 0x32u);
    }
  }

  return v6;
}

- (void)setCellTech:(int)tech remoteCellular:(int)cellular isIPV6:(int)v6 audioCap:(unsigned int)cap
{
  v6 = self->_isLocalCellular_LowestConnectionQuality != tech || self->_isRemoteCellular_LowestConnectionQuality != cellular || self->_isConnectedOnIPv6_LowestConnectionQuality != v6 || self->_currentAudioCap != cap;
  self->_isConnectedOnIPv6_LowestConnectionQuality = v6 != 0;
  self->_isLocalCellular_LowestConnectionQuality = tech != 0;
  self->_isRemoteCellular_LowestConnectionQuality = cellular != 0;
  self->_currentAudioCap = cap;
  if (v6)
  {
    atomic_fetch_add(&self->_audioTierChangeRequestCount, 1u);
  }
}

- (BOOL)setupEncoderBuffer
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  audioPayloads = self->_audioPayloads;
  v4 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(audioPayloads);
      }

      samplesPerFrame = [objc_msgSend_config(*(*(&v15 + 1) + 8 * i)) samplesPerFrame];
      if (samplesPerFrame > v6)
      {
        v6 = samplesPerFrame;
      }
    }

    v5 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v15 objects:v14 count:16];
  }

  while (v5);
  if (v6)
  {
      ;
    }
  }

  else
  {
LABEL_14:
    j = 0;
  }

  VCAudioBufferList_Destroy(&self->_encodeBuffer);
  v11 = *&self->_inputFormat.format.mBytesPerPacket;
  *&v13.mSampleRate = *&self->_inputFormat.format.mSampleRate;
  *&v13.mBytesPerPacket = v11;
  *&v13.mBitsPerChannel = *&self->_inputFormat.format.mBitsPerChannel;
  return VCAudioBufferList_Allocate(&v13, j, &self->_encodeBuffer);
}

- (BOOL)setupAudio:(id *)audio
{
  self->_encoderOutAudioDump = VCAudioDump_Create(1u, &self->_payloadInfo);
  self->_encoderInAudioDump = VCAudioDump_Create(0, &self->_payloadInfo);
  [(VCAudioTransmitter *)self setupAudioHeaderSize];
  if (![(VCAudioTransmitter *)self setupAudioTierPicker])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 528];
    v7 = @"Couldn't setup audio selector";
    v8 = @"Bad audio payload?";
LABEL_12:
    audioCopy2 = audio;
    v10 = 227;
    goto LABEL_13;
  }

  [(VCAudioTransmitter *)self logTierInfo:0];
  if ([(VCAudioTransmitter *)self setupAudioEncoders])
  {
    if ([(VCPacketBundler *)self->_audioBundler allocateBundleBuffer:1600]&& [(VCPacketBundler *)self->_audioBundlerShortRED allocateBundleBuffer:1600]&& [(VCAudioTransmitter *)self allocateLastInputSampleBuffer:[(VCAudioTransmitter *)self maximumSamplesPerFrame]])
    {
      if ([(VCAudioTransmitter *)self setupEncoderBuffer])
      {
        return 1;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 561];
      v7 = @"Couldn't allocate encode buffer for audio";
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 551];
      v7 = @"Couldn't allocate memory for audio";
    }

    v8 = @"Malloc?";
    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioTransmitter.m", 540];
  v7 = @"Couldn't setup encoder.";
  v8 = @"Bad remote payload?";
  audioCopy2 = audio;
  v10 = 226;
LABEL_13:
  [GKVoiceChatError getNSError:audioCopy2 code:32016 detailedCode:v10 filePath:v6 description:v7 reason:v8];
  return 0;
}

- (void)setOperatingMode:(int)mode
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_operatingMode != mode)
  {
    self->_operatingMode = mode;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [VCStringUtils cStringFromOperatingMode:self->_operatingMode];
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCAudioTransmitter setOperatingMode:]";
        v11 = 1024;
        v12 = 573;
        v13 = 2048;
        selfCopy = self;
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] operatingMode changed to %s", &v7, 0x30u);
      }
    }
  }
}

- (void)setTierPickerMode:(unsigned __int8)mode
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_tierPickerMode != mode)
  {
    self->_tierPickerMode = mode;
    atomic_fetch_add(&self->_audioTierChangeRequestCount, 1u);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [VCStringUtils cStringFromTierPickerMode:self->_tierPickerMode];
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCAudioTransmitter setTierPickerMode:]";
        v11 = 1024;
        v12 = 581;
        v13 = 2048;
        selfCopy = self;
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Setting tierPickerMode=%s. Resetting the audio tier picker", &v7, 0x30u);
      }
    }
  }
}

- (void)updateAudioTxRate
{
  v3 = micro(self, a2);
  lastReportingCallbackTimeShort = self->_lastReportingCallbackTimeShort;
  v5 = v3 - lastReportingCallbackTimeShort;
  self->_lastReportingCallbackTimeShort = v3;
  networkBitrate = self->_currentChannelMetrics.networkBitrate;
  *&self->_currentChannelMetrics.networkBitrate[1] = *self->_currentChannelMetrics.networkBitrate;
  if (v3 - lastReportingCallbackTimeShort >= 0.5)
  {
    sentAudioBytesShort = [(VCAudioTransmitter *)self sentAudioBytesShort];
    HIDWORD(lastReportingCallbackTimeShort) = 1083129856;
    v7 = ((8 * sentAudioBytesShort) / v5 / 1000.0 + 0.5);
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
  *networkBitrate = v7;
  v10 = 0.0;
  do
  {
    LODWORD(lastReportingCallbackTimeShort) = networkBitrate[v9];
    lastReportingCallbackTimeShort = *&lastReportingCallbackTimeShort;
    v10 = v10 + lastReportingCallbackTimeShort;
    ++v9;
  }

  while (v9 != 5);
  self->_currentChannelMetrics.averageNetworkBitrate = (v10 / 5.0);
}

- (void)gatherRealtimeStats:(__CFDictionary *)stats
{
  v65 = *MEMORY[0x1E69E9840];
  updateAudioTxRate = [(VCAudioTransmitter *)self updateAudioTxRate];
  if (stats)
  {
    v7 = micro(updateAudioTxRate, v6);
    v8 = v7 - self->_lastReportingCallbackTime;
    self->_lastReportingCallbackTime = v7;
    if (v8 >= 0.5)
    {
      v13 = ((8 * [(VCAudioTransmitter *)self encodedBytes]) / v8 / 1000.0 + 0.5);
      v12 = ((8 * [(VCAudioTransmitter *)self sentAudioBytes]) / v8 / 1000.0 + 0.5);
      v11 = ((8 * [(VCAudioTransmitter *)self encodedRedBytes]) / v8 / 1000.0 + 0.5);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v38 = v9;
          v39 = 2080;
          v40 = "[VCAudioTransmitter gatherRealtimeStats:]";
          v41 = 1024;
          v42 = 625;
          v43 = 2048;
          selfCopy2 = self;
          v45 = 2048;
          *v46 = v8;
          *&v46[8] = 2048;
          *&v46[10] = 0x3FE0000000000000;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d [%p] Failed to compute audio Tx bit rate because timePeriod=%fs < (AUDIO_TRANSMITTER_MIN_BITRATE_REPORT_PERIOD=%fs)", buf, 0x3Au);
        }
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    self->_currentChannelMetrics.averageMediaBitrate = 0;
    v36 = 0;
    RTPGetUplinkReportingStats(self->_rtpHandle, &v36);
    lastReportedRTPIngresspackets = self->_lastReportedRTPIngresspackets;
    if (v36 <= lastReportedRTPIngresspackets)
    {
      lastReportedRTPIngresspackets = 0;
    }

    v15 = v36 - lastReportedRTPIngresspackets;
    v16 = selectDestinationForRTMetrics();
    CFDictionaryAddValue(v16, @"RTPUplinkIngressAudioPkts", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15]);
    CFDictionaryAddValue(v16, @"ATxR", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12]);
    LODWORD(v17) = self->_currentDuplication;
    CFDictionaryAddValue(v16, @"AFEC", [MEMORY[0x1E696AD98] numberWithDouble:v17 / 100.0]);
    CFDictionaryAddValue(v16, @"ATxRPrimary", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13]);
    CFDictionaryAddValue(v16, @"ATxEncodedBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13]);
    CFDictionaryAddValue(v16, @"VCASRedundancyLevel", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_redNumPayloads]);
    CFDictionaryAddValue(v16, @"QID", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qualityIndex]);
    CFDictionaryAddValue(v16, @"ATCC", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inputFormat.format.mChannelsPerFrame]);
    CFDictionaryAddValue(v16, @"RedPayloadsAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.redPayloads]);
    CFDictionaryAddValue(v16, @"RedMaxDelayAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.redMaxDelay]);
    CFDictionaryAddValue(v16, @"REDPayloadBitrate", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11]);
    CFDictionaryAddValue(v16, @"PayloadAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.codecPayload]);
    CFDictionaryAddValue(v16, @"BitRateAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.codecBitrate]);
    CFDictionaryAddValue(v16, @"BundleAlt", [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tierInfo.bundling]);
    v18 = MEMORY[0x1E696AD98];
    atomic_exchange(&self->_audioTierChangeCount, 0);
    CFDictionaryAddValue(v16, @"ATierChangeCount", [v18 numberWithUnsignedInt:?]);
    if ([(VCAudioTransmitter *)self isStandaloneStreamMode])
    {
      LODWORD(v19) = self->_targetBitrate;
      CFDictionaryAddValue(v16, @"TTxR", [MEMORY[0x1E696AD98] numberWithDouble:v19 / 1000.0]);
    }

    v35 = 0;
    RTPGetPacketSent(self->_rtpHandle, &v35);
    v34 = 0.0;
    AFRCGetAudioPauseTime(self->_afrc, &v34);
    v33 = NAN;
    AFRCGetAudioMaxPauseTimes(self->_afrc, &v33);
    CFDictionaryAddValue(v16, @"APT", [MEMORY[0x1E696AD98] numberWithDouble:v34]);
    CFDictionaryAddValue(v16, @"APSM", [MEMORY[0x1E696AD98] numberWithDouble:v33]);
    CFDictionaryAddValue(v16, @"APS", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v35]);
    audioIssueDetector = self->_audioIssueDetector;
    if (audioIssueDetector)
    {
      *buf = 0;
      VCAudioIssueDetector_GetReportingStats(audioIssueDetector, buf);
    }

    self->_lastReportedRTPIngresspackets = v36;
    v21 = [MEMORY[0x1E696AD60] stringWithFormat:@"streamIDsCount=%d ", self->_idsChannelDataFormat.numOfStreamIDs];
    if (self->_idsChannelDataFormat.numOfStreamIDs)
    {
      v22 = 0;
      do
      {
        [v21 appendFormat:@"StreamID%d=%d ", v22, self->_idsChannelDataFormat.streamIDs[v22]];
        ++v22;
      }

      while (v22 < self->_idsChannelDataFormat.numOfStreamIDs);
    }

    if (VRTraceGetErrorLogLevelForModule() > 5)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v25) = self->_currentDuplication;
        redNumPayloads = self->_redNumPayloads;
        qualityIndex = self->_qualityIndex;
        v28 = v25 / 100.0;
        payload = [objc_msgSend_config(self->_currentAudioPayload) payload];
        targetBitrate = self->_targetBitrate;
        currentTargetBitrate = self->_currentTargetBitrate;
        supportsAdaptation = self->_supportsAdaptation;
        *buf = 136318978;
        v38 = v23;
        v39 = 2080;
        v40 = "[VCAudioTransmitter gatherRealtimeStats:]";
        v41 = 1024;
        v42 = 684;
        v43 = 2048;
        selfCopy2 = self;
        v45 = 1024;
        *v46 = v12;
        *&v46[4] = 2048;
        *&v46[6] = v28;
        *&v46[14] = 1024;
        *&v46[16] = v13;
        v47 = 1024;
        v48 = redNumPayloads;
        v49 = 1024;
        v50 = qualityIndex;
        v51 = 1024;
        v52 = payload;
        v53 = 1024;
        v54 = v35;
        v55 = 2112;
        v56 = v21;
        v57 = 1024;
        v58 = targetBitrate;
        v59 = 1024;
        v60 = currentTargetBitrate;
        v61 = 1024;
        v62 = supportsAdaptation;
        v63 = 1024;
        v64 = v11;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCAudioTransmitter [%p] audioTxBitrate=%ukbps, audioFecTx=%f, primaryAudioTxRate=%ukbps, audioStreamRedundancyLevel=%u, _qualityIndex=%u, payload=%u, totalPacketsSent=%d %@ _targetBitrate=%u _currentTargetBitrate=%u _supportsAdaptation=%d audioTxRedRate=%ukbps", buf, 0x76u);
      }
    }
  }
}

void *__43__VCAudioTransmitter_registerReportingTask__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 periodicReportingEnabled];
  if (result)
  {

    return [a2 gatherRealtimeStats:a3];
  }

  return result;
}

- (void)reportRedundancyConfigChange
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (NSDictionary)dtxMetrics
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (!self->_currentDTXPayload)
  {
    return 0;
  }

  audioFrameCounter = self->_audioFrameCounter;
  if (audioFrameCounter)
  {
    v4 = self->_silenceFrameCounter / audioFrameCounter;
  }

  else
  {
    v4 = 0.0;
  }

  v7[0] = @"DtxFramesTotal";
  v8[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v7[1] = @"DtxFrameSilent";
  v8[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_silenceFrameCounter];
  v7[2] = @"DtxCompRatio";
  *&v6 = v4;
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v7[3] = @"TxBytesActual";
  v8[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalTxAudioBytes];
  v7[4] = @"TxBytesEstimate";
  v8[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_estimateTxAudioBytes];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
}

- (float)nextAudioInterval:(int)interval
{
  v5 = [objc_msgSend_config(self->_currentAudioPayload a2)];
  v6 = [(VCPacketBundler *)self->_audioBundler packetsPerBundle]* v5 - interval;
  if (v6 < 1)
  {
    return 0.0;
  }

  else
  {
    return self->_blockSeconds * ceilf(v6 / self->_inputFormat.samplesPerFrame);
  }
}

- (void)removeUnusedAudioPayloads
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  allPayloadsFromAllTierTables = [(VCAudioTierPicker *)self->_audioTierPicker allPayloadsFromAllTierTables];
  v5 = [allPayloadsFromAllTierTables countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v52;
    *&v6 = 136316930;
    v29 = v6;
    v30 = v3;
    v31 = allPayloadsFromAllTierTables;
    do
    {
      v9 = 0;
      do
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(allPayloadsFromAllTierTables);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        v11 = _VCAudioTransmitter_UsedAudioPayloadForType(self, [v10 unsignedIntValue]);
        if (v11)
        {
          [v3 addObject:v11];
          goto LABEL_8;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              unsignedIntValue = [v10 unsignedIntValue];
              audioTierPicker = self->_audioTierPicker;
              v25 = [-[VCAudioTierPicker allPayloadsFromAllTierTables](audioTierPicker "allPayloadsFromAllTierTables")];
              audioPayloads = self->_audioPayloads;
              v27 = [(NSMutableArray *)audioPayloads count];
              *buf = v29;
              v35 = v22;
              v36 = 2080;
              v37 = "[VCAudioTransmitter removeUnusedAudioPayloads]";
              v38 = 1024;
              v39 = 798;
              v40 = 1024;
              *v41 = unsignedIntValue;
              *&v41[4] = 2048;
              *&v41[6] = audioTierPicker;
              *&v41[14] = 2048;
              *&v41[16] = v25;
              allPayloadsFromAllTierTables = v31;
              v42 = 2048;
              v43 = audioPayloads;
              v44 = 2048;
              v45 = v27;
              v19 = v23;
              v20 = " [%s] %s:%d payload=%u from _audioTierPicker=%p (count=%lu) was not found in the audio transmitter's _audioPayloads=%p (count=%lu)";
              v21 = 74;
              goto LABEL_19;
            }
          }
        }

        else
        {
          v12 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v12 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              unsignedIntValue2 = [v10 unsignedIntValue];
              v15 = self->_audioTierPicker;
              v16 = [-[VCAudioTierPicker allPayloadsFromAllTierTables](v15 "allPayloadsFromAllTierTables")];
              v17 = self->_audioPayloads;
              v18 = [(NSMutableArray *)v17 count];
              *buf = 136317442;
              v35 = v13;
              v36 = 2080;
              v37 = "[VCAudioTransmitter removeUnusedAudioPayloads]";
              v38 = 1024;
              v39 = 798;
              v40 = 2112;
              *v41 = v12;
              *&v41[8] = 2048;
              *&v41[10] = self;
              *&v41[18] = 1024;
              *&v41[20] = unsignedIntValue2;
              v42 = 2048;
              v43 = v15;
              v44 = 2048;
              v45 = v16;
              v46 = 2048;
              v47 = v17;
              v3 = v30;
              allPayloadsFromAllTierTables = v31;
              v48 = 2048;
              v49 = v18;
              v19 = v14;
              v20 = " [%s] %s:%d %@(%p) payload=%u from _audioTierPicker=%p (count=%lu) was not found in the audio transmitter's _audioPayloads=%p (count=%lu)";
              v21 = 94;
LABEL_19:
              _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
            }
          }
        }

LABEL_8:
        ++v9;
      }

      while (v7 != v9);
      v28 = [allPayloadsFromAllTierTables countByEnumeratingWithState:&v51 objects:v50 count:16];
      v7 = v28;
    }

    while (v28);
  }

  if (self->_currentDTXPayload)
  {
    [v3 addObject:?];
  }

  [(NSMutableArray *)self->_audioPayloads removeAllObjects];
  -[NSMutableArray addObjectsFromArray:](self->_audioPayloads, "addObjectsFromArray:", [v3 allObjects]);
}

- (BOOL)setupAudioEncoders
{
  v51 = *MEMORY[0x1E69E9840];
  if (self->_supportsAdaptation)
  {
    [(VCAudioTransmitter *)self removeUnusedAudioPayloads];
  }

  v3 = [(NSMutableArray *)self->_audioPayloads count];
  v4 = 4 * v3;
  v5 = &v29[-((v4 + 15) & 0x7FFFFFFF0) - 16];
  if (v3)
  {
    memset(&v29[-((v4 + 15) & 0x7FFFFFFF0) - 16], 170, v4);
  }

  if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      *&v5[4 * v6] = [objc_msgSend_config(-[NSMutableArray objectAtIndex:](self->_audioPayloads objectAtIndex:{v6)), "payload"}];
      ++v6;
    }

    while ((v3 & 0x7FFFFFFF) != v6);
  }

  RTPSetTxPayloadList(self->_rtpHandle, v3, v5);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  audioPayloads = self->_audioPayloads;
  v8 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
LABEL_10:
    v11 = 0;
    while (1)
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(audioPayloads);
      }

      v12 = *(*(&v47 + 1) + 8 * v11);
      [v12 setRamStadSRCEnabled:self->_ramStadSRCEnabled];
      if (([v12 createEncoderWithInputFormat:&self->_inputFormat] & 1) == 0)
      {
        break;
      }

      [v12 setCurrentDTXEnable:self->_currentDTXEnable];
      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v9)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v23 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v23)
        {
          return v23;
        }

        [VCAudioTransmitter setupAudioEncoders];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        v23 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v23)
        {
          return v23;
        }

        v34 = 136316418;
        v35 = v25;
        v36 = 2080;
        v37 = "[VCAudioTransmitter setupAudioEncoders]";
        v38 = 1024;
        v39 = 829;
        v40 = 2112;
        v41 = v24;
        v42 = 2048;
        selfCopy = self;
        v44 = 2112;
        v45 = v12;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create encoder for payload=%@", &v34, 0x3Au);
      }
    }

    LOBYTE(v23) = 0;
  }

  else
  {
LABEL_16:
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = self->_audioPayloads;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v31;
      v18 = MEMORY[0x1E6986650];
      *&v15 = 136315906;
      v28 = v15;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v28;
              v35 = v21;
              v36 = 2080;
              v37 = "[VCAudioTransmitter setupAudioEncoders]";
              v38 = 1024;
              v39 = 833;
              v40 = 2112;
              v41 = v20;
              _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioPayload createEncoder yielded instance=%@", &v34, 0x26u);
            }
          }
        }

        v16 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v16);
    }

    LOBYTE(v23) = 1;
  }

  return v23;
}

- (BOOL)allocateLastInputSampleBuffer:(unsigned int)buffer
{
  v3 = self->_inputFormat.format.mBytesPerFrame * buffer;
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      LODWORD(v5) = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v5)
      {
        return v5;
      }

      [VCAudioTransmitter allocateLastInputSampleBuffer:];
    }

    LOBYTE(v5) = 0;
    return v5;
  }

  if (self->_lastInputSampleBuffer && v3 <= self->_lastInputSampleBufferSize)
  {
LABEL_13:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = malloc_type_calloc(1uLL, v3, 0x57B8AE95uLL);
  if (v5)
  {
    v6 = v5;
    lastInputSampleBuffer = self->_lastInputSampleBuffer;
    if (lastInputSampleBuffer)
    {
      memcpy(&v5[(v3 - self->_lastInputSampleBufferSize)], lastInputSampleBuffer, self->_lastInputSampleBufferSize);
      v8 = self->_lastInputSampleBuffer;
    }

    else
    {
      v8 = 0;
    }

    free(v8);
    self->_lastInputSampleBuffer = v6;
    self->_lastInputSampleBufferSize = v3;
    goto LABEL_13;
  }

  return v5;
}

- (unsigned)maximumSamplesPerFrame
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  audioPayloads = self->_audioPayloads;
  v3 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    samplesPerFrame = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(audioPayloads);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (samplesPerFrame < [objc_msgSend_config(v8) samplesPerFrame])
        {
          samplesPerFrame = [objc_msgSend_config(v8) samplesPerFrame];
        }
      }

      v4 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v4);
  }

  else
  {
    LODWORD(samplesPerFrame) = 0;
  }

  return samplesPerFrame;
}

- (void)setCurrentDTXEnable:(BOOL)enable
{
  v14 = *MEMORY[0x1E69E9840];
  self->_currentDTXEnable = enable;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  audioPayloads = self->_audioPayloads;
  v5 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(audioPayloads);
        }

        [*(*(&v10 + 1) + 8 * i) setCurrentDTXEnable:self->_currentDTXEnable];
      }

      v6 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)currentPayloadUsed:(int)used payloadUsed:(id *)payloadUsed
{
  v17 = *MEMORY[0x1E69E9840];
  if (payloadUsed)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    audioPayloads = self->_audioPayloads;
    v7 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(audioPayloads);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([objc_msgSend_config(v11) samplesPerFrame] == used)
          {
            *payloadUsed = v11;
            return;
          }
        }

        v8 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }
}

- (BOOL)chooseAudioNetworkBitrate
{
  v104 = *MEMORY[0x1E69E9840];
  if (!self->_supportsAdaptation)
  {
    return 1;
  }

  selfCopy = self;
  rateChangeCounter = self->_rateChangeCounter;
  targetBitrate = self->_targetBitrate;
  v91 = rateChangeCounter;
  isAudioStalled = self->_isAudioStalled;
  v90 = 0;
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  if (self->_statisticsCollector)
  {
LABEL_5:
    redundancyPercentage = selfCopy->_redundancyPercentage;
    v6 = redundancyPercentage / 0x64;
    v7 = (selfCopy->_redundancyInterval / 20.0);
    v8 = redundancyPercentage / 0x64 != selfCopy->_redundancyControllerNumPayloads || selfCopy->_redundancyControllerMaxDelay20ms != v7;
    if (v90)
    {
      self = RTPResetConnectionStats(selfCopy->_rtpHandle);
    }

    operatingMode = selfCopy->_operatingMode;
    if (operatingMode == 7 || operatingMode == 2)
    {
      self = RTPUpdateAudioOnlyRateChange(selfCopy->_rtpHandle, v91);
    }

    v11 = micro(self, a2);
    if (selfCopy->_isLocalCellular_LowestConnectionQuality && v11 - selfCopy->_lastUpdateQualityIndicator > 5.0)
    {
      selfCopy->_lastUpdateQualityIndicator = v11;
      global_queue = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__VCAudioTransmitter_chooseAudioNetworkBitrate__block_invoke;
      block[3] = &unk_1E85F3778;
      block[4] = selfCopy;
      dispatch_async(global_queue, block);
    }

    if (isAudioStalled != selfCopy->_lastAudioStalled)
    {
      if (selfCopy->_isLocalCellular_LowestConnectionQuality)
      {
        RTPSetCellularAudioStallState(selfCopy->_rtpVideo, isAudioStalled);
        RTPSetCellularAudioStallState(selfCopy->_rtpHandle, isAudioStalled);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          lastAudioStalled = selfCopy->_lastAudioStalled;
          isConnectedOnIPv6_LowestConnectionQuality = selfCopy->_isConnectedOnIPv6_LowestConnectionQuality;
          *buf = 136316418;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
          *&buf[22] = 1024;
          *&buf[24] = 1171;
          *&buf[28] = 1024;
          *&buf[30] = lastAudioStalled;
          *&buf[34] = 1024;
          *&buf[36] = isAudioStalled;
          *&buf[40] = 1024;
          *&buf[42] = isConnectedOnIPv6_LowestConnectionQuality;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d UNEXPECTED: audio stall change (%d -> %d) while not in cellular(IPv6 :%d)", buf, 0x2Eu);
        }
      }

      selfCopy->_lastAudioStalled = isAudioStalled;
    }

    isAudioStalled = 0;
    audioTierChangeRequestCount = selfCopy->_audioTierChangeRequestCount;
    if (audioTierChangeRequestCount >= 1)
    {
      [(VCAudioTransmitter *)selfCopy setupAudioHeaderSize];
      [(VCAudioTransmitter *)selfCopy setupAudioTierPicker];
      atomic_fetch_add(&selfCopy->_audioTierChangeRequestCount, 0xFFFFFFFF);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          payload = [(VCAudioPayloadConfig *)[(VCAudioTier *)selfCopy->_currentAudioTier payloadConfig] payload];
          audioCodecBitrate = [(VCAudioTier *)selfCopy->_currentAudioTier audioCodecBitrate];
          redNumPayloads = [(VCAudioTier *)selfCopy->_currentAudioTier redNumPayloads];
          packetsPerBundle = [(VCAudioTier *)selfCopy->_currentAudioTier packetsPerBundle];
          v20 = selfCopy->_operatingMode;
          *buf = 136317186;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
          *&buf[22] = 1024;
          *&buf[24] = 1187;
          *&buf[28] = 2048;
          *&buf[30] = selfCopy;
          *&buf[38] = 1024;
          *&buf[40] = payload;
          *&buf[44] = 1024;
          *&buf[46] = audioCodecBitrate;
          v6 = redundancyPercentage / 0x64;
          *&buf[50] = 1024;
          *&buf[52] = redNumPayloads;
          *&buf[56] = 1024;
          *&buf[58] = packetsPerBundle;
          *&buf[62] = 1024;
          LODWORD(v95) = v20;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] AudioTierPicker was reset. Current audioTier info from default tier: payload=%u audioCodecBitrate=%u redNumPayloads=%u packetsPerBundle=%u operatingMode=%d.", buf, 0x44u);
        }
      }
    }

    v21 = redundancyPercentage + 100;
    v22 = v8;
    if (targetBitrate == selfCopy->_currentTargetBitrate && v21 == selfCopy->_currentDuplication && !v8 && audioTierChangeRequestCount <= 0 && !selfCopy->_audioTierHysteresis)
    {
      return !isAudioStalled;
    }

    selfCopy->_currentTargetBitrate = targetBitrate;
    if (selfCopy->_isRedEnabled)
    {
      audioTierPicker = selfCopy->_audioTierPicker;
      if (selfCopy->_targetBitrateIsAudioOnly)
      {
        v24 = [VCAudioTierPicker tierForAudioBitrate:"tierForAudioBitrate:withRedNumPayloads:" withRedNumPayloads:?];
      }

      else
      {
        v24 = [VCAudioTierPicker tierForNetworkBitrate:"tierForNetworkBitrate:withRedNumPayloads:" withRedNumPayloads:?];
      }

      v25 = v24;
      redNumPayloads2 = [(VCAudioTier *)selfCopy->_currentAudioTier redNumPayloads];
      v26 = redNumPayloads2 != [(VCAudioTier *)v25 redNumPayloads];
    }

    else
    {
      v25 = [VCAudioTierPicker tierForNetworkBitrate:"tierForNetworkBitrate:withLegacyDuplication:" withLegacyDuplication:?];
      v26 = 0;
    }

    if ((-[VCAudioPayloadConfig isEqual:](-[VCAudioTier payloadConfig](v25, "payloadConfig"), "isEqual:", objc_msgSend_config(selfCopy->_currentAudioPayload)) & 1) != 0 || v21 != selfCopy->_currentDuplication || v22 || (v28 = -[VCAudioTier audioCodecBitrate](v25, "audioCodecBitrate"), v28 == -[VCAudioPayload bitrate](selfCopy->_currentAudioPayload, "bitrate")) || ([objc_msgSend_config(selfCopy->_currentAudioPayload) qualityForBitRate:{-[VCAudioTier audioCodecBitrate](v25, "audioCodecBitrate")}], v29 <= 0.5))
    {
      if (([(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] isEqual:objc_msgSend_config(selfCopy->_currentAudioPayload)]& 1) == 0)
      {
        audioCodecBitrate2 = [(VCAudioTier *)v25 audioCodecBitrate];
        bitrate = [(VCAudioPayload *)selfCopy->_currentAudioPayload bitrate];
        if (audioCodecBitrate2 > bitrate && v21 <= selfCopy->_currentDuplication && v6 <= selfCopy->_redNumPayloads && selfCopy->_lastTierSwitch != 0.0)
        {
          v39 = micro(bitrate, v38);
          if (audioTierChangeRequestCount <= 0 && v39 - selfCopy->_lastTierSwitch < 2.0)
          {
            if (!selfCopy->_audioTierHysteresis)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v40 = VRTraceErrorLogLevelToCSTR();
                v41 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  payload2 = [(VCAudioPayloadConfig *)[(VCAudioTier *)selfCopy->_currentAudioTier payloadConfig] payload];
                  payload3 = [(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] payload];
                  lastTierSwitch = selfCopy->_lastTierSwitch;
                  *buf = 136316418;
                  *&buf[4] = v40;
                  *&buf[12] = 2080;
                  *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
                  *&buf[22] = 1024;
                  *&buf[24] = 1233;
                  *&buf[28] = 1024;
                  *&buf[30] = payload2;
                  *&buf[34] = 1024;
                  *&buf[36] = payload3;
                  *&buf[40] = 2048;
                  *&buf[42] = lastTierSwitch;
                  _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Time Hysteresis preventing tier upgrade from %d to %d, last upgrade at %6.3f", buf, 0x32u);
                }
              }

              selfCopy->_audioTierHysteresis = 1;
            }

            return !isAudioStalled;
          }
        }
      }

      if (v25 == selfCopy->_currentAudioTier || (v45 = [(VCAudioTier *)v25 audioCodecBitrate], v45 == [(VCAudioPayload *)selfCopy->_currentAudioPayload bitrate]) && v21 == selfCopy->_currentDuplication && !v22 && (v46 = [(VCAudioTier *)selfCopy->_currentAudioTier packetsPerBundle], v46 == [(VCAudioTier *)v25 packetsPerBundle]&& !v26))
      {
        if (v21 != selfCopy->_currentDuplication || v22)
        {
          selfCopy->_currentDuplication = v21;
          selfCopy->_redundancyControllerNumPayloads = v6;
          selfCopy->_redundancyControllerMaxDelay20ms = v7;
          if (selfCopy->_isRedEnabled && [(VCAudioTier *)v25 redNumPayloads]!= v6 && VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v64 = VRTraceErrorLogLevelToCSTR();
            v65 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              redNumPayloads3 = [(VCAudioTier *)v25 redNumPayloads];
              *buf = 136316162;
              *&buf[4] = v64;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
              *&buf[22] = 1024;
              *&buf[24] = 1278;
              *&buf[28] = 1024;
              *&buf[30] = v6;
              *&buf[34] = 1024;
              *&buf[36] = redNumPayloads3;
              _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding suggested red value %d with red value %u", buf, 0x28u);
            }
          }

          redMaxDelay20ms = [(VCAudioTier *)v25 redMaxDelay20ms];
          redundancyControllerMaxDelay20ms = selfCopy->_redundancyControllerMaxDelay20ms;
          if (redMaxDelay20ms > redundancyControllerMaxDelay20ms)
          {
            redundancyControllerMaxDelay20ms = redMaxDelay20ms;
          }

          redMaxDelay20ms = selfCopy->_redMaxDelay20ms;
          atomic_compare_exchange_strong_explicit(&selfCopy->_redMaxDelay20ms, &redMaxDelay20ms, redundancyControllerMaxDelay20ms, memory_order_relaxed, memory_order_relaxed);
          [(VCAudioTransmitter *)selfCopy setRedNumPayloads:[(VCAudioTier *)selfCopy->_currentAudioTier redNumPayloads] withMaxDelay:selfCopy->_redMaxDelay20ms shouldResetHistory:0 shouldEnableShortRED:[(VCAudioTier *)selfCopy->_currentAudioTier shortREDEnabled]];
        }

        else
        {
          selfCopy->_audioTierHysteresis = 0;
        }

        return !isAudioStalled;
      }

      if (v25 != selfCopy->_requestedAudioTier || selfCopy->_currentDuplication != v21 || v22 || v26)
      {
        selfCopy->_requestedAudioTier = v25;
        selfCopy->_currentDuplication = v21;
        selfCopy->_redundancyControllerNumPayloads = v6;
        selfCopy->_redundancyControllerMaxDelay20ms = v7;
        redNumPayloads = selfCopy->_redNumPayloads;
        atomic_compare_exchange_strong_explicit(&selfCopy->_redNumPayloads, &redNumPayloads, [(VCAudioTier *)v25 redNumPayloads], memory_order_relaxed, memory_order_relaxed);
        redMaxDelay20ms2 = [(VCAudioTier *)v25 redMaxDelay20ms];
        v49 = selfCopy->_redundancyControllerMaxDelay20ms;
        if (redMaxDelay20ms2 > v49)
        {
          v49 = redMaxDelay20ms2;
        }

        v50 = selfCopy->_redMaxDelay20ms;
        atomic_compare_exchange_strong_explicit(&selfCopy->_redMaxDelay20ms, &v50, v49, memory_order_relaxed, memory_order_relaxed);
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v51 = VRTraceErrorLogLevelToCSTR();
          v52 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            payload4 = [(VCAudioPayloadConfig *)[(VCAudioTier *)selfCopy->_currentAudioTier payloadConfig] payload];
            payload5 = [(VCAudioPayloadConfig *)[(VCAudioTier *)v25 payloadConfig] payload];
            v75 = v6;
            v54 = targetBitrate;
            networkBitrate = [(VCAudioTier *)selfCopy->_currentAudioTier networkBitrate];
            networkBitrate2 = [(VCAudioTier *)v25 networkBitrate];
            packetsPerBundle2 = [(VCAudioTier *)selfCopy->_currentAudioTier packetsPerBundle];
            packetsPerBundle3 = [(VCAudioTier *)v25 packetsPerBundle];
            *buf = 136317442;
            *&buf[4] = v51;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
            *&buf[22] = 1024;
            *&buf[24] = 1256;
            *&buf[28] = 1024;
            *&buf[30] = payload4;
            *&buf[34] = 1024;
            *&buf[36] = payload5;
            *&buf[40] = 1024;
            *&buf[42] = v54;
            v6 = v75;
            *&buf[46] = 1024;
            *&buf[48] = networkBitrate;
            *&buf[52] = 1024;
            *&buf[54] = networkBitrate2;
            *&buf[58] = 1024;
            *&buf[60] = packetsPerBundle2;
            LOWORD(v95) = 1024;
            *(&v95 + 2) = packetsPerBundle3;
            _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Switching audio bitrate tier payload %d -> %d for total tx %d: netBitrate %d -> %d, bundle %d -> %d", buf, 0x46u);
          }
        }

        if (selfCopy->_isRedEnabled && [(VCAudioTier *)v25 redNumPayloads]!= v6 && VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          v60 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            redNumPayloads4 = [(VCAudioTier *)v25 redNumPayloads];
            *buf = 136316162;
            *&buf[4] = v59;
            *&buf[12] = 2080;
            *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
            *&buf[22] = 1024;
            *&buf[24] = 1258;
            *&buf[28] = 1024;
            *&buf[30] = v6;
            *&buf[34] = 1024;
            *&buf[36] = redNumPayloads4;
            _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding suggested red value %d with red value %u", buf, 0x28u);
          }
        }

        redPayloadSize = [(VCAudioTier *)v25 redPayloadSize];
        v63 = redPayloadSize < [(VCAudioTier *)selfCopy->_currentAudioTier redPayloadSize];
        [(VCAudioTransmitter *)selfCopy useAudioTier:v25];
        [(VCAudioTransmitter *)selfCopy setRedNumPayloads:selfCopy->_redNumPayloads withMaxDelay:selfCopy->_redMaxDelay20ms shouldResetHistory:v63 shouldEnableShortRED:[(VCAudioTier *)v25 shortREDEnabled]];
        reportRedundancyConfigChange = [(VCAudioTransmitter *)selfCopy reportRedundancyConfigChange];
        goto LABEL_77;
      }
    }

    else if (v25 != selfCopy->_requestedAudioTier)
    {
      selfCopy->_requestedAudioTier = v25;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          bitrate2 = [(VCAudioPayload *)selfCopy->_currentAudioPayload bitrate];
          audioCodecBitrate3 = [(VCAudioTier *)v25 audioCodecBitrate];
          *buf = 136316162;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioTransmitter chooseAudioNetworkBitrate]";
          *&buf[22] = 1024;
          *&buf[24] = 1218;
          *&buf[28] = 1024;
          *&buf[30] = bitrate2;
          *&buf[34] = 1024;
          *&buf[36] = audioCodecBitrate3;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Switching audio bitrates without changing tier %d -> %d", buf, 0x28u);
        }
      }

      [(VCAudioTransmitter *)selfCopy useAudioPayload:selfCopy->_currentAudioPayload withBitrate:[(VCAudioTier *)v25 audioCodecBitrate] redNumPayloads:[(VCAudioTier *)v25 redNumPayloads]];
      reportRedundancyConfigChange = [(VCAudioTransmitter *)selfCopy updateAudioTxBitrate];
LABEL_77:
      selfCopy->_lastTierSwitch = micro(reportRedundancyConfigChange, v35);
      selfCopy->_audioTierHysteresis = 0;
      [(VCAudioTransmitter *)selfCopy logTierInfo:1];
    }

    return !isAudioStalled;
  }

  if ((AFRCGetAudioTxInfo(self->_afrc, &targetBitrate, 0, 0, 0, 0, &isAudioStalled, &v91, &v90, &v77) & 0x80000000) == 0)
  {
    redundancyController = selfCopy->_redundancyController;
    v101 = v87;
    v102 = v88;
    v103 = v89;
    v97 = v83;
    v98 = v84;
    v99 = v85;
    v100 = v86;
    *&buf[32] = v79;
    *&buf[48] = v80;
    v95 = v81;
    v96 = v82;
    *buf = v77;
    *&buf[16] = v78;
    self = [(VCRedundancyControllerAudio *)redundancyController updateRedundancyStrategyWithNetworkStatistics:buf];
    goto LABEL_5;
  }

  return 0;
}

uint64_t __47__VCAudioTransmitter_chooseAudioNetworkBitrate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 248))
  {
    AFRCGetQualityIndication(*(v1 + 304), (v1 + 128));
    v1 = *(a1 + 32);
  }

  v3 = *(v1 + 456);
  v4 = *(v1 + 128);
  v5 = *(v1 + 343);

  return [v3 updateQualityIndicator:v4 isIPv6:v5];
}

- (void)setupAudioHeaderSize
{
  v32 = *MEMORY[0x1E69E9840];
  self->_audioHeaderSize = 0;
  if (self->_useChannelDataFormat)
  {
    v17 = 0;
    BoolValueForKey = VCDefaults_GetBoolValueForKey(@"disableDynamicMediaPacketHeaderCalculations", 0);
    HIDWORD(v16) = -1431655766;
    LODWORD(v16) = VCMediaControlInfoGeneratorGetType(self->_controlInfoGenerator);
    BYTE4(v16) = VCMediaControlInfoGeneratorGetVersion(self->_controlInfoGenerator);
    v4 = VCFramingOverheadCalculationUtils_PerPacketMediaFramingOverheadWithRTPHandle(self->_rtpHandle, &v16, &v17);
    if (v4 < 0)
    {
      v12 = v4;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          rtpHandle = self->_rtpHandle;
          *buf = 136316674;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCAudioTransmitter setupAudioHeaderSize]";
          v22 = 1024;
          v23 = 1432;
          v24 = 1024;
          v25 = v12;
          v26 = 2048;
          v27 = rtpHandle;
          v28 = 1024;
          v29 = v16;
          v30 = 1024;
          v31 = BYTE4(v16);
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to get media framing overhead. result=0x%08x rtpHandle=%p mediaControlInfoGeneratorType=%u version=%u", buf, 0x38u);
        }
      }
    }

    else
    {
      self->_audioHeaderSize = self->_constantTransportOverhead + v17;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          audioHeaderSize = self->_audioHeaderSize;
          constantTransportOverhead = self->_constantTransportOverhead;
          *buf = 136316418;
          v19 = v5;
          v20 = 2080;
          v21 = "[VCAudioTransmitter setupAudioHeaderSize]";
          v22 = 1024;
          v23 = 1435;
          v24 = 1024;
          v25 = audioHeaderSize;
          v26 = 2048;
          v27 = v17;
          v28 = 1024;
          v29 = constantTransportOverhead;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio header size=%d, framingOverhead=%lu, _constantTransportOverhead=%u", buf, 0x32u);
        }
      }

      if (!BoolValueForKey)
      {
        v9 = self->_audioHeaderSize;
LABEL_19:
        v11 = self->_constantTransportOverhead;
        goto LABEL_20;
      }
    }

    v9 = [VCConnectionIDS worstCaseNetworkOverheadInBytesWithNumOfStreamId:self->_maxIDSStreamIdCount isPriorityIncluded:1, v16]+ 12;
    self->_audioHeaderSize = v9;
    goto LABEL_19;
  }

  if (self->_isUseCaseWatchContinuity)
  {
    v10 = 0;
  }

  else if (self->_isConnectedOnIPv6_LowestConnectionQuality)
  {
    v10 = 40;
  }

  else
  {
    v10 = 20;
  }

  v11 = v10 + 8;
  v9 = v10 + 20;
  self->_audioHeaderSize = v9;
  if (self->_useRateControl)
  {
    v9 = VCMediaControlInfoGeneratorGetFeedbackSize(self->_controlInfoGenerator) + self->_audioHeaderSize + 10;
    self->_audioHeaderSize = v9;
  }

LABEL_20:
  [(VCAudioRedBuilder *)self->_redBuilder setMaxREDPayloadSize:self->_maxAudioPacketSize + v11 - v9, v16];
}

- (id)packetsPerBundle
{
  v16[1] = *MEMORY[0x1E69E9840];
  forceAudioPacketsPerBundle = [+[VCDefaults sharedInstance](VCDefaults forceAudioPacketsPerBundle];
  if (forceAudioPacketsPerBundle)
  {
    v16[0] = [MEMORY[0x1E696AD98] numberWithInt:forceAudioPacketsPerBundle];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else if (self->_isUseCaseWatchContinuity)
  {
    return &unk_1F579E220;
  }

  else if (self->_operatingMode == 6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    audioPayloads = self->_audioPayloads;
    v6 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      v4 = &unk_1F579E238;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(audioPayloads);
          }

          if ([objc_msgSend_config(*(*(&v12 + 1) + 8 * i)) payload] == 101)
          {
            return &unk_1F579E250;
          }
        }

        v7 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v12 objects:v11 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return &unk_1F579E238;
    }
  }

  else
  {
    return &unk_1F579E268;
  }

  return v4;
}

- (BOOL)setupAudioTierPicker
{
  v40 = *MEMORY[0x1E69E9840];
  if (!self->_supportsAdaptation)
  {
    return 1;
  }

  packetsPerBundle = [(VCAudioTransmitter *)self packetsPerBundle];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_audioPayloads, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  audioPayloads = self->_audioPayloads;
  v6 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(audioPayloads);
        }

        [v4 setObject:objc_msgSend_config(*(*(&v36 + 1) + 8 * i)) atIndexedSubscript:{objc_msgSend(v4, "count")}];
      }

      v7 = [(NSMutableArray *)audioPayloads countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v7);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      operatingMode = self->_operatingMode;
      tierPickerMode = self->_tierPickerMode;
      *buf = 136316418;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioTransmitter setupAudioTierPicker]";
      *&buf[22] = 1024;
      *v30 = 1498;
      *&v30[4] = 2048;
      *&v30[6] = self;
      v31 = 1024;
      v32 = operatingMode;
      v33 = 1024;
      *v34 = tierPickerMode;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Tier Table for operatingMode=%d and tierPickerMode=%d", buf, 0x32u);
    }
  }

  currentAudioCap = self->_currentAudioCap;
  self->_currentAudioTier = 0;
  v15 = self->_tierPickerMode;
  supportedNumRedundantPayload = self->_supportedNumRedundantPayload;
  audioHeaderSize = self->_audioHeaderSize;
  isUseCaseWatchContinuity = self->_isUseCaseWatchContinuity;
  v28 = !self->_useWiFiTiers;
  v18 = packetsPerBundle;
  if (self->_operatingMode == 6)
  {
    tierNetworkBitrate = self->_tierNetworkBitrate;
  }

  else
  {
    tierNetworkBitrate = currentAudioCap;
  }

  v20 = *&self->_alwaysOnAudioRedundancyEnabled;
  wifiAllowRedLowBitratesEnabled = self->_wifiAllowRedLowBitratesEnabled;
  v22 = !self->_isConnectedOnIPv6_LowestConnectionQuality;
  isACC24Enabled = self->_isACC24Enabled;

  v24 = [VCAudioTierPicker alloc];
  buf[0] = v15;
  *&buf[1] = 0;
  *&buf[4] = 0;
  *&buf[8] = v4;
  *&buf[16] = v18;
  *v30 = supportedNumRedundantPayload;
  *&v30[8] = audioHeaderSize;
  v30[12] = v28;
  v30[13] = isUseCaseWatchContinuity;
  v31 = 0;
  v32 = tierNetworkBitrate;
  v33 = v20;
  v34[0] = wifiAllowRedLowBitratesEnabled;
  v34[1] = v22;
  v34[2] = isACC24Enabled;
  *&v34[3] = 0;
  *&v34[6] = 0;
  v25 = [(VCAudioTierPicker *)v24 initWithConfig:buf];
  self->_audioTierPicker = v25;
  [(VCAudioTransmitter *)self useAudioTier:[(VCAudioTierPicker *)v25 defaultTier]];
  if (self->_statisticsCollector)
  {
    self->_currentDuplication = self->_redundancyPercentage + 100;
  }

  else
  {
    AFRCGetAudioTxInfo(self->_afrc, 0, &self->_currentDuplication, 0, 0, 0, 0, 0, 0, 0);
  }

  [(VCAudioTransmitter *)self updateAudioTxBitrate];
  return self->_audioTierPicker != 0;
}

- (void)updateAudioTxBitrate
{
  v64 = *MEMORY[0x1E69E9840];
  audioTxBitrate = self->_audioTxBitrate;
  v4 = objc_msgSend_config(self->_currentAudioPayload, a2);
  v5 = (8 * self->_audioHeaderSize);
  mSampleRate = self->_inputFormat.format.mSampleRate;
  v7 = (mSampleRate / [v4 samplesPerFrame] * v5);
  p_vtable = VCVideoTransmitterDefault.vtable;
  if (+[VCPayloadUtils canBundleExternallyForPayload:forBundlingScheme:operatingMode:](VCPayloadUtils, "canBundleExternallyForPayload:forBundlingScheme:operatingMode:", [v4 payload], -[VCPacketBundler bundlingScheme](self->_audioBundler, "bundlingScheme"), self->_operatingMode))
  {
    v9 = (v7 / [(VCPacketBundler *)self->_audioBundler packetsPerBundle]);
    v10 = (8 * [v4 bundleHeaderBytes]);
    v11 = self->_inputFormat.format.mSampleRate;
    v7 = (v9 + v10 * (v11 / [v4 samplesPerFrame]));
  }

  self->_audioTxBitrate = [(VCAudioPayload *)self->_currentAudioPayload bitrate]+ v7;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_audioTxBitrate;
        bitrate = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
        audioHeaderSize = self->_audioHeaderSize;
        packetsPerBundle = [(VCPacketBundler *)self->_audioBundler packetsPerBundle];
        bundleHeaderBytes = [v4 bundleHeaderBytes];
        v18 = self->_inputFormat.format.mSampleRate;
        samplesPerFrame = [v4 samplesPerFrame];
        operatingMode = self->_operatingMode;
        *buf = 136317954;
        v44 = v13;
        v45 = 2080;
        v46 = "[VCAudioTransmitter updateAudioTxBitrate]";
        v47 = 1024;
        v48 = 1553;
        v49 = 1024;
        *v50 = v41;
        *&v50[4] = 1024;
        *&v50[6] = bitrate;
        LOWORD(selfCopy) = 1024;
        *(&selfCopy + 2) = v7;
        HIWORD(selfCopy) = 1024;
        *v52 = audioHeaderSize;
        *&v52[4] = 1024;
        *v53 = packetsPerBundle;
        p_vtable = (VCVideoTransmitterDefault + 24);
        *&v53[4] = 1024;
        *v54 = bundleHeaderBytes;
        *&v54[4] = 1024;
        *v55 = v18;
        *&v55[4] = 1024;
        *v56 = samplesPerFrame;
        *&v56[4] = 1024;
        *v57 = operatingMode;
        v21 = " [%s] %s:%d Setting audioTxBitrate to %d, %d audio + %d ((%d/%d+%d)*%d/%d) header for mode=%d";
        v22 = v14;
        v23 = 82;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = self->_audioTxBitrate;
        bitrate2 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
        v40 = self->_audioHeaderSize;
        packetsPerBundle2 = [(VCPacketBundler *)self->_audioBundler packetsPerBundle];
        bundleHeaderBytes2 = [v4 bundleHeaderBytes];
        v28 = self->_inputFormat.format.mSampleRate;
        samplesPerFrame2 = [v4 samplesPerFrame];
        v30 = self->_operatingMode;
        *buf = 136318466;
        v44 = v24;
        v45 = 2080;
        v46 = "[VCAudioTransmitter updateAudioTxBitrate]";
        v47 = 1024;
        v48 = 1553;
        v49 = 2112;
        *v50 = v12;
        *&v50[8] = 2048;
        selfCopy = self;
        *v52 = 1024;
        *&v52[2] = v42;
        *v53 = 1024;
        *&v53[2] = bitrate2;
        *v54 = 1024;
        *&v54[2] = v7;
        *v55 = 1024;
        *&v55[2] = v40;
        *v56 = 1024;
        *&v56[2] = packetsPerBundle2;
        *v57 = 1024;
        *&v57[2] = bundleHeaderBytes2;
        v58 = 1024;
        v59 = v28;
        p_vtable = VCVideoTransmitterDefault.vtable;
        v60 = 1024;
        v61 = samplesPerFrame2;
        v62 = 1024;
        v63 = v30;
        v21 = " [%s] %s:%d %@(%p) Setting audioTxBitrate to %d, %d audio + %d ((%d/%d+%d)*%d/%d) header for mode=%d";
        v22 = v25;
        v23 = 102;
        goto LABEL_13;
      }
    }
  }

  if (self->_mediaQueue != 0xFFFFFFFFLL)
  {
    v31 = [v4 samplesPerFrame] / self->_inputFormat.format.mSampleRate;
    if ([p_vtable + 472 canBundleExternallyForPayload:objc_msgSend(v4 forBundlingScheme:"payload") operatingMode:{-[VCPacketBundler bundlingScheme](self->_audioBundler, "bundlingScheme"), self->_operatingMode}])
    {
      v31 = v31 * [(VCPacketBundler *)self->_audioBundler packetsPerBundle];
    }

    if (v31 != self->_audioInterval)
    {
      MediaQueue_SetThrottlingAudioInterval(self->_mediaQueue, v31);
      self->_audioInterval = v31;
    }
  }

  v32 = self->_audioTxBitrate;
  if (v32 != audioTxBitrate)
  {
    afrc = self->_afrc;
    if (afrc != 0xFFFFFFFFLL)
    {
      AFRCSetAudioBitRate(afrc, v32);
    }
  }

  if (self->_isRedEnabled)
  {
    shortREDEnabled = [(VCAudioPayload *)self->_currentAudioPayload shortREDEnabled];
    bitrate3 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
    if (shortREDEnabled)
    {
      v36 = bitrate3 + self->_redNumPayloads * [(VCAudioPayload *)self->_currentAudioPayload shortREDBitrate];
    }

    else
    {
      v36 = bitrate3 + bitrate3 * self->_redNumPayloads;
    }

    self->_actualAudioSendingBitrate = v36 + v7;
    bitrate4 = [(VCAudioPayload *)self->_currentAudioPayload bitrate];
  }

  else
  {
    bitrate4 = self->_audioTxBitrate;
    self->_actualAudioSendingBitrate = (self->_redundancyPercentage + 100) * bitrate4 / 0x64;
  }

  self->_actualAudioSendingBitrateNoRED = bitrate4;
}

- (void)useAudioPayload:(id)payload withBitrate:(unsigned int)bitrate redNumPayloads:(unsigned int)payloads
{
  v6 = *&bitrate;
  v34 = *MEMORY[0x1E69E9840];
  if (self->_allowAudioSwitching)
  {
    currentAudioPayload = self->_currentAudioPayload;
    if (currentAudioPayload != payload)
    {
      v10 = [objc_msgSend_config(currentAudioPayload a2)];
      v11 = v10;
      if (VCPayloadUtils_SupportsShortREDForPayload(v10, v12))
      {
        payload = [objc_msgSend_config(payload) payload];
        if ((VCPayloadUtils_SupportsShortREDForPayload(payload, v14) & 1) == 0)
        {
          [(VCAudioRedBuilder *)self->_redBuilder resetShortREDHistoryAndPrimaryPayloadHistory:0];
        }
      }

      self->_currentAudioPayload = payload;
      [payload resetEncoder];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_17;
        }

        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        payload2 = [objc_msgSend_config(self->_currentAudioPayload) payload];
        samplesPerFrame = [objc_msgSend_config(self->_currentAudioPayload) samplesPerFrame];
        *v29 = 136316418;
        *&v29[4] = v16;
        *&v29[12] = 2080;
        *&v29[14] = "[VCAudioTransmitter useAudioPayload:withBitrate:redNumPayloads:]";
        *&v29[22] = 1024;
        LODWORD(v30) = 1593;
        WORD2(v30) = 1024;
        *(&v30 + 6) = v11;
        WORD5(v30) = 1024;
        HIDWORD(v30) = payload2;
        LOWORD(selfCopy) = 1024;
        *(&selfCopy + 2) = samplesPerFrame;
        v20 = " [%s] %s:%d Switching payloads from payload=%d -> %d %d samplesPerFrame";
        v21 = v17;
        v22 = 46;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v15 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
        }

        else
        {
          v15 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 6)
        {
          goto LABEL_17;
        }

        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        payload3 = [objc_msgSend_config(self->_currentAudioPayload) payload];
        samplesPerFrame2 = [objc_msgSend_config(self->_currentAudioPayload) samplesPerFrame];
        *v29 = 136316930;
        *&v29[4] = v23;
        *&v29[12] = 2080;
        *&v29[14] = "[VCAudioTransmitter useAudioPayload:withBitrate:redNumPayloads:]";
        *&v29[22] = 1024;
        LODWORD(v30) = 1593;
        WORD2(v30) = 2112;
        *(&v30 + 6) = v15;
        HIWORD(v30) = 2048;
        selfCopy = self;
        LOWORD(v32) = 1024;
        *(&v32 + 2) = v11;
        HIWORD(v32) = 1024;
        LODWORD(v33) = payload3;
        WORD2(v33) = 1024;
        *(&v33 + 6) = samplesPerFrame2;
        v20 = " [%s] %s:%d %@(%p) Switching payloads from payload=%d -> %d %d samplesPerFrame";
        v21 = v24;
        v22 = 66;
      }

      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v29, v22);
LABEL_17:
      afrc = self->_afrc;
      v28 = [objc_msgSend_config(self->_currentAudioPayload *v29];
      AFRCSetAudioPayload(afrc, v28, [(VCAudioPayload *)self->_currentAudioPayload bitrate]);
    }
  }

  [(VCAudioPayload *)self->_currentAudioPayload setShortREDEnabled:payloads != 0];
  if (!payloads)
  {
    [(VCPacketBundler *)self->_audioBundlerShortRED resetBuffer];
  }

  [(VCAudioPayload *)self->_currentAudioPayload setBitrate:v6];
}

- (void)useAudioTier:(id)tier
{
  self->_currentAudioTier = tier;
  -[VCAudioTransmitter useAudioPayload:withBitrate:redNumPayloads:](self, "useAudioPayload:withBitrate:redNumPayloads:", _VCAudioTransmitter_UsedAudioPayloadForType(self, [objc_msgSend(tier "payloadConfig")]), objc_msgSend(tier, "audioCodecBitrate"), objc_msgSend(tier, "redNumPayloads"));
  -[VCPacketBundler setPacketsPerBundle:](self->_audioBundler, "setPacketsPerBundle:", [tier packetsPerBundle]);
  -[VCPacketBundler setPacketsPerBundle:](self->_audioBundlerShortRED, "setPacketsPerBundle:", [tier packetsPerBundle]);
  [(VCAudioTransmitter *)self updateAudioTxBitrate];
  atomic_fetch_add(&self->_audioTierChangeCount, 1u);
}

- (void)start
{
  v31 = *MEMORY[0x1E69E9840];
  [(VCAudioTransmitter *)self setPeriodicReportingEnabled:1];
  [(VCAudioTransmitter *)self registerReportingTask];
  if (self->_needsPacketThread)
  {
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __27__VCAudioTransmitter_start__block_invoke;
    v16[3] = &unk_1E85F9BC0;
    v16[4] = self;
    v16[5] = v3;
    v4 = PacketThread_Create(48, 2048, 0x10u, 19, "rtpsend", v16);
    self->_packetThread = v4;
    PacketThread_ReceiverIsReady(v4);
  }

  audioIssueDetector = self->_audioIssueDetector;
  if (audioIssueDetector)
  {
    VCAudioIssueDetector_Start(audioIssueDetector);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_audioIssueDetector;
          *buf = 136316162;
          v18 = v7;
          v19 = 2080;
          v20 = "[VCAudioTransmitter start]";
          v21 = 1024;
          v22 = 1645;
          v23 = 2048;
          v24 = v9;
          v25 = 2048;
          selfCopy2 = self;
          v10 = " [%s] %s:%d Audio issue detector=%p is started in audio transmitter=%p";
          v11 = v8;
          v12 = 48;
LABEL_14:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_audioIssueDetector;
          *buf = 136316674;
          v18 = v13;
          v19 = 2080;
          v20 = "[VCAudioTransmitter start]";
          v21 = 1024;
          v22 = 1645;
          v23 = 2112;
          v24 = v6;
          v25 = 2048;
          selfCopy2 = self;
          v27 = 2048;
          v28 = v15;
          v29 = 2048;
          selfCopy3 = self;
          v10 = " [%s] %s:%d %@(%p) Audio issue detector=%p is started in audio transmitter=%p";
          v11 = v14;
          v12 = 68;
          goto LABEL_14;
        }
      }
    }
  }
}

unint64_t __27__VCAudioTransmitter_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  *(a2 + 32) = 0;
  *(a2 + 36) = *(*(a1 + 32) + 336);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *(a2 + 32);
  v8 = a3;
  v9 = a4;
  return _VCAudioTransmitter_SendAudioPacketImpl([*(a1 + 40) strong], v7, &v6);
}

- (void)stop
{
  v29 = *MEMORY[0x1E69E9840];
  [(VCAudioTransmitter *)self setPeriodicReportingEnabled:0];
  reportingUnregisterPeriodicTask();
  audioIssueDetector = self->_audioIssueDetector;
  if (!audioIssueDetector)
  {
    goto LABEL_13;
  }

  VCAudioIssueDetector_Stop(audioIssueDetector);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v7 = self->_audioIssueDetector;
    v15 = 136316162;
    v16 = v5;
    v17 = 2080;
    v18 = "[VCAudioTransmitter stop]";
    v19 = 1024;
    v20 = 1654;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    selfCopy2 = self;
    v8 = " [%s] %s:%d Audio issue detector=%p is stopped in audio transmitter=%p";
    v9 = v6;
    v10 = 48;
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_audioIssueDetector;
      v15 = 136316674;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCAudioTransmitter stop]";
      v19 = 1024;
      v20 = 1654;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      selfCopy3 = self;
      v8 = " [%s] %s:%d %@(%p) Audio issue detector=%p is stopped in audio transmitter=%p";
      v9 = v12;
      v10 = 68;
LABEL_12:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v15, v10);
    }
  }

LABEL_13:
  VCAudioDump_Finalize(&self->_encoderOutAudioDump);
  VCAudioDump_Finalize(&self->_encoderInAudioDump);
  packetThread = self->_packetThread;
  if (packetThread)
  {
    PacketThread_Destroy(packetThread);
    self->_packetThread = 0;
  }
}

- (void)logTierInfo:(int)info
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = -1431655766;
  v9 = -1431655766;
  if (self->_statisticsCollector)
  {
    targetBitrate = self->_targetBitrate;
    v5 = self->_redundancyPercentage + 100;
    v8 = v5;
    v9 = targetBitrate;
  }

  else
  {
    AFRCGetAudioTxInfo(self->_afrc, &v9, &v8, 0, 0, 0, 0, 0, 0, 0);
    v5 = v8;
    targetBitrate = v9;
  }

  *&v6 = __PAIR64__(v5, targetBitrate);
  DWORD2(v6) = [(VCAudioTransmitter *)self redNumPayloads];
  HIDWORD(v6) = 20 * [(VCAudioTransmitter *)self redMaxDelay20ms];
  LODWORD(v7) = [(VCAudioTier *)self->_currentAudioTier packetsPerBundle];
  DWORD1(v7) = [(VCAudioPayloadConfig *)[(VCAudioTier *)self->_currentAudioTier payloadConfig] payload];
  DWORD2(v7) = [(VCAudioTier *)self->_currentAudioTier audioCodecBitrate];
  HIDWORD(v7) = [(VCAudioTier *)self->_currentAudioTier redPayloadBitrate];
  *&self->_tierInfo.tier = v6;
  *&self->_tierInfo.bundling = v7;
  reportingTierLog();
}

- (void)setRedNumPayloads:(int)payloads withMaxDelay:(int)delay shouldResetHistory:(BOOL)history shouldEnableShortRED:(BOOL)d
{
  LODWORD(v6) = d;
  historyCopy = history;
  v8 = *&delay;
  v9 = *&payloads;
  v25 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316418;
      v14 = v11;
      v15 = 2080;
      v16 = "[VCAudioTransmitter setRedNumPayloads:withMaxDelay:shouldResetHistory:shouldEnableShortRED:]";
      v17 = 1024;
      v18 = 1893;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = historyCopy;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d numPayloads:%d maxDelay(in20ms):%d shouldResetHistory=%d", &v13, 0x2Eu);
    }
  }

  if (v9 > 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  [(VCAudioPayload *)self->_currentAudioPayload setShortREDEnabled:v6];
  if ((v6 & 1) == 0)
  {
    [(VCPacketBundler *)self->_audioBundlerShortRED resetBuffer];
  }

  [(VCAudioRedBuilder *)self->_redBuilder setNumPayloads:v9];
  [(VCAudioRedBuilder *)self->_redBuilder setMaxDelay:v8];
  if (historyCopy)
  {
    [(VCAudioRedBuilder *)self->_redBuilder resetShortREDHistoryAndPrimaryPayloadHistory:1];
  }
}

- (void)setStreamIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  self->_idsChannelDataFormat.numOfStreamIDs = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [ds countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(ds);
        }

        unsignedShortValue = [*(*(&v12 + 1) + 8 * v8) unsignedShortValue];
        numOfStreamIDs = self->_idsChannelDataFormat.numOfStreamIDs;
        self->_idsChannelDataFormat.numOfStreamIDs = numOfStreamIDs + 1;
        self->_idsChannelDataFormat.streamIDs[numOfStreamIDs] = unsignedShortValue;
        ++v8;
      }

      while (v6 != v8);
      v6 = [ds countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }
}

- (void)redundancyController:(id)controller redundancyPercentageDidChange:(unsigned int)change
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = [+[VCDefaults forceRedNumPayloads:controller]];
  if (v6)
  {
    changeCopy = 100 * v6;
  }

  else
  {
    changeCopy = change;
    if (self->_shouldApplyRedAsBoolean)
    {
      unsignedIntValue = [-[NSArray lastObject](self->_supportedNumRedundantPayload "lastObject")];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      supportedNumRedundantPayload = self->_supportedNumRedundantPayload;
      v10 = [(NSArray *)supportedNumRedundantPayload countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v40;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(supportedNumRedundantPayload);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            if ([v14 unsignedIntegerValue] >= change / 0x64uLL)
            {
              unsignedIntValue = [v14 unsignedIntValue];
              goto LABEL_14;
            }
          }

          v11 = [(NSArray *)supportedNumRedundantPayload countByEnumeratingWithState:&v39 objects:v38 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
      changeCopy = 100 * unsignedIntValue;
    }
  }

  self->_redundancyPercentage = changeCopy;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        redundancyPercentage = self->_redundancyPercentage;
        v25 = 136316162;
        v26 = v16;
        v27 = 2080;
        v28 = "[VCAudioTransmitter redundancyController:redundancyPercentageDidChange:]";
        v29 = 1024;
        v30 = 1935;
        v31 = 1024;
        *v32 = change;
        *&v32[4] = 1024;
        *&v32[6] = redundancyPercentage;
        v19 = " [%s] %s:%d Changed redundancyPercentage=%d applying _redundancyPercentage=%d";
        v20 = v17;
        v21 = 40;
LABEL_25:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, &v25, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_redundancyPercentage;
        v25 = 136316674;
        v26 = v22;
        v27 = 2080;
        v28 = "[VCAudioTransmitter redundancyController:redundancyPercentageDidChange:]";
        v29 = 1024;
        v30 = 1935;
        v31 = 2112;
        *v32 = v15;
        *&v32[8] = 2048;
        selfCopy = self;
        v34 = 1024;
        changeCopy2 = change;
        v36 = 1024;
        v37 = v24;
        v19 = " [%s] %s:%d %@(%p) Changed redundancyPercentage=%d applying _redundancyPercentage=%d";
        v20 = v23;
        v21 = 60;
        goto LABEL_25;
      }
    }
  }
}

- (void)processCDRXInNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification(&self->_lastNWConnectionNotification, &v9, &v8);
  VCNWConnectionMonitorUtils_GetCDRXCycleFromNWNotification(notification, &v7, &v6);
  if (v9 != v7 || v8 != v6)
  {
    VCPacketBundler_StoreAndEnqueueCdrxInfo(self->_audioBundler, v6, v7);
  }
}

- (void)process5GRATInNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(&self->_lastNWConnectionNotification);
  v6 = VCNWConnectionMonitorUtils_GetRATFromNWNotification(notification);
  if (!RATFromNWNotification && VCNWConnectionMonitorUtils_IsBasebandRAT5G(v6))
  {
    self->_ratType = 6;
    audioIssueDetector = self->_audioIssueDetector;

    VCAudioIssueDetector_UpdateConnectionType(audioIssueDetector, 6);
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeDefault:(tagVCNWConnectionNotification *)default
{
  v43 = *MEMORY[0x1E69E9840];
  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(&self->_lastNWConnectionNotification);
  v6 = VCNWConnectionMonitorUtils_GetRATFromNWNotification(default);
  SignalLevelFromNWNotification = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(&self->_lastNWConnectionNotification);
  v8 = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(default);
  if ((RATFromNWNotification != v6 || SignalLevelFromNWNotification != v8) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = default->var0.basebandAdvisoryType;
      frequency_band = default->var1.advisory.frequency_band;
      reference_signal_level = default->var1.advisory.cell_context.reference_signal_level;
      signal_level = default->var1.advisory.cell_context.signal_level;
      signal_quality = default->var1.advisory.cell_context.signal_quality;
      bt_coex = default->var1.advisory.bt_coex;
      quality_score_loss = default->var1.advisory.quality_score_loss;
      cdrx_cycle = default->var1.advisory.cell_context.cdrx_cycle;
      v19 = 136317954;
      v20 = v9;
      v21 = 2080;
      v22 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeDefault:]";
      v23 = 1024;
      v24 = 1972;
      v25 = 2048;
      selfCopy = self;
      v27 = 1024;
      v28 = basebandAdvisoryType;
      v29 = 1024;
      v30 = frequency_band;
      v31 = 1024;
      v32 = reference_signal_level;
      v33 = 1024;
      v34 = signal_level;
      v35 = 1024;
      v36 = signal_quality;
      v37 = 1024;
      v38 = bt_coex;
      v39 = 1024;
      v40 = quality_score_loss;
      v41 = 1024;
      v42 = cdrx_cycle;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular Network Notification: basebandAdvisoryType=%d radioAccessTechnology=%u referenceSignalLevel=%d signalLevel=%d signalQuality=%d uplinkBler=%u bandwidthLimitationIndication=%u cdrxCycleLength=%u", &v19, 0x56u);
    }
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeBWLimitation:(tagVCNWConnectionNotification *)limitation
{
  v21 = *MEMORY[0x1E69E9840];
  if (limitation->var1.advisory.version != self->_lastNWConnectionNotification.var1.advisory.version && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = limitation->var0.basebandAdvisoryType;
      version = limitation->var1.advisory.version;
      v9 = 136316418;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeBWLimitation:]";
      v13 = 1024;
      v14 = 1978;
      v15 = 2048;
      selfCopy = self;
      v17 = 1024;
      v18 = basebandAdvisoryType;
      v19 = 1024;
      v20 = version;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular BW Limitation: basebandAdvisoryType=%d bandwidthLimitationIndication=%u", &v9, 0x32u);
    }
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:(tagVCNWConnectionNotification *)measurement
{
  v37 = *MEMORY[0x1E69E9840];
  RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification(&self->_lastNWConnectionNotification);
  v6 = VCNWConnectionMonitorUtils_GetRATFromNWNotification(measurement);
  SignalLevelFromNWNotification = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(&self->_lastNWConnectionNotification);
  v8 = VCNWConnectionMonitorUtils_GetSignalLevelFromNWNotification(measurement);
  if ((RATFromNWNotification != v6 || SignalLevelFromNWNotification != v8) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = measurement->var0.basebandAdvisoryType;
      radioAccessTechnology = measurement->var1.codecRateAdaptation.radioAccessTechnology;
      referenceSignalLevel = measurement->var1.linkMeasurement.referenceSignalLevel;
      signalLevel = measurement->var1.linkMeasurement.signalLevel;
      signalQuality = measurement->var1.linkMeasurement.signalQuality;
      uplinkBler = measurement->var1.linkMeasurement.uplinkBler;
      v17 = 136317442;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:]";
      v21 = 1024;
      v22 = 1989;
      v23 = 2048;
      selfCopy = self;
      v25 = 1024;
      v26 = basebandAdvisoryType;
      v27 = 1024;
      v28 = radioAccessTechnology;
      v29 = 1024;
      v30 = referenceSignalLevel;
      v31 = 1024;
      v32 = signalLevel;
      v33 = 1024;
      v34 = signalQuality;
      v35 = 1024;
      v36 = uplinkBler;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular Link Measurement Notification: basebandAdvisoryType=%d radioAccessTechnology=%u referenceSignalLevel=%d signalLevel=%d signalQuality=%d uplinkBler=%u", &v17, 0x4Au);
    }
  }
}

- (void)logNWConnectionNotificationBBAdvisoryTypeCDRX:(tagVCNWConnectionNotification *)x
{
  v24 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      basebandAdvisoryType = x->var0.basebandAdvisoryType;
      reserved = x->var1.advisory._reserved;
      version = x->var1.advisory.version;
      v10 = 136316674;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCAudioTransmitter logNWConnectionNotificationBBAdvisoryTypeCDRX:]";
      v14 = 1024;
      v15 = 1994;
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = basebandAdvisoryType;
      v20 = 1024;
      v21 = reserved;
      v22 = 1024;
      v23 = version;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioTransmitter[%p] Cellular CDRX Notification: basebandAdvisoryType=%d cdrxCycleLength=%u cdrxState=%u", &v10, 0x38u);
    }
  }
}

- (void)logNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  basebandAdvisoryType = notification->var0.basebandAdvisoryType;
  if (basebandAdvisoryType > 2)
  {
    if (basebandAdvisoryType == 3)
    {
      [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeBWLimitation:?];
    }

    else if (basebandAdvisoryType == 4)
    {
      [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeCDRX:?];
    }
  }

  else if (basebandAdvisoryType)
  {
    if (basebandAdvisoryType == 2)
    {
      [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeLinkMeasurement:?];
    }
  }

  else
  {
    [(VCAudioTransmitter *)self logNWConnectionNotificationBBAdvisoryTypeDefault:?];
  }
}

- (void)processNWConnectionNotification:(tagVCNWConnectionNotification *)notification
{
  if (notification)
  {
    basebandAdvisoryType = notification->var0.basebandAdvisoryType;
    if (basebandAdvisoryType <= 5 && ((1 << basebandAdvisoryType) & 0x25) != 0)
    {
      [(VCAudioTransmitter *)self process5GRATInNWConnectionNotification:notification];
      basebandAdvisoryType = notification->var0.basebandAdvisoryType;
    }

    if ((basebandAdvisoryType | 4) == 4)
    {
      [(VCAudioTransmitter *)self processCDRXInNWConnectionNotification:notification];
    }

    [(VCAudioTransmitter *)self logNWConnectionNotification:notification];
    v7 = *&notification->version;
    v8 = *(&notification->var1.thermalUpdate + 6);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 2) = *(&notification->var1.thermalUpdate + 2);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 6) = v8;
    *&self->_lastNWConnectionNotification.version = v7;
    v9 = *(&notification->var1.thermalUpdate + 10);
    v10 = *(&notification->var1.thermalUpdate + 14);
    v11 = *(&notification->var1.thermalUpdate + 18);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 11) = *(&notification->var1.thermalUpdate + 11);
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 14) = v10;
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 18) = v11;
    *(&self->_lastNWConnectionNotification.var1.thermalUpdate + 10) = v9;
    audioIssueDetector = self->_audioIssueDetector;
    if (audioIssueDetector)
    {

      VCAudioIssueDetector_ProcessCellularNetworkNotification(audioIssueDetector, notification);
    }
  }

  else
  {
    [VCAudioTransmitter processNWConnectionNotification:];
  }
}

- (void)reportRTCPPacket
{
  audioIssueDetector = self->_audioIssueDetector;
  if (audioIssueDetector)
  {
    VCAudioIssueDetector_ReportRTCPTraffic(audioIssueDetector, a2);
  }
}

- (void)audioIssueDetectorCreateAndConfigure
{
  v37 = *MEMORY[0x1E69E9840];
  mSampleRate = self->_inputFormat.format.mSampleRate;
  reportingAgent = self->_reportingAgent;
  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = reportingAgent;
  WORD1(v17[0]) = mSampleRate;
  LOWORD(v17[0]) = self->_inputFormat.samplesPerFrame;
  ratType = self->_ratType;
  reportingModuleID = self->_reportingModuleID;
  v19 = ratType;
  v6 = VCAudioIssueDetector_Create(0);
  self->_audioIssueDetector = v6;
  VCAudioIssueDetector_Configure(v6, v17);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIssueDetector = self->_audioIssueDetector;
        *buf = 136316674;
        v21 = v8;
        v22 = 2080;
        v23 = "[VCAudioTransmitter audioIssueDetectorCreateAndConfigure]";
        v24 = 1024;
        v25 = 2061;
        v26 = 2048;
        v27 = audioIssueDetector;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 1024;
        *v31 = WORD1(v17[0]);
        *&v31[4] = 1024;
        *&v31[6] = LOWORD(v17[0]);
        v11 = " [%s] %s:%d Audio issue detector=%p is configured in audioTransmitter=%p with audioIOSampleRate=%d, audioIOSampleCount=%d";
        v12 = v9;
        v13 = 60;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_audioIssueDetector;
        *buf = 136317186;
        v21 = v14;
        v22 = 2080;
        v23 = "[VCAudioTransmitter audioIssueDetectorCreateAndConfigure]";
        v24 = 1024;
        v25 = 2061;
        v26 = 2112;
        v27 = v7;
        v28 = 2048;
        selfCopy2 = self;
        v30 = 2048;
        *v31 = v16;
        *&v31[8] = 2048;
        selfCopy3 = self;
        v33 = 1024;
        v34 = WORD1(v17[0]);
        v35 = 1024;
        v36 = LOWORD(v17[0]);
        v11 = " [%s] %s:%d %@(%p) Audio issue detector=%p is configured in audioTransmitter=%p with audioIOSampleRate=%d, audioIOSampleCount=%d";
        v12 = v15;
        v13 = 80;
        goto LABEL_11;
      }
    }
  }
}

- (void)audioIssueDetectorStopAndFinalize
{
  v27 = *MEMORY[0x1E69E9840];
  VCAudioIssueDetector_Stop(self->_audioIssueDetector);
  VCAudioIssueDetector_Finalize(&self->_audioIssueDetector);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        audioIssueDetector = self->_audioIssueDetector;
        v13 = 136316162;
        v14 = v4;
        v15 = 2080;
        v16 = "[VCAudioTransmitter audioIssueDetectorStopAndFinalize]";
        v17 = 1024;
        v18 = 2081;
        v19 = 2048;
        v20 = audioIssueDetector;
        v21 = 2048;
        selfCopy2 = self;
        v7 = " [%s] %s:%d Audio issue detector=%p is stopped and destroyed in audio transmitter=%p";
        v8 = v5;
        v9 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_audioIssueDetector;
        v13 = 136316674;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCAudioTransmitter audioIssueDetectorStopAndFinalize]";
        v17 = 1024;
        v18 = 2081;
        v19 = 2112;
        v20 = v3;
        v21 = 2048;
        selfCopy2 = self;
        v23 = 2048;
        v24 = v12;
        v25 = 2048;
        selfCopy3 = self;
        v7 = " [%s] %s:%d %@(%p) Audio issue detector=%p is stopped and destroyed in audio transmitter=%p";
        v8 = v11;
        v9 = 68;
        goto LABEL_11;
      }
    }
  }
}

- (void)handleActiveConnectionChangeMultiway:(id)multiway
{
  v28 = *MEMORY[0x1E69E9840];
  self->_maxAudioPacketSize = [multiway maxConnectionMTU];
  v5 = VCNetworkUtils_AdditionalOverheadForIDSOptions(LOBYTE(self->_maxIDSStreamIdCount), 1, 0);
  self->_maxAudioPacketSize -= v5;
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    maxAudioPacketSize = self->_maxAudioPacketSize;
    v16 = 136316418;
    v17 = v13;
    v18 = 2080;
    v19 = "[VCAudioTransmitter handleActiveConnectionChangeMultiway:]";
    v20 = 1024;
    v21 = 2124;
    v22 = 2112;
    v23 = v6;
    v24 = 2048;
    selfCopy = self;
    v26 = 1024;
    v27 = maxAudioPacketSize;
    v10 = " [%s] %s:%d %@(%p) Setting _maxAudioPacketSize=%u for multiway connection";
    v11 = v14;
    v12 = 54;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_maxAudioPacketSize;
      v16 = 136315906;
      v17 = v7;
      v18 = 2080;
      v19 = "[VCAudioTransmitter handleActiveConnectionChangeMultiway:]";
      v20 = 1024;
      v21 = 2124;
      v22 = 1024;
      LODWORD(v23) = v9;
      v10 = " [%s] %s:%d Setting _maxAudioPacketSize=%u for multiway connection";
      v11 = v8;
      v12 = 34;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    }
  }

LABEL_12:
  self->_constantTransportOverhead = VCConnection_PerPacketConnectionOverhead(multiway);
  if (!VCDefaults_GetBoolValueForKey(@"disableDynamicMediaPacketHeaderCalculations", 0))
  {
    RTPUpdateConstantTransportOverhead(self->_rtpHandle, self->_constantTransportOverhead);
  }

  self->_constantTransportOverhead += v5;
  atomic_fetch_add(&self->_audioTierChangeRequestCount, 1u);
}

- (void)handleActiveConnectionChangeDefault:(id)default
{
  v34 = *MEMORY[0x1E69E9840];
  self->_useWiFiTiers = [default isWifiToWifi];
  self->_maxAudioPacketSize = [default connectionMTU];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_12;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    maxAudioPacketSize = self->_maxAudioPacketSize;
    useWiFiTiers = self->_useWiFiTiers;
    v21 = 136316162;
    v22 = v6;
    v23 = 2080;
    v24 = "[VCAudioTransmitter handleActiveConnectionChangeDefault:]";
    v25 = 1024;
    v26 = 2141;
    v27 = 1024;
    *v28 = maxAudioPacketSize;
    *&v28[4] = 1024;
    *&v28[6] = useWiFiTiers;
    v10 = " [%s] %s:%d Setting _maxAudioPacketSize=%u for default mode, useWiFiTiers=%{BOOL}d";
    v11 = v7;
    v12 = 40;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(VCAudioTransmitter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v5 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_maxAudioPacketSize;
      v16 = self->_useWiFiTiers;
      v21 = 136316674;
      v22 = v13;
      v23 = 2080;
      v24 = "[VCAudioTransmitter handleActiveConnectionChangeDefault:]";
      v25 = 1024;
      v26 = 2141;
      v27 = 2112;
      *v28 = v5;
      *&v28[8] = 2048;
      selfCopy = self;
      v30 = 1024;
      v31 = v15;
      v32 = 1024;
      v33 = v16;
      v10 = " [%s] %s:%d %@(%p) Setting _maxAudioPacketSize=%u for default mode, useWiFiTiers=%{BOOL}d";
      v11 = v14;
      v12 = 60;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v21, v12);
    }
  }

LABEL_12:
  if (self->_useRateControl)
  {
    uplinkAudioBitrateCapOneToOne = [default uplinkAudioBitrateCapOneToOne];
  }

  else
  {
    uplinkAudioBitrateCapOneToOne = [default uplinkBitrateCap];
  }

  v18 = uplinkAudioBitrateCapOneToOne;
  IsLocalOnCellular = VCConnection_IsLocalOnCellular(default);
  IsRemoteOnCellular = VCConnection_IsRemoteOnCellular(default);
  [(VCAudioTransmitter *)self setCellTech:IsLocalOnCellular remoteCellular:IsRemoteOnCellular isIPV6:VCConnection_IsIPv6(default) audioCap:v18];
}

- (void)handleActiveConnectionChange:(id)change
{
  if (self->_operatingMode == 6)
  {
    [(VCAudioTransmitter *)self handleActiveConnectionChangeMultiway:change];
  }

  else
  {
    [(VCAudioTransmitter *)self handleActiveConnectionChangeDefault:change];
  }
}

- ($630EEFBF570FF8F3C5E9582E2A557BD5)currentChannelMetrics
{
  *&retstr->var8 = self[6].var7;
  var4 = self[6].var4;
  *&retstr->var3 = *&self[6].var2;
  *&retstr->var4.height = var4;
  *&retstr->var6 = *&self[6].var5;
  v4 = *&self[6].var1[1];
  *&retstr->var0 = *&self[5].var8;
  *&retstr->var1[3] = v4;
  return self;
}

- (void)setCurrentChannelMetrics:(id *)metrics
{
  v3 = *&metrics->var1[3];
  *&self->_currentChannelMetrics.averageNetworkBitrate = *&metrics->var0;
  *&self->_currentChannelMetrics.networkBitrate[3] = v3;
  v4 = *&metrics->var3;
  v5 = *&metrics->var4.height;
  v6 = *&metrics->var6;
  *&self->_currentChannelMetrics.lastVideoSampleTime = *&metrics->var8;
  *&self->_currentChannelMetrics.frameResolution.height = v5;
  *&self->_currentChannelMetrics.lastAudioSampleTime = v6;
  *&self->_currentChannelMetrics.averageFramerate = v4;
}

- (BOOL)shouldUpdateCodecBitrate:(_VCAudioCodecModeChangeEvent *)bitrate
{
  if (!bitrate->codecBitrate)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_18;
    }

    VRTraceErrorLogLevelToCSTR();
    v6 = OUTLINED_FUNCTION_40();
    if (!v6)
    {
      return v6;
    }

LABEL_13:
    OUTLINED_FUNCTION_24();
    v12 = 50;
LABEL_17:
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
    goto LABEL_18;
  }

  if ([(VCAudioPayload *)self->_currentAudioPayload bitrate]== bitrate->codecBitrate)
  {
    goto LABEL_18;
  }

  payload = bitrate->payload;
  if (payload != [objc_msgSend_config(self->_currentAudioPayload) payload])
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_18;
    }

    VRTraceErrorLogLevelToCSTR();
    v6 = OUTLINED_FUNCTION_40();
    if (!v6)
    {
      return v6;
    }

    [objc_msgSend_config(self->_currentAudioPayload) payload];
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_19();
    goto LABEL_13;
  }

  if ([objc_msgSend(objc_msgSend_config(self->_currentAudioPayload) "supportedBitrates")])
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v6 = OUTLINED_FUNCTION_40();
    if (!v6)
    {
      return v6;
    }

    [objc_msgSend_config(self->_currentAudioPayload) supportedBitrates];
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_10_26();
    OUTLINED_FUNCTION_24();
    v12 = 60;
    goto LABEL_17;
  }

LABEL_18:
  LOBYTE(v6) = 0;
  return v6;
}

- (BOOL)shouldUpdateCodecBandwidth:(_VCAudioCodecModeChangeEvent *)bandwidth
{
  payload = bandwidth->payload;
  if (payload == [objc_msgSend_config(self->_currentAudioPayload a2)])
  {
    codecBandwidth = bandwidth->codecBandwidth;
    if (codecBandwidth != [(VCAudioPayload *)self->_currentAudioPayload bandwidth])
    {
      if ([objc_msgSend(objc_msgSend_config(self->_currentAudioPayload) "supportedBandwidths")])
      {
        LOBYTE(v7) = 1;
        return v7;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v7 = OUTLINED_FUNCTION_40();
        if (!v7)
        {
          return v7;
        }

        [objc_msgSend_config(self->_currentAudioPayload) supportedBandwidths];
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_10_26();
        OUTLINED_FUNCTION_24();
        v13 = 60;
LABEL_12:
        _os_log_error_impl(v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v7 = OUTLINED_FUNCTION_40();
    if (!v7)
    {
      return v7;
    }

    [objc_msgSend_config(self->_currentAudioPayload) payload];
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_24();
    v13 = 50;
    goto LABEL_12;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (void)handleCodecModeChangeEvent:(int *)a1 didUpdateBandwidth:didUpdateBitrate:.cold.1(int *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_34())
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      v7 = 136316418;
      v8 = v2;
      v9 = 2080;
      v10 = "[VCAudioTransmitter handleCodecModeChangeEvent:didUpdateBandwidth:didUpdateBitrate:]";
      v11 = 1024;
      v12 = 450;
      v13 = 1024;
      v14 = v4;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Coded rate mode and bandwidth combination is not supported for payload=%u. mode=%u bandwidth=%u", &v7, 0x2Eu);
    }
  }
}

- (void)setupAudioEncoders
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 829;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create encoder for payload=%@", v3, 0x26u);
}

- (void)allocateLastInputSampleBuffer:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)processNWConnectionNotification:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end