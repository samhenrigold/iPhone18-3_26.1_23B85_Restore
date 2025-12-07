@interface SGDPowerLog
+ (void)logPrewarmWithLastPrewarmTime:(double)time;
+ (void)pluginEndDeletion:(id)deletion;
+ (void)pluginEndProcessingSearchableItem:(id)item;
+ (void)pluginEndSetup:(id)setup;
+ (void)pluginStartDeletion:(id)deletion;
+ (void)pluginStartProcessingSearchableItem:(id)item;
+ (void)pluginStartSetup:(id)setup;
@end

@implementation SGDPowerLog

+ (void)pluginEndDeletion:(id)deletion
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"plugin";
  v7[0] = deletion;
  v3 = MEMORY[0x277CBEAC0];
  deletionCopy = deletion;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
}

+ (void)pluginStartDeletion:(id)deletion
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"plugin";
  v7[0] = deletion;
  v3 = MEMORY[0x277CBEAC0];
  deletionCopy = deletion;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
}

+ (void)pluginEndProcessingSearchableItem:(id)item
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"plugin";
  v7[0] = item;
  v3 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
}

+ (void)pluginStartProcessingSearchableItem:(id)item
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"plugin";
  v7[0] = item;
  v3 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
}

+ (void)pluginEndSetup:(id)setup
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"plugin";
  v7[0] = setup;
  v3 = MEMORY[0x277CBEAC0];
  setupCopy = setup;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
}

+ (void)pluginStartSetup:(id)setup
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"plugin";
  v7[0] = setup;
  v3 = MEMORY[0x277CBEAC0];
  setupCopy = setup;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  PLLogRegisteredEvent();
}

+ (void)logPrewarmWithLastPrewarmTime:(double)time
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_INFO, "Pre-warming suggestd", v10, 2u);
  }

  v11 = @"secondsSinceLast";
  v5 = MEMORY[0x277CCABB0];
  if (time == 0.0)
  {
    v7 = -1.0;
  }

  else
  {
    v4 = objc_opt_new();
    [v4 timeIntervalSinceReferenceDate];
    v7 = v6 - time;
  }

  v8 = [v5 numberWithDouble:v7];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  if (time != 0.0)
  {
  }

  PLLogRegisteredEvent();
}

@end