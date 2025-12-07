@interface VCDataMLEnhance
- (BOOL)isMLEnhanceActive;
- (VCDataMLEnhance)init;
- (id)resolutionDurationForIndex:(id)index;
- (void)accumulate:(id)accumulate;
- (void)checkAndUpdateTimers:(double)timers;
- (void)dealloc;
- (void)finalize:(double)finalize;
- (void)init;
- (void)pauseAllTimers:(double)timers;
- (void)transferStatus:(id)status thermalLevel:(int)level;
- (void)updateMLEnhanceResolution:(id)resolution participantID:(id)d enabled:(BOOL)enabled currentTime:(double)time;
- (void)updateReport:(id)report;
- (void)updateStateWithPayload:(id)payload withTime:(double)time;
@end

@implementation VCDataMLEnhance

- (VCDataMLEnhance)init
{
  v6.receiver = self;
  v6.super_class = VCDataMLEnhance;
  v2 = [(VCDataMLEnhance *)&v6 init];
  if (!v2)
  {
    [VCDataMLEnhance init];
LABEL_8:

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2->_resolutionDurations = v3;
  if (!v3)
  {
    [(VCDataMLEnhance *)v2 init];
    goto LABEL_8;
  }

  v4 = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v2->_totalActiveDuration = v4;
  if (!v4)
  {
    [(VCDataMLEnhance *)v2 init];
    goto LABEL_8;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCDataMLEnhance;
  [(VCDataMLEnhance *)&v3 dealloc];
}

- (void)updateStateWithPayload:(id)payload withTime:(double)time
{
  v7 = [payload objectForKeyedSubscript:@"VCSPUUID"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v24 = __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke;
  v25 = &unk_278BD4E38;
  selfCopy = self;
  v8 = [payload objectForKeyedSubscript:@"Thermal"];
  if (v8)
  {
    v24(v23, v8);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v18 = __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke_2;
  v19 = &unk_278BD4E60;
  selfCopy2 = self;
  payloadCopy = payload;
  timeCopy = time;
  v9 = [payload objectForKeyedSubscript:@"MLSFENB"];
  if (v9)
  {
    v18(v17, v9);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke_3;
  v13 = &unk_278BD4E60;
  selfCopy3 = self;
  v15 = v7;
  timeCopy2 = time;
  v10 = [payload objectForKeyedSubscript:@"MLSW"];
  if (v10)
  {
    v12(v11, v10);
  }

  [(VCDataMLEnhance *)self checkAndUpdateTimers:time];
}

uint64_t __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke(uint64_t a1, void *a2)
{
  result = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCAggregator, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  *(*(a1 + 32) + 8) = result;
  return result;
}

_BYTE *__51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 13) = [a2 BOOLValue];
  result = *(a1 + 32);
  if ((result[13] & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"MLSW"];
    result = *(a1 + 32);
    if (!v5)
    {
      [result pauseAllTimers:*(a1 + 48)];
      result = *(a1 + 32);
    }
  }

  if (!result[12])
  {
    result = [a2 intValue];
    *(*(a1 + 32) + 12) = result;
  }

  return result;
}

- (void)accumulate:(id)accumulate
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_mlEnhanceStatus |= *(accumulate + 12);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allKeys = [*(accumulate + 2) allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          [-[VCDataMLEnhance resolutionDurationForIndex:](self resolutionDurationForIndex:{*(*(&v10 + 1) + 8 * v9)), "merge:", objc_msgSend(*(accumulate + 2), "objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * v9))}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(VCHistogram *)self->_totalActiveDuration merge:*(accumulate + 3)];
  }

  else
  {
    [VCDataMLEnhance accumulate:?];
  }
}

- (void)transferStatus:(id)status thermalLevel:(int)level
{
  v4 = *&level;
  v21 = *MEMORY[0x277D85DE8];
  v7 = micro(self, a2);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [*(status + 2) allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        v15 = [(VCDataMLEnhance *)self resolutionDurationForIndex:v14];
        if ([objc_msgSend(*(status + 2) objectForKeyedSubscript:{v14), "isPaused"}])
        {
          [v15 pause:v7];
        }

        else
        {
          [v15 resumeAtBucket:v4 currentTime:v7];
          v11 = 1;
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
    if ([*(status + 3) isPaused])
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_15:
    [(VCDurationHistogram *)self->_totalActiveDuration resumeAtBucket:v4 currentTime:v7];
LABEL_16:
    self->_mlEnhanceStatus = 1;
    goto LABEL_17;
  }

  if (([*(status + 3) isPaused] & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  self->_thermalLevel = v4;
}

- (void)updateReport:(id)report
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithChar:", self->_mlEnhanceStatus), @"MLSFENB"}];
  v7 = micro(v5, v6);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_resolutionDurations allKeys];
  v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MLSW", v12];
        v14 = [(NSMutableDictionary *)self->_resolutionDurations objectForKeyedSubscript:v12];
        [v14 finalize:v7];
        [report setObject:objc_msgSend(v14 forKeyedSubscript:{"description"), v13}];
      }

      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(VCDurationHistogram *)self->_totalActiveDuration finalize:v7];
  [report setObject:-[VCHistogram description](self->_totalActiveDuration forKeyedSubscript:{"description"), @"MLSW"}];
}

- (BOOL)isMLEnhanceActive
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        if (![*(*(&v10 + 1) + 8 * v7) isPaused])
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return self->_mlEnhanceLastEnabledReport;
}

- (id)resolutionDurationForIndex:(id)index
{
  v5 = [(NSMutableDictionary *)self->_resolutionDurations objectForKeyedSubscript:?];
  if (!v5)
  {
    v5 = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    [(NSMutableDictionary *)self->_resolutionDurations setObject:v5 forKeyedSubscript:index];
    v6 = v5;
  }

  return v5;
}

- (void)updateMLEnhanceResolution:(id)resolution participantID:(id)d enabled:(BOOL)enabled currentTime:(double)time
{
  if (resolution)
  {
    enabledCopy = enabled;
    v9 = [(VCDataMLEnhance *)self resolutionDurationForIndex:resolution, d];
    if (enabledCopy)
    {
      thermalLevel = self->_thermalLevel;

      [v9 resumeAtBucket:thermalLevel currentTime:time];
    }

    else
    {

      [v9 pause:time];
    }
  }
}

- (void)pauseAllTimers:(double)timers
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) pause:timers];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(VCDurationHistogram *)self->_totalActiveDuration pause:timers];
}

- (void)checkAndUpdateTimers:(double)timers
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(VCDataMLEnhance *)self isMLEnhanceActive])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (([v10 isPaused] & 1) == 0)
          {
            [v10 switchBucket:self->_thermalLevel currentTime:timers];
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(VCDurationHistogram *)self->_totalActiveDuration switchBucket:self->_thermalLevel currentTime:timers];
  }

  else
  {

    [(VCDataMLEnhance *)self pauseAllTimers:timers];
  }
}

- (void)finalize:(double)finalize
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) finalize:finalize];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(VCDurationHistogram *)self->_totalActiveDuration finalize:finalize];
}

- (void)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
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
    v11 = 36;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
    v7 = VRTraceErrorLogLevelToCSTR(3u);
    v8 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v7;
      OUTLINED_FUNCTION_0();
      v11 = 36;
      v12 = 2112;
      v13 = v0;
      v14 = 2048;
      v15 = 0;
      v1 = &dword_23D4DF000;
      v4 = " [%s] %s:%d %@(%p) Failed to create MLEnhance data";
      v5 = &v9;
      v2 = v8;
      v3 = OS_LOG_TYPE_ERROR;
      v6 = 48;
      goto LABEL_12;
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
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }
}

@end