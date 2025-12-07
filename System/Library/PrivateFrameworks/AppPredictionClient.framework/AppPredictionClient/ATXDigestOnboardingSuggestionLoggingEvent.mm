@interface ATXDigestOnboardingSuggestionLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProto:(id)proto;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProtoData:(id)data;
- (ATXDigestOnboardingSuggestionLoggingEvent)initWithSessionUUID:(id)d outcome:(int)outcome timeToResolution:(double)resolution;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingSuggestionLoggingEvent

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithSessionUUID:(id)d outcome:(int)outcome timeToResolution:(double)resolution
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ATXDigestOnboardingSuggestionLoggingEvent;
  v10 = [(ATXDigestOnboardingSuggestionLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionUUID, d);
    v11->_outcome = outcome;
    v11->_timeToResolution = resolution;
  }

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[ATXPBDigestOnboardingSuggestionLoggingEvent alloc] initWithData:dataCopy];

  v6 = [(ATXDigestOnboardingSuggestionLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXDigestOnboardingSuggestionLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXDigestOnboardingSuggestionLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v15 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v15];
    }

    goto LABEL_7;
  }

  v6 = MEMORY[0x1E696AFB0];
  v7 = protoCopy;
  v8 = [v6 alloc];
  sessionUUID = [v7 sessionUUID];
  v10 = [v8 initWithUUIDString:sessionUUID];

  digestOnboardingSuggestionOutcome = [v7 digestOnboardingSuggestionOutcome];
  [v7 timeToResolution];
  v13 = v12;

  self = [(ATXDigestOnboardingSuggestionLoggingEvent *)self initWithSessionUUID:v10 outcome:digestOnboardingSuggestionOutcome timeToResolution:v13];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:uUIDString];

  [v3 setDigestOnboardingSuggestionOutcome:self->_outcome];
  [v3 setTimeToResolution:self->_timeToResolution];

  return v3;
}

@end