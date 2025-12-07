@interface ATXDigestOnboardingLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXDigestOnboardingLoggingEvent)initWithProto:(id)proto;
- (ATXDigestOnboardingLoggingEvent)initWithProtoData:(id)data;
- (ATXDigestOnboardingLoggingEvent)initWithSessionUUID:(id)d entrySource:(int)source digestOnboardingOutcome:(int)outcome finalUIShown:(int)shown didSelectShowMore:(BOOL)more timeTaken:(double)taken deliveryTimes:(id)times;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingLoggingEvent

- (ATXDigestOnboardingLoggingEvent)initWithSessionUUID:(id)d entrySource:(int)source digestOnboardingOutcome:(int)outcome finalUIShown:(int)shown didSelectShowMore:(BOOL)more timeTaken:(double)taken deliveryTimes:(id)times
{
  dCopy = d;
  timesCopy = times;
  v22.receiver = self;
  v22.super_class = ATXDigestOnboardingLoggingEvent;
  v19 = [(ATXDigestOnboardingLoggingEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionUUID, d);
    v20->_entrySource = source;
    v20->_digestOnboardingOutcome = outcome;
    v20->_finalUIShown = shown;
    v20->_didSelectShowMore = more;
    v20->_timeTaken = taken;
    objc_storeStrong(&v20->_deliveryTimes, times);
  }

  return v20;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (ATXDigestOnboardingLoggingEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[ATXPBDigestOnboardingLoggingEvent alloc] initWithData:dataCopy];

  v6 = [(ATXDigestOnboardingLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXDigestOnboardingLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXDigestOnboardingLoggingEvent)initWithProto:(id)proto
{
  v38 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      selfCopy = self;
      v32 = protoCopy;
      v6 = protoCopy;
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      sessionUUID = [v6 sessionUUID];
      v29 = [v7 initWithUUIDString:sessionUUID];

      entrySource = [v6 entrySource];
      digestOnboardingOutcome = [v6 digestOnboardingOutcome];
      finalUIShown = [v6 finalUIShown];
      didSelectShowMore = [v6 didSelectShowMore];
      [v6 timeTaken];
      v10 = v9;
      v11 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v6;
      deliveryTimes = [v6 deliveryTimes];
      v13 = [deliveryTimes countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v34;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(deliveryTimes);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            v18 = objc_opt_new();
            v19 = [v17 componentsSeparatedByString:@":"];
            v20 = [v19 objectAtIndexedSubscript:0];
            [v18 setHour:{objc_msgSend(v20, "integerValue")}];

            v21 = [v19 objectAtIndexedSubscript:1];
            [v18 setMinute:{objc_msgSend(v21, "integerValue")}];

            [v11 addObject:v18];
          }

          v14 = [deliveryTimes countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v14);
      }

      self = [(ATXDigestOnboardingLoggingEvent *)selfCopy initWithSessionUUID:v29 entrySource:entrySource digestOnboardingOutcome:digestOnboardingOutcome finalUIShown:finalUIShown didSelectShowMore:didSelectShowMore timeTaken:v11 deliveryTimes:v10];
      selfCopy2 = self;
      protoCopy = v32;
      v23 = v30;
    }

    else
    {
      v23 = __atxlog_handle_notification_management(isKindOfClass);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [(ATXDigestTimeline *)self initWithProto:v23];
      }

      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)proto
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:uUIDString];

  [v3 setEntrySource:self->_entrySource];
  [v3 setDigestOnboardingOutcome:self->_digestOnboardingOutcome];
  [v3 setFinalUIShown:self->_finalUIShown];
  [v3 setDidSelectShowMore:self->_didSelectShowMore];
  v13 = v3;
  [v3 setTimeTaken:self->_timeTaken];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_deliveryTimes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%ld", objc_msgSend(*(*(&v14 + 1) + 8 * i), "hour"), objc_msgSend(*(*(&v14 + 1) + 8 * i), "minute")];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v13 setDeliveryTimes:v5];

  return v13;
}

@end