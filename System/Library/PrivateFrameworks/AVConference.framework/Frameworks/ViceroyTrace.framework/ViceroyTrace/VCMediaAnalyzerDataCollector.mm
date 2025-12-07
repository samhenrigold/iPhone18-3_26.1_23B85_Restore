@interface VCMediaAnalyzerDataCollector
- (VCMediaAnalyzerDataCollector)initWithDispatchQueue:(id)queue;
- (void)addAggregatedMediaAnalyzerMetricsToReport:(id)report;
- (void)dealloc;
- (void)processMediaAnalyzerEnabled:(BOOL)enabled withCurrentTime:(double)time;
- (void)processMediaAnalyzerMetrics:(id)metrics;
@end

@implementation VCMediaAnalyzerDataCollector

- (VCMediaAnalyzerDataCollector)initWithDispatchQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = VCMediaAnalyzerDataCollector;
  v4 = [(VCMediaAnalyzerDataCollector *)&v6 init];
  if (!v4)
  {
    [VCMediaAnalyzerDataCollector initWithDispatchQueue:];
LABEL_7:

    return 0;
  }

  if (!queue)
  {
    [VCMediaAnalyzerDataCollector initWithDispatchQueue:];
    goto LABEL_7;
  }

  dispatch_retain(queue);
  v4->_stateQueue = queue;
  v4->_mediaAnalyzerLastEnabledTime = NAN;
  v4->_mediaAnalyzerMeanProcessingTimesHistogram = [[VCReportingHistogram alloc] initWithType:53 bucketValues:0];
  return v4;
}

- (void)dealloc
{
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v4.receiver = self;
  v4.super_class = VCMediaAnalyzerDataCollector;
  [(VCMediaAnalyzerDataCollector *)&v4 dealloc];
}

- (void)processMediaAnalyzerEnabled:(BOOL)enabled withCurrentTime:(double)time
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_stateQueue);
  [(VCMediaAnalyzerDataCollector *)self setMediaAnalyzerEnabled:enabledCopy];
  if (!enabledCopy)
  {
    self->_mediaAnalyzerEnabledDuration = time - self->_mediaAnalyzerLastEnabledTime + self->_mediaAnalyzerEnabledDuration;
    time = NAN;
  }

  self->_mediaAnalyzerLastEnabledTime = time;
}

- (void)processMediaAnalyzerMetrics:(id)metrics
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([metrics objectForKeyedSubscript:@"MAMPT"])
  {
    [objc_msgSend(metrics objectForKeyedSubscript:{@"MAMPT", "doubleValue"}];
    LODWORD(v6) = vcvtad_u64_f64(v5);
    mediaAnalyzerMeanProcessingTimesHistogram = self->_mediaAnalyzerMeanProcessingTimesHistogram;

    [(VCHistogram *)mediaAnalyzerMeanProcessingTimesHistogram addValue:v6];
  }
}

- (void)addAggregatedMediaAnalyzerMetricsToReport:(id)report
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isMediaAnalyzerEnabled), @"VCMAE"}];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaAnalyzerEnabledDuration), @"VCMAED"}];
  v5 = [(VCHistogram *)self->_mediaAnalyzerMeanProcessingTimesHistogram description];

  [report setObject:v5 forKeyedSubscript:@"VCMAMPT"];
}

- (void)initWithDispatchQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Invalid dispatchQueue provided", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

- (void)initWithDispatchQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v7) = 136315650;
      *(&v7 + 4) = v0;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Failed to super initialize VCCaptionsDataCollector", v3, v4, v5, v6, v7, DWORD2(v7));
    }
  }
}

@end