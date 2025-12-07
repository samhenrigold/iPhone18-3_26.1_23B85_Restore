@interface ATXChargerPluggedInDuetEvent
- (ATXChargerPluggedInDuetEvent)initWithATXEvent:(id)event;
- (ATXChargerPluggedInDuetEvent)initWithChargerPluggedInState:(int64_t)state adapterType:(id)type startDate:(id)date endDate:(id)endDate;
- (ATXChargerPluggedInDuetEvent)initWithCoder:(id)coder;
- (ATXChargerPluggedInDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXChargerPluggedInDuetEvent

- (ATXChargerPluggedInDuetEvent)initWithChargerPluggedInState:(int64_t)state adapterType:(id)type startDate:(id)date endDate:(id)endDate
{
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = ATXChargerPluggedInDuetEvent;
  v11 = [(ATXDuetEvent *)&v17 initWithStartDate:date endDate:endDate];
  v12 = v11;
  if (v11)
  {
    v11->_chargerPluggedInState = state;
    v13 = [typeCopy copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_283A569F0;
    }

    objc_storeStrong(&v12->_adapterType, v15);
  }

  return v12;
}

- (ATXChargerPluggedInDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = eventCopy;
    connected = [v6 connected];
    adapterType = [v6 adapterType];
    startTime = [v6 startTime];
    endTime = [v6 endTime];

    self = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:connected adapterType:adapterType startDate:startTime endDate:endTime];
    selfCopy = self;
  }

  else
  {
    v12 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXChargerPluggedInDuetEvent *)eventCopy initWithATXEvent:v12];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXChargerPluggedInDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v9 = [v5 objectForKeyedSubscript:batteryExternalConnectedKey];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        batteryExternalConnectedKey2 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
        v13 = [v5 objectForKeyedSubscript:batteryExternalConnectedKey2];
        integerValue = [v13 integerValue];

        batteryAdapterTypeKey = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
        v16 = [v5 objectForKeyedSubscript:batteryAdapterTypeKey];

        if (v16)
        {
          objc_opt_class();
          v17 = objc_opt_isKindOfClass();
          v18 = v16;
          if ((v17 & 1) == 0)
          {
            v19 = __atxlog_handle_default(v17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
            }

            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'batteryAdapterTypeKey' in ContextStore's 'keyPathForBatteryStateDataDictionary' is not an NSNumber."];
            selfCopy = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v18 = &unk_283A569F0;
        }

        v28 = MEMORY[0x277CBEAA8];
        v29 = v18;
        date = [v28 date];
        v31 = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:integerValue adapterType:v29 startDate:date endDate:date];

        self = v31;
        selfCopy = self;
LABEL_23:

        goto LABEL_20;
      }

      v26 = __atxlog_handle_default(v11);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
      }

      v23 = MEMORY[0x277CBEAD8];
      v24 = *MEMORY[0x277CBE658];
      v25 = @"Value for 'batteryExternalConnectedKey' in ContextStore's 'keyPathForBatteryStateDataDictionary' is not an NSNumber.";
    }

    else
    {
      v22 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
      }

      v23 = MEMORY[0x277CBEAD8];
      v24 = *MEMORY[0x277CBE658];
      v25 = @"ContextStore's 'keyPathForBatteryStateDataDictionary' is not an NSDictionary.";
    }

    [v23 raise:v24 format:v25];
  }

  else
  {
    v21 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXChargerPluggedInDuetEvent initWithCurrentContextStoreValues];
    }
  }

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (id)identifier
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ChargerPluggedIn_1_%@", self->_adapterType];

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  chargerPluggedInState = self->_chargerPluggedInState;
  adapterType = self->_adapterType;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v8 = [v3 initWithFormat:@"Charger Plugged In state: %ld, adapter type: %@, start date: %@, end date: %@", chargerPluggedInState, adapterType, startDate, endDate];

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

  [coderCopy encodeInteger:-[ATXChargerPluggedInDuetEvent chargerPluggedInState](self forKey:{"chargerPluggedInState"), @"codingKeyForChargerPluggedInState"}];
  adapterType = [(ATXChargerPluggedInDuetEvent *)self adapterType];
  [coderCopy encodeObject:adapterType forKey:@"codingKeyForAdapterType"];
}

- (ATXChargerPluggedInDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForChargerPluggedInState"), -[ATXChargerPluggedInDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForChargerPluggedInState", coderCopy, @"com.apple.proactive.ATXDuetEvent", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_anchor(v19);
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"codingKeyForAdapterType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v20];

      if (v21 && ([coderCopy error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(ATXChargerPluggedInDuetEvent *)self initWithChargerPluggedInState:v16 adapterType:v21 startDate:v8 endDate:v14];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
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