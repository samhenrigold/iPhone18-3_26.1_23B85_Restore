@interface VCReportingDeltaDistribution
- (VCReportingDeltaDistribution)initWithSignedHistogramType:(int)type reportingKeys:(id)keys;
- (void)accumulate:(id)accumulate;
- (void)updateReport:(id)report withStreamGroup:(id)group;
- (void)updateWithPayload:(id)payload;
@end

@implementation VCReportingDeltaDistribution

- (VCReportingDeltaDistribution)initWithSignedHistogramType:(int)type reportingKeys:(id)keys
{
  v7.receiver = self;
  v7.super_class = VCReportingDeltaDistribution;
  v4 = [(VCReportingDistribution *)&v7 initWithSignedHistogramType:*&type reportingKeys:keys];
  v5 = v4;
  if (v4)
  {
    v4->_absoluteMin = 1.79769313e308;
  }

  else
  {
    [VCReportingDeltaDistribution initWithSignedHistogramType:reportingKeys:];
  }

  return v5;
}

- (void)updateWithPayload:(id)payload
{
  if (payload)
  {
    v16.receiver = self;
    v16.super_class = VCReportingDeltaDistribution;
    [(VCReportingDistribution *)&v16 updateWithPayload:?];
    [objc_msgSend(payload objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum", "doubleValue"}];
    v6 = v5;
    [objc_msgSend(payload objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDistributionKey_ReportingSum", "doubleValue"}];
    v8 = v7;
    [objc_msgSend(payload objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDistributionKey_ReportingCount", "doubleValue"}];
    if (v9 != 0.0)
    {
      self->_absoluteSum = v6 + self->_absoluteSum;
      v10 = v8 / v9;
      v11 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_ReportingAbsoluteMin"];
      absoluteMin = v10;
      if (v11)
      {
        [objc_msgSend(payload objectForKeyedSubscript:{v11, v10), "doubleValue"}];
      }

      if (fabs(self->_absoluteMin) < fabs(absoluteMin))
      {
        absoluteMin = self->_absoluteMin;
      }

      self->_absoluteMin = absoluteMin;
      v13 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_ReportingAbsoluteMax"];
      if (v13)
      {
        [objc_msgSend(payload objectForKeyedSubscript:{v13), "doubleValue"}];
        v10 = v14;
      }

      absoluteMax = self->_absoluteMax;
      if (fabs(absoluteMax) <= fabs(v10))
      {
        absoluteMax = v10;
      }

      self->_absoluteMax = absoluteMax;
    }
  }

  else
  {
    [VCReportingDeltaDistribution updateWithPayload:?];
  }
}

- (void)accumulate:(id)accumulate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = VCReportingDeltaDistribution;
    [(VCReportingDistribution *)&v12 accumulate:accumulate];
    [accumulate absoluteSum];
    self->_absoluteSum = v5 + self->_absoluteSum;
    v6 = fabs(self->_absoluteMax);
    [accumulate absoluteMax];
    if (v6 <= fabs(v7))
    {
      [accumulate absoluteMax];
    }

    else
    {
      absoluteMax = self->_absoluteMax;
    }

    self->_absoluteMax = absoluteMax;
    v9 = fabs(self->_absoluteMin);
    [accumulate absoluteMin];
    if (v9 >= fabs(v10))
    {
      [accumulate absoluteMin];
    }

    else
    {
      absoluteMin = self->_absoluteMin;
    }

    self->_absoluteMin = absoluteMin;
  }
}

- (void)updateReport:(id)report withStreamGroup:(id)group
{
  if (report)
  {
    [(VCReportingDistribution *)self count];
    if (v7 != 0.0)
    {
      v17.receiver = self;
      v17.super_class = VCReportingDeltaDistribution;
      [(VCReportingDistribution *)&v17 updateReport:report withStreamGroup:group];
      absoluteSum = self->_absoluteSum;
      [(VCReportingDistribution *)self count];
      v10 = v9;
      v11 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage"];
      if (group && v11)
      {
        group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage", group];
      }

      else
      {
        group = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage"];
      }

      if (group)
      {
        [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", absoluteSum / v10), group}];
      }

      v13 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin"];
      if (group && v13)
      {
        group2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin", group];
      }

      else
      {
        group2 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin"];
      }

      if (group2)
      {
        [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_absoluteMin), group2}];
      }

      v15 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax"];
      if (group && v15)
      {
        group3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax", group];
      }

      else
      {
        group3 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax"];
      }

      if (group3)
      {
        [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_absoluteMax), group3}];
      }
    }
  }
}

- (void)initWithSignedHistogramType:reportingKeys:.cold.1()
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
    v12 = 34;
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
      v12 = 34;
      v13 = 2112;
      v14 = v0;
      v15 = 2048;
      v16 = 0;
      v2 = &dword_23D4DF000;
      v5 = " [%s] %s:%d %@(%p) Failed to initialize VCReportingDistribution";
      v6 = &v10;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

- (void)updateWithPayload:(void *)a1 .cold.1(void *a1)
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
    v14 = 45;
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
      v14 = 45;
      v15 = 2112;
      v16 = v2;
      v17 = 2048;
      v18 = a1;
      v4 = &dword_23D4DF000;
      v7 = " [%s] %s:%d %@(%p) Received nil payload";
      v8 = &v12;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }
}

@end