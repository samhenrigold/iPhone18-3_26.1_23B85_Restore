@interface ASDTPMActionAnalyticsEvent
- (ASDTPMActionAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer;
- (int)action;
- (void)sendEventNamed:(id)named withData:(id)data;
@end

@implementation ASDTPMActionAnalyticsEvent

- (ASDTPMActionAnalyticsEvent)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v19.receiver = self;
  v19.super_class = ASDTPMActionAnalyticsEvent;
  v7 = [(ASDTPMAction *)&v19 initWithConfig:configCopy forSequencer:sequencer];
  if (!v7)
  {
LABEL_5:
    v16 = v7;
    goto LABEL_9;
  }

  asdtPMActionAnalyticsEventName = [configCopy asdtPMActionAnalyticsEventName];
  [(ASDTPMActionAnalyticsEvent *)v7 setEventName:asdtPMActionAnalyticsEventName];

  eventName = [(ASDTPMActionAnalyticsEvent *)v7 eventName];

  if (eventName)
  {
    asdtName = [configCopy asdtName];

    if (!asdtName)
    {
      v13 = MEMORY[0x277CCACA8];
      eventName2 = [(ASDTPMActionAnalyticsEvent *)v7 eventName];
      v15 = [v13 stringWithFormat:@"AnalyticsEvent:%@", eventName2];
      [(ASDTPMAction *)v7 setName:v15];
    }

    goto LABEL_5;
  }

  v17 = ASDTBaseLogType(v10, v11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(ASDTPMActionAnalyticsEvent *)v7 initWithConfig:configCopy forSequencer:v17];
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (void)sendEventNamed:(id)named withData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  AnalyticsSendEventLazy();
}

- (int)action
{
  v17 = *MEMORY[0x277D85DE8];
  eventData = [(ASDTPMActionAnalyticsEvent *)self eventData];
  v5 = eventData;
  if (eventData)
  {
    v6 = ASDTBaseLogType(eventData, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTPMDevice *)self name];
      eventName = [(ASDTPMActionAnalyticsEvent *)self eventName];
      v11 = 138412802;
      v12 = name;
      v13 = 2112;
      v14 = eventName;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_241659000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@: %@", &v11, 0x20u);
    }

    eventName2 = [(ASDTPMActionAnalyticsEvent *)self eventName];
    [(ASDTPMActionAnalyticsEvent *)self sendEventNamed:eventName2 withData:v5];
  }

  return 0;
}

- (void)initWithConfig:(NSObject *)a3 forSequencer:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_241659000, a3, OS_LOG_TYPE_ERROR, "%@: Event name must be defined in config: %@", &v6, 0x16u);
}

@end