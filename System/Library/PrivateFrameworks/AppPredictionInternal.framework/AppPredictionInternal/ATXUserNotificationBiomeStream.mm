@interface ATXUserNotificationBiomeStream
- (ATXUserNotificationBiomeStream)initWithStoreConfig:(id)config;
- (id)publisherFromStartTime:(id)time endTime:(id)endTime maxEvents:(unint64_t)events lastN:(unint64_t)n reversed:(BOOL)reversed;
- (id)source;
- (void)sendEvent:(id)event;
- (void)sendEvent:(int64_t)event notification:(id)notification deliveryReason:(unint64_t)reason interactionUI:(unint64_t)i;
@end

@implementation ATXUserNotificationBiomeStream

- (id)source
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  source = selfCopy->_source;
  if (!source)
  {
    source = [(BMStoreStream *)selfCopy->_inner source];
    v5 = selfCopy->_source;
    selfCopy->_source = source;

    source = selfCopy->_source;
  }

  v6 = source;
  objc_sync_exit(selfCopy);

  return v6;
}

- (ATXUserNotificationBiomeStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ATXUserNotificationBiomeStream;
  v5 = [(ATXUserNotificationBiomeStream *)&v11 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = atx_storeConfig;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"userNotificationEvents" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (id)publisherFromStartTime:(id)time endTime:(id)endTime maxEvents:(unint64_t)events lastN:(unint64_t)n reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  inner = self->_inner;
  v12 = MEMORY[0x277CF1A50];
  endTimeCopy = endTime;
  timeCopy = time;
  v15 = [[v12 alloc] initWithStartDate:timeCopy endDate:endTimeCopy maxEvents:events lastN:n reversed:reversedCopy];

  v16 = [(BMStoreStream *)inner publisherWithOptions:v15];

  return v16;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  source = [(ATXUserNotificationBiomeStream *)self source];
  [source sendEvent:eventCopy];
}

- (void)sendEvent:(int64_t)event notification:(id)notification deliveryReason:(unint64_t)reason interactionUI:(unint64_t)i
{
  v10 = MEMORY[0x277CEB980];
  notificationCopy = notification;
  v12 = [v10 alloc];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v13 = [v12 initFromUserNotification:notificationCopy eventType:event timestamp:reason deliveryReason:i deliveryUI:?];

  [(ATXUserNotificationBiomeStream *)self sendEvent:v13];
}

@end