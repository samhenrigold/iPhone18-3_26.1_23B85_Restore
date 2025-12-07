@interface SMSessionModifyConfigRemoteControlMessage
- (SMSessionModifyConfigRemoteControlMessage)initWithCoder:(id)coder;
- (SMSessionModifyConfigRemoteControlMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD sourceDeviceType:(int64_t)type sourceDeviceID:(id)deviceID updatedSessionConfiguration:(id)configuration;
- (SMSessionModifyConfigRemoteControlMessage)initWithDictionary:(id)dictionary;
- (SMSessionModifyConfigRemoteControlMessage)initWithSourceDeviceType:(int64_t)type sourceDeviceID:(id)d updatedSessionConfiguration:(id)configuration;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionModifyConfigRemoteControlMessage

- (SMSessionModifyConfigRemoteControlMessage)initWithSourceDeviceType:(int64_t)type sourceDeviceID:(id)d updatedSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dCopy = d;
  v10 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionID = [configurationCopy sessionID];
  v13 = [(SMSessionModifyConfigRemoteControlMessage *)self initWithDate:v10 messageID:uUID sessionID:sessionID sourceDeviceType:type sourceDeviceID:dCopy updatedSessionConfiguration:configurationCopy];

  return v13;
}

- (SMSessionModifyConfigRemoteControlMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD sourceDeviceType:(int64_t)type sourceDeviceID:(id)deviceID updatedSessionConfiguration:(id)configuration
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  configurationCopy = configuration;
  if (!dateCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: date";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_14;
  }

  if (!dCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: messageID";
    goto LABEL_13;
  }

  if (!iDCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = SMSessionModifyConfigRemoteControlMessage;
  v19 = [(SMMessage *)&v25 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_updatedSessionConfiguration, configuration);
    objc_storeStrong(&v20->_sourceDeviceID, deviceID);
    v20->_sourceDeviceType = type;
  }

  self = v20;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (SMSessionModifyConfigRemoteControlMessage)initWithDictionary:(id)dictionary
{
  v66 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", buf, 2u);
    }

    goto LABEL_16;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(a2);
    *buf = 138413058;
    v59 = v30;
    v60 = 2112;
    v61 = v31;
    v62 = 1024;
    messageType = [objc_opt_class() messageType];
    v64 = 1024;
    v65 = intValue;
    v32 = "#RemoteControl%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v33 = v12;
    v34 = 34;
LABEL_31:
    _os_log_error_impl(&dword_26455D000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);

    goto LABEL_16;
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
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v42;
        v60 = 2112;
        v61 = v43;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", buf, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_42;
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
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v45;
        v60 = 2112;
        v61 = v46;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", buf, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_41;
    }

    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v19 = [v6 valueForKey:@"sessionID"];
    v20 = [v18 initWithUUIDString:v19];

    if (!v20)
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v48;
        v60 = 2112;
        v61 = v49;
        _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", buf, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_40;
    }

    v21 = [v6 valueForKey:@"idsDeviceType"];
    v22 = v21;
    if (!v21)
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v50 = objc_opt_class();
        NSStringFromClass(v50);
        v52 = v51 = v27;
        v53 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v52;
        v60 = 2112;
        v61 = v53;
        _os_log_error_impl(&dword_26455D000, v51, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing idsDeviceType", buf, 0x16u);

        v27 = v51;
      }

      selfCopy = 0;
      goto LABEL_39;
    }

    intValue3 = [v21 intValue];
    v57 = [v6 valueForKey:@"sourceDeviceId"];
    if (v57)
    {
      v24 = [[SMSessionConfiguration alloc] initWithDictionary:v6];
      if (v24)
      {
        p_super = &v24->super;
        v26 = intValue3;
        v27 = v57;
        self = [(SMSessionModifyConfigRemoteControlMessage *)self initWithDate:v14 messageID:v17 sessionID:v20 sourceDeviceType:v26 sourceDeviceID:v57 updatedSessionConfiguration:v24];
        selfCopy = self;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
LABEL_42:

        goto LABEL_17;
      }

      v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v55;
        v60 = 2112;
        v61 = v56;
        _os_log_error_impl(&dword_26455D000, v40, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing updatedSessionConfig", buf, 0x16u);
      }

      p_super = 0;
    }

    else
    {
      p_super = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        *buf = 138412546;
        v59 = v38;
        v60 = 2112;
        v61 = v39;
        _os_log_error_impl(&dword_26455D000, p_super, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sourceDeviceID", buf, 0x16u);
      }
    }

    selfCopy = 0;
    v27 = v57;
    goto LABEL_38;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v36 = objc_opt_class();
    v30 = NSStringFromClass(v36);
    v31 = NSStringFromSelector(a2);
    *buf = 138412802;
    v59 = v30;
    v60 = 2112;
    v61 = v31;
    v62 = 1024;
    messageType = intValue2;
    v32 = "#RemoteControl%@,%@,unrecognized interface version,%d";
    v33 = v12;
    v34 = 28;
    goto LABEL_31;
  }

LABEL_16:
  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (id)outputToDictionary
{
  v9.receiver = self;
  v9.super_class = SMSessionModifyConfigRemoteControlMessage;
  outputToDictionary = [(SMMessage *)&v9 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionModifyConfigRemoteControlMessage sourceDeviceType](self, "sourceDeviceType")}];
  [outputToDictionary setObject:v4 forKey:@"idsDeviceType"];

  sourceDeviceID = [(SMSessionModifyConfigRemoteControlMessage *)self sourceDeviceID];
  [outputToDictionary setObject:sourceDeviceID forKey:@"sourceDeviceId"];

  updatedSessionConfiguration = [(SMSessionModifyConfigRemoteControlMessage *)self updatedSessionConfiguration];
  outputToDictionary2 = [updatedSessionConfiguration outputToDictionary];
  [outputToDictionary addEntriesFromDictionary:outputToDictionary2];

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
      v10 = "[SMSessionModifyConfigRemoteControlMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 149;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v8.receiver = self;
  v8.super_class = SMSessionModifyConfigRemoteControlMessage;
  [(SMMessage *)&v8 encodeWithCoder:coderCopy];
  updatedSessionConfiguration = [(SMSessionModifyConfigRemoteControlMessage *)self updatedSessionConfiguration];
  [coderCopy encodeObject:updatedSessionConfiguration forKey:@"updatedSessionConfiguration"];

  [coderCopy encodeInteger:-[SMSessionModifyConfigRemoteControlMessage sourceDeviceType](self forKey:{"sourceDeviceType"), @"idsDeviceType"}];
  sourceDeviceID = [(SMSessionModifyConfigRemoteControlMessage *)self sourceDeviceID];
  [coderCopy encodeObject:sourceDeviceID forKey:@"sourceDeviceId"];
}

- (SMSessionModifyConfigRemoteControlMessage)initWithCoder:(id)coder
{
  v50 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v42) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v42, 2u);
    }

    goto LABEL_15;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    v42 = 138413058;
    v43 = v18;
    v44 = 2112;
    v45 = v19;
    v46 = 1024;
    messageType = [objc_opt_class() messageType];
    v48 = 1024;
    v49 = v7;
    v20 = "#RemoteControl,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v21 = v9;
    v22 = 34;
LABEL_29:
    _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, v20, &v42, v22);

    goto LABEL_15;
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
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v42 = 138412546;
        v43 = v31;
        v44 = 2112;
        v45 = v32;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", &v42, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_37;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
    if (!v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        v42 = 138412546;
        v43 = v34;
        v44 = 2112;
        v45 = v35;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", &v42, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_36;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (!v11)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        v42 = 138412546;
        v43 = v37;
        v44 = 2112;
        v45 = v38;
        _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", &v42, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_35;
    }

    v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sourceDeviceId"];
    if (v12)
    {
      v13 = [v6 decodeIntegerForKey:@"idsDeviceType"];
      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"updatedSessionConfiguration"];
      if (v14)
      {
        v15 = v14;
        self = [(SMSessionModifyConfigRemoteControlMessage *)self initWithDate:v10 messageID:v9 sessionID:v11 sourceDeviceType:v13 sourceDeviceID:v12 updatedSessionConfiguration:v14];
        selfCopy = self;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
        goto LABEL_16;
      }

      v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(a2);
        v42 = 138412546;
        v43 = v40;
        v44 = 2112;
        v45 = v41;
        _os_log_error_impl(&dword_26455D000, v29, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing updatedSessionConfiguration", &v42, 0x16u);
      }

      v15 = 0;
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v42 = 138412546;
        v43 = v26;
        v44 = 2112;
        v45 = v27;
        _os_log_error_impl(&dword_26455D000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sourceDeviceID", &v42, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_34;
  }

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v28 = objc_opt_class();
    v18 = NSStringFromClass(v28);
    v19 = NSStringFromSelector(a2);
    v42 = 138412802;
    v43 = v18;
    v44 = 2112;
    v45 = v19;
    v46 = 1024;
    messageType = v23;
    v20 = "#RemoteControl,%@,%@,unrecognized interface version,%d";
    v21 = v9;
    v22 = 28;
    goto LABEL_29;
  }

LABEL_15:
  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

@end