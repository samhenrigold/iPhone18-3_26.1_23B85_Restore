@interface SMEmergencyContactsNotifiedSyncMessage
- (SMEmergencyContactsNotifiedSyncMessage)initWithCoder:(id)coder;
- (SMEmergencyContactsNotifiedSyncMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerCategory:(unint64_t)category;
- (SMEmergencyContactsNotifiedSyncMessage)initWithDictionary:(id)dictionary;
- (SMEmergencyContactsNotifiedSyncMessage)initWithSessionID:(id)d triggerCategory:(unint64_t)category;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMEmergencyContactsNotifiedSyncMessage

- (SMEmergencyContactsNotifiedSyncMessage)initWithSessionID:(id)d triggerCategory:(unint64_t)category
{
  v6 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v8 = [v6 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v8 messageID:uUID sessionID:dCopy triggerCategory:category];

  return v10;
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerCategory:(unint64_t)category
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  v13 = iDCopy;
  if (!dateCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: date";
LABEL_16:
    _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_17;
  }

  if (!dCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: messageID";
    goto LABEL_16;
  }

  if (!iDCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_16;
  }

  if (category - 1 >= 0x19)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: triggerCategory > SMTriggerCategoryUnknown && triggerCategory < SMTriggerCategoryMax";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v19.receiver = self;
  v19.super_class = SMEmergencyContactsNotifiedSyncMessage;
  v14 = [(SMMessage *)&v19 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  if (v14)
  {
    v14->_triggerCategory = category;
  }

  self = v14;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v45) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v45, 2u);
    }

    goto LABEL_14;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    v45 = 138413058;
    v46 = v25;
    v47 = 2112;
    v48 = v26;
    v49 = 1024;
    messageType = [objc_opt_class() messageType];
    v51 = 1024;
    v52 = intValue;
    v27 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v28 = v12;
    v29 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, v27, &v45, v29);

    goto LABEL_14;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 == 1)
  {
    v11 = [v6 valueForKey:@"sendDate"];
    v12 = v11;
    if (!v11)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v45 = 138412546;
        v46 = v37;
        v47 = 2112;
        v48 = v38;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v45, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_30;
    }

    v13 = MEMORY[0x277CBEAA8];
    [v11 doubleValue];
    v14 = [v13 dateWithTimeIntervalSince1970:?];
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = [v6 valueForKey:@"messageID"];
    v17 = [v15 initWithUUIDString:v16];

    if (!v17)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(a2);
        v45 = 138412546;
        v46 = v40;
        v47 = 2112;
        v48 = v41;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v45, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = [v6 valueForKey:@"sessionID"];
    v20 = [v18 initWithUUIDString:v19];

    if (v20)
    {
      v21 = [v6 valueForKey:@"triggerCategory"];
      if (v21)
      {
        v22 = v21;
        self = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 triggerCategory:[v21 intValue]];
        selfCopy = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = NSStringFromSelector(a2);
        v45 = 138412546;
        v46 = v43;
        v47 = 2112;
        v48 = v44;
        _os_log_error_impl(&dword_26455D000, v34, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerCategory", &v45, 0x16u);
      }

      v22 = 0;
    }

    else
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        v45 = 138412546;
        v46 = v32;
        v47 = 2112;
        v48 = v33;
        _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v45, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_28;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v35 = objc_opt_class();
    v25 = NSStringFromClass(v35);
    v26 = NSStringFromSelector(a2);
    v45 = 138412802;
    v46 = v25;
    v47 = 2112;
    v48 = v26;
    v49 = 1024;
    messageType = intValue2;
    v27 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v28 = v12;
    v29 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (id)outputToDictionary
{
  v6.receiver = self;
  v6.super_class = SMEmergencyContactsNotifiedSyncMessage;
  outputToDictionary = [(SMMessage *)&v6 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMEmergencyContactsNotifiedSyncMessage triggerCategory](self, "triggerCategory")}];
  [outputToDictionary setObject:v4 forKey:@"triggerCategory"];

  return outputToDictionary;
}

- (void)encodeWithCoder:(id)coder
{
  v12 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[SMEmergencyContactsNotifiedSyncMessage encodeWithCoder:]";
      v10 = 1024;
      v11 = 124;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = SMEmergencyContactsNotifiedSyncMessage;
  [(SMMessage *)&v7 encodeWithCoder:coderCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMEmergencyContactsNotifiedSyncMessage triggerCategory](self, "triggerCategory")}];
  [coderCopy encodeObject:v6 forKey:@"triggerCategory"];
}

- (SMEmergencyContactsNotifiedSyncMessage)initWithCoder:(id)coder
{
  v45 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v37) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v37, 2u);
    }

    goto LABEL_14;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v37 = 138413058;
    v38 = v16;
    v39 = 2112;
    v40 = v17;
    v41 = 1024;
    messageType = [objc_opt_class() messageType];
    v43 = 1024;
    v44 = v7;
    v18 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v19 = v9;
    v20 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, v18, &v37, v20);

    goto LABEL_14;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 == 1)
  {
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
    if (!v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        v37 = 138412546;
        v38 = v29;
        v39 = 2112;
        v40 = v30;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v37, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_30;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (!v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(a2);
        v37 = 138412546;
        v38 = v32;
        v39 = 2112;
        v40 = v33;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v37, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"triggerCategory"];
      if (v12)
      {
        v13 = v12;
        self = [(SMEmergencyContactsNotifiedSyncMessage *)self initWithDate:v9 messageID:v10 sessionID:v11 triggerCategory:[v12 intValue]];
        selfCopy = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        v37 = 138412546;
        v38 = v35;
        v39 = 2112;
        v40 = v36;
        _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerCategory", &v37, 0x16u);
      }

      v13 = 0;
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        v37 = 138412546;
        v38 = v24;
        v39 = 2112;
        v40 = v25;
        _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v37, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_28;
  }

  v21 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v16 = NSStringFromClass(v27);
    v17 = NSStringFromSelector(a2);
    v37 = 138412802;
    v38 = v16;
    v39 = 2112;
    v40 = v17;
    v41 = 1024;
    messageType = v21;
    v18 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v19 = v9;
    v20 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

@end