@interface ATXCarPlayDuetEvent
- (ATXCarPlayDuetEvent)initWithATXEvent:(id)event;
- (ATXCarPlayDuetEvent)initWithCarPlayConnectedState:(int64_t)state startDate:(id)date endDate:(id)endDate;
- (ATXCarPlayDuetEvent)initWithCoder:(id)coder;
- (ATXCarPlayDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXCarPlayDuetEvent

- (ATXCarPlayDuetEvent)initWithCarPlayConnectedState:(int64_t)state startDate:(id)date endDate:(id)endDate
{
  v7.receiver = self;
  v7.super_class = ATXCarPlayDuetEvent;
  result = [(ATXDuetEvent *)&v7 initWithStartDate:date endDate:endDate];
  if (result)
  {
    result->_carPlayState = state;
  }

  return result;
}

- (ATXCarPlayDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    connected = [eventCopy connected];
    startTime = [eventCopy startTime];
    endTime = [eventCopy endTime];
    self = [(ATXCarPlayDuetEvent *)self initWithCarPlayConnectedState:connected startDate:startTime endDate:endTime];

    selfCopy = self;
  }

  else
  {
    v10 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXCarPlayDuetEvent *)eventCopy initWithATXEvent:v10];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXCarPlayDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForCarplayConnectedStatus = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
  v5 = [userContext objectForKeyedSubscript:keyPathForCarplayConnectedStatus];

  if (!v5)
  {
    v11 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXCarPlayDuetEvent *)v11 initWithCurrentContextStoreValues];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXCarPlayDuetEvent *)v12 initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"ContextStore's 'keyPathForCarplayConnectedStatus' is not an NSNumber."];
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  integerValue = [v5 integerValue];
  date = [MEMORY[0x277CBEAA8] date];
  self = [(ATXCarPlayDuetEvent *)self initWithCarPlayConnectedState:integerValue startDate:date endDate:date];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(ATXCarPlayDuetEvent *)self identifier];
  carPlayState = self->_carPlayState;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v8 = [v3 stringWithFormat:@"CarPlay Event - identifier: %@, connection status: %ld, start date: %@, end date: %@", identifier, carPlayState, startDate, endDate];

  return v8;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startDate = [(ATXDuetEvent *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"codingKeyForStartDate"];

  endDate = [(ATXDuetEvent *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"codingKeyForEndDate"];

  [coderCopy encodeInteger:-[ATXCarPlayDuetEvent carPlayState](self forKey:{"carPlayState"), @"codingKeyForCarPlayState"}];
}

- (ATXCarPlayDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.CarPlay" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.CarPlay" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForCarPlayState"), -[ATXCarPlayDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForCarPlayState", coderCopy, @"com.apple.proactive.ATXDuetEvent.CarPlay", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXCarPlayDuetEvent *)self initWithCarPlayConnectedState:v16 startDate:v8 endDate:v14];
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithATXEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value of event was %@, not %@", &v7, 0x16u);
}

@end