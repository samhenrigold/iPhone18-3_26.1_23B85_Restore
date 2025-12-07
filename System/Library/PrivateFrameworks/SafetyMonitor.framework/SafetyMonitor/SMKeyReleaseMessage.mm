@interface SMKeyReleaseMessage
- (SMKeyReleaseMessage)initWithCoder:(id)coder;
- (SMKeyReleaseMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerDate:(id)triggerDate locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)self0 sessionType:(unint64_t)self1 destinationType:(unint64_t)self2 isSOSTrigger:(BOOL)self3 lowPowerModeWarningState:(int64_t)self4;
- (SMKeyReleaseMessage)initWithDictionary:(id)dictionary;
- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 isSOSTrigger:(BOOL)self1 lowPowerModeWarningState:(int64_t)self2;
- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 lowPowerModeWarningState:(int64_t)self1;
- (SMKeyReleaseMessage)initWithURL:(id)l;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (id)summaryText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMKeyReleaseMessage

- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 lowPowerModeWarningState:(int64_t)self1
{
  tokenCopy = token;
  keyCopy = key;
  triggerCopy = trigger;
  dateCopy = date;
  dCopy = d;
  v20 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v24) = 0;
  v22 = [(SMKeyReleaseMessage *)self initWithDate:v20 messageID:uUID sessionID:dCopy triggerDate:dateCopy locationOfTrigger:triggerCopy triggerType:type safetyCacheKey:keyCopy safetyCacheToken:tokenCopy sessionType:sessionType destinationType:destinationType isSOSTrigger:v24 lowPowerModeWarningState:state];

  return v22;
}

- (SMKeyReleaseMessage)initWithSessionID:(id)d triggerDate:(id)date locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)token sessionType:(unint64_t)sessionType destinationType:(unint64_t)self0 isSOSTrigger:(BOOL)self1 lowPowerModeWarningState:(int64_t)self2
{
  tokenCopy = token;
  keyCopy = key;
  triggerCopy = trigger;
  dateCopy = date;
  dCopy = d;
  v21 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  LOBYTE(v25) = sTrigger;
  v23 = [(SMKeyReleaseMessage *)self initWithDate:v21 messageID:uUID sessionID:dCopy triggerDate:dateCopy locationOfTrigger:triggerCopy triggerType:type safetyCacheKey:keyCopy safetyCacheToken:tokenCopy sessionType:sessionType destinationType:destinationType isSOSTrigger:v25 lowPowerModeWarningState:state];

  return v23;
}

- (SMKeyReleaseMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD triggerDate:(id)triggerDate locationOfTrigger:(id)trigger triggerType:(unint64_t)type safetyCacheKey:(id)key safetyCacheToken:(id)self0 sessionType:(unint64_t)self1 destinationType:(unint64_t)self2 isSOSTrigger:(BOOL)self3 lowPowerModeWarningState:(int64_t)self4
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  triggerDateCopy = triggerDate;
  triggerCopy = trigger;
  keyCopy = key;
  tokenCopy = token;
  if (!dateCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: date";
LABEL_19:
    _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_20;
  }

  if (!dCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: messageID";
    goto LABEL_19;
  }

  if (!iDCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_19;
  }

  if (!triggerDateCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: triggerDate";
    goto LABEL_19;
  }

  if (!keyCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: safetyCacheKey";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v33.receiver = self;
  v33.super_class = SMKeyReleaseMessage;
  v24 = [(SMMessage *)&v33 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_triggerDate, triggerDate);
    objc_storeStrong(&v25->_locationOfTrigger, trigger);
    v25->_triggerType = type;
    objc_storeStrong(&v25->_safetyCacheKey, key);
    objc_storeStrong(&v25->_safetyCacheToken, token);
    v25->_sessionType = sessionType;
    v25->_destinationType = destinationType;
    v25->_isSOSTrigger = sTrigger;
    v25->_lowPowerModeWarningState = state;
  }

  self = v25;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (SMKeyReleaseMessage)initWithDictionary:(id)dictionary
{
  v128 = *MEMORY[0x277D85DE8];
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

    goto LABEL_27;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      selfCopy = 0;
      goto LABEL_28;
    }

    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = NSStringFromSelector(a2);
    *buf = 138413058;
    v121 = v49;
    v122 = 2112;
    v123 = v50;
    v124 = 1024;
    messageType = [objc_opt_class() messageType];
    v126 = 1024;
    v127 = intValue;
    v51 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v52 = v12;
    v53 = 34;
LABEL_42:
    _os_log_error_impl(&dword_26455D000, v52, OS_LOG_TYPE_ERROR, v51, buf, v53);

    goto LABEL_27;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v56 = objc_opt_class();
    v49 = NSStringFromClass(v56);
    v50 = NSStringFromSelector(a2);
    *buf = 138412802;
    v121 = v49;
    v122 = 2112;
    v123 = v50;
    v124 = 1024;
    messageType = intValue2;
    v51 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v52 = v12;
    v53 = 28;
    goto LABEL_42;
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
        v21 = [v6 valueForKey:@"triggerTime"];
        v22 = v21;
        if (v21)
        {
          v107 = v17;
          v23 = MEMORY[0x277CBEAA8];
          [v21 doubleValue];
          v110 = [v23 dateWithTimeIntervalSince1970:?];
          v24 = [v6 valueForKey:@"latitude"];
          v25 = [v6 valueForKey:@"longitude"];
          v119 = [v6 valueForKey:@"hunc"];
          v118 = [v6 valueForKey:@"altitude"];
          v117 = [v6 valueForKey:@"vunc"];
          v116 = [v6 valueForKey:@"timeOfLocation"];
          v115 = [v6 valueForKey:@"referenceFrame"];
          v26 = [v6 valueForKey:@"speed"];
          v113 = v24;
          v114 = 0;
          v109 = v22;
          v111 = v26;
          v112 = v25;
          if (v24 && v25 && v119 && v118 && v117 && v116 && v115 && v26)
          {
            v27 = MEMORY[0x277CBEAA8];
            [v116 doubleValue];
            v28 = [v27 dateWithTimeIntervalSince1970:?];
            v29 = objc_alloc(MEMORY[0x277D01160]);
            [v113 doubleValue];
            v31 = v30;
            [v25 doubleValue];
            v33 = v32;
            [v119 doubleValue];
            v35 = v34;
            [v118 doubleValue];
            v37 = v36;
            [v117 doubleValue];
            v39 = v38;
            intValue3 = [v115 intValue];
            [v111 doubleValue];
            v41 = intValue3;
            v22 = v109;
            v114 = [v29 initWithLatitude:v28 longitude:v41 horizontalUncertainty:v31 altitude:v33 verticalUncertainty:v35 date:v37 referenceFrame:v39 speed:v42];
          }

          v43 = [v6 valueForKey:@"triggerType"];
          v44 = v43;
          v17 = v107;
          if (v43)
          {
            v105 = v43;
            intValue4 = [v43 intValue];
            v45 = [v6 valueForKey:@"safetyCacheKey"];
            v46 = v110;
            log = v45;
            if (v45)
            {
              v106 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v45 options:0];
              if (v106)
              {
                v47 = [v6 valueForKey:@"safetyCacheToken"];
                if (v47)
                {
                  v101 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v47 options:0];
                }

                else
                {
                  v101 = 0;
                }

                v22 = v109;
                v60 = [v6 valueForKey:@"sessionType"];
                v104 = v47;
                v99 = v60;
                if (v60)
                {
                  intValue5 = [v60 intValue];
                  v62 = [v6 valueForKey:@"sessionDestinationType"];
                  v100 = v62;
                  if (v62)
                  {
                    v98 = intValue4;
                    intValue6 = [v62 intValue];
                    v64 = [v6 valueForKey:@"isSOSTrigger"];
                    bOOLValue = [v64 BOOLValue];

                    v65 = [v6 valueForKey:@"lowPowerModeWarningState"];
                    v103 = v65;
                    if (v65)
                    {
                      intValue7 = [v65 intValue];
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        v73 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                        {
                          v74 = objc_opt_class();
                          v96 = NSStringFromClass(v74);
                          v75 = NSStringFromSelector(a2);
                          *buf = 138412546;
                          v121 = v96;
                          v122 = 2112;
                          v123 = v75;
                          _os_log_impl(&dword_26455D000, v73, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@ ,missing lowPowerModeWarningStateNumber, OK to proceed", buf, 0x16u);
                        }
                      }

                      intValue7 = 0;
                    }

                    LOBYTE(v95) = bOOLValue;
                    v94 = intValue5;
                    v22 = v109;
                    v46 = v110;
                    self = [(SMKeyReleaseMessage *)self initWithDate:v14 messageID:v107 sessionID:v20 triggerDate:v110 locationOfTrigger:v114 triggerType:v98 safetyCacheKey:v106 safetyCacheToken:v101 sessionType:v94 destinationType:intValue6 isSOSTrigger:v95 lowPowerModeWarningState:intValue7];
                    selfCopy = self;
                    v44 = v105;
                  }

                  else
                  {
                    v103 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                    v44 = v105;
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                    {
                      v91 = objc_opt_class();
                      v92 = NSStringFromClass(v91);
                      v93 = NSStringFromSelector(a2);
                      *buf = 138412546;
                      v121 = v92;
                      v122 = 2112;
                      v123 = v93;
                      _os_log_error_impl(&dword_26455D000, v103, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

                      v44 = v105;
                      v22 = v109;
                    }

                    selfCopy = 0;
                    v46 = v110;
                  }
                }

                else
                {
                  v100 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                  {
                    v88 = objc_opt_class();
                    v89 = NSStringFromClass(v88);
                    v90 = NSStringFromSelector(a2);
                    *buf = 138412546;
                    v121 = v89;
                    v122 = 2112;
                    v123 = v90;
                    _os_log_error_impl(&dword_26455D000, v100, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

                    v22 = v109;
                  }

                  selfCopy = 0;
                  v44 = v105;
                }
              }

              else
              {
                v104 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                {
                  v85 = objc_opt_class();
                  v86 = NSStringFromClass(v85);
                  v87 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v121 = v86;
                  v122 = 2112;
                  v123 = v87;
                  _os_log_error_impl(&dword_26455D000, v104, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to convert safetyCacheKey to NSData", buf, 0x16u);
                }

                selfCopy = 0;
                v22 = v109;
                v44 = v105;
              }
            }

            else
            {
              v106 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                v82 = objc_opt_class();
                v83 = NSStringFromClass(v82);
                v84 = NSStringFromSelector(a2);
                *buf = 138412546;
                v121 = v83;
                v122 = 2112;
                v123 = v84;
                _os_log_error_impl(&dword_26455D000, v106, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing safetyCacheKey", buf, 0x16u);

                v22 = v109;
              }

              selfCopy = 0;
              v44 = v105;
            }
          }

          else
          {
            log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            v46 = v110;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v79 = objc_opt_class();
              v80 = NSStringFromClass(v79);
              v81 = NSStringFromSelector(a2);
              *buf = 138412546;
              v121 = v80;
              v122 = 2112;
              v123 = v81;
              _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerType", buf, 0x16u);

              v44 = 0;
              v22 = v109;
            }

            selfCopy = 0;
          }
        }

        else
        {
          v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v76 = objc_opt_class();
            v77 = NSStringFromClass(v76);
            v78 = NSStringFromSelector(a2);
            *buf = 138412546;
            v121 = v77;
            v122 = 2112;
            v123 = v78;
            _os_log_error_impl(&dword_26455D000, v46, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerTime", buf, 0x16u);
          }

          selfCopy = 0;
        }
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          v72 = NSStringFromSelector(a2);
          *buf = 138412546;
          v121 = v71;
          v122 = 2112;
          v123 = v72;
          _os_log_error_impl(&dword_26455D000, v22, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        v69 = NSStringFromSelector(a2);
        *buf = 138412546;
        v121 = v68;
        v122 = 2112;
        v123 = v69;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = NSStringFromSelector(a2);
      *buf = 138412546;
      v121 = v58;
      v122 = 2112;
      v123 = v59;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_28:
  return selfCopy;
}

- (id)outputToDictionary
{
  v44.receiver = self;
  v44.super_class = SMKeyReleaseMessage;
  outputToDictionary = [(SMMessage *)&v44 outputToDictionary];
  v4 = MEMORY[0x277CCABB0];
  triggerDate = [(SMKeyReleaseMessage *)self triggerDate];
  [triggerDate timeIntervalSince1970];
  v6 = [v4 numberWithDouble:?];
  [outputToDictionary setObject:v6 forKey:@"triggerTime"];

  locationOfTrigger = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    v8 = MEMORY[0x277CCABB0];
    locationOfTrigger2 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger2 latitude];
    v10 = [v8 numberWithDouble:?];
    [outputToDictionary setObject:v10 forKey:@"latitude"];

    v11 = MEMORY[0x277CCABB0];
    locationOfTrigger3 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger3 longitude];
    v13 = [v11 numberWithDouble:?];
    [outputToDictionary setObject:v13 forKey:@"longitude"];

    v14 = MEMORY[0x277CCABB0];
    locationOfTrigger4 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger4 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [outputToDictionary setObject:v16 forKey:@"hunc"];

    v17 = MEMORY[0x277CCABB0];
    locationOfTrigger5 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger5 altitude];
    v19 = [v17 numberWithDouble:?];
    [outputToDictionary setObject:v19 forKey:@"altitude"];

    v20 = MEMORY[0x277CCABB0];
    locationOfTrigger6 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger6 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [outputToDictionary setObject:v22 forKey:@"vunc"];

    v23 = MEMORY[0x277CCABB0];
    locationOfTrigger7 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    date = [locationOfTrigger7 date];
    [date timeIntervalSince1970];
    v26 = [v23 numberWithDouble:?];
    [outputToDictionary setObject:v26 forKey:@"timeOfLocation"];

    v27 = MEMORY[0x277CCABB0];
    locationOfTrigger8 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v29 = [v27 numberWithUnsignedInt:{objc_msgSend(locationOfTrigger8, "referenceFrame")}];
    [outputToDictionary setObject:v29 forKey:@"referenceFrame"];

    v30 = MEMORY[0x277CCABB0];
    locationOfTrigger9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger9 speed];
    v32 = [v30 numberWithDouble:?];
    [outputToDictionary setObject:v32 forKey:@"speed"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  [outputToDictionary setObject:v33 forKey:@"triggerType"];

  safetyCacheKey = [(SMKeyReleaseMessage *)self safetyCacheKey];
  v35 = [safetyCacheKey base64EncodedStringWithOptions:0];
  [outputToDictionary setObject:v35 forKey:@"safetyCacheKey"];

  safetyCacheToken = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (safetyCacheToken)
  {
    safetyCacheToken2 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    v38 = [safetyCacheToken2 base64EncodedStringWithOptions:0];
    [outputToDictionary setObject:v38 forKey:@"safetyCacheToken"];
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  [outputToDictionary setObject:v39 forKey:@"sessionType"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  [outputToDictionary setObject:v40 forKey:@"sessionDestinationType"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  [outputToDictionary setObject:v41 forKey:@"isSOSTrigger"];

  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [outputToDictionary setObject:v42 forKey:@"lowPowerModeWarningState"];

  return outputToDictionary;
}

- (SMKeyReleaseMessage)initWithURL:(id)l
{
  v177 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v88 = 0;
    goto LABEL_96;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v94 = objc_opt_class();
      v95 = NSStringFromClass(v94);
      v96 = NSStringFromSelector(a2);
      *buf = 138412546;
      v169 = v95;
      v170 = 2112;
      v171 = v96;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v88 = 0;
    goto LABEL_95;
  }

  queryItems = [v4 queryItems];
  v7 = queryItems;
  if (!queryItems)
  {
    v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v101 = objc_opt_class();
      v102 = NSStringFromClass(v101);
      v103 = NSStringFromSelector(a2);
      *buf = 138412546;
      v169 = v102;
      v170 = 2112;
      v171 = v103;
      _os_log_error_impl(&dword_26455D000, v89, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);
    }

    v88 = 0;
    goto LABEL_94;
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v8 = [queryItems countByEnumeratingWithState:&v164 objects:v176 count:16];
  if (!v8)
  {
    intValue = [0 intValue];
    v159 = 0;
    v157 = 0;
    v10 = 0;
    v161 = 0;
    v162 = 0;
    v153 = 0;
    v152 = 0;
    v151 = 0;
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    v141 = 0;
    v142 = 0;
    v139 = 0;
    v140 = 0;
    v138 = 0;
    goto LABEL_91;
  }

  v9 = v8;
  v162 = 0;
  obj = v7;
  v136 = lCopy;
  v137 = v5;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v161 = 0;
  v10 = 0;
  v157 = 0;
  v159 = 0;
  v11 = *v165;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v165 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v164 + 1) + 8 * i);
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
            v17 = v162;
            v162 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
          }

          else
          {
            name3 = [v13 name];
            v24 = [name3 isEqualToString:@"sessionID"];

            if (v24)
            {
              v17 = v161;
              v161 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];
            }

            else
            {
              name4 = [v13 name];
              v26 = [name4 isEqualToString:@"messageType"];

              if (v26)
              {
                v17 = v159;
                v159 = value;
              }

              else
              {
                name5 = [v13 name];
                v28 = [name5 isEqualToString:@"interfaceVersion"];

                if (v28)
                {
                  v17 = v157;
                  v157 = value;
                }

                else
                {
                  name6 = [v13 name];
                  v30 = [name6 isEqualToString:@"triggerTime"];

                  if (v30)
                  {
                    v17 = v153;
                    v153 = value;
                  }

                  else
                  {
                    name7 = [v13 name];
                    v32 = [name7 isEqualToString:@"latitude"];

                    if (v32)
                    {
                      v17 = v152;
                      v152 = value;
                    }

                    else
                    {
                      name8 = [v13 name];
                      v34 = [name8 isEqualToString:@"longitude"];

                      if (v34)
                      {
                        v17 = v151;
                        v151 = value;
                      }

                      else
                      {
                        name9 = [v13 name];
                        v36 = [name9 isEqualToString:@"hunc"];

                        if (v36)
                        {
                          v17 = v150;
                          v150 = value;
                        }

                        else
                        {
                          name10 = [v13 name];
                          v38 = [name10 isEqualToString:@"altitude"];

                          if (v38)
                          {
                            v17 = v149;
                            v149 = value;
                          }

                          else
                          {
                            name11 = [v13 name];
                            v40 = [name11 isEqualToString:@"vunc"];

                            if (v40)
                            {
                              v17 = v148;
                              v148 = value;
                            }

                            else
                            {
                              name12 = [v13 name];
                              v42 = [name12 isEqualToString:@"timeOfLocation"];

                              if (v42)
                              {
                                v17 = v147;
                                v147 = value;
                              }

                              else
                              {
                                name13 = [v13 name];
                                v44 = [name13 isEqualToString:@"referenceFrame"];

                                if (v44)
                                {
                                  v17 = v146;
                                  v146 = value;
                                }

                                else
                                {
                                  name14 = [v13 name];
                                  v46 = [name14 isEqualToString:@"speed"];

                                  if (v46)
                                  {
                                    v17 = v145;
                                    v145 = value;
                                  }

                                  else
                                  {
                                    name15 = [v13 name];
                                    v48 = [name15 isEqualToString:@"triggerType"];

                                    if (v48)
                                    {
                                      v17 = v144;
                                      v144 = value;
                                    }

                                    else
                                    {
                                      name16 = [v13 name];
                                      v50 = [name16 isEqualToString:@"safetyCacheKey"];

                                      if (v50)
                                      {
                                        v17 = v143;
                                        v143 = value;
                                      }

                                      else
                                      {
                                        name17 = [v13 name];
                                        v52 = [name17 isEqualToString:@"safetyCacheToken"];

                                        if (v52)
                                        {
                                          v17 = v142;
                                          v142 = value;
                                        }

                                        else
                                        {
                                          name18 = [v13 name];
                                          v54 = [name18 isEqualToString:@"sessionType"];

                                          if (v54)
                                          {
                                            v17 = v141;
                                            v141 = value;
                                          }

                                          else
                                          {
                                            name19 = [v13 name];
                                            v56 = [name19 isEqualToString:@"sessionDestinationType"];

                                            if (v56)
                                            {
                                              v17 = v140;
                                              v140 = value;
                                            }

                                            else
                                            {
                                              name20 = [v13 name];
                                              v58 = [name20 isEqualToString:@"isSOSTrigger"];

                                              if (v58)
                                              {
                                                v17 = v139;
                                                v139 = value;
                                              }

                                              else
                                              {
                                                name21 = [v13 name];
                                                v60 = [name21 isEqualToString:@"lowPowerModeWarningState"];

                                                if (!v60)
                                                {
                                                  goto LABEL_55;
                                                }

                                                v17 = v138;
                                                v138 = value;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
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
          v169 = v19;
          v170 = 2112;
          v171 = v20;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value", buf, 0x16u);
        }
      }

LABEL_55:
    }

    v9 = [obj countByEnumeratingWithState:&v164 objects:v176 count:16];
  }

  while (v9);
  intValue = [v159 intValue];
  if (!v159)
  {
    v159 = 0;
    lCopy = v136;
    v5 = v137;
    v7 = obj;
    goto LABEL_91;
  }

  v5 = v137;
  v7 = obj;
  if ([objc_opt_class() messageType] != intValue)
  {
    lCopy = v136;
LABEL_91:
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v97 = objc_opt_class();
      v92 = NSStringFromClass(v97);
      NSStringFromSelector(a2);
      v99 = v98 = v7;
      messageType = [objc_opt_class() messageType];
      *buf = 138413058;
      v169 = v92;
      v170 = 2112;
      v171 = v99;
      v172 = 1024;
      v173 = messageType;
      v174 = 1024;
      v175 = intValue;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d", buf, 0x22u);

      v7 = v98;
      goto LABEL_100;
    }

LABEL_92:
    v88 = 0;
    goto LABEL_93;
  }

  intValue2 = [v157 intValue];
  v63 = intValue2;
  if (!v157 || intValue2 != 1)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v136;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v91 = objc_opt_class();
      v92 = NSStringFromClass(v91);
      v93 = NSStringFromSelector(a2);
      *buf = 138412802;
      v169 = v92;
      v170 = 2112;
      v171 = v93;
      v172 = 1024;
      v173 = v63;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,unrecognized interface version,%d", buf, 0x1Cu);

      v7 = obj;
LABEL_100:

      goto LABEL_92;
    }

    goto LABEL_92;
  }

  if (!v10)
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v115 = objc_opt_class();
      v116 = NSStringFromClass(v115);
      v117 = NSStringFromSelector(a2);
      *buf = 138412546;
      v169 = v116;
      v170 = 2112;
      v171 = v117;
      _os_log_error_impl(&dword_26455D000, v65, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v10 = 0;
    v88 = 0;
    lCopy = v136;
    goto LABEL_93;
  }

  v64 = MEMORY[0x277CBEAA8];
  [v10 doubleValue];
  v65 = [v64 dateWithTimeIntervalSince1970:?];
  if (!v162)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v136;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v128 = objc_opt_class();
      v129 = NSStringFromClass(v128);
      v130 = NSStringFromSelector(a2);
      *buf = 138412546;
      v169 = v129;
      v170 = 2112;
      v171 = v130;
      _os_log_error_impl(&dword_26455D000, v67, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);

      v7 = obj;
    }

    v88 = 0;
    goto LABEL_135;
  }

  if (!v161)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
LABEL_110:
      v88 = 0;
      lCopy = v136;
      goto LABEL_135;
    }

    v104 = objc_opt_class();
    v105 = NSStringFromClass(v104);
    v106 = NSStringFromSelector(a2);
    *buf = 138412546;
    v169 = v105;
    v170 = 2112;
    v171 = v106;
    v107 = "#SafetyCache,%@,%@,missing sessionID";
LABEL_137:
    _os_log_error_impl(&dword_26455D000, v67, OS_LOG_TYPE_ERROR, v107, buf, 0x16u);

    v7 = obj;
    goto LABEL_110;
  }

  if (!v153)
  {
    v67 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_110;
    }

    v132 = objc_opt_class();
    v105 = NSStringFromClass(v132);
    v106 = NSStringFromSelector(a2);
    *buf = 138412546;
    v169 = v105;
    v170 = 2112;
    v171 = v106;
    v107 = "#SafetyCache,%@,%@,missing triggerTime";
    goto LABEL_137;
  }

  v66 = MEMORY[0x277CBEAA8];
  [v153 doubleValue];
  v67 = [v66 dateWithTimeIntervalSince1970:?];
  v68 = 0;
  if (v152 && v151 && v150 && v149 && v148 && v147 && v146 && v145)
  {
    v69 = MEMORY[0x277CBEAA8];
    [v147 doubleValue];
    v70 = [v69 dateWithTimeIntervalSince1970:?];
    v71 = objc_alloc(MEMORY[0x277D01160]);
    [v152 doubleValue];
    v73 = v72;
    [v151 doubleValue];
    v75 = v74;
    [v150 doubleValue];
    v77 = v76;
    [v149 doubleValue];
    v79 = v78;
    [v148 doubleValue];
    v81 = v80;
    intValue3 = [v146 intValue];
    [v145 doubleValue];
    v68 = [v71 initWithLatitude:v70 longitude:intValue3 horizontalUncertainty:v73 altitude:v75 verticalUncertainty:v77 date:v79 referenceFrame:v81 speed:v83];
  }

  if (!v144)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
LABEL_114:
      v88 = 0;
      lCopy = v136;
      goto LABEL_134;
    }

    v108 = objc_opt_class();
    v109 = NSStringFromClass(v108);
    v110 = NSStringFromSelector(a2);
    *buf = 138412546;
    v169 = v109;
    v170 = 2112;
    v171 = v110;
    v111 = "#SafetyCache,%@,%@,missing triggerType";
LABEL_139:
    _os_log_error_impl(&dword_26455D000, v86, OS_LOG_TYPE_ERROR, v111, buf, 0x16u);

    v5 = v137;
    goto LABEL_114;
  }

  intValue4 = [v144 intValue];
  if (!v143)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    v133 = objc_opt_class();
    v109 = NSStringFromClass(v133);
    v110 = NSStringFromSelector(a2);
    *buf = 138412546;
    v169 = v109;
    v170 = 2112;
    v171 = v110;
    v111 = "#SafetyCache,%@,%@,missing safetyCacheKey";
    goto LABEL_139;
  }

  v85 = intValue4;
  v86 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v143 options:0];
  if (!v86)
  {
    v87 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v136;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v112 = objc_opt_class();
      v113 = NSStringFromClass(v112);
      v114 = NSStringFromSelector(a2);
      *buf = 138412546;
      v169 = v113;
      v170 = 2112;
      v171 = v114;
      _os_log_error_impl(&dword_26455D000, v87, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to convert safetyCacheKey to NSData", buf, 0x16u);
    }

    goto LABEL_126;
  }

  if (v142)
  {
    v87 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v142 options:0];
  }

  else
  {
    v87 = 0;
  }

  lCopy = v136;
  if (!v141)
  {
    v123 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
LABEL_125:

LABEL_126:
      v88 = 0;
      goto LABEL_133;
    }

    v124 = objc_opt_class();
    v125 = NSStringFromClass(v124);
    v126 = NSStringFromSelector(a2);
    *buf = 138412546;
    v169 = v125;
    v170 = 2112;
    v171 = v126;
    v127 = "#SafetyCache,%@,%@,missing sessionType";
LABEL_141:
    _os_log_error_impl(&dword_26455D000, v123, OS_LOG_TYPE_ERROR, v127, buf, 0x16u);

    goto LABEL_125;
  }

  intValue5 = [v141 intValue];
  if (!v140)
  {
    v123 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_125;
    }

    v134 = objc_opt_class();
    v125 = NSStringFromClass(v134);
    v126 = NSStringFromSelector(a2);
    *buf = 138412546;
    v169 = v125;
    v170 = 2112;
    v171 = v126;
    v127 = "#SafetyCache,%@,%@,missing destinationType";
    goto LABEL_141;
  }

  v119 = intValue5;
  intValue6 = [v140 intValue];
  bOOLValue = [v139 BOOLValue];
  if (v138)
  {
    intValue7 = [v138 intValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v131 = objc_opt_class();
        v158 = NSStringFromClass(v131);
        v156 = NSStringFromSelector(a2);
        *buf = 138412546;
        v169 = v158;
        v170 = 2112;
        v171 = v156;
        _os_log_impl(&dword_26455D000, log, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", buf, 0x16u);
      }
    }

    intValue7 = 0;
  }

  LOBYTE(v135) = bOOLValue;
  v88 = [(SMKeyReleaseMessage *)self initWithDate:v65 messageID:v162 sessionID:v161 triggerDate:v67 locationOfTrigger:v68 triggerType:v85 safetyCacheKey:v86 safetyCacheToken:v87 sessionType:v119 destinationType:intValue6 isSOSTrigger:v135 lowPowerModeWarningState:intValue7];
  self = v88;
  lCopy = v136;
LABEL_133:

  v5 = v137;
LABEL_134:

  v7 = obj;
LABEL_135:

LABEL_93:
  v89 = v159;
LABEL_94:

LABEL_95:
LABEL_96:

  return v88;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v94.receiver = self;
  v94.super_class = SMKeyReleaseMessage;
  outputToURLComponents = [(SMMessage *)&v94 outputToURLComponents];
  queryItems = [outputToURLComponents queryItems];
  [v4 addObjectsFromArray:queryItems];

  v7 = objc_alloc(MEMORY[0x277CCAD18]);
  v8 = MEMORY[0x277CCABB0];
  triggerDate = [(SMKeyReleaseMessage *)self triggerDate];
  [triggerDate timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  stringValue = [v10 stringValue];
  v12 = [v7 initWithName:@"triggerTime" value:stringValue];
  [v4 addObject:v12];

  locationOfTrigger = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD18]);
    v15 = MEMORY[0x277CCABB0];
    locationOfTrigger2 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger2 latitude];
    v17 = [v15 numberWithDouble:?];
    stringValue2 = [v17 stringValue];
    v19 = [v14 initWithName:@"latitude" value:stringValue2];
    [v4 addObject:v19];

    v20 = objc_alloc(MEMORY[0x277CCAD18]);
    v21 = MEMORY[0x277CCABB0];
    locationOfTrigger3 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger3 longitude];
    v23 = [v21 numberWithDouble:?];
    stringValue3 = [v23 stringValue];
    v25 = [v20 initWithName:@"longitude" value:stringValue3];
    [v4 addObject:v25];

    v26 = objc_alloc(MEMORY[0x277CCAD18]);
    v27 = MEMORY[0x277CCABB0];
    locationOfTrigger4 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger4 horizontalUncertainty];
    v29 = [v27 numberWithDouble:?];
    stringValue4 = [v29 stringValue];
    v31 = [v26 initWithName:@"hunc" value:stringValue4];
    [v4 addObject:v31];

    v32 = objc_alloc(MEMORY[0x277CCAD18]);
    v33 = MEMORY[0x277CCABB0];
    locationOfTrigger5 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger5 altitude];
    v35 = [v33 numberWithDouble:?];
    stringValue5 = [v35 stringValue];
    v37 = [v32 initWithName:@"altitude" value:stringValue5];
    [v4 addObject:v37];

    v38 = objc_alloc(MEMORY[0x277CCAD18]);
    v39 = MEMORY[0x277CCABB0];
    locationOfTrigger6 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger6 verticalUncertainty];
    v41 = [v39 numberWithDouble:?];
    stringValue6 = [v41 stringValue];
    v43 = [v38 initWithName:@"vunc" value:stringValue6];
    [v4 addObject:v43];

    v44 = objc_alloc(MEMORY[0x277CCAD18]);
    v45 = MEMORY[0x277CCABB0];
    locationOfTrigger7 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    date = [locationOfTrigger7 date];
    [date timeIntervalSince1970];
    v48 = [v45 numberWithDouble:?];
    [v48 stringValue];
    v50 = v49 = v3;
    v51 = [v44 initWithName:@"timeOfLocation" value:v50];
    [v4 addObject:v51];

    v3 = v49;
    v52 = objc_alloc(MEMORY[0x277CCAD18]);
    v53 = MEMORY[0x277CCABB0];
    locationOfTrigger8 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v55 = [v53 numberWithUnsignedInt:{objc_msgSend(locationOfTrigger8, "referenceFrame")}];
    stringValue7 = [v55 stringValue];
    v57 = [v52 initWithName:@"referenceFrame" value:stringValue7];
    [v4 addObject:v57];

    v58 = objc_alloc(MEMORY[0x277CCAD18]);
    v59 = MEMORY[0x277CCABB0];
    locationOfTrigger9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger9 speed];
    v61 = [v59 numberWithDouble:?];
    stringValue8 = [v61 stringValue];
    v63 = [v58 initWithName:@"speed" value:stringValue8];
    [v4 addObject:v63];
  }

  v64 = objc_alloc(MEMORY[0x277CCAD18]);
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  stringValue9 = [v65 stringValue];
  v67 = [v64 initWithName:@"triggerType" value:stringValue9];
  [v4 addObject:v67];

  v68 = objc_alloc(MEMORY[0x277CCAD18]);
  safetyCacheKey = [(SMKeyReleaseMessage *)self safetyCacheKey];
  v70 = [safetyCacheKey base64EncodedStringWithOptions:0];
  v71 = [v68 initWithName:@"safetyCacheKey" value:v70];
  [v4 addObject:v71];

  safetyCacheToken = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (safetyCacheToken)
  {
    v73 = objc_alloc(MEMORY[0x277CCAD18]);
    safetyCacheToken2 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    v75 = [safetyCacheToken2 base64EncodedStringWithOptions:0];
    v76 = [v73 initWithName:@"safetyCacheToken" value:v75];
    [v4 addObject:v76];
  }

  v77 = objc_alloc(MEMORY[0x277CCAD18]);
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  stringValue10 = [v78 stringValue];
  v80 = [v77 initWithName:@"sessionType" value:stringValue10];
  [v4 addObject:v80];

  v81 = objc_alloc(MEMORY[0x277CCAD18]);
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  stringValue11 = [v82 stringValue];
  v84 = [v81 initWithName:@"sessionDestinationType" value:stringValue11];
  [v4 addObject:v84];

  v85 = objc_alloc(MEMORY[0x277CCAD18]);
  v86 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  stringValue12 = [v86 stringValue];
  v88 = [v85 initWithName:@"isSOSTrigger" value:stringValue12];
  [v4 addObject:v88];

  v89 = objc_alloc(MEMORY[0x277CCAD18]);
  v90 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  stringValue13 = [v90 stringValue];
  v92 = [v89 initWithName:@"lowPowerModeWarningState" value:stringValue13];
  [v4 addObject:v92];

  [v3 setQueryItems:v4];

  return v3;
}

- (id)summaryText
{
  triggerType = [(SMKeyReleaseMessage *)self triggerType];
  if (triggerType > 12)
  {
    switch(triggerType)
    {
      case 13:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SOS_HARD_FALL_EVENT_SUMMARY";
        v7 = @"Check In: Emergency services called, fall detected, location shared";
        goto LABEL_24;
      case 14:
        goto LABEL_12;
      case 15:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SCHEDULED_SEND_SUMMARY";
        v7 = @"Check In: Device offline, location shared";
        goto LABEL_24;
    }
  }

  else
  {
    switch(triggerType)
    {
      case 10:
        goto LABEL_12;
      case 11:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SOS_CAR_CRASH_EVENT_SUMMARY";
        v7 = @"Check In: Emergency services called, car crash detected, location shared";
        goto LABEL_24;
      case 12:
LABEL_12:
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"KEY_RELEASE_MESSAGE_SOS_EVENT_SUMMARY";
        v7 = @"Check In: Emergency services called, location shared";
        goto LABEL_24;
    }
  }

  if ([(SMKeyReleaseMessage *)self isSOSTrigger])
  {
    goto LABEL_12;
  }

  sessionType = [(SMKeyReleaseMessage *)self sessionType];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (sessionType > 2)
  {
    if (sessionType != 3)
    {
      if (sessionType == 4)
      {
        v6 = @"KEY_RELEASE_MESSAGE_WORKOUT_SUMMARY";
        v7 = @"Check In: Has not completed workout as expected, location shared";
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    v6 = @"KEY_RELEASE_MESSAGE_ROUNDTRIP_SUMMARY";
    v7 = @"Check In: Has not arrived back as expected, location shared";
  }

  else
  {
    if (sessionType != 1)
    {
      if (sessionType == 2)
      {
        v6 = @"KEY_RELEASE_MESSAGE_DESTINATION_BOUND_SUMMARY";
        v7 = @"Check In: Has not arrived as expected, location shared";
        goto LABEL_24;
      }

LABEL_21:
      v6 = @"KEY_RELEASE_MESSAGE_DEFAULT_SUMMARY";
      v7 = @"Check In: Location available";
      goto LABEL_24;
    }

    v6 = @"KEY_RELEASE_MESSAGE_TIME_BOUND_SUMMARY";
    v7 = @"Check In: Has not checked in when expected, location shared";
  }

LABEL_24:
  v9 = [v4 localizedStringForKey:v6 value:v7 table:0];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v44 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[SMKeyReleaseMessage encodeWithCoder:]";
      v42 = 1024;
      v43 = 594;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v39.receiver = self;
  v39.super_class = SMKeyReleaseMessage;
  [(SMMessage *)&v39 encodeWithCoder:coderCopy];
  triggerDate = [(SMKeyReleaseMessage *)self triggerDate];
  [coderCopy encodeObject:triggerDate forKey:@"triggerTime"];

  locationOfTrigger = [(SMKeyReleaseMessage *)self locationOfTrigger];

  if (locationOfTrigger)
  {
    v8 = MEMORY[0x277CCABB0];
    locationOfTrigger2 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger2 latitude];
    v10 = [v8 numberWithDouble:?];
    [coderCopy encodeObject:v10 forKey:@"latitude"];

    v11 = MEMORY[0x277CCABB0];
    locationOfTrigger3 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger3 longitude];
    v13 = [v11 numberWithDouble:?];
    [coderCopy encodeObject:v13 forKey:@"longitude"];

    v14 = MEMORY[0x277CCABB0];
    locationOfTrigger4 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger4 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [coderCopy encodeObject:v16 forKey:@"hunc"];

    v17 = MEMORY[0x277CCABB0];
    locationOfTrigger5 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger5 altitude];
    v19 = [v17 numberWithDouble:?];
    [coderCopy encodeObject:v19 forKey:@"altitude"];

    v20 = MEMORY[0x277CCABB0];
    locationOfTrigger6 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger6 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [coderCopy encodeObject:v22 forKey:@"vunc"];

    locationOfTrigger7 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    date = [locationOfTrigger7 date];
    [coderCopy encodeObject:date forKey:@"timeOfLocation"];

    v25 = MEMORY[0x277CCABB0];
    locationOfTrigger8 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    v27 = [v25 numberWithUnsignedInt:{objc_msgSend(locationOfTrigger8, "referenceFrame")}];
    [coderCopy encodeObject:v27 forKey:@"referenceFrame"];

    v28 = MEMORY[0x277CCABB0];
    locationOfTrigger9 = [(SMKeyReleaseMessage *)self locationOfTrigger];
    [locationOfTrigger9 speed];
    v30 = [v28 numberWithDouble:?];
    [coderCopy encodeObject:v30 forKey:@"speed"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage triggerType](self, "triggerType")}];
  [coderCopy encodeObject:v31 forKey:@"triggerType"];

  safetyCacheKey = [(SMKeyReleaseMessage *)self safetyCacheKey];
  [coderCopy encodeObject:safetyCacheKey forKey:@"safetyCacheKey"];

  safetyCacheToken = [(SMKeyReleaseMessage *)self safetyCacheToken];

  if (safetyCacheToken)
  {
    safetyCacheToken2 = [(SMKeyReleaseMessage *)self safetyCacheToken];
    [coderCopy encodeObject:safetyCacheToken2 forKey:@"safetyCacheToken"];
  }

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage sessionType](self, "sessionType")}];
  [coderCopy encodeObject:v35 forKey:@"sessionType"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMKeyReleaseMessage destinationType](self, "destinationType")}];
  [coderCopy encodeObject:v36 forKey:@"sessionDestinationType"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMKeyReleaseMessage isSOSTrigger](self, "isSOSTrigger")}];
  [coderCopy encodeObject:v37 forKey:@"isSOSTrigger"];

  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMKeyReleaseMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  [coderCopy encodeObject:v38 forKey:@"lowPowerModeWarningState"];
}

- (SMKeyReleaseMessage)initWithCoder:(id)coder
{
  v112 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v6 = coderCopy;
  if (!coderCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: decoder", buf, 2u);
    }

    goto LABEL_28;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      selfCopy = 0;
      goto LABEL_29;
    }

    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = NSStringFromSelector(a2);
    *buf = 138413058;
    v105 = v45;
    v106 = 2112;
    v107 = v46;
    v108 = 1024;
    messageType = [objc_opt_class() messageType];
    v110 = 1024;
    v111 = v7;
    v47 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v48 = v9;
    v49 = 34;
LABEL_43:
    _os_log_error_impl(&dword_26455D000, v48, OS_LOG_TYPE_ERROR, v47, buf, v49);

    goto LABEL_28;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v50 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v53 = objc_opt_class();
    v45 = NSStringFromClass(v53);
    v46 = NSStringFromSelector(a2);
    *buf = 138412802;
    v105 = v45;
    v106 = 2112;
    v107 = v46;
    v108 = 1024;
    messageType = v50;
    v47 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v48 = v9;
    v49 = 28;
    goto LABEL_43;
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
        log = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"triggerTime"];
        if (log)
        {
          v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"latitude"];
          v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"longitude"];
          v102 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"hunc"];
          v101 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"altitude"];
          v100 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"vunc"];
          v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"timeOfLocation"];
          v99 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"referenceFrame"];
          v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"speed"];
          v16 = 0;
          v96 = v11;
          v97 = v15;
          v98 = v13;
          if (v12 && v13 && v102 && v101 && v100 && v14 && v99 && v15)
          {
            v17 = v14;
            v18 = objc_alloc(MEMORY[0x277D01160]);
            [v12 doubleValue];
            v20 = v19;
            [v13 doubleValue];
            v22 = v21;
            [v102 doubleValue];
            v24 = v23;
            [v101 doubleValue];
            v26 = v25;
            [v100 doubleValue];
            v28 = v27;
            v29 = v12;
            intValue = [v99 intValue];
            [v97 doubleValue];
            v31 = v18;
            v14 = v17;
            v32 = intValue;
            v12 = v29;
            v16 = [v31 initWithLatitude:v17 longitude:v32 horizontalUncertainty:v20 altitude:v22 verticalUncertainty:v24 date:v26 referenceFrame:v28 speed:v33];
          }

          v34 = v16;
          v35 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"triggerType"];
          v95 = v35;
          if (v35)
          {
            v91 = v12;
            v92 = v14;
            intValue2 = [v35 intValue];
            [v6 decodeObjectOfClass:objc_opt_class() forKey:@"safetyCacheKey"];
            v90 = v11 = v96;
            if (v90)
            {
              v94 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"safetyCacheToken"];
              v37 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
              v88 = v37;
              if (v37)
              {
                intValue3 = [v37 intValue];
                v39 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationType"];
                v89 = v39;
                if (v39)
                {
                  v85 = intValue3;
                  v86 = intValue2;
                  intValue4 = [v39 intValue];
                  v41 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isSOSTrigger"];
                  intValue5 = [v41 intValue];

                  v42 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
                  v87 = v42;
                  if (v42)
                  {
                    intValue6 = [v42 intValue];
                    v14 = v92;
                  }

                  else
                  {
                    v14 = v92;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                      {
                        v62 = objc_opt_class();
                        v63 = NSStringFromClass(v62);
                        v64 = NSStringFromSelector(a2);
                        *buf = 138412546;
                        v105 = v63;
                        v106 = 2112;
                        v107 = v64;
                        _os_log_impl(&dword_26455D000, v61, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningStateNumber", buf, 0x16u);

                        v14 = v92;
                      }
                    }

                    intValue6 = 0;
                  }

                  v54 = v90;
                  LOBYTE(v83) = intValue5 != 0;
                  self = [(SMKeyReleaseMessage *)self initWithDate:v9 messageID:v10 sessionID:v96 triggerDate:log locationOfTrigger:v34 triggerType:v86 safetyCacheKey:v90 safetyCacheToken:v94 sessionType:v85 destinationType:intValue4 isSOSTrigger:v83 lowPowerModeWarningState:intValue6];
                  selfCopy = self;
                  v12 = v91;
                }

                else
                {
                  v87 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  v12 = v91;
                  v14 = v92;
                  v54 = v90;
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                  {
                    v80 = objc_opt_class();
                    v81 = NSStringFromClass(v80);
                    v82 = NSStringFromSelector(a2);
                    *buf = 138412546;
                    v105 = v81;
                    v106 = 2112;
                    v107 = v82;
                    _os_log_error_impl(&dword_26455D000, v87, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

                    v14 = v92;
                  }

                  selfCopy = 0;
                }
              }

              else
              {
                v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v77 = objc_opt_class();
                  v78 = NSStringFromClass(v77);
                  v79 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v105 = v78;
                  v106 = 2112;
                  v107 = v79;
                  _os_log_error_impl(&dword_26455D000, v89, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);
                }

                selfCopy = 0;
                v12 = v91;
                v14 = v92;
                v54 = v90;
              }
            }

            else
            {
              v94 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              v12 = v91;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                v74 = objc_opt_class();
                v75 = NSStringFromClass(v74);
                v76 = NSStringFromSelector(a2);
                *buf = 138412546;
                v105 = v75;
                v106 = 2112;
                v107 = v76;
                _os_log_error_impl(&dword_26455D000, v94, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing safetyCacheKey", buf, 0x16u);

                v14 = v92;
              }

              selfCopy = 0;
              v54 = 0;
            }
          }

          else
          {
            v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            v11 = v96;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v71 = objc_opt_class();
              NSStringFromClass(v71);
              v72 = v93 = v14;
              v73 = NSStringFromSelector(a2);
              *buf = 138412546;
              v105 = v72;
              v106 = 2112;
              v107 = v73;
              _os_log_error_impl(&dword_26455D000, v54, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerType", buf, 0x16u);

              v14 = v93;
            }

            selfCopy = 0;
          }
        }

        else
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v68 = objc_opt_class();
            v69 = NSStringFromClass(v68);
            v70 = NSStringFromSelector(a2);
            *buf = 138412546;
            v105 = v69;
            v106 = 2112;
            v107 = v70;
            _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing triggerDate", buf, 0x16u);
          }

          selfCopy = 0;
        }
      }

      else
      {
        log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v67 = NSStringFromSelector(a2);
          *buf = 138412546;
          v105 = v66;
          v106 = 2112;
          v107 = v67;
          _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = NSStringFromSelector(a2);
        *buf = 138412546;
        v105 = v59;
        v106 = 2112;
        v107 = v60;
        _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(a2);
      *buf = 138412546;
      v105 = v56;
      v106 = 2112;
      v107 = v57;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    selfCopy = 0;
  }

LABEL_29:
  return selfCopy;
}

@end