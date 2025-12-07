@interface SMSessionStateSyncMessage
- (SMSessionStateSyncMessage)initWithCoder:(id)coder;
- (SMSessionStateSyncMessage)initWithDate:(id)date messageID:(id)d sessionManagerState:(id)state stateTransitionType:(unint64_t)type;
- (SMSessionStateSyncMessage)initWithDictionary:(id)dictionary;
- (SMSessionStateSyncMessage)initWithSessionManagerState:(id)state stateTransitionType:(unint64_t)type;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStateSyncMessage

- (SMSessionStateSyncMessage)initWithSessionManagerState:(id)state stateTransitionType:(unint64_t)type
{
  stateCopy = state;
  v7 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [(SMSessionStateSyncMessage *)self initWithDate:v7 messageID:uUID sessionManagerState:stateCopy stateTransitionType:type];

  return v9;
}

- (SMSessionStateSyncMessage)initWithDate:(id)date messageID:(id)d sessionManagerState:(id)state stateTransitionType:(unint64_t)type
{
  dateCopy = date;
  dCopy = d;
  stateCopy = state;
  v13 = stateCopy;
  if (!dateCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: date";
LABEL_16:
    _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_17;
  }

  if (!dCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: messageID";
    goto LABEL_16;
  }

  if (!stateCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: sessionManagerState";
    goto LABEL_16;
  }

  if (![stateCopy sessionState])
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: sessionManagerState.sessionState";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  configuration = [v13 configuration];
  sessionID = [configuration sessionID];
  v21.receiver = self;
  v21.super_class = SMSessionStateSyncMessage;
  v16 = [(SMMessage *)&v21 initWithDate:dateCopy messageID:dCopy sessionID:sessionID];

  if (v16)
  {
    objc_storeStrong(&v16->_sessionManagerState, state);
    v16->_stateTransitionType = type;
  }

  self = v16;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (SMSessionStateSyncMessage)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v44, 2u);
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

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    v44 = 138413058;
    v45 = v23;
    v46 = 2112;
    v47 = v24;
    v48 = 1024;
    messageType = [objc_opt_class() messageType];
    v50 = 1024;
    v51 = intValue;
    v25 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v26 = v12;
    v27 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, v25, &v44, v27);

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

    v31 = objc_opt_class();
    v23 = NSStringFromClass(v31);
    v24 = NSStringFromSelector(a2);
    v44 = 138412802;
    v45 = v23;
    v46 = 2112;
    v47 = v24;
    v48 = 1024;
    messageType = intValue2;
    v25 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v26 = v12;
    v27 = 28;
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
      v18 = [[SMSessionManagerState alloc] initWithDictionary:v6];
      if (v18)
      {
        v19 = [v6 valueForKey:@"stateTransitionType"];
        v20 = v19;
        if (v19)
        {
          intValue3 = [v19 intValue];
        }

        else
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            v43 = NSStringFromSelector(a2);
            v44 = 138412546;
            v45 = v42;
            v46 = 2112;
            v47 = v43;
            _os_log_error_impl(&dword_26455D000, v30, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing stateTransitionType", &v44, 0x16u);
          }

          intValue3 = 0;
        }

        self = [(SMSessionStateSyncMessage *)self initWithDate:v14 messageID:v17 sessionManagerState:v18 stateTransitionType:intValue3];
        selfCopy = self;
      }

      else
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          v44 = 138412546;
          v45 = v39;
          v46 = 2112;
          v47 = v40;
          _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache, %@, %@, sessionManagerState is nil", &v44, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        v44 = 138412546;
        v45 = v36;
        v46 = 2112;
        v47 = v37;
        _os_log_error_impl(&dword_26455D000, &v18->super, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v44, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      v44 = 138412546;
      v45 = v33;
      v46 = 2112;
      v47 = v34;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v44, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_15:
  return selfCopy;
}

- (id)outputToDictionary
{
  v8.receiver = self;
  v8.super_class = SMSessionStateSyncMessage;
  outputToDictionary = [(SMMessage *)&v8 outputToDictionary];
  sessionManagerState = [(SMSessionStateSyncMessage *)self sessionManagerState];
  outputToDictionary2 = [sessionManagerState outputToDictionary];
  [outputToDictionary addEntriesFromDictionary:outputToDictionary2];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStateSyncMessage stateTransitionType](self, "stateTransitionType")}];
  [outputToDictionary setObject:v6 forKey:@"stateTransitionType"];

  return outputToDictionary;
}

- (void)encodeWithCoder:(id)coder
{
  v13 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[SMSessionStateSyncMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 132;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = SMSessionStateSyncMessage;
  [(SMMessage *)&v8 encodeWithCoder:coderCopy];
  sessionManagerState = [(SMSessionStateSyncMessage *)self sessionManagerState];
  [coderCopy encodeObject:sessionManagerState forKey:@"sessionState"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionStateSyncMessage stateTransitionType](self, "stateTransitionType")}];
  [coderCopy encodeObject:v7 forKey:@"stateTransitionType"];
}

- (SMSessionStateSyncMessage)initWithCoder:(id)coder
{
  v47 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v39, 2u);
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

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v39 = 138413058;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 1024;
    messageType = [objc_opt_class() messageType];
    v45 = 1024;
    v46 = v7;
    v19 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v20 = v9;
    v21 = 34;
LABEL_33:
    _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, v19, &v39, v21);

    goto LABEL_14;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v22 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v26 = objc_opt_class();
    v17 = NSStringFromClass(v26);
    v18 = NSStringFromSelector(a2);
    v39 = 138412802;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 1024;
    messageType = v22;
    v19 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v20 = v9;
    v21 = 28;
    goto LABEL_33;
  }

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
  if (v9)
  {
    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionState"];
        v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"stateTransitionType"];
        v14 = v13;
        if (v13)
        {
          intValue = [v13 intValue];
        }

        else
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = NSStringFromSelector(a2);
            v39 = 138412546;
            v40 = v37;
            v41 = 2112;
            v42 = v38;
            _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing stateTransitionType", &v39, 0x16u);
          }

          intValue = 0;
        }

        self = [(SMSessionStateSyncMessage *)self initWithDate:v10 messageID:v9 sessionManagerState:v12 stateTransitionType:intValue];

        selfCopy = self;
      }

      else
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = NSStringFromSelector(a2);
          v39 = 138412546;
          v40 = v34;
          v41 = 2112;
          v42 = v35;
          _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v39, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v39 = 138412546;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v39, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      v39 = 138412546;
      v40 = v28;
      v41 = 2112;
      v42 = v29;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v39, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_15:
  return selfCopy;
}

@end