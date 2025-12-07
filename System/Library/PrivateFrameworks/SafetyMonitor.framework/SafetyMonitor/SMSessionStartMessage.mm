@interface SMSessionStartMessage
- (SMSessionStartMessage)initWithCoder:(id)coder;
- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationToken:(id)token sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2;
- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2;
- (SMSessionStartMessage)initWithDictionary:(id)dictionary;
- (SMSessionStartMessage)initWithSessionID:(id)d invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)destinationType destinationMapItem:(id)item lowPowerModeWarningState:(int64_t)self0;
- (SMSessionStartMessage)initWithURL:(id)l;
- (id)outputToDictionary;
- (id)outputToURLComponents;
- (id)summaryText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMSessionStartMessage

- (SMSessionStartMessage)initWithSessionID:(id)d invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)destinationType destinationMapItem:(id)item lowPowerModeWarningState:(int64_t)self0
{
  v16 = MEMORY[0x277CBEAA8];
  itemCopy = item;
  endTimeCopy = endTime;
  timeCopy = time;
  dictCopy = dict;
  dCopy = d;
  v22 = [v16 now];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v24 = [(SMSessionStartMessage *)self initWithDate:v22 messageID:uUID sessionID:dCopy invitationTokenDict:dictCopy sessionType:type estimatedEndTime:timeCopy coarseEstimatedEndTime:endTimeCopy destinationType:destinationType destinationMapItem:itemCopy lowPowerModeWarningState:state];

  return v24;
}

- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationToken:(id)token sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2
{
  v31[1] = *MEMORY[0x277D85DE8];
  v30 = @"receiverHandle";
  v31[0] = token;
  v17 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  endTimeCopy = endTime;
  timeCopy = time;
  tokenCopy = token;
  iDCopy = iD;
  dCopy = d;
  dateCopy = date;
  v25 = [v17 dictionaryWithObjects:v31 forKeys:&v30 count:1];

  v26 = [(SMSessionStartMessage *)self initWithDate:dateCopy messageID:dCopy sessionID:iDCopy invitationTokenDict:v25 sessionType:type estimatedEndTime:timeCopy coarseEstimatedEndTime:endTimeCopy destinationType:destinationType destinationMapItem:itemCopy lowPowerModeWarningState:state];
  return v26;
}

- (SMSessionStartMessage)initWithDate:(id)date messageID:(id)d sessionID:(id)iD invitationTokenDict:(id)dict sessionType:(unint64_t)type estimatedEndTime:(id)time coarseEstimatedEndTime:(id)endTime destinationType:(unint64_t)self0 destinationMapItem:(id)self1 lowPowerModeWarningState:(int64_t)self2
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  dictCopy = dict;
  timeCopy = time;
  endTimeCopy = endTime;
  itemCopy = item;
  if (!dateCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: date";
LABEL_22:
    _os_log_error_impl(&dword_26455D000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_23;
  }

  if (!dCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: messageID";
    goto LABEL_22;
  }

  if (!iDCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: sessionID";
    goto LABEL_22;
  }

  if (!dictCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: invitationTokenDict";
    goto LABEL_22;
  }

  if (!timeCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: estimatedEndTime";
    goto LABEL_22;
  }

  if (!type)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid parameter not satisfying: sessionType != SMSessionTypeUnknown";
      goto LABEL_22;
    }

LABEL_23:

    selfCopy = 0;
    goto LABEL_24;
  }

  v31.receiver = self;
  v31.super_class = SMSessionStartMessage;
  v22 = [(SMMessage *)&v31 initWithDate:dateCopy messageID:dCopy sessionID:iDCopy];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_invitationTokenDict, dict);
    v23->_sessionType = type;
    objc_storeStrong(&v23->_estimatedEndTime, time);
    objc_storeStrong(&v23->_coarseEstimatedEndTime, endTime);
    v23->_destinationType = destinationType;
    objc_storeStrong(&v23->_destinationMapItem, item);
    v23->_lowPowerModeWarningState = state;
  }

  self = v23;
  selfCopy = self;
LABEL_24:

  return selfCopy;
}

- (SMSessionStartMessage)initWithDictionary:(id)dictionary
{
  v143 = *MEMORY[0x277D85DE8];
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

    goto LABEL_38;
  }

  v7 = [dictionaryCopy valueForKey:@"messageType"];
  intValue = [v7 intValue];

  if ([objc_opt_class() messageType] != intValue)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      v58 = 0;
      goto LABEL_39;
    }

    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = NSStringFromSelector(a2);
    *buf = 138413058;
    v135 = v53;
    v136 = 2112;
    v137 = v54;
    v138 = 1024;
    *v139 = [objc_opt_class() messageType];
    *&v139[4] = 1024;
    *&v139[6] = intValue;
    v55 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v56 = v12;
    v57 = 34;
LABEL_61:
    _os_log_error_impl(&dword_26455D000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);

    goto LABEL_38;
  }

  v9 = [v6 valueForKey:@"interfaceVersion"];
  intValue2 = [v9 intValue];

  if (intValue2 != 1)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v73 = objc_opt_class();
    v53 = NSStringFromClass(v73);
    v54 = NSStringFromSelector(a2);
    *buf = 138412802;
    v135 = v53;
    v136 = 2112;
    v137 = v54;
    v138 = 1024;
    *v139 = intValue2;
    v55 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v56 = v12;
    v57 = 28;
    goto LABEL_61;
  }

  v11 = [v6 valueForKey:@"sendDate"];
  v12 = v11;
  if (v11)
  {
    aSelector = a2;
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
        v115 = v17;
        v116 = v20;
        v113 = v12;
        v114 = v14;
        selfCopy = self;
        log = objc_alloc_init(MEMORY[0x277CBEB38]);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        [v6 valueForKey:@"receiverHandle"];
        v42 = LABEL_16:;

        if (v42)
        {
          v25 = v42;
        }

        else
        {
          v25 = @"receiverHandle";
        }

        v43 = [v6 valueForKey:@"sharingInvitationData"];

        v132 = v43;
        if (v43)
        {
          v41 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v43 options:0];
        }

        else
        {
          v41 = 0;
        }

        v44 = MEMORY[0x277CBEBC0];
        v45 = [v6 valueForKey:@"shareURL"];
        v39 = [v44 URLWithString:v45];

        v40 = [v6 valueForKey:@"participantID"];

        if (v41 && v39 && v40)
        {
          v22 = v40;
          v23 = v39;
          v24 = v132;
          while (1)
          {
            v46 = [objc_alloc(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v41 shareURL:v23 participantID:v22];

            if (v46)
            {
              [log setObject:v46 forKey:v25];
            }

            else
            {
              v47 = v23;
              v48 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                v49 = objc_opt_class();
                v133 = NSStringFromClass(v49);
                v50 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v135 = v133;
                v136 = 2112;
                v137 = v50;
                v51 = v50;
                _os_log_fault_impl(&dword_26455D000, v48, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,Invitation token creation failed", buf, 0x16u);
              }

              v23 = v47;
            }

            ++v26;
            v21 = v46;
            if (!v26)
            {
              [v6 valueForKey:@"receiverHandle"];
              goto LABEL_16;
            }

            v128 = v23;
            v130 = v46;
            v125 = v26;
            v27 = (v26 + 1);
            v28 = [@"receiverHandle" stringByAppendingFormat:@"%d", v27];
            v131 = [v6 valueForKey:v28];

            v29 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", v27];
            v30 = v6;
            v31 = [v6 valueForKey:v29];

            v132 = v31;
            v32 = v22;
            v33 = v31 ? [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v31 options:0] : 0;
            v34 = MEMORY[0x277CBEBC0];
            v35 = [@"shareURL" stringByAppendingFormat:@"%d", v27];
            v36 = [v30 valueForKey:v35];
            v37 = [v34 URLWithString:v36];

            v38 = [@"participantID" stringByAppendingFormat:@"%d", v27];
            v39 = v37;
            v40 = [v30 valueForKey:v38];

            v25 = v131;
            v41 = v33;
            if (!v131 || !v33 || !v37 || !v40)
            {
              break;
            }

            v22 = v40;
            v23 = v39;
            v24 = v132;
            v21 = v130;
            v6 = v30;
            v26 = v125;
          }

          v60 = v116;
          self = selfCopy;
          v21 = v130;
          v6 = v30;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v135 = v63;
              v136 = 2112;
              v137 = v64;
              v138 = 1024;
              *v139 = v125;
              _os_log_impl(&dword_26455D000, v61, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,finished parsing invitation tokens,found %d tokens", buf, 0x1Cu);

              v60 = v116;
            }
          }

          v65 = [v6 valueForKey:@"sessionType"];
          intValue3 = [v65 intValue];

          if (intValue3)
          {
            v124 = intValue3;
            v67 = [v6 valueForKey:@"estimatedEndTime"];
            v17 = v115;
            v129 = v67;
            if (v67)
            {
              v68 = MEMORY[0x277CBEAA8];
              [v67 doubleValue];
              v126 = [v68 dateWithTimeIntervalSince1970:?];
              v69 = [v6 valueForKey:@"coarseEstimatedEndTime"];
              v122 = v69;
              if (v69)
              {
                v70 = MEMORY[0x277CBEAA8];
                [v69 doubleValue];
                v71 = [v70 dateWithTimeIntervalSince1970:?];
              }

              else
              {
                v75 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  v106 = objc_opt_class();
                  v107 = NSStringFromClass(v106);
                  v108 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v135 = v107;
                  v136 = 2112;
                  v137 = v108;
                  _os_log_error_impl(&dword_26455D000, v75, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing coarseEstimatedEndTimeNumber", buf, 0x16u);
                }

                v71 = 0;
              }

              v76 = [v6 valueForKey:@"sessionDestinationType"];
              v77 = v76;
              v123 = v71;
              if (v76)
              {
                intValue4 = [v76 intValue];
                v79 = [v6 valueForKey:@"sessionDestinationMapItem"];
                if (v79)
                {
                  v80 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v79 options:0];
                }

                else
                {
                  v80 = 0;
                }

                v85 = intValue4;
                v86 = [v6 valueForKey:@"lowPowerModeWarningState"];
                v87 = v86;
                if (v86)
                {
                  intValue5 = [v86 intValue];
                }

                else
                {
                  v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                  {
                    v112 = objc_opt_class();
                    v121 = NSStringFromClass(v112);
                    aSelectora = NSStringFromSelector(aSelector);
                    *buf = 138412546;
                    v135 = v121;
                    v136 = 2112;
                    v137 = aSelectora;
                    _os_log_error_impl(&dword_26455D000, v89, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", buf, 0x16u);
                  }

                  intValue5 = 0;
                }

                v81 = v123;
                v90 = [(SMSessionStartMessage *)selfCopy initWithDate:v114 messageID:v115 sessionID:v116 invitationTokenDict:log sessionType:v124 estimatedEndTime:v126 coarseEstimatedEndTime:v123 destinationType:v85 destinationMapItem:v80 lowPowerModeWarningState:intValue5];

                self = v90;
                v58 = v90;
                v21 = v130;
              }

              else
              {
                v79 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v109 = objc_opt_class();
                  v110 = NSStringFromClass(v109);
                  v111 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v135 = v110;
                  v136 = 2112;
                  v137 = v111;
                  _os_log_error_impl(&dword_26455D000, v79, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

                  self = selfCopy;
                  v21 = v130;

                  v58 = 0;
                }

                else
                {
                  v58 = 0;
                  self = selfCopy;
                }

                v81 = v123;
              }

              v17 = v115;
              v20 = v116;
              v74 = v126;
            }

            else
            {
              v20 = v60;
              v74 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v103 = objc_opt_class();
                NSStringFromClass(v103);
                v104 = v127 = v74;
                v105 = NSStringFromSelector(aSelector);
                *buf = 138412546;
                v135 = v104;
                v136 = 2112;
                v137 = v105;
                _os_log_error_impl(&dword_26455D000, v127, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing estimatedEndTimeNumber", buf, 0x16u);

                v74 = v127;
              }

              v58 = 0;
            }

            v72 = v131;
          }

          else
          {
            v129 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            v17 = v115;
            v72 = v131;
            v20 = v60;
            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              v100 = objc_opt_class();
              v101 = NSStringFromClass(v100);
              v102 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v135 = v101;
              v136 = 2112;
              v137 = v102;
              _os_log_error_impl(&dword_26455D000, v129, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

              v72 = v131;
            }

            v58 = 0;
          }
        }

        else
        {
          v129 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
          {
            v97 = objc_opt_class();
            v98 = NSStringFromClass(v97);
            v99 = NSStringFromSelector(aSelector);
            *buf = 138413314;
            v135 = v98;
            v136 = 2112;
            v137 = v99;
            v138 = 2112;
            *v139 = v41;
            *&v139[8] = 2112;
            v140 = v39;
            v141 = 2112;
            v142 = v40;
            _os_log_error_impl(&dword_26455D000, v129, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing details for Invitation token creation,sharingInvitationData:%@,shareURL:%@,participantID:%@", buf, 0x34u);
          }

          v58 = 0;
          v72 = v25;
          self = selfCopy;
          v17 = v115;
          v20 = v116;
        }

        v12 = v113;
        v14 = v114;
      }

      else
      {
        log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v94 = objc_opt_class();
          v95 = NSStringFromClass(v94);
          v96 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v135 = v95;
          v136 = 2112;
          v137 = v96;
          _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
        }

        v58 = 0;
      }
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v91 = objc_opt_class();
        v92 = NSStringFromClass(v91);
        v93 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v135 = v92;
        v136 = 2112;
        v137 = v93;
        _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
      }

      v58 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v82 = objc_opt_class();
      v83 = NSStringFromClass(v82);
      v84 = NSStringFromSelector(a2);
      *buf = 138412546;
      v135 = v83;
      v136 = 2112;
      v137 = v84;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v58 = 0;
  }

LABEL_39:
  return v58;
}

- (id)outputToDictionary
{
  v27.receiver = self;
  v27.super_class = SMSessionStartMessage;
  outputToDictionary = [(SMMessage *)&v27 outputToDictionary];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  invitationTokenDict = [(SMSessionStartMessage *)self invitationTokenDict];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__SMSessionStartMessage_outputToDictionary__block_invoke;
  v22 = &unk_279B65248;
  v24 = v25;
  v5 = outputToDictionary;
  v23 = v5;
  [invitationTokenDict enumerateKeysAndObjectsUsingBlock:&v19];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage sessionType](self, "sessionType", v19, v20, v21, v22)}];
  [v5 setObject:v6 forKey:@"sessionType"];

  v7 = MEMORY[0x277CCABB0];
  estimatedEndTime = [(SMSessionStartMessage *)self estimatedEndTime];
  [estimatedEndTime timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  [v5 setObject:v9 forKey:@"estimatedEndTime"];

  coarseEstimatedEndTime = [(SMSessionStartMessage *)self coarseEstimatedEndTime];

  if (coarseEstimatedEndTime)
  {
    v11 = MEMORY[0x277CCABB0];
    coarseEstimatedEndTime2 = [(SMSessionStartMessage *)self coarseEstimatedEndTime];
    [coarseEstimatedEndTime2 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
    [v5 setObject:v13 forKey:@"coarseEstimatedEndTime"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage destinationType](self, "destinationType")}];
  [v5 setObject:v14 forKey:@"sessionDestinationType"];

  destinationMapItem = [(SMSessionStartMessage *)self destinationMapItem];

  if (destinationMapItem)
  {
    destinationMapItem2 = [(SMSessionStartMessage *)self destinationMapItem];
    v17 = [destinationMapItem2 base64EncodedStringWithOptions:0];
    [v5 setObject:v17 forKey:@"sessionDestinationMapItem"];
  }

  _Block_object_dispose(v25, 8);

  return v5;
}

void __43__SMSessionStartMessage_outputToDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = a3;
  v8 = a2;
  if (v6 == 1)
  {
    [v5 setObject:v8 forKey:@"receiverHandle"];

    v9 = *(a1 + 32);
    v10 = [v7 sharingInvitationData];
    v11 = [v10 base64EncodedStringWithOptions:0];
    [v9 setObject:v11 forKey:@"sharingInvitationData"];

    v12 = *(a1 + 32);
    v13 = [v7 shareURL];
    v14 = [v13 absoluteString];
    [v12 setObject:v14 forKey:@"shareURL"];

    v15 = *(a1 + 32);
    v27 = [v7 participantID];

    [v15 setObject:v27 forKey:@"participantID"];
  }

  else
  {
    v16 = [@"receiverHandle" stringByAppendingFormat:@"%d", v6];
    [v5 setObject:v8 forKey:v16];

    v17 = *(a1 + 32);
    v18 = [v7 sharingInvitationData];
    v19 = [v18 base64EncodedStringWithOptions:0];
    v20 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v17 setObject:v19 forKey:v20];

    v21 = *(a1 + 32);
    v22 = [v7 shareURL];
    v23 = [v22 absoluteString];
    v24 = [@"shareURL" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v21 setObject:v23 forKey:v24];

    v25 = *(a1 + 32);
    v27 = [v7 participantID];

    v26 = [@"participantID" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v25 setObject:v27 forKey:v26];
  }
}

- (SMSessionStartMessage)initWithURL:(id)l
{
  v194 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url", buf, 2u);
    }

    v61 = 0;
    goto LABEL_97;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  v5 = v4;
  if (!v4)
  {
    queryItems = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(queryItems, OS_LOG_TYPE_ERROR))
    {
      v109 = objc_opt_class();
      v110 = NSStringFromClass(v109);
      v111 = NSStringFromSelector(a2);
      *buf = 138412546;
      v185 = v110;
      v186 = 2112;
      v187 = v111;
      _os_log_error_impl(&dword_26455D000, queryItems, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing url components", buf, 0x16u);
    }

    v61 = 0;
    goto LABEL_96;
  }

  queryItems = [v4 queryItems];
  if (!queryItems)
  {
    v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v127 = objc_opt_class();
      v128 = NSStringFromClass(v127);
      NSStringFromSelector(a2);
      v130 = v129 = v62;
      *buf = 138412546;
      v185 = v128;
      v186 = 2112;
      v187 = v130;
      _os_log_error_impl(&dword_26455D000, v129, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing queryItems", buf, 0x16u);

      v62 = v129;
    }

    v61 = 0;
    goto LABEL_95;
  }

  v158 = v5;
  v159 = lCopy;
  v169 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v168 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v166 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v165 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v157 = queryItems;
  v7 = queryItems;
  v8 = [v7 countByEnumeratingWithState:&v180 objects:v193 count:16];
  if (!v8)
  {
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    intValue = 0;
    v176 = 0;
    v178 = 0;
    v179 = 0;
    v172 = 0;
    v174 = 0;
    goto LABEL_58;
  }

  v9 = v8;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  intValue = 0;
  v176 = 0;
  v178 = 0;
  v179 = 0;
  v172 = 0;
  v174 = 0;
  v10 = *v181;
  do
  {
    v11 = 0;
    do
    {
      if (*v181 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v180 + 1) + 8 * v11);
      value = [v12 value];
      if (!value)
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = NSStringFromSelector(a2);
          name = [v12 name];
          *buf = 138412802;
          v185 = v31;
          v186 = 2112;
          v187 = v32;
          v188 = 2112;
          *v189 = name;
          _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,queryItem missing value,queryName,%@", buf, 0x20u);
        }

        goto LABEL_14;
      }

      name2 = [v12 name];
      v15 = [name2 isEqualToString:@"sendDate"];

      if (v15)
      {
        v16 = value;

        v179 = v16;
        goto LABEL_23;
      }

      name3 = [v12 name];
      v19 = [name3 isEqualToString:@"messageID"];

      if (v19)
      {
        v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];

        v178 = v20;
      }

      else
      {
        name4 = [v12 name];
        v22 = [name4 isEqualToString:@"sessionID"];

        if (v22)
        {
          v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:value];

          v176 = v23;
        }

        else
        {
          name5 = [v12 name];
          v25 = [name5 isEqualToString:@"messageType"];

          if (v25)
          {
            v26 = value;

            v174 = v26;
          }

          else
          {
            name6 = [v12 name];
            v28 = [name6 isEqualToString:@"interfaceVersion"];

            if (v28)
            {
              v29 = value;

              v172 = v29;
            }

            else
            {
              name7 = [v12 name];
              v35 = [name7 hasPrefix:@"receiverHandle"];

              name8 = [v12 name];
              v17 = name8;
              if (v35)
              {
                v37 = v169;
                goto LABEL_33;
              }

              v38 = [name8 hasPrefix:@"sharingInvitationData"];

              name9 = [v12 name];
              v17 = name9;
              if (v38)
              {
                v37 = v168;
                goto LABEL_33;
              }

              v40 = [name9 hasPrefix:@"shareURL"];

              name10 = [v12 name];
              v17 = name10;
              if (v40)
              {
                v37 = v166;
                goto LABEL_33;
              }

              v42 = [name10 hasPrefix:@"participantID"];

              name11 = [v12 name];
              v17 = name11;
              if (v42)
              {
                v37 = v165;
LABEL_33:
                [v37 setObject:value forKey:v17];
LABEL_14:

                goto LABEL_23;
              }

              v44 = [name11 isEqualToString:@"sessionType"];

              if (v44)
              {
                intValue = [value intValue];
              }

              else
              {
                name12 = [v12 name];
                v46 = [name12 isEqualToString:@"estimatedEndTime"];

                if (v46)
                {
                  v47 = value;

                  v164 = v47;
                }

                else
                {
                  name13 = [v12 name];
                  v49 = [name13 isEqualToString:@"coarseEstimatedEndTime"];

                  if (v49)
                  {
                    v50 = value;

                    v163 = v50;
                  }

                  else
                  {
                    name14 = [v12 name];
                    v52 = [name14 isEqualToString:@"sessionDestinationType"];

                    if (v52)
                    {
                      v53 = value;

                      v162 = v53;
                    }

                    else
                    {
                      name15 = [v12 name];
                      v55 = [name15 isEqualToString:@"sessionDestinationMapItem"];

                      if (v55)
                      {
                        v56 = value;

                        v161 = v56;
                      }

                      else
                      {
                        name16 = [v12 name];
                        v58 = [name16 isEqualToString:@"lowPowerModeWarningState"];

                        if (v58)
                        {
                          v59 = value;

                          v160 = v59;
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

LABEL_23:

      ++v11;
    }

    while (v9 != v11);
    v60 = [v7 countByEnumeratingWithState:&v180 objects:v193 count:16];
    v9 = v60;
  }

  while (v60);
LABEL_58:

  v62 = v174;
  intValue2 = [v174 intValue];
  if (!v174 || [objc_opt_class() messageType] != intValue2)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v5 = v158;
    lCopy = v159;
    queryItems = v157;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v112 = objc_opt_class();
      v104 = NSStringFromClass(v112);
      v105 = NSStringFromSelector(a2);
      messageType = [objc_opt_class() messageType];
      *buf = 138413058;
      v185 = v104;
      v186 = 2112;
      v187 = v105;
      v188 = 1024;
      *v189 = messageType;
      *&v189[4] = 1024;
      *&v189[6] = intValue2;
      v106 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
      v107 = v68;
      v108 = 34;
      goto LABEL_104;
    }

LABEL_93:
    v61 = 0;
    v69 = v178;
    v70 = v161;
    goto LABEL_94;
  }

  intValue3 = [v172 intValue];
  v65 = intValue3;
  v5 = v158;
  lCopy = v159;
  queryItems = v157;
  if (!v172 || intValue3 != 1)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      v105 = NSStringFromSelector(a2);
      *buf = 138412802;
      v185 = v104;
      v186 = 2112;
      v187 = v105;
      v188 = 1024;
      *v189 = v65;
      v106 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
      v107 = v68;
      v108 = 28;
LABEL_104:
      _os_log_error_impl(&dword_26455D000, v107, OS_LOG_TYPE_ERROR, v106, buf, v108);

      v62 = v174;
      goto LABEL_93;
    }

    goto LABEL_93;
  }

  if (!v179)
  {
    v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v70 = v161;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v144 = objc_opt_class();
      v145 = NSStringFromClass(v144);
      v146 = NSStringFromSelector(a2);
      *buf = 138412546;
      v185 = v145;
      v186 = 2112;
      v187 = v146;
      _os_log_error_impl(&dword_26455D000, v68, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);

      v62 = v174;
    }

    v61 = 0;
    v69 = v178;
    goto LABEL_94;
  }

  v66 = MEMORY[0x277CBEAA8];
  [v179 doubleValue];
  v67 = [v66 dateWithTimeIntervalSince1970:?];
  v68 = v67;
  v69 = v178;
  v70 = v161;
  if (!v178)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
LABEL_116:
      v61 = 0;
      goto LABEL_138;
    }

    v123 = objc_opt_class();
    v124 = NSStringFromClass(v123);
    v125 = NSStringFromSelector(a2);
    *buf = 138412546;
    v185 = v124;
    v186 = 2112;
    v187 = v125;
    v126 = "#SafetyCache,%@,%@,missing messageID";
LABEL_140:
    _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, v126, buf, 0x16u);

    v62 = v174;
    v69 = v178;
    goto LABEL_116;
  }

  if (!v176)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_116;
    }

    v147 = objc_opt_class();
    v124 = NSStringFromClass(v147);
    v125 = NSStringFromSelector(a2);
    *buf = 138412546;
    v185 = v124;
    v186 = 2112;
    v187 = v125;
    v126 = "#SafetyCache,%@,%@,missing sessionID";
    goto LABEL_140;
  }

  v155 = v67;
  log = objc_alloc_init(MEMORY[0x277CBEB38]);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  [v169 valueForKey:@"receiverHandle"];
  v82 = LABEL_68:;

  if (v82)
  {
    v75 = v82;
  }

  else
  {
    v75 = @"receiverHandle";
  }

  v81 = [v168 valueForKey:@"sharingInvitationData"];

  v177 = v81;
  if (v81)
  {
    v81 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v81 options:0];
  }

  v83 = MEMORY[0x277CBEBC0];
  v84 = [v166 valueForKey:@"shareURL"];
  v85 = [v83 URLWithString:v84];

  v86 = [v165 valueForKey:@"participantID"];

  if (!v81 || !v85 || !v86)
  {
    v87 = v71;
    v88 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      v91 = NSStringFromSelector(a2);
      *buf = 138413314;
      v185 = v90;
      v186 = 2112;
      v187 = v91;
      v188 = 2112;
      *v189 = v81;
      *&v189[8] = 2112;
      v190 = v85;
      v191 = 2112;
      v192 = v86;
      _os_log_impl(&dword_26455D000, v88, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,missing details for Invitation token creation,sharingInvitationData:%@,shareURL:%@,participantID:%@", buf, 0x34u);
    }

    v71 = v87;
  }

  while (1)
  {
    v97 = [objc_alloc(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v81 shareURL:v85 participantID:v86];

    if (v97)
    {
      [log setObject:v97 forKey:v75];
    }

    else
    {
      v98 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = objc_opt_class();
        v100 = NSStringFromClass(v99);
        v101 = NSStringFromSelector(a2);
        *buf = 138412546;
        v185 = v100;
        v186 = 2112;
        v187 = v101;
        _os_log_impl(&dword_26455D000, v98, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,Invitation token creation failed", buf, 0x16u);
      }
    }

    ++v76;
    v71 = v97;
    v72 = v86;
    v73 = v85;
    v74 = v177;
    if (!v76)
    {
      [v169 valueForKey:@"receiverHandle"];
      goto LABEL_68;
    }

    v175 = v97;
    v77 = [@"receiverHandle" stringByAppendingFormat:@"%d", (v76 + 1)];
    v78 = [v169 valueForKey:v77];

    v79 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", (v76 + 1)];
    v80 = [v168 valueForKey:v79];

    v177 = v80;
    v81 = v80 ? [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v80 options:0] : 0;
    v92 = MEMORY[0x277CBEBC0];
    v93 = [@"shareURL" stringByAppendingFormat:@"%d", (v76 + 1)];
    v94 = [v166 valueForKey:v93];
    v85 = [v92 URLWithString:v94];

    v95 = [@"participantID" stringByAppendingFormat:@"%d", (v76 + 1)];
    v86 = [v165 valueForKey:v95];

    v96 = v78;
    if (!v78 || !v81 || !v85 || !v86)
    {
      break;
    }

    v75 = v78;
    v71 = v175;
  }

  v114 = v175;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v115 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
    {
      v116 = objc_opt_class();
      v117 = NSStringFromClass(v116);
      v118 = NSStringFromSelector(a2);
      *buf = 138412802;
      v185 = v117;
      v186 = 2112;
      v187 = v118;
      v188 = 1024;
      *v189 = v76;
      _os_log_impl(&dword_26455D000, v115, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,finished parsing invitation tokens,found %d tokens", buf, 0x1Cu);
    }
  }

  if (!intValue)
  {
    v120 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    lCopy = v159;
    if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
LABEL_120:
      v61 = 0;
      goto LABEL_137;
    }

    v131 = objc_opt_class();
    v132 = NSStringFromClass(v131);
    v133 = NSStringFromSelector(a2);
    *buf = 138412546;
    v185 = v132;
    v186 = 2112;
    v187 = v133;
    v134 = "#SafetyCache,%@,%@,missing sessionType";
LABEL_142:
    _os_log_error_impl(&dword_26455D000, v120, OS_LOG_TYPE_ERROR, v134, buf, 0x16u);

    goto LABEL_120;
  }

  lCopy = v159;
  if (!v164)
  {
    v120 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_120;
    }

    v148 = objc_opt_class();
    v132 = NSStringFromClass(v148);
    v133 = NSStringFromSelector(a2);
    *buf = 138412546;
    v185 = v132;
    v186 = 2112;
    v187 = v133;
    v134 = "#SafetyCache,%@,%@,missing estimatedEndTimeString";
    goto LABEL_142;
  }

  v119 = MEMORY[0x277CBEAA8];
  [v164 doubleValue];
  v120 = [v119 dateWithTimeIntervalSince1970:?];
  if (v163)
  {
    v121 = MEMORY[0x277CBEAA8];
    [v163 doubleValue];
    v122 = [v121 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v135 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v149 = objc_opt_class();
      v150 = NSStringFromClass(v149);
      v151 = NSStringFromSelector(a2);
      *buf = 138412546;
      v185 = v150;
      v186 = 2112;
      v187 = v151;
      _os_log_error_impl(&dword_26455D000, v135, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing coarseEstimatedEndTimeString", buf, 0x16u);

      v114 = v175;
    }

    v122 = 0;
  }

  if (v162)
  {
    intValue4 = [v162 intValue];
    if (!v160 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v137 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
      {
        v138 = objc_opt_class();
        v173 = NSStringFromClass(v138);
        v139 = NSStringFromSelector(a2);
        *buf = 138412546;
        v185 = v173;
        v186 = 2112;
        v187 = v139;
        v140 = v139;
        _os_log_impl(&dword_26455D000, v137, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningState", buf, 0x16u);
      }
    }

    v141 = intValue4;
    intValue5 = [v160 intValue];
    v143 = v161;
    if (v161)
    {
      v143 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v161 options:0];
    }

    v61 = [(SMSessionStartMessage *)self initWithDate:v155 messageID:v178 sessionID:v176 invitationTokenDict:log sessionType:intValue estimatedEndTime:v120 coarseEstimatedEndTime:v122 destinationType:v141 destinationMapItem:v143 lowPowerModeWarningState:intValue5];
    self = v61;
    v114 = v175;
  }

  else
  {
    v143 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      v152 = objc_opt_class();
      v153 = NSStringFromClass(v152);
      v154 = NSStringFromSelector(a2);
      *buf = 138412546;
      v185 = v153;
      v186 = 2112;
      v187 = v154;
      _os_log_error_impl(&dword_26455D000, v143, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

      v114 = v175;
    }

    v61 = 0;
  }

LABEL_137:
  queryItems = v157;
  v5 = v158;
  v62 = v174;
  v69 = v178;
  v70 = v161;
  v68 = v155;
LABEL_138:

LABEL_94:
LABEL_95:

LABEL_96:
LABEL_97:

  return v61;
}

- (id)outputToURLComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46.receiver = self;
  v46.super_class = SMSessionStartMessage;
  outputToURLComponents = [(SMMessage *)&v46 outputToURLComponents];
  queryItems = [outputToURLComponents queryItems];
  [v4 addObjectsFromArray:queryItems];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  invitationTokenDict = [(SMSessionStartMessage *)self invitationTokenDict];
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = __46__SMSessionStartMessage_outputToURLComponents__block_invoke;
  v41 = &unk_279B65248;
  v43 = v44;
  v8 = v4;
  v42 = v8;
  [invitationTokenDict enumerateKeysAndObjectsUsingBlock:&v38];

  v9 = objc_alloc(MEMORY[0x277CCAD18]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage sessionType](self, "sessionType", v38, v39, v40, v41)}];
  stringValue = [v10 stringValue];
  v12 = [v9 initWithName:@"sessionType" value:stringValue];
  [v8 addObject:v12];

  v13 = MEMORY[0x277CCABB0];
  estimatedEndTime = [(SMSessionStartMessage *)self estimatedEndTime];
  [estimatedEndTime timeIntervalSince1970];
  v15 = [v13 numberWithDouble:?];
  stringValue2 = [v15 stringValue];

  v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"estimatedEndTime" value:stringValue2];
  [v8 addObject:v17];

  coarseEstimatedEndTime = [(SMSessionStartMessage *)self coarseEstimatedEndTime];

  if (coarseEstimatedEndTime)
  {
    v19 = MEMORY[0x277CCABB0];
    coarseEstimatedEndTime2 = [(SMSessionStartMessage *)self coarseEstimatedEndTime];
    [coarseEstimatedEndTime2 timeIntervalSince1970];
    v21 = [v19 numberWithDouble:?];
    stringValue3 = [v21 stringValue];

    v23 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"coarseEstimatedEndTime" value:stringValue3];
    [v8 addObject:v23];
  }

  v24 = objc_alloc(MEMORY[0x277CCAD18]);
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionStartMessage destinationType](self, "destinationType")}];
  stringValue4 = [v25 stringValue];
  v27 = [v24 initWithName:@"sessionDestinationType" value:stringValue4];
  [v8 addObject:v27];

  destinationMapItem = [(SMSessionStartMessage *)self destinationMapItem];

  if (destinationMapItem)
  {
    v29 = objc_alloc(MEMORY[0x277CCAD18]);
    destinationMapItem2 = [(SMSessionStartMessage *)self destinationMapItem];
    v31 = [destinationMapItem2 base64EncodedStringWithOptions:0];
    v32 = [v29 initWithName:@"sessionDestinationMapItem" value:v31];
    [v8 addObject:v32];
  }

  v33 = objc_alloc(MEMORY[0x277CCAD18]);
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SMSessionStartMessage lowPowerModeWarningState](self, "lowPowerModeWarningState")}];
  stringValue5 = [v34 stringValue];
  v36 = [v33 initWithName:@"lowPowerModeWarningState" value:stringValue5];
  [v8 addObject:v36];

  [v3 setQueryItems:v8];
  _Block_object_dispose(v44, 8);

  return v3;
}

void __46__SMSessionStartMessage_outputToURLComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = MEMORY[0x277CCAD18];
  v8 = a3;
  v9 = a2;
  v10 = [v7 alloc];
  v11 = v10;
  if (v6 == 1)
  {
    v12 = [v10 initWithName:@"receiverHandle" value:v9];

    [v5 addObject:v12];
    v13 = *(a1 + 32);
    v14 = objc_alloc(MEMORY[0x277CCAD18]);
    v15 = [v8 sharingInvitationData];
    v16 = [v15 base64EncodedStringWithOptions:0];
    v17 = [v14 initWithName:@"sharingInvitationData" value:v16];
    [v13 addObject:v17];

    v18 = *(a1 + 32);
    v19 = objc_alloc(MEMORY[0x277CCAD18]);
    v20 = [v8 shareURL];
    v21 = [v20 absoluteString];
    v22 = [v19 initWithName:@"shareURL" value:v21];
    [v18 addObject:v22];

    v23 = *(a1 + 32);
    v24 = objc_alloc(MEMORY[0x277CCAD18]);
    v43 = [v8 participantID];

    v25 = [v24 initWithName:@"participantID" value:v43];
    [v23 addObject:v25];
  }

  else
  {
    v26 = [@"receiverHandle" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v27 = [v11 initWithName:v26 value:v9];

    [v5 addObject:v27];
    v28 = *(a1 + 32);
    v29 = objc_alloc(MEMORY[0x277CCAD18]);
    v30 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v31 = [v8 sharingInvitationData];
    v32 = [v31 base64EncodedStringWithOptions:0];
    v33 = [v29 initWithName:v30 value:v32];
    [v28 addObject:v33];

    v34 = *(a1 + 32);
    v35 = objc_alloc(MEMORY[0x277CCAD18]);
    v36 = [@"shareURL" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v37 = [v8 shareURL];
    v38 = [v37 absoluteString];
    v39 = [v35 initWithName:v36 value:v38];
    [v34 addObject:v39];

    v40 = *(a1 + 32);
    v41 = objc_alloc(MEMORY[0x277CCAD18]);
    v43 = [@"participantID" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    v25 = [v8 participantID];

    v42 = [v41 initWithName:v43 value:v25];
    [v40 addObject:v42];
  }
}

- (id)summaryText
{
  sessionType = [(SMSessionStartMessage *)self sessionType];
  if (sessionType > 2)
  {
    if (sessionType == 3)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"START_MESSAGE_ROUNDTRIP_DEFAULT_SUMMARY_FORMAT";
      v8 = @"Check In: Round trip";
      goto LABEL_17;
    }

    if (sessionType == 4)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"START_MESSAGE_WORKOUT_BOUND_SUMMARY_FORMAT";
      v8 = @"Check In: Workout Started";
      goto LABEL_17;
    }

LABEL_11:
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"CHECK_IN_MESSAGE";
    v8 = @"Check In";
    goto LABEL_17;
  }

  if (sessionType == 1)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"START_MESSAGE_TIME_BOUND_SUMMARY_FORMAT";
    v8 = @"Check In: Timer Started";
    goto LABEL_17;
  }

  if (sessionType != 2)
  {
    goto LABEL_11;
  }

  destinationType = [(SMSessionStartMessage *)self destinationType];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  switch(destinationType)
  {
    case 3uLL:
      v7 = @"START_MESSAGE_SCHOOL_SUMMARY_FORMAT";
      v8 = @"Check In: School";
      break;
    case 2uLL:
      v7 = @"START_MESSAGE_WORK_SUMMARY_FORMAT";
      v8 = @"Check In: Work";
      break;
    case 1uLL:
      v7 = @"START_MESSAGE_HOME_SUMMARY_FORMAT";
      v8 = @"Check In: Home";
      break;
    default:
      v7 = @"START_MESSAGE_DEFAULT_DESTINATION_SUMMARY_FORMAT";
      v8 = @"Check In: Destination";
      break;
  }

LABEL_17:
  v9 = [v5 localizedStringForKey:v7 value:v8 table:0];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (!coderCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSessionStartMessage encodeWithCoder:]";
      *&buf[12] = 1024;
      *&buf[14] = 619;
      _os_log_error_impl(&dword_26455D000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: encoder (in %s:%d)", buf, 0x12u);
    }
  }

  v20.receiver = self;
  v20.super_class = SMSessionStartMessage;
  [(SMMessage *)&v20 encodeWithCoder:coderCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  invitationTokenDict = [(SMSessionStartMessage *)self invitationTokenDict];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __41__SMSessionStartMessage_encodeWithCoder___block_invoke;
  v17 = &unk_279B65248;
  v19 = buf;
  v7 = coderCopy;
  v18 = v7;
  [invitationTokenDict enumerateKeysAndObjectsUsingBlock:&v14];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionStartMessage sessionType](self, "sessionType", v14, v15, v16, v17)}];
  [v7 encodeObject:v8 forKey:@"sessionType"];

  estimatedEndTime = [(SMSessionStartMessage *)self estimatedEndTime];
  [v7 encodeObject:estimatedEndTime forKey:@"estimatedEndTime"];

  coarseEstimatedEndTime = [(SMSessionStartMessage *)self coarseEstimatedEndTime];
  [v7 encodeObject:coarseEstimatedEndTime forKey:@"coarseEstimatedEndTime"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionStartMessage destinationType](self, "destinationType")}];
  [v7 encodeObject:v11 forKey:@"sessionDestinationType"];

  destinationMapItem = [(SMSessionStartMessage *)self destinationMapItem];
  LOBYTE(v11) = destinationMapItem == 0;

  if ((v11 & 1) == 0)
  {
    destinationMapItem2 = [(SMSessionStartMessage *)self destinationMapItem];
    [v7 encodeObject:destinationMapItem2 forKey:@"sessionDestinationMapItem"];
  }

  _Block_object_dispose(buf, 8);
}

void __41__SMSessionStartMessage_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = a3;
  v8 = a2;
  if (v6 == 1)
  {
    [v5 encodeObject:v8 forKey:@"receiverHandle"];

    v9 = *(a1 + 32);
    v10 = [v7 sharingInvitationData];
    [v9 encodeObject:v10 forKey:@"sharingInvitationData"];

    v11 = *(a1 + 32);
    v12 = [v7 shareURL];
    [v11 encodeObject:v12 forKey:@"shareURL"];

    v13 = *(a1 + 32);
    v23 = [v7 participantID];

    [v13 encodeObject:v23 forKey:@"participantID"];
  }

  else
  {
    v14 = [@"receiverHandle" stringByAppendingFormat:@"%d", v6];
    [v5 encodeObject:v8 forKey:v14];

    v15 = *(a1 + 32);
    v16 = [v7 sharingInvitationData];
    v17 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v15 encodeObject:v16 forKey:v17];

    v18 = *(a1 + 32);
    v19 = [v7 shareURL];
    v20 = [@"shareURL" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v18 encodeObject:v19 forKey:v20];

    v21 = *(a1 + 32);
    v23 = [v7 participantID];

    v22 = [@"participantID" stringByAppendingFormat:@"%d", *(*(*(a1 + 40) + 8) + 24)];
    [v21 encodeObject:v23 forKey:v22];
  }
}

- (SMSessionStartMessage)initWithCoder:(id)coder
{
  v109 = *MEMORY[0x277D85DE8];
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

    goto LABEL_32;
  }

  v7 = [coderCopy decodeIntegerForKey:@"messageType"];
  if ([objc_opt_class() messageType] != v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_32:
      v43 = 0;
      goto LABEL_33;
    }

    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    *buf = 138413058;
    v101 = v37;
    v102 = 2112;
    v103 = v38;
    v104 = 1024;
    *v105 = [objc_opt_class() messageType];
    *&v105[4] = 1024;
    *&v105[6] = v7;
    v39 = "#SafetyCache,%@,%@,extracted non-matching message type,expected,%d,got,%d";
    v40 = v9;
    v41 = 34;
LABEL_56:
    _os_log_error_impl(&dword_26455D000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);

    goto LABEL_32;
  }

  v8 = [v6 decodeIntegerForKey:@"interfaceVersion"];
  if (v8 != 1)
  {
    v42 = v8;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v60 = objc_opt_class();
    v37 = NSStringFromClass(v60);
    v38 = NSStringFromSelector(a2);
    *buf = 138412802;
    v101 = v37;
    v102 = 2112;
    v103 = v38;
    v104 = 1024;
    *v105 = v42;
    v39 = "#SafetyCache,%@,%@,unrecognized interface version,%d";
    v40 = v9;
    v41 = 28;
    goto LABEL_56;
  }

  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sendDate"];
  if (!v9)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = NSStringFromSelector(a2);
      *buf = 138412546;
      v101 = v63;
      v102 = 2112;
      v103 = v64;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing date", buf, 0x16u);
    }

    v43 = 0;
    goto LABEL_75;
  }

  v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"messageID"];
  if (!v10)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v68 = NSStringFromSelector(a2);
      *buf = 138412546;
      v101 = v67;
      v102 = 2112;
      v103 = v68;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing messageID", buf, 0x16u);
    }

    v43 = 0;
    goto LABEL_74;
  }

  v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
  v12 = v11;
  if (!v11)
  {
    log = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      v71 = NSStringFromSelector(a2);
      *buf = 138412546;
      v101 = v70;
      v102 = 2112;
      v103 = v71;
      _os_log_error_impl(&dword_26455D000, log, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionID", buf, 0x16u);
    }

    v43 = 0;
    goto LABEL_73;
  }

  aSelector = a2;
  v87 = v11;
  v88 = v10;
  v89 = v9;
  selfCopy = self;
  log = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  for (i = 0; ; ++i)
  {
    v19 = objc_opt_class();
    if (!i)
    {
      break;
    }

    v98 = v13;
    v20 = [@"receiverHandle" stringByAppendingFormat:@"%d", (i + 1)];
    v21 = [v6 decodeObjectOfClass:v19 forKey:v20];

    v22 = objc_opt_class();
    v23 = [@"sharingInvitationData" stringByAppendingFormat:@"%d", (i + 1)];
    v24 = [v6 decodeObjectOfClass:v22 forKey:v23];

    v25 = objc_opt_class();
    v26 = [@"shareURL" stringByAppendingFormat:@"%d", (i + 1)];
    v27 = [v6 decodeObjectOfClass:v25 forKey:v26];

    v28 = objc_opt_class();
    v29 = [@"participantID" stringByAppendingFormat:@"%d", (i + 1)];
    v30 = [v6 decodeObjectOfClass:v28 forKey:v29];

    if (!v21 || !v24 || !v27 || !v30)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = NSStringFromSelector(aSelector);
          *buf = 138412802;
          v101 = v47;
          v102 = 2112;
          v103 = v48;
          v104 = 1024;
          *v105 = i;
          _os_log_impl(&dword_26455D000, v45, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,finished parsing invitation tokens,found %d tokens", buf, 0x1Cu);
        }
      }

      v49 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
      v50 = v49;
      v13 = v98;
      if (v49)
      {
        intValue = [v49 intValue];
        v97 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedEndTime"];
        if (v97)
        {
          v95 = v50;
          v96 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"coarseEstimatedEndTime"];
          v52 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationType"];
          v53 = v52;
          if (v52)
          {
            v54 = intValue;
            intValue2 = [v52 intValue];
            v56 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sessionDestinationMapItem"];
            v57 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lowPowerModeWarningState"];
            v58 = v57;
            if (v57)
            {
              intValue3 = [v57 intValue];
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v94 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                {
                  v65 = objc_opt_class();
                  v93 = NSStringFromClass(v65);
                  v92 = NSStringFromSelector(aSelector);
                  *buf = 138412546;
                  v101 = v93;
                  v102 = 2112;
                  v103 = v92;
                  _os_log_impl(&dword_26455D000, v94, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,missing lowPowerModeWarningState, OK to proceed", buf, 0x16u);
                }
              }

              intValue3 = 0;
            }

            v43 = [(SMSessionStartMessage *)selfCopy initWithDate:v89 messageID:v88 sessionID:v87 invitationTokenDict:log sessionType:v54 estimatedEndTime:v97 coarseEstimatedEndTime:v96 destinationType:intValue2 destinationMapItem:v56 lowPowerModeWarningState:intValue3];

            self = v43;
          }

          else
          {
            v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v83 = objc_opt_class();
              v84 = NSStringFromClass(v83);
              v85 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v101 = v84;
              v102 = 2112;
              v103 = v85;
              _os_log_error_impl(&dword_26455D000, v56, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing destinationType", buf, 0x16u);

              self = selfCopy;
              v43 = 0;
            }

            else
            {
              v43 = 0;
              self = selfCopy;
            }
          }

          v50 = v95;
          v61 = v96;
        }

        else
        {
          v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            self = selfCopy;
            v79 = objc_opt_class();
            v80 = NSStringFromClass(v79);
            NSStringFromSelector(aSelector);
            v82 = v81 = v61;
            *buf = 138412546;
            v101 = v80;
            v102 = 2112;
            v103 = v82;
            _os_log_error_impl(&dword_26455D000, v81, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing estimatedEndTime", buf, 0x16u);

            v61 = v81;
            v43 = 0;
          }

          else
          {
            v43 = 0;
            self = selfCopy;
          }
        }

        v13 = v98;
      }

      else
      {
        v97 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          self = selfCopy;
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          v78 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v101 = v77;
          v102 = 2112;
          v103 = v78;
          _os_log_error_impl(&dword_26455D000, v97, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing sessionType", buf, 0x16u);

          v13 = v98;
          v43 = 0;
        }

        else
        {
          v43 = 0;
          self = selfCopy;
        }
      }

      goto LABEL_72;
    }

    v14 = v30;
    v15 = v27;
    v16 = v24;
    v17 = v21;
LABEL_21:
    v32 = [objc_alloc(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v16 shareURL:v15 participantID:v14];

    if (v32)
    {
      [log setObject:v32 forKey:v17];
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v99 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v101 = v35;
        v102 = 2112;
        v103 = v99;
        _os_log_fault_impl(&dword_26455D000, v33, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,Invitation token creation failed", buf, 0x16u);
      }
    }

    v13 = v32;
  }

  v31 = [v6 decodeObjectOfClass:v19 forKey:@"receiverHandle"];

  if (v31)
  {
    v17 = v31;
  }

  else
  {
    v17 = @"receiverHandle";
  }

  v24 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInvitationData"];

  v27 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];

  v30 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"participantID"];

  if (v24 && v27 && v30)
  {
    v14 = v30;
    v15 = v27;
    v16 = v24;
    goto LABEL_21;
  }

  v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v72 = objc_opt_class();
    NSStringFromClass(v72);
    v74 = v73 = v13;
    v75 = NSStringFromSelector(aSelector);
    *buf = 138413314;
    v101 = v74;
    v102 = 2112;
    v103 = v75;
    v104 = 2112;
    *v105 = v24;
    *&v105[8] = 2112;
    v106 = v27;
    v107 = 2112;
    v108 = v30;
    _os_log_error_impl(&dword_26455D000, v50, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,missing details for Invitation token creation,sharingInvitationData:%@,shareURL:%@,participantID:%@", buf, 0x34u);

    v13 = v73;
  }

  v43 = 0;
  v21 = v17;
  self = selfCopy;
LABEL_72:

  v10 = v88;
  v9 = v89;
  v12 = v87;
LABEL_73:

LABEL_74:
LABEL_75:

LABEL_33:
  return v43;
}

@end