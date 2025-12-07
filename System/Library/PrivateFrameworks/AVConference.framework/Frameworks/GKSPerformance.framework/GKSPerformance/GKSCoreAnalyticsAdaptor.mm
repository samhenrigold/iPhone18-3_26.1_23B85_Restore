@interface GKSCoreAnalyticsAdaptor
+ (BOOL)analyticsSendEventWrapper:(id)wrapper withPayload:(id)payload hasHistogram:(BOOL)histogram;
@end

@implementation GKSCoreAnalyticsAdaptor

+ (BOOL)analyticsSendEventWrapper:(id)wrapper withPayload:(id)payload hasHistogram:(BOOL)histogram
{
  histogramCopy = histogram;
  v21 = *MEMORY[0x277D85DE8];
  v7 = [self fullEventName:wrapper];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "+[GKSCoreAnalyticsAdaptor analyticsSendEventWrapper:withPayload:hasHistogram:]";
      v15 = 1024;
      v16 = 21;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      payloadCopy = payload;
      _os_log_impl(&dword_23D482000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending CoreAnalytics event with fullEventName=%@ payload=%@", buf, 0x30u);
    }
  }

  if (histogramCopy)
  {
    return AnalyticsSendExplodingEventLazy();
  }

  else
  {
    return AnalyticsSendEventLazy();
  }
}

@end