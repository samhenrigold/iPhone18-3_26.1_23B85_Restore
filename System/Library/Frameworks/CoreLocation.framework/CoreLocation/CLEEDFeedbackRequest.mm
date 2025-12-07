@interface CLEEDFeedbackRequest
- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDFeedbackRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state feedbackVersion:(int64_t)version callRelatedToEmergency:(BOOL)self0 callerResponsive:(id)self1 callTrigger:(int64_t)self2 callReason:(int64_t)self3 respondersDispatched:(id)self4;
- (id)description;
- (id)getBooleanAsNumberFromDictionary:(id)dictionary key:(id)key;
- (id)getIntegerAsNumberFromDictionary:(id)dictionary key:(id)key;
- (id)getRequestDict;
- (void)dealloc;
@end

@implementation CLEEDFeedbackRequest

- (CLEEDFeedbackRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state feedbackVersion:(int64_t)version callRelatedToEmergency:(BOOL)self0 callerResponsive:(id)self1 callTrigger:(int64_t)self2 callReason:(int64_t)self3 respondersDispatched:(id)self4
{
  v92 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v18 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    if (responsive)
    {
      v22 = objc_msgSend_stringValue(responsive, v19, v20, v21);
      if (dispatched)
      {
LABEL_6:
        v23 = objc_msgSend_stringValue(dispatched, v19, v20, v21);
LABEL_9:
        *buf = 136449282;
        v67 = "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]";
        v68 = 2114;
        dCopy = d;
        v70 = 2114;
        iDCopy = iD;
        v72 = 2114;
        partnerIDCopy = partnerID;
        v74 = 2114;
        geofenceIDCopy = geofenceID;
        v76 = 2114;
        dateCopy = date;
        v78 = 2050;
        stateCopy = state;
        v80 = 1026;
        versionCopy = version;
        v82 = 1026;
        emergencyCopy = emergency;
        v84 = 2114;
        v85 = v22;
        v86 = 2050;
        triggerCopy = trigger;
        v88 = 2050;
        reasonCopy = reason;
        v90 = 2112;
        v91 = v23;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:{public}%@", buf, 0x7Cu);
        goto LABEL_10;
      }
    }

    else
    {
      v22 = @"Unspecified";
      if (dispatched)
      {
        goto LABEL_6;
      }
    }

    v23 = @"Unspecified";
    goto LABEL_9;
  }

LABEL_10:
  v24 = sub_19B87DD40();
  if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
  {
    goto LABEL_23;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v28 = qword_1EAFE4718;
  if (responsive)
  {
    v29 = objc_msgSend_stringValue(responsive, v25, v26, v27);
    if (dispatched)
    {
LABEL_18:
      v30 = objc_msgSend_stringValue(dispatched, v25, v26, v27);
      goto LABEL_21;
    }
  }

  else
  {
    v29 = @"Unspecified";
    if (dispatched)
    {
      goto LABEL_18;
    }
  }

  v30 = @"Unspecified";
LABEL_21:
  v40 = 136449282;
  v41 = "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]";
  v42 = 2114;
  dCopy2 = d;
  v44 = 2114;
  iDCopy2 = iD;
  v46 = 2114;
  partnerIDCopy2 = partnerID;
  v48 = 2114;
  geofenceIDCopy2 = geofenceID;
  v50 = 2114;
  dateCopy2 = date;
  v52 = 2050;
  stateCopy2 = state;
  v54 = 1026;
  versionCopy2 = version;
  v56 = 1026;
  emergencyCopy2 = emergency;
  v58 = 2114;
  v59 = v29;
  v60 = 2050;
  triggerCopy2 = trigger;
  v62 = 2050;
  reasonCopy2 = reason;
  v64 = 2112;
  v65 = v30;
  v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 2, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:{public}%@", &v40, 124);
  sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:feedbackVersion:callRelatedToEmergency:callerResponsive:callTrigger:callReason:respondersDispatched:]", "CoreLocation: %s\n", v31);
  if (v31 != buf)
  {
    free(v31);
  }

LABEL_23:
  v39.receiver = self;
  v39.super_class = CLEEDFeedbackRequest;
  v32 = [(CLEEDRequest *)&v39 initWithID:d psapID:iD partnerID:partnerID geofenceID:geofenceID requestDate:date requestType:3 state:state];
  v33 = v32;
  if (v32)
  {
    v32->_feedbackVersion = version;
    v32->_callRelatedToEmergency = emergency;
    v32->_callerResponsive = responsive;
    v33->_callTrigger = trigger;
    v33->_callReason = reason;
    if (dispatched)
    {
      dispatchedCopy = dispatched;
    }

    else
    {
      dispatchedCopy = 0;
    }

    v33->_respondersDispatched = dispatchedCopy;
  }

  return v33;
}

- (void)dealloc
{
  callerResponsive = self->_callerResponsive;
  if (callerResponsive)
  {

    self->_callerResponsive = 0;
  }

  respondersDispatched = self->_respondersDispatched;
  if (respondersDispatched)
  {

    self->_respondersDispatched = 0;
  }

  v5.receiver = self;
  v5.super_class = CLEEDFeedbackRequest;
  [(CLEEDRequest *)&v5 dealloc];
}

- (id)description
{
  v41.receiver = self;
  v41.super_class = CLEEDFeedbackRequest;
  v3 = [(CLEEDRequest *)&v41 description];
  v4 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_feedbackVersion(self, v5, v6, v7);
  v12 = objc_msgSend_callRelatedToEmergency(self, v9, v10, v11);
  if (objc_msgSend_callerResponsive(self, v13, v14, v15))
  {
    v19 = objc_msgSend_callerResponsive(self, v16, v17, v18);
    v23 = objc_msgSend_stringValue(v19, v20, v21, v22);
  }

  else
  {
    v23 = @"Unspecified";
  }

  v24 = objc_msgSend_callTrigger(self, v16, v17, v18);
  v28 = objc_msgSend_callReason(self, v25, v26, v27);
  if (objc_msgSend_respondersDispatched(self, v29, v30, v31))
  {
    v35 = objc_msgSend_respondersDispatched(self, v32, v33, v34);
    v39 = objc_msgSend_stringValue(v35, v36, v37, v38);
  }

  else
  {
    v39 = @"Unspecified";
  }

  return objc_msgSend_stringWithFormat_(v4, v32, @"%@\n <CLEEDFeedbackRequest: feedbackVersion, %d, callRelatedToEmergency, %d, callerResponsive, %@, callTrigger, %lu, callReason, %lu, respondersDispatched, %@>", v34, v3, v8, v12, v23, v24, v28, v39);
}

- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v140 = *MEMORY[0x1E69E9840];
  *error = 0;
  v9 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", data, l);
  v12 = objc_msgSend_objectForKey_(dictionary, v10, @"partner_ID", v11);
  v15 = objc_msgSend_objectForKey_(dictionary, v13, @"psap_ID", v14);
  v18 = objc_msgSend_objectForKey_(dictionary, v16, @"geofence_ID", v17);
  v21 = objc_msgSend_valueForKey_(dictionary, v19, @"timestamp", v20);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v22 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v127 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v128 = 2114;
    v129 = v9;
    v130 = 2114;
    v131 = v12;
    v132 = 2114;
    *v133 = v15;
    *&v133[8] = 2114;
    *v134 = v18;
    *&v134[8] = 2050;
    *v135 = objc_msgSend_integerValue(v21, v23, v24, v25);
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
  }

  v26 = sub_19B87DD40();
  if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v32 = qword_1EAFE4718;
    v112 = 136447490;
    v113 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v114 = 2114;
    v115 = v9;
    v116 = 2114;
    v117 = v12;
    v118 = 2114;
    *v119 = v15;
    *&v119[8] = 2114;
    *v120 = v18;
    *&v120[8] = 2050;
    *v121 = objc_msgSend_integerValue(v21, v29, v30, v31);
    v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v32, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", &v112, 62);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  v105 = v21;
  v106 = v9;
  v34 = objc_msgSend_objectForKey_(data, v27, @"request_type", v28);
  v37 = objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v35, v34, v36);
  IntegerAsNumberFromDictionary_key = objc_msgSend_getIntegerAsNumberFromDictionary_key_(self, v38, data, @"feedback_version");
  BooleanAsNumberFromDictionary_key = objc_msgSend_getBooleanAsNumberFromDictionary_key_(self, v40, data, @"call_related_to_emergency");
  v110 = objc_msgSend_getBooleanAsNumberFromDictionary_key_(self, v41, data, @"caller_responsive");
  v107 = objc_msgSend_getIntegerAsNumberFromDictionary_key_(self, v42, data, @"call_trigger");
  v108 = objc_msgSend_getIntegerAsNumberFromDictionary_key_(self, v43, data, @"call_reason");
  v109 = objc_msgSend_getBooleanAsNumberFromDictionary_key_(self, v44, data, @"responders_dispatched");
  v103 = v18;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v45 = qword_1EAFE4718;
  v49 = v15;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    if (IntegerAsNumberFromDictionary_key)
    {
      v50 = objc_msgSend_integerValue(IntegerAsNumberFromDictionary_key, v46, v47, v48);
    }

    else
    {
      v50 = 0;
    }

    if (BooleanAsNumberFromDictionary_key)
    {
      v51 = objc_msgSend_BOOLValue(BooleanAsNumberFromDictionary_key, v46, v47, v48);
    }

    else
    {
      v51 = 0;
    }

    v52 = v12;
    if (v110)
    {
      v53 = objc_msgSend_stringValue(v110, v46, v47, v48);
    }

    else
    {
      v53 = @"Unspecified_Or_Invalid";
    }

    if (v109)
    {
      v54 = objc_msgSend_stringValue(v109, v46, v47, v48);
    }

    else
    {
      v54 = @"Unspecified_Or_Invalid";
    }

    *buf = 136448258;
    v127 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v128 = 2114;
    v129 = v34;
    v130 = 2050;
    v131 = v37;
    v132 = 1026;
    *v133 = v50;
    *&v133[4] = 1026;
    *&v133[6] = v51;
    *v134 = 2114;
    *&v134[2] = v53;
    *v135 = 2050;
    *&v135[2] = v107;
    v136 = 2050;
    v137 = v108;
    v138 = 2114;
    v139 = v54;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@]", buf, 0x54u);
    v12 = v52;
    v15 = v49;
  }

  v55 = sub_19B87DD40();
  if (*(v55 + 160) > 1 || *(v55 + 164) > 1 || *(v55 + 168) > 1 || *(v55 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v62 = qword_1EAFE4718;
    if (IntegerAsNumberFromDictionary_key)
    {
      v63 = objc_msgSend_integerValue(IntegerAsNumberFromDictionary_key, v59, v60, v61);
    }

    else
    {
      v63 = 0;
    }

    if (BooleanAsNumberFromDictionary_key)
    {
      v64 = objc_msgSend_BOOLValue(BooleanAsNumberFromDictionary_key, v59, v60, v61);
    }

    else
    {
      v64 = 0;
    }

    v65 = v12;
    if (v110)
    {
      v66 = objc_msgSend_stringValue(v110, v59, v60, v61);
    }

    else
    {
      v66 = @"Unspecified_Or_Invalid";
    }

    if (v109)
    {
      v67 = objc_msgSend_stringValue(v109, v59, v60, v61);
    }

    else
    {
      v67 = @"Unspecified_Or_Invalid";
    }

    v112 = 136448258;
    v113 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v114 = 2114;
    v115 = v34;
    v116 = 2050;
    v117 = v37;
    v118 = 1026;
    *v119 = v63;
    *&v119[4] = 1026;
    *&v119[6] = v64;
    *v120 = 2114;
    *&v120[2] = v66;
    *v121 = 2050;
    *&v121[2] = v107;
    v122 = 2050;
    v123 = v108;
    v124 = 2114;
    v125 = v67;
    v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v62, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@]", &v112, 84);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }

    v12 = v65;
    v15 = v49;
  }

  if (!v106 || !v12 || !v15 || !v103 || !v105 || !v37 || !IntegerAsNumberFromDictionary_key || !BooleanAsNumberFromDictionary_key)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v69 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v127 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
    }

    v70 = sub_19B87DD40();
    if ((*(v70 + 160) & 0x80000000) == 0 || (*(v70 + 164) & 0x80000000) == 0 || (*(v70 + 168) & 0x80000000) == 0 || *(v70 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v112 = 136446210;
      v113 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", &v112, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v71);
      if (v71 != buf)
      {
        free(v71);
      }
    }

    *error = 1;
  }

  if (v106)
  {
    v72 = objc_alloc(MEMORY[0x1E696AFB0]);
    v75 = objc_msgSend_initWithUUIDString_(v72, v73, v106, v74);
  }

  else
  {
    v75 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v56, v57, v58);
  }

  v79 = v75;
  v80 = MEMORY[0x1E695DF00];
  if (v105)
  {
    v81 = objc_msgSend_integerValue(v105, v76, v77, v78);
    v85 = objc_msgSend_dateWithTimeIntervalSince1970_(v80, v82, v83, v84, v81);
  }

  else
  {
    v85 = objc_msgSend_date(MEMORY[0x1E695DF00], v76, v77, v78);
  }

  v86 = v85;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v87 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v127 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v128 = 2114;
    v129 = v79;
    v130 = 2114;
    v131 = v86;
    _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v88 = sub_19B87DD40();
  if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v112 = 136446722;
    v113 = "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v114 = 2114;
    v115 = v79;
    v116 = 2114;
    v117 = v86;
    v92 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v112, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v92);
    if (v92 != buf)
    {
      free(v92);
    }
  }

  v93 = *error;
  if (IntegerAsNumberFromDictionary_key)
  {
    IntegerAsNumberFromDictionary_key = objc_msgSend_integerValue(IntegerAsNumberFromDictionary_key, v89, v90, v91);
  }

  if (BooleanAsNumberFromDictionary_key)
  {
    v94 = objc_msgSend_BOOLValue(BooleanAsNumberFromDictionary_key, v89, v90, v91);
  }

  else
  {
    v94 = 0;
  }

  if (v107)
  {
    v95 = objc_msgSend_integerValue(v107, v89, v90, v91);
  }

  else
  {
    v95 = 0;
  }

  v96 = v108;
  if (v108)
  {
    v96 = objc_msgSend_integerValue(v108, v89, v90, v91);
  }

  if (v93)
  {
    v97 = 7;
  }

  else
  {
    v97 = 19;
  }

  if (v103)
  {
    v98 = v103;
  }

  else
  {
    v98 = @"UnknownGeofenceID";
  }

  if (v12)
  {
    v99 = v12;
  }

  else
  {
    v99 = @"UnknownPartnerID";
  }

  if (v15)
  {
    v100 = v15;
  }

  else
  {
    v100 = @"UnknownPSAPID";
  }

  LOBYTE(v102) = v94;
  return objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_state_feedbackVersion_callRelatedToEmergency_callerResponsive_callTrigger_callReason_respondersDispatched_(self, v89, v79, v100, v99, v98, v86, v97, IntegerAsNumberFromDictionary_key, v102, v110, v95, v96, v109);
}

- (id)getRequestDict
{
  v59 = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = CLEEDFeedbackRequest;
  getRequestDict = [(CLEEDRequest *)&v54 getRequestDict];
  if (getRequestDict)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = objc_msgSend_feedbackVersion(self, v3, v4, v5);
    v11 = objc_msgSend_numberWithInteger_(v7, v9, v8, v10);
    objc_msgSend_setValue_forKey_(getRequestDict, v12, v11, @"feedback_version");
    v13 = MEMORY[0x1E696AD98];
    v17 = objc_msgSend_callRelatedToEmergency(self, v14, v15, v16);
    v20 = objc_msgSend_numberWithBool_(v13, v18, v17, v19);
    objc_msgSend_setValue_forKey_(getRequestDict, v21, v20, @"call_related_to_emergency");
    v25 = objc_msgSend_callerResponsive(self, v22, v23, v24);
    objc_msgSend_setValue_forKey_(getRequestDict, v26, v25, @"caller_responsive");
    v27 = MEMORY[0x1E696AD98];
    v31 = objc_msgSend_callTrigger(self, v28, v29, v30);
    v34 = objc_msgSend_numberWithInteger_(v27, v32, v31, v33);
    objc_msgSend_setValue_forKey_(getRequestDict, v35, v34, @"call_trigger");
    v36 = MEMORY[0x1E696AD98];
    v40 = objc_msgSend_callReason(self, v37, v38, v39);
    v43 = objc_msgSend_numberWithInteger_(v36, v41, v40, v42);
    objc_msgSend_setValue_forKey_(getRequestDict, v44, v43, @"call_reason");
    v48 = objc_msgSend_respondersDispatched(self, v45, v46, v47);
    objc_msgSend_setValue_forKey_(getRequestDict, v49, v48, @"responders_dispatched");
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v50 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v58 = "[CLEEDFeedbackRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil feedbackRequestDict, early return", buf, 0xCu);
    }

    v51 = sub_19B87DD40();
    if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v55 = 136446210;
      v56 = "[CLEEDFeedbackRequest getRequestDict]";
      v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil feedbackRequestDict, early return", &v55, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest getRequestDict]", "CoreLocation: %s\n", v52);
      if (v52 != buf)
      {
        free(v52);
      }
    }
  }

  return getRequestDict;
}

- (CLEEDFeedbackRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  v233 = *MEMORY[0x1E69E9840];
  if (dictionary && error)
  {
    v203 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", error);
    v9 = objc_msgSend_objectForKey_(dictionary, v7, @"partner_ID", v8);
    v12 = objc_msgSend_objectForKey_(dictionary, v10, @"psap_ID", v11);
    v15 = objc_msgSend_objectForKey_(dictionary, v13, @"geofence_ID", v14);
    v204 = objc_msgSend_valueForKey_(dictionary, v16, @"timestamp", v17);
    selfCopy = self;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v18 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
      v221 = 2114;
      v222 = v203;
      v223 = 2114;
      v224 = v9;
      v225 = 2114;
      *v226 = v12;
      *&v226[8] = 2114;
      *v227 = v15;
      *&v227[8] = 2050;
      *v228 = objc_msgSend_integerValue(v204, v19, v20, v21);
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v28 = qword_1EAFE4718;
      v205 = 136447490;
      v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
      v207 = 2114;
      v208 = v203;
      v209 = 2114;
      v210 = v9;
      v211 = 2114;
      *v212 = v12;
      *&v212[8] = 2114;
      *v213 = v15;
      *&v213[8] = 2050;
      *v214 = objc_msgSend_integerValue(v204, v25, v26, v27);
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", &v205, 62);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    v196 = v15;
    v197 = v12;
    v198 = v9;
    errorCopy = error;
    v30 = objc_msgSend_objectForKey_(dictionary, v23, @"request_type", v24);
    v33 = objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v31, v30, v32);
    v36 = objc_msgSend_valueForKey_(dictionary, v34, @"feedback_version", v35);
    v39 = objc_msgSend_valueForKey_(dictionary, v37, @"call_related_to_emergency", v38);
    v202 = objc_msgSend_valueForKey_(dictionary, v40, @"caller_responsive", v41);
    v199 = objc_msgSend_valueForKey_(dictionary, v42, @"call_trigger", v43);
    v200 = objc_msgSend_valueForKey_(dictionary, v44, @"call_reason", v45);
    v201 = objc_msgSend_valueForKey_(dictionary, v46, @"responders_dispatched", v47);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v48 = qword_1EAFE4718;
    if (!os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
LABEL_42:
      v60 = sub_19B87DD40();
      if (*(v60 + 160) <= 1 && *(v60 + 164) <= 1 && *(v60 + 168) <= 1 && !*(v60 + 152))
      {
        goto LABEL_61;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v67 = qword_1EAFE4718;
      if (v36)
      {
        v68 = objc_msgSend_integerValue(v36, v64, v65, v66);
        if (v39)
        {
LABEL_50:
          v69 = objc_msgSend_BOOLValue(v39, v64, v65, v66);
          goto LABEL_53;
        }
      }

      else
      {
        v68 = 0;
        if (v39)
        {
          goto LABEL_50;
        }
      }

      v69 = 0;
LABEL_53:
      if (v202)
      {
        v70 = objc_msgSend_stringValue(v202, v64, v65, v66);
      }

      else
      {
        v70 = @"Unspecified";
      }

      if (v201)
      {
        v71 = objc_msgSend_stringValue(v201, v64, v65, v66);
      }

      else
      {
        v71 = @"Unspecified";
      }

      v205 = 136448258;
      v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
      v207 = 2114;
      v208 = v30;
      v209 = 2050;
      v210 = v33;
      v211 = 1026;
      *v212 = v68;
      *&v212[4] = 1026;
      *&v212[6] = v69;
      *v213 = 2114;
      *&v213[2] = v70;
      *v214 = 2050;
      *&v214[2] = v199;
      v215 = 2050;
      v216 = v200;
      v217 = 2114;
      v218 = v71;
      v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v67, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@", &v205, 84);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v72);
      if (v72 != buf)
      {
        free(v72);
      }

LABEL_61:
      v73 = v203;
      if (!v203 || !v198 || !v197 || !v196 || !v204 || !v33 || !v36 || !v39)
      {
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v74 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
          _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
        }

        v75 = sub_19B87DD40();
        if ((*(v75 + 160) & 0x80000000) == 0 || (*(v75 + 164) & 0x80000000) == 0 || (*(v75 + 168) & 0x80000000) == 0 || *(v75 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v205 = 136446210;
          v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
          v76 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", &v205, 12);
          sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v76);
          if (v76 != buf)
          {
            free(v76);
          }

          v73 = v203;
        }

        *errorCopy = 1;
      }

      if (v73)
      {
        v77 = objc_alloc(MEMORY[0x1E696AFB0]);
        v80 = objc_msgSend_initWithUUIDString_(v77, v78, v73, v79);
      }

      else
      {
        v80 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v61, v62, v63);
      }

      v84 = v80;
      v85 = MEMORY[0x1E695DF00];
      if (v204)
      {
        v86 = objc_msgSend_integerValue(v204, v81, v82, v83);
        v90 = objc_msgSend_dateWithTimeIntervalSince1970_(v85, v87, v88, v89, v86);
      }

      else
      {
        v90 = objc_msgSend_date(MEMORY[0x1E695DF00], v81, v82, v83);
      }

      v91 = v90;
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v92 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
        v221 = 2114;
        v222 = v84;
        v223 = 2114;
        v224 = v91;
        _os_log_impl(&dword_19B873000, v92, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
      }

      v93 = sub_19B87DD40();
      if (*(v93 + 160) > 1 || *(v93 + 164) > 1 || *(v93 + 168) > 1 || *(v93 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v205 = 136446722;
        v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
        v207 = 2114;
        v208 = v84;
        v209 = 2114;
        v210 = v91;
        v96 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v205, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v96);
        if (v96 != buf)
        {
          free(v96);
        }
      }

      if (v197)
      {
        v97 = v197;
      }

      else
      {
        v97 = @"UnknownPSAPID";
      }

      if (v198)
      {
        v98 = v198;
      }

      else
      {
        v98 = @"UnknownPartnerID";
      }

      if (v196)
      {
        v99 = v196;
      }

      else
      {
        v99 = @"UnknownGeofenceID";
      }

      v100 = objc_msgSend_valueForKey_(dictionary, v94, @"EEDRequestState", v95);
      v107 = objc_msgSend_intValue(v100, v101, v102, v103);
      if (v36)
      {
        v108 = objc_msgSend_integerValue(v36, v104, v105, v106);
        if (!v39)
        {
LABEL_112:
          if (v199)
          {
            v109 = objc_msgSend_integerValue(v199, v104, v105, v106);
          }

          else
          {
            v109 = 0;
          }

          v110 = v200;
          if (v200)
          {
            v110 = objc_msgSend_integerValue(v200, v104, v105, v106);
          }

          LOBYTE(v193) = v39;
          v111 = objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_state_feedbackVersion_callRelatedToEmergency_callerResponsive_callTrigger_callReason_respondersDispatched_(selfCopy, v104, v84, v97, v98, v99, v91, v107, v108, v193, v202, v109, v110, v201);
          if (v111)
          {
            v57 = v111;
            v114 = objc_msgSend_objectForKey_(dictionary, v112, @"EEDRequestStatusAtFirstUserResponse", v113);
            v118 = objc_msgSend_integerValue(v114, v115, v116, v117);
            objc_msgSend_setRequestStatusAtFirstUserResponse_(v57, v119, v118, v120);
            v123 = objc_msgSend_objectForKey_(dictionary, v121, @"EEDRequestTransmissionTime", v122);
            v127 = objc_msgSend_integerValue(v123, v124, v125, v126);
            objc_msgSend_setRequestTransmissionTime_(v57, v128, v127, v129);
            v132 = objc_msgSend_valueForKey_(dictionary, v130, @"EEDRequestReceivedTime", v131);
            objc_msgSend_doubleValue(v132, v133, v134, v135);
            objc_msgSend_setRequestReceivedTime_(v57, v136, v137, v138);
            v141 = objc_msgSend_valueForKey_(dictionary, v139, @"EEDReceivedTimeToFirstUserResponse", v140);
            objc_msgSend_doubleValue(v141, v142, v143, v144);
            objc_msgSend_setReceivedTimeToFirstUserResponse_(v57, v145, v146, v147);
            v150 = objc_msgSend_valueForKey_(dictionary, v148, @"EEDReceivedTimeToAcceptTime", v149);
            objc_msgSend_doubleValue(v150, v151, v152, v153);
            objc_msgSend_setReceivedTimeToAcceptTime_(v57, v154, v155, v156);
            v159 = objc_msgSend_objectForKey_(dictionary, v157, @"EEDNumMediaSelectIterations", v158);
            v163 = objc_msgSend_integerValue(v159, v160, v161, v162);
            objc_msgSend_setNumMediaSelectIterations_(v57, v164, v163, v165);
            v168 = objc_msgSend_objectForKey_(dictionary, v166, @"EEDRequestMetricSubmitted", v167);
            v172 = objc_msgSend_BOOLValue(v168, v169, v170, v171);
            objc_msgSend_setMetricSubmitted_(v57, v173, v172, v174);
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
            }

            v175 = qword_1EAFE4718;
            if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
            {
              v179 = objc_msgSend_state(v57, v176, v177, v178);
              v180 = *errorCopy;
              *buf = 136446979;
              v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
              v221 = 2113;
              v222 = v57;
              v223 = 2050;
              v224 = v179;
              v225 = 2050;
              *v226 = v180;
              _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDFeedbackRequest:%{private}@, state:%{public}ld, error:%{public}ld", buf, 0x2Au);
            }

            v181 = sub_19B87DD40();
            if (*(v181 + 160) > 1 || *(v181 + 164) > 1 || *(v181 + 168) > 1 || *(v181 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46E0 != -1)
              {
                dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
              }

              v185 = qword_1EAFE4718;
              v186 = objc_msgSend_state(v57, v182, v183, v184);
              v187 = *errorCopy;
              v205 = 136446979;
              v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
              v207 = 2113;
              v208 = v57;
              v209 = 2050;
              v210 = v186;
              v211 = 2050;
              *v212 = v187;
              v188 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v185, 0, "#EED2FWK,%{public}s, constructed CLEEDFeedbackRequest:%{private}@, state:%{public}ld, error:%{public}ld", &v205, 42);
              sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v188);
              if (v188 != buf)
              {
                free(v188);
              }
            }
          }

          else
          {
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
            }

            v189 = qword_1EAFE4718;
            if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
              _os_log_impl(&dword_19B873000, v189, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil request, early return", buf, 0xCu);
            }

            v190 = sub_19B87DD40();
            if ((*(v190 + 160) & 0x80000000) == 0 || (*(v190 + 164) & 0x80000000) == 0 || (*(v190 + 168) & 0x80000000) == 0 || *(v190 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46E0 != -1)
              {
                dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
              }

              v205 = 136446210;
              v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
              v191 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil request, early return", &v205, 12);
              sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v191);
              if (v191 != buf)
              {
                free(v191);
              }
            }

            v57 = 0;
            *errorCopy = 1;
          }

          return v57;
        }
      }

      else
      {
        v108 = 1;
        if (!v39)
        {
          goto LABEL_112;
        }
      }

      LOBYTE(v39) = objc_msgSend_BOOLValue(v39, v104, v105, v106);
      goto LABEL_112;
    }

    if (v36)
    {
      v52 = objc_msgSend_integerValue(v36, v49, v50, v51);
      if (v39)
      {
LABEL_20:
        v53 = objc_msgSend_BOOLValue(v39, v49, v50, v51);
LABEL_35:
        if (v202)
        {
          v58 = objc_msgSend_stringValue(v202, v49, v50, v51);
        }

        else
        {
          v58 = @"Unspecified";
        }

        if (v201)
        {
          v59 = objc_msgSend_stringValue(v201, v49, v50, v51);
        }

        else
        {
          v59 = @"Unspecified";
        }

        *buf = 136448258;
        v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
        v221 = 2114;
        v222 = v30;
        v223 = 2050;
        v224 = v33;
        v225 = 1026;
        *v226 = v52;
        *&v226[4] = 1026;
        *&v226[6] = v53;
        *v227 = 2114;
        *&v227[2] = v58;
        *v228 = 2050;
        *&v228[2] = v199;
        v229 = 2050;
        v230 = v200;
        v231 = 2114;
        v232 = v59;
        _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, feedbackVersion:%{public}d,callRelatedToEmergency:%{public}d,callerResponsive:%{public}@,callTrigger:%{public}lu,callReason:%{public}lu,respondersDispatched:%{public}@", buf, 0x54u);
        goto LABEL_42;
      }
    }

    else
    {
      v52 = 0;
      if (v39)
      {
        goto LABEL_20;
      }
    }

    v53 = 0;
    goto LABEL_35;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v54 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v220 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
    _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil cached Feedback Dict or CLEEDHelperError, early return", buf, 0xCu);
  }

  v55 = sub_19B87DD40();
  if ((*(v55 + 160) & 0x80000000) == 0 || (*(v55 + 164) & 0x80000000) == 0 || (*(v55 + 168) & 0x80000000) == 0 || *(v55 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v205 = 136446210;
    v206 = "[CLEEDFeedbackRequest initWithDictionary:error:]";
    v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil cached Feedback Dict or CLEEDHelperError, early return", &v205, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDFeedbackRequest initWithDictionary:error:]", "CoreLocation: %s\n", v56);
    if (v56 != buf)
    {
      free(v56);
    }
  }

  v57 = 0;
  *error = 1;
  return v57;
}

- (id)getIntegerAsNumberFromDictionary:(id)dictionary key:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKeyedSubscript_(dictionary, a2, key, key);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v6 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "[CLEEDFeedbackRequest getIntegerAsNumberFromDictionary:key:]";
      v16 = 2114;
      keyCopy = key;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, invalid value received for key:%{public}@", buf, 0x16u);
    }

    v7 = sub_19B87DD40();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v10 = 136446466;
      v11 = "[CLEEDFeedbackRequest getIntegerAsNumberFromDictionary:key:]";
      v12 = 2114;
      keyCopy2 = key;
      v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, invalid value received for key:%{public}@", &v10, 22);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest getIntegerAsNumberFromDictionary:key:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    return 0;
  }

  return v5;
}

- (id)getBooleanAsNumberFromDictionary:(id)dictionary key:(id)key
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKeyedSubscript_(dictionary, a2, key, key);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v14 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]";
      v25 = 2114;
      keyCopy3 = key;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, invalid value received for key:%{public}@", buf, 0x16u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v17 = 136446466;
    v18 = "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]";
    v19 = 2114;
    keyCopy4 = key;
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, invalid value received for key:%{public}@", &v17, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      return 0;
    }

LABEL_26:
    free(v13);
    return 0;
  }

  v9 = objc_msgSend_integerValue(v5, v6, v7, v8);
  if (v9 >= 2)
  {
    v10 = v9;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v24 = "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]";
      v25 = 2114;
      keyCopy3 = key;
      v27 = 2050;
      v28 = v10;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, invalid value received for key:%{public}@ value:%{public}ld", buf, 0x20u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) <= 1 && *(v12 + 164) <= 1 && *(v12 + 168) <= 1 && !*(v12 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v17 = 136446722;
    v18 = "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]";
    v19 = 2114;
    keyCopy4 = key;
    v21 = 2050;
    v22 = v10;
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, invalid value received for key:%{public}@ value:%{public}ld", &v17, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDFeedbackRequest getBooleanAsNumberFromDictionary:key:]", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      return 0;
    }

    goto LABEL_26;
  }

  return v5;
}

@end