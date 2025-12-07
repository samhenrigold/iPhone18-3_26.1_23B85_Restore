@interface ATXMissedNotificationRankingLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXMissedNotificationRankingLoggingEvent)initWithCoder:(id)coder;
- (ATXMissedNotificationRankingLoggingEvent)initWithMissedNotificationRanking:(id)ranking eventType:(int64_t)type timestamp:(double)timestamp;
- (ATXMissedNotificationRankingLoggingEvent)initWithProto:(id)proto;
- (ATXMissedNotificationRankingLoggingEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXMissedNotificationRankingLoggingEvent

- (ATXMissedNotificationRankingLoggingEvent)initWithMissedNotificationRanking:(id)ranking eventType:(int64_t)type timestamp:(double)timestamp
{
  rankingCopy = ranking;
  v13.receiver = self;
  v13.super_class = ATXMissedNotificationRankingLoggingEvent;
  v10 = [(ATXMissedNotificationRankingLoggingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_missedNotificationRanking, ranking);
    v11->_eventType = type;
    v11->_timestamp = timestamp;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXMissedNotificationRankingLoggingEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXMissedNotificationRankingLoggingEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXMissedNotificationRankingLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXMissedNotificationRankingLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  v16.receiver = self;
  v16.super_class = ATXMissedNotificationRankingLoggingEvent;
  v5 = [(ATXMissedNotificationRankingLoggingEvent *)&v16 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!protoCopy)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v14 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)v5 initWithProto:v14];
    }

    goto LABEL_9;
  }

  v7 = protoCopy;
  v8 = [ATXMissedNotificationRanking alloc];
  missedNotificationRanking = [v7 missedNotificationRanking];
  v10 = [(ATXMissedNotificationRanking *)v8 initWithProto:missedNotificationRanking];
  missedNotificationRanking = v5->_missedNotificationRanking;
  v5->_missedNotificationRanking = v10;

  [v7 timestamp];
  v5->_timestamp = v12;
  LODWORD(v8) = [v7 eventType];

  v5->_eventType = v8;
LABEL_5:
  v13 = v5;
LABEL_10:

  return v13;
}

- (ATXMissedNotificationRankingLoggingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBMissedNotificationRankingLoggingEvent alloc] initWithData:dataCopy];

    self = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setEventType:{-[ATXMissedNotificationRankingLoggingEvent eventType](self, "eventType")}];
  [(ATXMissedNotificationRankingLoggingEvent *)self timestamp];
  [v3 setTimestamp:?];
  missedNotificationRanking = [(ATXMissedNotificationRankingLoggingEvent *)self missedNotificationRanking];
  proto = [missedNotificationRanking proto];
  [v3 setMissedNotificationRanking:proto];

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBMissedNotificationRankingLoggingEvent alloc] initFromJSON:nCopy];

  v6 = [(ATXMissedNotificationRankingLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXMissedNotificationRankingLoggingEvent *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXMissedNotificationRankingLoggingEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end