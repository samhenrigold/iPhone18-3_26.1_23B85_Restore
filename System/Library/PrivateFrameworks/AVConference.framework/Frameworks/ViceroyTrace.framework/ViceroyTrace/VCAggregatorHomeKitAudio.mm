@interface VCAggregatorHomeKitAudio
- (VCAggregatorHomeKitAudio)initWithDelegate:(id)delegate;
- (id)dispatchedAggregatedSessionReport;
- (void)dealloc;
- (void)dispatchedProcessEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)reset;
- (void)updateStreamDirection:(unsigned int)direction time:(double)time;
@end

@implementation VCAggregatorHomeKitAudio

- (VCAggregatorHomeKitAudio)initWithDelegate:(id)delegate
{
  v3 = [(VCAggregatorAudioStream *)self initWithDelegate:delegate withMode:6];
  if (!v3)
  {
    [VCAggregatorHomeKitAudio initWithDelegate:];
LABEL_6:

    return 0;
  }

  v4 = [[VCReportingHistogram alloc] initWithType:62 bucketValues:0];
  v3->_streamDirectionDurations = v4;
  if (!v4)
  {
    [VCAggregatorHomeKitAudio initWithDelegate:v3];
    goto LABEL_6;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorHomeKitAudio;
  [(VCAggregatorAudioStream *)&v3 dealloc];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = VCAggregatorHomeKitAudio;
  [(VCAggregatorAudioStream *)&v3 reset];
  self->_mediaStreamEndReason = 0;
  self->_rtcpTimeoutCount = 0;
}

- (void)updateStreamDirection:(unsigned int)direction time:(double)time
{
  lastStreamDirectionSwitchTime = self->_lastStreamDirectionSwitchTime;
  if (lastStreamDirectionSwitchTime > 0.0)
  {
    [(VCHistogram *)self->_streamDirectionDurations addOnlyExactMatchingValue:self->_previousStreamDirection increment:((time - lastStreamDirectionSwitchTime) * 1000.0)];
  }

  self->_previousStreamDirection = direction;
  self->_lastStreamDirectionSwitchTime = time;
}

- (void)dispatchedProcessEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  categoryCopy = category;
  v25.receiver = self;
  v25.super_class = VCAggregatorHomeKitAudio;
  [(VCAggregatorAudioStream *)&v25 dispatchedProcessEventWithCategory:category type:type payload:?];
  [(VCAggregator *)self microFromPayload:payload];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v21 = __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke;
  v22 = &unk_278BD5528;
  selfCopy = self;
  v24 = v8;
  v9 = [payload objectForKeyedSubscript:@"VCMSDirection"];
  if (v9)
  {
    v21(v20, v9);
  }

  switch(categoryCopy)
  {
    case 242:
      ++self->_rtcpTimeoutCount;
      break;
    case 183:
      v13 = __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke_3;
      v14 = &unk_278BD4E38;
      selfCopy2 = self;
      v11 = [payload objectForKeyedSubscript:{@"VCMSEndReason", MEMORY[0x277D85DD0], 3221225472}];
      if (v11)
      {
        v13(&v12, v11);
      }

      break;
    case 182:
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v17 = __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke_2;
      v18 = &unk_278BD4E38;
      selfCopy3 = self;
      v10 = [payload objectForKeyedSubscript:@"VCMSConnectionType"];
      if (v10)
      {
        v17(v16, v10);
      }

      break;
  }
}

uint64_t __76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 intValue];
  v5 = *(a1 + 40);

  return [v3 updateStreamDirection:v4 time:v5];
}

void *__76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1632) = result;
  return result;
}

void *__76__VCAggregatorHomeKitAudio_dispatchedProcessEventWithCategory_type_payload___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntValue];
  *(*(a1 + 32) + 1616) = result;
  return result;
}

- (id)dispatchedAggregatedSessionReport
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v5.receiver = self;
  v5.super_class = VCAggregatorHomeKitAudio;
  dispatchedAggregatedSessionReport = [(VCAggregatorAudioStream *)&v5 dispatchedAggregatedSessionReport];
  [dispatchedAggregatedSessionReport setObject:&unk_284FA57F8 forKeyedSubscript:@"RVER"];
  [dispatchedAggregatedSessionReport setObject:@"audio" forKeyedSubscript:@"HKMT"];
  [dispatchedAggregatedSessionReport setObject:-[VCHistogram description](self->_streamDirectionDurations forKeyedSubscript:{"description"), @"SDDUR"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_connectionType), @"HKCT"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", self->_mediaStreamEndReason == 0), @"MSSuccess"}];
  [dispatchedAggregatedSessionReport setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_mediaStreamEndReason), @"MSEndReason"}];
  return dispatchedAggregatedSessionReport;
}

- (void)initWithDelegate:(void *)a1 .cold.1(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315650;
    v13 = v3;
    OUTLINED_FUNCTION_0();
    v14 = 33;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR(3u);
    v11 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v14 = 33;
      v15 = 2112;
      v16 = v2;
      v17 = 2048;
      v18 = a1;
      v4 = &dword_23D4DF000;
      v7 = " [%s] %s:%d %@(%p) Failed to create stream direction histogram";
      v8 = &v12;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }
}

- (void)initWithDelegate:.cold.2()
{
  v17 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    v1 = VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v1;
    OUTLINED_FUNCTION_0();
    v12 = 30;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v0 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v0 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR(3u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      v12 = 30;
      v13 = 2112;
      v14 = v0;
      v15 = 2048;
      v16 = 0;
      v2 = &dword_23D4DF000;
      v5 = " [%s] %s:%d %@(%p) Failed to initialize HomeKit aggregator";
      v6 = &v10;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

@end