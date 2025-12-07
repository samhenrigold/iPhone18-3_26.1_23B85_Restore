@interface ANCoreAnalytics
- (void)send:(id)send withPayload:(id)payload;
@end

@implementation ANCoreAnalytics

- (void)send:(id)send withPayload:(id)payload
{
  v22 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  payloadCopy = payload;
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA950]];

  if (v8)
  {
    v10 = [@"com.apple.announce." stringByAppendingString:sendCopy];
    v13 = payloadCopy;
    AnalyticsSendEventLazy();
  }

  else
  {
    v11 = ANLogHandleCoreAnalytics(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v15 = &stru_2851BDB18;
      v16 = 2080;
      v17 = "[ANCoreAnalytics send:withPayload:]";
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEBUG, "%@%s CA Events Disabled.", buf, 0x16u);
    }

    v10 = ANLogHandleCoreAnalytics(v12);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v15 = &stru_2851BDB18;
      v16 = 2080;
      v17 = "[ANCoreAnalytics send:withPayload:]";
      v18 = 2112;
      v19 = sendCopy;
      v20 = 2112;
      v21 = payloadCopy;
      _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEBUG, "%@%s CA Ignored event name: %@, event payload: %@", buf, 0x2Au);
    }
  }
}

@end