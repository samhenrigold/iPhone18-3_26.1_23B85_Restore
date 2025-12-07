@interface VCAlgosStreamingScorer
- (VCAlgosStreamingScorer)initWithLaunchTime:(double)time;
- (double)finalizeScoreStreamingWithTime:(double)time;
- (double)scoreStreaming;
- (double)streamQuality;
- (void)addCallFailureWithTime:(double)time detailedErrorCode:(int)code;
- (void)addLargeGapErasureWithTime:(double)time largeGapErasureRate:(double)rate;
- (void)addStreamTierSwitchWithTime:(double)time;
- (void)addVideoStallWithStartTime:(double)time endStallTime:(double)stallTime;
- (void)dealloc;
- (void)endWithTime:(double)time streamType:(int)type;
- (void)scoreStreaming;
- (void)setVideoFramerate:(double)framerate;
- (void)setVideoResolutionWithTime:(double)time width:(int)width height:(int)height;
- (void)startWithTime:(double)time streamType:(int)type;
- (void)stopWithTime:(double)time streamType:(int)type;
- (void)updateRelativeTime:(double)time;
@end

@implementation VCAlgosStreamingScorer

- (VCAlgosStreamingScorer)initWithLaunchTime:(double)time
{
  v24 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = VCAlgosStreamingScorer;
  v4 = [(VCAlgosStreamingScorer *)&v13 init];
  if (v4)
  {
    if (objc_opt_class())
    {
      v4->_algosScore = objc_alloc_init(MEMORY[0x277D2CA40]);
    }

    v4->_launchTime = time;
    v4->_blockAlgosScoreLock._os_unfair_lock_opaque = 0;
    __asm { FMOV            V0.2D, #5.0 }

    *&v4->_resolutionPredictedMOS = _Q0;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR(7u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCAlgosStreamingScorer initWithLaunchTime:]";
        v18 = 1024;
        v19 = 90;
        v20 = 2048;
        v21 = v4;
        v22 = 2048;
        timeCopy = time;
        _os_log_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] init launchTime %f ", buf, 0x30u);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_blockAlgosScoreLock);

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  v3.receiver = self;
  v3.super_class = VCAlgosStreamingScorer;
  [(VCAlgosStreamingScorer *)&v3 dealloc];
}

- (void)updateRelativeTime:(double)time
{
  lastStreamTierSwitch = self->_lastStreamTierSwitch;
  if (lastStreamTierSwitch > 0.0)
  {
    self->_totalStopDuration = time - lastStreamTierSwitch + self->_totalStopDuration;
  }
}

- (void)startWithTime:(double)time streamType:(int)type
{
  v33 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didStopStream)
  {
    [(VCAlgosStreamingScorer *)self updateRelativeTime:time];
    [(VCAlgosStreamingScorer *)self relativeTime:time];
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR(7u);
      v10 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        launchTime = self->_launchTime;
        v15 = 136317186;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCAlgosStreamingScorer startWithTime:streamType:]";
        v19 = 1024;
        v20 = 126;
        v21 = 2048;
        selfCopy2 = self;
        v23 = 2048;
        timeCopy2 = time;
        v25 = 2048;
        v26 = v8;
        v27 = 2048;
        v28 = time - launchTime;
        v29 = 2048;
        v30 = v8 - launchTime;
        v31 = 1024;
        typeCopy = type;
        _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream resume time=%f relativeTime=%f timeSinceLaunch=%f relativeTimeSinceLaunch=%f streamType=%d", &v15, 0x54u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR(7u);
      v13 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = time - self->_launchTime;
        v15 = 136316674;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAlgosStreamingScorer startWithTime:streamType:]";
        v19 = 1024;
        v20 = 119;
        v21 = 2048;
        selfCopy2 = self;
        v23 = 2048;
        timeCopy2 = time;
        v25 = 2048;
        v26 = v14;
        v27 = 1024;
        LODWORD(v28) = type;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream start playTime=%f timeSinceLaunch=%f streamType=%d", &v15, 0x40u);
      }
    }

    if (self->_didStartStream)
    {
      [VCAlgosStreamingScorer startWithTime:streamType:];
      goto LABEL_12;
    }

    if (self->_didEndStream)
    {
      [VCAlgosStreamingScorer startWithTime:streamType:];
      goto LABEL_12;
    }

    [(NWSAlgosStreamScore *)self->_algosScore addStreamStart:self->_launchTime play:time];
  }

  self->_didEndStream = 0;
  *&self->_didStartStream = 1;
  self->_lastStreamTierSwitch = time;
LABEL_12:
  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
}

- (void)stopWithTime:(double)time streamType:(int)type
{
  v29 = *MEMORY[0x277D85DE8];
  [(VCAlgosStreamingScorer *)self relativeTime:?];
  v8 = v7;
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316674;
      v16 = v9;
      v17 = 2080;
      v18 = "[VCAlgosStreamingScorer stopWithTime:streamType:]";
      v19 = 1024;
      v20 = 139;
      v21 = 2048;
      selfCopy = self;
      v23 = 2048;
      timeCopy = time;
      v25 = 2048;
      v26 = v8;
      v27 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream stop with time %f relativeTime=%f streamType %d", &v15, 0x40u);
    }
  }

  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didStopStream)
  {
    [VCAlgosStreamingScorer stopWithTime:streamType:];
  }

  else if (self->_didEndStream)
  {
    [VCAlgosStreamingScorer stopWithTime:streamType:];
  }

  else if (self->_didStartStream)
  {
    [(VCAlgosStreamingScorer *)self relativeTime:self->_lastStreamTierSwitch];
    v12 = v11;
    algosScore = self->_algosScore;
    [(VCAlgosStreamingScorer *)self streamQuality];
    [(NWSAlgosStreamScore *)algosScore addStreamTierSwitch:v12 end:v8 quality:v14 weight:1.0];
    self->_didStopStream = 1;
    self->_lastStreamTierSwitch = time;
    ++self->_pendingScoringEventCount;
  }

  else
  {
    [VCAlgosStreamingScorer stopWithTime:streamType:];
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
}

- (void)endWithTime:(double)time streamType:(int)type
{
  v25 = *MEMORY[0x277D85DE8];
  [(VCAlgosStreamingScorer *)self relativeTime:?];
  v8 = v7;
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316674;
      v12 = v9;
      v13 = 2080;
      v14 = "[VCAlgosStreamingScorer endWithTime:streamType:]";
      v15 = 1024;
      v16 = 157;
      v17 = 2048;
      selfCopy = self;
      v19 = 2048;
      timeCopy = time;
      v21 = 2048;
      v22 = v8;
      v23 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] stream end with time %f relativeTime=%f streamType %d", &v11, 0x40u);
    }
  }

  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didEndStream)
  {
    [VCAlgosStreamingScorer endWithTime:streamType:];
  }

  else if (self->_didStartStream)
  {
    [(NWSAlgosStreamScore *)self->_algosScore addStreamEnd:v8];
    self->_didEndStream = 1;
    ++self->_pendingScoringEventCount;
  }

  else
  {
    [VCAlgosStreamingScorer endWithTime:streamType:];
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
}

- (void)addVideoStallWithStartTime:(double)time endStallTime:(double)stallTime
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = stallTime - time;
  if (stallTime - time >= 0.5)
  {
    [(VCAlgosStreamingScorer *)self relativeTime:time];
    v9 = v8;
    [(VCAlgosStreamingScorer *)self relativeTime:stallTime];
    v11 = v10;
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR(7u);
      v13 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136317186;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCAlgosStreamingScorer addVideoStallWithStartTime:endStallTime:]";
        v20 = 1024;
        v21 = 176;
        v22 = 2048;
        selfCopy = self;
        v24 = 2048;
        stallTimeCopy = stallTime;
        v26 = 2048;
        timeCopy = time;
        v28 = 2048;
        v29 = v9;
        v30 = 2048;
        v31 = v11;
        v32 = 2048;
        v33 = v5;
        _os_log_impl(&dword_23D4DF000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] add video stall endStallTime=%f startStallTime=%f relativeStartStallTime=%f relativeEndStallTime=%f deltaStallTime=%f", &v16, 0x58u);
      }
    }

    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (!self->_didStartStream || self->_didEndStream)
    {
      [VCAlgosStreamingScorer addVideoStallWithStartTime:endStallTime:];
    }

    else
    {
      algosScore = self->_algosScore;
      [(VCAlgosStreamingScorer *)self streamQuality];
      [(NWSAlgosStreamScore *)algosScore addStreamStall:&unk_284FA5358 end:v9 quality:v11 weight:v15 params:1.0];
      ++self->_pendingScoringEventCount;
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  }
}

- (void)addCallFailureWithTime:(double)time detailedErrorCode:(int)code
{
  v20 = *MEMORY[0x277D85DE8];
  if ((code - 234) >= 2 && code != 0)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v8;
        v12 = 2080;
        v13 = "[VCAlgosStreamingScorer addCallFailureWithTime:detailedErrorCode:]";
        v14 = 1024;
        v15 = 193;
        v16 = 2048;
        selfCopy = self;
        v18 = 1024;
        codeCopy = code;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Call failure with detailedErrorCode = %d", &v10, 0x2Cu);
      }
    }

    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (self->_didStartStream)
    {
      [(VCAlgosStreamingScorer *)self relativeTime:time];
      [NWSAlgosStreamScore addStreamFailure:"addStreamFailure:weight:" weight:?];
      ++self->_pendingScoringEventCount;
    }

    else
    {
      [VCAlgosStreamingScorer addCallFailureWithTime:detailedErrorCode:];
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  }
}

- (void)addLargeGapErasureWithTime:(double)time largeGapErasureRate:(double)rate
{
  v19 = *MEMORY[0x277D85DE8];
  if (rate >= 0.0001)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(7u);
      v8 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v7;
        v11 = 2080;
        v12 = "[VCAlgosStreamingScorer addLargeGapErasureWithTime:largeGapErasureRate:]";
        v13 = 1024;
        v14 = 209;
        v15 = 2048;
        selfCopy = self;
        v17 = 2048;
        rateCopy = rate;
        _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] add large gap erasure %f", &v9, 0x30u);
      }
    }

    os_unfair_lock_lock(&self->_blockAlgosScoreLock);
    if (!self->_didStartStream || self->_didEndStream)
    {
      [VCAlgosStreamingScorer addLargeGapErasureWithTime:largeGapErasureRate:];
    }

    else
    {
      [(VCAlgosStreamingScorer *)self relativeTime:time];
      [NWSAlgosStreamScore addStreamPenalty:"addStreamPenalty:amount:" amount:?];
      ++self->_pendingScoringEventCount;
    }

    os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  }
}

- (void)addStreamTierSwitchWithTime:(double)time
{
  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (!self->_didStartStream || self->_didEndStream)
  {
    [VCAlgosStreamingScorer addStreamTierSwitchWithTime:];
  }

  else
  {
    [(VCAlgosStreamingScorer *)self relativeTime:time];
    v6 = v5;
    if (self->_lastStreamTierSwitch > 0.0)
    {
      [(VCAlgosStreamingScorer *)self relativeTime:?];
      v8 = v7;
      algosScore = self->_algosScore;
      [(VCAlgosStreamingScorer *)self streamQuality];
      [(NWSAlgosStreamScore *)algosScore addStreamTierSwitch:v8 end:v6 quality:v10 weight:1.0];
      ++self->_pendingScoringEventCount;
    }

    self->_lastStreamTierSwitch = time;
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
}

- (double)finalizeScoreStreamingWithTime:(double)time
{
  [(VCAlgosStreamingScorer *)self stopWithTime:0 streamType:?];
  [(VCAlgosStreamingScorer *)self endWithTime:0 streamType:time];

  [(VCAlgosStreamingScorer *)self scoreStreaming];
  return result;
}

- (double)scoreStreaming
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_pendingScoringEventCount <= 0)
  {
    return self->_score;
  }

  os_unfair_lock_lock(&self->_blockAlgosScoreLock);
  if (self->_didStartStream)
  {
    v3 = [(NWSAlgosStreamScore *)self->_algosScore scoreStreaming:0];
    v4 = v3;
    if (v3)
    {
      [objc_msgSend(v3 objectForKeyedSubscript:{@"score", "doubleValue"}];
      v6 = v5;

      self->_algosScoreDictionary = [v4 copy];
      if (VRTraceGetErrorLogLevelForModule("") >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR(8u);
        v8 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 136316162;
            *&v10[4] = v7;
            v11 = 2080;
            v12 = "[VCAlgosStreamingScorer scoreStreaming]";
            v13 = 1024;
            v14 = 262;
            v15 = 2048;
            selfCopy2 = self;
            v17 = 2112;
            v18 = v4;
            _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] AlgosStreamScore scoreDictionary: %@", v10, 0x30u);
          }
        }

        else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          *v10 = 136316162;
          *&v10[4] = v7;
          v11 = 2080;
          v12 = "[VCAlgosStreamingScorer scoreStreaming]";
          v13 = 1024;
          v14 = 262;
          v15 = 2048;
          selfCopy2 = self;
          v17 = 2112;
          v18 = v4;
          _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] AlgosStreamScore scoreDictionary: %@", v10, 0x30u);
        }
      }
    }

    else
    {
      v6 = 0.0;
    }

    self->_pendingScoringEventCount = 0;
  }

  else
  {
    [(VCAlgosStreamingScorer *)self scoreStreaming];
    v6 = *v10;
  }

  os_unfair_lock_unlock(&self->_blockAlgosScoreLock);
  self->_score = v6;
  return v6;
}

- (void)setVideoResolutionWithTime:(double)time width:(int)width height:(int)height
{
  v26 = *MEMORY[0x277D85DE8];
  self->_resolutionPredictedMOS = fmax(fmin(log((height * width) * 1914160.0) * 0.169076, 5.0), 0.0);
  [(VCAlgosStreamingScorer *)self addStreamTierSwitchWithTime:time];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR(7u);
    v10 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      resolutionPredictedMOS = self->_resolutionPredictedMOS;
      v12 = 136316674;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCAlgosStreamingScorer setVideoResolutionWithTime:width:height:]";
      v16 = 1024;
      v17 = 289;
      v18 = 2048;
      selfCopy = self;
      v20 = 2048;
      v21 = resolutionPredictedMOS;
      v22 = 1024;
      widthCopy = width;
      v24 = 1024;
      heightCopy = height;
      _os_log_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] resolutionPredictedMOS = %f vraWidth = %d vraHeight = %d", &v12, 0x3Cu);
    }
  }
}

- (void)setVideoFramerate:(double)framerate
{
  v20 = *MEMORY[0x277D85DE8];
  self->_frameratePredictedMOS = fmax(fmin((1.0 - exp(framerate / 60.0 * -7.96)) / 0.999650847 * 5.0, 5.0), 0.0);
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR(7u);
    v6 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      frameratePredictedMOS = self->_frameratePredictedMOS;
      v8 = 136316418;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCAlgosStreamingScorer setVideoFramerate:]";
      v12 = 1024;
      v13 = 300;
      v14 = 2048;
      selfCopy = self;
      v16 = 2048;
      v17 = frameratePredictedMOS;
      v18 = 2048;
      framerateCopy = framerate;
      _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] _frameratePredictedMOS = %f videoFramerate = %f", &v8, 0x3Au);
    }
  }
}

- (double)streamQuality
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_resolutionPredictedMOS / 5.0 * (self->_frameratePredictedMOS / 5.0);
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR(8u);
    v5 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136316162;
        v8 = v4;
        v9 = 2080;
        v10 = "[VCAlgosStreamingScorer streamQuality]";
        v11 = 1024;
        v12 = 305;
        v13 = 2048;
        selfCopy2 = self;
        v15 = 2048;
        v16 = v3;
        _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] video quality = %f", &v7, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCAlgosStreamingScorer streamQuality]";
      v11 = 1024;
      v12 = 305;
      v13 = 2048;
      selfCopy2 = self;
      v15 = 2048;
      v16 = v3;
      _os_log_debug_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] video quality = %f", &v7, 0x30u);
    }
  }

  return fmax(fmin(v3, 1.0), 0.0);
}

- (void)startWithTime:streamType:.cold.1()
{
  OUTLINED_FUNCTION_13();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot start streamType %d _didEndStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)startWithTime:streamType:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already started, ignoring stream start for type %d", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v9, v10, " [%s] %s:%d [%p] Stream has already started, ignoring stream start for type %d", v11, v12, v13, v14);
    }
  }
}

- (void)stopWithTime:streamType:.cold.1()
{
  OUTLINED_FUNCTION_13();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot stop streamType %d _didStartStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)stopWithTime:streamType:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v9, v10, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v11, v12, v13, v14);
    }
  }
}

- (void)stopWithTime:streamType:.cold.3()
{
  OUTLINED_FUNCTION_16();
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already stopped, ignoring stream stop for streamType %d", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v9, v10, " [%s] %s:%d [%p] Stream has already stopped, ignoring stream stop for streamType %d", v11, v12, v13, v14);
    }
  }
}

- (void)endWithTime:streamType:.cold.1()
{
  OUTLINED_FUNCTION_13();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot end streamType %d _didStartStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)endWithTime:streamType:.cold.2()
{
  OUTLINED_FUNCTION_16();
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v0 = OUTLINED_FUNCTION_14();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_8(&dword_23D4DF000, v2, v3, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v4, v5, v6, v7);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_9(&dword_23D4DF000, v9, v10, " [%s] %s:%d [%p] Stream has already ended, ignoring stream end for streamType %d", v11, v12, v13, v14);
    }
  }
}

- (void)addVideoStallWithStartTime:endStallTime:.cold.1()
{
  OUTLINED_FUNCTION_17();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot add video stall event _didStartStream = %d, _didEndStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)addCallFailureWithTime:detailedErrorCode:.cold.1()
{
  OUTLINED_FUNCTION_17();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot add stream failure event _didStartStream = %d, _didEndStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)addLargeGapErasureWithTime:largeGapErasureRate:.cold.1()
{
  OUTLINED_FUNCTION_17();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot add large gap stall erasure _didStartStream = %d, _didEndStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)addStreamTierSwitchWithTime:.cold.1()
{
  OUTLINED_FUNCTION_17();
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_19())
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_10(&dword_23D4DF000, v0, v1, " [%s] %s:%d [%p] Cannot add stream tier change _didStartStream = %d, _didEndStream = %d", v2, v3, v4, v5);
    }
  }
}

- (void)scoreStreaming
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      LODWORD(v11) = 136316418;
      *(&v11 + 4) = v4;
      WORD6(v11) = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7(&dword_23D4DF000, v5, v6, " [%s] %s:%d [%p] Cannot start score streaming _didStartStream = %d, _didEndStream = %d", v7, v8, v9, v10, v11);
    }
  }

  *a3 = 0;
}

@end