@interface BKUIAnalyticsManager
- (BKUIAnalyticsManager)init;
- (void)traceEvent:(id)event withPayload:(id)payload;
@end

@implementation BKUIAnalyticsManager

- (BKUIAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = BKUIAnalyticsManager;
  return [(BKUIAnalyticsManager *)&v3 init];
}

- (void)traceEvent:(id)event withPayload:(id)payload
{
  v12 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  payloadCopy = payload;
  v7 = _BKUILoggingFacility(payloadCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = eventCopy;
    v10 = 2112;
    v11 = payloadCopy;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Tracing event: %@ payload: %@", &v8, 0x16u);
  }

  AnalyticsSendEvent();
}

@end