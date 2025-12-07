@interface SMResponseToTriggerPromptRemoteControlMessage
- (SMResponseToTriggerPromptRemoteControlMessage)initWithCoder:(id)coder;
- (SMResponseToTriggerPromptRemoteControlMessage)initWithDate:(id)date messageID:(id)d response:(int64_t)response sessionID:(id)iD sourceDeviceType:(int64_t)type sourceDeviceID:(id)deviceID;
- (SMResponseToTriggerPromptRemoteControlMessage)initWithDictionary:(id)dictionary;
- (SMResponseToTriggerPromptRemoteControlMessage)initWithTriggerPromptResponse:(int64_t)response sessionID:(id)d sourceDeviceType:(int64_t)type sourceDeviceID:(id)iD;
- (id)outputToDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMResponseToTriggerPromptRemoteControlMessage

- (SMResponseToTriggerPromptRemoteControlMessage)initWithTriggerPromptResponse:(int64_t)response sessionID:(id)d sourceDeviceType:(int64_t)type sourceDeviceID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v12 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = [(SMResponseToTriggerPromptRemoteControlMessage *)self initWithDate:v12 messageID:uUID response:response sessionID:dCopy sourceDeviceType:type sourceDeviceID:iDCopy];

  return v14;
}

- (SMResponseToTriggerPromptRemoteControlMessage)initWithDate:(id)date messageID:(id)d response:(int64_t)response sessionID:(id)iD sourceDeviceType:(int64_t)type sourceDeviceID:(id)deviceID
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  if (!dateCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: date";
LABEL_13:
    _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_14;
  }

  if (!dCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: messageID";
    goto LABEL_13;
  }

  if (!iDCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: sessionID";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = SMResponseToTriggerPromptRemoteControlMessage;
  v18 = [(SMMessage *)&v24 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v19 = v18;
  if (v18)
  {
    v18->_response = response;
    objc_storeStrong(&v18->_sourceDeviceID, deviceID);
    v19->_sourceDeviceType = type;
  }

  self = v19;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (SMResponseToTriggerPromptRemoteControlMessage)initWithDictionary:(id)dictionary
{
  v70 = *MEMORY[0x277D85DE8];
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
LABEL_16:
      selfCopy = 0;
      goto LABEL_17;
    }

    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(a2);
    *buf = 138413058;
    v63 = v31;
    v64 = 2112;
    v65 = v32;
    v66 = 1024;
    messageType = [objc_opt_class() messageType];
    v68 = 1024;
    v69 = intValue;
    v33 = "#RemoteControl,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v34 = v12;
    v35 = 34;
LABEL_31:
    _os_log_error_impl(&dword_26455D000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);

    goto LABEL_16;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v38 = objc_opt_class();
    v31 = NSStringFromClass(v38);
    v32 = NSStringFromSelector(a2);
    *buf = 138412802;
    v63 = v31;
    v64 = 2112;
    v65 = v32;
    v66 = 1024;
    messageType = intValue2;
    v33 = "#RemoteControl,%@,%@,unrecognized interface version,%d";
    v34 = v12;
    v35 = 28;
    goto LABEL_31;
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
      v18 = [v6 valueForKey:@"userTriggerResponse"];
      v19 = v18;
      if (v18)
      {
        intValue3 = [v18 intValue];
        v21 = objc_alloc(MEMORY[0x277CCAD78]);
        v22 = [v6 valueForKey:@"sessionID"];
        v23 = [v21 initWithUUIDString:v22];

        if (v23)
        {
          v24 = [v6 valueForKey:@"idsDeviceType"];
          v61 = v24;
          if (v24)
          {
            v60 = v23;
            intValue4 = [v24 intValue];
            v26 = [v6 valueForKey:@"sourceDeviceId"];
            if (v26)
            {
              v27 = v26;
              v28 = intValue4;
              v23 = v60;
              self = [(SMResponseToTriggerPromptRemoteControlMessage *)self initWithDate:v14 messageID:v17 response:intValue3 sessionID:v60 sourceDeviceType:v28 sourceDeviceID:v26];
              selfCopy = self;
            }

            else
            {
              v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v57 = objc_opt_class();
                v58 = NSStringFromClass(v57);
                v59 = NSStringFromSelector(a2);
                *buf = 138412546;
                v63 = v58;
                v64 = 2112;
                v65 = v59;
                _os_log_error_impl(&dword_26455D000, v39, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sourceDeviceID", buf, 0x16u);
              }

              v27 = 0;
              selfCopy = 0;
              v23 = v60;
            }
          }

          else
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v53 = objc_opt_class();
              NSStringFromClass(v53);
              v55 = v54 = v23;
              v56 = NSStringFromSelector(a2);
              *buf = 138412546;
              v63 = v55;
              v64 = 2112;
              v65 = v56;
              _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing idsDeviceType", buf, 0x16u);

              v23 = v54;
            }

            selfCopy = 0;
          }

          v37 = v61;
        }

        else
        {
          v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = NSStringFromSelector(a2);
            *buf = 138412546;
            v63 = v51;
            v64 = 2112;
            v65 = v52;
            _os_log_error_impl(&dword_26455D000, v37, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", buf, 0x16u);

            v23 = 0;
          }

          selfCopy = 0;
        }
      }

      else
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          NSStringFromClass(v46);
          v48 = v47 = v23;
          v49 = NSStringFromSelector(a2);
          *buf = 138412546;
          v63 = v48;
          v64 = 2112;
          v65 = v49;
          _os_log_error_impl(&dword_26455D000, v47, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing UserTriggerResponse", buf, 0x16u);

          v23 = v47;
        }

        selfCopy = 0;
      }
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        *buf = 138412546;
        v63 = v44;
        v64 = 2112;
        v65 = v45;
        _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412546;
      v63 = v41;
      v64 = 2112;
      v65 = v42;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", buf, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_17:
  return selfCopy;
}

- (id)outputToDictionary
{
  v8.receiver = self;
  v8.super_class = SMResponseToTriggerPromptRemoteControlMessage;
  outputToDictionary = [(SMMessage *)&v8 outputToDictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMResponseToTriggerPromptRemoteControlMessage response](self, "response")}];
  [outputToDictionary setObject:v4 forKey:@"userTriggerResponse"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMResponseToTriggerPromptRemoteControlMessage sourceDeviceType](self, "sourceDeviceType")}];
  [outputToDictionary setObject:v5 forKey:@"idsDeviceType"];

  sourceDeviceID = [(SMResponseToTriggerPromptRemoteControlMessage *)self sourceDeviceID];
  [outputToDictionary setObject:sourceDeviceID forKey:@"sourceDeviceId"];

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
      v9 = "[SMResponseToTriggerPromptRemoteControlMessage encodeWithCoder:]";
      v10 = 1024;
      v11 = 155;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = SMResponseToTriggerPromptRemoteControlMessage;
  [(SMMessage *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[SMResponseToTriggerPromptRemoteControlMessage response](self forKey:{"response"), @"userTriggerResponse"}];
  [coderCopy encodeInteger:-[SMResponseToTriggerPromptRemoteControlMessage sourceDeviceType](self forKey:{"sourceDeviceType"), @"idsDeviceType"}];
  sourceDeviceID = [(SMResponseToTriggerPromptRemoteControlMessage *)self sourceDeviceID];
  [coderCopy encodeObject:sourceDeviceID forKey:@"sourceDeviceId"];
}

- (SMResponseToTriggerPromptRemoteControlMessage)initWithCoder:(id)coder
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
      goto LABEL_14;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v38 = 138413058;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    v42 = 1024;
    messageType = [objc_opt_class() messageType];
    v44 = 1024;
    v45 = v7;
    v19 = "#RemoteControl,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v20 = v9;
    v21 = 34;
LABEL_32:
    _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, v19, &v38, v21);

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
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v30;
        v40 = 2112;
        v41 = v31;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing messageID", &v38, 0x16u);
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
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v33;
        v40 = 2112;
        v41 = v34;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing date", &v38, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    if (v11)
    {
      v12 = [v6 decodeIntegerForKey:@"userTriggerResponse"];
      v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sourceDeviceId"];
      if (v13)
      {
        v14 = v13;
        self = -[SMResponseToTriggerPromptRemoteControlMessage initWithDate:messageID:response:sessionID:sourceDeviceType:sourceDeviceID:](self, "initWithDate:messageID:response:sessionID:sourceDeviceType:sourceDeviceID:", v10, v9, v12, v11, [v6 decodeIntegerForKey:@"idsDeviceType"], v13);
        selfCopy = self;
LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_15;
      }

      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v36;
        v40 = 2112;
        v41 = v37;
        _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sourceDeviceID", &v38, 0x16u);
      }

      v14 = 0;
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v38 = 138412546;
        v39 = v25;
        v40 = 2112;
        v41 = v26;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#RemoteControl,%@,%@,missing sessionID", &v38, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_28;
  }

  v22 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v28 = objc_opt_class();
    v17 = NSStringFromClass(v28);
    v18 = NSStringFromSelector(a2);
    v38 = 138412802;
    v39 = v17;
    v40 = 2112;
    v41 = v18;
    v42 = 1024;
    messageType = v22;
    v19 = "#RemoteControl,%@,%@,unrecognized interface version,%d";
    v20 = v9;
    v21 = 28;
    goto LABEL_32;
  }

LABEL_14:
  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

@end