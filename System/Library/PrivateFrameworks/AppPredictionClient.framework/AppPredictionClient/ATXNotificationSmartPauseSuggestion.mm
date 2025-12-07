@interface ATXNotificationSmartPauseSuggestion
- (ATXNotificationSmartPauseSuggestion)initWithCoder:(id)coder;
- (ATXNotificationSmartPauseSuggestion)initWithProto:(id)proto;
- (ATXNotificationSmartPauseSuggestion)initWithProtoData:(id)data;
- (ATXNotificationSmartPauseSuggestion)initWithSuggestionExpiration:(id)expiration pauseDuration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXNotificationSmartPauseSuggestion:(id)suggestion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationSmartPauseSuggestion

- (ATXNotificationSmartPauseSuggestion)initWithSuggestionExpiration:(id)expiration pauseDuration:(double)duration
{
  expirationCopy = expiration;
  v11.receiver = self;
  v11.super_class = ATXNotificationSmartPauseSuggestion;
  v8 = [(ATXNotificationSmartPauseSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestionExpiration, expiration);
    v9->_suggestionDuration = duration;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationSmartPauseSuggestion *)self isEqualToATXNotificationSmartPauseSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationSmartPauseSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  [(NSDate *)self->_suggestionExpiration timeIntervalSinceReferenceDate];
  v6 = v5;
  [suggestionCopy[1] timeIntervalSinceReferenceDate];
  v8 = v6 - v7;
  v9 = -v8;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  if (v9 <= 300.0)
  {
    v11 = self->_suggestionDuration - *(suggestionCopy + 2);
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    v10 = v11 <= 300.0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Smart Pause:   Expiration: %@, Duration: %f", self->_suggestionExpiration, *&self->_suggestionDuration];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXNotificationSmartPauseSuggestion allocWithZone:zone];
  suggestionExpiration = self->_suggestionExpiration;
  suggestionDuration = self->_suggestionDuration;

  return [(ATXNotificationSmartPauseSuggestion *)v4 initWithSuggestionExpiration:suggestionExpiration pauseDuration:suggestionDuration];
}

- (id)encodeAsProto
{
  proto = [(ATXNotificationSmartPauseSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXNotificationSmartPauseSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBNotificationSmartPauseSuggestion alloc] initWithData:dataCopy];

    self = [(ATXNotificationSmartPauseSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXNotificationSmartPauseSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_notification_management(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationSmartPauseSuggestion initWithProto:?];
      }

      selfCopy = 0;
      goto LABEL_17;
    }

    v6 = protoCopy;
    hasExpirationTimestamp = [v6 hasExpirationTimestamp];
    if (hasExpirationTimestamp)
    {
      v8 = MEMORY[0x1E695DF00];
      [v6 expirationTimestamp];
      v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
      hasPauseDuration = [v6 hasPauseDuration];
      if (hasPauseDuration)
      {
        [v6 pauseDuration];
        self = [(ATXNotificationSmartPauseSuggestion *)self initWithSuggestionExpiration:v9 pauseDuration:?];
        selfCopy = self;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v12 = __atxlog_handle_notification_management(hasPauseDuration);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationSmartPauseSuggestion initWithProto:?];
      }
    }

    else
    {
      v9 = __atxlog_handle_notification_management(hasExpirationTimestamp);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationSmartPauseSuggestion initWithProto:?];
      }
    }

    selfCopy = 0;
    goto LABEL_16;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(NSDate *)self->_suggestionExpiration timeIntervalSinceReferenceDate];
  [v3 setExpirationTimestamp:?];
  [v3 setPauseDuration:self->_suggestionDuration];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXNotificationSmartPauseSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXNotificationSmartPauseSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXNotificationSmartPauseSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0(&dword_1BF549000, v3, v4, "%@: Unable to construct class from ProtoBuf object", v5, v6, v7, v8, v9, DWORD2(v9));
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0(&dword_1BF549000, v3, v4, "%@: missing expirationTimestamp.", v5, v6, v7, v8, v9, DWORD2(v9));
}

- (void)initWithProto:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0(&dword_1BF549000, v3, v4, "%@: missing pauseDuration.", v5, v6, v7, v8, v9, DWORD2(v9));
}

@end