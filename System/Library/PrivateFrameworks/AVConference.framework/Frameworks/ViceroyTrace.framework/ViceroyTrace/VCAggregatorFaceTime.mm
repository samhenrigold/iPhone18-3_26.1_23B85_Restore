@interface VCAggregatorFaceTime
+ (id)newThermalDataCollectors;
+ (void)newThermalDataCollectors;
- (BOOL)isDuplicationChangedForEventType:(unsigned __int16)type;
- (VCAggregatorFaceTime)initWithDelegate:(id)delegate nwParentActivity:(id)activity conversationTimeBase:(id)base;
- (id)aggregatedCallReports;
- (id)aggregatedSegmentQRReport;
- (id)aggregatedSegmentReport:(int)report;
- (id)aggregatedSegmentReportInternal:(int)internal;
- (id)updatePayloadWithSingleParticipantData:(id)data;
- (void)addConnectionTiming:(id)timing;
- (void)addControlChannelTelemetry:(id)telemetry;
- (void)dealloc;
- (void)dispatchedUpdateRoleModeTransport:(unsigned __int16)transport deviceRole:(unsigned __int16)role transportType:(unsigned __int16)type isInitiator:(BOOL)initiator isWalkieTalkieMode:(BOOL)mode;
- (void)flushCurrentSegment;
- (void)flushCurrentSegment:(id)segment;
- (void)populateSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes toPayload:(id)payload;
- (void)processBackgroundReplacementStatus:(id)status;
- (void)processCameraResolution:(id)resolution;
- (void)processCenterStageFeatureStatus:(id)status;
- (void)processConnectionEstablishment:(id)establishment;
- (void)processControlChannelEventType:(unsigned __int16)type payload:(id)payload;
- (void)processDuplication:(id)duplication type:(unsigned __int16)type;
- (void)processEventTriggerForNewSegment:(id)segment;
- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)processEyeContactFeatureStatus:(id)status;
- (void)processPortraitModeFeatureStatus:(id)status;
- (void)processRTXConfigData:(id)data;
- (void)processReactionFeatureStatus:(id)status;
- (void)processRtcpPSFBForResiliencyConfigData:(id)data;
- (void)processStudioLightFeatureStatus:(id)status;
- (void)processThermalLevelChange:(id)change withTime:(double)time;
- (void)processWindowMode:(id)mode responseCode:(int)code;
- (void)reset:(id)reset;
- (void)setNWActivityReportingEnabled:(BOOL)enabled;
- (void)setupAdaptiveLearningWithParameters:(id)parameters;
- (void)startNewSegment:(id)segment;
- (void)transferActiveSegmentStatus:(id)status;
- (void)updateAVSyncOffsetSumAndCountWithValue:(int)value;
- (void)updateActiveConnectionRegistry:(id)registry type:(unsigned __int16)type;
- (void)updateAlgoMetrics:(id)metrics type:(unsigned int)type;
- (void)updateAudioTxStatsWithPayload:(id)payload;
- (void)updateBitrateCap:(id)cap;
- (void)updateCellTech:(id)tech;
- (void)updateCenterStageEnabled:(unsigned __int16)enabled;
- (void)updateConnectionSubTimes:(id)times;
- (void)updateConnectionTelemetry:(id)telemetry;
- (void)updateCoreMotionActivityWithPayload:(id)payload;
- (void)updateCurrentMediaBitratesWithPayload:(id)payload;
- (void)updateErrorCode:(id)code;
- (void)updateLateFrameStats:(id)stats;
- (void)updateLinkProbingStats:(unsigned int)stats payload:(id)payload;
- (void)updateLinkSuggestionTelemetry:(id)telemetry;
- (void)updateMediaBitrateHistogramsWithTimeElapsed:(unsigned int)elapsed;
- (void)updateNetworkSendResultStats:(id)stats;
- (void)updateNetworkStats:(unsigned int)stats payload:(id)payload;
- (void)updateNoRemoteState:(id)state state:(BOOL)a4;
- (void)updatePauseVideo:(id)video;
- (void)updatePortraitBlurEnabled:(unsigned __int16)enabled;
- (void)updatePrimaryConnHealthAllowedDelay:(double)delay;
- (void)updateProtocolStackDescription:(id)description;
- (void)updateQRExperiments:(id)experiments;
- (void)updateRTStats:(id)stats;
- (void)updateRTXStats:(id)stats;
- (void)updateRateControlExperiment:(id)experiment type:(unsigned __int16)type;
- (void)updateRateControlSmartBrakeTrialVersion:(id)version type:(unsigned __int16)type;
- (void)updateRelayInfo:(id)info;
- (void)updateSegmentStats:(id)stats;
- (void)updateSpatialAudioSupport:(id)support;
- (void)updateSwitchConfiguration:(unsigned int)configuration payload:(id)payload;
- (void)updateThermalDataCollectorsStateWithPayload:(id)payload withTime:(double)time;
- (void)updateThermalMetricsFromPayload:(id)payload;
- (void)updateTotalConnectionTime:(id)time;
- (void)updateVCRCProfileNumber:(unsigned int)number;
- (void)updateVPCStatus:(id)status;
- (void)updateVideoQualityWithPayload:(id)payload;
- (void)updateVideoResolution:(id)resolution;
- (void)updateVideoSwitchTimes:(id)times;
- (void)updateWRMMetrics:(unsigned int)metrics payload:(id)payload;
@end

@implementation VCAggregatorFaceTime

- (VCAggregatorFaceTime)initWithDelegate:(id)delegate nwParentActivity:(id)activity conversationTimeBase:(id)base
{
  v26 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = VCAggregatorFaceTime;
  v5 = [(VCAggregator *)&v13 initWithDelegate:delegate nwParentActivity:activity conversationTimeBase:base];
  v6 = v5;
  if (v5)
  {
    v5->super._isOneToOneMode = 1;
    v5->super._isDuplicationEnabled = 0;
    v5->_callTotalDurationTicks = 0;
    v5->_callAggregatedDurationTicks = 0;
    v5->_minVideoFrameRate = 60;
    v5->_callVideoSwitchPeriodHistogram = [[VCReportingHistogram alloc] initWithType:31 bucketValues:0];
    v6->_lossPattern = [[VCReportingHistogram alloc] initWithType:41 bucketValues:0];
    v6->_minVPCProcessingTime = 4294967300.0;
    v6->_JBQSizeDeltaVidLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
    v6->_JBQSizeDeltaAudLarger = [[VCReportingHistogram alloc] initWithType:45 bucketValues:0];
    v6->_evictedFramesLatePacketHist = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v6->super.super._retransmissionResponseTime = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v6->super.super._retransmissionLateTime = [[VCReportingHistogram alloc] initWithType:79 bucketValues:0];
    v6->super.super._retransmissionActualMediaBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v6->super.super._retransmissionBitrate = [[VCReportingHistogram alloc] initWithType:51 bucketValues:0];
    v6->_minVPCProcessingTime = 4294967300.0;
    v6->super._nwActivity = nw_activity_create();
    if (v6->super._sessionNwActivity)
    {
      nw_activity_set_parent_activity();
    }

    nw_activity_activate();
    v6->_minAVSyncOffset = 0x7FFFFFFF;
    v6->_maxAVSyncOffset = 0x80000000;
    v6->_lastSegmentKey = objc_alloc_init(MEMORY[0x277CCACA0]);
    v6->_pipThermalDurations = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->_handshakeStartTime = NAN;
    v6->_handshakeDuration = NAN;
    v6->super._studioLightDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._centerStageDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._portraitModeDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._reactionActiveDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->super._eyeContactDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v6->_currentAudioCodecPayload = 0;
    v6->_currentAudioMediaBitrate = 0;
    v6->_lastAudioTierStatsUpdate = 0.0;
    v6->_nacksPLRWithRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v6->_nacksPLRWithoutRTX = [[VCReportingHistogram alloc] initWithType:3 bucketValues:0];
    v6->_thermalDataCollectors = +[VCAggregatorFaceTime newThermalDataCollectors];
    v6->_mediaReceivedTime = 0x80000000;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        lossPattern = v6->_lossPattern;
        JBQSizeDeltaVidLarger = v6->_JBQSizeDeltaVidLarger;
        JBQSizeDeltaAudLarger = v6->_JBQSizeDeltaAudLarger;
        *buf = 136316418;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCAggregatorFaceTime initWithDelegate:nwParentActivity:conversationTimeBase:]";
        v18 = 1024;
        v19 = 2139;
        v20 = 2048;
        v21 = lossPattern;
        v22 = 2048;
        v23 = JBQSizeDeltaVidLarger;
        v24 = 2048;
        v25 = JBQSizeDeltaAudLarger;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _lossPattern=%p _JBQSizeDeltaVidLarger=%p _JBQSizeDeltaAudLarger=%p", buf, 0x3Au);
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  self->_lastSegmentKey = 0;

  if (self->super._nwActivity)
  {
    nw_activity_complete_with_reason();
    nw_release(self->super._nwActivity);
    self->super._nwActivity = 0;
  }

  v3.receiver = self;
  v3.super_class = VCAggregatorFaceTime;
  [(VCAggregator *)&v3 dealloc];
}

- (void)setupAdaptiveLearningWithParameters:(id)parameters
{
  if ([objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningState), "intValue"}])
  {
    v5 = [[VCAdaptiveLearning alloc] initWithParameters:parameters];
  }

  else
  {
    v5 = 0;
  }

  self->super._adaptiveLearning = v5;
}

+ (id)newThermalDataCollectors
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (!v2)
  {
    +[(VCAggregatorFaceTime *)&v14];
LABEL_13:
    v12 = v14;
    v13 = v15;

    return 0;
  }

  v3 = objc_alloc_init(VCWalkieTalkieData);
  if (!v3)
  {
    +[(VCAggregatorFaceTime *)&v14];
    goto LABEL_13;
  }

  v4 = v3;
  v5 = objc_alloc_init(VCRelayData);
  if (!v5)
  {
    [(VCAggregatorFaceTime *)v4 newThermalDataCollectors:&v15];
    goto LABEL_13;
  }

  v6 = v5;
  v7 = objc_alloc_init(VCEffectsData);
  if (!v7)
  {
    [(VCAggregatorFaceTime *)v6 newThermalDataCollectors:v4];
    goto LABEL_13;
  }

  v8 = v7;
  v9 = objc_alloc_init(VCVoiceIsolationData);
  if (!v9)
  {
    [(VCAggregatorFaceTime *)v8 newThermalDataCollectors:v6];
    goto LABEL_13;
  }

  v10 = v9;
  [v2 addObject:v4];
  [v2 addObject:v6];
  [v2 addObject:v8];
  [v2 addObject:v10];

  return v2;
}

- (id)aggregatedSegmentReportInternal:(int)internal
{
  if (internal == 2)
  {
    return [(CallSegment *)self->_currentSegment segmentReport];
  }

  else
  {
    return 0;
  }
}

- (id)aggregatedSegmentReport:(int)report
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__1;
  stateQueue = self->super._stateQueue;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VCAggregatorFaceTime_aggregatedSegmentReport___block_invoke;
  block[3] = &unk_278BD4890;
  block[4] = self;
  block[5] = &v8;
  reportCopy = report;
  dispatch_sync(stateQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void *__48__VCAggregatorFaceTime_aggregatedSegmentReport___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) aggregatedSegmentReportInternal:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)aggregatedSegmentQRReport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VCAggregatorFaceTime_aggregatedSegmentQRReport__block_invoke;
  v5[3] = &unk_278BD4CF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__49__VCAggregatorFaceTime_aggregatedSegmentQRReport__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1368) setErrorCode:*(*(a1 + 32) + 520)];
  result = [*(*(a1 + 32) + 1368) segmentQRReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)addControlChannelTelemetry:(id)telemetry
{
  [(VCAggregatorFaceTime *)self markHandshakeCompletion:0];
  v4 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:?], 2);

  [telemetry setObject:v4 forKeyedSubscript:@"CCHDRTN"];
}

- (void)addConnectionTiming:(id)timing
{
  mediaReceivedTime = self->_mediaReceivedTime;
  if (mediaReceivedTime != 0x80000000 && (mediaReceivedTime || self->_transportConnectionTime) && (self->_mediaReceivedToProcessedTime || self->super._isWalkieTalkieMode))
  {
    [timing setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_totalConnectionTime), @"CTCT"}];
    [timing setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_startConnectionTime), @"CST"}];
    [timing setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_transportConnectionTime), @"CTT"}];
    [timing setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_totalMediaStallSaveInterval), @"TMSSI"}];
    [timing setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_mediaReceivedTime), @"MRT"}];
    [timing setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaReceivedToProcessedTime), @"MRPT"}];
  }

  if (self->_totalConnectionTime_Alt && [MEMORY[0x277CCABA8] numberWithUnsignedInt:?])
  {
    v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"CTCT", @"A"];
    if (self->_totalConnectionTime_Alt)
    {
      v7 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
    }

    else
    {
      v7 = 0;
    }

    [timing setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)updateTotalConnectionTime:(id)time
{
  v19 = *MEMORY[0x277D85DE8];
  if ([time objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAE5)}])
  {
    if ([time objectForKeyedSubscript:@"VCSPIDSID"])
    {
      self->_totalConnectionTime_Alt = [objc_msgSend(time objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAE5)), "unsignedIntValue"}];
      if (VRTraceGetErrorLogLevelForModule("") >= 6)
      {
        v5 = VRTraceErrorLogLevelToCSTR(6u);
        v6 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [time objectForKeyedSubscript:@"VCSPIDSID"];
          totalConnectionTime_Alt = self->_totalConnectionTime_Alt;
          v9 = 136316162;
          v10 = v5;
          v11 = 2080;
          v12 = "[VCAggregatorFaceTime updateTotalConnectionTime:]";
          v13 = 1024;
          v14 = 2285;
          v15 = 2112;
          v16 = v7;
          v17 = 1024;
          v18 = totalConnectionTime_Alt;
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing for participantID=%@, TotalConnectionTime=%d", &v9, 0x2Cu);
        }
      }
    }
  }
}

- (id)aggregatedCallReports
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  stateQueue = self->super._stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__VCAggregatorFaceTime_aggregatedCallReports__block_invoke;
  v8[3] = &unk_278BD4C10;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(stateQueue, v8);
  activeConnectionRegistry = self->super._activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [v10[5] setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  v5 = v10[5];
  v15[0] = v10[5];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  _Block_object_dispose(&v9, 8);
  return v6;
}

_BYTE *__45__VCAggregatorFaceTime_aggregatedCallReports__block_invoke(uint64_t a1)
{
  v207[1] = *MEMORY[0x277D85DE8];
  v181 = objc_alloc(MEMORY[0x277CBEB38]);
  v179 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "RTPeriod") * *(*(a1 + 32) + 1420)}];
  v177 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 548)];
  v175 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1744)];
  v173 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1748)];
  v172 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 479)];
  v170 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(*(a1 + 32), "adaptiveLearningState")}];
  v168 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 516)];
  v166 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 520)];
  v164 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 188)];
  v162 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 784)];
  v160 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 2120)];
  v158 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 2144)];
  v156 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 2145)];
  v154 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 432)];
  v2 = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 433)];
  v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 428)];
  v4 = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 2148)];
  v5 = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 2152)];
  v6 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2088)];
  v7 = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2096)];
  v8 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 472)];
  v9 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 473)];
  *(*(*(a1 + 40) + 8) + 40) = [v181 initWithObjectsAndKeys:{v179, @"DRTN", v177, @"MODE", v175, @"DEVROLE", v173, @"TT", v172, @"INTTR", v170, @"MLRN", v168, @"ERR", v166, @"DERR", v164, @"NEGSW", &unk_284FA5408, @"RVER", v162, @"VPCENBD", v160, @"EXPE", v158, @"CAMCENSTAGE", v156, @"CAMB", v154, @"RTXNacksEnabled", v2, @"RTXNacksDelayedEnabled", v3, @"RTXNacksConfigVersion", v4, @"CAMRESW", v5, @"CAMRESH", v6, @"TPSSCTR", v7, @"TPSFCTR", v8, @"RtcpForLoss", v9, @"RtcpForLtrAck", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(*(a1 + 32) + 330)), @"DIAFELD", 0}];
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v188.receiver = *(a1 + 32);
  v188.super_class = VCAggregatorFaceTime;
  [v10 addEntriesFromDictionary:{objc_msgSendSuper2(&v188, sel_dispatchedAggregatedReportCommon)}];
  [*(a1 + 32) addConnectionTiming:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) addVPCTelemetry:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) addIDSTelemetry:*(*(*(a1 + 40) + 8) + 40)];
  [objc_msgSend(*(a1 + 32) "captionsDataCollector")];
  v11 = *(a1 + 32);
  if (*(v11 + 192) == 1)
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    v206 = @"REMSW";
    v207[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v11 + 184)];
    [v12 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v207, &v206, 1)}];
    v11 = *(a1 + 32);
  }

  [v11 addVideoFeatureStatus:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) reportSpatialAudioSupport:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:{objc_msgSend(*(a1 + 32), "reportingClientExperimentSettingsDictionary")}];
  [*(a1 + 32) addControlChannelTelemetry:*(*(*(a1 + 40) + 8) + 40)];
  v13 = *(a1 + 32);
  if (*(v13 + 384))
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v13 + 392)), @"StartDate"}];
    v14 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(v14 forKeyedSubscript:{"numberWithInt:", v15), @"EndDate"}];
    v13 = *(a1 + 32);
  }

  if (*(v13 + 1884) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", 1), @"1T1SWT"}];
    v13 = *(a1 + 32);
    if (*(v13 + 1888) > 0.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), @"1T1SWTT"}];
      v13 = *(a1 + 32);
    }
  }

  if (*(v13 + 1885) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", 1), @"GFTSWT"}];
    v13 = *(a1 + 32);
    if (*(v13 + 1904) > 0.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), @"GFTSWTT"}];
      v13 = *(a1 + 32);
    }
  }

  if (*(v13 + 1896))
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"1T1SWTERR"}];
    v13 = *(a1 + 32);
  }

  if (*(v13 + 1912))
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"GFTSWTERR"}];
    v13 = *(a1 + 32);
  }

  v16 = *(v13 + 176);
  if (v16)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v16 forKeyedSubscript:@"REMBUILD"];
    v13 = *(a1 + 32);
  }

  [v13 addCameraMetricsToReportDictionary:*(*(*(a1 + 40) + 8) + 40) totalDuration:{objc_msgSend(v13, "RTPeriod") * *(v13 + 1420)}];
  [*(a1 + 32) addThermalMetricsToReportDictionary:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(*(a1 + 32) forKeyedSubscript:{"symptomsOccurrencesStats"), @"ABC"}];
  [*(a1 + 32) updateReportWithQRServerSessionStats:*(*(*(a1 + 40) + 8) + 40)];
  result = *(a1 + 32);
  if (result[2280] == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", 1), @"VCSCACAMTX"}];
    result = *(a1 + 32);
  }

  if (result[2281] == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", 1), @"VCSCACAMRX"}];
    result = *(a1 + 32);
  }

  if (*(result + 165))
  {
    v18 = *(result + 356);
    v19 = [result RTPeriod] * v18;
    v20 = *(a1 + 32);
    v21 = v19;
    if (*(v20 + 1656) <= v19)
    {
      v22 = *(v20 + 1656);
    }

    else
    {
      v22 = v19;
    }

    v23 = *(v20 + 1024);
    if (*(v20 + 1680) <= v21)
    {
      v24 = *(v20 + 1680);
    }

    else
    {
      v24 = v19;
    }

    if (v23 <= v21)
    {
      v25 = *(v20 + 1024);
    }

    else
    {
      v25 = v19;
    }

    v145 = v24;
    v146 = v25;
    if (v19)
    {
      LODWORD(v25) = *(v20 + 1792);
      *&v26 = *&v25 * 1000.0 / v21;
      LODWORD(v150) = *&v26;
      LODWORD(v26) = *(v20 + 1796);
      *&v27 = v26 * 1000.0 / v21;
      v149 = *&v27;
      LODWORD(v27) = *(v20 + 1800);
      *&v28 = v27 * 1000.0 / v21;
      HIDWORD(v150) = *&v28;
      LODWORD(v28) = *(v20 + 1804);
      *&v29 = v28 * 1000.0 / v21;
      LODWORD(v151) = *&v29;
      LODWORD(v29) = *(v20 + 1928);
      *&v30 = v29 * 1000.0 / v21;
      HIDWORD(v153) = *&v30;
      LODWORD(v30) = *(v20 + 1808);
      *&v31 = v30 * 1000.0 / v21;
      HIDWORD(v151) = *&v31;
      LODWORD(v31) = *(v20 + 1964);
      *&v32 = v31 * 1000.0 / v21;
      v155 = *&v32;
      LODWORD(v32) = *(v20 + 1812);
      *&v33 = v32 * 1000.0 / v21;
      LODWORD(v152) = *&v33;
      LODWORD(v33) = *(v20 + 1816);
      *&v34 = v33 * 1000.0 / v21;
      v157 = *&v34;
      LODWORD(v34) = *(v20 + 1820);
      *&v35 = v34 * 1000.0 / v21;
      HIDWORD(v152) = *&v35;
      LODWORD(v35) = *(v20 + 1832);
      *&v36 = v35 * 1000.0 / v21;
      v159 = *&v36;
      LODWORD(v36) = *(v20 + 1836);
      v23 = v36;
      LODWORD(v153) = (v23 * 1000.0 / v21);
    }

    else
    {
      v159 = 0;
      v157 = 0;
      v155 = 0;
      v152 = 0;
      v153 = 0;
      v150 = 0;
      v151 = 0;
      v149 = 0;
    }

    v37 = *(v20 + 592);
    if (v37)
    {
      HIDWORD(v23) = 1083129856;
      v38 = (*(v20 + 584) / v37 * 1000.0);
    }

    else
    {
      v38 = 0;
    }

    v39 = *(v20 + 1424);
    v40 = 0.0;
    v41 = v39;
    v42 = 0.0;
    if (v39 >= 1)
    {
      v23 = *(v20 + 1640);
      v42 = v23 / v41;
    }

    if (v19)
    {
      LODWORD(v23) = *(v20 + 1648);
      v40 = *&v23 * 1000.0 / v21;
    }

    v43 = *(v20 + 928);
    v44 = 0.0;
    v45 = 0.0;
    if (v43)
    {
      v45 = *(v20 + 920) / v43;
    }

    if (v19)
    {
      v44 = v43 * 1000.0 / v21;
    }

    v46 = 0.0;
    v47 = 0.0;
    if (v39 >= 1)
    {
      v41 = *(v20 + 936) / v41;
      v47 = v41 * 100.0;
    }

    if (v19)
    {
      LODWORD(v41) = *(v20 + 944);
      v41 = *&v41 * 1000.0;
      v46 = v41 / v21;
    }

    if (v39)
    {
      LODWORD(v41) = *(v20 + 948);
      *&v48 = *&v41 * 1000.0 / v39;
      v49 = *&v48;
      LODWORD(v48) = *(v20 + 952);
      *&v50 = v48 * 1000.0 / v39;
      LODWORD(v147) = *&v50;
      LODWORD(v50) = *(v20 + 956);
      *&v51 = v50 * 1000.0 / v39;
      HIDWORD(v147) = *&v51;
      LODWORD(v51) = *(v20 + 960);
      v41 = v51 * 1000.0 / v39;
      v148 = v41;
    }

    else
    {
      v147 = 0;
      v49 = 0;
      v148 = 0;
    }

    v52 = *(v20 + 1932);
    if (v52)
    {
      v41 = *(v20 + 1936) * 1000.0 / v52;
      v161 = v41;
    }

    else
    {
      v161 = 0;
    }

    v53 = *(v20 + 1928);
    if (v53)
    {
      LODWORD(v41) = *(v20 + 1960);
      v163 = (*&v41 * 10000.0 / v53);
      if (v39)
      {
LABEL_57:
        v165 = (*(v20 + 1480) * 1000.0 / v39);
        *&v54 = *(v20 + 1488) * 1000.0 / v39;
        v167 = *&v54;
        LODWORD(v54) = *(v20 + 976);
        v169 = (v54 * 1000.0 / v39);
LABEL_60:
        v55 = *(v20 + 844);
        v56 = 0.0;
        v57 = 0.0;
        if (v55)
        {
          v56 = *(v20 + 848) / v55;
          v57 = (*(v20 + 856) / v55);
        }

        v176 = v56;
        v180 = v57;
        if (v39)
        {
          LODWORD(v57) = *(v20 + 1712);
          v171 = *&v57 * 10000.0 / v39;
          v174 = (*(v20 + 1548) / v39);
          v178 = *(v20 + 1544) / v39;
          v58 = *(v20 + 1560) / v39;
        }

        else
        {
          v58 = 0.0;
          v171 = 0.0;
          v178 = 0;
          v174 = 0.0;
        }

        v182 = v58;
        v183 = *(*(*(a1 + 40) + 8) + 40);
        v204[0] = @"LASTCONFIG";
        v205[0] = *(v20 + 1328);
        v204[1] = @"NUMSEGS";
        v205[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v20 + 1756)];
        v204[2] = @"ATXBR";
        v59 = *(a1 + 32);
        v60 = *(v59 + 1424);
        if (v60)
        {
          v61 = (*(v59 + 1432) / v60 * 1000.0);
        }

        else
        {
          v61 = 0;
        }

        v205[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v61];
        v204[3] = @"AAMTBR";
        v62 = *(a1 + 32);
        v63 = *(v62 + 1424);
        if (v63)
        {
          v64 = (*(v62 + 1440) / v63 * 1000.0);
        }

        else
        {
          v64 = 0;
        }

        v205[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
        v204[4] = @"AAMRBR";
        v65 = *(a1 + 32);
        v66 = *(v65 + 1424);
        if (v66)
        {
          v67 = (*(v65 + 1448) / v66 * 1000.0);
        }

        else
        {
          v67 = 0;
        }

        v205[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v67];
        v204[5] = @"ARBR";
        v68 = *(a1 + 32);
        v69 = *(v68 + 1424);
        if (v69)
        {
          v70 = (*(v68 + 1464) / v69 * 1000.0);
        }

        else
        {
          v70 = 0;
        }

        v205[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v70];
        v204[6] = @"AVTSBR";
        v71 = *(a1 + 32);
        v72 = *(v71 + 1424);
        if (v72)
        {
          v73 = (*(v71 + 1584) / v72 * 1000.0);
        }

        else
        {
          v73 = 0;
        }

        v205[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v73];
        v204[7] = @"AVMSBR";
        v74 = *(a1 + 32);
        v75 = *(v74 + 1424);
        if (v75)
        {
          v76 = (*(v74 + 1592) / v75 * 1000.0);
        }

        else
        {
          v76 = 0;
        }

        v205[7] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v76];
        v204[8] = @"AVMRBR";
        v77 = *(a1 + 32);
        v78 = *(v77 + 1424);
        if (v78)
        {
          v79 = (*(v77 + 1600) / v78 * 1000.0);
        }

        else
        {
          v79 = 0;
        }

        v205[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v79];
        v204[9] = @"AVHSBR";
        v80 = *(a1 + 32);
        v81 = *(v80 + 1424);
        if (v81)
        {
          v82 = (*(v80 + 1608) / v81 * 1000.0);
        }

        else
        {
          v82 = 0;
        }

        v205[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v82];
        v204[10] = @"AVFSBR";
        v83 = *(a1 + 32);
        v84 = *(v83 + 1424);
        if (v84)
        {
          v85 = (*(v83 + 1624) / v84 * 1000.0);
        }

        else
        {
          v85 = 0;
        }

        v205[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v85];
        v204[11] = @"AVFRBR";
        v86 = *(a1 + 32);
        v87 = *(v86 + 1424);
        if (v87)
        {
          v88 = (*(v86 + 1616) / v87 * 1000.0);
        }

        else
        {
          v88 = 0;
        }

        v205[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v88];
        v204[12] = @"AVTRBR";
        v89 = *(a1 + 32);
        v90 = *(v89 + 1424);
        if (v90)
        {
          v91 = (*(v89 + 664) / v90 * 1000.0);
        }

        else
        {
          v91 = 0;
        }

        v205[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v91];
        v204[13] = @"ASBR";
        v92 = *(a1 + 32);
        v93 = *(v92 + 1424);
        if (v93)
        {
          v94 = (*(v92 + 1456) / v93 * 1000.0);
        }

        else
        {
          v94 = 0;
        }

        v205[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v94];
        v204[14] = @"ARTT";
        v95 = *(a1 + 32);
        v96 = *(v95 + 1424);
        if (v96)
        {
          v97 = (*(v95 + 1632) / v96 * 100.0);
        }

        else
        {
          v97 = 0;
        }

        v205[14] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v97];
        v204[15] = @"DUPSWCNT";
        v205[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 204)];
        v204[16] = @"WRMDUPSWCNT";
        v205[16] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2072)];
        v204[17] = @"RWRMDUPSWCNT";
        v205[17] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2080)];
        v204[18] = @"PCONMAX";
        v205[18] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1664)];
        v204[19] = @"PCONFQ";
        v205[19] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1672)];
        v204[20] = @"PCONP";
        if (v19)
        {
          v98 = (v22 / v21 * 10000.0);
        }

        else
        {
          v98 = 0;
        }

        v205[20] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v98];
        v204[21] = @"VSP";
        if (v19)
        {
          v99 = (v145 / v21 * 10000.0);
        }

        else
        {
          v99 = 0;
        }

        v205[21] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v99];
        v204[22] = @"TMST";
        v205[22] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 584) * 1000.0)];
        v204[23] = @"MSMAX";
        v205[23] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 576) * 1000.0)];
        v204[24] = @"AMST";
        v205[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v38];
        v204[25] = @"MSTCNT";
        v205[25] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 592)];
        v204[26] = @"VSMAX";
        v205[26] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 656) * 100.0)];
        v204[27] = @"ASP";
        if (v19)
        {
          v100 = (v146 / v21 * 10000.0);
        }

        else
        {
          v100 = 0;
        }

        v205[27] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v100];
        v204[28] = @"ASMAX";
        v205[28] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 1016) * 100.0)];
        v204[29] = @"AJEAP";
        v101 = *(a1 + 32);
        v102 = *(v101 + 1424);
        if (v102)
        {
          v103 = (*(v101 + 864) / v102);
        }

        else
        {
          v103 = 0;
        }

        v205[29] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v103];
        v204[30] = @"AEAP";
        v104 = *(a1 + 32);
        v105 = *(v104 + 1424);
        if (v105)
        {
          v106 = (*(v104 + 872) / v105);
        }

        else
        {
          v106 = 0;
        }

        v205[30] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v106];
        v204[31] = @"ASEAP";
        v107 = *(a1 + 32);
        v108 = *(v107 + 1424);
        if (v108)
        {
          v109 = (*(v107 + 880) / v108);
        }

        else
        {
          v109 = 0;
        }

        v205[31] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v109];
        v204[32] = @"CMCAE";
        v205[32] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1040)];
        v204[33] = @"REDST";
        v205[33] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 904)];
        v204[34] = @"WAS";
        v205[34] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 908)];
        v204[35] = @"CNR";
        v205[35] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 524)];
        v204[36] = @"CRNR";
        v205[36] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 528)];
        v204[37] = @"RSWP";
        v205[37] = [*(*(a1 + 32) + 2064) description];
        v204[38] = @"IRUT";
        v205[38] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 536)];
        v204[39] = @"ISBD";
        v205[39] = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 540)];
        v204[40] = @"IBTR";
        v205[40] = [MEMORY[0x277CCABA8] numberWithInt:*(*(a1 + 32) + 544)];
        v204[41] = @"OOOPCT";
        v205[41] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1784)];
        v204[42] = @"AOVSBR";
        v205[42] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v49], 3);
        v204[43] = @"AUNSBR";
        v205[43] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v147], 3);
        v204[44] = @"AOVBWE";
        v205[44] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v147)], 3);
        v204[45] = @"AUNBWE";
        v205[45] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:v148], 3);
        v204[46] = @"AABPLR";
        v205[46] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v42], 3);
        v204[47] = @"AABPLRR";
        v205[47] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v40], 3);
        v204[48] = @"AABBPL";
        v205[48] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v45], 3);
        v204[49] = @"AABBPLR";
        v205[49] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v44], 3);
        v204[50] = @"AABRTT";
        v205[50] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v47], 3);
        v204[51] = @"AABRTTR";
        v205[51] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v46], 3);
        v204[52] = @"VPBNRFR";
        v205[52] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v150];
        v204[53] = @"FIRFR";
        v205[53] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v149];
        v204[54] = @"FIRFSFR";
        v205[54] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v150)];
        v204[55] = @"FIRFSFC";
        v205[55] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1800)];
        v204[56] = @"VFDSKPR";
        v205[56] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v151];
        v204[57] = @"VPBINTSER";
        v205[57] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v153)];
        v204[58] = @"VPBTIR";
        v205[58] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v151)];
        v204[59] = @"VPBLSR";
        v205[59] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v155];
        v204[60] = @"VREFR";
        v205[60] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v152];
        v204[61] = @"VRRFR";
        v205[61] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v157];
        v204[62] = @"VRExFR";
        v205[62] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v152)];
        v204[63] = @"VTEFR";
        v205[63] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v159];
        v204[64] = @"VTCFR";
        v205[64] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v153];
        v204[65] = @"CSBWD";
        v205[65] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 496)], 3);
        v204[66] = @"CRDMBL";
        v205[66] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1856)], 3);
        v204[67] = @"AAUDPLR";
        v110 = *(a1 + 32);
        v111 = *(v110 + 1000);
        if (v111)
        {
          v112 = ((1.0 - *(v110 + 1008) / v111) * 10000.0);
        }

        else
        {
          v112 = 0;
        }

        v205[67] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v112];
        v204[68] = @"AVIDPLR";
        v113 = *(a1 + 32);
        v114 = *(v113 + 1424);
        if (v114)
        {
          v115 = *(v113 + 1776) / v114;
        }

        else
        {
          v115 = 0;
        }

        v205[68] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v115];
        v204[69] = @"ULLBAP";
        v116 = *(a1 + 32);
        v117 = *(v116 + 1424);
        if (v117)
        {
          v118 = 10000 * *(v116 + 1652) / v117;
        }

        else
        {
          v118 = 0;
        }

        v205[69] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v118];
        v204[70] = @"ACDTXDB";
        v205[70] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1840)], 4);
        v204[71] = @"ACDRXDB";
        v205[71] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1844)], 4);
        v204[72] = @"AUCBTXDB";
        v205[72] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1848)], 4);
        v204[73] = @"AUCBRXDB";
        v205[73] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1852)], 4);
        v204[74] = @"ACTXDB";
        v205[74] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 1864)], 4);
        v204[75] = @"ACRXDB";
        v205[75] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 1872)], 4);
        v204[76] = @"AWTXDB";
        v205[76] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 552)], 4);
        v204[77] = @"AWRXDB";
        v205[77] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 560)], 4);
        v204[78] = @"DUPDRTN";
        v205[78] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1880)];
        v204[79] = @"AWCHC";
        v205[79] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 568)], 3);
        v204[80] = @"ACWHC";
        v205[80] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 572)], 3);
        v204[81] = @"VCRCPROFNUM";
        v205[81] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1416)];
        v204[82] = @"VPBEVALPD";
        v205[82] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v161];
        v204[83] = @"VPBEVMLPD";
        v205[83] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(*(a1 + 32) + 1944) * 1000.0)];
        v204[84] = @"VPBEVLPDHIST";
        v205[84] = [*(*(a1 + 32) + 1952) description];
        v204[85] = @"PEVFR";
        v205[85] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v163];
        v204[86] = @"MAECT";
        v205[86] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1472)];
        v204[87] = @"MVSTCT";
        v205[87] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1476)];
        v204[88] = @"AAJBD";
        v205[88] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v165];
        v204[89] = @"MAJBSC";
        v205[89] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1492)];
        v204[90] = @"AAJBSC";
        v205[90] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v167];
        v204[91] = @"MNVFR";
        v205[91] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1496)];
        v204[92] = @"AFECET";
        v119 = *(a1 + 32);
        v120 = *(v119 + 1424);
        if (v120)
        {
          v121 = *(v119 + 1968) / v120;
        }

        else
        {
          v121 = 0;
        }

        v205[92] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v121];
        v204[93] = @"VRXL";
        v205[93] = [*(*(a1 + 32) + 1976) description];
        v204[94] = @"VMFRERC";
        v205[94] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 972)];
        v204[95] = @"VAFRERC";
        v205[95] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v169];
        v204[96] = @"LOCALRTCNT";
        v205[96] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 2000)], 3);
        v204[97] = @"REMALRTCNT";
        v205[97] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 2004)], 3);
        v204[98] = @"LNKPRBVER";
        v205[98] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 836)];
        v204[99] = @"REMLNKPRBVER";
        v205[99] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 840)];
        v204[100] = @"ECNP";
        v205[100] = [MEMORY[0x277CCABA8] numberWithDouble:v171];
        v204[101] = @"DYNDUPLNKCNT";
        v205[101] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 844)], 3);
        v204[102] = @"RTTMEANDLT";
        v205[102] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v176], 3);
        v204[103] = @"PLRTIERDLT";
        v205[103] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v180], 3);
        v204[104] = @"AJBSCH";
        v205[104] = [MEMORY[0x277CCABA8] numberWithDouble:v174];
        v204[105] = @"AJBL";
        v205[105] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v178];
        v204[106] = @"MJBL";
        v205[106] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 1552)];
        v204[107] = @"TWJBL";
        v205[107] = [MEMORY[0x277CCABA8] numberWithDouble:v182];
        v204[108] = @"WVJBQS";
        v205[108] = [*(*(a1 + 32) + 672) description];
        v204[109] = @"JBQSDV";
        v205[109] = [*(*(a1 + 32) + 1568) description];
        v204[110] = @"JBQSDA";
        v205[110] = [*(*(a1 + 32) + 1576) description];
        v204[111] = @"TALGOS";
        v122 = MEMORY[0x277CCABA8];
        v123 = *(a1 + 32);
        v124 = v123[35];
        [v123 microFromPayload:0];
        [v124 aggregateScoresWithDictionaryLogging:1 time:?];
        v205[111] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [v122 numberWithDouble:?], 3);
        v204[112] = @"TAPAY";
        v205[112] = [*(*(a1 + 32) + 600) description];
        v204[113] = @"AATBH";
        v205[113] = [*(*(a1 + 32) + 608) description];
        v204[114] = @"TAMBR";
        v205[114] = [*(*(a1 + 32) + 616) description];
        v204[115] = @"TRPBR";
        v205[115] = [*(*(a1 + 32) + 624) description];
        [v183 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v205, v204, 116)}];
        [objc_msgSend(*(a1 + 32) "captionsDataCollector")];
        v125 = *(a1 + 32);
        if (*(v125 + 548) == 1)
        {
          v126 = *(*(*(a1 + 40) + 8) + 40);
          v202[0] = @"TVMBR";
          v203[0] = [*(v125 + 680) description];
          v202[1] = @"TVPAY";
          v203[1] = [*(*(a1 + 32) + 688) description];
          [v126 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v203, v202, 2)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 1992))
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(*(v125 + 1992) forKeyedSubscript:{"description"), @"PIPDUR"}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 2116))
        {
          v127 = *(*(*(a1 + 40) + 8) + 40);
          v200[0] = @"AAVSO";
          v128 = *(v125 + 2116);
          if (v128)
          {
            v129 = (*(v125 + 2104) / v128);
          }

          else
          {
            v129 = 0;
          }

          v201[0] = [MEMORY[0x277CCABA8] numberWithInt:v129];
          v200[1] = @"MINAVSO";
          v130 = *(*(a1 + 32) + 2108);
          if (v130 == 0x7FFFFFFF)
          {
            v131 = 0;
          }

          else
          {
            v131 = v130;
          }

          v201[1] = [MEMORY[0x277CCABA8] numberWithInt:v131];
          v200[2] = @"MAXAVSO";
          v132 = *(*(a1 + 32) + 2112);
          if (v132 == 0x80000000)
          {
            v133 = 0;
          }

          else
          {
            v133 = v132;
          }

          v201[2] = [MEMORY[0x277CCABA8] numberWithInt:v133];
          [v127 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v201, v200, 3)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 512) != 255)
        {
          v134 = *(*(*(a1 + 40) + 8) + 40);
          v198[0] = @"LNKSUG";
          v199[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v125 + 512)];
          v198[1] = @"LNKSCR";
          v199[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 513)];
          v198[2] = @"LNKDEC";
          v199[2] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 514)];
          [v134 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v199, v198, 3)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 515) != 255)
        {
          v135 = *(*(*(a1 + 40) + 8) + 40);
          v196 = @"LNKIP";
          v197 = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v125 + 515)];
          [v135 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v197, &v196, 1)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 424) == 1)
        {
          v136 = *(*(*(a1 + 40) + 8) + 40);
          v194[0] = @"RCEV";
          v195[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(v125 + 425)];
          v194[1] = @"RCEG";
          v195[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:*(*(a1 + 32) + 426)];
          [v136 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v195, v194, 2)}];
          v125 = *(a1 + 32);
        }

        if (*(v125 + 436))
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"SBVERS"}];
          v125 = *(a1 + 32);
        }

        [objc_msgSend(v125 "captionsDataCollector")];
        v137 = *(a1 + 32);
        if (*(v137 + 2156) == 1)
        {
          v138 = *(*(*(a1 + 40) + 8) + 40);
          v192[0] = @"NACKS";
          v193[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(v137 + 2160)];
          v192[1] = @"NACKF";
          v193[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2168)];
          v192[2] = @"UNACKS";
          v193[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 2184)];
          v192[3] = @"NACKFOT";
          v193[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:*(*(a1 + 32) + 2176)];
          v192[4] = @"RTXNacksConfigVersion";
          v193[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(*(a1 + 32) + 428)];
          v192[5] = @"RTXNacksEnabled";
          v193[5] = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 432)];
          v192[6] = @"RTXNacksDelayedEnabled";
          v193[6] = [MEMORY[0x277CCABA8] numberWithBool:*(*(a1 + 32) + 433)];
          v192[7] = @"NACKPLRWRTX";
          v193[7] = [*(*(a1 + 32) + 2216) description];
          v192[8] = @"NACKPLRWORTX";
          v193[8] = [*(*(a1 + 32) + 2224) description];
          [v138 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v193, v192, 9)}];
          v137 = *(a1 + 32);
          if (v19)
          {
            v139 = *(*(*(a1 + 40) + 8) + 40);
            v190[0] = @"NACKSRATE";
            v191[0] = [MEMORY[0x277CCABA8] numberWithDouble:*(v137 + 2160) / v21];
            v190[1] = @"NACKFRATE";
            v191[1] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2168) / v21];
            v190[2] = @"NACKFOTRATE";
            v191[2] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2176) / v21];
            v190[3] = @"NACKFASSMRTX";
            v191[3] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2200) / v21];
            v190[4] = @"NACKLSCHFRTX";
            v191[4] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2192) / v21];
            v190[5] = @"NACKFFASSMRTX";
            v191[5] = [MEMORY[0x277CCABA8] numberWithDouble:*(*(a1 + 32) + 2208) / v21];
            v190[6] = @"UNACKSRATE";
            LODWORD(v140) = *(*(a1 + 32) + 2184);
            v191[6] = [MEMORY[0x277CCABA8] numberWithDouble:v140 / v21];
            [v139 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v191, v190, 7)}];
            v137 = *(a1 + 32);
          }
        }

        [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:{objc_msgSend(v137, "getUplinkRTXelemetryWithDuration:", v19)}];
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v141 = *(*(a1 + 32) + 2272);
        result = [v141 countByEnumeratingWithState:&v184 objects:v189 count:16];
        if (result)
        {
          v142 = result;
          v143 = *v185;
          do
          {
            v144 = 0;
            do
            {
              if (*v185 != v143)
              {
                objc_enumerationMutation(v141);
              }

              [*(*(&v184 + 1) + 8 * v144++) updateReport:*(*(*(a1 + 40) + 8) + 40)];
            }

            while (v142 != v144);
            result = [v141 countByEnumeratingWithState:&v184 objects:v189 count:16];
            v142 = result;
          }

          while (result);
        }

        return result;
      }
    }

    else
    {
      v163 = 0;
      if (v39)
      {
        goto LABEL_57;
      }
    }

    v167 = 0;
    v165 = 0;
    v169 = 0;
    goto LABEL_60;
  }

  return result;
}

- (void)flushCurrentSegment
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__VCAggregatorFaceTime_flushCurrentSegment__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)flushCurrentSegment:(id)segment
{
  v44 = *MEMORY[0x277D85DE8];
  if (self->_currentSegmentKey)
  {
    duration = [(CallSegment *)self->_currentSegment duration];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (duration > 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v14 = VRTraceErrorLogLevelToCSTR(8u);
        v15 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            duration2 = [(CallSegment *)self->_currentSegment duration];
            uTF8String = [(NSString *)self->_currentSegmentKey UTF8String];
            v36 = 136316162;
            v37 = v14;
            v38 = 2080;
            v39 = "[VCAggregatorFaceTime flushCurrentSegment:]";
            v40 = 1024;
            v41 = 2648;
            v42 = 1024;
            *v43 = duration2;
            *&v43[4] = 2080;
            *&v43[6] = uTF8String;
            _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Segment event counter is %d, saving the stats for the segment %s", &v36, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          duration3 = [(CallSegment *)self->_currentSegment duration];
          uTF8String2 = [(NSString *)self->_currentSegmentKey UTF8String];
          v36 = 136316162;
          v37 = v14;
          v38 = 2080;
          v39 = "[VCAggregatorFaceTime flushCurrentSegment:]";
          v40 = 1024;
          v41 = 2648;
          v42 = 1024;
          *v43 = duration3;
          *&v43[4] = 2080;
          *&v43[6] = uTF8String2;
          _os_log_debug_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Segment event counter is %d, saving the stats for the segment %s", &v36, 0x2Cu);
        }
      }

      [(VCAggregatorFaceTime *)self updateAudioTxStatsWithPayload:0];
      if (self->_degradedVideoStartTime != 0.0)
      {
        [(VCAggregator *)self microFromPayload:segment];
        v21 = v20 - self->_degradedVideoStartTime;
        [(VCHistogram *)[(CallSegment *)self->_currentSegment poorConnection] addValue:(v21 / [(VCAggregator *)self RTPeriod])];
        [(CallSegment *)self->_currentSegment poorConnectionMaxLength];
        if (v22 < v21)
        {
          v22 = v21;
        }

        [(CallSegment *)self->_currentSegment setPoorConnectionMaxLength:v22];
        callPoorConnectionMaxLength = self->_callPoorConnectionMaxLength;
        if (callPoorConnectionMaxLength < v21)
        {
          callPoorConnectionMaxLength = v21;
        }

        self->_callPoorConnectionMaxLength = callPoorConnectionMaxLength;
        currentSegment = self->_currentSegment;
        [(CallSegment *)currentSegment poorConnectionTotalLength];
        [(CallSegment *)currentSegment setPoorConnectionTotalLength:v21 + v25];
        self->_callPoorConnectionTotalLength = v21 + self->_callPoorConnectionTotalLength;
        self->_degradedVideoStartTime = 0.0;
      }

      if (self->_noRemoteStartTime != 0.0)
      {
        [(VCAggregator *)self microFromPayload:segment];
        v27 = v26 - self->_noRemoteStartTime;
        v28 = self->_currentSegment;
        [(CallSegment *)v28 totalNoRemotePacketsTime];
        [(CallSegment *)v28 setTotalNoRemotePacketsTime:v27 + v29];
        [(CallSegment *)self->_currentSegment maxNoRemotePacketsInterval];
        if (v30 < v27)
        {
          v30 = v27;
        }

        [(CallSegment *)self->_currentSegment setMaxNoRemotePacketsInterval:v30];
        self->_noRemoteStartTime = 0.0;
      }

      self->_lastReportedTotalCellDupTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellDupTxDataBytes];
      self->_lastReportedTotalCellDupRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellDupRxDataBytes];
      self->_lastReportedTotalUsedCellBudgetTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetTxDataBytes];
      self->_lastReportedTotalUsedCellBudgetRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetRxDataBytes];
      self->_lastReportedTotalCellTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellTxDataBytes];
      self->_lastReportedTotalCellRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalCellRxDataBytes];
      self->super._lastReportedTotalWifiTxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalWifiTxDataBytes];
      self->super._lastReportedTotalWifiRxDataBytes += [(CallSegment *)self->_currentSegment lastReportedTotalWifiRxDataBytes];
      [(VCHistogram *)[(CallSegment *)self->_currentSegment continuousHighRTTReportCount] addValue:[(CallSegment *)self->_currentSegment highRTTReportCounter]];
      [(VCHistogram *)[(CallSegment *)self->_currentSegment continuousHighPLRReportCount] addValue:[(CallSegment *)self->_currentSegment highPLRReportCounter]];
      [(VCHistogram *)[(CallSegment *)self->_currentSegment continuousHighRTTPLRReportCount] addValue:[(CallSegment *)self->_currentSegment highRTTPLRReportCounter]];
      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        v31 = VRTraceErrorLogLevelToCSTR(8u);
        v32 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          uTF8String3 = [(NSString *)self->_currentSegmentKey UTF8String];
          v36 = 136315906;
          v37 = v31;
          v38 = 2080;
          v39 = "[VCAggregatorFaceTime flushCurrentSegment:]";
          v40 = 1024;
          v41 = 2683;
          v42 = 2080;
          *v43 = uTF8String3;
          v11 = " [%s] %s:%d VCAggregator: Segment %s flushed";
          v12 = v32;
          v13 = 38;
          goto LABEL_29;
        }

        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          [(VCAggregatorFaceTime *)v31 flushCurrentSegment:?];
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule < 8)
      {
        return;
      }

      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        uTF8String4 = [(NSString *)self->_currentSegmentKey UTF8String];
        duration4 = [(CallSegment *)self->_currentSegment duration];
        v36 = 136316162;
        v37 = v7;
        v38 = 2080;
        v39 = "[VCAggregatorFaceTime flushCurrentSegment:]";
        v40 = 1024;
        v41 = 2646;
        v42 = 2080;
        *v43 = uTF8String4;
        *&v43[8] = 1024;
        *&v43[10] = duration4;
        v11 = " [%s] %s:%d VCAggregator: Segment %s has too few events %d. Ignoring its stats";
        v12 = v8;
        v13 = 44;
LABEL_29:
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, v11, &v36, v13);
        return;
      }

      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        uTF8String5 = [(NSString *)self->_currentSegmentKey UTF8String];
        duration5 = [(CallSegment *)self->_currentSegment duration];
        v36 = 136316162;
        v37 = v7;
        v38 = 2080;
        v39 = "[VCAggregatorFaceTime flushCurrentSegment:]";
        v40 = 1024;
        v41 = 2646;
        v42 = 2080;
        *v43 = uTF8String5;
        *&v43[8] = 1024;
        *&v43[10] = duration5;
        _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Segment %s has too few events %d. Ignoring its stats", &v36, 0x2Cu);
      }
    }
  }
}

- (void)reset:(id)reset
{
  v44[1] = *MEMORY[0x277D85DE8];
  [(VCAggregatorDelegate *)self->super._delegate reportSegment:[(VCAggregatorFaceTime *)self aggregatedSegmentReportInternal:2] withMessageType:2 clientType:0];
  [(VCAggregatorDelegate *)self->super._delegate reportQR:[(CallSegment *)self->_currentSegment segmentQRReport]];

  self->_currentSegment = 0;
  currentSegmentKey = self->_currentSegmentKey;
  self->_currentSegmentKey = [CallSegment newSegmentNameWithComponents:[VCAggregator interfaceCategoryForType:self->super._localInterfaceType] remoteInterface:[VCAggregator interfaceCategoryForType:self->super._remoteInterfaceType] connectionType:[VCAggregator connectionCategoryForType:self->super._connectionType] duplicationIndicator:[(VCAggregator *)self duplicationIndicator]];
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v43 = @"NegSw";
  v44[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._negotiatedSwitches];
  v7 = [v6 initWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v44, &v43, 1)}];
  if (self->super._remoteFaceTimeSwitchesAvailable)
  {
    v41 = @"RemSw";
    v42 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._remoteSwitches];
    [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v42, &v41, 1)}];
  }

  linkProbingVersion = self->super._linkProbingVersion;
  remoteLinkProbingVersion = self->super._remoteLinkProbingVersion;
  [(VCAggregator *)self microFromPayload:reset];
  v11 = 0.0;
  v12 = 0.0;
  if (self->_localAlertActive)
  {
    lastLocalAlertTime = self->_lastLocalAlertTime;
    if (v10 >= lastLocalAlertTime)
    {
      v12 = v10 - lastLocalAlertTime;
    }
  }

  if (self->_remoteAlertActive)
  {
    lastRemoteAlertTime = self->_lastRemoteAlertTime;
    if (v10 >= lastRemoteAlertTime)
    {
      v11 = v10 - lastRemoteAlertTime;
    }
  }

  v15 = nw_activity_create();
  if (self->super._nwActivity)
  {
    nw_activity_set_parent_activity();
  }

  nw_activity_activate();
  v16 = [CallSegment alloc];
  v17 = self->_currentSegmentKey;
  callMode_low = LOWORD(self->super._callMode);
  callDeviceRole_low = LOWORD(self->_callDeviceRole);
  callTransportType_low = LOWORD(self->_callTransportType);
  relayServer = self->_relayServer;
  relayType = self->_relayType;
  accessToken = self->_accessToken;
  duplicationType = self->_duplicationType;
  conversationTimeBase = self->super._conversationTimeBase;
  isInitiator = self->super._isInitiator;
  *buf = linkProbingVersion;
  *v37 = remoteLinkProbingVersion;
  *&v37[4] = v12;
  *&v37[12] = v11;
  LOBYTE(v35) = isInitiator;
  LOBYTE(v34) = duplicationType;
  LOWORD(v33) = relayType;
  v27 = [(CallSegment *)v16 initWithSegmentName:v17 previousSegmentName:currentSegmentKey mode:callMode_low deviceRole:callDeviceRole_low transportType:callTransportType_low relayServer:relayServer relayType:v33 accessToken:accessToken duplicationType:v34 switchConfig:v7 linkProbingConfig:buf nwActivity:v15 conversationTimeBase:conversationTimeBase isInitiator:v35 delegate:self];
  self->_currentSegment = v27;
  [(VCReportingCommon *)v27 setCurrentThermalLevel:self->super.super._currentThermalLevel];
  thermalDurations = [(VCReportingCommon *)self->_currentSegment thermalDurations];
  currentThermalLevel = self->super.super._currentThermalLevel;
  [(VCAggregator *)self microFromPayload:reset];
  [(VCDurationHistogram *)thermalDurations resumeAtBucket:currentThermalLevel currentTime:?];
  [(CallSegment *)self->_currentSegment setIsApplePersonalHotspot:[(VCAggregator *)self isApplePersonalHotspotAndUpdatePhyMode]];
  [(CallSegment *)self->_currentSegment setNWActivityReportingEnabled:self->super._isNWActivityReportingEnabled];
  [(CallSegment *)self->_currentSegment setIsCenterStageEnabled:self->_isCenterStageEnabled];
  [(CallSegment *)self->_currentSegment setIsPortraitBlurEnabled:self->_isPortraitBlurEnabled];
  [(VCAggregatorFaceTime *)self transferActiveSegmentStatus:self->_currentSegment];
  if (v15)
  {
    nw_release(v15);
  }

  [(VCAggregator *)self updateHandoverCount:self->_currentSegmentKey withPreviousSegmentKey:currentSegmentKey];

  ++self->_numberOfSegments;
  [(CallSegment *)self->_currentSegment setActiveConnectionRegistry:self->super._activeConnectionRegistry];
  [(CallSegment *)self->_currentSegment setCoreMotionActivityValue:self->_coreMotionActivityValue];
  [(CallSegment *)self->_currentSegment setCoreMotionActivityConfidence:self->_coreMotionActivityConfidence];
  [(CallSegment *)self->_currentSegment setLinkPreferSuggestion:self->super._linkPreferSuggestion];
  [(CallSegment *)self->_currentSegment setLinkConfidenceScore:self->super._linkConfidenceScore];
  [(CallSegment *)self->_currentSegment setLinkPreferDecision:self->super._linkPreferDecision];
  [(CallSegment *)self->_currentSegment setLinkIPPreference:self->super._linkIPPreference];
  [(CallSegment *)self->_currentSegment setRemoteOSBuild:self->super._remoteOSBuild];
  [(CallSegment *)self->_currentSegment setReportingClientExperimentSettings:*&self->super._reportingClientExperimentSettings.networkConditionMonitoringClientExperimentEnabled | (self->super._reportingClientExperimentSettings.detectInactiveAudioFramesAACELD << 16)];
  [(CallSegment *)self->_currentSegment setRelayedCallTypeIndicator:self->_relayedCallTypeRemoteFacingHost];
  [(CallSegment *)self->_currentSegment setServerPacketRetransmissionsForVideoEnabled:self->super._serverPacketRetransmissionsForVideoEnabled];
  [(CallSegment *)self->_currentSegment setServerPacketRetransmissionsExtraDelayBudgetEnabled:self->super._serverPacketRetransmissionsExtraDelayBudgetEnabled];
  [(CallSegment *)self->_currentSegment setNackGeneratorConfigVersion:self->super._nackGeneratorConfigVersion];
  [(CallSegment *)self->_currentSegment setRtcpPSFBForLossFeedbackEnabled:self->super._rtcpPSFBForLossFeedbackEnabled];
  [(CallSegment *)self->_currentSegment setRtcpPSFBForLtrAckEnabled:self->super._rtcpPSFBForLtrAckEnabled];
  if (self->super._rateControlSmartBrakeTrialVersion)
  {
    [(CallSegment *)self->_currentSegment setRateControlSmartBrakeTrialVersion:?];
  }

  [(CallSegment *)self->_currentSegment setEyeContactStatus:self->super._eyeContactStatus];
  [(CallSegment *)self->_currentSegment setCenterStageStatus:self->super._centerStageStatus];
  [(CallSegment *)self->_currentSegment setPortraitModeStatus:self->super._portraitModeStatus];
  [(CallSegment *)self->_currentSegment setReactionsStatus:self->super._reactionsStatus];
  [(CallSegment *)self->_currentSegment setStudioLightStatus:self->super._studioLightStatus];
  [(CallSegment *)self->_currentSegment setSpatialAudioSupported:self->super._spatialAudioSupported];
  [(VCReportingCommon *)self->_currentSegment setBackgroundReplacementStatus:self->super._backgroundReplacementStatus];
  [(CallSegment *)self->_currentSegment setCallAverageAudioRxBitrate:self->_callAverageAudioRxBitrate];
  [(CallSegment *)self->_currentSegment setCallAverageAudioTxBitrate:self->_callAverageAudioTxBitrate];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v30 = VRTraceErrorLogLevelToCSTR(8u);
    v31 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [(NSString *)self->_currentSegmentKey UTF8String];
        *buf = 136315906;
        *v37 = v30;
        *&v37[8] = 2080;
        *&v37[10] = "[VCAggregatorFaceTime reset:]";
        *&v37[18] = 1024;
        v38 = 2786;
        v39 = 2080;
        v40 = uTF8String;
        _os_log_impl(&dword_23D4DF000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: New key generated %s", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [(VCAggregatorFaceTime *)v30 reset:?];
    }
  }
}

- (void)transferActiveSegmentStatus:(id)status
{
  v5 = micro(self, a2);
  if (![(VCDurationHistogram *)self->super._studioLightDuration isPaused])
  {
    [objc_msgSend(status "studioLightDuration")];
  }

  if (![(VCDurationHistogram *)self->super._centerStageDuration isPaused])
  {
    [objc_msgSend(status "centerStageDuration")];
  }

  if (![(VCDurationHistogram *)self->super._portraitModeDuration isPaused])
  {
    [objc_msgSend(status "portraitModeDuration")];
  }

  if (![(VCDurationHistogram *)self->super._eyeContactDuration isPaused])
  {
    [objc_msgSend(status "eyeContactDuration")];
  }

  if (![(VCDurationHistogram *)self->super._reactionActiveDuration isPaused])
  {
    [objc_msgSend(status "reactionActiveDuration")];
  }

  if (![(VCDurationHistogram *)self->super._backgroundReplacementDuration isPaused])
  {
    backgroundReplacementDuration = [status backgroundReplacementDuration];
    currentThermalLevel = self->super.super._currentThermalLevel;

    [backgroundReplacementDuration resumeAtBucket:currentThermalLevel currentTime:v5];
  }
}

- (void)setNWActivityReportingEnabled:(BOOL)enabled
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__VCAggregatorFaceTime_setNWActivityReportingEnabled___block_invoke;
  v4[3] = &unk_278BD4D20;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(stateQueue, v4);
}

void *__54__VCAggregatorFaceTime_setNWActivityReportingEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = VCAggregatorFaceTime;
  objc_msgSendSuper2(&v5, sel_setNWActivityReportingEnabled_, v2);
  v3 = *(a1 + 32);
  result = *(v3 + 1368);
  if (result)
  {
    return [result setNWActivityReportingEnabled:*(v3 + 408)];
  }

  return result;
}

- (void)startNewSegment:(id)segment
{
  [(VCAggregatorFaceTime *)self flushCurrentSegment:?];

  [(VCAggregatorFaceTime *)self reset:segment];
}

- (id)updatePayloadWithSingleParticipantData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:data];
  v4 = [v3 objectForKeyedSubscript:sRTCReportingStreamCollection];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v15 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v4 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v7)];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        allKeys = [v8 allKeys];
        v10 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            v13 = 0;
            do
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(allKeys);
              }

              [v3 setObject:objc_msgSend(v8 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v16 + 1) + 8 * v13)), *(*(&v16 + 1) + 8 * v13)}];
              ++v13;
            }

            while (v11 != v13);
            v11 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v6);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)updateAVSyncOffsetSumAndCountWithValue:(int)value
{
  self->_avSyncOffsetSum += value;
  [(CallSegment *)self->_currentSegment setAvSyncOffsetSum:[(CallSegment *)self->_currentSegment avSyncOffsetSum]+ value];
  ++self->_avSyncOffsetSamplesCount;
  currentSegment = self->_currentSegment;
  v5 = [(CallSegment *)currentSegment avSyncOffsetSamplesCount]+ 1;

  [(CallSegment *)currentSegment setAvSyncOffsetSamplesCount:v5];
}

- (void)processCameraResolution:(id)resolution
{
  if ([resolution objectForKeyedSubscript:@"CAMRESW"])
  {
    self->_lastCameraCaptureWidth = [objc_msgSend(resolution objectForKeyedSubscript:{@"CAMRESW", "integerValue"}];
  }

  if ([resolution objectForKeyedSubscript:@"CAMRESH"])
  {
    self->_lastCameraCaptureHeight = [objc_msgSend(resolution objectForKeyedSubscript:{@"CAMRESH", "integerValue"}];
  }
}

- (void)updateNetworkSendResultStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"PSSCTR"])
  {
    v5 = [objc_msgSend(stats objectForKeyedSubscript:{@"PSSCTR", "intValue"}];
    [(CallSegment *)self->_currentSegment setPacketSendSuccessCounter:[(CallSegment *)self->_currentSegment packetSendSuccessCounter]+ v5];
    self->_packetSendSuccessCounter += v5;
  }

  if ([stats objectForKeyedSubscript:@"PSFCTR"])
  {
    v6 = [objc_msgSend(stats objectForKeyedSubscript:{@"PSFCTR", "intValue"}];
    [(CallSegment *)self->_currentSegment setPacketSendFailureCounter:[(CallSegment *)self->_currentSegment packetSendFailureCounter]+ v6];
    self->_packetSendFailureCounter += v6;
  }
}

- (void)populateSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes toPayload:(id)payload
{
  if (bytes)
  {
    bytes->var7 = [objc_msgSend(payload objectForKeyedSubscript:{@"CDupTxDb", "integerValue"}];
    bytes->var4 = [objc_msgSend(payload objectForKeyedSubscript:{@"CDupRxDb", "integerValue"}];
    bytes->var5 = [objc_msgSend(payload objectForKeyedSubscript:{@"CBudgTxDb", "integerValue"}];
    bytes->var6 = [objc_msgSend(payload objectForKeyedSubscript:{@"CBudgRxDb", "integerValue"}];
    bytes->var0 = [objc_msgSend(payload objectForKeyedSubscript:{@"CTxDb", "integerValue"}];
    bytes->var1 = [objc_msgSend(payload objectForKeyedSubscript:{@"CRxDb", "integerValue"}];
    bytes->var2 = [objc_msgSend(payload objectForKeyedSubscript:{@"WTxDb", "integerValue"}];
    bytes->var3 = [objc_msgSend(payload objectForKeyedSubscript:{@"WRxDb", "integerValue"}];
  }

  else
  {
    [VCAggregatorFaceTime populateSegmentBytes:toPayload:];
  }
}

- (void)updateSegmentStats:(id)stats
{
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  [(VCAggregatorFaceTime *)self populateSegmentBytes:&v36 toPayload:stats];
  lastReportedTotalCellDupTxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalCellDupTxDataBytes];
  v5 = *(&v39 + 1);
  currentSegment = self->_currentSegment;
  if (lastReportedTotalCellDupTxDataBytes <= *(&v39 + 1))
  {
    v7 = v5 - [(CallSegment *)self->_currentSegment lastReportedTotalCellDupTxDataBytes];
    v5 = v7 + [(CallSegment *)currentSegment totalCellDupTxDataBytes];
  }

  [(CallSegment *)currentSegment setTotalCellDupTxDataBytes:v5];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellDupTxDataBytes:*(&v39 + 1)];
  lastReportedTotalCellDupRxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalCellDupRxDataBytes];
  v9 = v38;
  v10 = self->_currentSegment;
  if (lastReportedTotalCellDupRxDataBytes <= v38)
  {
    v11 = v9 - [(CallSegment *)self->_currentSegment lastReportedTotalCellDupRxDataBytes];
    v9 = v11 + [(CallSegment *)v10 totalCellDupRxDataBytes];
  }

  [(CallSegment *)v10 setTotalCellDupRxDataBytes:v9];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellDupRxDataBytes:v38];
  lastReportedTotalUsedCellBudgetTxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetTxDataBytes];
  v13 = *(&v38 + 1);
  v14 = self->_currentSegment;
  if (lastReportedTotalUsedCellBudgetTxDataBytes <= *(&v38 + 1))
  {
    v15 = v13 - [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetTxDataBytes];
    v13 = v15 + [(CallSegment *)v14 totalUsedCellBudgetTxDataBytes];
  }

  [(CallSegment *)v14 setTotalUsedCellBudgetTxDataBytes:v13];
  [(CallSegment *)self->_currentSegment setLastReportedTotalUsedCellBudgetTxDataBytes:*(&v38 + 1)];
  lastReportedTotalUsedCellBudgetRxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetRxDataBytes];
  v17 = v39;
  v18 = self->_currentSegment;
  if (lastReportedTotalUsedCellBudgetRxDataBytes <= v39)
  {
    v19 = v17 - [(CallSegment *)self->_currentSegment lastReportedTotalUsedCellBudgetRxDataBytes];
    v17 = v19 + [(CallSegment *)v18 totalUsedCellBudgetRxDataBytes];
  }

  [(CallSegment *)v18 setTotalUsedCellBudgetRxDataBytes:v17];
  [(CallSegment *)self->_currentSegment setLastReportedTotalUsedCellBudgetRxDataBytes:v39];
  lastReportedTotalCellTxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalCellTxDataBytes];
  v21 = v36;
  v22 = self->_currentSegment;
  if (lastReportedTotalCellTxDataBytes <= v36)
  {
    v23 = v21 - [(CallSegment *)self->_currentSegment lastReportedTotalCellTxDataBytes];
    v21 = v23 + [(CallSegment *)v22 totalCellTxDataBytes];
  }

  [(CallSegment *)v22 setTotalCellTxDataBytes:v21];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellTxDataBytes:v36];
  lastReportedTotalCellRxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalCellRxDataBytes];
  v25 = *(&v36 + 1);
  v26 = self->_currentSegment;
  if (lastReportedTotalCellRxDataBytes <= *(&v36 + 1))
  {
    v27 = v25 - [(CallSegment *)self->_currentSegment lastReportedTotalCellRxDataBytes];
    v25 = v27 + [(CallSegment *)v26 totalCellRxDataBytes];
  }

  [(CallSegment *)v26 setTotalCellRxDataBytes:v25];
  [(CallSegment *)self->_currentSegment setLastReportedTotalCellRxDataBytes:*(&v36 + 1)];
  lastReportedTotalWifiTxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalWifiTxDataBytes];
  v29 = v37;
  v30 = self->_currentSegment;
  if (lastReportedTotalWifiTxDataBytes <= v37)
  {
    v31 = v29 - [(CallSegment *)self->_currentSegment lastReportedTotalWifiTxDataBytes];
    v29 = v31 + [(CallSegment *)v30 totalWifiTxDataBytes];
  }

  [(CallSegment *)v30 setTotalWifiTxDataBytes:v29];
  [(CallSegment *)self->_currentSegment setLastReportedTotalWifiTxDataBytes:v37];
  lastReportedTotalWifiRxDataBytes = [(CallSegment *)self->_currentSegment lastReportedTotalWifiRxDataBytes];
  v33 = *(&v37 + 1);
  v34 = self->_currentSegment;
  if (lastReportedTotalWifiRxDataBytes <= *(&v37 + 1))
  {
    v35 = v33 - [(CallSegment *)self->_currentSegment lastReportedTotalWifiRxDataBytes];
    v33 = v35 + [(CallSegment *)v34 totalWifiRxDataBytes];
  }

  [(CallSegment *)v34 setTotalWifiRxDataBytes:v33];
  [(CallSegment *)self->_currentSegment setLastReportedTotalWifiRxDataBytes:*(&v37 + 1)];
}

- (void)updateRTStats:(id)stats
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__VCAggregatorFaceTime_updateRTStats___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = stats;
  dispatch_async(stateQueue, v4);
}

void __38__VCAggregatorFaceTime_updateRTStats___block_invoke(uint64_t a1)
{
  v247 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(*(a1 + 32) + 1368) duration] >= 1)
  {
    v3 = (a1 + 40);
    [*(a1 + 32) microFromPayload:*(a1 + 40)];
    v5 = v4;
    v6 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RTT", "integerValue"}];
    [objc_msgSend(*(*(a1 + 32) + 1368) "RTT")];
    *(*(a1 + 32) + 1632) = *(*(a1 + 32) + 1632) + v6;
    v7 = *(*(a1 + 32) + 1368);
    [v7 averageRTT];
    [v7 setAverageRTT:v8 + v6];
    v9 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"WRRTT", "integerValue"}];
    [objc_msgSend(*(*(a1 + 32) + 1368) "abnormalRTT")];
    if (v9 >= 0x1F5)
    {
      *(*v2 + 117) = *(*v2 + 117) + v9;
      ++*(*v2 + 236);
    }

    [objc_msgSend(*v3 objectForKeyedSubscript:{@"AJQS", "doubleValue"}];
    v11 = (v10 * 1000.0);
    [objc_msgSend(*(*v2 + 171) "JBQSize")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v13 = (v12 * 1000.0);
    [objc_msgSend(*(*v2 + 171) "WANVJBQSize")];
    [*(*v2 + 171) setAverageJitterQueueSize:{objc_msgSend(*(*v2 + 171), "averageJitterQueueSize") + v13}];
    v14 = [*(*v2 + 171) maxJitterQueueSize];
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    [*(*v2 + 171) setMaxJitterQueueSize:v15];
    [*v2 updateNetworkSendResultStats:*v3];
    v16 = *(*v2 + 171);
    if (v13 >= v11)
    {
      v17 = [v16 JBQSizeDeltaVidLarger];
      v18 = (v13 - v11);
    }

    else
    {
      v17 = [v16 JBQSizeDeltaAudLarger];
      v18 = (v11 - v13);
    }

    [v17 addValue:v18];
    [*(*v2 + 171) setAverageJitterQueueSizeChanges:{objc_msgSend(*(*v2 + 171), "averageJitterQueueSizeChanges") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VJBTC", "intValue")}];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    v23 = v22 * 1000.0;
    v24 = *(*v2 + 171);
    [v24 timeWeightedJitterQueueSize];
    [v24 setTimeWeightedJitterQueueSize:v23 + v25];
    [objc_msgSend(*(*v2 + 171) "latency")];
    v26 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"PLR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "PLR")];
    [objc_msgSend(*(*v2 + 171) "abnormalPLR")];
    v27 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxPLR", "integerValue"}];
    v28 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VPLR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "VPLR")];
    if (v28 >= 0x3E9)
    {
      ++*(*v2 + 412);
      *(*v2 + 205) = *(*v2 + 205) + v28;
    }

    [*(*v2 + 171) setVPLRAccumulator:{objc_msgSend(*(*v2 + 171), "VPLRAccumulator") + v27}];
    *(*v2 + 222) += v27;
    v29 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"WRBPL", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "abnormalBPL")];
    if (v29 >= 7)
    {
      ++*(*v2 + 232);
      *(*v2 + 115) = *(*v2 + 115) + v29;
    }

    if ([objc_msgSend(*v3 objectForKeyedSubscript:{@"ULLBA", "integerValue"}])
    {
      ++*(*v2 + 413);
    }

    if ([objc_msgSend(*v3 objectForKeyedSubscript:{@"VCSECNEnabled", "integerValue"}])
    {
      [*(*v2 + 171) setEcnEnabledCount:{objc_msgSend(*(*v2 + 171), "ecnEnabledCount") + 1}];
      ++*(*v2 + 428);
    }

    v30 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"TTxR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "TBR")];
    v31 = *(*v2 + 171);
    [v31 averageTargetBitrate];
    [v31 setAverageTargetBitrate:v32 + v30];
    *(*v2 + 179) = *(*v2 + 179) + v30;
    v33 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"NJB", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "JBTarget")];
    *(*v2 + 185) = *(*v2 + 185) + v33;
    [objc_msgSend(*(*v2 + 171) "JBUnclippedTarget")];
    [objc_msgSend(*(*v2 + 171) "videoJitter")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"RedErasureCompensationRate", "doubleValue"}];
    [objc_msgSend(*(*v2 + 171) "REDErasureCompensationRate")];
    [objc_msgSend(*(*v2 + 171) "REDReceivedCount")];
    [objc_msgSend(*(*v2 + 171) "REDDiscardedCount")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"ARFr", "doubleValue"}];
    [objc_msgSend(*(*v2 + 171) "framerate")];
    [objc_msgSend(*(*v2 + 171) "videoQualityScore")];
    [objc_msgSend(*(*v2 + 171) "videoEncodingBitrate")];
    [*v2 updateSegmentStats:*v3];
    if ([*v3 objectForKeyedSubscript:@"VST"])
    {
      [objc_msgSend(*v3 objectForKeyedSubscript:{@"VST", "doubleValue"}];
      v37 = v36;
      v38 = v36 - *(*v2 + 211);
      [*(*v2 + 38) addVideoStallWithStartTime:v5 - v38 endStallTime:v5];
      *(*v2 + 211) = v37;
      v39 = *(*v2 + 171);
      [v39 totalVideoStallTime];
      [v39 setTotalVideoStallTime:v38 + v40];
      *(*v2 + 210) = v38 + *(*v2 + 210);
      [objc_msgSend(*(*v2 + 171) "videoStall")];
    }

    if ([*v3 objectForKeyedSubscript:@"AVSyncOffset"])
    {
      [*v2 updateAVSyncOffsetSumAndCountWithValue:{objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"AVSyncOffset", "integerValue")}];
      v41 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"AVSyncOffsetMax", "integerValue"}];
      v42 = [*(*v2 + 171) maxAVSyncOffset];
      if (v42 <= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      [*(*v2 + 171) setMaxAVSyncOffset:v43];
      v44 = *(*v2 + 528);
      if (v44 <= v41)
      {
        v44 = v41;
      }

      *(*v2 + 528) = v44;
      v45 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"AVSyncOffsetMin", "integerValue"}];
      v46 = [*(*v2 + 171) minAVSyncOffset];
      if (v46 >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46;
      }

      [*(*v2 + 171) setMinAVSyncOffset:v47];
      v48 = *(*v2 + 527);
      if (v48 >= v45)
      {
        v48 = v45;
      }

      *(*v2 + 527) = v48;
    }

    [objc_msgSend(*v3 objectForKeyedSubscript:{@"MSTT", "doubleValue"}];
    v50 = v49;
    v51 = *(*v2 + 171);
    [v51 totalMediaStallTime];
    [v51 setTotalMediaStallTime:v50 + v52];
    *(*v2 + 73) = v50 + *(*v2 + 73);
    [objc_msgSend(*(*v2 + 171) "mediaStall")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"MMST", "doubleValue"}];
    v54 = v53;
    [*(*v2 + 171) maxMediaStallTime];
    if (v54 >= v55)
    {
      v55 = v54;
    }

    [*(*v2 + 171) setMaxMediaStallTime:v55];
    v56 = *(*v2 + 72);
    if (v56 < v54)
    {
      v56 = v54;
    }

    *(*v2 + 72) = v56;
    v57 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"MSTC", "intValue"}];
    [*(*v2 + 171) setMediaStallCount:{objc_msgSend(*(*v2 + 171), "mediaStallCount") + v57}];
    *(*v2 + 148) += v57;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VSTSM", "doubleValue"}];
    v59 = v58;
    [*(*v2 + 171) maxVideoStallInterval];
    if (v59 >= v60)
    {
      v60 = v59;
    }

    [*(*v2 + 171) setMaxVideoStallInterval:v60];
    v61 = *(*v2 + 82);
    if (v61 < v59)
    {
      v61 = v59;
    }

    *(*v2 + 82) = v61;
    if ([*v3 objectForKeyedSubscript:@"APT"])
    {
      [objc_msgSend(*v3 objectForKeyedSubscript:{@"APT", "doubleValue"}];
      v63 = v62 - *(*v2 + 129);
      *(*v2 + 129) = v62;
      v64 = *(*v2 + 171);
      [v64 totalAudioStallTime];
      [v64 setTotalAudioStallTime:v63 + v65];
      *(*v2 + 128) = v63 + *(*v2 + 128);
    }

    [objc_msgSend(*v3 objectForKeyedSubscript:{@"APSM", "doubleValue"}];
    v67 = v66;
    [*(*v2 + 171) maxAudioStallInterval];
    if (v67 >= v68)
    {
      v68 = v67;
    }

    [*(*v2 + 171) setMaxAudioStallInterval:v68];
    v69 = *(*v2 + 127);
    if (v69 < v67)
    {
      v69 = v67;
    }

    *(*v2 + 127) = v69;
    if ([*v3 objectForKeyedSubscript:@"VPS"])
    {
      v70 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VPS", "integerValue"}];
      v71 = v70;
      [*(*v2 + 171) setVideoSentPacketCount:{objc_msgSend(*(*v2 + 171), "videoSentPacketCount") + v70 - *(*v2 + 440)}];
      *(*v2 + 220) = v71;
    }

    if ([*v3 objectForKeyedSubscript:@"APS"])
    {
      v72 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"APS", "integerValue"}];
      v73 = v72;
      [*(*v2 + 171) setAudioSentPacketCount:{objc_msgSend(*(*v2 + 171), "audioSentPacketCount") + v72 - *(*v2 + 250)}];
      *(*v2 + 125) = v73;
    }

    v74 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"APRR", "integerValue"}];
    v75 = v74;
    [*(*v2 + 171) setAudioRecvPacketCount:{objc_msgSend(*(*v2 + 171), "audioRecvPacketCount") + v74 - *(*v2 + 252)}];
    *(*v2 + 126) = v75;
    [*(*v2 + 171) setVideoFlushPacketCount:{objc_msgSend(*(*v2 + 171), "videoFlushPacketCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VPF", "integerValue")}];
    [*(*v2 + 171) setAudioFlushPacketCount:{objc_msgSend(*(*v2 + 171), "audioFlushPacketCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"APF", "integerValue")}];
    [*(*v2 + 171) setBBQueueTooLargeCount:{objc_msgSend(*(*v2 + 171), "BBQueueTooLargeCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VFL", "integerValue")}];
    [*(*v2 + 171) setBBRateTooLowCount:{objc_msgSend(*(*v2 + 171), "BBRateTooLowCount") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"AFL", "integerValue")}];
    v76 = *v2;
    if (*(*v2 + 137) == 4)
    {
      v77 = 0;
    }

    else
    {
      v77 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"ATxR", "integerValue"}];
      v76 = *v2;
    }

    v76[180] = v76[180] + v77;
    v78 = *(*v2 + 171);
    [v78 callAverageAudioTxBitrate];
    [v78 setCallAverageAudioTxBitrate:v79 + v77];
    v80 = v77 + [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "SBR")];
    v81 = *(*v2 + 171);
    [v81 averageSendBitrate];
    [v81 setAverageSendBitrate:v82 + v80];
    *(*v2 + 182) = *(*v2 + 182) + v80;
    LODWORD(v80) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    v83 = *(*v2 + 171);
    [v83 averageTotalVideoSendBitrate];
    [v83 setAverageTotalVideoSendBitrate:v84 + v80];
    *(*v2 + 198) = *(*v2 + 198) + v80;
    v85 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxRMedia", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "TVidMedBR")];
    [*(*v2 + 85) addValue:v85];
    v86 = *(*v2 + 171);
    [v86 averageVideoMediaSendBitrate];
    [v86 setAverageVideoMediaSendBitrate:v87 + v85];
    *(*v2 + 199) = *(*v2 + 199) + v85;
    LODWORD(v85) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxMR", "integerValue"}];
    v88 = *(*v2 + 171);
    [v88 averageVideoMediaReceiveBitrate];
    [v88 setAverageVideoMediaReceiveBitrate:v89 + v85];
    *(*v2 + 200) = *(*v2 + 200) + v85;
    LODWORD(v85) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRFECRxR", "integerValue"}];
    v90 = *(*v2 + 171);
    [v90 averageVideoFECReceiveBitrate];
    [v90 setAverageVideoFECReceiveBitrate:v91 + v85];
    *(*v2 + 202) = *(*v2 + 202) + v85;
    v92 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"CodecPayload", "integerValue"}];
    if (([objc_msgSend(*(*v2 + 171) "TVidCodecPayload")] & 1) == 0 && VRTraceGetErrorLogLevelForModule("") >= 5)
    {
      v93 = VRTraceErrorLogLevelToCSTR(5u);
      v94 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v234 = v93;
        v235 = 2080;
        v236 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
        v237 = 1024;
        v238 = 3164;
        v239 = 1024;
        LODWORD(v240) = v92;
        _os_log_impl(&dword_23D4DF000, v94, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to find valueInt=%u in Segment Codec Payload histogram. No value will be reported.", buf, 0x22u);
      }
    }

    [*(*v2 + 86) addOnlyExactMatchingValue:v92];
    v95 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxRHDR", "integerValue"}];
    v96 = *(*v2 + 171);
    [v96 averageVideoHeaderSendBitrate];
    [v96 setAverageVideoHeaderSendBitrate:v97 + v95];
    *(*v2 + 201) = *(*v2 + 201) + v95;
    v98 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxRFEC", "integerValue"}];
    v99 = *(*v2 + 171);
    [v99 averageVideoFECSendBitrate];
    [v99 setAverageVideoFECSendBitrate:v100 + v98];
    *(*v2 + 203) = *(*v2 + 203) + v98;
    v101 = *v2;
    if (*(*v2 + 137) == 4)
    {
      v102 = 0;
    }

    else
    {
      v102 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"ARxR", "integerValue"}];
      v101 = *v2;
    }

    v101[181] = v101[181] + v102;
    v103 = *(*v2 + 171);
    [v103 callAverageAudioRxBitrate];
    [v103 setCallAverageAudioRxBitrate:v104 + v102];
    v105 = v102 + [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    [objc_msgSend(*(*v2 + 171) "RBR")];
    v106 = *(*v2 + 171);
    [v106 averageReceiveBitrate];
    [v106 setAverageReceiveBitrate:v107 + v105];
    *(*v2 + 183) = *(*v2 + 183) + v105;
    [*(*v2 + 38) setAvgReceivingBitrate:{objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"ARxR", "integerValue") + objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VRxR", "integerValue") - objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"VRFECRxR", "integerValue")}];
    LODWORD(v103) = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    v108 = *(*v2 + 171);
    [v108 averageTotalVideoRecvBitrate];
    [v108 setAverageTotalVideoRecvBitrate:v109 + v103];
    *(*v2 + 83) = *(*v2 + 83) + v103;
    [objc_msgSend(*(*v2 + 171) "videoResolution")];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"JitterErasureRate", "floatValue"}];
    v111 = (v110 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "jitterErasures")];
    v112 = *(*v2 + 171);
    [v112 averageJitterErasuresRate];
    [v112 setAverageJitterErasuresRate:v113 + v111];
    *(*v2 + 108) = *(*v2 + 108) + v111;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameErasureRate", "floatValue"}];
    v115 = (v114 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "audioErasures")];
    v116 = *(*v2 + 171);
    [v116 averageAudioErasuresRate];
    [v116 setAverageAudioErasuresRate:v117 + v115];
    *(*v2 + 109) = *(*v2 + 109) + v115;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"WindowedFrameErasureRate", "floatValue"}];
    [*(*v2 + 38) addLargeGapErasureWithTime:v5 largeGapErasureRate:v118];
    *(*v2 + 368) = fmax(*(*v2 + 368), [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameErasureCount", "intValue"}]);
    v119 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"MaxConsecutiveAudioErasures", "intValue"}];
    [objc_msgSend(*(*v2 + 171) "maxConsAudioErasuresHistogram")];
    [*(*v2 + 171) setMaxConsecutiveAudioErasures:{fmax(objc_msgSend(*(*v2 + 171), "maxConsecutiveAudioErasures"), v119)}];
    LODWORD(v120) = *(*v2 + 260);
    *(*v2 + 260) = fmax(v120, v119);
    *(*v2 + 375) = fmax(*(*v2 + 375), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalTimescaleCount", "intValue"}]);
    *(*v2 + 377) = fmax(*(*v2 + 377), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalSilenceTimescaleCount", "intValue"}]);
    *(*v2 + 376) = fmax(*(*v2 + 376), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalSpeechTimescaleCount", "intValue"}]);
    *(*v2 + 378) = fmax(*(*v2 + 378), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalExpandTimescaleCount", "intValue"}]);
    *(*v2 + 379) = fmax(*(*v2 + 379), [objc_msgSend(*v3 objectForKeyedSubscript:{@"TotalCompressTimescaleCount", "intValue"}]);
    v121 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"JitterBufferTargetChanges", "intValue"}];
    *(*v2 + 372) += v121;
    *(*v2 + 373) = fmax(*(*v2 + 373), v121);
    *(*v2 + 369) = fmax(*(*v2 + 369), [objc_msgSend(*v3 objectForKeyedSubscript:{@"VSTCNT", "intValue"}]);
    v122 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFrErCnt", "intValue"}];
    *(*v2 + 244) += v122;
    LODWORD(v123) = *(*v2 + 243);
    *(*v2 + 243) = fmax(v123, v122);
    *(*v2 + 387) += [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJBTC", "intValue"}];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v125 = v124 * 1000.0;
    v126 = v125;
    *(*v2 + 386) += v125;
    v127 = *(*v2 + 388);
    if (v127 <= v125)
    {
      v127 = v125;
    }

    *(*v2 + 388) = v127;
    [*(*v2 + 84) addValue:v125];
    v128 = &OBJC_IVAR___VCAggregatorFaceTime__JBQSizeDeltaVidLarger;
    if (v126 >= v11)
    {
      v129 = v126 - v11;
    }

    else
    {
      v128 = &OBJC_IVAR___VCAggregatorFaceTime__JBQSizeDeltaAudLarger;
      v129 = v11 - v126;
    }

    [*(*v2 + *v128) addValue:v129];
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    *(*v2 + 195) = v130 * 1000.0 + *(*v2 + 195);
    *(*v2 + 374) = fmin(*(*v2 + 374), [objc_msgSend(*v3 objectForKeyedSubscript:{@"NRFr", "intValue"}]);
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameSpeechErasureRate", "floatValue"}];
    v132 = (v131 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "speechErasures")];
    v133 = *(*v2 + 171);
    [v133 averageSpeechErasuresRate];
    [v133 setAverageSpeechErasuresRate:v134 + v132];
    *(*v2 + 110) = *(*v2 + 110) + v132;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"TimescaleRate", "floatValue"}];
    v136 = (v135 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "timescaleRate")];
    v137 = *(*v2 + 171);
    [v137 averageTotalTimescaleRate];
    [v137 setAverageTotalTimescaleRate:v138 + v136];
    *(*v2 + 190) = *(*v2 + 190) + v136;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"SilenceTimescaleRate", "floatValue"}];
    v140 = (v139 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "silenceTimescaleRate")];
    v141 = *(*v2 + 171);
    [v141 averageSilenceTimescaleRate];
    [v141 setAverageSilenceTimescaleRate:v142 + v140];
    *(*v2 + 191) = *(*v2 + 191) + v140;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"SpeechTimescaleRate", "floatValue"}];
    v144 = (v143 * 10000.0);
    [objc_msgSend(*(*v2 + 171) "speechTimescaleRate")];
    v145 = *(*v2 + 171);
    [v145 averageSpeechTimescaleRate];
    [v145 setAverageSpeechTimescaleRate:v146 + v144];
    *(*v2 + 192) = *(*v2 + 192) + v144;
    [objc_msgSend(*v3 objectForKeyedSubscript:{@"FrameSpeechErasureRate", "doubleValue"}];
    v148 = v147 * [*v2 RTPeriod] * 1000.0;
    if (v148 != 0.0)
    {
      v149 = *(*v2 + 171);
      [v149 speechErasureTotalTime];
      [v149 setSpeechErasureTotalTime:v148 + v150];
    }

    v151 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"DBE", "intValue"}];
    v152 = *(*v2 + 171);
    [v152 averageBWE];
    [v152 setAverageBWE:v153 + v151];
    v154 = [*(*v2 + 171) minBWE];
    if (v151 >= v154)
    {
      v155 = v154;
    }

    else
    {
      v155 = v151;
    }

    [*(*v2 + 171) setMinBWE:v155];
    v156 = [*(*v2 + 171) maxBWE];
    if (v151 <= v156)
    {
      v157 = v156;
    }

    else
    {
      v157 = v151;
    }

    [*(*v2 + 171) setMaxBWE:v157];
    v158 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"SBWD", "intValue"}];
    [*(*v2 + 171) setTotalSuddenBandwidthDropCount:{v158 - *(*v2 + 124) + objc_msgSend(*(*v2 + 171), "totalSuddenBandwidthDropCount")}];
    *(*v2 + 124) = v158;
    v159 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"RDMBL", "intValue"}];
    [*(*v2 + 171) setTotalMBLRampDownCount:{v159 - *(*v2 + 464) + objc_msgSend(*(*v2 + 171), "totalMBLRampDownCount")}];
    *(*v2 + 464) = v159;
    v160 = *v2;
    if (*(*v2 + 1376) == 1)
    {
      [objc_msgSend(v160[171] "poorConnection")];
    }

    else if (*(v160 + 174) != 0.0)
    {
      [objc_msgSend(v160[171] "poorConnection")];
      *(*v2 + 174) = 0;
    }

    v161 = [*v3 objectForKeyedSubscript:@"VPktRx"];
    v162 = [*v3 objectForKeyedSubscript:@"VRxPktLoss"];
    v163 = [*v3 objectForKeyedSubscript:@"VRSOOOCnt"];
    if (v161)
    {
      if (v162)
      {
        v164 = v163;
        if (v163)
        {
          v165 = [v161 intValue];
          [v162 doubleValue];
          v167 = v166 / 100.0;
          if (v167 >= 1.0)
          {
            v168 = 0;
          }

          else
          {
            v168 = (v165 / (1.0 - v167));
          }

          *(*v2 + 447) += v168;
          [*(*v2 + 171) setTotalVideoPacketsExpected:{objc_msgSend(*(*v2 + 171), "totalVideoPacketsExpected") + v168}];
          v169 = [v164 intValue];
          *(*v2 + 446) += v169;
          [*(*v2 + 171) setSignificantOOOPacketCount:{objc_msgSend(*(*v2 + 171), "significantOOOPacketCount") + v169}];
        }
      }
    }

    v170 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFIRDCnt", "intValue"}];
    *(*v2 + 448) += v170;
    [*(*v2 + 171) setTotalFIRDemandCounter:{objc_msgSend(*(*v2 + 171), "totalFIRDemandCounter") + v170}];
    v171 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFIRCnt", "intValue"}];
    *(*v2 + 449) += v171;
    [*(*v2 + 171) setTotalFIRCounter:{objc_msgSend(*(*v2 + 171), "totalFIRCounter") + v171}];
    v172 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFIRFSCnt", "intValue"}];
    *(*v2 + 450) += v172;
    [*(*v2 + 171) setTotalFIRFailSafeCounter:{objc_msgSend(*(*v2 + 171), "totalFIRFailSafeCounter") + v172}];
    v173 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFDBSCnt", "intValue"}];
    *(*v2 + 451) += v173;
    [*(*v2 + 171) setVideoFrameDecodedButSkippedCounter:{objc_msgSend(*(*v2 + 171), "videoFrameDecodedButSkippedCounter") + v173}];
    v174 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFTICnt", "intValue"}];
    *(*v2 + 452) += v174;
    [*(*v2 + 171) setVideoFrameTotalIncompleteCounter:{objc_msgSend(*(*v2 + 171), "videoFrameTotalIncompleteCounter") + v174}];
    v175 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"DVFECnt", "intValue"}];
    *(*v2 + 453) += v175;
    [*(*v2 + 171) setDecodedVideoFrameEnqueueCounter:{objc_msgSend(*(*v2 + 171), "decodedVideoFrameEnqueueCounter") + v175}];
    v176 = reportingDefaultRealtimePeriod();
    if (v176)
    {
      v177 = v175 / v176;
    }

    else
    {
      v177 = 0.0;
    }

    [*(*v2 + 38) setVideoFramerate:v177];
    v178 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFRxCnt", "intValue"}];
    *(*v2 + 454) += v178;
    [*(*v2 + 171) setVideoFrameReceivedCounter:{objc_msgSend(*(*v2 + 171), "videoFrameReceivedCounter") + v178}];
    v179 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFExCnt", "intValue"}];
    *(*v2 + 455) += v179;
    [*(*v2 + 171) setVideoFrameExpectedCounter:{objc_msgSend(*(*v2 + 171), "videoFrameExpectedCounter") + v179}];
    v180 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VNoFecTF", "intValue"}];
    *(*v2 + 456) += v180;
    [*(*v2 + 171) setVideoFrameNonFECTotalCounter:{objc_msgSend(*(*v2 + 171), "videoFrameNonFECTotalCounter") + v180}];
    v181 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VNoFecCF", "intValue"}];
    *(*v2 + 457) += v181;
    [*(*v2 + 171) setVideoFrameNonFECCompleteCounter:{objc_msgSend(*(*v2 + 171), "videoFrameNonFECCompleteCounter") + v181}];
    v182 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"EncOutFrameCnt", "integerValue"}];
    *(*v2 + 458) += v182;
    [*(*v2 + 171) setEncodedVideoFrameCounter:{objc_msgSend(*(*v2 + 171), "encodedVideoFrameCounter") + v182}];
    v183 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFCCnt", "integerValue"}];
    *(*v2 + 459) += v183;
    [*(*v2 + 171) setCaptureVideoFrameCounter:{objc_msgSend(*(*v2 + 171), "captureVideoFrameCounter") + v183}];
    [*v2 updateRTXStats:*v3];
    v184 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"OVSBR", "intValue"}];
    *(*v2 + 237) += v184;
    [*(*v2 + 171) setOvershootSendBitrate:{objc_msgSend(*(*v2 + 171), "overshootSendBitrate") + v184}];
    v185 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"UNSBR", "intValue"}];
    *(*v2 + 238) += v185;
    [*(*v2 + 171) setUndershootSendBitrate:{objc_msgSend(*(*v2 + 171), "undershootSendBitrate") + v185}];
    v186 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"OVBWE", "intValue"}];
    *(*v2 + 239) += v186;
    [*(*v2 + 171) setOverUtilizedBandwidth:{objc_msgSend(*(*v2 + 171), "overUtilizedBandwidth") + v186}];
    v187 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"UNBWE", "intValue"}];
    *(*v2 + 240) += v187;
    [*(*v2 + 171) setUnderUtilizedBandwidth:{objc_msgSend(*(*v2 + 171), "underUtilizedBandwidth") + v187}];
    v188 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFEVTrCnt", "intValue"}];
    *(*v2 + 482) += v188;
    [*(*v2 + 171) setEvictedFramesTrackedCount:{objc_msgSend(*(*v2 + 171), "evictedFramesTrackedCount") + v188}];
    v189 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFEVRecoveredCnt", "intValue"}];
    *(*v2 + 490) += v189;
    [*(*v2 + 171) setEvictedFramesRecoveredCount:{objc_msgSend(*(*v2 + 171), "evictedFramesRecoveredCount") + v189}];
    v190 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VFrLateCount", "intValue"}];
    *(*v2 + 491) += v190;
    [*(*v2 + 171) setLateFramesScheduledCount:{objc_msgSend(*(*v2 + 171), "lateFramesScheduledCount") + v190}];
    [*v2 updateLateFrameStats:*v3];
    v191 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"VTxFECTime", "integerValue"}];
    LODWORD(v192) = *(*v2 + 492);
    *(*v2 + 492) = (v191 + v192);
    [*(*v2 + 171) setFecProcessingTime:{(v191 + objc_msgSend(*(*v2 + 171), "fecProcessingTime"))}];
    [*(*v2 + 171) setIs5GHz:{objc_msgSend(objc_msgSend(*v3, "objectForKeyedSubscript:", @"iWiFi5GHz", "integerValue") != 0}];
    v193 = [objc_msgSend(*v3 objectForKeyedSubscript:{@"RTT", "integerValue"}];
    v194 = *(*v2 + 171);
    if (v193 < 0x1F5)
    {
      [objc_msgSend(*(*v2 + 171) "continuousHighRTTReportCount")];
      v196 = *(*v2 + 171);
      v195 = 0;
    }

    else
    {
      v195 = [*(*v2 + 171) highRTTReportCounter] + 1;
      v196 = v194;
    }

    [v196 setHighRTTReportCounter:v195];
    if ([objc_msgSend(*v3 objectForKeyedSubscript:{@"VPLR", "integerValue"}] < 1)
    {
      [objc_msgSend(*(*v2 + 171) "continuousHighPLRReportCount")];
      [*(*v2 + 171) setHighPLRReportCounter:0];
      if (v193 < 0x1F5)
      {
        [objc_msgSend(*(*v2 + 171) "continuousHighRTTPLRReportCount")];
        v199 = *(*v2 + 171);
        v198 = 0;
        goto LABEL_98;
      }
    }

    else
    {
      [*(*v2 + 171) setHighPLRReportCounter:{objc_msgSend(*(*v2 + 171), "highPLRReportCounter") + 1}];
    }

    v197 = *(*v2 + 171);
    v198 = [v197 highRTTPLRReportCounter] + 1;
    v199 = v197;
LABEL_98:
    [v199 setHighRTTPLRReportCounter:v198];
    [*v2 processCameraResolution:*v3];
    [*v2 updateAudioTxStatsWithPayload:*v3];
    [objc_msgSend(*v2 "captionsDataCollector")];
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v200 = *(*v2 + 284);
    v201 = [v200 countByEnumeratingWithState:&v229 objects:v246 count:16];
    if (v201)
    {
      v202 = v201;
      v203 = *v230;
      do
      {
        for (i = 0; i != v202; ++i)
        {
          if (*v230 != v203)
          {
            objc_enumerationMutation(v200);
          }

          [*(*(&v229 + 1) + 8 * i) updateDataWithTime:v5];
        }

        v202 = [v200 countByEnumeratingWithState:&v229 objects:v246 count:16];
      }

      while (v202);
    }

    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    v205 = [*(*v2 + 171) thermalDataCollectors];
    v206 = [v205 countByEnumeratingWithState:&v225 objects:v245 count:16];
    if (v206)
    {
      v207 = v206;
      v208 = *v226;
      do
      {
        for (j = 0; j != v207; ++j)
        {
          if (*v226 != v208)
          {
            objc_enumerationMutation(v205);
          }

          [*(*(&v225 + 1) + 8 * j) updateDataWithTime:v5];
        }

        v207 = [v205 countByEnumeratingWithState:&v225 objects:v245 count:16];
      }

      while (v207);
    }

    ++*(*v2 + 356);
    [*(*v2 + 171) setAdjustedDuration:{objc_msgSend(*(*v2 + 171), "adjustedDuration") + 1}];
    goto LABEL_124;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v19 = VRTraceErrorLogLevelToCSTR(8u);
    v20 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(*v2 + 165) UTF8String];
        *buf = 136315906;
        v234 = v19;
        v235 = 2080;
        v236 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
        v237 = 1024;
        v238 = 3469;
        v239 = 2080;
        v240 = v21;
        _os_log_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Ignoring first event(s) for segment %s", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __38__VCAggregatorFaceTime_updateRTStats___block_invoke_cold_1(v19, v2);
    }
  }

  if ([*(a1 + 40) objectForKeyedSubscript:@"VST"])
  {
    [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VST", "doubleValue"}];
    *(*(a1 + 32) + 1688) = v210;
  }

  if ([*(a1 + 40) objectForKeyedSubscript:@"APT"])
  {
    [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"APT", "doubleValue"}];
    *(*(a1 + 32) + 1032) = v211;
  }

  v212 = *v2;
  if (*(*v2 + 1400) == 1)
  {
    [v212 microFromPayload:*(a1 + 40)];
    *(*(a1 + 32) + 1408) = v213;
    v212 = *(a1 + 32);
  }

  if (v212[1376] == 1)
  {
    [v212 microFromPayload:*(a1 + 40)];
    *(*(a1 + 32) + 1384) = v214;
  }

LABEL_124:
  [*(a1 + 32) updateVideoFECStats:*(a1 + 40) fecStats:objc_msgSend(*(*(a1 + 32) + 1368) callLossPattern:"fecStatsHolder") segmentLossPattern:*(*(a1 + 32) + 1976) segmentLossHistogram:objc_msgSend(*(*(a1 + 32) + 1368) segmentLossFecHistogram:{"lossPattern"), objc_msgSend(*(*(a1 + 32) + 1368), "lossHistogram"), objc_msgSend(*(*(a1 + 32) + 1368), "lossFecHistogram")}];
  [*(a1 + 32) updateVPCStats:*(a1 + 40)];
  [*(a1 + 32) updateVideoFeatureStatus:*(a1 + 40)];
  ++*(*(a1 + 32) + 1420);
  [*(*(a1 + 32) + 1368) setDuration:{objc_msgSend(*(*(a1 + 32) + 1368), "duration") + 1}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v215 = VRTraceErrorLogLevelToCSTR(8u);
    v216 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v217 = [objc_msgSend(*(*v2 + 171) "description")];
        v218 = *v2;
        v219 = *(*v2 + 355);
        v220 = [v218[171] duration];
        *buf = 136316418;
        v234 = v215;
        v235 = 2080;
        v236 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
        v237 = 1024;
        v238 = 3492;
        v239 = 2080;
        v240 = v217;
        v241 = 1024;
        v242 = v219;
        v243 = 1024;
        v244 = v220;
        _os_log_impl(&dword_23D4DF000, v216, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Current segment after RT event {%s}, total duration is %d, segment duration is %d", buf, 0x32u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v221 = [objc_msgSend(*(*v2 + 171) "description")];
      v222 = *v2;
      v223 = *(*v2 + 355);
      v224 = [v222[171] duration];
      *buf = 136316418;
      v234 = v215;
      v235 = 2080;
      v236 = "[VCAggregatorFaceTime updateRTStats:]_block_invoke";
      v237 = 1024;
      v238 = 3492;
      v239 = 2080;
      v240 = v221;
      v241 = 1024;
      v242 = v223;
      v243 = 1024;
      v244 = v224;
      _os_log_debug_impl(&dword_23D4DF000, v216, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Current segment after RT event {%s}, total duration is %d, segment duration is %d", buf, 0x32u);
    }
  }
}

- (void)updateLateFrameStats:(id)stats
{
  [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVLtPktDelay", "doubleValue"}];
  v6 = v5;
  [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVMaxLtPktDelay", "doubleValue"}];
  v8 = v7;
  self->_evictedFramesAverageLatePacketDelay = v6 + self->_evictedFramesAverageLatePacketDelay;
  evictedFramesMaxLatePacketDelay = self->_evictedFramesMaxLatePacketDelay;
  if (evictedFramesMaxLatePacketDelay < v8)
  {
    evictedFramesMaxLatePacketDelay = v8;
  }

  self->_evictedFramesMaxLatePacketDelay = evictedFramesMaxLatePacketDelay;
  currentSegment = self->_currentSegment;
  [(CallSegment *)currentSegment evictedFramesAverageLatePacketDelay];
  [(CallSegment *)currentSegment setEvictedFramesAverageLatePacketDelay:v6 + v11];
  [(CallSegment *)self->_currentSegment evictedFramesMaxLatePacketDelay];
  if (v12 < v8)
  {
    v12 = v8;
  }

  [(CallSegment *)self->_currentSegment setEvictedFramesMaxLatePacketDelay:v12];
  if (v6 != 0.0)
  {
    ++self->_evictedFramesAnalysisValidIntervals;
    [(CallSegment *)self->_currentSegment setEvictedFramesAnalysisValidIntervals:[(CallSegment *)self->_currentSegment evictedFramesAnalysisValidIntervals]+ 1];
  }

  v13 = [stats objectForKeyedSubscript:@"VFEVLtPktDelayHist"];
  if (v13)
  {
    v14 = v13;
    v21 = 0;
    v15 = [VCReportingHistogram bucketWithType:79 count:&v21];
    if (v21 != 1)
    {
      v16 = v15;
      v17 = 0;
      do
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        [(VCHistogram *)self->_evictedFramesLatePacketHist addValue:v16[v17] withIncrement:valuePtr];
        evictedFramesLatePacketDelayHist = [(CallSegment *)self->_currentSegment evictedFramesLatePacketDelayHist];
        [(VCHistogram *)evictedFramesLatePacketDelayHist addValue:v16[v17++] withIncrement:valuePtr];
      }

      while (v17 < (v21 - 1));
    }
  }
}

- (void)updateRTXStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"NacksSent"] && objc_msgSend(stats, "objectForKeyedSubscript:", @"NacksFulfilled") && objc_msgSend(stats, "objectForKeyedSubscript:", @"NacksFulfilledOnTime"))
  {
    v5 = [objc_msgSend(stats objectForKeyedSubscript:{@"NacksSent", "integerValue"}];
    self->_nacksSent += v5;
    [(CallSegment *)self->_currentSegment setNacksSent:[(CallSegment *)self->_currentSegment nacksSent]+ v5];
    v6 = [objc_msgSend(stats objectForKeyedSubscript:{@"NacksFulfilled", "integerValue"}];
    self->_nacksFulfilled += v6;
    [(CallSegment *)self->_currentSegment setNacksFulfilled:[(CallSegment *)self->_currentSegment nacksFulfilled]+ v6];
    v7 = [objc_msgSend(stats objectForKeyedSubscript:{@"NacksFulfilledOnTime", "integerValue"}];
    self->_nacksFulfilledOnTime += v7;
    [(CallSegment *)self->_currentSegment setNacksFulfilledOnTime:[(CallSegment *)self->_currentSegment nacksFulfilledOnTime]+ v7];
    v8 = [objc_msgSend(stats objectForKeyedSubscript:{@"UniqueNacksSent", "integerValue"}];
    self->_uniqueNacksSent += v5;
    [(CallSegment *)self->_currentSegment setUniqueNacksSent:[(CallSegment *)self->_currentSegment uniqueNacksSent]+ v8];
    v9 = [objc_msgSend(stats objectForKeyedSubscript:{@"NacksFrmsSchWithRTX", "integerValue"}];
    self->_lateFramesScheduledWithRTXCount += v9;
    [(CallSegment *)self->_currentSegment setLateFramesScheduledWithRTXCount:[(CallSegment *)self->_currentSegment lateFramesScheduledWithRTXCount]+ v9];
    v10 = [objc_msgSend(stats objectForKeyedSubscript:{@"NacksFrmsAssemWithRTX", "integerValue"}];
    self->_assembledFramesWithRTXPacketsCount += v10;
    [(CallSegment *)self->_currentSegment setAssembledFramesWithRTXPacketsCount:[(CallSegment *)self->_currentSegment assembledFramesWithRTXPacketsCount]+ v10];
    v11 = [objc_msgSend(stats objectForKeyedSubscript:{@"NacksFrmsFailedAssemWithRTX", "integerValue"}];
    self->_failedToAssembleFramesWithRTXPacketsCount += v11;
    [(CallSegment *)self->_currentSegment setFailedToAssembleFramesWithRTXPacketsCount:[(CallSegment *)self->_currentSegment failedToAssembleFramesWithRTXPacketsCount]+ v11];
    nacksRTXMediaBitRate = [(CallSegment *)self->_currentSegment nacksRTXMediaBitRate];
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksMediaBitRate", "doubleValue"}];
    [(VCHistogram *)nacksRTXMediaBitRate addValue:v13];
    nacksRTXRetransmittedMediaBitRate = [(CallSegment *)self->_currentSegment nacksRTXRetransmittedMediaBitRate];
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksRTXMediaBitRate", "doubleValue"}];
    [(VCHistogram *)nacksRTXRetransmittedMediaBitRate addValue:v15];
    nacksPLRWithRTX = [(CallSegment *)self->_currentSegment nacksPLRWithRTX];
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksPLRWithRTX", "doubleValue"}];
    [(VCHistogram *)nacksPLRWithRTX addValue:v17];
    nacksPLRWithoutRTX = [(CallSegment *)self->_currentSegment nacksPLRWithoutRTX];
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksPLRWithoutRTX", "doubleValue"}];
    [(VCHistogram *)nacksPLRWithoutRTX addValue:v19];
    nacksPLRWithRTX = self->_nacksPLRWithRTX;
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksPLRWithRTX", "doubleValue"}];
    [(VCHistogram *)nacksPLRWithRTX addValue:v21];
    nacksPLRWithoutRTX = self->_nacksPLRWithoutRTX;
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksPLRWithoutRTX", "doubleValue"}];
    [(VCHistogram *)nacksPLRWithoutRTX addValue:v23];
    nacksRTXResponseTime = [(CallSegment *)self->_currentSegment nacksRTXResponseTime];
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksAvgResponseTime", "doubleValue"}];
    [(VCHistogram *)nacksRTXResponseTime addValue:(v25 * 1000.0)];
    nacksRTXLateTime = [(CallSegment *)self->_currentSegment nacksRTXLateTime];
    [objc_msgSend(stats objectForKeyedSubscript:{@"NacksLateTime", "doubleValue"}];
    [(VCHistogram *)nacksRTXLateTime addValue:(v27 * 1000.0)];
    [(CallSegment *)self->_currentSegment setIsRTXTelemetryAvailable:1];
    self->_isRTXTelemetryAvailable = 1;
    self->super._serverPacketRetransmissionsForVideoEnabled = 1;
  }

  if (self->_currentSegment && [stats objectForKeyedSubscript:@"UNRPC"] && objc_msgSend(stats, "objectForKeyedSubscript:", @"UNFPC") && objc_msgSend(stats, "objectForKeyedSubscript:", @"ULNACKCHCNT") && objc_msgSend(stats, "objectForKeyedSubscript:", @"ULNACKCMCNT") && objc_msgSend(stats, "objectForKeyedSubscript:", @"ULNACKNRCNT"))
  {
    self->_currentSegment->super._isUplinkRTXTelemetryAvailable = 1;
    self->super.super._isUplinkRTXTelemetryAvailable = 1;
    v28 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNRPC", "integerValue"}];
    self->super.super._retransmissionRequestPacketCount += v28;
    self->_currentSegment->super._retransmissionRequestPacketCount += v28;
    v29 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNFPC", "integerValue"}];
    self->super.super._retransmissionFulfilledPacketCount += v29;
    self->_currentSegment->super._retransmissionFulfilledPacketCount += v29;
    v30 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNCHPC", "integerValue"}];
    self->super.super._retransmissionCacheHitCount += v30;
    self->_currentSegment->super._retransmissionCacheHitCount += v30;
    v31 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNCMPC", "integerValue"}];
    self->super.super._retransmissionCacheMissCount += v31;
    self->_currentSegment->super._retransmissionCacheMissCount += v31;
    v32 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNTRC", "integerValue"}];
    self->super.super._retransmissionNACKReceivedCount += v32;
    self->_currentSegment->super._retransmissionNACKReceivedCount += v32;
    v33 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNRRC", "integerValue"}];
    self->super.super._retransmissionRequestRepeatedCount += v33;
    self->_currentSegment->super._retransmissionRequestRepeatedCount += v33;
    v34 = [objc_msgSend(stats objectForKeyedSubscript:{@"UNRRMC", "integerValue"}];
    currentSegment = self->_currentSegment;
    if (v34 > currentSegment->super._retransmissionRequestRepeatedMaxCount)
    {
      currentSegment->super._retransmissionRequestRepeatedMaxCount = v34;
      currentSegment = self->_currentSegment;
    }

    retransmissionResponseTime = currentSegment->super._retransmissionResponseTime;
    [objc_msgSend(stats objectForKeyedSubscript:{@"UNART", "doubleValue"}];
    [(VCHistogram *)retransmissionResponseTime addValue:(v37 * 1000.0)];
    retransmissionLateTime = self->_currentSegment->super._retransmissionLateTime;
    [objc_msgSend(stats objectForKeyedSubscript:{@"UNALT", "doubleValue"}];
    [(VCHistogram *)retransmissionLateTime addValue:(v39 * 1000.0)];
    retransmissionActualMediaBitrate = self->_currentSegment->super._retransmissionActualMediaBitrate;
    [objc_msgSend(stats objectForKeyedSubscript:{@"UNMB", "doubleValue"}];
    [(VCHistogram *)retransmissionActualMediaBitrate addValue:(v41 * 1000.0)];
    retransmissionBitrate = self->_currentSegment->super._retransmissionBitrate;
    [objc_msgSend(stats objectForKeyedSubscript:{@"UNRB", "doubleValue"}];
    [(VCHistogram *)retransmissionBitrate addValue:(v43 * 1000.0)];
    self->_currentSegment->super._isUplinkRTXTelemetryAvailable = 1;
    self->super.super._isUplinkRTXTelemetryAvailable = 1;
  }
}

- (void)processRTXConfigData:(id)data
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__VCAggregatorFaceTime_processRTXConfigData___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = data;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __45__VCAggregatorFaceTime_processRTXConfigData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"NacksRTXEnabled"];
  if (v2)
  {
    *(*(a1 + 40) + 432) = [v2 integerValue] != 0;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"NacksRTXConfigVersion"];
  if (v3)
  {
    *(*(a1 + 40) + 428) = [v3 integerValue];
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"NacksRTXDelayedEnabled"];
  if (v4)
  {
    *(*(a1 + 40) + 433) = [v4 integerValue] != 0;
  }

  [*(*(a1 + 40) + 1368) setNackGeneratorConfigVersion:*(*(a1 + 40) + 428)];
  [*(*(a1 + 40) + 1368) setServerPacketRetransmissionsForVideoEnabled:*(*(a1 + 40) + 432)];
  v5 = *(a1 + 40);
  v6 = *(v5 + 433);
  v7 = *(v5 + 1368);

  return [v7 setServerPacketRetransmissionsExtraDelayBudgetEnabled:v6];
}

- (void)updateVideoResolution:(id)resolution
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__VCAggregatorFaceTime_updateVideoResolution___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = resolution;
  dispatch_async(stateQueue, v4);
}

void __46__VCAggregatorFaceTime_updateVideoResolution___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 196) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"Width", "intValue"}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 196);
        v6 = *(v4 + 1420);
        v7 = [*(v4 + 1368) duration];
        v12 = 136316418;
        v13 = v2;
        v14 = 2080;
        v15 = "[VCAggregatorFaceTime updateVideoResolution:]_block_invoke";
        v16 = 1024;
        v17 = 3635;
        v18 = 1024;
        v19 = v5;
        v20 = 1024;
        v21 = v6;
        v22 = 1024;
        v23 = v7;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Current width has been updated to %d, total duration is %d, segment duration is %d", &v12, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 196);
      v10 = *(v8 + 1420);
      v11 = [*(v8 + 1368) duration];
      v12 = 136316418;
      v13 = v2;
      v14 = 2080;
      v15 = "[VCAggregatorFaceTime updateVideoResolution:]_block_invoke";
      v16 = 1024;
      v17 = 3635;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      _os_log_debug_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Current width has been updated to %d, total duration is %d, segment duration is %d", &v12, 0x2Eu);
    }
  }
}

- (void)updatePauseVideo:(id)video
{
  v5 = [objc_msgSend(video objectForKeyedSubscript:{@"VCSPVideoDegraded", "BOOLValue"}];
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__VCAggregatorFaceTime_updatePauseVideo___block_invoke;
  block[3] = &unk_278BD4D70;
  v8 = v5;
  block[4] = self;
  block[5] = video;
  dispatch_async(stateQueue, block);
}

void __41__VCAggregatorFaceTime_updatePauseVideo___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if ((*(v3 + 1376) & 1) == 0)
    {
      [*(v3 + 1368) setPoorConnectionFrequency:{objc_msgSend(*(v3 + 1368), "poorConnectionFrequency") + 1}];
      ++*(*(a1 + 32) + 1672);
      [*(a1 + 32) microFromPayload:*(a1 + 40)];
      *(*(a1 + 32) + 1384) = v4;
    }
  }

  else if (*(v3 + 1384) != 0.0)
  {
    [v3 microFromPayload:*(a1 + 40)];
    *(*(a1 + 32) + 1392) = v5 - *(*(a1 + 32) + 1384);
    [*(*(a1 + 32) + 1368) poorConnectionMaxLength];
    v7 = *(a1 + 32);
    if (v6 < *(v7 + 1392))
    {
      v6 = *(v7 + 1392);
    }

    [*(v7 + 1368) setPoorConnectionMaxLength:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1664);
    if (v9 < *(v8 + 1392))
    {
      v9 = *(v8 + 1392);
    }

    *(v8 + 1664) = v9;
    v10 = *(a1 + 32);
    v11 = *(v10 + 1368);
    [v11 poorConnectionTotalLength];
    [v11 setPoorConnectionTotalLength:v12 + *(v10 + 1392)];
    *(*(a1 + 32) + 1656) = *(*(a1 + 32) + 1392) + *(*(a1 + 32) + 1656);
    *(*(a1 + 32) + 1384) = 0;
  }

  *(*(a1 + 32) + 1376) = *(a1 + 48);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR(8u);
    v14 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 1376);
        v17 = *(v15 + 1384);
        v18 = *(v15 + 1420);
        v19 = [*(v15 + 1368) duration];
        v25 = 136316674;
        v26 = v13;
        v27 = 2080;
        v28 = "[VCAggregatorFaceTime updatePauseVideo:]_block_invoke";
        v29 = 1024;
        v30 = 3658;
        v31 = 1024;
        v32 = v16;
        v33 = 2048;
        v34 = v17;
        v35 = 1024;
        v36 = v18;
        v37 = 1024;
        v38 = v19;
        _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Video degraded state has been updated to %d, degragedg video start time is %.2f, total duration is %d, segment duration is %d", &v25, 0x38u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v21 = *(v20 + 1376);
      v22 = *(v20 + 1384);
      v23 = *(v20 + 1420);
      v24 = [*(v20 + 1368) duration];
      v25 = 136316674;
      v26 = v13;
      v27 = 2080;
      v28 = "[VCAggregatorFaceTime updatePauseVideo:]_block_invoke";
      v29 = 1024;
      v30 = 3658;
      v31 = 1024;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      _os_log_debug_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Video degraded state has been updated to %d, degragedg video start time is %.2f, total duration is %d, segment duration is %d", &v25, 0x38u);
    }
  }
}

- (void)dispatchedUpdateRoleModeTransport:(unsigned __int16)transport deviceRole:(unsigned __int16)role transportType:(unsigned __int16)type isInitiator:(BOOL)initiator isWalkieTalkieMode:(BOOL)mode
{
  modeCopy = mode;
  initiatorCopy = initiator;
  typeCopy = type;
  roleCopy = role;
  transportCopy = transport;
  v39 = *MEMORY[0x277D85DE8];
  [(CallSegment *)self->_currentSegment setCallMode:?];
  self->super._callMode = transportCopy;
  [(CallSegment *)self->_currentSegment setCallDeviceRole:roleCopy];
  self->_callDeviceRole = roleCopy;
  [(CallSegment *)self->_currentSegment setCallTransportType:typeCopy];
  self->_callTransportType = typeCopy;
  [(CallSegment *)self->_currentSegment setIsInitiator:initiatorCopy];
  self->super._isInitiator = initiatorCopy;
  self->super._isWalkieTalkieMode = modeCopy;
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR(8u);
    v14 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        callMode = self->super._callMode;
        callDeviceRole = self->_callDeviceRole;
        callTransportType = self->_callTransportType;
        isInitiator = self->super._isInitiator;
        v23 = 136316930;
        v24 = v13;
        v25 = 2080;
        v26 = "[VCAggregatorFaceTime dispatchedUpdateRoleModeTransport:deviceRole:transportType:isInitiator:isWalkieTalkieMode:]";
        v27 = 1024;
        v28 = 3668;
        v29 = 1024;
        v30 = callMode;
        v31 = 1024;
        v32 = callDeviceRole;
        v33 = 1024;
        v34 = callTransportType;
        v35 = 1024;
        v36 = isInitiator;
        v37 = 1024;
        v38 = modeCopy;
        _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Current call has mode=%d, role=%d, transport=%d, initiator=%d, isWalkieTalkieMode=%d", &v23, 0x3Au);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v19 = self->super._callMode;
      v20 = self->_callDeviceRole;
      v21 = self->_callTransportType;
      v22 = self->super._isInitiator;
      v23 = 136316930;
      v24 = v13;
      v25 = 2080;
      v26 = "[VCAggregatorFaceTime dispatchedUpdateRoleModeTransport:deviceRole:transportType:isInitiator:isWalkieTalkieMode:]";
      v27 = 1024;
      v28 = 3668;
      v29 = 1024;
      v30 = v19;
      v31 = 1024;
      v32 = v20;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v22;
      v37 = 1024;
      v38 = modeCopy;
      _os_log_debug_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Current call has mode=%d, role=%d, transport=%d, initiator=%d, isWalkieTalkieMode=%d", &v23, 0x3Au);
    }
  }
}

- (void)updateErrorCode:(id)code
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__VCAggregatorFaceTime_updateErrorCode___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = code;
  dispatch_async(stateQueue, v4);
}

void __40__VCAggregatorFaceTime_updateErrorCode___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 516) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"CallEndError", "integerValue"}];
  *(*(a1 + 32) + 520) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"Term", "integerValue"}];
  *(*(a1 + 32) + 1752) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"CallEndErrorDomain", "integerValue"}];
  *(*(a1 + 32) + 524) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"NoRemote", "intValue"}];
  *(*(a1 + 32) + 528) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RemoteNoRemote", "intValue"}];
  v2 = *(a1 + 32);
  v3 = v2[38];
  [v2 microFromPayload:*(a1 + 40)];
  [v3 addCallFailureWithTime:*(*(a1 + 32) + 520) detailedErrorCode:?];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR(8u);
    v5 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 520);
        v8 = 136315906;
        v9 = v4;
        v10 = 2080;
        v11 = "[VCAggregatorFaceTime updateErrorCode:]_block_invoke";
        v12 = 1024;
        v13 = 3680;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Call termination reason is %d", &v8, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 520);
      v8 = 136315906;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCAggregatorFaceTime updateErrorCode:]_block_invoke";
      v12 = 1024;
      v13 = 3680;
      v14 = 1024;
      v15 = v7;
      _os_log_debug_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Call termination reason is %d", &v8, 0x22u);
    }
  }
}

- (void)updateConnectionTelemetry:(id)telemetry
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__VCAggregatorFaceTime_updateConnectionTelemetry___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = telemetry;
  dispatch_async(stateQueue, v4);
}

void __50__VCAggregatorFaceTime_updateConnectionTelemetry___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 904) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RedState", "integerValue"}];
  *(*(a1 + 32) + 908) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"WAState", "unsignedCharValue"}];

  *(*(a1 + 32) + 176) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"REMBUILD", "copy"}];
  [*(*(a1 + 32) + 1368) setRemoteOSBuild:*(*(a1 + 32) + 176)];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 904);
        LODWORD(v4) = *(v4 + 908);
        v8 = 136316162;
        v9 = v2;
        v10 = 2080;
        v11 = "[VCAggregatorFaceTime updateConnectionTelemetry:]_block_invoke";
        v12 = 1024;
        v13 = 3691;
        v14 = 1024;
        v15 = v5;
        v16 = 1024;
        v17 = v4;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: RED State=%d, wifiAssistState State=%d", &v8, 0x28u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 904);
      LODWORD(v6) = *(v6 + 908);
      v8 = 136316162;
      v9 = v2;
      v10 = 2080;
      v11 = "[VCAggregatorFaceTime updateConnectionTelemetry:]_block_invoke";
      v12 = 1024;
      v13 = 3691;
      v14 = 1024;
      v15 = v7;
      v16 = 1024;
      v17 = v6;
      _os_log_debug_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: RED State=%d, wifiAssistState State=%d", &v8, 0x28u);
    }
  }
}

- (void)updateNoRemoteState:(id)state state:(BOOL)a4
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__VCAggregatorFaceTime_updateNoRemoteState_state___block_invoke;
  block[3] = &unk_278BD4D70;
  v6 = a4;
  block[4] = self;
  block[5] = state;
  dispatch_async(stateQueue, block);
}

void __50__VCAggregatorFaceTime_updateNoRemoteState_state___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1400) = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(v2 + 1408);
  if (*(v2 + 1400) == 1)
  {
    if (v3 != 0.0)
    {
      goto LABEL_9;
    }

    [v2 microFromPayload:*(a1 + 40)];
  }

  else
  {
    if (v3 == 0.0)
    {
      goto LABEL_9;
    }

    [v2 microFromPayload:*(a1 + 40)];
    v5 = *(a1 + 32);
    v7 = v6 - *(v5 + 1408);
    v8 = *(v5 + 1368);
    [v8 totalNoRemotePacketsTime];
    [v8 setTotalNoRemotePacketsTime:v7 + v9];
    [*(*(a1 + 32) + 1368) maxNoRemotePacketsInterval];
    if (v10 < v7)
    {
      v10 = v7;
    }

    [*(*(a1 + 32) + 1368) setMaxNoRemotePacketsInterval:v10];
    v4 = 0;
  }

  *(*(a1 + 32) + 1408) = v4;
LABEL_9:
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR(8u);
    v12 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 1408);
        v15 = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCAggregatorFaceTime updateNoRemoteState:state:]_block_invoke";
        v19 = 1024;
        v20 = 3708;
        v21 = 2048;
        v22 = v13;
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v15, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*(a1 + 32) + 1408);
      v15 = 136316162;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCAggregatorFaceTime updateNoRemoteState:state:]_block_invoke";
      v19 = 1024;
      v20 = 3708;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v14;
      _os_log_debug_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: No Remote Packet state=%f, start time=%f", &v15, 0x30u);
    }
  }
}

- (void)updateRelayInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];

  self->_relayServer = 0;
  self->_accessToken = 0;
  self->_relayType = 0;
  v5 = [info objectForKeyedSubscript:@"relayServer"];
  if ([(__CFString *)v5 length]&& (([(__CFString *)v5 isEqualToString:@"QRSAK"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@"QRSAP"]))
  {
    v6 = v5;
  }

  else
  {
    v6 = @"QRSUN";
  }

  self->_relayServer = [(__CFString *)v6 copy];
  self->_relayType = [objc_msgSend(info objectForKeyedSubscript:{@"relayType", "integerValue"}];
  v7 = [objc_msgSend(info objectForKeyedSubscript:{@"IDSToken", "copy"}];
  self->_accessToken = v7;
  if (!v7)
  {
    self->_accessToken = [@"Unknown" copy];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR(8u);
    v9 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        relayServer = self->_relayServer;
        accessToken = self->_accessToken;
        relayType = self->_relayType;
        v16 = 136316418;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCAggregatorFaceTime updateRelayInfo:]";
        v20 = 1024;
        v21 = 3740;
        v22 = 2112;
        v23 = relayServer;
        v24 = 2112;
        v25 = accessToken;
        v26 = 1024;
        v27 = relayType;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Relay info updated: Server %@, AccessToken %@, RelayType %d", &v16, 0x36u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v13 = self->_relayServer;
      v14 = self->_accessToken;
      v15 = self->_relayType;
      v16 = 136316418;
      v17 = v8;
      v18 = 2080;
      v19 = "[VCAggregatorFaceTime updateRelayInfo:]";
      v20 = 1024;
      v21 = 3740;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      v26 = 1024;
      v27 = v15;
      _os_log_debug_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Relay info updated: Server %@, AccessToken %@, RelayType %d", &v16, 0x36u);
    }
  }
}

- (void)updateConnectionSubTimes:(id)times
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__VCAggregatorFaceTime_updateConnectionSubTimes___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = times;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

void __49__VCAggregatorFaceTime_updateConnectionSubTimes___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA0C)}];
  v3 = *(a1 + 32);
  if (v2)
  {
    [objc_msgSend(v3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA0C)), "doubleValue"}];
    *(*(a1 + 40) + 1724) = v4;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)), "doubleValue"}];
    v6 = v5;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A933)), "doubleValue"}];
    if (v6 >= v7)
    {
      v7 = v6;
    }

    *(*(a1 + 40) + 1736) = v7;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A971)), "doubleValue"}];
    *(*(a1 + 40) + 1740) = v8;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA2B)), "doubleValue"}];
    *(*(a1 + 40) + 1728) = v9;
    if (!v9)
    {
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &kVCReporting_PerfTimersKeys)), "doubleValue"}];
      v11 = v10;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A8B7)), "doubleValue"}];
      v13 = v11 + v12;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A8D6)), "doubleValue"}];
      v15 = v13 + v14;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A8F5)), "doubleValue"}];
      v17 = v15 + v16;
      [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A914)), "doubleValue"}];
      *(*(a1 + 40) + 1728) = (v17 + v18);
    }

    *(*(a1 + 40) + 1716) = *(*(a1 + 40) + 1728) + *(*(a1 + 40) + 1724) + *(*(a1 + 40) + 1736) + *(*(a1 + 40) + 1740);
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR(6u);
      v20 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        v21 = *(a1 + 40);
        v23 = v21[429];
        v24 = v21[431];
        v25 = v21[432];
        v26 = v21[434];
        v27 = v21[435];
        LODWORD(v21) = v21[433];
        *buf = 136317442;
        v64 = v19;
        v65 = 2080;
        v66 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
        v67 = 1024;
        v68 = 3761;
        v69 = 1024;
        *v70 = v23;
        *&v70[4] = 1024;
        *&v70[6] = v24;
        *v71 = 1024;
        *&v71[2] = v25;
        *&v71[6] = 1024;
        *&v71[8] = v26;
        *&v71[12] = 1024;
        *&v71[14] = v27;
        *&v71[18] = 1024;
        *&v71[20] = v21;
        *&v71[24] = 2112;
        *&v71[26] = v22;
        v28 = " [%s] %s:%d Connection timing selected: TotalConnectionTime=%d, StartConnectionTime=%d, TransportConnectionTime=%d, MediaReceivedTime=%d, _mediaReceivedToProcessedTime=%d, _totalMediaStallSaveInterval=%d, original dictionary=%@";
        v29 = v20;
        v30 = 74;
LABEL_9:
        _os_log_impl(&dword_23D4DF000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
      }
    }
  }

  else
  {
    if ([v3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)}])
    {
      v31 = &unk_23D59A952;
    }

    else
    {
      v31 = &unk_23D59A933;
    }

    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", v31)), "doubleValue"}];
    v33 = v32;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AA88)), "doubleValue"}];
    v35 = v34;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAC6)), "doubleValue"}];
    v37 = v36;
    [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59AAA7)), "doubleValue"}];
    v39 = v38;
    v40 = v35 + v38 + v33;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
    if (v40)
    {
      if (ErrorLogLevelForModule >= 6)
      {
        v42 = VRTraceErrorLogLevelToCSTR(6u);
        v43 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v62 = [*(a1 + 32) objectForKeyedSubscript:@"VCSPIDSID"];
          v44 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithUTF8String:", &unk_23D59A952)}];
          v45 = *(a1 + 32);
          v46 = @"Video";
          *buf = 136317698;
          v64 = v42;
          if (!v44)
          {
            v46 = @"Audio";
          }

          v65 = 2080;
          v66 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
          v67 = 1024;
          v68 = 3770;
          v69 = 2112;
          *v70 = v62;
          *&v70[8] = 2112;
          *v71 = v46;
          *&v71[8] = 1024;
          *&v71[10] = v40;
          *&v71[14] = 1024;
          *&v71[16] = v35;
          *&v71[20] = 1024;
          *&v71[22] = v39;
          *&v71[26] = 1024;
          *&v71[28] = v33;
          *&v71[32] = 1024;
          *v72 = v37;
          *&v72[4] = 2112;
          *&v72[6] = v45;
          _os_log_impl(&dword_23D4DF000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection timing for participantID=%@, media=%@: TotalConnectionTime=%d, TransportConnectionTime=%d, MediaReceivedTime=%d, _mediaReceivedToProcessedTime=%d, _totalMediaStallSaveInterval=%d, original dictionary=%@", buf, 0x58u);
        }
      }

      v47 = *(a1 + 40);
      if (v40 > *(v47 + 1716))
      {
        *(v47 + 1740) = v33;
        *(*(a1 + 40) + 1728) = v35;
        *(*(a1 + 40) + 1732) = v37;
        *(*(a1 + 40) + 1736) = v39;
        *(*(a1 + 40) + 1716) = *(*(a1 + 40) + 1728) + *(*(a1 + 40) + 1724) + *(*(a1 + 40) + 1736) + *(*(a1 + 40) + 1740);
        if (VRTraceGetErrorLogLevelForModule("") >= 6)
        {
          v48 = VRTraceErrorLogLevelToCSTR(6u);
          v49 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [*(a1 + 32) objectForKeyedSubscript:@"VCSPIDSID"];
            v52 = *(a1 + 32);
            v51 = *(a1 + 40);
            v53 = v51[429];
            v54 = v51[431];
            v55 = v51[432];
            v56 = v51[434];
            v57 = v51[435];
            LODWORD(v51) = v51[433];
            *buf = 136317698;
            v64 = v48;
            v65 = 2080;
            v66 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
            v67 = 1024;
            v68 = 3783;
            v69 = 2112;
            *v70 = v50;
            *&v70[8] = 1024;
            *v71 = v53;
            *&v71[4] = 1024;
            *&v71[6] = v54;
            *&v71[10] = 1024;
            *&v71[12] = v55;
            *&v71[16] = 1024;
            *&v71[18] = v56;
            *&v71[22] = 1024;
            *&v71[24] = v57;
            *&v71[28] = 1024;
            *&v71[30] = v51;
            *v72 = 2112;
            *&v72[2] = v52;
            v28 = " [%s] %s:%d Connection timing selected for participantID=%@: TotalConnectionTime=%d, StartConnectionTime=%d, TransportConnectionTime=%d, MediaReceivedTime=%d, _mediaReceivedToProcessedTime=%d, _totalMediaStallSaveInterval=%d, original dictionary=%@";
            v29 = v49;
            v30 = 84;
            goto LABEL_9;
          }
        }
      }
    }

    else if (ErrorLogLevelForModule >= 5)
    {
      v58 = VRTraceErrorLogLevelToCSTR(5u);
      v59 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [*(a1 + 32) objectForKeyedSubscript:@"VCSPIDSID"];
        v61 = *(a1 + 32);
        *buf = 136316162;
        v64 = v58;
        v65 = 2080;
        v66 = "[VCAggregatorFaceTime updateConnectionSubTimes:]_block_invoke";
        v67 = 1024;
        v68 = 3772;
        v69 = 2112;
        *v70 = v60;
        *&v70[8] = 2112;
        *v71 = v61;
        v28 = " [%s] %s:%d Connection timing: incomplete timing for participantID=%@ received=%@";
        v29 = v59;
        v30 = 48;
        goto LABEL_9;
      }
    }
  }
}

- (void)updateVideoQualityWithPayload:(id)payload
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__VCAggregatorFaceTime_updateVideoQualityWithPayload___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = payload;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __54__VCAggregatorFaceTime_updateVideoQualityWithPayload___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"Width", "intValue"}];
  v3 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"Height", "intValue"}];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4[38];
  [v4 microFromPayload:v5];

  return [v6 setVideoResolutionWithTime:v2 width:v3 height:?];
}

- (void)updateVideoSwitchTimes:(id)times
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = times;
  dispatch_async(stateQueue, v4);
}

void __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1704);
  if (v5 != 0.0)
  {
    v6 = ((v3 - v5) * 1000.0);
    [*(v4 + 2064) addValue:v6];
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = "[VCAggregatorFaceTime updateVideoSwitchTimes:]_block_invoke";
          v13 = 1024;
          v14 = 3803;
          v15 = 1024;
          v16 = v6;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Video resolution switched after %d ms", &v9, 0x22u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __47__VCAggregatorFaceTime_updateVideoSwitchTimes___block_invoke_cold_1();
      }
    }
  }

  *(*(a1 + 32) + 1704) = v3;
}

- (void)updateSwitchConfiguration:(unsigned int)configuration payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VCAggregatorFaceTime_updateSwitchConfiguration_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = self;
  v5[5] = payload;
  dispatch_async(stateQueue, v5);
}

void *__58__VCAggregatorFaceTime_updateSwitchConfiguration_payload___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 188) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"NegSw", "intValue"}];
  *(*(a1 + 32) + 184) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RemSw", "intValue"}];
  *(*(a1 + 32) + 192) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"RemSwAvlbl", "BOOLValue"}];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(v4 + 188);
        v6 = *(v4 + 184);
        if (*(v4 + 192))
        {
          v7 = "NO";
        }

        else
        {
          v7 = "YES";
        }

        v15 = 136316418;
        v16 = v2;
        v17 = 2080;
        v18 = "[VCAggregatorFaceTime updateSwitchConfiguration:payload:]_block_invoke";
        v19 = 1024;
        v20 = 3814;
        v21 = 1024;
        v22 = v5;
        v23 = 1024;
        v24 = v6;
        v25 = 2080;
        v26 = v7;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Negotiated A/B test switch settings is %08X, Remote A/B test switch settings is %08X, Remote switches available? : %s", &v15, 0x32u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 188);
      v13 = *(v11 + 184);
      if (*(v11 + 192))
      {
        v14 = "NO";
      }

      else
      {
        v14 = "YES";
      }

      v15 = 136316418;
      v16 = v2;
      v17 = 2080;
      v18 = "[VCAggregatorFaceTime updateSwitchConfiguration:payload:]_block_invoke";
      v19 = 1024;
      v20 = 3814;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      v25 = 2080;
      v26 = v14;
      _os_log_debug_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: Negotiated A/B test switch settings is %08X, Remote A/B test switch settings is %08X, Remote switches available? : %s", &v15, 0x32u);
    }
  }

  v8 = *(a1 + 32);
  result = *(v8 + 1368);
  if (result)
  {
    [result setNegotiatedSwitches:*(v8 + 188)];
    result = [*(*(a1 + 32) + 1368) setRemoteFaceTimeSwitchesAvailable:*(*(a1 + 32) + 192)];
    v10 = *(a1 + 32);
    if (*(v10 + 192) == 1)
    {
      return [*(v10 + 1368) setRemoteSwitches:*(v10 + 184)];
    }
  }

  return result;
}

- (void)updateLinkProbingStats:(unsigned int)stats payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VCAggregatorFaceTime_updateLinkProbingStats_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  statsCopy = stats;
  block[4] = self;
  block[5] = payload;
  dispatch_async(stateQueue, block);
}

void *__55__VCAggregatorFaceTime_updateLinkProbingStats_payload___block_invoke(void *result)
{
  v1 = result;
  v2 = *(result + 12);
  if (v2 <= 1)
  {
    if (!v2)
    {
      *(*(result + 4) + 836) = [objc_msgSend(*(result + 5) objectForKeyedSubscript:{@"lnkPrbVers", "intValue"}];
      result = [objc_msgSend(v1[5] objectForKeyedSubscript:{@"remLnkPrbVers", "intValue"}];
      *(v1[4] + 210) = result;
      return result;
    }

    if (v2 != 1)
    {
      return result;
    }

    result = [objc_msgSend(*(result + 5) objectForKeyedSubscript:{@"WRMLocAlrtUpdate", "intValue"}];
    v3 = v1[4];
    if (result == 1)
    {
      ++v3[500];
      [*(v1[4] + 171) setLocalAlertStateSwitchCount:{objc_msgSend(*(v1[4] + 171), "localAlertStateSwitchCount") + 1}];
      *(v1[4] + 2024) = 1;
      result = [v1[4] microFromPayload:v1[5]];
      v5 = v1[4];
      v6 = 2008;
LABEL_17:
      *&v5[v6] = v4;
      return result;
    }

    v10 = 2024;
LABEL_20:
    *(v3 + v10) = 0;
    return result;
  }

  if (v2 == 2)
  {
    result = [objc_msgSend(*(result + 5) objectForKeyedSubscript:{@"WRMRemAlrtUpdate", "intValue"}];
    v3 = v1[4];
    if (result == 1)
    {
      ++v3[501];
      [*(v1[4] + 171) setRemoteAlertStateSwitchCount:{objc_msgSend(*(v1[4] + 171), "remoteAlertStateSwitchCount") + 1}];
      *(v1[4] + 2025) = 1;
      result = [v1[4] microFromPayload:v1[5]];
      v5 = v1[4];
      v6 = 2016;
      goto LABEL_17;
    }

    v10 = 2025;
    goto LABEL_20;
  }

  if (v2 == 3)
  {
    if ([*(result + 5) objectForKeyedSubscript:@"lnkPrbRTTMeanDelta"] && objc_msgSend(v1[5], "objectForKeyedSubscript:", @"lnkPrbPLRTierDelta"))
    {
      ++*(v1[4] + 211);
      [objc_msgSend(v1[5] objectForKeyedSubscript:{@"lnkPrbRTTMeanDelta", "doubleValue"}];
      *(v1[4] + 106) = v7 + *(v1[4] + 106);
      *(v1[4] + 856) += [objc_msgSend(v1[5] objectForKeyedSubscript:{@"lnkPrbPLRTierDelta", "unsignedIntValue"}];
    }

    v8 = v1[5];
    v9 = *(v1[4] + 171);

    return [v9 changeDuplicationWithType:3 payload:v8];
  }

  return result;
}

- (void)updateWRMMetrics:(unsigned int)metrics payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VCAggregatorFaceTime_updateWRMMetrics_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = self;
  v5[5] = payload;
  dispatch_async(stateQueue, v5);
}

id *__49__VCAggregatorFaceTime_updateWRMMetrics_payload___block_invoke(id *result)
{
  if ((*(result[4] + 168) & 1) == 0)
  {
    v1 = result;
    result = [objc_msgSend(result[5] objectForKeyedSubscript:{@"WRMAlertedMode", "BOOLValue"}];
    if ((result & 1) == 0)
    {
      v2 = [objc_msgSend(v1[5] objectForKeyedSubscript:{@"WRMCoexIsLocal", "BOOLValue"}];
      v3 = v1[5];
      if (v2)
      {
        if ([v3 objectForKeyedSubscript:@"WRMLinkType"])
        {
          [*(v1[4] + 171) setWrmLinkTypeSuggestion:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMLinkType"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMReasonCode"])
        {
          [*(v1[4] + 171) setWrmLinkTypeChangeReasonCode:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMReasonCode"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMwRSSI"])
        {
          [*(v1[4] + 171) setWrmLinkTypeWifiRSSI:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMwRSSI"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMwRSSIThreshold"])
        {
          [*(v1[4] + 171) setWrmLinkTypeWifiRSSIThreshold:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMwRSSIThreshold"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMwSNR"])
        {
          [*(v1[4] + 171) setWrmLinkTypeWifiSNR:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMwSNR"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMwCCA"])
        {
          [*(v1[4] + 171) setWrmLinkTypeWifiCCA:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMwCCA"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMwPacketLoss"])
        {
          [*(v1[4] + 171) setWrmLinkTypeWifiPacketLoss:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMwPacketLoss"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMcSigStrength"])
        {
          [*(v1[4] + 171) setWrmLinkTypeCellSignalStrength:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMcSigStrength"}];
        }

        if ([v1[5] objectForKeyedSubscript:@"WRMcSignalBar"])
        {
          [*(v1[4] + 171) setWrmLinkTypeCellSignalBar:{objc_msgSend(v1[5], "objectForKeyedSubscript:", @"WRMcSignalBar"}];
        }

        result = [v1[5] objectForKeyedSubscript:@"WRMcServingCellType"];
        if (result)
        {
          v4 = [v1[5] objectForKeyedSubscript:@"WRMcServingCellType"];
          v5 = *(v1[4] + 171);

          return [v5 setWrmLinkTypeCellServingCellType:v4];
        }
      }

      else
      {
        result = [v3 objectForKeyedSubscript:@"WRMwRSSIThreshold"];
        if (result)
        {
          v6 = [v1[5] objectForKeyedSubscript:@"WRMwRSSIThreshold"];
          v7 = *(v1[4] + 171);

          return [v7 setWrmLinkTypeWifiRemoteRSSIThreshold:v6];
        }
      }
    }
  }

  return result;
}

- (void)updateAlgoMetrics:(id)metrics type:(unsigned int)type
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VCAggregatorFaceTime_updateAlgoMetrics_type___block_invoke;
  block[3] = &unk_278BD48B8;
  block[4] = self;
  block[5] = metrics;
  typeCopy = type;
  dispatch_async(stateQueue, block);
}

id __47__VCAggregatorFaceTime_updateAlgoMetrics_type___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) microFromPayload:*(a1 + 40)];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!*(v5 + 304))
  {
    [*(v5 + 280) addParticipantWithTime:@"DefaultParticipantID" participantID:v3];
    result = [*(*(a1 + 32) + 280) algosScorerWithParticipantID:@"DefaultParticipantID"];
    *(*(a1 + 32) + 304) = result;
  }

  v6 = *(a1 + 48);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = *(*(a1 + 32) + 304);
        v8 = v4;
        v9 = 2;
LABEL_14:

        return [v7 stopWithTime:v9 streamType:v8];
      case 4:
        v10 = *(*(a1 + 32) + 304);
        v11 = v4;
        v12 = 1;
        break;
      case 5:
        v10 = *(*(a1 + 32) + 304);
        v11 = v4;
        v12 = 2;
        break;
      default:
        return result;
    }

    return [v10 endWithTime:v12 streamType:v11];
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return result;
        }

        v7 = *(*(a1 + 32) + 304);
        v8 = v4;
        v9 = 1;
        goto LABEL_14;
      }

      v13 = *(*(a1 + 32) + 304);
      v14 = v4;
      v15 = 2;
    }

    else
    {
      v13 = *(*(a1 + 32) + 304);
      v14 = v4;
      v15 = 1;
    }

    return [v13 startWithTime:v15 streamType:v14];
  }
}

- (void)updateNetworkStats:(unsigned int)stats payload:(id)payload
{
  stateQueue = self->super._stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__VCAggregatorFaceTime_updateNetworkStats_payload___block_invoke;
  v5[3] = &unk_278BD4D48;
  v5[4] = payload;
  v5[5] = self;
  dispatch_async(stateQueue, v5);
}

id __51__VCAggregatorFaceTime_updateNetworkStats_payload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"];
  if (result)
  {
    result = [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"];
    if (result)
    {
      result = [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"];
      if (result)
      {

        result = +[CallSegment newSegmentNameWithComponents:remoteInterface:connectionType:duplicationIndicator:](CallSegment, "newSegmentNameWithComponents:remoteInterface:connectionType:duplicationIndicator:", +[VCAggregator interfaceCategoryForType:](VCAggregator, "interfaceCategoryForType:", [*(a1 + 32) objectForKeyedSubscript:@"LocalInterfaceType"]), +[VCAggregator interfaceCategoryForType:](VCAggregator, "interfaceCategoryForType:", objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"RemoteInterfaceType")), +[VCAggregator connectionCategoryForType:](VCAggregator, "connectionCategoryForType:", objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"ConnectionType")), objc_msgSend(*(a1 + 40), "duplicationIndicator"));
        *(*(a1 + 40) + 1328) = result;
      }
    }
  }

  return result;
}

- (void)updateCoreMotionActivityWithPayload:(id)payload
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__VCAggregatorFaceTime_updateCoreMotionActivityWithPayload___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = payload;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

void *__60__VCAggregatorFaceTime_updateCoreMotionActivityWithPayload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKeyedSubscript:@"CMActivityValue"];
  if (result)
  {
    result = [*(a1 + 32) objectForKeyedSubscript:@"CMActivityConfidence"];
    if (result)
    {
      *(*(a1 + 40) + 2026) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"CMActivityValue", "intValue"}];
      *(*(a1 + 40) + 2027) = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"CMActivityConfidence", "intValue"}];
      v3 = *(a1 + 40);
      if (*(v3 + 168) == 1)
      {
        result = [*(v3 + 1368) duration];
        if (result > 0)
        {
          return result;
        }

        v3 = *(a1 + 40);
      }

      [*(v3 + 1368) setCoreMotionActivityValue:*(v3 + 2026)];
      v4 = *(a1 + 40);
      v5 = *(v4 + 2027);
      v6 = *(v4 + 1368);

      return [v6 setCoreMotionActivityConfidence:v5];
    }
  }

  return result;
}

- (void)updateVCRCProfileNumber:(unsigned int)number
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__VCAggregatorFaceTime_updateVCRCProfileNumber___block_invoke;
  v4[3] = &unk_278BD4D98;
  v4[4] = self;
  numberCopy = number;
  dispatch_async(stateQueue, v4);
}

- (void)updatePrimaryConnHealthAllowedDelay:(double)delay
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__VCAggregatorFaceTime_updatePrimaryConnHealthAllowedDelay___block_invoke;
  v4[3] = &unk_278BD4DC0;
  v4[4] = self;
  *&v4[5] = delay;
  dispatch_async(stateQueue, v4);
}

- (BOOL)isDuplicationChangedForEventType:(unsigned __int16)type
{
  isDuplicationEnabled = self->super._isDuplicationEnabled;
  if (isDuplicationEnabled == type)
  {
    self->super._isDuplicationEnabled = isDuplicationEnabled ^ 1;
    if ((isDuplicationEnabled & 1) == 0)
    {
      ++self->super._switchIntoDupCount;
    }
  }

  return isDuplicationEnabled == type;
}

- (void)updateCellTech:(id)tech
{
  if ([tech objectForKeyedSubscript:@"IPVER"])
  {
    -[CallSegment setIPVersion:](self->_currentSegment, "setIPVersion:", [tech objectForKeyedSubscript:@"IPVER"]);
  }

  if ([tech objectForKeyedSubscript:@"LCTCH"])
  {
    v5 = [tech objectForKeyedSubscript:@"LCTCH"];
    if ([(CallSegment *)self->_currentSegment localCelltech])
    {
      [(CallSegment *)self->_currentSegment setIsLocalCelltechDirty:[(CallSegment *)self->_currentSegment isLocalCelltechDirty]| [(NSNumber *)[(CallSegment *)self->_currentSegment localCelltech] isEqualToNumber:v5]^ 1];
    }

    [(CallSegment *)self->_currentSegment setLocalCelltech:v5];
  }

  if ([tech objectForKeyedSubscript:@"LXPNSV"])
  {
    -[CallSegment setIsLocalExpensive:](self->_currentSegment, "setIsLocalExpensive:", [tech objectForKeyedSubscript:@"LXPNSV"]);
  }

  if ([tech objectForKeyedSubscript:@"RCTCH"])
  {
    -[CallSegment setRemoteCelltech:](self->_currentSegment, "setRemoteCelltech:", [tech objectForKeyedSubscript:@"RCTCH"]);
  }

  if ([tech objectForKeyedSubscript:@"RXPNSV"])
  {
    v6 = [tech objectForKeyedSubscript:@"RXPNSV"];
    currentSegment = self->_currentSegment;

    [(CallSegment *)currentSegment setIsRemoteExpensive:v6];
  }
}

- (void)updateCurrentMediaBitratesWithPayload:(id)payload
{
  if ([payload objectForKeyedSubscript:@"BitRate"])
  {
    self->_currentAudioMediaBitrate = [objc_msgSend(payload objectForKeyedSubscript:{@"BitRate", "intValue"}];
  }

  if ([payload objectForKeyedSubscript:@"REDPayloadBitrate"])
  {
    self->_currentREDPayloadBitrate = [objc_msgSend(payload objectForKeyedSubscript:{@"REDPayloadBitrate", "unsignedLongValue"}];
  }
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:(unsigned int)elapsed
{
  v3 = *&elapsed;
  if (self->_currentAudioMediaBitrate)
  {
    [(VCHistogram *)[(CallSegment *)self->_currentSegment audioMediaBitrate] addOnlyExactMatchingValue:self->_currentAudioMediaBitrate increment:*&elapsed];
    if (![(VCHistogram *)self->super._audioMediaBitrate addOnlyExactMatchingValue:self->_currentAudioMediaBitrate increment:v3]&& VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorFaceTime updateMediaBitrateHistogramsWithTimeElapsed:];
      }
    }
  }

  if (self->_currentREDPayloadBitrate)
  {
    [(VCHistogram *)[(CallSegment *)self->_currentSegment redPayloadBitrate] addOnlyExactMatchingValue:self->_currentREDPayloadBitrate increment:v3];
    if (![(VCHistogram *)self->super._redPayloadBitrate addOnlyExactMatchingValue:self->_currentREDPayloadBitrate increment:v3]&& VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAggregatorFaceTime updateMediaBitrateHistogramsWithTimeElapsed:];
      }
    }
  }
}

- (void)updateBitrateCap:(id)cap
{
  if ([cap objectForKeyedSubscript:@"localBitrateCap"] && objc_msgSend(cap, "objectForKeyedSubscript:", @"remoteBitrateCap"))
  {
    stateQueue = self->super._stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke;
    block[3] = &unk_278BD4D48;
    block[4] = cap;
    block[5] = self;
    dispatch_async(stateQueue, block);
  }

  if ([cap objectForKeyedSubscript:@"maxTargetBitrate"])
  {
    v6 = self->super._stateQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke_2;
    v7[3] = &unk_278BD4D48;
    v7[4] = self;
    v7[5] = cap;
    dispatch_async(v6, v7);
  }
}

uint64_t __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"localBitrateCap", "intValue"}];
  v3 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"remoteBitrateCap", "intValue"}];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v5 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v4];
  [*(*(a1 + 40) + 1368) setMaxNegotiatedDownlinkBitrate:v5];
  v6 = *(*(a1 + 40) + 1368);

  return [v6 setMaxNegotiatedUplinkBitrate:v5];
}

uint64_t __41__VCAggregatorFaceTime_updateBitrateCap___block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"maxTargetBitrate", "intValue"}];
  v3 = *(*(a1 + 32) + 304);

  return [v3 setMaxTargetBitrate:v2];
}

- (void)updateVPCStatus:(id)status
{
  if ([status objectForKeyedSubscript:@"VPCENABLED"])
  {
    self->super._isVPCEnabled = [objc_msgSend(status objectForKeyedSubscript:{@"VPCENABLED", "intValue"}];
  }
}

- (void)updateLinkSuggestionTelemetry:(id)telemetry
{
  if ([telemetry objectForKeyedSubscript:@"LnkSug"] && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"LnkScr") && objc_msgSend(telemetry, "objectForKeyedSubscript:", @"LnkDec"))
  {
    v5 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkSug", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkPreferSuggestion:v5];
    self->super._linkPreferSuggestion = v5;
    v6 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkScr", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkConfidenceScore:v6];
    self->super._linkConfidenceScore = v6;
    v7 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkDec", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkPreferDecision:v7];
    self->super._linkPreferDecision = v7;
  }

  if ([telemetry objectForKeyedSubscript:@"LnkIp"])
  {
    v8 = [objc_msgSend(telemetry objectForKeyedSubscript:{@"LnkIp", "intValue"}];
    [(CallSegment *)self->_currentSegment setLinkIPPreference:v8];
    self->super._linkIPPreference = v8;
  }
}

- (void)processBackgroundReplacementStatus:(id)status
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:self->super._backgroundReplacementDuration payload:status];
  backgroundReplacementDuration = [(CallSegment *)self->_currentSegment backgroundReplacementDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMBGRA" durationHistogram:backgroundReplacementDuration payload:status];
}

- (void)processStudioLightFeatureStatus:(id)status
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMSLA" durationHistogram:self->super._studioLightDuration payload:status];
  studioLightDuration = [(CallSegment *)self->_currentSegment studioLightDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMSLA" durationHistogram:studioLightDuration payload:status];
}

- (void)processCenterStageFeatureStatus:(id)status
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMCSA" durationHistogram:self->super._centerStageDuration payload:status];
  centerStageDuration = [(CallSegment *)self->_currentSegment centerStageDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMCSA" durationHistogram:centerStageDuration payload:status];
}

- (void)processPortraitModeFeatureStatus:(id)status
{
  [(VCAggregator *)self processVideoFeatureStatus:@"CAMPMA" durationHistogram:self->super._portraitModeDuration payload:status];
  portraitModeDuration = [(CallSegment *)self->_currentSegment portraitModeDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"CAMPMA" durationHistogram:portraitModeDuration payload:status];
}

- (void)processReactionFeatureStatus:(id)status
{
  [(VCAggregator *)self processVideoFeatureStatus:@"REACDUR" durationHistogram:self->super._reactionActiveDuration payload:status];
  reactionActiveDuration = [(CallSegment *)self->_currentSegment reactionActiveDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"REACDUR" durationHistogram:reactionActiveDuration payload:status];
}

- (void)processEyeContactFeatureStatus:(id)status
{
  [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" durationHistogram:self->super._eyeContactDuration payload:status];
  eyeContactDuration = [(CallSegment *)self->_currentSegment eyeContactDuration];

  [(VCAggregator *)self processVideoFeatureStatus:@"VideoEyeContact" durationHistogram:eyeContactDuration payload:status];
}

- (void)updateCenterStageEnabled:(unsigned __int16)enabled
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__VCAggregatorFaceTime_updateCenterStageEnabled___block_invoke;
  v4[3] = &unk_278BD4DE8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(stateQueue, v4);
}

uint64_t __49__VCAggregatorFaceTime_updateCenterStageEnabled___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 2144) = *(a1 + 40) != 0;
  [*(*(a1 + 32) + 1368) setIsCenterStageEnabled:?];
  v2 = *(a1 + 32);
  v4 = @"CAMCSA";
  v5[0] = [MEMORY[0x277CCABA8] numberWithBool:v2[2144]];
  return [v2 updateVideoFeatureStatus:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
}

- (void)updatePortraitBlurEnabled:(unsigned __int16)enabled
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__VCAggregatorFaceTime_updatePortraitBlurEnabled___block_invoke;
  v4[3] = &unk_278BD4DE8;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(stateQueue, v4);
}

uint64_t __50__VCAggregatorFaceTime_updatePortraitBlurEnabled___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 2145) = *(a1 + 40) != 0;
  [*(*(a1 + 32) + 1368) setIsPortraitBlurEnabled:?];
  v2 = *(a1 + 32);
  v4 = @"CAMPMA";
  v5[0] = [MEMORY[0x277CCABA8] numberWithBool:v2[2145]];
  return [v2 updateVideoFeatureStatus:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v5, &v4, 1)}];
}

- (void)processControlChannelEventType:(unsigned __int16)type payload:(id)payload
{
  v15 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {

    [(VCAggregatorFaceTime *)self markHandshakeCompletion:payload];
  }

  else
  {
    typeCopy = type;
    if (type)
    {
      if (VRTraceGetErrorLogLevelForModule("") >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR(5u);
        v6 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v5;
          v9 = 2080;
          v10 = "[VCAggregatorFaceTime processControlChannelEventType:payload:]";
          v11 = 1024;
          v12 = 4193;
          v13 = 1024;
          v14 = typeCopy;
          _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown control channel event type=%d. Ignoring ...", &v7, 0x22u);
        }
      }
    }

    else
    {

      [(VCAggregatorFaceTime *)self markHandshakeStart:payload];
    }
  }
}

- (void)processConnectionEstablishment:(id)establishment
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = self;
  v4[5] = establishment;
  dispatch_sync(stateQueue, v4);
}

void *__55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 160 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"ConnectionType"}];
  v3 = v2 | [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 144 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"LocalInterfaceType"}];
  v4 = v3 | [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 152 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"RemoteInterfaceType"}];
  if ([*(a1 + 40) objectForKeyedSubscript:@"EndToEnd"])
  {
    v5 = v4 | [*(a1 + 32) didUpdateStringFrom:*(a1 + 32) + 1344 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"EndToEnd"}];
    result = [*(a1 + 32) updateVPCStatus:*(a1 + 40)];
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = [*(a1 + 32) updateVPCStatus:*(a1 + 40)];
    if (!v4)
    {
      return result;
    }
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR(8u);
    v8 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCAggregatorFaceTime processConnectionEstablishment:]_block_invoke";
        v13 = 1024;
        v14 = 4211;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: New segment started", &v9, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke_cold_1(v7);
    }
  }

  [*(a1 + 32) updateRelayInfo:*(a1 + 40)];
  [*(a1 + 32) startNewSegment:*(a1 + 40)];
  [*(*(a1 + 32) + 1368) setSuggestedLinkTypeCombo:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"SLTS"}];
  [*(a1 + 32) updateCellTech:*(a1 + 40)];
  [*(*(a1 + 32) + 1368) setPrimaryConnHealthAllowedDelay:*(*(a1 + 32) + 1984)];
  if ([*(a1 + 40) objectForKeyedSubscript:@"QuicPod"])
  {
    [*(*(a1 + 32) + 1368) setIsQUICPod:{objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"QuicPod", "integerValue") != 0}];
  }

  result = [*(a1 + 40) objectForKeyedSubscript:@"ConnProtocolType"];
  if (result)
  {
    return [*(*(a1 + 32) + 1368) setConnectionProtocolType:{objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"ConnProtocolType", "unsignedIntValue")}];
  }

  return result;
}

- (void)processEventTriggerForNewSegment:(id)segment
{
  if ([segment objectForKeyedSubscript:@"RelayedCT"])
  {
    stateQueue = self->super._stateQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__VCAggregatorFaceTime_processEventTriggerForNewSegment___block_invoke;
    v6[3] = &unk_278BD4D48;
    v6[4] = self;
    v6[5] = segment;
    dispatch_sync(stateQueue, v6);
  }
}

void *__57__VCAggregatorFaceTime_processEventTriggerForNewSegment___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[283])
  {
    v2[283] = @"nil";
    v2 = *(a1 + 32);
  }

  v3 = [v2 didUpdateStringFrom:v2 + 283 toString:{objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"RelayedCT"}];
  result = [*(*(a1 + 32) + 1368) updateRelayedCallTypeForSegment:*(*(a1 + 32) + 2264)];
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 startNewSegment:v6];
  }

  return result;
}

- (void)processDuplication:(id)duplication type:(unsigned __int16)type
{
  stateQueue = self->super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VCAggregatorFaceTime_processDuplication_type___block_invoke;
  block[3] = &unk_278BD4E10;
  typeCopy = type;
  block[4] = self;
  block[5] = duplication;
  dispatch_sync(stateQueue, block);
}

void *__48__VCAggregatorFaceTime_processDuplication_type___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  if ([*(a1 + 32) isDuplicationChangedForEventType:*(a1 + 48)])
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR(8u);
      v4 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          if (*(*v2 + 168))
          {
            v5 = "started";
          }

          else
          {
            v5 = "stopped";
          }

          v16 = 136315906;
          v17 = v3;
          v18 = 2080;
          v19 = "[VCAggregatorFaceTime processDuplication:type:]_block_invoke";
          v20 = 1024;
          v21 = 4246;
          v22 = 2080;
          v23 = v5;
          _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAggregator: Duplication changed to %s", &v16, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        __48__VCAggregatorFaceTime_processDuplication_type___block_invoke_cold_1();
      }
    }

    *(*(a1 + 32) + 1860) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"DuplicationType", "intValue"}];
    v6 = *(a1 + 32);
    if (*(v6 + 168) == 1)
    {
      v7 = *(v6 + 2072);
      if (*(v6 + 1860) == 3)
      {
        ++v7;
      }

      *(v6 + 2072) = v7;
      v8 = *(a1 + 32);
      if (*(v8 + 1860) == 4)
      {
        v9 = *(v8 + 2080) + 1;
      }

      else
      {
        v9 = *(v8 + 2080);
      }

      *(v8 + 2080) = v9;
      [*(a1 + 32) microFromPayload:*(a1 + 40)];
      *(*(a1 + 32) + 1920) = v10;
    }

    else
    {
      [v6 microFromPayload:*(a1 + 40)];
      v11 = *(a1 + 32);
      v12 = *(v11 + 1920);
      v14 = v13 - v12;
      LODWORD(v12) = *(v11 + 1880);
      *(v11 + 1880) = (v14 + *&v12);
    }

    [*(a1 + 32) startNewSegment:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 1368) changeDuplicationWithType:*(a1 + 48) payload:*(a1 + 40)];
  result = [*(*(a1 + 32) + 1368) setPrimaryConnHealthAllowedDelay:*(*(a1 + 32) + 1984)];
  if (!*(a1 + 48))
  {
    [*(a1 + 32) updateCellTech:*(a1 + 40)];
    [*(a1 + 32) updateQRExperiments:*(a1 + 40)];
    return [*(a1 + 32) updateProtocolStackDescription:*(a1 + 40)];
  }

  return result;
}

- (void)updateActiveConnectionRegistry:(id)registry type:(unsigned __int16)type
{
  if (self->_currentSegment)
  {
    v5 = [registry objectForKeyedSubscript:{@"ACAS", type}];
    currentSegment = self->_currentSegment;

    [(CallSegment *)currentSegment setActiveConnectionRegistry:v5];
  }
}

- (void)updateQRExperiments:(id)experiments
{
  if ([experiments count])
  {
    if (self->_currentSegment)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(VCAggregator *)self filterDictionaryUsingQRServerPrefix:experiments addTo:v5];
      [(CallSegment *)self->_currentSegment setQrExperiments:v5];
      [(VCAggregator *)self setQrExperiments:v5];
    }

    else
    {
      [VCAggregatorFaceTime updateQRExperiments:];
    }
  }

  else
  {
    [VCAggregatorFaceTime updateQRExperiments:?];
  }
}

- (void)processRtcpPSFBForResiliencyConfigData:(id)data
{
  stateQueue = self->super._stateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__VCAggregatorFaceTime_processRtcpPSFBForResiliencyConfigData___block_invoke;
  v4[3] = &unk_278BD4D48;
  v4[4] = data;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

uint64_t __63__VCAggregatorFaceTime_processRtcpPSFBForResiliencyConfigData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"RtcpForLoss"];
  if (v2)
  {
    *(*(a1 + 40) + 472) = [v2 integerValue] != 0;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"RtcpForLtrAck"];
  if (v3)
  {
    *(*(a1 + 40) + 473) = [v3 integerValue] != 0;
  }

  [*(*(a1 + 40) + 1368) setRtcpPSFBForLossFeedbackEnabled:*(*(a1 + 40) + 472)];
  v4 = *(a1 + 40);
  v5 = *(v4 + 473);
  v6 = *(v4 + 1368);

  return [v6 setRtcpPSFBForLtrAckEnabled:v5];
}

- (void)updateThermalMetricsFromPayload:(id)payload
{
  dispatch_assert_queue_V2(self->super._stateQueue);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __56__VCAggregatorFaceTime_updateThermalMetricsFromPayload___block_invoke;
  v9 = &unk_278BD4E38;
  selfCopy = self;
  v5 = [payload objectForKeyedSubscript:@"Thermal"];
  if (v5)
  {
    v8(v7, v5);
  }

  v6.receiver = self;
  v6.super_class = VCAggregatorFaceTime;
  [(VCAggregator *)&v6 updateThermalMetricsFromPayload:payload];
}

uint64_t __56__VCAggregatorFaceTime_updateThermalMetricsFromPayload___block_invoke(uint64_t a1, void *a2)
{
  result = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  *(*(a1 + 32) + 104) = result;
  return result;
}

- (void)updateRateControlExperiment:(id)experiment type:(unsigned __int16)type
{
  typeCopy = type;
  if ([experiment objectForKeyedSubscript:@"RCEV"])
  {
    v7 = [experiment objectForKeyedSubscript:@"RCEG"];
    if (!typeCopy)
    {
      if (v7)
      {
        self->super._reportRateControlExperiment = 1;
        self->super._rateControlExperimentVersion = [objc_msgSend(experiment objectForKeyedSubscript:{@"RCEV", "unsignedIntValue"}];
        self->super._rateControlExperimentGroupIndex = [objc_msgSend(experiment objectForKeyedSubscript:{@"RCEG", "unsignedIntValue"}];
      }
    }
  }
}

- (void)updateRateControlSmartBrakeTrialVersion:(id)version type:(unsigned __int16)type
{
  if (version)
  {
    typeCopy = type;
    v7 = [version objectForKeyedSubscript:@"SBVERS"];
    if (!typeCopy)
    {
      if (v7)
      {
        self->super._rateControlSmartBrakeTrialVersion = [objc_msgSend(version objectForKeyedSubscript:{@"SBVERS", "unsignedIntValue"}];
        v8 = [objc_msgSend(version objectForKeyedSubscript:{@"SBVERS", "unsignedIntValue"}];
        currentSegment = self->_currentSegment;

        [(CallSegment *)currentSegment setRateControlSmartBrakeTrialVersion:v8];
      }
    }
  }
}

- (void)updateProtocolStackDescription:(id)description
{
  if (description)
  {
    if ([description objectForKeyedSubscript:@"Rpsd"])
    {
      -[CallSegment setRelayProtocolStack:](self->_currentSegment, "setRelayProtocolStack:", [description objectForKeyedSubscript:@"Rpsd"]);
    }

    if ([description objectForKeyedSubscript:@"Cpsd"])
    {
      v5 = [description objectForKeyedSubscript:@"Cpsd"];
      currentSegment = self->_currentSegment;

      [(CallSegment *)currentSegment setChannelProtocolStack:v5];
    }
  }

  else
  {
    [VCAggregatorFaceTime updateProtocolStackDescription:];
  }
}

- (void)updateThermalDataCollectorsStateWithPayload:(id)payload withTime:(double)time
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v8 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v21 + 1) + 8 * i) updateStateWithPayload:payload withTime:time];
      }

      v9 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  thermalDataCollectors = [(CallSegment *)self->_currentSegment thermalDataCollectors];
  v13 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v17 + 1) + 8 * j) updateStateWithPayload:payload withTime:time];
      }

      v14 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)processThermalLevelChange:(id)change withTime:(double)time
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __59__VCAggregatorFaceTime_processThermalLevelChange_withTime___block_invoke;
  v7 = &unk_278BD4E60;
  timeCopy = time;
  selfCopy = self;
  changeCopy = change;
  v4 = [change objectForKeyedSubscript:@"Thermal"];
  if (v4)
  {
    v6(v5, v4);
  }
}

uint64_t __59__VCAggregatorFaceTime_processThermalLevelChange_withTime___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCReportingCommon, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(*(a1 + 32) + 2272);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v19 + 1) + 8 * i) updateThermalLevel:v3 withTime:*(a1 + 48)];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [*(*(a1 + 32) + 1368) thermalDataCollectors];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * j) updateThermalLevel:v3 withTime:*(a1 + 48)];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  return [*(a1 + 32) updateVideoFeatureStatus:*(a1 + 40)];
}

- (void)updateSpatialAudioSupport:(id)support
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v5 = __50__VCAggregatorFaceTime_updateSpatialAudioSupport___block_invoke;
  v6 = &unk_278BD4E38;
  selfCopy = self;
  v3 = [support objectForKeyedSubscript:@"SpatialAudioSupported"];
  if (v3)
  {
    v5(v4, v3);
  }
}

void *__50__VCAggregatorFaceTime_updateSpatialAudioSupport___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!*(v5 + 835))
  {
    *(v5 + 835) = v3;
    v5 = *(a1 + 32);
  }

  result = [*(v5 + 1368) spatialAudioSupported];
  if (!result)
  {
    v7 = *(*(a1 + 32) + 1368);

    return [v7 setSpatialAudioSupported:v4];
  }

  return result;
}

- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  typeCopy = type;
  categoryCopy = category;
  [(VCAggregator *)self microFromPayload:payload];
  v10 = v9;
  if (categoryCopy > 81)
  {
    if (categoryCopy <= 194)
    {
      if (categoryCopy <= 149)
      {
        if (categoryCopy <= 92)
        {
          if (categoryCopy == 82)
          {
            [(VCAggregatorFaceTime *)self updateNoRemoteState:payload state:typeCopy == 1];
          }

          else if (categoryCopy == 90)
          {
            [(VCAggregatorFaceTime *)self updateNetworkStats:typeCopy payload:payload];
          }
        }

        else
        {
          switch(categoryCopy)
          {
            case ']':
              [(VCAggregatorFaceTime *)self updateWRMMetrics:typeCopy payload:payload];
              break;
            case '^':
              [(VCAggregatorFaceTime *)self updateAlgoMetrics:payload type:typeCopy];
              break;
              [(VCAggregatorFaceTime *)self updateLinkProbingStats:typeCopy payload:payload];
              break;
          }
        }

        goto LABEL_90;
      }

      if (categoryCopy <= 157)
      {
        if (categoryCopy == 150)
        {
          [(VCAggregatorFaceTime *)self processRTXConfigData:payload];
        }

        else if (categoryCopy == 155)
        {
          [(VCAggregatorFaceTime *)self processRtcpPSFBForResiliencyConfigData:payload];
        }

        goto LABEL_90;
      }

      if (categoryCopy == 158)
      {
LABEL_32:
        if (typeCopy == 5 && payload)
        {
          [(VCAggregatorFaceTime *)self updatePauseVideo:payload];
        }

        goto LABEL_90;
      }

      if (categoryCopy != 161)
      {
        if (categoryCopy == 180)
        {
          [(VCAggregatorDelegate *)self->super._delegate sendMessageWithCategory:33 type:0 payload:[(VCAggregatorFaceTime *)self updatePayloadWithSingleParticipantData:payload]];
        }

        goto LABEL_90;
      }

      stateQueue = self->super._stateQueue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke;
      v27[3] = &unk_278BD4D48;
      v27[4] = payload;
      v27[5] = self;
      v12 = v27;
LABEL_89:
      dispatch_async(stateQueue, v12);
      goto LABEL_90;
    }

    if (categoryCopy <= 359)
    {
      if (categoryCopy <= 199)
      {
        if (categoryCopy != 195)
        {
          if (categoryCopy != 199)
          {
            goto LABEL_90;
          }

          if (typeCopy == 1)
          {
            self->_didSwitchFromGFT = 1;
            if (!payload || ![payload objectForKeyedSubscript:@"VCGFTSWTT"])
            {
              goto LABEL_90;
            }

            [objc_msgSend(payload objectForKeyedSubscript:{@"VCGFTSWTT", "doubleValue"}];
            v14 = 1904;
          }

          else
          {
            if (typeCopy)
            {
              goto LABEL_90;
            }

            self->_didSwitchFromOneToOne = 1;
            if (!payload || ![payload objectForKeyedSubscript:@"VCSOTOST"])
            {
              goto LABEL_90;
            }

            [objc_msgSend(payload objectForKeyedSubscript:{@"VCSOTOST", "doubleValue"}];
            v14 = 1888;
          }

          *(&self->super.super.super.isa + v14) = v13;
          goto LABEL_90;
        }

        if (typeCopy == 1)
        {
          if (![payload objectForKeyedSubscript:@"VCSErrorDetected"])
          {
            goto LABEL_90;
          }

          v15 = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSErrorDetected", "intValue"}];
          v16 = 1912;
        }

        else
        {
          if (typeCopy || ![payload objectForKeyedSubscript:@"VCSErrorDetected"])
          {
            goto LABEL_90;
          }

          v15 = [objc_msgSend(payload objectForKeyedSubscript:{@"VCSErrorDetected", "intValue"}];
          v16 = 1896;
        }

        *(&self->super.super.super.isa + v16) = v15;
        goto LABEL_90;
      }

      switch(categoryCopy)
      {
        case 0xC8:
          self->_isExpanseEnabled |= [objc_msgSend(payload objectForKeyedSubscript:{@"VCSPExpanseEnabled", "BOOLValue"}];
LABEL_84:
          [(VCAggregatorFaceTime *)self processControlChannelEventType:typeCopy payload:payload];
          break;
        case 0xF1:
          [(VCAggregator *)self processIDSReportingBlob:payload];
          break;
        case 0x140:
          [(CallSegment *)self->_currentSegment processSmartBrakeEvent:payload];
          break;
      }

      goto LABEL_90;
    }

    if (categoryCopy <= 362)
    {
      if (categoryCopy != 360)
      {
        if (categoryCopy == 362 && typeCopy != 1)
        {
          [(VCAggregatorFaceTime *)self processThermalLevelChange:payload withTime:v9];
        }

        goto LABEL_90;
      }
    }

    else if (categoryCopy != 363)
    {
      if (categoryCopy == 369)
      {
        stateQueue = self->super._stateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_7;
        block[3] = &unk_278BD4C38;
        block[4] = self;
        v12 = block;
      }

      else
      {
        if (categoryCopy != 370)
        {
          goto LABEL_90;
        }

        stateQueue = self->super._stateQueue;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_8;
        v18[3] = &unk_278BD4C38;
        v18[4] = self;
        v12 = v18;
      }

      goto LABEL_89;
    }

    [(VCAggregatorFaceTime *)self updateThermalDataCollectorsStateWithPayload:payload withTime:v9];
    goto LABEL_90;
  }

  if (categoryCopy > 28)
  {
    switch(categoryCopy)
    {
      case 29:
        if (!typeCopy)
        {
          goto LABEL_90;
        }

        stateQueue = self->super._stateQueue;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_4;
        v23[3] = &unk_278BD4E88;
        v24 = typeCopy;
        v23[4] = self;
        v23[5] = payload;
        *&v23[6] = v9;
        v12 = v23;
        break;
      case 30:
        if (!typeCopy)
        {
          [(VCAggregatorFaceTime *)self updateVideoResolution:payload];
        }

        goto LABEL_90;
      case 31:
        if (typeCopy == 1)
        {
          [(VCAggregatorFaceTime *)self updateVideoQualityWithPayload:payload];
          [(VCAggregatorFaceTime *)self updateVideoSwitchTimes:payload];
        }

        goto LABEL_90;
      case 33:
        [(VCAggregatorFaceTime *)self updateRTStats:payload];
        goto LABEL_90;
      case 34:
        [(VCAggregatorFaceTime *)self updateConnectionSubTimes:payload];
        [(VCAggregatorFaceTime *)self updateTotalConnectionTime:payload];
        goto LABEL_90;
      case 35:
        stateQueue = self->super._stateQueue;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_3;
        v25[3] = &unk_278BD4D48;
        v25[4] = self;
        v25[5] = payload;
        v12 = v25;
        goto LABEL_89;
      case 39:
        if (typeCopy == 1 && payload)
        {
          [(VCAggregatorFaceTime *)self updateErrorCode:payload];
        }

        goto LABEL_90;
      case 45:
        [(VCAggregatorFaceTime *)self updateCoreMotionActivityWithPayload:payload];
        goto LABEL_90;
      case 46:
        [(VCAggregatorFaceTime *)self updateCenterStageEnabled:typeCopy];
        goto LABEL_90;
      case 47:
        [(VCAggregatorFaceTime *)self updatePortraitBlurEnabled:typeCopy];
        goto LABEL_90;
      case 48:
        [(VCAggregator *)self updateVideoFeatureStatus:payload];
        goto LABEL_90;
      case 51:
        if (!typeCopy)
        {
          [(VCAggregatorFaceTime *)self processConnectionEstablishment:payload];
          [(VCAggregatorFaceTime *)self updateQRExperiments:payload];
          [(VCAggregatorFaceTime *)self updateProtocolStackDescription:payload];
        }

        goto LABEL_90;
      case 54:
        [(VCAggregatorFaceTime *)self updateBitrateCap:payload];
        goto LABEL_90;
      case 55:
        [(VCAggregatorFaceTime *)self processDuplication:payload type:typeCopy];
        goto LABEL_90;
      case 56:
        stateQueue = self->super._stateQueue;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_2;
        v26[3] = &unk_278BD4D48;
        v26[4] = self;
        v26[5] = payload;
        v12 = v26;
        goto LABEL_89;
      case 57:
        stateQueue = self->super._stateQueue;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_5;
        v22[3] = &unk_278BD4D48;
        v22[4] = self;
        v22[5] = payload;
        v12 = v22;
        goto LABEL_89;
      case 58:
        stateQueue = self->super._stateQueue;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_6;
        v20[3] = &unk_278BD4E10;
        v20[4] = self;
        v20[5] = payload;
        v21 = typeCopy;
        v12 = v20;
        goto LABEL_89;
      case 59:
        [(VCAggregatorFaceTime *)self processEventTriggerForNewSegment:payload];
        goto LABEL_90;
      case 60:
        [(VCAggregatorFaceTime *)self processWindowMode:payload responseCode:typeCopy];
        goto LABEL_90;
      case 62:
        goto LABEL_84;
      default:
        goto LABEL_90;
    }

    goto LABEL_89;
  }

  switch(categoryCopy)
  {
    case 1:
      [(VCAggregatorFaceTime *)self updateSwitchConfiguration:typeCopy payload:payload];
      -[VCAggregatorFaceTime updateVCRCProfileNumber:](self, "updateVCRCProfileNumber:", [objc_msgSend(payload objectForKeyedSubscript:{@"vcrcProfNum", "unsignedIntValue"}]);
      [objc_msgSend(payload objectForKeyedSubscript:{@"PCHADel", "doubleValue"}];
      [(VCAggregatorFaceTime *)self updatePrimaryConnHealthAllowedDelay:?];
      break;
    case 6:
      [(VCAggregatorFaceTime *)self updateConnectionTelemetry:payload];
      [(VCAggregatorFaceTime *)self updateBitrateCap:payload];
      [(VCAggregatorFaceTime *)self updateThermalDataCollectorsStateWithPayload:payload withTime:v10];
      [(VCAggregatorFaceTime *)self updateSpatialAudioSupport:payload];
      break;
    case 8:
      goto LABEL_32;
  }

LABEL_90:
  v17.receiver = self;
  v17.super_class = VCAggregatorFaceTime;
  [(VCAggregator *)&v17 processEventWithCategory:categoryCopy type:typeCopy payload:payload];
}

void *__62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKeyedSubscript:@"VCSPUUID"];
  if (result)
  {
    result = *(a1 + 40);
    if (!result[38])
    {
      v3 = result[35];
      [result microFromPayload:*(a1 + 32)];
      [v3 addParticipantWithTime:@"DefaultParticipantID" participantID:?];
      result = [*(*(a1 + 40) + 280) algosScorerWithParticipantID:@"DefaultParticipantID"];
      *(*(a1 + 40) + 304) = result;
    }
  }

  return result;
}

uint64_t __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) dispatchedUpdateRoleModeTransport:*(a1 + 56) deviceRole:objc_msgSend(objc_msgSend(*(a1 + 40) transportType:"objectForKeyedSubscript:" isInitiator:@"DeviceRole" isWalkieTalkieMode:{"intValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"TransportType", "intValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"INTTR", "BOOLValue"), objc_msgSend(objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"IsWalkieTalkieMode", "BOOLValue")}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 updateThermalDataCollectorsStateWithPayload:v3 withTime:v4];
}

uint64_t __62__VCAggregatorFaceTime_processEventWithCategory_type_payload___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) updateRateControlExperiment:*(a1 + 40) type:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 updateRateControlSmartBrakeTrialVersion:v3 type:v4];
}

- (void)processWindowMode:(id)mode responseCode:(int)code
{
  [(VCAggregator *)self microFromPayload:?];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __55__VCAggregatorFaceTime_processWindowMode_responseCode___block_invoke;
  v11 = &unk_278BD4EB0;
  codeCopy = code;
  selfCopy = self;
  v13 = v7;
  v8 = [mode objectForKeyedSubscript:@"State"];
  if (v8)
  {
    v10(v9, v8);
  }
}

_DWORD *__55__VCAggregatorFaceTime_processWindowMode_responseCode___block_invoke(_DWORD *result, void *a2)
{
  if (!result[12])
  {
    v2 = result;
    v3 = [a2 isEqualToString:@"ForegroundPIP"];
    v4 = [*(*(v2 + 4) + 1368) pipThermalDurations];
    if (v3)
    {
      [v4 resumeAtBucket:*(*(v2 + 4) + 104) currentTime:*(v2 + 5)];
      v5 = *(v2 + 4);
      v6 = *(v5 + 1992);
      v7 = *(v5 + 104);
      v8 = *(v2 + 5);

      return [v6 resumeAtBucket:v7 currentTime:v8];
    }

    else
    {
      [v4 pause:*(v2 + 5)];
      v9 = *(*(v2 + 4) + 1992);
      v10 = *(v2 + 5);

      return [v9 pause:v10];
    }
  }

  return result;
}

- (void)updateAudioTxStatsWithPayload:(id)payload
{
  v6 = micro(self, a2);
  lastAudioTierStatsUpdate = self->_lastAudioTierStatsUpdate;
  if (lastAudioTierStatsUpdate != 0.0)
  {
    LODWORD(v3) = vcvtad_u64_f64(v6 - lastAudioTierStatsUpdate);
    if (self->_currentAudioCodecPayload)
    {
      [objc_msgSend(OUTLINED_FUNCTION_12_0() "audioCodecPayload")];
      if (![(VCHistogram *)self->super._audioCodecPayload addOnlyExactMatchingValue:self->_currentAudioCodecPayload increment:v3]&& VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v16) = 136315906;
          *(&v16 + 4) = v8;
          WORD6(v16) = 2080;
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_6_3();
          OUTLINED_FUNCTION_10_0();
          _os_log_error_impl(v11, v12, v13, v14, v15, 0x22u);
        }
      }
    }

    [(VCAggregatorFaceTime *)self updateMediaBitrateHistogramsWithTimeElapsed:v3, v16];
    v9 = [payload objectForKeyedSubscript:@"Bundle"];
    if (v9)
    {
      unsignedLongValue = [v9 unsignedLongValue];
      [objc_msgSend(OUTLINED_FUNCTION_12_0() "audioFrameBundling")];
      [(VCHistogram *)self->super._audioFrameBundling addValue:unsignedLongValue];
    }
  }

  if ([payload objectForKeyedSubscript:@"Payload"])
  {
    self->_currentAudioCodecPayload = [objc_msgSend(payload objectForKeyedSubscript:{@"Payload", "intValue"}];
  }

  [(VCAggregatorFaceTime *)self updateCurrentMediaBitratesWithPayload:payload];
  if ([payload objectForKeyedSubscript:@"RedPayloads"])
  {
    [objc_msgSend(OUTLINED_FUNCTION_12_0() "REDNumPayloadsUsed")];
  }

  if ([payload objectForKeyedSubscript:@"RedMaxDelay"])
  {
    [objc_msgSend(OUTLINED_FUNCTION_12_0() "REDMaxDelay")];
  }

  self->_lastAudioTierStatsUpdate = v6;
}

+ (void)newThermalDataCollectors
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_10_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a3 = 0;
  OUTLINED_FUNCTION_8_2();
}

- (void)flushCurrentSegment:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  [*a2 UTF8String];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_2(&dword_23D4DF000, v2, v3, " [%s] %s:%d VCAggregator: Segment %s flushed", v4, v5, v6, v7);
}

- (void)reset:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  [*a2 UTF8String];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_2(&dword_23D4DF000, v2, v3, " [%s] %s:%d VCAggregator: New key generated %s", v4, v5, v6, v7);
}

- (void)populateSegmentBytes:toPayload:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void __38__VCAggregatorFaceTime_updateRTStats___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  [*(*a2 + 1320) UTF8String];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_7_2(&dword_23D4DF000, v2, v3, " [%s] %s:%d VCAggregator: Ignoring first event(s) for segment %s", v4, v5, v6, v7);
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:.cold.1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v0, v1, " [%s] %s:%d Bin not found for _currentAudioMediaBitrate=%u", v2, v3, v4, v5);
}

- (void)updateMediaBitrateHistogramsWithTimeElapsed:.cold.2()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v0, v1, " [%s] %s:%d Bin not found for currentREDPayloadBitrate=%u", v2, v3, v4, v5);
}

void __55__VCAggregatorFaceTime_processConnectionEstablishment___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 4211;
  _os_log_debug_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAggregator: New segment started", &v2, 0x1Cu);
}

void __48__VCAggregatorFaceTime_processDuplication_type___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)updateQRExperiments:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)updateQRExperiments:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR(3u);
    v3 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCAggregatorFaceTime updateQRExperiments:]";
      v8 = 1024;
      v9 = 4275;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Empty QRExperiments dictionary for segment=%@", &v4, 0x26u);
    }
  }
}

- (void)updateProtocolStackDescription:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

@end