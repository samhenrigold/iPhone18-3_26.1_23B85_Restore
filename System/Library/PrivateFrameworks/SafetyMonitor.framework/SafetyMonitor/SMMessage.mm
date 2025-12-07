@interface SMMessage
+ (id)createMessageFromDict:(id)dict;
+ (id)createMessageFromURL:(id)l;
+ (id)messageIDFromDict:(id)dict;
+ (id)messageIDFromURL:(id)l;
+ (id)sessionIDFromDict:(id)dict;
+ (id)sessionIDFromURL:(id)l;
+ (unint64_t)interfaceTypeFromMessageType:(unint64_t)type;
+ (unint64_t)messageTypeFromDict:(id)dict;
+ (unint64_t)messageTypeFromURL:(id)l;
- (NSString)summaryText;
- (SMMessage)initWithCoder:(id)coder;
- (SMMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD;
- (SMMessage)initWithDictionary:(id)dictionary;
- (SMMessage)initWithSessionID:(id)d;
- (SMMessage)initWithURL:(id)l;
- (id)description;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMMessage

- (SMMessage)initWithSessionID:(id)d
{
  v4 = MEMORY[0x277CBEAA8];
  dCopy = d;
  v6 = [v4 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [(SMMessage *)self initWithDate:v6 messageID:uUID sessionID:dCopy];

  return v8;
}

- (SMMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  v12 = iDCopy;
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
  v19.super_class = SMMessage;
  v13 = [(SMMessage *)&v19 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    v13->_interfaceVersion = 1;
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(p_isa + 3, d);
    objc_storeStrong(p_isa + 4, iD);
  }

  self = p_isa;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (SMMessage)initWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v40) = 0;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v40, 2u);
    }

    goto LABEL_13;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    v40 = 138413058;
    v41 = v23;
    v42 = 2112;
    v43 = v24;
    v44 = 1024;
    messageType = [objc_opt_class() messageType];
    v46 = 1024;
    v47 = intValue;
    v25 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v26 = v12;
    v27 = 34;
LABEL_27:
    _os_log_error_impl(&dword_26455D000, v26, OS_LOG_TYPE_ERROR, v25, &v40, v27);

    goto LABEL_13;
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
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        v40 = 138412546;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v40, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_25;
    }

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
        self = [(SMMessage *)self initWithDate:v14 messageID:v17 sessionID:v20];
        selfCopy = self;
LABEL_24:

LABEL_25:
        goto LABEL_14;
      }

      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v40 = 138412546;
        v41 = v38;
        v42 = 2112;
        v43 = v39;
        _os_log_error_impl(&dword_26455D000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v40, 0x16u);
      }

      v20 = 0;
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v40 = 138412546;
        v41 = v30;
        v42 = 2112;
        v43 = v31;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v40, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_24;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v33 = objc_opt_class();
    v23 = NSStringFromClass(v33);
    v24 = NSStringFromSelector(a2);
    v40 = 138412802;
    v41 = v23;
    v42 = 2112;
    v43 = v24;
    v44 = 1024;
    messageType = intValue2;
    v25 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v26 = v12;
    v27 = 28;
    goto LABEL_27;
  }

LABEL_13:
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (id)outputToDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "messageType")}];
  [v3 setObject:v4 forKey:@"messageType"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMMessage interfaceVersion](self, "interfaceVersion")}];
  [v3 setObject:v5 forKey:@"interfaceVersion"];

  v6 = MEMORY[0x277CCABB0];
  date = [(SMMessage *)self date];
  [date timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"sendDate"];

  messageID = [(SMMessage *)self messageID];
  uUIDString = [messageID UUIDString];
  [v3 setObject:uUIDString forKey:@"messageID"];

  sessionID = [(SMMessage *)self sessionID];
  uUIDString2 = [sessionID UUIDString];
  [v3 setObject:uUIDString2 forKey:@"sessionID"];

  return v3;
}

- (SMMessage)initWithURL:(id)l
{
  v84 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v36 = 0;
    goto LABEL_50;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      *buf = 138412546;
      v76 = v45;
      v77 = 2112;
      v78 = v46;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v36 = 0;
    goto LABEL_49;
  }

  queryItems = [v4 queryItems];
  v7 = queryItems;
  if (!queryItems)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = NSStringFromSelector(a2);
      *buf = 138412546;
      v76 = v50;
      v77 = 2112;
      v78 = v51;
      _os_log_error_impl(&dword_26455D000, v29, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);
    }

    v36 = 0;
    goto LABEL_48;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v8 = [queryItems countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (!v8)
  {
    intValue = [0 intValue];
    v29 = 0;
    v67 = 0;
    v10 = 0;
    v31 = 0;
LABEL_45:
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v47 = objc_opt_class();
    NSStringFromClass(v47);
    v39 = v69 = v31;
    NSStringFromSelector(a2);
    v40 = v70 = v8;
    messageType = [objc_opt_class() messageType];
    *buf = 138413058;
    v76 = v39;
    v77 = 2112;
    v78 = v40;
    v79 = 1024;
    v80 = messageType;
    v81 = 1024;
    v82 = intValue;
    v41 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v42 = v35;
    v43 = 34;
LABEL_54:
    _os_log_error_impl(&dword_26455D000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);

    v8 = v70;
    v31 = v69;
    goto LABEL_46;
  }

  v9 = v7;
  v63 = v5;
  v64 = lCopy;
  v69 = 0;
  v70 = 0;
  v10 = 0;
  v67 = 0;
  v68 = 0;
  v11 = *v72;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v72 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v71 + 1) + 8 * i);
      value = [v13 value];
      if (value)
      {
        name = [v13 name];
        v16 = [name isEqualToString:@"sendDate"];

        if (v16)
        {
          v17 = v10;
          v10 = value;
        }

        else
        {
          name2 = [v13 name];
          v22 = [name2 isEqualToString:@"messageID"];

          if (v22)
          {
            v17 = v70;
            v70 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
          }

          else
          {
            name3 = [v13 name];
            v24 = [name3 isEqualToString:@"sessionID"];

            if (v24)
            {
              v17 = v69;
              v69 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
            }

            else
            {
              name4 = [v13 name];
              v26 = [name4 isEqualToString:@"messageType"];

              if (v26)
              {
                v17 = v68;
                v68 = value;
              }

              else
              {
                name5 = [v13 name];
                v28 = [name5 isEqualToString:@"interfaceVersion"];

                if (!v28)
                {
                  goto LABEL_23;
                }

                v17 = v67;
                v67 = value;
              }
            }
          }
        }
      }

      else
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(a2);
          *buf = 138412546;
          v76 = v19;
          v77 = 2112;
          v78 = v20;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value", buf, 0x16u);
        }
      }

LABEL_23:
    }

    v8 = [v9 countByEnumeratingWithState:&v71 objects:v83 count:16];
  }

  while (v8);
  v29 = v68;
  intValue = [v68 intValue];
  if (!v68)
  {
    v5 = v63;
    lCopy = v64;
    v7 = v9;
    v31 = v69;
    v8 = v70;
    goto LABEL_45;
  }

  v5 = v63;
  v7 = v9;
  v31 = v69;
  v8 = v70;
  if ([objc_opt_class() messageType] != intValue)
  {
    lCopy = v64;
    goto LABEL_45;
  }

  intValue2 = [v67 intValue];
  v33 = intValue2;
  if (!v67 || intValue2 != 1)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v64;
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v40 = NSStringFromSelector(a2);
    *buf = 138412802;
    v76 = v39;
    v77 = 2112;
    v78 = v40;
    v79 = 1024;
    v80 = v33;
    v41 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v42 = v35;
    v43 = 28;
    goto LABEL_54;
  }

  if (v10)
  {
    v34 = MEMORY[0x277CBEAA8];
    [v10 doubleValue];
    v35 = [v34 dateWithTimeIntervalSince1970:?];
    lCopy = v64;
    if (v70)
    {
      if (v69)
      {
        v36 = [(SMMessage *)self initWithDate:v35 messageID:v70 sessionID:v69];
        self = v36;
        goto LABEL_47;
      }

      v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = NSStringFromSelector(a2);
        *buf = 138412546;
        v76 = v61;
        v77 = 2112;
        v78 = v62;
        _os_log_error_impl(&dword_26455D000, v53, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);

        v8 = v70;
      }

      v31 = 0;
    }

    else
    {
      v52 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = NSStringFromSelector(a2);
        *buf = 138412546;
        v76 = v58;
        v77 = 2112;
        v78 = v59;
        _os_log_error_impl(&dword_26455D000, v52, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);

        v31 = v69;
      }

      v8 = 0;
    }
  }

  else
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v64;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = NSStringFromSelector(a2);
      *buf = 138412546;
      v76 = v55;
      v77 = 2112;
      v78 = v56;
      _os_log_error_impl(&dword_26455D000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);

      v31 = v69;
    }

    v10 = 0;
  }

LABEL_46:
  v36 = 0;
LABEL_47:

LABEL_48:
LABEL_49:

LABEL_50:
  return v36;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc(MEMORY[0x277CCAD18]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "messageType")}];
  stringValue = [v6 stringValue];
  v8 = [v5 initWithName:@"messageType" value:stringValue];
  [v4 addObject:v8];

  v9 = objc_alloc(MEMORY[0x277CCAD18]);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMMessage interfaceVersion](self, "interfaceVersion")}];
  stringValue2 = [v10 stringValue];
  v12 = [v9 initWithName:@"interfaceVersion" value:stringValue2];
  [v4 addObject:v12];

  v13 = MEMORY[0x277CCABB0];
  date = [(SMMessage *)self date];
  [date timeIntervalSince1970];
  v15 = [v13 numberWithDouble:?];
  stringValue3 = [v15 stringValue];

  v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sendDate" value:stringValue3];
  [v4 addObject:v17];

  v18 = objc_alloc(MEMORY[0x277CCAD18]);
  messageID = [(SMMessage *)self messageID];
  uUIDString = [messageID UUIDString];
  v21 = [v18 initWithName:@"messageID" value:uUIDString];
  [v4 addObject:v21];

  v22 = objc_alloc(MEMORY[0x277CCAD18]);
  sessionID = [(SMMessage *)self sessionID];
  uUIDString2 = [sessionID UUIDString];
  v25 = [v22 initWithName:@"sessionID" value:uUIDString2];
  [v4 addObject:v25];

  [v3 setQueryItems:v4];

  return v3;
}

+ (id)createMessageFromDict:(id)dict
{
  v91 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if (dictCopy)
  {
    switch([objc_opt_class() messageTypeFromDict:dictCopy])
    {
      case 0:
        v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_104;
        }

        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        v87 = 138412546;
        v88 = v7;
        v89 = 2112;
        v90 = v8;
        v9 = "#SafetyCache,%@,%@,SMMessageTypeUnknown";
        goto LABEL_106;
      case 1:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v35;
            v89 = 2112;
            v90 = v36;
            _os_log_impl(&dword_26455D000, v33, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStart", &v87, 0x16u);
          }
        }

        v16 = SMSessionStartMessage;
        goto LABEL_99;
      case 2:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v51;
            v89 = 2112;
            v90 = v52;
            _os_log_impl(&dword_26455D000, v49, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionEnd", &v87, 0x16u);
          }
        }

        v16 = SMSessionEndMessage;
        goto LABEL_99;
      case 3:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v47;
            v89 = 2112;
            v90 = v48;
            _os_log_impl(&dword_26455D000, v45, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyRelease", &v87, 0x16u);
          }
        }

        v16 = SMKeyReleaseMessage;
        goto LABEL_99;
      case 6:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v27;
            v89 = 2112;
            v90 = v28;
            _os_log_impl(&dword_26455D000, v25, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeCacheUpdated", &v87, 0x16u);
          }
        }

        v16 = SMCacheUpdatedMessage;
        goto LABEL_99;
      case 7:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v39;
            v89 = 2112;
            v90 = v40;
            _os_log_impl(&dword_26455D000, v37, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSync", &v87, 0x16u);
          }
        }

        v16 = SMSessionStateSyncMessage;
        goto LABEL_99;
      case 8:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = objc_opt_class();
            v55 = NSStringFromClass(v54);
            v56 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v55;
            v89 = 2112;
            v90 = v56;
            _os_log_impl(&dword_26455D000, v53, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeHandoff", &v87, 0x16u);
          }
        }

        v16 = SMSessionHandoffMessage;
        goto LABEL_99;
      case 9:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v57 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            v58 = objc_opt_class();
            v59 = NSStringFromClass(v58);
            v60 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v59;
            v89 = 2112;
            v90 = v60;
            _os_log_impl(&dword_26455D000, v57, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeHandoffAck", &v87, 0x16u);
          }
        }

        v16 = SMSessionHandoffAckMessage;
        goto LABEL_99;
      case 10:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v73 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v74 = objc_opt_class();
            v75 = NSStringFromClass(v74);
            v76 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v75;
            v89 = 2112;
            v90 = v76;
            _os_log_impl(&dword_26455D000, v73, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMEstimatedEndTimeUpdateMessage", &v87, 0x16u);
          }
        }

        v16 = SMEstimatedEndTimeUpdateMessage;
        goto LABEL_99;
      case 11:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v69 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = objc_opt_class();
            v71 = NSStringFromClass(v70);
            v72 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v71;
            v89 = 2112;
            v90 = v72;
            _os_log_impl(&dword_26455D000, v69, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMEmergencyContactsNotifiedSyncMessage", &v87, 0x16u);
          }
        }

        v16 = SMEmergencyContactsNotifiedSyncMessage;
        goto LABEL_99;
      case 12:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v23;
            v89 = 2112;
            v90 = v24;
            _os_log_impl(&dword_26455D000, v21, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStartInfoRequest", &v87, 0x16u);
          }
        }

        v16 = SMSessionStartInfoRequestMessage;
        goto LABEL_99;
      case 13:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v43;
            v89 = 2112;
            v90 = v44;
            _os_log_impl(&dword_26455D000, v41, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStartInfo", &v87, 0x16u);
          }
        }

        v16 = SMSessionStartInfoMessage;
        goto LABEL_99;
      case 14:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v31;
            v89 = 2112;
            v90 = v32;
            _os_log_impl(&dword_26455D000, v29, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfoRequest", &v87, 0x16u);
          }
        }

        v16 = SMKeyReleaseInfoRequestMessage;
        goto LABEL_99;
      case 15:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v19;
            v89 = 2112;
            v90 = v20;
            _os_log_impl(&dword_26455D000, v17, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfo", &v87, 0x16u);
          }
        }

        v16 = SMKeyReleaseInfoMessage;
        goto LABEL_99;
      case 16:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            v64 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v63;
            v89 = 2112;
            v90 = v64;
            _os_log_impl(&dword_26455D000, v61, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeStateUpdateReq", &v87, 0x16u);
          }
        }

        v16 = SMSessionStateUpdateReqMessage;
        goto LABEL_99;
      case 17:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            v68 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v67;
            v89 = 2112;
            v90 = v68;
            _os_log_impl(&dword_26455D000, v65, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionEndRemoteControl", &v87, 0x16u);
          }
        }

        v16 = SMSessionEndRemoteControlMessage;
        goto LABEL_99;
      case 18:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            v84 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v83;
            v89 = 2112;
            v90 = v84;
            _os_log_impl(&dword_26455D000, v81, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMSessionModifyConfigRemoteControlMessage", &v87, 0x16u);
          }
        }

        v16 = SMSessionModifyConfigRemoteControlMessage;
        goto LABEL_99;
      case 19:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v77 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = objc_opt_class();
            v79 = NSStringFromClass(v78);
            v80 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v79;
            v89 = 2112;
            v90 = v80;
            _os_log_impl(&dword_26455D000, v77, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMResponseToTriggerPromptRemoteControlMessage", &v87, 0x16u);
          }
        }

        v16 = SMResponseToTriggerPromptRemoteControlMessage;
        goto LABEL_99;
      case 20:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromSelector(a2);
            v87 = 138412546;
            v88 = v14;
            v89 = 2112;
            v90 = v15;
            _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMLowPowerModeWarningStateUpdateMessage", &v87, 0x16u);
          }
        }

        v16 = SMLowPowerModeWarningStateUpdateMessage;
LABEL_99:
        v11 = [[v16 alloc] initWithDictionary:dictCopy];
        goto LABEL_100;
      default:
        v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v86 = objc_opt_class();
          v7 = NSStringFromClass(v86);
          v8 = NSStringFromSelector(a2);
          v87 = 138412546;
          v88 = v7;
          v89 = 2112;
          v90 = v8;
          v9 = "#SafetyCache,%@,%@,unknown message type";
LABEL_106:
          _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, v9, &v87, 0x16u);
        }

LABEL_104:

        goto LABEL_8;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v87) = 0;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", &v87, 2u);
  }

LABEL_8:
  v11 = 0;
LABEL_100:

  return v11;
}

+ (id)createMessageFromURL:(id)l
{
  v48 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v44) = 0;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", &v44, 2u);
    }

    goto LABEL_56;
  }

  v5 = [objc_opt_class() messageTypeFromURL:lCopy];
  if (v5 > 5)
  {
    if (v5 > 13)
    {
      if (v5 == 14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = NSStringFromSelector(a2);
            v44 = 138412546;
            v45 = v39;
            v46 = 2112;
            v47 = v40;
            _os_log_impl(&dword_26455D000, v37, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfoRequest", &v44, 0x16u);
          }
        }

        v10 = SMKeyReleaseInfoRequestMessage;
        goto LABEL_53;
      }

      if (v5 == 15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = NSStringFromSelector(a2);
            v44 = 138412546;
            v45 = v22;
            v46 = 2112;
            v47 = v23;
            _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyReleaseInfo", &v44, 0x16u);
          }
        }

        v10 = SMKeyReleaseInfoMessage;
        goto LABEL_53;
      }
    }

    else
    {
      if (v5 == 6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            v44 = 138412546;
            v45 = v31;
            v46 = 2112;
            v47 = v32;
            _os_log_impl(&dword_26455D000, v29, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeCacheUpdated", &v44, 0x16u);
          }
        }

        v10 = SMCacheUpdatedMessage;
        goto LABEL_53;
      }

      if (v5 == 13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromSelector(a2);
            v44 = 138412546;
            v45 = v14;
            v46 = 2112;
            v47 = v15;
            _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStartInfo", &v44, 0x16u);
          }
        }

        v10 = SMSessionStartInfoMessage;
        goto LABEL_53;
      }
    }

LABEL_54:
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v43 = objc_opt_class();
    v26 = NSStringFromClass(v43);
    v27 = NSStringFromSelector(a2);
    v44 = 138412546;
    v45 = v26;
    v46 = 2112;
    v47 = v27;
    v28 = "#SafetyCache,%@,%@,unknown message type";
LABEL_61:
    _os_log_error_impl(&dword_26455D000, v24, OS_LOG_TYPE_ERROR, v28, &v44, 0x16u);

    goto LABEL_55;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(a2);
          v44 = 138412546;
          v45 = v35;
          v46 = 2112;
          v47 = v36;
          _os_log_impl(&dword_26455D000, v33, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionEnd", &v44, 0x16u);
        }
      }

      v10 = SMSessionEndMessage;
      goto LABEL_53;
    }

    if (v5 == 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(a2);
          v44 = 138412546;
          v45 = v18;
          v46 = 2112;
          v47 = v19;
          _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeKeyRelease", &v44, 0x16u);
        }
      }

      v10 = SMKeyReleaseMessage;
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = NSStringFromSelector(a2);
          v44 = 138412546;
          v45 = v8;
          v46 = 2112;
          v47 = v9;
          _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,constructing SMMessageTypeSessionStart", &v44, 0x16u);
        }
      }

      v10 = SMSessionStartMessage;
LABEL_53:
      v41 = [[v10 alloc] initWithURL:lCopy];
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v44 = 138412546;
    v45 = v26;
    v46 = 2112;
    v47 = v27;
    v28 = "#SafetyCache,%@,%@,SMMessageTypeUnknown";
    goto LABEL_61;
  }

LABEL_55:

LABEL_56:
  v41 = 0;
LABEL_57:

  return v41;
}

+ (unint64_t)interfaceTypeFromMessageType:(unint64_t)type
{
  if (type - 1 > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_2645DA8C0[type - 1];
  }
}

+ (unint64_t)messageTypeFromDict:(id)dict
{
  if (dict)
  {
    v3 = [dict valueForKey:@"messageType"];
    intValue = [v3 intValue];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", v7, 2u);
    }

    return 0;
  }

  return intValue;
}

+ (unint64_t)messageTypeFromURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"messageType"];

          if (v12)
          {
            value = [v10 value];
            intValue = [value intValue];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    intValue = 0;
LABEL_12:
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    intValue = 0;
  }

  return intValue;
}

+ (id)messageIDFromDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [dictCopy valueForKey:@"messageID"];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)messageIDFromURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"messageID"];

          if (v12)
          {
            v14 = objc_alloc(MEMORY[0x277CCAD78]);
            value = [v10 value];
            v13 = [v14 initWithUUIDString:value];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)sessionIDFromDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [dictCopy valueForKey:@"sessionID"];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dict", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)sessionIDFromURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
    [v4 queryItems];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          name = [v10 name];
          v12 = [name isEqualToString:@"sessionID"];

          if (v12)
          {
            v14 = objc_alloc(MEMORY[0x277CCAD78]);
            value = [v10 value];
            v13 = [v14 initWithUUIDString:value];

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  outputToDictionary = [(SMMessage *)self outputToDictionary];
  v4 = [v2 stringWithFormat:@"%@", outputToDictionary];

  return v4;
}

- (NSString)summaryText
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHECK_IN_MESSAGE" value:@"Check In" table:0];

  return v3;
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
      v9 = 136315394;
      v10 = "[SMMessage encodeWithCoder:]";
      v11 = 1024;
      v12 = 559;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", &v9, 0x12u);
    }
  }

  [coderCopy encodeInteger:objc_msgSend(objc_opt_class() forKey:{"messageType"), @"messageType"}];
  [coderCopy encodeInteger:-[SMMessage interfaceVersion](self forKey:{"interfaceVersion"), @"interfaceVersion"}];
  date = [(SMMessage *)self date];
  [coderCopy encodeObject:date forKey:@"sendDate"];

  messageID = [(SMMessage *)self messageID];
  [coderCopy encodeObject:messageID forKey:@"messageID"];

  sessionID = [(SMMessage *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];
}

- (SMMessage)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", &v33, 2u);
    }

    goto LABEL_13;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v33 = 138413058;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    v37 = 1024;
    messageType = [objc_opt_class() messageType];
    v39 = 1024;
    v40 = v7;
    v17 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v18 = v9;
    v19 = 34;
LABEL_27:
    _os_log_error_impl(&dword_26455D000, v18, OS_LOG_TYPE_ERROR, v17, &v33, v19);

    goto LABEL_13;
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
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(a2);
        v33 = 138412546;
        v34 = v28;
        v35 = 2112;
        v36 = v29;
        _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", &v33, 0x16u);
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
    if (v10)
    {
      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
      if (v11)
      {
        v12 = v11;
        self = [(SMMessage *)self initWithDate:v9 messageID:v10 sessionID:v11];
        selfCopy = self;
LABEL_24:

LABEL_25:
        goto LABEL_14;
      }

      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v33 = 138412546;
        v34 = v31;
        v35 = 2112;
        v36 = v32;
        _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", &v33, 0x16u);
      }

      v12 = 0;
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        v33 = 138412546;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", &v33, 0x16u);
      }
    }

    selfCopy = 0;
    goto LABEL_24;
  }

  v20 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v26 = objc_opt_class();
    v15 = NSStringFromClass(v26);
    v16 = NSStringFromSelector(a2);
    v33 = 138412802;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    v37 = 1024;
    messageType = v20;
    v17 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v18 = v9;
    v19 = 28;
    goto LABEL_27;
  }

LABEL_13:
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

@end