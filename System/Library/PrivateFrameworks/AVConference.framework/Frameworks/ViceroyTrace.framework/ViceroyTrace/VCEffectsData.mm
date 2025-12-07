@interface VCEffectsData
- (VCEffectsData)init;
- (void)dealloc;
- (void)init;
- (void)updateDataWithTime:(double)time;
- (void)updateReport:(id)report;
- (void)updateStateWithPayload:(id)payload withTime:(double)time;
@end

@implementation VCEffectsData

- (VCEffectsData)init
{
  v29 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = VCEffectsData;
  v2 = [(VCEffectsData *)&v14 init];
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = [[VCReportingHistogram alloc] initWithType:88 bucketValues:0];
      v2->_effectsDurationsThermalHistograms[v3] = v4;
      if (!v4)
      {
        break;
      }

      if (++v3 == 4)
      {
        return v2;
      }
    }

    if (objc_opt_class() == v2)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_15;
      }

      v7 = VRTraceErrorLogLevelToCSTR(3u);
      v8 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136316162;
      v16 = v7;
      v17 = 2080;
      v18 = "[VCEffectsData init]";
      v19 = 1024;
      v20 = 34;
      v21 = 2048;
      effectsDurationsThermalHistograms = v2->_effectsDurationsThermalHistograms;
      v23 = 1024;
      LODWORD(v24) = v3;
      v9 = " [%s] %s:%d Failed to allocate effects duration histogram for _effectsDurationsThermalHistograms: %p, in iteration: %d";
      v10 = v8;
      v11 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCEffectsData *)v2 performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_15;
      }

      v12 = VRTraceErrorLogLevelToCSTR(3u);
      v13 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136316674;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCEffectsData init]";
      v19 = 1024;
      v20 = 34;
      v21 = 2112;
      effectsDurationsThermalHistograms = v6;
      v23 = 2048;
      v24 = v2;
      v25 = 2048;
      v26 = v2->_effectsDurationsThermalHistograms;
      v27 = 1024;
      v28 = v3;
      v9 = " [%s] %s:%d %@(%p) Failed to allocate effects duration histogram for _effectsDurationsThermalHistograms: %p, in iteration: %d";
      v10 = v13;
      v11 = 64;
    }

    _os_log_error_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
  }

  else
  {
    [VCEffectsData init];
  }

LABEL_15:

  return 0;
}

- (void)dealloc
{
  for (i = 24; i != 56; i += 8)
  {
  }

  v4.receiver = self;
  v4.super_class = VCEffectsData;
  [(VCEffectsData *)&v4 dealloc];
}

- (void)updateStateWithPayload:(id)payload withTime:(double)time
{
  if ([payload objectForKeyedSubscript:@"VCEMEffectsType"])
  {
    [(VCEffectsData *)self updateDataWithTime:time];
    self->_effectsType = [objc_msgSend(payload objectForKeyedSubscript:{@"VCEMEffectsType", "intValue"}];
  }
}

- (void)updateDataWithTime:(double)time
{
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    LODWORD(v3) = vcvtad_u64_f64((time - startTime) * 1000.0);
    [(VCHistogram *)self->_effectsDurationsThermalHistograms[self->_effectsType] addOnlyExactMatchingValue:self->_thermalLevel increment:v3];
  }

  self->_startTime = time;
}

- (void)updateReport:(id)report
{
  v4 = 0;
  effectsDurationsThermalHistograms = self->_effectsDurationsThermalHistograms;
  do
  {
    [report setObject:-[VCHistogram description](effectsDurationsThermalHistograms[v4] forKeyedSubscript:{"description"), updateReport__effectsAggregationKeys[v4]}];
    ++v4;
  }

  while (v4 != 4);
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR(3u);
    v1 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "[VCEffectsData init]";
      v6 = 1024;
      v7 = 30;
      _os_log_error_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to init VCEffectsData", &v2, 0x1Cu);
    }
  }
}

@end