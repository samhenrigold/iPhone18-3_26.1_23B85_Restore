@interface CALNCalAnalyticsHandler
+ (CALNCalAnalyticsHandler)sharedInstance;
- (void)recordNotificationResponse:(id)response;
- (void)recordPostedNotification:(id)notification;
@end

@implementation CALNCalAnalyticsHandler

+ (CALNCalAnalyticsHandler)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CALNCalAnalyticsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_handler;

  return v2;
}

uint64_t __41__CALNCalAnalyticsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_handler = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)recordPostedNotification:(id)notification
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"notificationType";
  sourceIdentifier = [notification sourceIdentifier];
  v6[0] = sourceIdentifier;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  CalAnalyticsSendEvent();
}

- (void)recordNotificationResponse:(id)response
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"notificationType";
  responseCopy = response;
  notificationRecord = [responseCopy notificationRecord];
  sourceIdentifier = [notificationRecord sourceIdentifier];
  v8[1] = @"actionIdentifier";
  v9[0] = sourceIdentifier;
  actionIdentifier = [responseCopy actionIdentifier];

  v9[1] = actionIdentifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  CalAnalyticsSendEvent();
}

@end