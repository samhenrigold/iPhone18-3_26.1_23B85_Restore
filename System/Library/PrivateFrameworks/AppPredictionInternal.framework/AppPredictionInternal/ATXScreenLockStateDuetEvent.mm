@interface ATXScreenLockStateDuetEvent
- (ATXScreenLockStateDuetEvent)initWithATXEvent:(id)event;
- (ATXScreenLockStateDuetEvent)initWithCoder:(id)coder;
- (ATXScreenLockStateDuetEvent)initWithCurrentContextStoreValues;
- (ATXScreenLockStateDuetEvent)initWithScreenLockState:(int64_t)state startDate:(id)date endDate:(id)endDate;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXScreenLockStateDuetEvent

- (ATXScreenLockStateDuetEvent)initWithScreenLockState:(int64_t)state startDate:(id)date endDate:(id)endDate
{
  v7.receiver = self;
  v7.super_class = ATXScreenLockStateDuetEvent;
  result = [(ATXDuetEvent *)&v7 initWithStartDate:date endDate:endDate];
  if (result)
  {
    result->_screenLockState = state;
  }

  return result;
}

- (ATXScreenLockStateDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = eventCopy;
    isLocked = [v6 isLocked];
    startTime = [v6 startTime];
    endTime = [v6 endTime];

    self = [(ATXScreenLockStateDuetEvent *)self initWithScreenLockState:isLocked startDate:startTime endDate:endTime];
    selfCopy = self;
  }

  else
  {
    v11 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXScreenLockStateDuetEvent *)eventCopy initWithATXEvent:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXScreenLockStateDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForDeviceLockStatus = [MEMORY[0x277CFE338] keyPathForDeviceLockStatus];
  v5 = [userContext objectForKeyedSubscript:keyPathForDeviceLockStatus];

  if (!v5)
  {
    v11 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXScreenLockStateDuetEvent *)v11 initWithCurrentContextStoreValues];
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
      [(ATXScreenLockStateDuetEvent *)v12 initWithCurrentContextStoreValues];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"ContextStore's 'keyPathForDeviceLockStatus' is not an NSNumber."];
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  integerValue = [v5 integerValue];
  date = [MEMORY[0x277CBEAA8] date];
  self = [(ATXScreenLockStateDuetEvent *)self initWithScreenLockState:integerValue startDate:date endDate:date];

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  screenLockState = [(ATXScreenLockStateDuetEvent *)self screenLockState];
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v7 = [v3 initWithFormat:@"Screen Lock state: %ld, start date: %@, end date: %@", screenLockState, startDate, endDate];

  return v7;
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

  [coderCopy encodeInteger:-[ATXScreenLockStateDuetEvent screenLockState](self forKey:{"screenLockState"), @"codingKeyForScreenLockState"}];
}

- (ATXScreenLockStateDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.ScreenLockState" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.ScreenLockState" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForScreenLockState"), -[ATXScreenLockStateDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForScreenLockState", coderCopy, @"com.apple.proactive.ATXDuetEvent.ScreenLockState", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXScreenLockStateDuetEvent *)self initWithScreenLockState:v16 startDate:v8 endDate:v14];
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