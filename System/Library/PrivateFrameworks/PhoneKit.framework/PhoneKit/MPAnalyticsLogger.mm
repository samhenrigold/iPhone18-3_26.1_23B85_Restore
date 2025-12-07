@interface MPAnalyticsLogger
- (void)logEvent:(id)event;
- (void)logEvent:(id)event withCoreAnalyticsDictionary:(id)dictionary;
- (void)logSIMLineSelection:(BOOL)selection;
@end

@implementation MPAnalyticsLogger

- (void)logEvent:(id)event
{
  v6 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    uTF8String = [eventCopy UTF8String];
    _os_log_impl(&dword_25E4EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPAnalyticsLogger: logging core analytics view %s", &v4, 0xCu);
  }

  AnalyticsSendEventLazy();
}

- (void)logEvent:(id)event withCoreAnalyticsDictionary:(id)dictionary
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dictionaryCopy = dictionary;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    uTF8String = [eventCopy UTF8String];
    v11 = 2112;
    v12 = dictionaryCopy;
    _os_log_impl(&dword_25E4EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPAnalyticsLogger: logging core analytics view %s with dictionary %@", buf, 0x16u);
  }

  v8 = dictionaryCopy;
  v7 = dictionaryCopy;
  AnalyticsSendEventLazy();
}

- (void)logSIMLineSelection:(BOOL)selection
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"usesNonDefaultSim";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:selection];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [(MPAnalyticsLogger *)self logEvent:@"com.apple.mobilephone.dialer.SimPicker" withCoreAnalyticsDictionary:v5];
}

@end