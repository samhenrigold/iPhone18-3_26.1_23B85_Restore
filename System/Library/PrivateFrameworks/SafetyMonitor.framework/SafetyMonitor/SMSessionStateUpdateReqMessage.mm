@interface SMSessionStateUpdateReqMessage
- (SMSessionStateUpdateReqMessage)initWithCoder:(id)coder;
- (SMSessionStateUpdateReqMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD deviceToRequest:(id)request;
- (SMSessionStateUpdateReqMessage)initWithDictionary:(id)dictionary;
- (id)initSessionID:(id)d deviceToRequest:(id)request;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStateUpdateReqMessage

- (SMSessionStateUpdateReqMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD deviceToRequest:(id)request
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  requestCopy = request;
  v14 = requestCopy;
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

  if (!iDCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_16;
  }

  if (!requestCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: deviceToRequest";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v21.receiver = self;
  v21.super_class = SMSessionStateUpdateReqMessage;
  v15 = [(SMMessage *)&v21 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceToRequest, request);
  }

  self = v16;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)initSessionID:(id)d deviceToRequest:(id)request
{
  requestCopy = request;
  dCopy = d;
  v8 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [(SMSessionStateUpdateReqMessage *)self initWithDate:v8 messageID:uUID sessionID:dCopy deviceToRequest:requestCopy];

  return v10;
}

- (SMSessionStateUpdateReqMessage)initWithDictionary:(id)dictionary
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
      goto LABEL_14;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v46 = 138413058;
    v47 = v26;
    v48 = 2112;
    v49 = v27;
    v50 = 1024;
    messageType = [objc_opt_class() messageType];
    v52 = 1024;
    v53 = intValue;
    v28 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v29 = v12;
    v30 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v29, OS_LOG_TYPE_ERROR, v28, &v46, v30);

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
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v38;
        v48 = 2112;
        v49 = v39;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v46, 0x16u);
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
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v41;
        v48 = 2112;
        v49 = v42;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v46, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = [v6 valueForKey:@"sessionID"];
    v20 = [v18 initWithUUIDString:v19];

    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCAD78]);
      v22 = [v6 valueForKey:@"deviceToRequest"];
      v23 = [v21 initWithUUIDString:v22];

      if (v23)
      {
        self = [(SMSessionStateUpdateReqMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 deviceToRequest:v23];
        selfCopy = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v44;
        v48 = 2112;
        v49 = v45;
        _os_log_error_impl(&dword_26455D000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing deviceToRequest", &v46, 0x16u);
      }

      v23 = 0;
    }

    else
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        v46 = 138412546;
        v47 = v33;
        v48 = 2112;
        v49 = v34;
        _os_log_error_impl(&dword_26455D000, v23, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v46, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_28;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v36 = objc_opt_class();
    v26 = NSStringFromClass(v36);
    v27 = NSStringFromSelector(a2);
    v46 = 138412802;
    v47 = v26;
    v48 = 2112;
    v49 = v27;
    v50 = 1024;
    messageType = intValue2;
    v28 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v29 = v12;
    v30 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (id)outputToDictionary
{
  v7.receiver = self;
  v7.super_class = SMSessionStateUpdateReqMessage;
  outputToDictionary = [(SMMessage *)&v7 outputToDictionary];
  deviceToRequest = [(SMSessionStateUpdateReqMessage *)self deviceToRequest];
  uUIDString = [deviceToRequest UUIDString];
  [outputToDictionary setValue:uUIDString forKey:@"deviceToRequest"];

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
      v9 = "[SMSessionStateUpdateReqMessage encodeWithCoder:]";
      v10 = 1024;
      v11 = 106;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = SMSessionStateUpdateReqMessage;
  [(SMMessage *)&v7 encodeWithCoder:coderCopy];
  deviceToRequest = [(SMSessionStateUpdateReqMessage *)self deviceToRequest];
  [coderCopy encodeObject:deviceToRequest forKey:@"deviceToRequest"];
}

- (SMSessionStateUpdateReqMessage)initWithCoder:(id)coder
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
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
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
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v37, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_30;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
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
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v37, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"deviceToRequest"];
      if (v12)
      {
        v13 = v12;
        self = [(SMSessionStateUpdateReqMessage *)self initWithDate:v10 messageID:v9 sessionID:v11 deviceToRequest:v12];
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
        _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing deviceToRequest", &v37, 0x16u);
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