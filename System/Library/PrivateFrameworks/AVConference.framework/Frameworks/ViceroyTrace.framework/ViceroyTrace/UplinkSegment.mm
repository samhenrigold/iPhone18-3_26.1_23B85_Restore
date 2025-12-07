@interface UplinkSegment
- (UplinkSegment)initWithSegmentName:(id)name previousSegmentName:(id)segmentName segmentStreamGroups:(unsigned int)groups previousSegmentStreamGroups:(unsigned int)streamGroups nwActivity:(id)activity localSwitches:(unsigned int)switches sessionSwitches:(unint64_t)sessionSwitches conversationTimeBase:(id)self0 delegate:(id)self1;
- (id)calculateAverageWithCounter:(id)counter sumKey:(id)key counterKey:(id)counterKey;
- (id)calculateBitrate:(id)bitrate sumKey:(id)key counterKey:(id)counterKey;
- (id)calculateFramerate:(id)framerate sumKey:(id)key counterKey:(id)counterKey;
- (id)segmentReport;
- (unsigned)audioFlushPercent;
- (void)addBIFStatsToDictionary:(id)dictionary;
- (void)addCellByteCountStats:(id)stats;
- (void)addCelltechTelemetryToDictionary:(id)dictionary;
- (void)addPerStreamGroupRTXStatsToDictionary:(id)dictionary streamGroup:(id)group;
- (void)addPerStreamGroupStatsToDictionary:(id)dictionary;
- (void)addSegmentWRMReportStats:(id)stats;
- (void)addSmartBrakeStats:(id)stats;
- (void)addVideoFeatureStatus:(id)status;
- (void)calculateUplinkAudioTimestampJumps:(id)jumps;
- (void)calculateUplinkTelemetry:(id)telemetry lastReportedAudioPauseTime:(double)time lastReportedVideoPacketSentCount:(double)count;
- (void)collectStreamQualityAggregator:(id)aggregator;
- (void)collectStreamTemporalStats:(id)stats;
- (void)dealloc;
- (void)processAudioTransmitterStreamData:(id)data;
- (void)processAverageEvent:(id)event forMetrics:(id)metrics withStreamGroup:(id)group withQuality:(id)quality sumKey:(id)key counterKey:(id)counterKey;
- (void)processCountEvent:(id)event forMetrics:(id)metrics withStreamGroup:(id)group withQuality:(id)quality counterKey:(id)key;
- (void)processKeyFrameReceived:(unsigned int)received withTime:(double)time;
- (void)processKeyFrameRequestSent:(unsigned int)sent withTime:(double)time;
- (void)processLateSmartBrakeEvent:(id)event;
- (void)processMediaQueueEgressIngressTelemetry:(id)telemetry;
- (void)processMediaQueueTelemetry:(id)telemetry;
- (void)processRTEvent:(id)event now:(double)now;
- (void)processSegmentRateControllerTelemetry:(id)telemetry;
- (void)processSmartBrakeEvent:(id)event;
- (void)processTransmitterStats:(id)stats;
- (void)processUplinkRTXMetricsFromStreamData:(id)data;
- (void)processVTPEgressIngressTelemetry:(id)telemetry;
- (void)processVideoTransmitterStreamData:(id)data;
- (void)releaseWRMMetrics;
- (void)reportSpatialAudioSupport:(id)support;
- (void)updateAdaptiveLearningSegment;
- (void)updateAudioCodecAndMediaBitrateWithPayload:(id)payload andCurrentTime:(double)time andStats:(const tagVCAudioCodecAndMediaBitrateStats *)stats;
- (void)updateLastValuesForMediaQueueEgressIngressTelemetry:(id)telemetry;
- (void)updateMediaBitratesWithTimeElapsed:(unsigned int)elapsed andStats:(const tagVCAudioCodecAndMediaBitrateStats *)stats;
- (void)updateNetworkSendResultStats:(id)stats;
- (void)updateSegmentStatsWifiTx:(id)tx withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes;
- (void)updateUplinkSegmentStats:(id)stats withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes;
@end

@implementation UplinkSegment

- (UplinkSegment)initWithSegmentName:(id)name previousSegmentName:(id)segmentName segmentStreamGroups:(unsigned int)groups previousSegmentStreamGroups:(unsigned int)streamGroups nwActivity:(id)activity localSwitches:(unsigned int)switches sessionSwitches:(unint64_t)sessionSwitches conversationTimeBase:(id)self0 delegate:(id)self1
{
  v15.receiver = self;
  v15.super_class = UplinkSegment;
  v11 = [(MultiwaySegment *)&v15 initWithSegmentName:name previousSegmentName:segmentName segmentStreamGroups:*&groups previousSegmentStreamGroups:*&streamGroups nwActivity:activity localSwitches:*&switches sessionSwitches:sessionSwitches conversationTimeBase:base delegate:delegate];
  if (v11)
  {
    v11->_streamQualityAggregator = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11->_streamGroupStats = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:11];
    v12 = 1;
    do
    {
      v13 = objc_alloc_init(StreamGroupStats);
      -[NSMutableDictionary setObject:forKeyedSubscript:](v11->_streamGroupStats, "setObject:forKeyedSubscript:", v13, [MEMORY[0x277CCABA8] numberWithInt:v12]);

      v12 = (v12 + 1);
    }

    while (v12 != 11);
    v11->_smartBrakeDuration = [[VCReportingHistogram alloc] initWithType:1 bucketValues:0];
    v11->_smartBrakeTargetBitrateStart = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
    v11->_smartBrakeBandwidthStart = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
    v11->_smartBrakeBandwidthEnd = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
    v11->_smartBrakeTargetBitrateAfter5 = [[VCReportingHistogram alloc] initWithType:80 bucketValues:0];
    v11->_smartBrakeTargetBitrateAfter15 = [[VCReportingHistogram alloc] initWithType:80 bucketValues:0];
    v11->_smartBrakeTargetBitrateAfter30 = [[VCReportingHistogram alloc] initWithType:80 bucketValues:0];
    v11->_firResponseTime = [[VCReportingDistribution alloc] initWithHistogramType:52 reportingKeys:VCReportingDistributionKeys_FIRResponseTime()];
    v11->_studioLightDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v11->_centerStageDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v11->_portraitModeDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v11->_eyeContactDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v11->_reactionActiveDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v11->_backgroundReplacementDuration = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    v11->_cellStrengthRawBars = [[VCReportingHistogram alloc] initWithType:91 bucketValues:0];
    v11->_SBR = [[VCReportingHistogram alloc] initWithType:8 bucketValues:0];
    v11->_videoEncodingBitrate = [[VCReportingHistogram alloc] initWithType:20 bucketValues:0];
    v11->_audioMediaBitrate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
    v11->_redPayloadBitrate = [[VCReportingHistogram alloc] initWithType:64 bucketValues:0];
    v11->_audioCodecPayload = [[VCReportingHistogram alloc] initWithType:66 bucketValues:0];
    v11->_audioFrameBundling = [[VCReportingHistogram alloc] initWithType:67 bucketValues:0];
    v11->_videoMediaBitrate = [[VCReportingHistogram alloc] initWithType:61 bucketValues:0];
    v11->_videoCodecPayload = [[VCReportingHistogram alloc] initWithType:63 bucketValues:0];
    v11->_redNumPayloadsUsed = [[VCReportingHistogram alloc] initWithType:27 bucketValues:0];
    v11->_redMaxDelay = [[VCReportingHistogram alloc] initWithType:28 bucketValues:0];
    v11->_wifiQualityScoreDelayTx = [[VCReportingHistogram alloc] initWithType:90 bucketValues:0];
    v11->_wifiQualityScoreLossTx = [[VCReportingHistogram alloc] initWithType:90 bucketValues:0];
    v11->_wifiQualityScoreChannel = [[VCReportingHistogram alloc] initWithType:90 bucketValues:0];
    v11->_cameraCaptureData = [[VCReportingDistribution alloc] initWithHistogramType:81 reportingKeys:VCReportingDistributionKeys_CameraCaptureFrameRate() histogramIncrementFactor:1000];
    v11->_audioStreamTimestampJumpDuration = [[VCReportingHistogram alloc] initWithType:89 bucketValues:0];
    v11->_thermalDataCollectors = +[VCAggregator newThermalDataCollectors];
  }

  return v11;
}

- (void)dealloc
{
  [(UplinkSegment *)self releaseWRMMetrics];
  v3.receiver = self;
  v3.super_class = UplinkSegment;
  [(MultiwaySegment *)&v3 dealloc];
}

- (void)processKeyFrameRequestSent:(unsigned int)sent withTime:(double)time
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*&sent]);

  [v5 processKeyFrameRequestSent:time];
}

- (void)processKeyFrameReceived:(unsigned int)received withTime:(double)time
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:*&received]);

  [v5 processKeyFrameReceived:time];
}

- (void)updateLastValuesForMediaQueueEgressIngressTelemetry:(id)telemetry
{
  if ([telemetry objectForKeyedSubscript:@"VCMQIngressVideoPkts"])
  {
    self->_lastReportedVCMQIngressVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressVideoPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressAudioPkts"])
  {
    self->_lastReportedVCMQIngressAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressAudioPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressPkts"])
  {
    self->_lastReportedVCMQIngressPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressVideoPkts"])
  {
    self->_lastReportedVCMQEgressVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressVideoPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressAudioPkts"])
  {
    self->_lastReportedVCMQEgressAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressAudioPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressPkts"])
  {
    self->_lastReportedVCMQEgressPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupAudioPkts"])
  {
    self->_lastReportedVCMQEgressNonDupAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupAudioPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupVideoPkts"])
  {
    self->_lastReportedVCMQEgressNonDupVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupVideoPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupPkts"])
  {
    self->_lastReportedVCMQEgressNonDupPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressQueuedPkts"])
  {
    self->_lastReportedVCMQIngressQueuedPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressQueuedPkts", "integerValue"}];
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQFlushedPkts"])
  {
    self->_lastReportedVCMQFlushedPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQFlushedPkts", "integerValue"}];
  }
}

- (void)processMediaQueueTelemetry:(id)telemetry
{
  [(UplinkSegment *)self processMediaQueueEgressIngressTelemetry:?];
  streamGroupStats = self->_streamGroupStats;

  _VCAggregatorMultiway_CollectMediaQueueTelemetry(streamGroupStats, telemetry);
}

- (void)processAverageEvent:(id)event forMetrics:(id)metrics withStreamGroup:(id)group withQuality:(id)quality sumKey:(id)key counterKey:(id)counterKey
{
  if ([event objectForKeyedSubscript:metrics])
  {
    v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{group), "objectForKeyedSubscript:", quality}];
    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{group), "setObject:forKeyedSubscript:", v15, quality}];
    }

    [objc_msgSend(event objectForKeyedSubscript:{metrics), "doubleValue"}];
    v17 = v16;
    v18 = MEMORY[0x277CCABA8];
    [objc_msgSend(v15 objectForKeyedSubscript:{key), "doubleValue"}];
    [v15 setObject:objc_msgSend(v18 forKeyedSubscript:{"numberWithDouble:", v17 + v19), key}];
    v20 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(objc_msgSend(v15, "objectForKeyedSubscript:", counterKey), "intValue") + 1}];

    [v15 setObject:v20 forKeyedSubscript:counterKey];
  }
}

- (void)processCountEvent:(id)event forMetrics:(id)metrics withStreamGroup:(id)group withQuality:(id)quality counterKey:(id)key
{
  if ([event objectForKeyedSubscript:metrics])
  {
    v13 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{group), "objectForKeyedSubscript:", quality}];
    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{group), "setObject:forKeyedSubscript:", v13, quality}];
    }

    [objc_msgSend(event objectForKeyedSubscript:{metrics), "doubleValue"}];
    [v13 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:"), metrics}];
    v14 = [MEMORY[0x277CCABA8] numberWithInt:{objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", key), "intValue") + 1}];

    [v13 setObject:v14 forKeyedSubscript:key];
  }
}

- (void)processSegmentRateControllerTelemetry:(id)telemetry
{
  v5 = [telemetry objectForKeyedSubscript:@"OVSBR"];
  if (v5)
  {
    -[UplinkSegment setOvershootSendBitrate:](self, "setOvershootSendBitrate:", -[UplinkSegment overshootSendBitrate](self, "overshootSendBitrate") + [v5 intValue]);
  }

  v6 = [telemetry objectForKeyedSubscript:@"UNSBR"];
  if (v6)
  {
    -[UplinkSegment setUndershootSendBitrate:](self, "setUndershootSendBitrate:", -[UplinkSegment undershootSendBitrate](self, "undershootSendBitrate") + [v6 intValue]);
  }

  v7 = [telemetry objectForKeyedSubscript:@"AExTR"];
  if (v7)
  {
    -[UplinkSegment setTotalExtraTargetBitrate:](self, "setTotalExtraTargetBitrate:", -[UplinkSegment totalExtraTargetBitrate](self, "totalExtraTargetBitrate") + [v7 intValue]);
  }

  v8 = [telemetry objectForKeyedSubscript:@"OVBWE"];
  if (v8)
  {
    -[UplinkSegment setOverUtilizedBandwidth:](self, "setOverUtilizedBandwidth:", -[UplinkSegment overUtilizedBandwidth](self, "overUtilizedBandwidth") + [v8 intValue]);
  }

  v9 = [telemetry objectForKeyedSubscript:@"UNBWE"];
  if (v9)
  {
    -[UplinkSegment setUnderUtilizedBandwidth:](self, "setUnderUtilizedBandwidth:", -[UplinkSegment underUtilizedBandwidth](self, "underUtilizedBandwidth") + [v9 intValue]);
  }

  v10 = [telemetry objectForKeyedSubscript:@"APF"];
  if (v10)
  {
    -[UplinkSegment setAudioFlushPacketCount:](self, "setAudioFlushPacketCount:", -[UplinkSegment audioFlushPacketCount](self, "audioFlushPacketCount") + [v10 intValue]);
  }

  v11 = [telemetry objectForKeyedSubscript:@"VPF"];
  if (v11)
  {
    -[UplinkSegment setVideoFlushPacketCount:](self, "setVideoFlushPacketCount:", -[UplinkSegment videoFlushPacketCount](self, "videoFlushPacketCount") + [v11 intValue]);
  }

  v12 = [telemetry objectForKeyedSubscript:@"APBBD"];
  if (v12)
  {
    -[UplinkSegment setAudioBasebandDropPacketCount:](self, "setAudioBasebandDropPacketCount:", -[UplinkSegment audioBasebandDropPacketCount](self, "audioBasebandDropPacketCount") + [v12 intValue]);
  }

  v13 = [telemetry objectForKeyedSubscript:@"VPBBD"];
  if (v13)
  {
    -[UplinkSegment setVideoBasebandDropPacketCount:](self, "setVideoBasebandDropPacketCount:", -[UplinkSegment videoBasebandDropPacketCount](self, "videoBasebandDropPacketCount") + [v13 intValue]);
  }

  v14 = [telemetry objectForKeyedSubscript:@"BBNOTENW"];
  if (v14)
  {
    self->_rateControlBasebandNotificationNWCount += [v14 intValue];
  }

  if ([telemetry objectForKeyedSubscript:@"BbTx"])
  {
    [objc_msgSend(telemetry objectForKeyedSubscript:{@"BbTx", "floatValue"}];
    v16 = v15;
    maxBaseBandTxRate = self->_maxBaseBandTxRate;
    if (maxBaseBandTxRate < v16)
    {
      [objc_msgSend(telemetry objectForKeyedSubscript:{@"BbTx", "floatValue"}];
      maxBaseBandTxRate = v18;
    }

    self->_maxBaseBandTxRate = maxBaseBandTxRate;
    if (self->_minBaseBandTxRate == 0.0 || ([objc_msgSend(telemetry objectForKeyedSubscript:{@"BbTx", "floatValue"}], v20 = v19, minBaseBandTxRate = self->_minBaseBandTxRate, minBaseBandTxRate > v20))
    {
      [objc_msgSend(telemetry objectForKeyedSubscript:{@"BbTx", "floatValue"}];
      minBaseBandTxRate = v22;
    }

    self->_minBaseBandTxRate = minBaseBandTxRate;
    [objc_msgSend(telemetry objectForKeyedSubscript:{@"BbTx", "floatValue"}];
    self->_totalBaseBandTxRate = self->_totalBaseBandTxRate + v23;
  }

  if ([telemetry objectForKeyedSubscript:@"SS"])
  {
    [objc_msgSend(telemetry objectForKeyedSubscript:{@"SS", "floatValue"}];
    v25 = v24;
    cellStrengthRawBars = [(UplinkSegment *)self cellStrengthRawBars];

    [(VCHistogram *)cellStrengthRawBars addValue:v25];
  }
}

- (void)updateMediaBitratesWithTimeElapsed:(unsigned int)elapsed andStats:(const tagVCAudioCodecAndMediaBitrateStats *)stats
{
  if (stats)
  {
    v5 = *&elapsed;
    if (stats->var2)
    {
      if (![(VCHistogram *)[(UplinkSegment *)self audioMediaBitrate] addOnlyExactMatchingValue:stats->var2 increment:*&elapsed]&& VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [UplinkSegment updateMediaBitratesWithTimeElapsed:andStats:];
        }
      }
    }

    var3 = stats->var3;
    p_var3 = &stats->var3;
    if (var3 && ![(VCHistogram *)[(UplinkSegment *)self redPayloadBitrate] addOnlyExactMatchingValue:*p_var3 increment:v5]&& VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [UplinkSegment updateMediaBitratesWithTimeElapsed:andStats:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [UplinkSegment updateMediaBitratesWithTimeElapsed:andStats:];
    }
  }
}

- (void)updateAudioCodecAndMediaBitrateWithPayload:(id)payload andCurrentTime:(double)time andStats:(const tagVCAudioCodecAndMediaBitrateStats *)stats
{
  if (stats)
  {
    LODWORD(v5) = vcvtad_u64_f64(time - stats->var0);
    if (stats->var1)
    {
      if (![(VCHistogram *)[(UplinkSegment *)self audioCodecPayload] addOnlyExactMatchingValue:stats->var1 increment:v5]&& VRTraceGetErrorLogLevelForModule("") >= 3)
      {
        VRTraceErrorLogLevelToCSTR(3u);
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
        {
          [UplinkSegment updateAudioCodecAndMediaBitrateWithPayload:andCurrentTime:andStats:];
        }
      }
    }

    [(UplinkSegment *)self updateMediaBitratesWithTimeElapsed:v5 andStats:stats];
    v9 = [payload objectForKeyedSubscript:@"Bundle"];
    if (v9)
    {
      -[VCHistogram addValue:](-[UplinkSegment audioFrameBundling](self, "audioFrameBundling"), "addValue:", [v9 unsignedLongValue]);
    }

    if ([payload objectForKeyedSubscript:@"RedPayloads"])
    {
      -[VCHistogram addValue:](-[UplinkSegment redNumPayloadsUsed](self, "redNumPayloadsUsed"), "addValue:", [objc_msgSend(payload objectForKeyedSubscript:{@"RedPayloads", "integerValue"}]);
    }

    if ([payload objectForKeyedSubscript:@"RedMaxDelay"])
    {
      -[VCHistogram addValue:](-[UplinkSegment redMaxDelay](self, "redMaxDelay"), "addValue:", [objc_msgSend(payload objectForKeyedSubscript:{@"RedMaxDelay", "integerValue"}]);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [UplinkSegment updateAudioCodecAndMediaBitrateWithPayload:andCurrentTime:andStats:];
    }
  }
}

- (void)processTransmitterStats:(id)stats
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [stats objectForKeyedSubscript:@"VCSActiveStreamsList"];
  if (v5)
  {
    v6 = v5;
    v7 = [stats objectForKeyedSubscript:sRTCReportingStreamCollection];
    if (v7)
    {
      v8 = v7;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v21;
        *&v10 = 136316162;
        v19 = v10;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if ([v6 containsString:{v14, v19}])
            {
              v15 = [v8 objectForKeyedSubscript:v14];
              if ([objc_msgSend(v15 objectForKeyedSubscript:{@"VCMSDirection", "intValue"}] == 1)
              {
                v16 = [v15 objectForKeyedSubscript:@"VCMSStreamGroup"];
                if ([v16 unsignedIntValue] == 1 || objc_msgSend(v16, "unsignedIntValue") == 3 || objc_msgSend(v16, "unsignedIntValue") == 5 || objc_msgSend(v16, "unsignedIntValue") == 7 || objc_msgSend(v16, "unsignedIntValue") == 8 || objc_msgSend(v16, "unsignedIntValue") == 10)
                {
                  [(UplinkSegment *)self processVideoTransmitterStreamData:v15];
                }

                if ([v16 unsignedIntValue] == 2 || objc_msgSend(v16, "unsignedIntValue") == 4 || objc_msgSend(v16, "unsignedIntValue") == 6)
                {
                  [(UplinkSegment *)self processAudioTransmitterStreamData:v15];
                }
              }
            }

            else if (VRTraceGetErrorLogLevelForModule("") >= 8)
            {
              v17 = VRTraceErrorLogLevelToCSTR(8u);
              v18 = gVRTraceOSLog;
              if (gVRTraceLogDebugAsInfo == 1)
              {
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v19;
                  v25 = v17;
                  v26 = 2080;
                  v27 = "[UplinkSegment processTransmitterStats:]";
                  v28 = 1024;
                  v29 = 4149;
                  v30 = 2112;
                  v31 = v14;
                  v32 = 2112;
                  v33 = v6;
                  _os_log_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamKey=%@, is not in list of activeStreams=%@. Ignoring its telemetry...", buf, 0x30u);
                }
              }

              else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = v19;
                v25 = v17;
                v26 = 2080;
                v27 = "[UplinkSegment processTransmitterStats:]";
                v28 = 1024;
                v29 = 4149;
                v30 = 2112;
                v31 = v14;
                v32 = 2112;
                v33 = v6;
                _os_log_debug_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_DEBUG, " [%s] %s:%d streamKey=%@, is not in list of activeStreams=%@. Ignoring its telemetry...", buf, 0x30u);
              }
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v20 objects:v34 count:16];
        }

        while (v11);
      }
    }

    else
    {
      [UplinkSegment processTransmitterStats:];
    }
  }

  else
  {
    [UplinkSegment processTransmitterStats:];
  }
}

- (void)processUplinkRTXMetricsFromStreamData:(id)data
{
  v4 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", [data objectForKeyedSubscript:@"VCMSStreamGroup"]);
  if (v4)
  {
    v5 = v4;
    v6 = [data objectForKeyedSubscript:@"UNRPC"];
    if (v6)
    {
      *(v5 + 16) += [v6 intValue];
    }

    v7 = [data objectForKeyedSubscript:@"UNFPC"];
    if (v7)
    {
      *(v5 + 24) += [v7 intValue];
    }

    v8 = [data objectForKeyedSubscript:@"UNCHPC"];
    if (v8)
    {
      *(v5 + 32) += [v8 intValue];
    }

    v9 = [data objectForKeyedSubscript:@"UNCMPC"];
    if (v9)
    {
      *(v5 + 40) += [v9 intValue];
    }

    v10 = [data objectForKeyedSubscript:@"UNTRC"];
    if (v10)
    {
      *(v5 + 48) += [v10 intValue];
    }

    v11 = [data objectForKeyedSubscript:@"UNRRC"];
    if (v11)
    {
      *(v5 + 56) += [v11 intValue];
    }

    v12 = [data objectForKeyedSubscript:@"UNRRMC"];
    if (v12)
    {
      v13 = v12;
      if ([v12 unsignedIntValue] > *(v5 + 64))
      {
        *(v5 + 64) = [v13 unsignedIntValue];
      }
    }

    v14 = [data objectForKeyedSubscript:@"UNART"];
    if (v14)
    {
      v15 = *(v5 + 72);
      [v14 doubleValue];
      [v15 addValue:(v16 * 100.0)];
    }

    v17 = [data objectForKeyedSubscript:@"UNALT"];
    if (v17)
    {
      v18 = *(v5 + 80);
      [v17 doubleValue];
      [v18 addValue:(v19 * 100.0)];
    }

    v20 = [data objectForKeyedSubscript:@"UNMB"];
    if (v20)
    {
      [*(v5 + 88) addValue:{objc_msgSend(v20, "unsignedIntValue")}];
    }

    v21 = [data objectForKeyedSubscript:@"UNRB"];
    if (v21)
    {
      [*(v5 + 96) addValue:{objc_msgSend(v21, "unsignedIntValue")}];
    }

    *(v5 + 8) = 1;
  }

  else
  {
    [UplinkSegment processUplinkRTXMetricsFromStreamData:];
  }
}

- (void)processVideoTransmitterStreamData:(id)data
{
  v5 = [data objectForKeyedSubscript:@"QID"];
  if (v5)
  {
    v6 = v5;
    v7 = [data objectForKeyedSubscript:@"VCMSStreamGroup"];
    if (v7)
    {
      v8 = v7;
      if (![(NSMutableDictionary *)self->_streamQualityAggregator objectForKeyedSubscript:v7])
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)self->_streamQualityAggregator setObject:v9 forKeyedSubscript:v8];
      }

      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"EncOutFrameCnt" withStreamGroup:v8 withQuality:v6 sumKey:@"encodedVideoFrameSum" counterKey:@"encodedVideoFrameCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"VFCCnt" withStreamGroup:v8 withQuality:v6 sumKey:@"capturedVideoFrameSum" counterKey:@"capturedVideoFrameCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"IdleFrameCount" withStreamGroup:v8 withQuality:v6 sumKey:@"capturedVideoIdleFrameSum" counterKey:@"capturedVideoIdleFrameCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"VTxR" withStreamGroup:v8 withQuality:v6 sumKey:@"totalVideoSendBitrateSum" counterKey:@"totalVideoSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"VTxMetadataOverhead" withStreamGroup:v8 withQuality:v6 sumKey:@"totalMetadataOverheadSendBitrateSum" counterKey:@"totalMetadataSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"VTxRMedia" withStreamGroup:v8 withQuality:v6 sumKey:@"videoMediaSendBitrateSum" counterKey:@"videoMediaSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"VTxRHDR" withStreamGroup:v8 withQuality:v6 sumKey:@"videoHeaderSendBitrateSum" counterKey:@"videoHeaderSendBitrateCounter"];
      [(UplinkSegment *)self processAverageEvent:data forMetrics:@"VTxRFEC" withStreamGroup:v8 withQuality:v6 sumKey:@"videoFECSendBitrateSum" counterKey:@"videoFECSendBitrateCounter"];
      [(UplinkSegment *)self processCountEvent:data forMetrics:@"VPS" withStreamGroup:v8 withQuality:v6 counterKey:@"videoPacketSentCounter"];
      [(SegmentStatsDelegate *)self->super._delegate updateVideoFECStatsOnSegment:data fecStats:[(MultiwaySegment *)self fecStatsHolder] segmentLossPattern:[(MultiwaySegment *)self lossPattern] segmentLossHistogram:[(MultiwaySegment *)self lossHistogram] segmentLossFecHistogram:[(MultiwaySegment *)self lossFecHistogram] direction:0];
      v10 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v8];
      [objc_msgSend(v10 "videoTxFecData")];
      v11 = [data objectForKeyedSubscript:@"VTxR"];
      if (v11)
      {
        [v10 setAverageVideoBitrate:{objc_msgSend(v10, "averageVideoBitrate") + objc_msgSend(v11, "unsignedIntValue")}];
      }

      v12 = [data objectForKeyedSubscript:@"VTxRMedia"];
      if (v12)
      {
        [v10 setAverageVideoTxMediaBitrate:{objc_msgSend(v10, "averageVideoTxMediaBitrate") + objc_msgSend(v12, "unsignedIntValue")}];
      }

      v13 = [data objectForKeyedSubscript:@"VTxRHDR"];
      if (v13)
      {
        [v10 setAverageVideoTxHeaderBitrate:{objc_msgSend(v10, "averageVideoTxHeaderBitrate") + objc_msgSend(v13, "unsignedIntValue")}];
      }

      v14 = [data objectForKeyedSubscript:@"VTxRFEC"];
      if (v14)
      {
        [v10 setAverageVideoTxFecBitrate:{objc_msgSend(v10, "averageVideoTxFecBitrate") + objc_msgSend(v14, "unsignedIntValue")}];
      }

      v15 = [data objectForKeyedSubscript:@"VTxMetadataOverhead"];
      if (v15)
      {
        [v10 setAverageMetadataTxBitrate:{objc_msgSend(v10, "averageMetadataTxBitrate") + objc_msgSend(v15, "unsignedIntValue")}];
      }

      v16 = [data objectForKeyedSubscript:@"RTPUplinkIngressVideoPkts"];
      if (v16)
      {
        [v10 setTotalRTPUplinkIngressVideoPackets:{objc_msgSend(v10, "totalRTPUplinkIngressVideoPackets") + objc_msgSend(v16, "unsignedIntegerValue")}];
      }

      v17 = [data objectForKeyedSubscript:@"VTxDeltaKeyFramesSent"];
      if (v17)
      {
        [v10 setIdrSentCount:{objc_msgSend(v10, "idrSentCount") + objc_msgSend(v17, "unsignedIntValue")}];
      }

      v18 = [data objectForKeyedSubscript:@"VFCCnt"];
      if (v18)
      {
        [v10 setVideoFrameCapturedCounter:{objc_msgSend(v10, "videoFrameCapturedCounter") + objc_msgSend(v18, "unsignedIntValue")}];
        [v10 setVideoFrameCaptureReportCount:{objc_msgSend(v10, "videoFrameCaptureReportCount") + 1}];
      }

      v19 = [data objectForKeyedSubscript:@"EncOutFrameCnt"];
      if (v19)
      {
        [v10 setEncodedFrameSum:{objc_msgSend(v10, "encodedFrameSum") + objc_msgSend(v19, "unsignedIntValue")}];
        [v10 setEncodedFrameReportedCount:{objc_msgSend(v10, "encodedFrameReportedCount") + 1}];
      }

      [(UplinkSegment *)self processUplinkRTXMetricsFromStreamData:data];
      transmitterAVHostTimeData = [v10 transmitterAVHostTimeData];

      [transmitterAVHostTimeData updateWithPayload:data];
    }

    else
    {
      [UplinkSegment processVideoTransmitterStreamData:];
    }
  }

  else
  {
    [UplinkSegment processVideoTransmitterStreamData:];
  }
}

- (void)processAudioTransmitterStreamData:(id)data
{
  v5 = [data objectForKeyedSubscript:@"VCMSStreamGroup"];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [data objectForKeyedSubscript:@"ATxR"];
      if (v8)
      {
        [v7 setAverageAudioBitrate:{objc_msgSend(v7, "averageAudioBitrate") + objc_msgSend(v8, "unsignedIntValue")}];
      }

      v9 = [data objectForKeyedSubscript:@"ATierChangeCount"];
      if (v9)
      {
        [objc_msgSend(v7 "audioTierChangeHistogram")];
      }

      v10 = [data objectForKeyedSubscript:@"RTPUplinkIngressAudioPkts"];
      if (v10)
      {
        [v7 setTotalRTPUplinkIngressAudioPackets:{objc_msgSend(v7, "totalRTPUplinkIngressAudioPackets") + objc_msgSend(v10, "unsignedIntegerValue")}];
      }

      v11 = [data objectForKeyedSubscript:@"ATxRPrimary"];
      if (v11)
      {
        [v7 setAverageAudioMediaBitrate:{objc_msgSend(v7, "averageAudioMediaBitrate") + objc_msgSend(v11, "unsignedIntValue")}];
      }

      v12 = [data objectForKeyedSubscript:@"ATxEncodedBitrate"];
      if (v12)
      {
        unsignedIntValue = [v12 unsignedIntValue];
        [v7 averageAudioMediaTxNoRedBitrate];
        [v7 setAverageAudioMediaTxNoRedBitrate:v14 + unsignedIntValue];
      }

      v15 = [data objectForKeyedSubscript:@"BundleAlt"];
      if (v15)
      {
        [objc_msgSend(v7 "audioTierBundling_Alternate")];
      }

      v16 = [data objectForKeyedSubscript:@"PayloadAlt"];
      if (v16)
      {
        [objc_msgSend(v7 "audioTierCodecPayload_Alternate")];
      }

      v17 = [data objectForKeyedSubscript:@"BitRateAlt"];
      if (v17)
      {
        [objc_msgSend(v7 "audioTierCodecBitrate_Alternate")];
      }

      v18 = [data objectForKeyedSubscript:@"RedPayloadsAlt"];
      if (v18)
      {
        [objc_msgSend(v7 "audioTierREDPayload_Alternate")];
      }

      v19 = [data objectForKeyedSubscript:@"RedMaxDelayAlt"];
      if (v19)
      {
        [objc_msgSend(v7 "audioTierREDMaxDelay_Alternate")];
      }

      v20 = [data objectForKeyedSubscript:@"REDPayloadBitrate"];
      if (v20)
      {
        unsignedIntValue2 = [v20 unsignedIntValue];
        v22 = [v7 averageAudioRedTxBitrate] + unsignedIntValue2;

        [v7 setAverageAudioRedTxBitrate:v22];
      }
    }

    else
    {
      [UplinkSegment processAudioTransmitterStreamData:];
    }
  }

  else
  {
    [UplinkSegment processAudioTransmitterStreamData:];
  }
}

- (void)processLateSmartBrakeEvent:(id)event
{
  if ([event objectForKeyedSubscript:@"BWETTxRRatio5"])
  {
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateAfter5, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"BWETTxRRatio5", "unsignedIntValue"}]);
  }

  if ([event objectForKeyedSubscript:@"BWETTxRRatio15"])
  {
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateAfter15, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"BWETTxRRatio15", "unsignedIntValue"}]);
  }

  if ([event objectForKeyedSubscript:@"BWETTxRRatio30"])
  {
    smartBrakeTargetBitrateAfter30 = self->_smartBrakeTargetBitrateAfter30;
    v6 = [objc_msgSend(event objectForKeyedSubscript:{@"BWETTxRRatio30", "unsignedIntValue"}];

    [(VCHistogram *)smartBrakeTargetBitrateAfter30 addValue:v6];
  }
}

- (void)processSmartBrakeEvent:(id)event
{
  if (!self->_isSmartBrakeHistogramPopulated)
  {
    self->_isSmartBrakeHistogramPopulated = 1;
  }

  if ([event objectForKeyedSubscript:@"EndBWE"] && objc_msgSend(event, "objectForKeyedSubscript:", @"StartBWE") && objc_msgSend(event, "objectForKeyedSubscript:", @"StartTargetTxR") && objc_msgSend(event, "objectForKeyedSubscript:", @"CongestionDuration"))
  {
    smartBrakeDuration = self->_smartBrakeDuration;
    [objc_msgSend(event objectForKeyedSubscript:{@"CongestionDuration", "doubleValue"}];
    [(VCHistogram *)smartBrakeDuration addValue:v6];
    -[VCHistogram addValue:](self->_smartBrakeTargetBitrateStart, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"StartTargetTxR", "unsignedIntValue"}]);
    -[VCHistogram addValue:](self->_smartBrakeBandwidthStart, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"StartBWE", "unsignedIntValue"}]);
    -[VCHistogram addValue:](self->_smartBrakeBandwidthEnd, "addValue:", [objc_msgSend(event objectForKeyedSubscript:{@"EndBWE", "unsignedIntValue"}]);
  }

  [(UplinkSegment *)self processLateSmartBrakeEvent:event];
}

- (void)processMediaQueueEgressIngressTelemetry:(id)telemetry
{
  if ([telemetry objectForKeyedSubscript:@"VCMQIngressVideoPkts"])
  {
    self->_totalVCMQIngressVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressVideoPkts", "integerValue"}] - self->_lastReportedVCMQIngressVideoPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressAudioPkts"])
  {
    self->_totalVCMQIngressAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressAudioPkts", "integerValue"}] - self->_lastReportedVCMQIngressAudioPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressPkts"])
  {
    self->_totalVCMQIngressPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressPkts", "integerValue"}] - self->_lastReportedVCMQIngressPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressVideoPkts"])
  {
    self->_totalVCMQEgressVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressVideoPkts", "integerValue"}] - self->_lastReportedVCMQEgressVideoPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressAudioPkts"])
  {
    self->_totalVCMQEgressAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressAudioPkts", "integerValue"}] - self->_lastReportedVCMQEgressAudioPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressPkts"])
  {
    self->_totalVCMQEgressPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressPkts", "integerValue"}] - self->_lastReportedVCMQEgressPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupAudioPkts"])
  {
    self->_totalVCMQEgressNonDupAudioPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupAudioPkts", "integerValue"}] - self->_lastReportedVCMQEgressNonDupAudioPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupVideoPkts"])
  {
    self->_totalVCMQEgressNonDupVideoPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupVideoPkts", "integerValue"}] - self->_lastReportedVCMQEgressNonDupVideoPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQEgressNonDupPkts"])
  {
    self->_totalVCMQEgressNonDupPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQEgressNonDupPkts", "integerValue"}] - self->_lastReportedVCMQEgressNonDupPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQIngressQueuedPkts"])
  {
    self->_totalVCMQIngressQueuedPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQIngressQueuedPkts", "integerValue"}] - self->_lastReportedVCMQIngressQueuedPackets;
  }

  if ([telemetry objectForKeyedSubscript:@"VCMQFlushedPkts"])
  {
    self->_totalVCMQFlushedPackets = [objc_msgSend(telemetry objectForKeyedSubscript:{@"VCMQFlushedPkts", "integerValue"}] - self->_lastReportedVCMQFlushedPackets;
  }
}

- (void)processVTPEgressIngressTelemetry:(id)telemetry
{
  v5 = [telemetry objectForKeyedSubscript:@"VTPUplinkEgressPkts"];
  if (v5)
  {
    self->_totalVTPUplinkEgressMediaPackets += [v5 unsignedIntegerValue];
  }

  v6 = [telemetry objectForKeyedSubscript:@"VTPUplinkIngressPkts"];
  if (v6)
  {
    self->_totalVTPUplinkIngressMediaPackets += [v6 unsignedIntegerValue];
  }
}

- (void)processRTEvent:(id)event now:(double)now
{
  if ([event objectForKeyedSubscript:@"WPSSZ"])
  {
    self->_averageWireSendBytes += [objc_msgSend(event objectForKeyedSubscript:{@"WPSSZ", "integerValue"}];
    ++self->_averageWireSendCounter;
  }

  [(MultiwaySegment *)self processRTEventCommon:event now:now];

  [(UplinkSegment *)self processVTPEgressIngressTelemetry:event];
}

- (id)calculateBitrate:(id)bitrate sumKey:(id)key counterKey:(id)counterKey
{
  [objc_msgSend(bitrate objectForKeyedSubscript:{key), "doubleValue"}];
  v8 = v7;
  v9 = [objc_msgSend(bitrate objectForKeyedSubscript:{counterKey), "intValue"}];
  if (v9)
  {
    v10 = (v8 * 1000.0 / v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277CCABA8];

  return [v11 numberWithUnsignedInt:v10];
}

- (id)calculateAverageWithCounter:(id)counter sumKey:(id)key counterKey:(id)counterKey
{
  [objc_msgSend(counter objectForKeyedSubscript:{key), "doubleValue"}];
  v9 = v8;
  v10 = [objc_msgSend(counter objectForKeyedSubscript:{counterKey), "intValue"}];
  if (v10)
  {
    v11 = v9 / ([(MultiwaySegment *)self RTPeriod]* v10) * 100.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = MEMORY[0x277CCABA8];
  v13 = round(v11);

  return [v12 numberWithDouble:v13];
}

- (id)calculateFramerate:(id)framerate sumKey:(id)key counterKey:(id)counterKey
{
  [objc_msgSend(framerate objectForKeyedSubscript:{key), "doubleValue"}];
  v9 = v8;
  LODWORD(counterKey) = [objc_msgSend(framerate objectForKeyedSubscript:{counterKey), "intValue"}];
  v10 = [(MultiwaySegment *)self RTPeriod]* counterKey;
  if (v10)
  {
    v11 = (v9 * 1000.0 / v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x277CCABA8];

  return [v12 numberWithUnsignedInt:v11];
}

- (void)updateNetworkSendResultStats:(id)stats
{
  if ([stats objectForKeyedSubscript:@"PSSCTR"])
  {
    self->_packetSendSuccessCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"PSSCTR", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"PSFCTR"])
  {
    self->_packetSendFailureCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"PSFCTR", "intValue"}];
  }
}

- (void)updateSegmentStatsWifiTx:(id)tx withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes
{
  lastReportedTotalWifiTxDataBytes = [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
  var2 = bytes->var2;
  if (lastReportedTotalWifiTxDataBytes <= var2)
  {
    v9 = var2 - [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
    var2 = v9 + [(UplinkSegment *)self totalWifiTxDataBytes];
  }

  [(UplinkSegment *)self setTotalWifiTxDataBytes:var2];
  [(UplinkSegment *)self setLastReportedTotalWifiTxDataBytes:bytes->var2];
  if ([tx objectForKeyedSubscript:@"NWQualityLossTxAvg"])
  {
    [objc_msgSend(tx objectForKeyedSubscript:{@"NWQualityLossTxAvg", "floatValue"}];
    [(VCHistogram *)[(UplinkSegment *)self wifiQualityScoreLossTx] addValue:(v10 * 10.0)];
  }

  if ([tx objectForKeyedSubscript:@"NWQualityChannelAvg"])
  {
    [objc_msgSend(tx objectForKeyedSubscript:{@"NWQualityChannelAvg", "floatValue"}];
    [(VCHistogram *)[(UplinkSegment *)self wifiQualityScoreChannel] addValue:(v11 * 10.0)];
  }

  if ([tx objectForKeyedSubscript:@"NWQualityDelayTxAvg"])
  {
    [objc_msgSend(tx objectForKeyedSubscript:{@"NWQualityDelayTxAvg", "floatValue"}];
    v13 = v12;
    wifiQualityScoreDelayTx = [(UplinkSegment *)self wifiQualityScoreDelayTx];

    [(VCHistogram *)wifiQualityScoreDelayTx addValue:(v13 * 10.0)];
  }
}

- (void)collectStreamQualityAggregator:(id)aggregator
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR(7u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v33 = v6;
      v34 = 2080;
      v35 = "[UplinkSegment collectStreamQualityAggregator:]";
      v36 = 1024;
      v37 = 4529;
      v38 = 1024;
      v39 = segmentStreamGroups;
      v40 = 2112;
      v41 = [v5 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v18 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v17 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v9;
        v10 = *(*(&v26 + 1) + 8 * v9);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v20 = [(NSMutableDictionary *)self->_streamQualityAggregator objectForKeyedSubscript:v10];
        v11 = [v20 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v21 = *v23;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v23 != v21)
              {
                objc_enumerationMutation(v20);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamQualityAggregator objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", v14}];
              [aggregator setObject:-[UplinkSegment calculateFramerate:sumKey:counterKey:](self forKeyedSubscript:{"calculateFramerate:sumKey:counterKey:", v15, @"encodedVideoFrameSum", @"encodedVideoFrameCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"VTEFR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateFramerate:sumKey:counterKey:](self forKeyedSubscript:{"calculateFramerate:sumKey:counterKey:", v15, @"capturedVideoFrameSum", @"capturedVideoFrameCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"VTCFR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateFramerate:sumKey:counterKey:](self forKeyedSubscript:{"calculateFramerate:sumKey:counterKey:", v15, @"capturedVideoIdleFrameSum", @"capturedVideoIdleFrameCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"ITFR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"totalVideoSendBitrateSum", @"totalVideoSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVTSBR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"totalMetadataOverheadSendBitrateSum", @"totalMetadataSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"VTAMDO", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"videoMediaSendBitrateSum", @"videoMediaSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVMSBR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"videoHeaderSendBitrateSum", @"videoHeaderSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVHSBR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateBitrate:sumKey:counterKey:](self forKeyedSubscript:{"calculateBitrate:sumKey:counterKey:", v15, @"videoFECSendBitrateSum", @"videoFECSendBitrateCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"AVFSBR", v10, v14)}];
              [aggregator setObject:-[UplinkSegment calculateAverageWithCounter:sumKey:counterKey:](self forKeyedSubscript:{"calculateAverageWithCounter:sumKey:counterKey:", v15, @"VPS", @"videoPacketSentCounter", objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@_%@", @"PPS", v10, v14)}];
            }

            v12 = [v20 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        v9 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }
}

- (void)collectStreamTemporalStats:(id)stats
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v19 = v4;
      v20 = 2080;
      v21 = "[UplinkSegment collectStreamTemporalStats:]";
      v22 = 1024;
      v23 = 4566;
      v24 = 1024;
      v25 = segmentStreamGroups;
      v26 = 2112;
      v27 = [v3 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        [stats setObject:-[NSMutableDictionary objectForKeyedSubscript:](self->super._activeTemporalTiersBitmapStreams forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v13 + 1) + 8 * i)), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"VTXTT", *(*(&v13 + 1) + 8 * i))}];
      }

      v8 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)addCellByteCountStats:(id)stats
{
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellTxDataBytes), 4, &unk_284FA5468), @"SCTXDB"}];
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalCellDupTxDataBytes), 4, &unk_284FA5468), @"SCDTXDB"}];
  [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedLongLong:", self->_totalUsedCellBudgetTxDataBytes), 4, &unk_284FA5468), @"SUCBTXDB"}];
  v5 = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:maxAllowedValue:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:maxAllowedValue:", [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalWifiTxDataBytes], 4, &unk_284FA5468);

  [stats setObject:v5 forKeyedSubscript:@"SWTXDB"];
}

- (void)addSegmentWRMReportStats:(id)stats
{
  v60 = *MEMORY[0x277D85DE8];
  wrmLinkTypeSuggestion = self->_wrmLinkTypeSuggestion;
  if (wrmLinkTypeSuggestion)
  {
    [stats setObject:wrmLinkTypeSuggestion forKeyedSubscript:@"WRMLTS"];
  }

  wrmLinkTypeChangeReasonCode = self->_wrmLinkTypeChangeReasonCode;
  if (wrmLinkTypeChangeReasonCode)
  {
    [stats setObject:wrmLinkTypeChangeReasonCode forKeyedSubscript:@"WRMLTCRC"];
  }

  wrmLinkTypeWifiRSSI = self->_wrmLinkTypeWifiRSSI;
  if (wrmLinkTypeWifiRSSI)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiRSSI, 3), @"WRMLTCWRSSI"}];
  }

  wrmLinkTypeWifiSNR = self->_wrmLinkTypeWifiSNR;
  if (wrmLinkTypeWifiSNR)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiSNR, 3), @"WRMLTCWSNR"}];
  }

  wrmLinkTypeWifiCCA = self->_wrmLinkTypeWifiCCA;
  if (wrmLinkTypeWifiCCA)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiCCA, 3), @"WRMLTCWCCA"}];
  }

  wrmLinkTypeWifiPacketLoss = self->_wrmLinkTypeWifiPacketLoss;
  if (wrmLinkTypeWifiPacketLoss)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeWifiPacketLoss, 3), @"WRMLTCWPL"}];
  }

  wrmLinkTypeCellSignalStrength = self->_wrmLinkTypeCellSignalStrength;
  if (wrmLinkTypeCellSignalStrength)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellSignalStrength, 3), @"WRMLTCCSS"}];
  }

  wrmLinkTypeCellSignalBar = self->_wrmLinkTypeCellSignalBar;
  if (wrmLinkTypeCellSignalBar)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellSignalBar, 3), @"WRMLTCCSB"}];
  }

  wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;
  if (wrmLinkTypeCellServingCellType)
  {
    [stats setObject:+[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils forKeyedSubscript:{"safeRoundOffNumber:toSignificantDigits:", wrmLinkTypeCellServingCellType, 3), @"WRMLTCCSCT"}];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR(8u);
    v15 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_wrmLinkTypeSuggestion;
        v17 = self->_wrmLinkTypeChangeReasonCode;
        v18 = self->_wrmLinkTypeWifiRSSI;
        v19 = self->_wrmLinkTypeWifiSNR;
        v20 = self->_wrmLinkTypeWifiCCA;
        v21 = self->_wrmLinkTypeWifiPacketLoss;
        v22 = self->_wrmLinkTypeCellSignalStrength;
        v23 = self->_wrmLinkTypeCellSignalBar;
        v24 = self->_wrmLinkTypeCellServingCellType;
        *buf = 136318210;
        v35 = v14;
        v36 = 2080;
        v37 = "[UplinkSegment addSegmentWRMReportStats:]";
        v38 = 1024;
        v39 = 4608;
        v40 = 2112;
        selfCopy2 = self;
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v17;
        v46 = 2112;
        v47 = v18;
        v48 = 2112;
        v49 = v19;
        v50 = 2112;
        v51 = v20;
        v52 = 2112;
        v53 = v21;
        v54 = 2112;
        v55 = v22;
        v56 = 2112;
        v57 = v23;
        v58 = 2112;
        v59 = v24;
        _os_log_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding WRM metrics to uplink segment report=%@ wrmLinkTypeSuggestion=%@ wrmLinkTypeChangeReasonCode=%@ wrmLinkTypeWifiRSSI=%@  wrmLinkTypeWifiSNR=%@ _currentSegment.wrmLinkTypeWifiCCA=%@ wrmLinkTypeWifiPacketLoss=%@ wrmLinkTypeCellSignalStrength=%@ wrmLinkTypeCellSignalBar=%@ wrmLinkTypeCellServingCellType=%@", buf, 0x80u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v25 = self->_wrmLinkTypeSuggestion;
      v26 = self->_wrmLinkTypeChangeReasonCode;
      v27 = self->_wrmLinkTypeWifiRSSI;
      v28 = self->_wrmLinkTypeWifiSNR;
      v29 = self->_wrmLinkTypeWifiCCA;
      v30 = self->_wrmLinkTypeWifiPacketLoss;
      v31 = self->_wrmLinkTypeCellSignalStrength;
      v32 = self->_wrmLinkTypeCellSignalBar;
      v33 = self->_wrmLinkTypeCellServingCellType;
      *buf = 136318210;
      v35 = v14;
      v36 = 2080;
      v37 = "[UplinkSegment addSegmentWRMReportStats:]";
      v38 = 1024;
      v39 = 4608;
      v40 = 2112;
      selfCopy2 = self;
      v42 = 2112;
      v43 = v25;
      v44 = 2112;
      v45 = v26;
      v46 = 2112;
      v47 = v27;
      v48 = 2112;
      v49 = v28;
      v50 = 2112;
      v51 = v29;
      v52 = 2112;
      v53 = v30;
      v54 = 2112;
      v55 = v31;
      v56 = 2112;
      v57 = v32;
      v58 = 2112;
      v59 = v33;
      _os_log_debug_impl(&dword_23D4DF000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Adding WRM metrics to uplink segment report=%@ wrmLinkTypeSuggestion=%@ wrmLinkTypeChangeReasonCode=%@ wrmLinkTypeWifiRSSI=%@  wrmLinkTypeWifiSNR=%@ _currentSegment.wrmLinkTypeWifiCCA=%@ wrmLinkTypeWifiPacketLoss=%@ wrmLinkTypeCellSignalStrength=%@ wrmLinkTypeCellSignalBar=%@ wrmLinkTypeCellServingCellType=%@", buf, 0x80u);
    }
  }
}

- (void)addSmartBrakeStats:(id)stats
{
  if (self->_isSmartBrakeHistogramPopulated)
  {
    [stats setObject:-[VCHistogram description](self->_smartBrakeDuration forKeyedSubscript:{"description"), @"SBCGSTDRTN"}];
    [stats setObject:-[VCHistogram description](self->_smartBrakeTargetBitrateStart forKeyedSubscript:{"description"), @"SBTTXRS"}];
    [stats setObject:-[VCHistogram description](self->_smartBrakeBandwidthStart forKeyedSubscript:{"description"), @"SBBWES"}];
    [stats setObject:-[VCHistogram description](self->_smartBrakeBandwidthEnd forKeyedSubscript:{"description"), @"SBBWEE"}];
    [stats setObject:-[VCHistogram description](self->_smartBrakeTargetBitrateAfter5 forKeyedSubscript:{"description"), @"SBTTXR5"}];
    [stats setObject:-[VCHistogram description](self->_smartBrakeTargetBitrateAfter15 forKeyedSubscript:{"description"), @"SBTTXR15"}];
    v6 = [(VCHistogram *)self->_smartBrakeTargetBitrateAfter30 description];

    [stats setObject:v6 forKeyedSubscript:@"SBTTXR30"];
  }
}

- (void)addCelltechTelemetryToDictionary:(id)dictionary
{
  v5.receiver = self;
  v5.super_class = UplinkSegment;
  [(MultiwaySegment *)&v5 addCelltechTelemetryToDictionary:?];
  if ([(MultiwaySegment *)self maxNegotiatedUplinkBitrate])
  {
    [dictionary setObject:self->super._maxNegotiatedUplinkBitrate forKeyedSubscript:@"MNUBRT"];
  }

  if (self->super._maxNegotiatedUplinkBitrate_Alternate)
  {
    [dictionary setObject:self->super._maxNegotiatedUplinkBitrate_Alternate forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"MNUBRT", @"A"}];
  }
}

- (void)addPerStreamGroupStatsToDictionary:(id)dictionary
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = [VCAggregatorUtils validBitmapIndices:self->super._segmentStreamGroups size:11];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR(7u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      segmentStreamGroups = self->super._segmentStreamGroups;
      *buf = 136316162;
      v57 = v6;
      v58 = 2080;
      v59 = "[UplinkSegment addPerStreamGroupStatsToDictionary:]";
      v60 = 1024;
      v61 = 4638;
      v62 = 1024;
      v63 = segmentStreamGroups;
      v64 = 2112;
      v65 = [v5 componentsJoinedByString:{@", "}];
      _os_log_impl(&dword_23D4DF000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d segmentStreamGroups=%u streamGroups=%@", buf, 0x2Cu);
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = [v5 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v49)
  {
    v48 = *v52;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v50 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:v10];
        if ([v10 unsignedIntValue] != 2 && objc_msgSend(v10, "unsignedIntValue") != 4 && objc_msgSend(v10, "unsignedIntValue") != 6)
        {
          goto LABEL_47;
        }

        if (v10)
        {
          v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AANTBR", v10];
          if (!v11)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v11 = @"AANTBR";
        }

        if (self->super._adjustedDuration)
        {
          v12 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v12 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v12), v11}];
        if (!v10)
        {
          v14 = @"AAMTBR";
          goto LABEL_23;
        }

LABEL_20:
        v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAMTBR", v10];
        if (!v13)
        {
          goto LABEL_27;
        }

        v14 = v13;
LABEL_23:
        if (self->super._adjustedDuration)
        {
          v15 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioMediaBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v15 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v15), v14}];
        if (!v10)
        {
          v17 = @"AAEMTBR";
          goto LABEL_30;
        }

LABEL_27:
        v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AAEMTBR", v10];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = v16;
LABEL_30:
        if (self->super._adjustedDuration)
        {
          [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioMediaTxNoRedBitrate"}];
          v19 = (v18 / self->super._adjustedDuration);
        }

        else
        {
          v19 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v19), v17}];
LABEL_34:
        [dictionary setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierBundling_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"AATBH_A", v10)}];
        [dictionary setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierCodecBitrate_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"TAMBR_A", v10)}];
        [dictionary setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierCodecPayload_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"TAPAY_A", v10)}];
        [dictionary setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierREDPayload_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"REDNPU_A", v10)}];
        [dictionary setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierREDMaxDelay_Alternate"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"REDMD_A", v10)}];
        if (!v10)
        {
          v20 = @"AARTBR";
LABEL_38:
          if (self->super._adjustedDuration)
          {
            v21 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageAudioRedTxBitrate"}] / self->super._adjustedDuration;
          }

          else
          {
            v21 = 0;
          }

          [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v21), v20}];
          goto LABEL_42;
        }

        v20 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AARTBR", v10];
        if (v20)
        {
          goto LABEL_38;
        }

LABEL_42:
        [dictionary setObject:objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats forKeyedSubscript:{"objectForKeyedSubscript:", v10), "audioTierChangeHistogram"), "description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"AATCC", v10)}];
        if (v10)
        {
          v22 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPULAP", v10];
          if (!v22)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v22 = @"RTPULAP";
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v10), "totalRTPUplinkIngressAudioPackets")), v22}];
LABEL_47:
        if ([v10 unsignedIntValue] != 1 && objc_msgSend(v10, "unsignedIntValue") != 3 && objc_msgSend(v10, "unsignedIntValue") != 5 && objc_msgSend(v10, "unsignedIntValue") != 7 && objc_msgSend(v10, "unsignedIntValue") != 8 && objc_msgSend(v10, "unsignedIntValue") != 10)
        {
          goto LABEL_110;
        }

        [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "videoTxFecData"), "updateReport:withStreamGroup:", dictionary, v10}];
        if (v10)
        {
          v23 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVTSBR", v10];
          if (!v23)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v23 = @"AVTSBR";
        }

        if (self->super._adjustedDuration)
        {
          v24 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v24 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v24), v23}];
        if (!v10)
        {
          v26 = @"AVMSBR";
          goto LABEL_64;
        }

LABEL_61:
        v25 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVMSBR", v10];
        if (!v25)
        {
          goto LABEL_68;
        }

        v26 = v25;
LABEL_64:
        if (self->super._adjustedDuration)
        {
          v27 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoTxMediaBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v27 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v27), v26}];
        if (!v10)
        {
          v29 = @"AVHSBR";
          goto LABEL_71;
        }

LABEL_68:
        v28 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVHSBR", v10];
        if (!v28)
        {
          goto LABEL_75;
        }

        v29 = v28;
LABEL_71:
        if (self->super._adjustedDuration)
        {
          v30 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoTxHeaderBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v30 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v30), v29}];
        if (!v10)
        {
          v32 = @"AVFSBR";
          goto LABEL_78;
        }

LABEL_75:
        v31 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AVFSBR", v10];
        if (!v31)
        {
          goto LABEL_82;
        }

        v32 = v31;
LABEL_78:
        if (self->super._adjustedDuration)
        {
          v33 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "averageVideoTxFecBitrate"}] / self->super._adjustedDuration;
        }

        else
        {
          v33 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v33), v32}];
LABEL_82:
        [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "firResponseTime"), "updateReport:withStreamGroup:", dictionary, v10}];
        [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "transmitterAVHostTimeData"), "updateReport:withStreamGroup:", dictionary, v10}];
        if (v10)
        {
          v34 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RTPULVP", v10];
          if (v34)
          {
            [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v10), "totalRTPUplinkIngressVideoPackets")), v34}];
          }

          v35 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTIDRS", v10];
          if (!v35)
          {
LABEL_89:
            v36 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTIDRSR", v10];
            if (!v36)
            {
              goto LABEL_96;
            }

            goto LABEL_92;
          }
        }

        else
        {
          [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", 0), "totalRTPUplinkIngressVideoPackets")), @"RTPULVP"}];
          v35 = @"VTIDRS";
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats, "objectForKeyedSubscript:", v10), "idrSentCount")), v35}];
        if (v10)
        {
          goto LABEL_89;
        }

        v36 = @"VTIDRSR";
LABEL_92:
        if (self->super._adjustedDuration)
        {
          v37 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_streamGroupStats objectForKeyedSubscript:{v10), "idrSentCount"}] * 1000.0;
          adjustedDuration = self->super._adjustedDuration;
          v39 = (v37 / ([(MultiwaySegment *)self RTPeriod]* adjustedDuration));
        }

        else
        {
          v39 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v39), v36}];
        if (!v10)
        {
          v40 = @"VTCFR";
          goto LABEL_99;
        }

LABEL_96:
        v40 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTCFR", v10];
        if (!v40)
        {
          goto LABEL_103;
        }

LABEL_99:
        if ([v50 videoFrameCaptureReportCount])
        {
          v41 = [v50 videoFrameCapturedCounter] * 1000.0;
          videoFrameCaptureReportCount = [v50 videoFrameCaptureReportCount];
          v43 = (v41 / (videoFrameCaptureReportCount * [(MultiwaySegment *)self RTPeriod]));
        }

        else
        {
          v43 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v43), v40}];
        if (v10)
        {
LABEL_103:
          v44 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VTEFR", v10];
          if (!v44)
          {
            goto LABEL_110;
          }

          goto LABEL_106;
        }

        v44 = @"VTEFR";
LABEL_106:
        if ([v50 encodedFrameReportedCount])
        {
          v45 = [v50 encodedFrameSum] * 1000.0;
          encodedFrameReportedCount = [v50 encodedFrameReportedCount];
          v47 = (v45 / (encodedFrameReportedCount * [(MultiwaySegment *)self RTPeriod]));
        }

        else
        {
          v47 = 0;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v47), v44}];
LABEL_110:
        [(UplinkSegment *)self addPerStreamGroupRTXStatsToDictionary:dictionary streamGroup:v10];
      }

      v49 = [v5 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v49);
  }
}

- (void)addPerStreamGroupRTXStatsToDictionary:(id)dictionary streamGroup:(id)group
{
  v7 = [(NSMutableDictionary *)self->_streamGroupStats objectForKeyedSubscript:group];
  if (!v7)
  {
    [UplinkSegment addPerStreamGroupRTXStatsToDictionary:streamGroup:];
    return;
  }

  v8 = v7;
  if (*(v7 + 8) != 1)
  {
    return;
  }

  group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRQCNT", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 16)), group}];
  group2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKFLCNT", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 24)), group2}];
  group3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKCHCNT", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 32)), group3}];
  group4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKCMCNT", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 40)), group4}];
  group5 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRCNT", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 48)), group5}];
  group6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNRRC", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v8 + 56)), group6}];
  group7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"UNRRMC", group];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedShort:", *(v8 + 64)), group7}];
  v16 = @"ULNACKRQRATE";
  if (group && (v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRQRATE", group]) == 0 || ((adjustedDuration = self->super._adjustedDuration, !adjustedDuration) ? (v18 = 0) : (v18 = *(v8 + 16) / adjustedDuration), objc_msgSend(dictionary, "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", v18), v16), group))
  {
    group8 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKFLRATE", group];
    if (!group8)
    {
      goto LABEL_16;
    }

    v20 = group8;
  }

  else
  {
    v20 = @"ULNACKFLRATE";
  }

  v21 = self->super._adjustedDuration;
  if (v21)
  {
    v22 = *(v8 + 24) / v21;
  }

  else
  {
    v22 = 0;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v22), v20}];
  if (!group)
  {
    v24 = @"ULNACKCHRATE";
    goto LABEL_19;
  }

LABEL_16:
  group9 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKCHRATE", group];
  if (!group9)
  {
    goto LABEL_23;
  }

  v24 = group9;
LABEL_19:
  v25 = self->super._adjustedDuration;
  if (v25)
  {
    v26 = *(v8 + 32) / v25;
  }

  else
  {
    v26 = 0;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v26), v24}];
  if (!group)
  {
    v28 = @"ULNACKNRRATE";
    goto LABEL_26;
  }

LABEL_23:
  group10 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRRATE", group];
  if (!group10)
  {
    goto LABEL_30;
  }

  v28 = group10;
LABEL_26:
  v29 = self->super._adjustedDuration;
  if (v29)
  {
    v30 = *(v8 + 48) / v29;
  }

  else
  {
    v30 = 0;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v30), v28}];
  if (!group)
  {
    v32 = @"ULNACKRPRATE";
    goto LABEL_33;
  }

LABEL_30:
  group11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRPRATE", group];
  if (!group11)
  {
    goto LABEL_37;
  }

  v32 = group11;
LABEL_33:
  v33 = self->super._adjustedDuration;
  if (v33)
  {
    v34 = *(v8 + 56) / v33;
  }

  else
  {
    v34 = 0;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v34), v32}];
  if (!group)
  {
    v36 = @"ULNACKNRRATE";
    goto LABEL_40;
  }

LABEL_37:
  group12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRRATE", group];
  if (!group12)
  {
    goto LABEL_44;
  }

  v36 = group12;
LABEL_40:
  v37 = self->super._adjustedDuration;
  if (v37)
  {
    v38 = *(v8 + 48) / v37;
  }

  else
  {
    v38 = 0;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v38), v36}];
  if (!group)
  {
    v40 = @"ULNACKNRRATE";
    goto LABEL_47;
  }

LABEL_44:
  group13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKNRRATE", group];
  if (group13)
  {
    v40 = group13;
LABEL_47:
    v41 = self->super._adjustedDuration;
    if (v41)
    {
      v42 = *(v8 + 48) / v41;
    }

    else
    {
      v42 = 0;
    }

    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", v42), v40}];
  }

  [dictionary setObject:objc_msgSend(*(v8 + 72) forKeyedSubscript:{"description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"ULNACKAVGRESP", group)}];
  [dictionary setObject:objc_msgSend(*(v8 + 80) forKeyedSubscript:{"description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"ULNACKAVGLATE", group)}];
  [dictionary setObject:objc_msgSend(*(v8 + 88) forKeyedSubscript:{"description"), objc_msgSend(MEMORY[0x277CCACA0], "stringWithFormat:", @"%@_%@", @"ULNACKMBR", group)}];
  group14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"ULNACKRBR", group];
  v44 = [*(v8 + 96) description];

  [dictionary setObject:v44 forKeyedSubscript:group14];
}

- (void)addBIFStatsToDictionary:(id)dictionary
{
  if (self->super._shouldReportBIFPercentage)
  {
    v11 = v3;
    adjustedDuration = self->super._adjustedDuration;
    if (adjustedDuration)
    {
      v9 = 10000 * self->super._bifAboveThresholdCount / adjustedDuration;
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{v9, v4, v11, v5}];

    [dictionary setObject:v10 forKeyedSubscript:@"BIFCngP"];
  }
}

- (void)updateAdaptiveLearningSegment
{
  OUTLINED_FUNCTION_50(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (unsigned)audioFlushPercent
{
  audioFlushPacketCount = self->_audioFlushPacketCount;
  audioSentPacketCount = self->_audioSentPacketCount;
  if (audioFlushPacketCount > audioSentPacketCount)
  {
    self->_audioSentPacketCount = audioFlushPacketCount;
    v4 = self->_audioFlushPacketCount;
    return 10000 * v4 / audioFlushPacketCount;
  }

  v4 = self->_audioFlushPacketCount;
  audioFlushPacketCount = self->_audioSentPacketCount;
  if (audioSentPacketCount)
  {
    return 10000 * v4 / audioFlushPacketCount;
  }

  return 0;
}

- (void)updateUplinkSegmentStats:(id)stats withSegmentBytes:(tagVCAggregatorFaceTimeSegmentStatsBytes *)bytes
{
  lastReportedTotalCellDupTxDataBytes = [(UplinkSegment *)self lastReportedTotalCellDupTxDataBytes];
  var7 = bytes->var7;
  if (lastReportedTotalCellDupTxDataBytes <= var7)
  {
    v8 = var7 - [(UplinkSegment *)self lastReportedTotalCellDupTxDataBytes];
    var7 = v8 + [(UplinkSegment *)self totalCellDupTxDataBytes];
  }

  [(UplinkSegment *)self setTotalCellDupTxDataBytes:var7];
  [(UplinkSegment *)self setLastReportedTotalCellDupTxDataBytes:bytes->var7];
  lastReportedTotalUsedCellBudgetTxDataBytes = [(UplinkSegment *)self lastReportedTotalUsedCellBudgetTxDataBytes];
  var5 = bytes->var5;
  if (lastReportedTotalUsedCellBudgetTxDataBytes <= var5)
  {
    v11 = var5 - [(UplinkSegment *)self lastReportedTotalUsedCellBudgetTxDataBytes];
    var5 = v11 + [(UplinkSegment *)self totalUsedCellBudgetTxDataBytes];
  }

  [(UplinkSegment *)self setTotalUsedCellBudgetTxDataBytes:var5];
  [(UplinkSegment *)self setLastReportedTotalUsedCellBudgetTxDataBytes:bytes->var5];
  lastReportedTotalCellTxDataBytes = [(UplinkSegment *)self lastReportedTotalCellTxDataBytes];
  var0 = bytes->var0;
  if (lastReportedTotalCellTxDataBytes <= bytes->var0)
  {
    v14 = var0 - [(UplinkSegment *)self lastReportedTotalCellTxDataBytes];
    var0 = v14 + [(UplinkSegment *)self totalCellTxDataBytes];
  }

  [(UplinkSegment *)self setTotalCellTxDataBytes:var0];
  [(UplinkSegment *)self setLastReportedTotalCellTxDataBytes:bytes->var0];
  lastReportedTotalWifiTxDataBytes = [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
  var2 = bytes->var2;
  if (lastReportedTotalWifiTxDataBytes <= var2)
  {
    v17 = var2 - [(UplinkSegment *)self lastReportedTotalWifiTxDataBytes];
    var2 = v17 + [(UplinkSegment *)self totalWifiTxDataBytes];
  }

  [(UplinkSegment *)self setTotalWifiTxDataBytes:var2];
  v18 = bytes->var2;

  [(UplinkSegment *)self setLastReportedTotalWifiTxDataBytes:v18];
}

- (id)segmentReport
{
  v108[88] = *MEMORY[0x277D85DE8];
  if (self->super._hasReported)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR(7u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        segmentName = self->super._segmentName;
        *buf = 136315906;
        *&buf[4] = v3;
        *&buf[12] = 2080;
        *&buf[14] = "[UplinkSegment segmentReport]";
        *&buf[22] = 1024;
        LODWORD(v100) = 4798;
        WORD2(v100) = 2112;
        *(&v100 + 6) = segmentName;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Uplink segment=%@ has already been reported. Ignoring request...", buf, 0x26u);
      }
    }

    return 0;
  }

  if (self->super._duration <= 1)
  {
    [(MultiwaySegment *)self complete_and_release_nw_activity:2];
    return 0;
  }

  v97.receiver = self;
  v97.super_class = UplinkSegment;
  dispatchedAggregatedReportCommon = [(VCReportingCommon *)&v97 dispatchedAggregatedReportCommon];
  [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedChar:", -[UplinkSegment segmentReportingMode](self, "segmentReportingMode")), @"SSOPMODE"}];
  dynamicDupeLinkCount = self->super._dynamicDupeLinkCount;
  if (dynamicDupeLinkCount)
  {
    v8 = (self->super._plrTierTotalDelta / dynamicDupeLinkCount);
  }

  else
  {
    v8 = 0.0;
  }

  [-[MultiwaySegment delegate](self "delegate")];
  v10 = v9;
  v11 = 0;
  if (v9 > 0.0)
  {
    [-[MultiwaySegment delegate](self "delegate")];
    v11 = (v12 * 10000.0 / v10);
  }

  v88 = v11;
  delegate = self->super._delegate;
  v14 = [(NSString *)self->super._segmentName substringToIndex:3];
  [(UplinkSegment *)self updateAdaptiveLearningSegment];
  adjustedDuration = self->super._adjustedDuration;
  rTPeriod = [(MultiwaySegment *)self RTPeriod];
  if (self->_BBQueueTooLargeCount >= rTPeriod * adjustedDuration)
  {
    BBQueueTooLargeCount = rTPeriod * adjustedDuration;
  }

  else
  {
    BBQueueTooLargeCount = self->_BBQueueTooLargeCount;
  }

  BBRateTooLowCount = self->_BBRateTooLowCount;
  v19 = rTPeriod * adjustedDuration;
  if (BBRateTooLowCount >= rTPeriod * adjustedDuration)
  {
    BBRateTooLowCount = rTPeriod * adjustedDuration;
  }

  v86 = BBQueueTooLargeCount;
  v87 = BBRateTooLowCount;
  totalAudioPauseTime = self->_totalAudioPauseTime;
  v21 = self->super._adjustedDuration;
  v22 = ([(MultiwaySegment *)self RTPeriod]* v21);
  if (totalAudioPauseTime <= v22)
  {
    v24 = self->_totalAudioPauseTime;
  }

  else
  {
    v23 = self->super._adjustedDuration;
    v24 = ([(MultiwaySegment *)self RTPeriod]* v23);
  }

  videoFlushPacketCount = self->_videoFlushPacketCount;
  videoSentPacketCount = self->_videoSentPacketCount;
  if (videoFlushPacketCount >= videoSentPacketCount)
  {
    videoFlushPacketCount = self->_videoSentPacketCount;
  }

  v83 = videoFlushPacketCount;
  videoBasebandDropPacketCount = self->_videoBasebandDropPacketCount;
  if (videoBasebandDropPacketCount >= videoSentPacketCount)
  {
    videoBasebandDropPacketCount = self->_videoSentPacketCount;
  }

  v84 = videoBasebandDropPacketCount;
  if (self->_audioBasebandDropPacketCount >= self->_audioSentPacketCount)
  {
    audioSentPacketCount = self->_audioSentPacketCount;
  }

  else
  {
    audioSentPacketCount = self->_audioBasebandDropPacketCount;
  }

  v85 = audioSentPacketCount;
  v29 = self->super._adjustedDuration;
  if (v29)
  {
    LODWORD(v22) = self->_totalExtraTargetBitrate;
    *&v30 = *&v22 * 1000.0 / v29;
    v82 = *&v30;
    LODWORD(v30) = self->_overshootSendBitrate;
    *&v31 = v30 * 1000.0 / v29;
    v32 = *&v31;
    LODWORD(v31) = self->_undershootSendBitrate;
    *&v33 = v31 * 1000.0 / v29;
    v34 = *&v33;
    LODWORD(v33) = self->_overUtilizedBandwidth;
    *&v35 = v33 * 1000.0 / v29;
    LODWORD(v92) = v32;
    HIDWORD(v92) = *&v35;
    LODWORD(v35) = self->_underUtilizedBandwidth;
    LODWORD(v91) = v34;
    HIDWORD(v91) = (v35 * 1000.0 / v29);
    v36 = 10000 * self->super._ecnEnabledCount / v29;
    v89 = 10000 * self->super._networkCongestedCount / v29;
  }

  else
  {
    v36 = 0;
    v91 = 0;
    v92 = 0;
    v82 = 0;
    v89 = 0;
  }

  v37 = v19;
  v38 = self->super._dynamicDupeLinkCount;
  if (v38)
  {
    v39 = self->super._rttMeanTotalDelta / v38;
  }

  else
  {
    v39 = 0.0;
  }

  averageWireSendCounter = self->_averageWireSendCounter;
  if (averageWireSendCounter)
  {
    v41 = self->_averageWireSendBytes * 8.0;
    v90 = (v41 / (averageWireSendCounter * [(MultiwaySegment *)self RTPeriod]));
  }

  else
  {
    v90 = 0;
  }

  totalBaseBandTxRate = self->_totalBaseBandTxRate;
  v107[0] = @"RVER";
  v107[1] = @"CONFIG";
  v43 = self->super._segmentName;
  if (!v43)
  {
    v43 = &stru_284F80940;
  }

  v108[0] = &unk_284FA5480;
  v108[1] = v43;
  previousSegmentName = self->super._previousSegmentName;
  if (!previousSegmentName)
  {
    previousSegmentName = &stru_284F80940;
  }

  v108[2] = previousSegmentName;
  v107[2] = @"PREVCONFIG";
  v107[3] = @"STRMGRPS";
  v108[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._segmentStreamGroups];
  v107[4] = @"PREVSTRMGRPS";
  v108[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._previousSegmentStreamGroups];
  v107[5] = @"DRTN";
  v108[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment RTPeriod](self, "RTPeriod") * self->super._duration}];
  v107[6] = @"ATBR";
  v45 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageTargetBitrate];
  v108[6] = [v45 numberWithUnsignedInt:v46];
  v107[7] = @"TSBTS";
  v108[7] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->super._totalBytesSent];
  v107[8] = @"ARTT";
  v47 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageRoundTripTime];
  v108[8] = [v47 numberWithUnsignedInt:v48];
  v107[9] = @"TPSSCNT";
  v108[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalPacketsSent](self, "totalPacketsSent")}];
  v107[10] = @"TPRSCNT";
  v108[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalPacketsReceived](self, "totalPacketsReceived")}];
  v107[11] = @"NUMPARTS";
  v108[11] = [MEMORY[0x277CCABA8] numberWithDouble:v10];
  v107[12] = @"GNDLUP";
  v108[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v88];
  v107[13] = @"GNDLUCNT";
  v108[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(-[MultiwaySegment delegate](self, "delegate"), "numberOfWebParticipants")}];
  v107[14] = @"APLR";
  v49 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self packetLossRate];
  v108[14] = [v49 numberWithUnsignedInt:v50];
  v107[15] = @"STATBR";
  v108[15] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageTBRForSegment:](delegate, "shortTermAverageTBRForSegment:", v14)}];
  v107[16] = @"LTATBR";
  v108[16] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageTBRForSegment:](delegate, "longTermAverageTBRForSegment:", v14)}];
  v107[17] = @"LTAISBR";
  v108[17] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageISBRForSegment:](delegate, "longTermAverageISBRForSegment:", v14)}];
  v107[18] = @"STAISBR";
  v108[18] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageISBRForSegment:](delegate, "shortTermAverageISBRForSegment:", v14)}];
  v107[19] = @"PISBR";
  v108[19] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate previousISBRForSegment:](delegate, "previousISBRForSegment:", v14)}];
  v107[20] = @"LTASATXBR";
  v108[20] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageSATXBRForSegment:](delegate, "longTermAverageSATXBRForSegment:", v14)}];
  v107[21] = @"STASATXBR";
  v108[21] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageSATXBRForSegment:](delegate, "shortTermAverageSATXBRForSegment:", v14)}];
  v107[22] = @"LTASARBR";
  v108[22] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageSARBRForSegment:](delegate, "longTermAverageSARBRForSegment:", v14)}];
  v107[23] = @"SRASARBR";
  v108[23] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageSARBRForSegment:](delegate, "shortTermAverageSARBRForSegment:", v14)}];
  v107[24] = @"LTABWE";
  v108[24] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate longTermAverageBWEForSegment:](delegate, "longTermAverageBWEForSegment:", v14)}];
  v107[25] = @"STABWE";
  v108[25] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate shortTermAverageBWEForSegment:](delegate, "shortTermAverageBWEForSegment:", v14)}];
  v107[26] = @"SMLRN";
  v108[26] = [MEMORY[0x277CCABA8] numberWithInt:{-[SegmentStatsDelegate adaptiveLearningState](delegate, "adaptiveLearningState")}];
  v107[27] = @"ECNP";
  v108[27] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v36];
  v107[28] = @"ECT1Cnt";
  v108[28] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._ecnECT1Count];
  v107[29] = @"CECnt";
  v108[29] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._ecnCECount];
  v107[30] = @"NWCngP";
  v108[30] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v89];
  v107[31] = @"RTT";
  v108[31] = [(VCHistogram *)self->super._RTT description];
  v107[32] = @"PLR";
  v108[32] = [(VCHistogram *)self->super._PLR description];
  v107[33] = @"TBR";
  v108[33] = [(VCHistogram *)self->super._TBR description];
  v107[34] = @"LOCSW";
  v108[34] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment localSwitches](self, "localSwitches")}];
  v107[35] = @"SESSW";
  v108[35] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:{-[MultiwaySegment sessionSwitches](self, "sessionSwitches")}];
  v107[36] = @"CAMCENSTAGE";
  v108[36] = [MEMORY[0x277CCABA8] numberWithBool:self->_isCenterStageEnabled];
  v107[37] = @"CAMB";
  v108[37] = [MEMORY[0x277CCABA8] numberWithBool:self->_isPortraitBlurEnabled];
  v107[38] = @"TPSSCTR";
  v108[38] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_packetSendSuccessCounter];
  v107[39] = @"TPSFCTR";
  v108[39] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_packetSendFailureCounter];
  v107[40] = @"CMAV";
  v108[40] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{-[MultiwaySegment coreMotionActivityValue](self, "coreMotionActivityValue")}];
  v107[41] = @"CMAC";
  v108[41] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:{-[MultiwaySegment coreMotionActivityConfidence](self, "coreMotionActivityConfidence")}];
  v107[42] = @"AFP";
  v108[42] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[UplinkSegment audioFlushPercent](self, "audioFlushPercent")}];
  v107[43] = @"SARTT";
  v51 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageRoundTripTime];
  v108[43] = [v51 numberWithUnsignedInt:(v52 * 100.0)];
  v107[44] = @"SASBR";
  v53 = self->super._adjustedDuration;
  if (v53)
  {
    v54 = (self->_averageSendBitrate / v53 * 1000.0);
  }

  else
  {
    v54 = 0;
  }

  v108[44] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v54];
  v107[45] = @"SBR";
  v108[45] = [(VCHistogram *)self->_SBR description];
  v107[46] = @"SATXBR";
  v55 = MEMORY[0x277CCABA8];
  [(MultiwaySegment *)self averageTargetBitrate];
  v108[46] = [v55 numberWithUnsignedInt:v56];
  v107[47] = @"PCHADEL";
  v108[47] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->super._primaryConnHealthAllowedDelay], 2);
  v107[48] = @"PLRTIERDLT";
  v108[48] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v8], 3);
  v107[49] = @"VEBR";
  v108[49] = [(VCHistogram *)self->_videoEncodingBitrate description];
  v107[50] = @"TASP";
  v57 = self->super._adjustedDuration;
  if (v57)
  {
    v58 = (v24 / v57 * 10000.0);
  }

  else
  {
    v58 = 0;
  }

  v108[50] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v58];
  v107[51] = @"VFP";
  v59 = self->_videoSentPacketCount;
  if (v59)
  {
    v60 = (v83 / v59 * 10000.0);
  }

  else
  {
    v60 = 0;
  }

  v108[51] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v60];
  v107[52] = @"VBBDP";
  v61 = self->_videoSentPacketCount;
  if (v61)
  {
    v62 = (v84 / v61 * 10000.0);
  }

  else
  {
    v62 = 0;
  }

  v108[52] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v62];
  v107[53] = @"ABBDP";
  v63 = self->_audioSentPacketCount;
  if (v63)
  {
    v64 = (v85 / v63 * 10000.0);
  }

  else
  {
    v64 = 0;
  }

  v108[53] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
  v107[54] = @"BBNWP";
  v65 = self->super._adjustedDuration;
  if (v65)
  {
    v66 = 10000 * (self->_rateControlBasebandNotificationNWCount / v65);
  }

  else
  {
    v66 = 0;
  }

  v67 = v37;
  v108[54] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v66];
  v107[55] = @"BBQTL";
  if (v37)
  {
    v68 = (v86 / v67 * 10000.0);
  }

  else
  {
    v68 = 0;
  }

  v108[55] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v68];
  v107[56] = @"BBRTL";
  if (v37)
  {
    v69 = (v87 / v67 * 10000.0);
  }

  else
  {
    v69 = 0;
  }

  v108[56] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v69];
  v107[57] = @"MASI";
  v108[57] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(self->_maxAudioStallInterval * 100.0)];
  v107[58] = @"SRDMBL";
  v108[58] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalMBLRampDownCount](self, "totalMBLRampDownCount")}], 3);
  v107[59] = @"SSBWD";
  v108[59] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[MultiwaySegment totalSuddenBandwidthDropCount](self, "totalSuddenBandwidthDropCount")}], 3);
  v107[60] = @"TAPAY";
  v108[60] = [(VCHistogram *)self->_audioCodecPayload description];
  v107[61] = @"AATBH";
  v108[61] = [(VCHistogram *)self->_audioFrameBundling description];
  v107[62] = @"TAMBR";
  v108[62] = [(VCHistogram *)self->_audioMediaBitrate description];
  v107[63] = @"TRPBR";
  v108[63] = [(VCHistogram *)self->_redPayloadBitrate description];
  v107[64] = @"TVPAY";
  v108[64] = [(VCHistogram *)self->_videoCodecPayload description];
  v107[65] = @"TVMBR";
  v108[65] = [(VCHistogram *)self->_videoMediaBitrate description];
  v107[66] = @"AOVSBR";
  v108[66] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v92];
  v107[67] = @"AUNSBR";
  v108[67] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v91];
  v107[68] = @"AOVBWE";
  v108[68] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v92)];
  v107[69] = @"AUNBWE";
  v108[69] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:HIDWORD(v91)];
  v107[70] = @"RTTMEANDLT";
  v108[70] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:v39], 3);
  v107[71] = @"BSIDX";
  v108[71] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._bootstrapSampleIndex];
  v107[72] = @"REDMD";
  v108[72] = [(VCHistogram *)self->_redMaxDelay description];
  v107[73] = @"REDNPU";
  v108[73] = [(VCHistogram *)self->_redNumPayloadsUsed description];
  v107[74] = @"AWSB";
  v108[74] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v90];
  v107[75] = @"VTPULEP";
  v108[75] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPUplinkEgressMediaPackets];
  v107[76] = @"VTPULIP";
  v108[76] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVTPUplinkIngressMediaPackets];
  v107[77] = @"ATJC";
  v108[77] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_audioStreamTimestampJumpCount];
  v107[78] = @"ATJD";
  v108[78] = [(VCHistogram *)self->_audioStreamTimestampJumpDuration description];
  v107[79] = @"ATJM";
  v108[79] = [MEMORY[0x277CCABA8] numberWithUnsignedLong:self->_audioStreamTimestampJumpMax];
  v107[80] = @"WLTA";
  v108[80] = [(VCHistogram *)self->_wifiQualityScoreLossTx description];
  v107[81] = @"WDTA";
  v108[81] = [(VCHistogram *)self->_wifiQualityScoreDelayTx description];
  v107[82] = @"WCSA";
  v108[82] = [(VCHistogram *)self->_wifiQualityScoreChannel description];
  v107[83] = @"ABBR";
  v108[83] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:totalBaseBandTxRate / v67], 2);
  v107[84] = @"MAXBBR";
  v108[84] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->_maxBaseBandTxRate], 2);
  v107[85] = @"MINBBR";
  v108[85] = +[VCAggregatorUtils safeRoundOffNumber:toSignificantDigits:](VCAggregatorUtils, "safeRoundOffNumber:toSignificantDigits:", [MEMORY[0x277CCABA8] numberWithDouble:self->_minBaseBandTxRate], 2);
  v107[86] = @"ACSR";
  v108[86] = [(VCHistogram *)self->_cellStrengthRawBars description];
  v107[87] = @"FECHDRVER";
  v108[87] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->super._fecHeaderVersion];
  [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v108, v107, 88)}];
  [(VCReportingDistribution *)self->_cameraCaptureData updateReport:dispatchedAggregatedReportCommon];
  if (self->super._isOneToOneMode)
  {
    v105[0] = @"VCMQIAP";
    v106[0] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressAudioPackets];
    v105[1] = @"VCMQIVP";
    v106[1] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressVideoPackets];
    v105[2] = @"VCMQIP";
    v106[2] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressPackets];
    v105[3] = @"VCMQEAP";
    v106[3] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressAudioPackets];
    v105[4] = @"VCMQEVP";
    v106[4] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressVideoPackets];
    v105[5] = @"VCMQEP";
    v106[5] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressPackets];
    v105[6] = @"VCMQENDAP";
    v106[6] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressNonDupAudioPackets];
    v105[7] = @"VCMQENDVP";
    v106[7] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressNonDupVideoPackets];
    v105[8] = @"VCMQENDP";
    v106[8] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQEgressNonDupPackets];
    v105[9] = @"VCMQIQP";
    v106[9] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQIngressQueuedPackets];
    v105[10] = @"VCMQFP";
    v106[10] = [MEMORY[0x277CCABA8] numberWithUnsignedLongLong:self->_totalVCMQFlushedPackets];
    v105[11] = @"AExTXBR";
    v106[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v82];
    v105[12] = @"VCSECNLinkType";
    v106[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:self->_ecnLinkType];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v106, v105, 13)}];
    if ([(MultiwaySegment *)self linksWithMaxPacketHistory])
    {
      [dispatchedAggregatedReportCommon setObject:-[MultiwaySegment linksWithMaxPacketHistory](self forKeyedSubscript:{"linksWithMaxPacketHistory"), @"ULPH"}];
      [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", -[MultiwaySegment packetHistoryIndex](self, "packetHistoryIndex")), @"ULPI"}];
    }
  }

  [(MultiwaySegment *)self addCommonSegmentTelemetry:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addBIFStatsToDictionary:dispatchedAggregatedReportCommon];
  [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithBool:", -[MultiwaySegment isApplePersonalHotspot](self, "isApplePersonalHotspot")), @"PHS"}];
  activeConnectionRegistry = self->super._activeConnectionRegistry;
  if (activeConnectionRegistry)
  {
    [dispatchedAggregatedReportCommon setObject:activeConnectionRegistry forKeyedSubscript:@"ACAS"];
  }

  if (self->_isUplinkScreenEnabled)
  {
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isFullScreenCapture), @"FULLCAP"}];
  }

  if (self->super._mediaQueueSchedulePolicy)
  {
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:"), @"LMQSchP"}];
  }

  if (self->super._conversationTimeBase)
  {
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->super._startDate), @"StartDate"}];
    v71 = MEMORY[0x277CCABA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    [dispatchedAggregatedReportCommon setObject:objc_msgSend(v71 forKeyedSubscript:{"numberWithInt:", v72), @"EndDate"}];
  }

  if ([[(NSString *)self->super._segmentName substringFromIndex:2] hasPrefix:@"W"])
  {
    v103 = @"WiFi5GHz";
    v104 = [MEMORY[0x277CCABA8] numberWithInt:self->super._is5GHz];
    [dispatchedAggregatedReportCommon addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v104, &v103, 1)}];
  }

  lossPattern = self->super._lossPattern;
  *buf = self->super._fecStatsHolder;
  *&buf[8] = lossPattern;
  lossFecHistogram = self->super._lossFecHistogram;
  *&buf[16] = self->super._lossHistogram;
  v100 = lossFecHistogram;
  v101 = self->super._adjustedDuration;
  v102 = 0;
  [(SegmentStatsDelegate *)self->super._delegate addFECStats:dispatchedAggregatedReportCommon parameters:buf reportFrameSizeTelemetry:0 reportLevels:1];
  [(MultiwaySegment *)self addRateControlExperimentInfoToSegmentReport:dispatchedAggregatedReportCommon];
  [(MultiwaySegment *)self reportVCRCMLStats:dispatchedAggregatedReportCommon];
  if (self->super._nwActivity)
  {
    if (self->super._useNwActivitySubmitMetrics && self->super._isNWActivityReportingEnabled)
    {
      v75 = _CFXPCCreateXPCObjectFromCFObject();
      nw_activity_submit_metrics();
      xpc_release(v75);
    }

    [(MultiwaySegment *)self complete_and_release_nw_activity:2];
  }

  [(UplinkSegment *)self addCellByteCountStats:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self collectStreamQualityAggregator:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self collectStreamTemporalStats:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addSegmentWRMReportStats:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addMediaQueueStats:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addSmartBrakeStats:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addCelltechTelemetryToDictionary:dispatchedAggregatedReportCommon];
  [(MultiwaySegment *)self addQRServerTelemetryToDictionary:dispatchedAggregatedReportCommon];
  [(VCReportingCommon *)self addClientExperimentsToReport:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addPerStreamGroupStatsToDictionary:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self addVideoFeatureStatus:dispatchedAggregatedReportCommon];
  [(UplinkSegment *)self reportSpatialAudioSupport:dispatchedAggregatedReportCommon];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  thermalDataCollectors = self->_thermalDataCollectors;
  v77 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v93 objects:v98 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v94;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v94 != v79)
        {
          objc_enumerationMutation(thermalDataCollectors);
        }

        [*(*(&v93 + 1) + 8 * i) updateReport:dispatchedAggregatedReportCommon];
      }

      v78 = [(NSSet *)thermalDataCollectors countByEnumeratingWithState:&v93 objects:v98 count:16];
    }

    while (v78);
  }

  self->super._hasReported = 1;
  return dispatchedAggregatedReportCommon;
}

- (void)addVideoFeatureStatus:(id)status
{
  [VCAggregator addVideoFeatureStatus:self->super._centerStageStatus histogramKey:@"CSDUR" histogram:self->_centerStageDuration statusKey:@"CSFENB" report:status];
  [VCAggregator addVideoFeatureStatus:self->super._portraitModeStatus histogramKey:@"PMDUR" histogram:self->_portraitModeDuration statusKey:@"PMFENB" report:status];
  [VCAggregator addVideoFeatureStatus:self->super._studioLightStatus histogramKey:@"SLDUR" histogram:self->_studioLightDuration statusKey:@"SLFENB" report:status];
  v5 = [VCAggregator addVideoFeatureStatus:self->super._reactionsStatus histogramKey:@"REACDUR" histogram:self->_reactionActiveDuration statusKey:@"REFENB" report:status];
  [(VCDurationHistogram *)self->_eyeContactDuration finalize:micro(v5, v6)];
  [VCAggregator addVideoFeatureStatus:self->super._eyeContactStatus histogramKey:@"ECDUR" histogram:self->_eyeContactDuration statusKey:@"ECFENB" report:status];
  backgroundReplacementStatus = self->super._backgroundReplacementStatus;
  backgroundReplacementDuration = self->_backgroundReplacementDuration;

  [VCAggregator addVideoFeatureStatus:backgroundReplacementStatus histogramKey:@"BGRDUR" histogram:backgroundReplacementDuration statusKey:@"BGRFENB" report:status];
}

- (void)reportSpatialAudioSupport:(id)support
{
  v4 = [MEMORY[0x277CCABA8] numberWithChar:self->super._spatialAudioSupported];

  [support setObject:v4 forKeyedSubscript:@"SAFSUP"];
}

- (void)releaseWRMMetrics
{
  wrmLinkTypeCellServingCellType = self->_wrmLinkTypeCellServingCellType;
}

- (void)calculateUplinkTelemetry:(id)telemetry lastReportedAudioPauseTime:(double)time lastReportedVideoPacketSentCount:(double)count
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [telemetry objectForKeyedSubscript:sRTCReportingStreamCollection];
  if ([v7 count])
  {
    OUTLINED_FUNCTION_27();
    v12 = OUTLINED_FUNCTION_56(v8, v9, v10, v11);
    if (v12)
    {
      v13 = v12;
      v29 = 0;
      v28 = 0;
      v14 = 0;
      v15 = *v32;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v7);
          }

          v18 = [v7 objectForKeyedSubscript:*(v31 + 8 * i)];
          v19 = [objc_msgSend(v18 objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
          if (v19 == 1)
          {
            if ([v18 objectForKeyedSubscript:@"VTxRMedia"])
            {
              [objc_msgSend(v18 objectForKeyedSubscript:{@"VTxRMedia", "integerValue"}];
              OUTLINED_FUNCTION_46();
            }

            if ([OUTLINED_FUNCTION_36() objectForKeyedSubscript:?])
            {
              HIDWORD(v29) += [objc_msgSend(OUTLINED_FUNCTION_36() "objectForKeyedSubscript:"integerValue"")];
            }

            if ([v18 objectForKeyedSubscript:@"APT"])
            {
              [objc_msgSend(v18 objectForKeyedSubscript:{@"APT", "doubleValue"}];
              v16 = v16 + v21;
            }

            if (OUTLINED_FUNCTION_44())
            {
              v28 += [OUTLINED_FUNCTION_44() integerValue];
            }

            if (OUTLINED_FUNCTION_59())
            {
              LODWORD(v29) = v29 + [OUTLINED_FUNCTION_59() integerValue];
            }

            if ([v18 objectForKeyedSubscript:@"ATxR"])
            {
              v14 = v14 + [OUTLINED_FUNCTION_59() integerValue];
            }

            if ([OUTLINED_FUNCTION_36() objectForKeyedSubscript:?])
            {
              v14 = v14 + [objc_msgSend(OUTLINED_FUNCTION_36() "objectForKeyedSubscript:"integerValue"")];
            }

            v19 = OUTLINED_FUNCTION_59();
            if (v19)
            {
              v19 = -[VCHistogram addOnlyExactMatchingValue:](-[UplinkSegment videoCodecPayload](self, "videoCodecPayload"), "addOnlyExactMatchingValue:", [OUTLINED_FUNCTION_59() intValue]);
            }
          }
        }

        v13 = OUTLINED_FUNCTION_56(v19, v20, v30, v33);
      }

      while (v13);
      v22 = v28;
      v23 = v29;
      v24 = HIDWORD(v29);
    }

    else
    {
      v24 = 0;
      v14 = 0;
      v23 = 0;
      v16 = 0.0;
      v22 = 0.0;
    }

    [(UplinkSegment *)self totalAudioPauseTime];
    [(UplinkSegment *)self setTotalAudioPauseTime:v16 - time + v25];
    [(UplinkSegment *)self setVideoSentPacketCount:(v22 - count + [(UplinkSegment *)self videoSentPacketCount])];
    [(VCHistogram *)[(UplinkSegment *)self videoMediaBitrate] addValue:0];
    [(VCHistogram *)[(UplinkSegment *)self videoEncodingBitrate] addValue:v24];
    [(VCHistogram *)[(UplinkSegment *)self SBR] addValue:v14];
    [(UplinkSegment *)self averageSendBitrate];
    [(UplinkSegment *)self setAverageSendBitrate:v26 + v14];
    [(UplinkSegment *)self setIdrSentCount:[(UplinkSegment *)self idrSentCount]+ v23];
  }
}

- (void)calculateUplinkAudioTimestampJumps:(id)jumps
{
  OUTLINED_FUNCTION_58();
  v24 = v5;
  v7 = [v6 objectForKeyedSubscript:sRTCReportingStreamCollection];
  if ([v7 count])
  {
    if ([v7 countByEnumeratingWithState:OUTLINED_FUNCTION_27() objects:? count:?])
    {
      OUTLINED_FUNCTION_54();
      v8 = @"VCMSDirection";
      do
      {
        v9 = 0;
        do
        {
          if (*v28 != v4)
          {
            objc_enumerationMutation(v7);
          }

          v10 = [v7 objectForKeyedSubscript:*(v27 + 8 * v9)];
          v11 = [objc_msgSend(v10 objectForKeyedSubscript:{v8), "integerValue"}];
          if (v11 == 1)
          {
            if (OUTLINED_FUNCTION_68())
            {
              [objc_msgSend(v10 objectForKeyedSubscript:{v8), "integerValue"}];
              OUTLINED_FUNCTION_46();
            }

            v8 = @"VCASTimestampJumpMax";
            if (OUTLINED_FUNCTION_71())
            {
              v26 += [OUTLINED_FUNCTION_71() unsignedLongValue];
            }

            if ([v10 objectForKeyedSubscript:@"VCASTimestampJumpMax"])
            {
              v19 = [objc_msgSend(v10 objectForKeyedSubscript:{@"VCASTimestampJumpMax", "unsignedLongValue"}];
            }

            else
            {
              v19 = 0;
            }

            audioStreamTimestampJumpMax = [v24 audioStreamTimestampJumpMax];
            if (audioStreamTimestampJumpMax <= v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = audioStreamTimestampJumpMax;
            }

            v11 = [v24 setAudioStreamTimestampJumpMax:v21];
          }

          ++v9;
        }

        while (v3 != v9);
        v3 = OUTLINED_FUNCTION_32(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      while (v3);
      v22 = v26;
      v23 = v25;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    [v24 setAudioStreamTimestampJumpCount:{objc_msgSend(v24, "audioStreamTimestampJumpCount") + v23}];
    [objc_msgSend(v24 "audioStreamTimestampJumpDuration")];
  }

  OUTLINED_FUNCTION_57();
}

- (void)updateMediaBitratesWithTimeElapsed:andStats:.cold.1()
{
  OUTLINED_FUNCTION_51(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)updateMediaBitratesWithTimeElapsed:andStats:.cold.2()
{
  OUTLINED_FUNCTION_51(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)updateMediaBitratesWithTimeElapsed:andStats:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)updateAudioCodecAndMediaBitrateWithPayload:andCurrentTime:andStats:.cold.1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)updateAudioCodecAndMediaBitrateWithPayload:andCurrentTime:andStats:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)processTransmitterStats:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)processTransmitterStats:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)processUplinkRTXMetricsFromStreamData:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)processVideoTransmitterStreamData:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)processVideoTransmitterStreamData:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)processAudioTransmitterStreamData:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)processAudioTransmitterStreamData:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)addPerStreamGroupRTXStatsToDictionary:streamGroup:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end