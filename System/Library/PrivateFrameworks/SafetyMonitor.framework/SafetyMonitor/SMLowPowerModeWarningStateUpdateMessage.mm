@interface SMLowPowerModeWarningStateUpdateMessage
- (SMLowPowerModeWarningStateUpdateMessage)initWithCoder:(id)coder;
- (SMLowPowerModeWarningStateUpdateMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD lowPowerModeWarningState:(int64_t)state;
- (SMLowPowerModeWarningStateUpdateMessage)initWithDictionary:(id)dictionary;
- (SMLowPowerModeWarningStateUpdateMessage)initWithSessionID:(id)d lowPowerModeWarningState:(int64_t)state;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMLowPowerModeWarningStateUpdateMessage

- (SMLowPowerModeWarningStateUpdateMessage)initWithSessionID:(id)d lowPowerModeWarningState:(int64_t)state
{
  v6 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v8 = [v6 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMLowPowerModeWarningStateUpdateMessage *)self initWithDate:v8 messageID:uUID sessionID:dCopy lowPowerModeWarningState:state];

  return v10;
}

- (SMLowPowerModeWarningStateUpdateMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD lowPowerModeWarningState:(int64_t)state
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
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: date";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_14;
  }

  if (!dCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: messageID";
    goto LABEL_13;
  }

  if (!iDCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v19.receiver = self;
  v19.super_class = SMLowPowerModeWarningStateUpdateMessage;
  v14 = [(SMMessage *)&v19 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  if (v14)
  {
    v14->_lowPowerModeWarningState = state;
  }

  self = v14;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (SMLowPowerModeWarningStateUpdateMessage)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v46) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v46, 2u);
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
LABEL_14:
      selfCopy = 0;
      goto LABEL_15;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    v46 = 138413058;
    v47 = v25;
    v48 = 2112;
    v49 = v26;
    v50 = 1024;
    messageType = [objc_opt_class() messageType];
    v52 = 1024;
    v53 = intValue;
    v27 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v28 = v12;
    v29 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v28, OS_LOG_TYPE_ERROR, v27, &v46, v29);

    goto LABEL_14;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v33 = objc_opt_class();
    v25 = NSStringFromClass(v33);
    v26 = NSStringFromSelector(a2);
    v46 = 138412802;
    v47 = v25;
    v48 = 2112;
    v49 = v26;
    v50 = 1024;
    messageType = intValue2;
    v27 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v28 = v12;
    v29 = 28;
    goto LABEL_33;
  }

  v11 = [v6 valueForKey:@"sendDate"];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x277CBEAA8];
    [v11 doubleValue];
    v14 = [v13 dateWithTimeIntervalSince1970:?];
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v16 = [v6 valueForKey:@"messageID"];
    v17 = [v15 initWithUUIDString:v16];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = [v6 valueForKey:@"sessionID"];
      v20 = [v18 initWithUUIDString:v19];

      if (v20)
      {
        v21 = [v6 valueForKey:@"lowPowerModeWarningState"];
        v22 = v21;
        if (v21)
        {
          intValue3 = [v21 intValue];
        }

        else
        {
          v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = NSStringFromSelector(a2);
            v46 = 138412546;
            v47 = v44;
            v48 = 2112;
            v49 = v45;
            _os_log_error_impl(&dword_26455D000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", &v46, 0x16u);
          }

          intValue3 = 0;
        }

        self = [(SMLowPowerModeWarningStateUpdateMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 lowPowerModeWarningState:intValue3];
        selfCopy = self;
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = NSStringFromSelector(a2);
          v46 = 138412546;
          v47 = v41;
          v48 = 2112;
          v49 = v42;
          _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v46, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v38;
        v48 = 2112;
        v49 = v39;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v46, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      v46 = 138412546;
      v47 = v35;
      v48 = 2112;
      v49 = v36;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v46, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_15:
  return selfCopy;
}

- (id)outputToDictionary
{
  v6.receiver = self;
  v6.super_class = SMLowPowerModeWarningStateUpdateMessage;
  outputToDictionary = [(SMMessage *)&v6 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMLowPowerModeWarningStateUpdateMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [outputToDictionary setObject:v4 forKey:@"lowPowerModeWarningState"];

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
      v9 = "[SMLowPowerModeWarningStateUpdateMessage encodeWithCoder:]";
      v10 = 1024;
      v11 = 122;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = SMLowPowerModeWarningStateUpdateMessage;
  [(SMMessage *)&v7 encodeWithCoder:coderCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMLowPowerModeWarningStateUpdateMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [coderCopy encodeObject:v6 forKey:@"lowPowerModeWarningState"];
}

- (SMLowPowerModeWarningStateUpdateMessage)initWithCoder:(id)coder
{
  v46 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v38, 2u);
    }

    goto LABEL_14;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      selfCopy = 0;
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v38 = 138413058;
    v39 = v16;
    v40 = 2112;
    v41 = v17;
    v42 = 1024;
    messageType = [objc_opt_class() messageType];
    v44 = 1024;
    v45 = v7;
    v18 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v19 = v9;
    v20 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, v18, &v38, v20);

    goto LABEL_14;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v21 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v25 = objc_opt_class();
    v16 = NSStringFromClass(v25);
    v17 = NSStringFromSelector(a2);
    v38 = 138412802;
    v39 = v16;
    v40 = 2112;
    v41 = v17;
    v42 = 1024;
    messageType = v21;
    v18 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v19 = v9;
    v20 = 28;
    goto LABEL_33;
  }

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
  if (v9)
  {
    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
        v13 = v12;
        if (v12)
        {
          intValue = [v12 intValue];
        }

        else
        {
          v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = NSStringFromSelector(a2);
            v38 = 138412546;
            v39 = v36;
            v40 = 2112;
            v41 = v37;
            _os_log_error_impl(&dword_26455D000, v24, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", &v38, 0x16u);
          }

          intValue = 0;
        }

        self = [(SMLowPowerModeWarningStateUpdateMessage *)self initWithDate:v9 messageID:v10 sessionID:v11 lowPowerModeWarningState:intValue];
        selfCopy = self;
      }

      else
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = NSStringFromSelector(a2);
          v38 = 138412546;
          v39 = v33;
          v40 = 2112;
          v41 = v34;
          _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v38, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v30;
        v40 = 2112;
        v41 = v31;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v38, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      v38 = 138412546;
      v39 = v27;
      v40 = 2112;
      v41 = v28;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v38, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_15:
  return selfCopy;
}

@end