@interface ATXBluetoothDuetEvent
+ (id)convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:(id)event;
+ (id)mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues;
+ (int64_t)deviceTypeFromATXBluetoothDeviceType:(int64_t)type;
+ (int64_t)deviceTypeFromBluetoothDeviceType:(id)type;
- (ATXBluetoothDuetEvent)initWithATXEvent:(id)event;
- (ATXBluetoothDuetEvent)initWithBluetoothState:(int64_t)state deviceType:(int64_t)type deviceName:(id)name hardwareAddress:(id)address startDate:(id)date endDate:(id)endDate;
- (ATXBluetoothDuetEvent)initWithCoder:(id)coder;
- (ATXBluetoothDuetEvent)initWithCurrentContextStoreValues;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)initWithCurrentContextStoreValues;
@end

@implementation ATXBluetoothDuetEvent

- (ATXBluetoothDuetEvent)initWithBluetoothState:(int64_t)state deviceType:(int64_t)type deviceName:(id)name hardwareAddress:(id)address startDate:(id)date endDate:(id)endDate
{
  nameCopy = name;
  addressCopy = address;
  selfCopy = 0;
  if (addressCopy && date)
  {
    v23.receiver = self;
    v23.super_class = ATXBluetoothDuetEvent;
    v17 = [(ATXDuetEvent *)&v23 initWithStartDate:date endDate:endDate];
    if (v17)
    {
      v18 = [addressCopy copy];
      deviceIdentifier = v17->_deviceIdentifier;
      v17->_deviceIdentifier = v18;

      v20 = [nameCopy copy];
      deviceName = v17->_deviceName;
      v17->_deviceName = v20;

      v17->_bluetoothState = state;
      v17->_deviceType = type;
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (ATXBluetoothDuetEvent)initWithATXEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    connected = [eventCopy connected];
    v7 = [objc_opt_class() deviceTypeFromATXBluetoothDeviceType:{objc_msgSend(eventCopy, "deviceType")}];
    deviceName = [eventCopy deviceName];
    deviceAddress = [eventCopy deviceAddress];
    startTime = [eventCopy startTime];
    endTime = [eventCopy endTime];
    self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:connected deviceType:v7 deviceName:deviceName hardwareAddress:deviceAddress startDate:startTime endDate:endTime];

    selfCopy = self;
  }

  else
  {
    v13 = __atxlog_handle_default(isKindOfClass);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)eventCopy initWithATXEvent:v13];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXBluetoothDuetEvent)initWithCurrentContextStoreValues
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForBluetoothDataDictionary = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
  v5 = [userContext objectForKeyedSubscript:keyPathForBluetoothDataDictionary];

  if (!v5 || ([MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(userContext, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) == 0))
  {
    bluetoothNameKey2 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(bluetoothNameKey2, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)bluetoothNameKey2 initWithCurrentContextStoreValues:v45];
    }

    goto LABEL_18;
  }

  bluetoothNameKey = [MEMORY[0x277CFE338] bluetoothNameKey];
  v11 = [v5 objectForKeyedSubscript:bluetoothNameKey];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    v53 = __atxlog_handle_default(v13);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v5 initWithCurrentContextStoreValues];
    }

    v54 = MEMORY[0x277CBEAD8];
    v55 = *MEMORY[0x277CBE658];
    bluetoothNameKey2 = [MEMORY[0x277CFE338] bluetoothNameKey];
    v56 = [v5 objectForKeyedSubscript:bluetoothNameKey2];
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    [v54 raise:v55 format:{@"Value for 'bluetoothNameKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString. Found %@ instead", v58}];

    goto LABEL_18;
  }

  bluetoothNameKey3 = [MEMORY[0x277CFE338] bluetoothNameKey];
  v15 = [v5 objectForKeyedSubscript:bluetoothNameKey3];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_2839A6058;
  }

  bluetoothNameKey2 = v17;

  bluetoothAddressKey = [MEMORY[0x277CFE338] bluetoothAddressKey];
  v20 = [v5 objectForKeyedSubscript:bluetoothAddressKey];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if ((v21 & 1) == 0)
  {
    v59 = __atxlog_handle_default(v22);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v59 initWithCurrentContextStoreValues:v60];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'bluetoothAddressKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString."];
LABEL_18:
    selfCopy = 0;
    goto LABEL_19;
  }

  bluetoothAddressKey2 = [MEMORY[0x277CFE338] bluetoothAddressKey];
  v24 = [v5 objectForKeyedSubscript:bluetoothAddressKey2];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_2839A6058;
  }

  v27 = v26;

  bluetoothConnectionStatusKey = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
  v29 = [v5 objectForKeyedSubscript:bluetoothConnectionStatusKey];
  objc_opt_class();
  v30 = objc_opt_isKindOfClass();

  if (v30)
  {
    bluetoothConnectionStatusKey2 = [MEMORY[0x277CFE338] bluetoothConnectionStatusKey];
    v33 = [v5 objectForKeyedSubscript:bluetoothConnectionStatusKey2];
    integerValue = [v33 integerValue];

    v34 = MEMORY[0x277CCABB0];
    bluetoothDeviceTypeKey = [MEMORY[0x277CFE338] bluetoothDeviceTypeKey];
    v36 = [v5 objectForKeyedSubscript:bluetoothDeviceTypeKey];
    v37 = [v34 numberWithLong:v36];
    v38 = [ATXBluetoothDuetEvent deviceTypeFromBluetoothDeviceType:v37];

    keyPathForBluetoothDataDictionary2 = [MEMORY[0x277CFE338] keyPathForBluetoothDataDictionary];
    v40 = [userContext lastModifiedDateForContextualKeyPath:keyPathForBluetoothDataDictionary2];

    date = [MEMORY[0x277CBEAA8] date];
    v42 = date;
    if (v40)
    {
      v43 = v40;
    }

    else
    {
      v43 = date;
    }

    self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:integerValue deviceType:v38 deviceName:bluetoothNameKey2 hardwareAddress:v27 startDate:v43 endDate:date];

    selfCopy = self;
  }

  else
  {
    v67 = __atxlog_handle_default(v31);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      [(ATXBluetoothDuetEvent *)v67 initWithCurrentContextStoreValues:v68];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Value for 'bluetoothConnectionStatusKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSNumber."];
    selfCopy = 0;
  }

LABEL_19:
  return selfCopy;
}

+ (id)mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues
{
  initWithCurrentContextStoreValues = [[ATXBluetoothDuetEvent alloc] initWithCurrentContextStoreValues];
  v3 = initWithCurrentContextStoreValues;
  if (initWithCurrentContextStoreValues && ![(ATXBluetoothDuetEvent *)initWithCurrentContextStoreValues bluetoothState])
  {
    v4 = [ATXBluetoothDuetEvent convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)convertActiveBluetoothDisconnectedEventIntoInactiveBluetoothConnectedEvent:(id)event
{
  eventCopy = event;
  v4 = [ATXBluetoothDuetEvent alloc];
  deviceType = [eventCopy deviceType];
  deviceName = [eventCopy deviceName];
  deviceIdentifier = [eventCopy deviceIdentifier];
  startDate = [eventCopy startDate];
  startDate2 = [eventCopy startDate];

  v10 = [(ATXBluetoothDuetEvent *)v4 initWithBluetoothState:1 deviceType:deviceType deviceName:deviceName hardwareAddress:deviceIdentifier startDate:startDate endDate:startDate2];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deviceName = self->_deviceName;
  deviceIdentifier = self->_deviceIdentifier;
  bluetoothState = self->_bluetoothState;
  startDate = [(ATXDuetEvent *)self startDate];
  endDate = [(ATXDuetEvent *)self endDate];
  v9 = [v3 stringWithFormat:@"Device name: %@, Device id: %@, Bluetooth state: %ld, start date: %@, end date: %@", deviceName, deviceIdentifier, bluetoothState, startDate, endDate];

  return v9;
}

+ (int64_t)deviceTypeFromBluetoothDeviceType:(id)type
{
  integerValue = [type integerValue];
  if ((integerValue - 3) > 0x2B)
  {
    return 2;
  }

  else
  {
    return qword_226872A90[integerValue - 3];
  }
}

+ (int64_t)deviceTypeFromATXBluetoothDeviceType:(int64_t)type
{
  if (type >= 5)
  {
    return 2;
  }

  else
  {
    return type;
  }
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

  [coderCopy encodeInteger:-[ATXBluetoothDuetEvent bluetoothState](self forKey:{"bluetoothState"), @"codingKeyForBluetoothState"}];
  [coderCopy encodeInteger:-[ATXBluetoothDuetEvent deviceType](self forKey:{"deviceType"), @"codingKeyForDeviceType"}];
  deviceName = [(ATXBluetoothDuetEvent *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"codingKeyForDeviceName"];

  deviceIdentifier = [(ATXBluetoothDuetEvent *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"codingKeyForHardwareAddress"];
}

- (ATXBluetoothDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor(v6);
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor(v12);
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v13];

    if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForBluetoothState"), -[ATXBluetoothDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v16, @"codingKeyForBluetoothState", coderCopy, @"com.apple.proactive.ATXDuetEvent.Bluetooth", -1)) || (v17 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"codingKeyForDeviceType"), -[ATXBluetoothDuetEvent checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForNSInteger:key:coder:errorDomain:errorCode:", v17, @"codingKeyForDeviceType", coderCopy, @"com.apple.proactive.ATXDuetEvent.Bluetooth", -1)))
    {
      selfCopy = 0;
    }

    else
    {
      v19 = MEMORY[0x277D42620];
      v20 = objc_opt_class();
      v21 = __atxlog_handle_anchor(v20);
      v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"codingKeyForDeviceName" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v21];

      if (v22 && ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        v24 = MEMORY[0x277D42620];
        v25 = objc_opt_class();
        v26 = __atxlog_handle_anchor(v25);
        v27 = [v24 robustDecodeObjectOfClass:v25 forKey:@"codingKeyForHardwareAddress" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent.Bluetooth" errorCode:-1 logHandle:v26];

        if (v27 && ([coderCopy error], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
        {
          self = [(ATXBluetoothDuetEvent *)self initWithBluetoothState:v16 deviceType:v17 deviceName:v22 hardwareAddress:v27 startDate:v8 endDate:v14];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
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

- (void)initWithCurrentContextStoreValues
{
  v10 = *MEMORY[0x277D85DE8];
  bluetoothNameKey = [MEMORY[0x277CFE338] bluetoothNameKey];
  v5 = [self objectForKeyedSubscript:bluetoothNameKey];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412290;
  v9 = v7;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Value for 'bluetoothNameKey' in ContextStore's 'keyPathForBluetoothDataDictionary' is not an NSString. Found %@ instead", &v8, 0xCu);
}

@end