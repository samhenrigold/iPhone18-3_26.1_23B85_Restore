@interface VCVideoTierDurationData
- (VCVideoTierDurationData)init;
- (int)resolutionForVideoWidth:(unsigned int)width height:(unsigned int)height;
- (void)accumulate:(id)accumulate;
- (void)dealloc;
- (void)finalize;
- (void)init;
- (void)updateCurrentReceivedVideoResolution:(int)resolution time:(double)time;
- (void)updateReport:(id)report withStreamGroup:(id)group;
- (void)updateWithPayload:(id)payload;
- (void)updateWithPayload:(id)payload time:(double)time;
@end

@implementation VCVideoTierDurationData

- (VCVideoTierDurationData)init
{
  v5.receiver = self;
  v5.super_class = VCVideoTierDurationData;
  v2 = [(VCVideoTierDurationData *)&v5 init];
  if (!v2)
  {
    [VCVideoTierDurationData init];
LABEL_7:

    return 0;
  }

  v3 = [[VCReportingHistogram alloc] initWithType:65 bucketValues:0];
  v2->_receivedVideoTierDuration = v3;
  if (!v3)
  {
    [VCVideoTierDurationData init];
    goto LABEL_7;
  }

  v2->_currentReceivedVideoResolution = 0x7FFFFFFF;
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCVideoTierDurationData;
  [(VCVideoTierDurationData *)&v3 dealloc];
}

- (int)resolutionForVideoWidth:(unsigned int)width height:(unsigned int)height
{
  if (!width || !height)
  {
    return 0x7FFFFFFF;
  }

  v4 = 0;
  widthCopy = width;
  heightCopy = height;
  do
  {
    [VCAggregatorUtils sizeForVideoResolution:v4];
    if (v8 == widthCopy && v7 == heightCopy)
    {
      break;
    }

    v4 = (v4 + 1);
  }

  while (v4 != 35);
  if (v4 >= 0x22)
  {
    return 34;
  }

  else
  {
    return v4;
  }
}

- (void)updateWithPayload:(id)payload
{
  v5 = micro(self, a2);

  [(VCVideoTierDurationData *)self updateWithPayload:payload time:v5];
}

- (void)updateWithPayload:(id)payload time:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(payload objectForKeyedSubscript:{@"Width", "intValue"}];
  v8 = [objc_msgSend(payload objectForKeyedSubscript:{@"Height", "intValue"}];
  v9 = [(VCVideoTierDurationData *)self resolutionForVideoWidth:v7 height:v8];
  if (v9 == 0x7FFFFFFF)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR(3u);
      v11 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        v12 = 136316162;
        v13 = v10;
        v14 = 2080;
        v15 = "[VCVideoTierDurationData updateWithPayload:time:]";
        v16 = 1024;
        v17 = 73;
        v18 = 1024;
        v19 = v7;
        v20 = 1024;
        v21 = v8;
        _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Reported invalid video width=%d height=%d", &v12, 0x28u);
      }
    }
  }

  else if (v9 != self->_currentReceivedVideoResolution)
  {

    [(VCVideoTierDurationData *)self updateCurrentReceivedVideoResolution:v9 time:time];
  }
}

- (void)accumulate:(id)accumulate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (accumulate)
    {
      receivedVideoTierDuration = self->_receivedVideoTierDuration;
      v6 = *(accumulate + 2);

      [(VCHistogram *)receivedVideoTierDuration merge:v6];
    }

    else
    {
      [VCVideoTierDurationData accumulate:?];
    }
  }

  else
  {
    [VCVideoTierDurationData accumulate:?];
  }
}

- (void)updateReport:(id)report withStreamGroup:(id)group
{
  [(VCVideoTierDurationData *)self finalize];
  v7 = @"RXVTDH";
  if (!group || (v7 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"RXVTDH", group]) != 0)
  {
    v8 = [(VCHistogram *)self->_receivedVideoTierDuration description];

    [report setObject:v8 forKeyedSubscript:v7];
  }
}

- (void)updateCurrentReceivedVideoResolution:(int)resolution time:(double)time
{
  currentReceivedVideoResolution = self->_currentReceivedVideoResolution;
  if (currentReceivedVideoResolution != 0x7FFFFFFF)
  {
    [(VCHistogram *)self->_receivedVideoTierDuration addOnlyExactMatchingValue:currentReceivedVideoResolution increment:((time - self->_lastReceivedTierSwitchTime) * 1000.0)];
  }

  self->_lastReceivedTierSwitchTime = time;
  self->_currentReceivedVideoResolution = resolution;
}

- (void)finalize
{
  v3 = micro(self, a2);

  [(VCVideoTierDurationData *)self updateCurrentReceivedVideoResolution:0x7FFFFFFFLL time:v3];
}

- (void)init
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

- (void)accumulate:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }
}

- (void)accumulate:(void *)a1 .cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }
}

@end