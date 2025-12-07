@interface CLEEDRequest
+ (BOOL)validateDerivedSessionSecrets:(id)secrets sharedInfoPrefix:(id)prefix partnerKeyConfirmation:(id)confirmation;
+ (id)createRequestFromCachedDict:(id)dict error:(int64_t *)error;
+ (id)createRequestFromDict:(id)dict baseURL:(id)l sessionID:(id)d partnerAdrPublicKeyData:(id)data deviceSessionPrivateKey:(__SecKey *)key deviceSessionSecret:(id)secret error:(int64_t *)error;
+ (id)getCallIDFromDict:(id)dict;
+ (id)getDecryptedControlRequestData:(id)data sessionID:(id)d partnerAdrPublicKeyData:(id)keyData deviceSessionPrivateKey:(__SecKey *)key deviceSessionSecret:(id)secret combinedSecret:(id *)combinedSecret error:(int64_t *)error;
+ (id)getDecryptedPartnerSessionSecret:(id)secret sessionID:(id)d partnerID:(id)iD partnerAdrPublicKeyData:(id)data deviceSessionPrivateKey:(__SecKey *)key;
+ (id)getDecryptedRequestDict:(id)dict requestID:(id)d combinedSecret:(id)secret sharedInfoPrefix:(id)prefix;
+ (id)getPartnerIDFromDict:(id)dict;
+ (id)getSharedInfoPrefixFromSessionID:(id)d partnerID:(id)iD partnerAdrPublicKeyData:(id)data deviceSessionPrivateKey:(__SecKey *)key;
+ (id)toCLEEDRequestString:(int64_t)string;
+ (id)toEEDControlResponseStatus:(int64_t)status;
+ (int64_t)getSessionStartTimeFromDict:(id)dict;
+ (int64_t)requestTypeFromDict:(id)dict;
+ (int64_t)toCLEEDRequestType:(id)type;
- (CLEEDRequest)initWithCoder:(id)coder;
- (CLEEDRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date requestType:(int64_t)type state:(int64_t)state;
- (id)description;
- (id)getRequestDict;
- (id)getResponseDataDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateDurationInformationForCA:(BOOL)a;
@end

@implementation CLEEDRequest

- (CLEEDRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date requestType:(int64_t)type state:(int64_t)state
{
  v59 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v15 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136448002;
    v44 = "[CLEEDRequest initWithID:psapID:partnerID:geofenceID:requestDate:requestType:state:]";
    v45 = 2114;
    dCopy = d;
    v47 = 2114;
    iDCopy = iD;
    v49 = 2114;
    partnerIDCopy = partnerID;
    v51 = 2114;
    geofenceIDCopy = geofenceID;
    v53 = 2114;
    dateCopy = date;
    v55 = 2050;
    typeCopy = type;
    v57 = 2050;
    stateCopy = state;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", buf, 0x52u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v27 = 136448002;
    v28 = "[CLEEDRequest initWithID:psapID:partnerID:geofenceID:requestDate:requestType:state:]";
    v29 = 2114;
    dCopy2 = d;
    v31 = 2114;
    iDCopy2 = iD;
    v33 = 2114;
    partnerIDCopy2 = partnerID;
    v35 = 2114;
    geofenceIDCopy2 = geofenceID;
    v37 = 2114;
    dateCopy2 = date;
    v39 = 2050;
    typeCopy2 = type;
    v41 = 2050;
    stateCopy2 = state;
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", &v27, 82);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithID:psapID:partnerID:geofenceID:requestDate:requestType:state:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v26.receiver = self;
  v26.super_class = CLEEDRequest;
  v18 = [(CLEEDRequest *)&v26 init];
  if (v18)
  {
    *(v18 + 2) = d;
    *(v18 + 3) = iD;
    *(v18 + 7) = partnerID;
    *(v18 + 8) = geofenceID;
    *(v18 + 4) = date;
    *(v18 + 5) = type;
    *(v18 + 6) = state;
    *(v18 + 72) = xmmword_19BA89410;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v18 + 88) = _Q0;
    *(v18 + 13) = 0xBFF0000000000000;
    *(v18 + 14) = 0;
    v18[8] = 0;
  }

  return v18;
}

- (CLEEDRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", data, l);
  v10 = objc_msgSend_objectForKey_(dictionary, v8, @"partner_ID", v9);
  v13 = objc_msgSend_objectForKey_(dictionary, v11, @"psap_ID", v12);
  v16 = objc_msgSend_objectForKey_(dictionary, v14, @"geofence_ID", v15);
  v19 = objc_msgSend_valueForKey_(dictionary, v17, @"timestamp", v18);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v20 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v72 = "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v73 = 2114;
    v74 = v7;
    v75 = 2114;
    v76 = v10;
    v77 = 2114;
    v78 = v13;
    v79 = 2114;
    v80 = v16;
    v81 = 2050;
    v82 = objc_msgSend_integerValue(v19, v21, v22, v23);
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v31 = qword_1EAFE4718;
    v59 = 136447490;
    v60 = "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v61 = 2114;
    v62 = v7;
    v63 = 2114;
    v64 = v10;
    v65 = 2114;
    v66 = v13;
    v67 = 2114;
    v68 = v16;
    v69 = 2050;
    v70 = objc_msgSend_integerValue(v19, v28, v29, v30);
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v31, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", &v59, 62);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  if (v7)
  {
    v33 = objc_alloc(MEMORY[0x1E696AFB0]);
    v36 = objc_msgSend_initWithUUIDString_(v33, v34, v7, v35);
  }

  else
  {
    v36 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v25, v26, v27);
  }

  v40 = v36;
  v41 = MEMORY[0x1E695DF00];
  if (v19)
  {
    v42 = objc_msgSend_integerValue(v19, v37, v38, v39);
    v46 = objc_msgSend_dateWithTimeIntervalSince1970_(v41, v43, v44, v45, v42);
  }

  else
  {
    v46 = objc_msgSend_date(MEMORY[0x1E695DF00], v37, v38, v39);
  }

  v47 = v46;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v48 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v72 = "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v73 = 2114;
    v74 = v40;
    v75 = 2114;
    v76 = v47;
    _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v49 = sub_19B87DD40();
  if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446722;
    v60 = "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v61 = 2114;
    v62 = v40;
    v63 = 2114;
    v64 = v47;
    v51 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v59, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }
  }

  if (v13)
  {
    v52 = v13;
  }

  else
  {
    v52 = @"UnknownPSAPID";
  }

  if (v10)
  {
    v53 = v10;
  }

  else
  {
    v53 = @"UnknownPartnerID";
  }

  if (v16)
  {
    v54 = v16;
  }

  else
  {
    v54 = @"UnknownGeofenceID";
  }

  v55 = 7;
  if (*error == 9)
  {
    v55 = 8;
  }

  return objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_requestType_state_(self, v50, v40, v52, v53, v54, v47, 0, v55);
}

- (CLEEDRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  v8 = objc_msgSend_objectForKey_(dictionary, a2, @"EEDRequestBaseURL", error);

  return objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(self, v7, dictionary, 0, v8, error);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDRequest;
  [(CLEEDRequest *)&v3 dealloc];
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_ID(self, a2, v2, v3);
  v10 = objc_msgSend_UUIDString(v6, v7, v8, v9);
  v14 = objc_msgSend_psapID(self, v11, v12, v13);
  v18 = objc_msgSend_partnerID(self, v15, v16, v17);
  v22 = objc_msgSend_geofenceID(self, v19, v20, v21);
  v26 = objc_msgSend_requestDate(self, v23, v24, v25);
  v30 = objc_msgSend_type(self, v27, v28, v29);
  v34 = objc_msgSend_state(self, v31, v32, v33);
  return objc_msgSend_stringWithFormat_(v5, v35, @"<CLEEDRequest: ID, %@, psapID, %@, partnerID, %@, geofenceID, %@, requestDate, %@, type, %lu, state, %lu>", v36, v10, v14, v18, v22, v26, v30, v34);
}

- (void)encodeWithCoder:(id)coder
{
  v61 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    ID = self->_ID;
    psapID = self->_psapID;
    partnerID = self->_partnerID;
    geofenceID = self->_geofenceID;
    requestDate = self->_requestDate;
    type = self->_type;
    state = self->_state;
    *buf = 136448002;
    v46 = "[CLEEDRequest encodeWithCoder:]";
    v47 = 2114;
    v48 = ID;
    v49 = 2114;
    v50 = psapID;
    v51 = 2114;
    v52 = partnerID;
    v53 = 2114;
    v54 = geofenceID;
    v55 = 2114;
    v56 = requestDate;
    v57 = 2050;
    v58 = type;
    v59 = 2050;
    v60 = state;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", buf, 0x52u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v15 = self->_ID;
    v16 = self->_psapID;
    v18 = self->_partnerID;
    v17 = self->_geofenceID;
    v19 = self->_requestDate;
    v20 = self->_type;
    v21 = self->_state;
    v29 = 136448002;
    v30 = "[CLEEDRequest encodeWithCoder:]";
    v31 = 2114;
    v32 = v15;
    v33 = 2114;
    v34 = v16;
    v35 = 2114;
    v36 = v18;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = v19;
    v41 = 2050;
    v42 = v20;
    v43 = 2050;
    v44 = v21;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", &v29, 82);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest encodeWithCoder:]", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v14, self->_ID, @"ID");
  objc_msgSend_encodeObject_forKey_(coder, v23, self->_psapID, @"psapID");
  objc_msgSend_encodeObject_forKey_(coder, v24, self->_partnerID, @"partnerID");
  objc_msgSend_encodeObject_forKey_(coder, v25, self->_geofenceID, @"geofenceID");
  objc_msgSend_encodeObject_forKey_(coder, v26, self->_requestDate, @"requestDate");
  objc_msgSend_encodeInteger_forKey_(coder, v27, self->_type, @"type");
  objc_msgSend_encodeInteger_forKey_(coder, v28, self->_state, @"state");
}

- (CLEEDRequest)initWithCoder:(id)coder
{
  v70 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CLEEDRequest;
  v4 = [(CLEEDRequest *)&v37 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_ID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"ID");
    v7 = objc_opt_class();
    v4->_psapID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"psapID");
    v9 = objc_opt_class();
    v4->_partnerID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"partnerID");
    v11 = objc_opt_class();
    v4->_geofenceID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"geofenceID");
    v13 = objc_opt_class();
    v4->_requestDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"requestDate");
    v4->_type = objc_msgSend_decodeIntegerForKey_(coder, v15, @"type", v16);
    v4->_state = objc_msgSend_decodeIntegerForKey_(coder, v17, @"state", v18);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v19 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
    {
      ID = v4->_ID;
      psapID = v4->_psapID;
      partnerID = v4->_partnerID;
      geofenceID = v4->_geofenceID;
      requestDate = v4->_requestDate;
      type = v4->_type;
      state = v4->_state;
      *buf = 136448002;
      v55 = "[CLEEDRequest initWithCoder:]";
      v56 = 2114;
      v57 = ID;
      v58 = 2114;
      v59 = psapID;
      v60 = 2114;
      v61 = partnerID;
      v62 = 2114;
      v63 = geofenceID;
      v64 = 2114;
      v65 = requestDate;
      v66 = 2050;
      v67 = type;
      v68 = 2050;
      v69 = state;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", buf, 0x52u);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v28 = v4->_ID;
      v29 = v4->_psapID;
      v31 = v4->_partnerID;
      v30 = v4->_geofenceID;
      v32 = v4->_requestDate;
      v33 = v4->_type;
      v34 = v4->_state;
      v38 = 136448002;
      v39 = "[CLEEDRequest initWithCoder:]";
      v40 = 2114;
      v41 = v28;
      v42 = 2114;
      v43 = v29;
      v44 = 2114;
      v45 = v31;
      v46 = 2114;
      v47 = v30;
      v48 = 2114;
      v49 = v32;
      v50 = 2050;
      v51 = v33;
      v52 = 2050;
      v53 = v34;
      v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,type:%{public}lu,state:%{public}lu]", &v38, 82);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest initWithCoder:]", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  return v4;
}

+ (id)getDecryptedControlRequestData:(id)data sessionID:(id)d partnerAdrPublicKeyData:(id)keyData deviceSessionPrivateKey:(__SecKey *)key deviceSessionSecret:(id)secret combinedSecret:(id *)combinedSecret error:(int64_t *)error
{
  v137 = *MEMORY[0x1E69E9840];
  if (!data || !d || !keyData || !key || !secret || !combinedSecret)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v81 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v122 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v81, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v82 = sub_19B87DD40();
    if ((*(v82 + 160) & 0x80000000) != 0 && (*(v82 + 164) & 0x80000000) != 0 && (*(v82 + 168) & 0x80000000) != 0 && !*(v82 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v105 = 136446210;
    v106 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
    v83 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v105, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v83);
    if (v83 == buf)
    {
      return 0;
    }

    v84 = v83;
    goto LABEL_29;
  }

  v14 = objc_msgSend_valueForKey_(data, a2, @"call_ID", d);
  v17 = objc_msgSend_valueForKey_(data, v15, @"session_start_time", v16);
  v102 = objc_msgSend_intValue(v17, v18, v19, v20);
  v23 = objc_msgSend_valueForKey_(data, v21, @"partner_ID", v22);
  v24 = objc_alloc(MEMORY[0x1E695DEF0]);
  v27 = objc_msgSend_valueForKey_(data, v25, @"partner_session_secret", v26);
  v104 = objc_msgSend_initWithBase64EncodedString_options_(v24, v28, v27, 0);
  v29 = objc_alloc(MEMORY[0x1E695DEF0]);
  v32 = objc_msgSend_valueForKey_(data, v30, @"partner_key_confirmation", v31);
  v34 = objc_msgSend_initWithBase64EncodedString_options_(v29, v33, v32, 0);
  v37 = objc_msgSend_valueForKey_(data, v35, @"request_ID", v36);
  v38 = objc_alloc(MEMORY[0x1E695DEF0]);
  v41 = objc_msgSend_valueForKey_(data, v39, @"request", v40);
  v42 = v38;
  v43 = v23;
  v44 = v34;
  v46 = objc_msgSend_initWithBase64EncodedString_options_(v42, v45, v41, 0);
  v47 = v46;
  v48 = v102;
  v49 = v14;
  if (!v14 || !v104 || !v44 || !v37 || !v46 || !v43 || v102 <= 0)
  {
    v85 = v46;
    v86 = v43;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      v48 = v102;
    }

    v87 = v48;
    v88 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448003;
      v122 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      v123 = 2113;
      v124 = v49;
      v125 = 2050;
      v126 = v87;
      v127 = 2113;
      v128 = v104;
      v129 = 2113;
      v130 = v44;
      v131 = 2113;
      v132 = v37;
      v133 = 2113;
      v134 = v85;
      v135 = 2114;
      v136 = v86;
      _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,receivedPhoneNumber:%{private}@, receivedSessionStartTime:%{public}lld, encryptedPartnerSessionSecret:%{private}@, partnerKeyConfirmation:%{private}@,requestID:%{private}@,encryptedRequestData:%{private}@,partnerID:%{public}@", buf, 0x52u);
    }

    v89 = sub_19B87DD40();
    if (*(v89 + 160) > 1 || *(v89 + 164) > 1 || *(v89 + 168) > 1 || *(v89 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v105 = 136448003;
      v106 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      v107 = 2113;
      v108 = v49;
      v109 = 2050;
      v110 = v87;
      v111 = 2113;
      v112 = v104;
      v113 = 2113;
      v114 = v44;
      v115 = 2113;
      v116 = v37;
      v117 = 2113;
      v118 = v85;
      v119 = 2114;
      v120 = v86;
      v90 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,receivedPhoneNumber:%{private}@, receivedSessionStartTime:%{public}lld, encryptedPartnerSessionSecret:%{private}@, partnerKeyConfirmation:%{private}@,requestID:%{private}@,encryptedRequestData:%{private}@,partnerID:%{public}@", &v105, 82);
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v90);
      if (v90 != buf)
      {
        free(v90);
      }
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v91 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v122 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of received data is nil,early return", buf, 0xCu);
    }

    v92 = sub_19B87DD40();
    if ((*(v92 + 160) & 0x80000000) == 0 || (*(v92 + 164) & 0x80000000) == 0 || (*(v92 + 168) & 0x80000000) == 0 || *(v92 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v105 = 136446210;
      v106 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      v93 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of received data is nil,early return", &v105, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v93);
      if (v93 != buf)
      {
        free(v93);
      }
    }

    result = 0;
    v80 = 1;
    goto LABEL_55;
  }

  v103 = v44;
  v100 = v37;
  v50 = objc_opt_class();
  DecryptedPartnerSessionSecret_sessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey = objc_msgSend_getDecryptedPartnerSessionSecret_sessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey_(v50, v51, v104, d, v43, keyData, key);
  if (!DecryptedPartnerSessionSecret_sessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v94 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v122 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil partnerSessionSecret,early return", buf, 0xCu);
    }

    v95 = sub_19B87DD40();
    if ((*(v95 + 160) & 0x80000000) != 0 && (*(v95 + 164) & 0x80000000) != 0 && (*(v95 + 168) & 0x80000000) != 0 && !*(v95 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v105 = 136446210;
    v106 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
    v96 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil partnerSessionSecret,early return", &v105, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v96);
    if (v96 == buf)
    {
      return 0;
    }

    v84 = v96;
LABEL_29:
    free(v84);
    return 0;
  }

  v56 = DecryptedPartnerSessionSecret_sessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey;
  v57 = v47;
  v58 = v43;
  v59 = MEMORY[0x1E695DF88];
  v60 = objc_msgSend_length(secret, v53, v54, v55);
  v64 = objc_msgSend_length(v56, v61, v62, v63);
  v67 = objc_msgSend_dataWithCapacity_(v59, v65, v64 + v60, v66);
  objc_msgSend_appendData_(v67, v68, secret, v69);
  objc_msgSend_appendData_(v67, v70, v56, v71);
  *combinedSecret = v67;
  v72 = objc_opt_class();
  SharedInfoPrefixFromSessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey = objc_msgSend_getSharedInfoPrefixFromSessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey_(v72, v73, d, v58, keyData, key);
  v75 = objc_opt_class();
  if (objc_msgSend_validateDerivedSessionSecrets_sharedInfoPrefix_partnerKeyConfirmation_(v75, v76, v67, SharedInfoPrefixFromSessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey, v103))
  {
    v77 = objc_opt_class();
    result = objc_msgSend_getDecryptedRequestDict_requestID_combinedSecret_sharedInfoPrefix_(v77, v78, v57, v100, v67, SharedInfoPrefixFromSessionID_partnerID_partnerAdrPublicKeyData_deviceSessionPrivateKey);
    if (!result)
    {
      v80 = 9;
LABEL_55:
      *error = v80;
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v97 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v122 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,validateDerivedSessionSecrets failed, reject request", buf, 0xCu);
    }

    v98 = sub_19B87DD40();
    if ((*(v98 + 160) & 0x80000000) == 0 || (*(v98 + 164) & 0x80000000) == 0 || (*(v98 + 168) & 0x80000000) == 0 || *(v98 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v105 = 136446210;
      v106 = "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]";
      v99 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,validateDerivedSessionSecrets failed, reject request", &v105, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedControlRequestData:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:combinedSecret:error:]", "CoreLocation: %s\n", v99);
      if (v99 != buf)
      {
        free(v99);
      }
    }

    result = 0;
    *error = 9;
  }

  return result;
}

+ (int64_t)requestTypeFromDict:(id)dict
{
  v5 = objc_msgSend_objectForKey_(dict, a2, @"request_type", v3);

  return objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v4, v5, v6);
}

+ (int64_t)toCLEEDRequestType:(id)type
{
  v29 = *MEMORY[0x1E69E9840];
  if (type)
  {
    if (objc_msgSend_isEqualToString_(type, a2, @"video_streaming", v3))
    {
      v7 = 1;
    }

    else if (objc_msgSend_isEqualToString_(type, v5, @"media_upload", v6))
    {
      v7 = 2;
    }

    else if (objc_msgSend_isEqualToString_(type, v11, @"psap_feedback", v12))
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v24 = "+[CLEEDRequest toCLEEDRequestType:]";
      v25 = 2114;
      typeCopy = type;
      v27 = 2050;
      v28 = v7;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v17 = 136446722;
      v18 = "+[CLEEDRequest toCLEEDRequestType:]";
      v19 = 2114;
      typeCopy2 = type;
      v21 = 2050;
      v22 = v7;
      v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld", &v17, 32);
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest toCLEEDRequestType:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,toCLEEDRequestType,nil requestTypeString", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      LOWORD(v17) = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,toCLEEDRequestType,nil requestTypeString", &v17, 2);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest toCLEEDRequestType:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    return 0;
  }

  return v7;
}

+ (id)toCLEEDRequestString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"unknownRequest";
  }

  else
  {
    return *(&off_1E753D4C0 + string - 1);
  }
}

+ (id)createRequestFromDict:(id)dict baseURL:(id)l sessionID:(id)d partnerAdrPublicKeyData:(id)data deviceSessionPrivateKey:(__SecKey *)key deviceSessionSecret:(id)secret error:(int64_t *)error
{
  v132 = *MEMORY[0x1E69E9840];
  if (!dict)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v46 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, empty message, early return", buf, 0xCu);
    }

    v47 = sub_19B87DD40();
    if ((*(v47 + 160) & 0x80000000) != 0 && (*(v47 + 164) & 0x80000000) != 0 && (*(v47 + 168) & 0x80000000) != 0 && !*(v47 + 152))
    {
      goto LABEL_57;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v120 = 136446210;
    v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, empty message, early return", &v120, 12);
LABEL_54:
    v48 = v45;
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v45);
    if (v48 == buf)
    {
LABEL_57:
      v25 = 0;
      *error = 1;
      return v25;
    }

    v49 = v48;
LABEL_56:
    free(v49);
    goto LABEL_57;
  }

  if (!l || !objc_msgSend_length(l, a2, dict, l))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v43 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "#EED2,%{public}s, nil or empty base URL, early return", buf, 0xCu);
    }

    v44 = sub_19B87DD40();
    if ((*(v44 + 160) & 0x80000000) != 0 && (*(v44 + 164) & 0x80000000) != 0 && (*(v44 + 168) & 0x80000000) != 0 && !*(v44 + 152))
    {
      goto LABEL_57;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v120 = 136446210;
    v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2,%{public}s, nil or empty base URL, early return", &v120, 12);
    goto LABEL_54;
  }

  if (!data || !key || !secret)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v51 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_ERROR, "#EED2,%{public}s, nil partnerAdrPublicKeyData or  deviceSessionPrivateKey or deviceSessionSecret, early return", buf, 0xCu);
    }

    v52 = sub_19B87DD40();
    if ((*(v52 + 160) & 0x80000000) != 0 && (*(v52 + 164) & 0x80000000) != 0 && (*(v52 + 168) & 0x80000000) != 0 && !*(v52 + 152))
    {
      goto LABEL_57;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v120 = 136446210;
    v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2,%{public}s, nil partnerAdrPublicKeyData or  deviceSessionPrivateKey or deviceSessionSecret, early return", &v120, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v53);
    if (v53 == buf)
    {
      goto LABEL_57;
    }

    v49 = v53;
    goto LABEL_56;
  }

  v119 = 0;
  v15 = objc_opt_class();
  DecryptedControlRequestData_sessionID_partnerAdrPublicKeyData_deviceSessionPrivateKey_deviceSessionSecret_combinedSecret_error = objc_msgSend_getDecryptedControlRequestData_sessionID_partnerAdrPublicKeyData_deviceSessionPrivateKey_deviceSessionSecret_combinedSecret_error_(v15, v16, dict, d, data, key, secret, &v119, error);
  if (!DecryptedControlRequestData_sessionID_partnerAdrPublicKeyData_deviceSessionPrivateKey_deviceSessionSecret_combinedSecret_error)
  {
    *error = 9;
    v54 = [CLEEDRequest alloc];
    v25 = objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(v54, v55, dict, 0, l, error);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v56 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *error;
      *buf = 136446722;
      v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v128 = 2114;
      v129 = v25;
      v130 = 2050;
      v131 = v57;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, decryptedRequestData nil, constructed CLEEDRequest:%{public}@, error:%{public}ld", buf, 0x20u);
    }

    v58 = sub_19B87DD40();
    if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v59 = *error;
      v120 = 136446722;
      v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v122 = 2114;
      v123 = v25;
      v124 = 2050;
      v125 = v59;
      v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, decryptedRequestData nil, constructed CLEEDRequest:%{public}@, error:%{public}ld", &v120, 32);
      goto LABEL_156;
    }

    return v25;
  }

  v18 = DecryptedControlRequestData_sessionID_partnerAdrPublicKeyData_deviceSessionPrivateKey_deviceSessionSecret_combinedSecret_error;
  v19 = objc_opt_class();
  v22 = objc_msgSend_requestTypeFromDict_(v19, v20, v18, v21);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v98 = [CLEEDUploadRequest alloc];
      v100 = objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(v98, v99, dict, v18, l, error);
      v25 = v100;
      if (v100)
      {
        objc_msgSend_setCombinedSecret_(v100, v101, v119, v102);
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v103 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v107 = objc_msgSend_uploadURL(v25, v104, v105, v106);
        *buf = 136446466;
        v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v128 = 2114;
        v129 = v107;
        _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, uploadURL is: %{public}@", buf, 0x16u);
      }

      v108 = sub_19B87DD40();
      if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v112 = qword_1EAFE4718;
        v113 = objc_msgSend_uploadURL(v25, v109, v110, v111);
        v120 = 136446466;
        v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v122 = 2114;
        v123 = v113;
        v114 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v112, 0, "#EED2FWK,%{public}s, uploadURL is: %{public}@", &v120, 22);
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v114);
        if (v114 != buf)
        {
          free(v114);
        }
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v115 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v116 = *error;
        *buf = 136446723;
        v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v128 = 2113;
        v129 = v25;
        v130 = 2050;
        v131 = v116;
        _os_log_impl(&dword_19B873000, v115, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeMediaUpload:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v117 = sub_19B87DD40();
      if (*(v117 + 160) > 1 || *(v117 + 164) > 1 || *(v117 + 168) > 1 || *(v117 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v118 = *error;
        v120 = 136446723;
        v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v122 = 2113;
        v123 = v25;
        v124 = 2050;
        v125 = v118;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeMediaUpload:%{private}@, error:%{public}ld", &v120, 32);
        goto LABEL_156;
      }

      return v25;
    }

    if (v22 == 3)
    {
      v60 = [CLEEDFeedbackRequest alloc];
      v25 = objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(v60, v61, dict, v18, l, error);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v62 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v66 = objc_msgSend_callRelatedToEmergency(v25, v63, v64, v65);
        *buf = 136446466;
        v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v128 = 1026;
        LODWORD(v129) = v66;
        _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, callRelatedToEmergency: %{public}d", buf, 0x12u);
      }

      v67 = sub_19B87DD40();
      if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v71 = qword_1EAFE4718;
        v72 = objc_msgSend_callRelatedToEmergency(v25, v68, v69, v70);
        v120 = 136446466;
        v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v122 = 1026;
        LODWORD(v123) = v72;
        v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v71, 0, "#EED2FWK,%{public}s, callRelatedToEmergency: %{public}d", &v120, 18);
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v73);
        if (v73 != buf)
        {
          free(v73);
        }
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v74 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v75 = *error;
        *buf = 136446723;
        v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v128 = 2113;
        v129 = v25;
        v130 = 2050;
        v131 = v75;
        _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeFeedbackCollection:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v76 = sub_19B87DD40();
      if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v77 = *error;
        v120 = 136446723;
        v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v122 = 2113;
        v123 = v25;
        v124 = 2050;
        v125 = v77;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeFeedbackCollection:%{private}@, error:%{public}ld", &v120, 32);
        goto LABEL_156;
      }

      return v25;
    }

    goto LABEL_110;
  }

  if (v22)
  {
    if (v22 == 1)
    {
      v23 = [CLEEDStreamingRequest alloc];
      v25 = objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(v23, v24, dict, v18, l, error);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v26 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_msgSend_streamingURL(v25, v27, v28, v29);
        *buf = 136446466;
        v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v128 = 2114;
        v129 = v30;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, streamingURL is: %{public}@", buf, 0x16u);
      }

      v31 = sub_19B87DD40();
      if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v35 = qword_1EAFE4718;
        v36 = objc_msgSend_streamingURL(v25, v32, v33, v34);
        v120 = 136446466;
        v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v122 = 2114;
        v123 = v36;
        v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v35, 0, "#EED2FWK,%{public}s, streamingURL is: %{public}@", &v120, 22);
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v38 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *error;
        *buf = 136446722;
        v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v128 = 2114;
        v129 = v25;
        v130 = 2050;
        v131 = v39;
        _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeStreaming:%{public}@, error:%{public}ld", buf, 0x20u);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v41 = *error;
        v120 = 136446722;
        v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
        v122 = 2114;
        v123 = v25;
        v124 = 2050;
        v125 = v41;
        v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, constructed CLEEDRequestTypeStreaming:%{public}@, error:%{public}ld", &v120, 32);
LABEL_156:
        v91 = v42;
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n");
LABEL_157:
        if (v91 != buf)
        {
          free(v91);
        }

        return v25;
      }

      return v25;
    }

LABEL_110:
    *error = 1;
    v78 = [CLEEDRequest alloc];
    v25 = objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(v78, v79, dict, v18, l, error);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v80 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      v81 = objc_opt_class();
      v84 = objc_msgSend_requestTypeFromDict_(v81, v82, dict, v83);
      *buf = 136446466;
      v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v128 = 2050;
      v129 = v84;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,not handling the request type %{public}ld", buf, 0x16u);
    }

    v85 = sub_19B87DD40();
    if ((*(v85 + 160) & 0x80000000) == 0 || (*(v85 + 164) & 0x80000000) == 0 || (*(v85 + 168) & 0x80000000) == 0 || *(v85 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v86 = qword_1EAFE4718;
      v87 = objc_opt_class();
      v90 = objc_msgSend_requestTypeFromDict_(v87, v88, dict, v89);
      v120 = 136446466;
      v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
      v122 = 2050;
      v123 = v90;
      v91 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v86, 16, "#EED2FWK,%{public}s,not handling the request type %{public}ld", &v120, 22);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]", "CoreLocation: %s\n");
      goto LABEL_157;
    }

    return v25;
  }

  *error = 1;
  v92 = [CLEEDRequest alloc];
  v25 = objc_msgSend_initWithDictionary_decryptedRequestData_baseURL_error_(v92, v93, dict, v18, l, error);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v94 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v95 = *error;
    *buf = 136446722;
    v127 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v128 = 2114;
    v129 = v25;
    v130 = 2050;
    v131 = v95;
    _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDRequest:%{public}@, error:%{public}ld", buf, 0x20u);
  }

  v96 = sub_19B87DD40();
  if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v97 = *error;
    v120 = 136446722;
    v121 = "+[CLEEDRequest createRequestFromDict:baseURL:sessionID:partnerAdrPublicKeyData:deviceSessionPrivateKey:deviceSessionSecret:error:]";
    v122 = 2114;
    v123 = v25;
    v124 = 2050;
    v125 = v97;
    v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, constructed CLEEDRequest:%{public}@, error:%{public}ld", &v120, 32);
    goto LABEL_156;
  }

  return v25;
}

- (id)getRequestDict
{
  v131 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_ID(self, v5, v6, v7);
    v13 = objc_msgSend_UUIDString(v9, v10, v11, v12);
    objc_msgSend_setObject_forKey_(v8, v14, v13, @"request_ID");
    v18 = objc_msgSend_psapID(self, v15, v16, v17);
    objc_msgSend_setObject_forKey_(v8, v19, v18, @"psap_ID");
    v20 = MEMORY[0x1E696AEC0];
    v24 = objc_msgSend_requestDate(self, v21, v22, v23);
    objc_msgSend_timeIntervalSince1970(v24, v25, v26, v27);
    v31 = objc_msgSend_stringWithFormat_(v20, v28, @"%f", v29, v30);
    objc_msgSend_setObject_forKey_(v8, v32, v31, @"timestamp");
    v36 = objc_msgSend_partnerID(self, v33, v34, v35);
    objc_msgSend_setObject_forKey_(v8, v37, v36, @"partner_ID");
    v41 = objc_msgSend_geofenceID(self, v38, v39, v40);
    objc_msgSend_setObject_forKey_(v8, v42, v41, @"geofence_ID");
    v46 = objc_msgSend_type(self, v43, v44, v45);
    v49 = objc_msgSend_toCLEEDRequestString_(CLEEDRequest, v47, v46, v48);
    objc_msgSend_setObject_forKey_(v8, v50, v49, @"request_type");
    v51 = MEMORY[0x1E696AD98];
    v55 = objc_msgSend_state(self, v52, v53, v54);
    v58 = objc_msgSend_numberWithInteger_(v51, v56, v55, v57);
    objc_msgSend_setObject_forKey_(v8, v59, v58, @"EEDRequestState");
    v60 = MEMORY[0x1E696AD98];
    UserResponse = objc_msgSend_requestStatusAtFirstUserResponse(self, v61, v62, v63);
    v67 = objc_msgSend_numberWithInteger_(v60, v65, UserResponse, v66);
    objc_msgSend_setObject_forKey_(v8, v68, v67, @"EEDRequestStatusAtFirstUserResponse");
    v69 = MEMORY[0x1E696AD98];
    v73 = objc_msgSend_requestTransmissionTime(self, v70, v71, v72);
    v76 = objc_msgSend_numberWithInteger_(v69, v74, v73, v75);
    objc_msgSend_setObject_forKey_(v8, v77, v76, @"EEDRequestTransmissionTime");
    v78 = MEMORY[0x1E696AD98];
    objc_msgSend_requestReceivedTime(self, v79, v80, v81);
    v85 = objc_msgSend_numberWithDouble_(v78, v82, v83, v84);
    objc_msgSend_setObject_forKey_(v8, v86, v85, @"EEDRequestReceivedTime");
    v87 = MEMORY[0x1E696AD98];
    objc_msgSend_receivedTimeToFirstUserResponse(self, v88, v89, v90);
    v94 = objc_msgSend_numberWithDouble_(v87, v91, v92, v93);
    objc_msgSend_setObject_forKey_(v8, v95, v94, @"EEDReceivedTimeToFirstUserResponse");
    v96 = MEMORY[0x1E696AD98];
    objc_msgSend_receivedTimeToAcceptTime(self, v97, v98, v99);
    v103 = objc_msgSend_numberWithDouble_(v96, v100, v101, v102);
    objc_msgSend_setObject_forKey_(v8, v104, v103, @"EEDReceivedTimeToAcceptTime");
    v105 = MEMORY[0x1E696AD98];
    v109 = objc_msgSend_numMediaSelectIterations(self, v106, v107, v108);
    v112 = objc_msgSend_numberWithInteger_(v105, v110, v109, v111);
    objc_msgSend_setObject_forKey_(v8, v113, v112, @"EEDNumMediaSelectIterations");
    v114 = MEMORY[0x1E696AD98];
    v118 = objc_msgSend_metricSubmitted(self, v115, v116, v117);
    v121 = objc_msgSend_numberWithBool_(v114, v119, v118, v120);
    objc_msgSend_setObject_forKey_(v8, v122, v121, @"EEDRequestMetricSubmitted");
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v123 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v130 = "[CLEEDRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v123, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil requestDict, early return", buf, 0xCu);
    }

    v124 = sub_19B87DD40();
    if ((*(v124 + 160) & 0x80000000) == 0 || (*(v124 + 164) & 0x80000000) == 0 || (*(v124 + 168) & 0x80000000) == 0 || *(v124 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v127 = 136446210;
      v128 = "[CLEEDRequest getRequestDict]";
      v125 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil requestDict, early return", &v127, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDRequest getRequestDict]", "CoreLocation: %s\n", v125);
      if (v125 != buf)
      {
        free(v125);
      }
    }
  }

  return v8;
}

+ (id)createRequestFromCachedDict:(id)dict error:(int64_t *)error
{
  v50 = *MEMORY[0x1E69E9840];
  if (dict)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_requestTypeFromDict_(v6, v7, dict, v8);
    if (v9 == 2)
    {
      v25 = [CLEEDUploadRequest alloc];
      v17 = objc_msgSend_initWithDictionary_error_(v25, v26, dict, error);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v27 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *error;
        *buf = 136446723;
        v45 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
        v46 = 2113;
        v47 = v17;
        v48 = 2050;
        v49 = v28;
        _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,constructed CLEEDRequestTypeMediaUpload:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v29 = sub_19B87DD40();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v30 = *error;
        v38 = 136446723;
        v39 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
        v40 = 2113;
        v41 = v17;
        v42 = 2050;
        v43 = v30;
        v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,constructed CLEEDRequestTypeMediaUpload:%{private}@, error:%{public}ld", &v38, 32);
        goto LABEL_51;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (v9)
        {
          *error = 1;
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v32 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v45 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
            _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,unhandled request type, this should never happen", buf, 0xCu);
          }

          v33 = sub_19B87DD40();
          if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
          {
            goto LABEL_65;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v38 = 136446210;
          v39 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
          v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,unhandled request type, this should never happen", &v38, 12);
          sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v34);
          if (v34 == buf)
          {
            goto LABEL_65;
          }

          v13 = v34;
        }

        else
        {
          *error = 1;
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v10 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v45 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
            _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,CLEEDRequestTypeUnknown, this should never happen", buf, 0xCu);
          }

          v11 = sub_19B87DD40();
          if (*(v11 + 160) <= 1 && *(v11 + 164) <= 1 && *(v11 + 168) <= 1 && !*(v11 + 152))
          {
            goto LABEL_65;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v38 = 136446210;
          v39 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
          v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,CLEEDRequestTypeUnknown, this should never happen", &v38, 12);
          sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v12);
          if (v12 == buf)
          {
            goto LABEL_65;
          }

          v13 = v12;
        }

        free(v13);
LABEL_65:
        v35 = [CLEEDRequest alloc];
        return objc_msgSend_initWithDictionary_error_(v35, v36, dict, error);
      }

      v18 = [CLEEDStreamingRequest alloc];
      v17 = objc_msgSend_initWithDictionary_error_(v18, v19, dict, error);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v20 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *error;
        *buf = 136446723;
        v45 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
        v46 = 2113;
        v47 = v17;
        v48 = 2050;
        v49 = v21;
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,constructed CLEEDRequestTypeStreaming:%{private}@, error:%{public}ld", buf, 0x20u);
      }

      v22 = sub_19B87DD40();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v23 = *error;
        v38 = 136446723;
        v39 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
        v40 = 2113;
        v41 = v17;
        v42 = 2050;
        v43 = v23;
        v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,constructed CLEEDRequestTypeStreaming:%{private}@, error:%{public}ld", &v38, 32);
LABEL_51:
        v31 = v24;
        sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v24);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v14 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v45 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, empty message, early return", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v38 = 136446210;
      v39 = "+[CLEEDRequest createRequestFromCachedDict:error:]";
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, empty message, early return", &v38, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest createRequestFromCachedDict:error:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = 0;
    *error = 1;
  }

  return v17;
}

+ (id)toEEDControlResponseStatus:(int64_t)status
{
  v16 = *MEMORY[0x1E69E9840];
  if ((status - 1) > 0x12)
  {
    v3 = @"UnknownError";
  }

  else
  {
    v3 = *(&off_1E753D4D8 + status - 1);
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "+[CLEEDRequest toEEDControlResponseStatus:]";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,responseStatus:%{public}@", buf, 0x16u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = 136446466;
    v9 = "+[CLEEDRequest toEEDControlResponseStatus:]";
    v10 = 2114;
    v11 = v3;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,responseStatus:%{public}@", &v8, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest toEEDControlResponseStatus:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return v3;
}

- (id)getResponseDataDictionary
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"request_ID";
  v5 = objc_msgSend_ID(self, a2, v2, v3);
  v17[1] = @"request_status";
  v18[0] = objc_msgSend_UUIDString(v5, v6, v7, v8);
  v12 = objc_msgSend_state(self, v9, v10, v11);
  v18[1] = objc_msgSend_toEEDControlResponseStatus_(CLEEDRequest, v13, v12, v14);
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v18, v17, 2);
}

+ (id)getPartnerIDFromDict:(id)dict
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKey_(dict, a2, @"partner_ID", v3);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2,getPartnerIDFromDict,partnerID:%{public}@", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = 138543362;
    v10 = v4;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2,getPartnerIDFromDict,partnerID:%{public}@", &v9, 12);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getPartnerIDFromDict:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return @"UnknownPartnerID";
  }
}

+ (id)getCallIDFromDict:(id)dict
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKey_(dict, a2, @"call_ID", v3);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2,getCallIDFromDict,callID:%{public}@", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v9 = 138543362;
    v10 = v4;
    v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2,getCallIDFromDict,callID:%{public}@", &v9, 12);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getCallIDFromDict:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return @"UnknownCallID";
  }
}

+ (int64_t)getSessionStartTimeFromDict:(id)dict
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_valueForKey_(dict, a2, @"session_start_time", v3);
  v8 = objc_msgSend_intValue(v4, v5, v6, v7);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v16 = v8;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2,getSessionStartTimeFromDict,SessionStartTime:%{public}lld", buf, 0xCu);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v13 = 134349056;
    v14 = v8;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2,getSessionStartTimeFromDict,SessionStartTime:%{public}lld", &v13, 12);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getSessionStartTimeFromDict:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return v8;
}

+ (id)getSharedInfoPrefixFromSessionID:(id)d partnerID:(id)iD partnerAdrPublicKeyData:(id)data deviceSessionPrivateKey:(__SecKey *)key
{
  v82 = *MEMORY[0x1E69E9840];
  if (!d || !iD || !data || !key)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v48 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v71 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if ((*(v49 + 160) & 0x80000000) != 0 && (*(v49 + 164) & 0x80000000) != 0 && (*(v49 + 168) & 0x80000000) != 0 && !*(v49 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = 136446210;
    v59 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
    v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v58, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v50);
    if (v50 == buf)
    {
      return 0;
    }

    v51 = v50;
    goto LABEL_53;
  }

  v9 = objc_msgSend_copyPublicKeyFromPrivateKey_(CLEEDCryptoUtilities, a2, key, iD);
  if (!v9)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v52 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v71 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,nil deviceSessionPublicKey, early return", buf, 0xCu);
    }

    v53 = sub_19B87DD40();
    if (*(v53 + 160) <= 1 && *(v53 + 164) <= 1 && *(v53 + 168) <= 1 && !*(v53 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = 136446210;
    v59 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
    v54 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,nil deviceSessionPublicKey, early return", &v58, 12);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n");
LABEL_51:
    if (v54 == buf)
    {
      return 0;
    }

    v51 = v54;
LABEL_53:
    free(v51);
    return 0;
  }

  v12 = v9;
  v13 = objc_msgSend_createKeyExternalRepresentation_(CLEEDCryptoUtilities, v10, v9, v11);
  CFRelease(v12);
  if (!v13)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v55 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v71 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil deviceSessionPublicKeyData, early return", buf, 0xCu);
    }

    v56 = sub_19B87DD40();
    if ((*(v56 + 160) & 0x80000000) != 0 && (*(v56 + 164) & 0x80000000) != 0 && (*(v56 + 168) & 0x80000000) != 0 && !*(v56 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = 136446210;
    v59 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
    v54 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil deviceSessionPublicKeyData, early return", &v58, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n");
    goto LABEL_51;
  }

  v17 = MEMORY[0x1E695DF88];
  v18 = objc_msgSend_length(d, v14, v15, v16);
  v22 = objc_msgSend_length(iD, v19, v20, v21) + v18;
  v26 = v22 + objc_msgSend_length(data, v23, v24, v25);
  v30 = objc_msgSend_length(v13, v27, v28, v29);
  v33 = objc_msgSend_dataWithCapacity_(v17, v31, v26 + v30, v32);
  objc_msgSend_appendData_(v33, v34, d, v35);
  v38 = objc_msgSend_dataUsingEncoding_(iD, v36, 4, v37);
  objc_msgSend_appendData_(v33, v39, v38, v40);
  objc_msgSend_appendData_(v33, v41, data, v42);
  objc_msgSend_appendData_(v33, v43, v13, v44);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v45 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447491;
    v71 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
    v72 = 2114;
    dCopy = d;
    v74 = 2114;
    iDCopy = iD;
    v76 = 2114;
    dataCopy = data;
    v78 = 2114;
    v79 = v13;
    v80 = 2113;
    v81 = v33;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,session ID = %{public}@, partner ID = %{public}@, ADR public key = %{public}@,device session public key = %{public}@, sharedInfoPrefix = %{private}@", buf, 0x3Eu);
  }

  v46 = sub_19B87DD40();
  if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = 136447491;
    v59 = "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
    v60 = 2114;
    dCopy2 = d;
    v62 = 2114;
    iDCopy2 = iD;
    v64 = 2114;
    dataCopy2 = data;
    v66 = 2114;
    v67 = v13;
    v68 = 2113;
    v69 = v33;
    v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,session ID = %{public}@, partner ID = %{public}@, ADR public key = %{public}@,device session public key = %{public}@, sharedInfoPrefix = %{private}@", &v58, 62);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getSharedInfoPrefixFromSessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v47);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  return v33;
}

+ (id)getDecryptedPartnerSessionSecret:(id)secret sessionID:(id)d partnerID:(id)iD partnerAdrPublicKeyData:(id)data deviceSessionPrivateKey:(__SecKey *)key
{
  v70 = *MEMORY[0x1E69E9840];
  if (secret && d && iD && data && key)
  {
    v12 = MEMORY[0x1E695DF88];
    v13 = objc_msgSend_length(data, a2, secret, d);
    v17 = objc_msgSend_length(secret, v14, v15, v16);
    v20 = objc_msgSend_dataWithCapacity_(v12, v18, v17 + v13, v19);
    objc_msgSend_appendData_(v20, v21, data, v22);
    objc_msgSend_appendData_(v20, v23, secret, v24);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v25 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v67 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v68 = 2114;
      dataCopy = data;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,partner ADR public key = %{public}@\n", buf, 0x16u);
    }

    v26 = sub_19B87DD40();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v62 = 136446466;
      v63 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v64 = 2114;
      dataCopy2 = data;
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,partner ADR public key = %{public}@\n", &v62, 22);
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v28 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v67 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v68 = 2113;
      dataCopy = v20;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,full encrypted partner session secret blob = %{private}@\n", buf, 0x16u);
    }

    v29 = sub_19B87DD40();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v62 = 136446467;
      v63 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v64 = 2113;
      dataCopy2 = v20;
      v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,full encrypted partner session secret blob = %{private}@\n", &v62, 22);
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v34 = MEMORY[0x1E695DF88];
    v35 = objc_msgSend_length(d, v30, v31, v32);
    v39 = objc_msgSend_length(iD, v36, v37, v38);
    v42 = objc_msgSend_dataWithCapacity_(v34, v40, v39 + v35, v41);
    objc_msgSend_appendData_(v42, v43, d, v44);
    v47 = objc_msgSend_dataUsingEncoding_(iD, v45, 4, v46);
    objc_msgSend_appendData_(v42, v48, v47, v49);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v50 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v67 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v68 = 2113;
      dataCopy = v20;
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,shared info = %{private}@\n", buf, 0x16u);
    }

    v51 = sub_19B87DD40();
    if (*(v51 + 160) > 1 || *(v51 + 164) > 1 || *(v51 + 168) > 1 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v62 = 136446467;
      v63 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v64 = 2113;
      dataCopy2 = v20;
      v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,shared info = %{private}@\n", &v62, 22);
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    ECIESDecryptedData_key_sharedInfo = objc_msgSend_getECIESDecryptedData_key_sharedInfo_(CLEEDCryptoUtilities, v52, v20, key, v42);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v55 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446467;
      v67 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v68 = 2113;
      dataCopy = ECIESDecryptedData_key_sharedInfo;
      _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,partner session secret = %{private}@\n", buf, 0x16u);
    }

    v56 = sub_19B87DD40();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v62 = 136446467;
      v63 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v64 = 2113;
      dataCopy2 = ECIESDecryptedData_key_sharedInfo;
      v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,partner session secret = %{private}@\n", &v62, 22);
      sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v67 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v59 = sub_19B87DD40();
    if ((*(v59 + 160) & 0x80000000) == 0 || (*(v59 + 164) & 0x80000000) == 0 || (*(v59 + 168) & 0x80000000) == 0 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v62 = 136446210;
      v63 = "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]";
      v60 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v62, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedPartnerSessionSecret:sessionID:partnerID:partnerAdrPublicKeyData:deviceSessionPrivateKey:]", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    return 0;
  }

  return ECIESDecryptedData_key_sharedInfo;
}

+ (BOOL)validateDerivedSessionSecrets:(id)secrets sharedInfoPrefix:(id)prefix partnerKeyConfirmation:(id)confirmation
{
  v75 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v69 = 2113;
    secretsCopy = secrets;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,combined secret = %{private}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446467;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v61 = 2113;
    secretsCopy2 = secrets;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,combined secret = %{private}@", &v59, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = objc_msgSend_dataUsingEncoding_(@"partner key confirmation", v9, 4, v10);
  v13 = MEMORY[0x1E695DF88];
  v17 = objc_msgSend_length(prefix, v14, v15, v16);
  v21 = objc_msgSend_length(@"partner key confirmation", v18, v19, v20);
  v24 = objc_msgSend_dataWithCapacity_(v13, v22, v21 + v17, v23);
  objc_msgSend_appendData_(v24, v25, prefix, v26);
  objc_msgSend_appendData_(v24, v27, v12, v28);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v29 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v69 = 2113;
    secretsCopy = v24;
    _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, shared info =%{private}@", buf, 0x16u);
  }

  v30 = sub_19B87DD40();
  if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446467;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v61 = 2113;
    secretsCopy2 = v24;
    v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, shared info =%{private}@", &v59, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  DerivedKeyWithLength_secretData_additionalInfo = objc_msgSend_getDerivedKeyWithLength_secretData_additionalInfo_(CLEEDCryptoUtilities, v31, 48, secrets, v24);
  if (!DerivedKeyWithLength_secretData_additionalInfo)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v50 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKeyBlob,early return", buf, 0xCu);
    }

    v51 = sub_19B87DD40();
    if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446210;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil derivedKeyBlob,early return", &v59, 12);
    goto LABEL_85;
  }

  v35 = DerivedKeyWithLength_secretData_additionalInfo;
  v36 = objc_msgSend_subdataWithRange_(DerivedKeyWithLength_secretData_additionalInfo, v34, 0, 32);
  v38 = objc_msgSend_subdataWithRange_(v35, v37, 32, 16);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v39 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v69 = 2113;
    secretsCopy = v35;
    v71 = 2113;
    v72 = v36;
    v73 = 2113;
    v74 = v38;
    _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,derived key blob = %{private}@,derived key = %{private}@, derived IV blob = %{private}@", buf, 0x2Au);
  }

  v40 = sub_19B87DD40();
  if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446979;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v61 = 2113;
    secretsCopy2 = v35;
    v63 = 2113;
    v64 = v36;
    v65 = 2113;
    v66 = v38;
    v42 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,derived key blob = %{private}@,derived key = %{private}@, derived IV blob = %{private}@", &v59, 42);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  if (!v36 || !v38)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v53 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKey or derivedIV,early return", buf, 0xCu);
    }

    v54 = sub_19B87DD40();
    if ((*(v54 + 160) & 0x80000000) != 0 && (*(v54 + 164) & 0x80000000) != 0 && (*(v54 + 168) & 0x80000000) != 0 && !*(v54 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446210;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil derivedKey or derivedIV,early return", &v59, 12);
    goto LABEL_85;
  }

  GMACWithAuthData_key_iv = objc_msgSend_getGMACWithAuthData_key_iv_(CLEEDCryptoUtilities, v41, v12, v36, v38);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v44 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v69 = 2113;
    secretsCopy = GMACWithAuthData_key_iv;
    _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,partner key confirmation tag = %{private}@\n", buf, 0x16u);
  }

  v45 = sub_19B87DD40();
  if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446467;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v61 = 2113;
    secretsCopy2 = GMACWithAuthData_key_iv;
    v48 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,partner key confirmation tag = %{private}@\n", &v59, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v48);
    if (v48 != buf)
    {
      free(v48);
    }
  }

  if (GMACWithAuthData_key_iv && (objc_msgSend_isEqualToData_(GMACWithAuthData_key_iv, v46, confirmation, v47) & 1) != 0)
  {
    return 1;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v55 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v68 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil computedPartnerKeyConfirmation or partner key confirmation does not match\n", buf, 0xCu);
  }

  v56 = sub_19B87DD40();
  if ((*(v56 + 160) & 0x80000000) == 0 || (*(v56 + 164) & 0x80000000) == 0 || (*(v56 + 168) & 0x80000000) == 0 || *(v56 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v59 = 136446210;
    v60 = "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]";
    v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil computedPartnerKeyConfirmation or partner key confirmation does not match\n", &v59, 12);
LABEL_85:
    v57 = v52;
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest validateDerivedSessionSecrets:sharedInfoPrefix:partnerKeyConfirmation:]", "CoreLocation: %s\n", v52);
    if (v57 != buf)
    {
      free(v57);
    }
  }

  return 0;
}

+ (id)getDecryptedRequestDict:(id)dict requestID:(id)d combinedSecret:(id)secret sharedInfoPrefix:(id)prefix
{
  v139 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v10 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446723;
    v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v137 = 2113;
    *v138 = secret;
    *&v138[8] = 2113;
    *&v138[10] = prefix;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,combined secret = %{private}@, sharedInfoPrefix = %{private}@", buf, 0x20u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v131 = 136446723;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v133 = 2113;
    *v134 = secret;
    *&v134[8] = 2113;
    *&v134[10] = prefix;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,combined secret = %{private}@, sharedInfoPrefix = %{private}@", &v131, 32);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (!dict || !d || !secret || !prefix)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v114 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one ore more input parameters is nil,early return", buf, 0xCu);
    }

    v115 = sub_19B87DD40();
    if ((*(v115 + 160) & 0x80000000) != 0 && (*(v115 + 164) & 0x80000000) != 0 && (*(v115 + 168) & 0x80000000) != 0 && !*(v115 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v131 = 136446210;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v116 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one ore more input parameters is nil,early return", &v131, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n");
    goto LABEL_98;
  }

  v15 = objc_msgSend_dataUsingEncoding_(@"partner request", v12, 4, v13);
  v16 = MEMORY[0x1E695DF88];
  v20 = objc_msgSend_length(prefix, v17, v18, v19);
  v24 = objc_msgSend_length(d, v21, v22, v23) + v20;
  v28 = objc_msgSend_length(@"partner request", v25, v26, v27);
  v31 = objc_msgSend_dataWithCapacity_(v16, v29, v24 + v28, v30);
  objc_msgSend_appendData_(v31, v32, prefix, v33);
  v36 = objc_msgSend_dataUsingEncoding_(d, v34, 4, v35);
  objc_msgSend_appendData_(v31, v37, v36, v38);
  objc_msgSend_appendData_(v31, v39, v15, v40);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v41 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v137 = 2113;
    *v138 = v31;
    _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, shared info =%{private}@", buf, 0x16u);
  }

  v42 = sub_19B87DD40();
  if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v131 = 136446467;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v133 = 2113;
    *v134 = v31;
    v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, shared info =%{private}@", &v131, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  DerivedKeyWithLength_secretData_additionalInfo = objc_msgSend_getDerivedKeyWithLength_secretData_additionalInfo_(CLEEDCryptoUtilities, v43, 48, secret, v31);
  if (!DerivedKeyWithLength_secretData_additionalInfo)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v117 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v117, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKeyBlob,early return", buf, 0xCu);
    }

    v118 = sub_19B87DD40();
    if ((*(v118 + 160) & 0x80000000) != 0 && (*(v118 + 164) & 0x80000000) != 0 && (*(v118 + 168) & 0x80000000) != 0 && !*(v118 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v119 = qword_1EAFE4718;
    v131 = 136446210;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v120 = "#EED2FWK,%{public}s,nil derivedKeyBlob,early return";
LABEL_96:
    v113 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v119, 16, v120, &v131, 12);
LABEL_97:
    v116 = v113;
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n");
LABEL_98:
    if (v116 != buf)
    {
      free(v116);
    }

    return 0;
  }

  v47 = DerivedKeyWithLength_secretData_additionalInfo;
  v48 = objc_msgSend_subdataWithRange_(DerivedKeyWithLength_secretData_additionalInfo, v46, 0, 32);
  v50 = objc_msgSend_subdataWithRange_(v47, v49, 32, 16);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v51 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446979;
    v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v137 = 2113;
    *v138 = v47;
    *&v138[8] = 2113;
    *&v138[10] = v48;
    *&v138[18] = 2113;
    *&v138[20] = v50;
    _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,derived key blob = %{private}@,derived key = %{private}@, derived IV blob = %{private}@", buf, 0x2Au);
  }

  v52 = sub_19B87DD40();
  if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v131 = 136446979;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v133 = 2113;
    *v134 = v47;
    *&v134[8] = 2113;
    *&v134[10] = v48;
    *&v134[18] = 2113;
    *&v134[20] = v50;
    v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,derived key blob = %{private}@,derived key = %{private}@, derived IV blob = %{private}@", &v131, 42);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v56);
    if (v56 != buf)
    {
      free(v56);
    }
  }

  if (!v48 || !v50)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v121 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil derivedKey or derivedIV,early return", buf, 0xCu);
    }

    v122 = sub_19B87DD40();
    if ((*(v122 + 160) & 0x80000000) != 0 && (*(v122 + 164) & 0x80000000) != 0 && (*(v122 + 168) & 0x80000000) != 0 && !*(v122 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v119 = qword_1EAFE4718;
    v131 = 136446210;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v120 = "#EED2FWK,%{public}s,nil derivedKey or derivedIV,early return";
    goto LABEL_96;
  }

  v57 = objc_msgSend_length(dict, v53, v54, v55);
  v59 = objc_msgSend_subdataWithRange_(dict, v58, 0, v57 - 16);
  v63 = objc_msgSend_length(dict, v60, v61, v62);
  v65 = objc_msgSend_subdataWithRange_(dict, v64, v63 - 16, 16);
  AESGCMDecryptedData_key_iv_authTag = objc_msgSend_getAESGCMDecryptedData_key_iv_authTag_(CLEEDCryptoUtilities, v66, v59, v48, v50, v65);
  if (!AESGCMDecryptedData_key_iv_authTag)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v123 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      _os_log_impl(&dword_19B873000, v123, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,getAESGCMDecryptedData returned nil request data, early return\n", buf, 0xCu);
    }

    v124 = sub_19B87DD40();
    if ((*(v124 + 160) & 0x80000000) != 0 && (*(v124 + 164) & 0x80000000) != 0 && (*(v124 + 168) & 0x80000000) != 0 && !*(v124 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v119 = qword_1EAFE4718;
    v131 = 136446210;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v120 = "#EED2FWK,%{public}s,getAESGCMDecryptedData returned nil request data, early return\n";
    goto LABEL_96;
  }

  v130 = 0;
  v69 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v68, AESGCMDecryptedData_key_iv_authTag, 1, &v130);
  if (v130)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v70 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      v74 = objc_msgSend_code(v130, v71, v72, v73);
      v78 = objc_msgSend_domain(v130, v75, v76, v77);
      v82 = objc_msgSend_UTF8String(v78, v79, v80, v81);
      v86 = objc_msgSend_localizedDescription(v130, v83, v84, v85);
      v90 = objc_msgSend_UTF8String(v86, v87, v88, v89);
      *buf = 136446978;
      v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
      v137 = 1026;
      *v138 = v74;
      *&v138[4] = 2082;
      *&v138[6] = v82;
      *&v138[14] = 2082;
      *&v138[16] = v90;
      _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to deserialize json dictionary,error code,%{public}d,domain,%{public}s,reason,%{public}s\n", buf, 0x26u);
    }

    v91 = sub_19B87DD40();
    if ((*(v91 + 160) & 0x80000000) != 0 && (*(v91 + 164) & 0x80000000) != 0 && (*(v91 + 168) & 0x80000000) != 0 && !*(v91 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v95 = qword_1EAFE4718;
    v96 = objc_msgSend_code(v130, v92, v93, v94);
    v100 = objc_msgSend_domain(v130, v97, v98, v99);
    v104 = objc_msgSend_UTF8String(v100, v101, v102, v103);
    v108 = objc_msgSend_localizedDescription(v130, v105, v106, v107);
    v112 = objc_msgSend_UTF8String(v108, v109, v110, v111);
    v131 = 136446978;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v133 = 1026;
    *v134 = v96;
    *&v134[4] = 2082;
    *&v134[6] = v104;
    *&v134[14] = 2082;
    *&v134[16] = v112;
    v113 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v95, 16, "#EED2FWK,%{public}s,failed to deserialize json dictionary,error code,%{public}d,domain,%{public}s,reason,%{public}s\n", &v131, 38);
    goto LABEL_97;
  }

  v125 = v69;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v127 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v136 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v137 = 2114;
    *v138 = v125;
    _os_log_impl(&dword_19B873000, v127, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,request dict:%{public}@", buf, 0x16u);
  }

  v128 = sub_19B87DD40();
  if (*(v128 + 160) > 1 || *(v128 + 164) > 1 || *(v128 + 168) > 1 || *(v128 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v131 = 136446466;
    v132 = "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]";
    v133 = 2114;
    *v134 = v125;
    v129 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,request dict:%{public}@", &v131, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDRequest getDecryptedRequestDict:requestID:combinedSecret:sharedInfoPrefix:]", "CoreLocation: %s\n", v129);
    if (v129 != buf)
    {
      free(v129);
    }
  }

  return v125;
}

- (void)updateDurationInformationForCA:(BOOL)a
{
  aCopy = a;
  v101 = *MEMORY[0x1E69E9840];
  objc_msgSend_requestReceivedTime(self, a2, a, v3);
  if (v6 <= 0.0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v82 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v94 = "[CLEEDRequest updateDurationInformationForCA:]";
      _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestReceivedTime is invalid, early return", buf, 0xCu);
    }

    v83 = sub_19B87DD40();
    if (*(v83 + 160) > 1 || *(v83 + 164) > 1 || *(v83 + 168) > 1 || *(v83 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v85 = 136446210;
      v86 = "[CLEEDRequest updateDurationInformationForCA:]";
      v84 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestReceivedTime is invalid, early return", &v85, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v84);
      if (v84 != buf)
      {
        v81 = v84;
        goto LABEL_54;
      }
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446723;
      v94 = "[CLEEDRequest updateDurationInformationForCA:]";
      v95 = 2049;
      v96 = objc_msgSend_state(self, v9, v10, v11);
      v97 = 1026;
      LODWORD(v98) = aCopy;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,state:%{private}ld, response:%{public}d", buf, 0x1Cu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v19 = qword_1EAFE4718;
      v85 = 136446723;
      v86 = "[CLEEDRequest updateDurationInformationForCA:]";
      v87 = 2049;
      v88 = objc_msgSend_state(self, v16, v17, v18);
      v89 = 1026;
      LODWORD(v90) = aCopy;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v19, 0, "#EED2FWK,%{public}s,state:%{private}ld, response:%{public}d", &v85, 28);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (objc_msgSend_state(self, v13, v14, v15) == 3)
    {
      objc_msgSend_receivedTimeToFirstUserResponse(self, v21, v22, v23);
      if (v24 <= 0.0)
      {
        objc_msgSend_requestReceivedTime(self, v21, v22, v23);
        objc_msgSend_setReceivedTimeToFirstUserResponse_(self, v26, v27, v28, vabdd_f64(Current, v25));
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v29 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_requestReceivedTime(self, v30, v31, v32);
          v34 = v33;
          objc_msgSend_receivedTimeToFirstUserResponse(self, v35, v36, v37);
          *buf = 136446979;
          v94 = "[CLEEDRequest updateDurationInformationForCA:]";
          v95 = 2049;
          v96 = v34;
          v97 = 2049;
          v98 = Current;
          v99 = 2049;
          v100 = v38;
          _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestReceivedTime:%{private}f, currentTime:%{private}f, receivedTimeToFirstUserResponse:%{private}f", buf, 0x2Au);
        }

        v39 = sub_19B87DD40();
        if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v43 = qword_1EAFE4718;
          objc_msgSend_requestReceivedTime(self, v40, v41, v42);
          v45 = v44;
          objc_msgSend_receivedTimeToFirstUserResponse(self, v46, v47, v48);
          v85 = 136446979;
          v86 = "[CLEEDRequest updateDurationInformationForCA:]";
          v87 = 2049;
          v88 = v45;
          v89 = 2049;
          v90 = Current;
          v91 = 2049;
          v92 = v49;
          v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v43, 0, "#EED2FWK,%{public}s,requestReceivedTime:%{private}f, currentTime:%{private}f, receivedTimeToFirstUserResponse:%{private}f", &v85, 42);
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v50);
          if (v50 != buf)
          {
            free(v50);
          }
        }
      }
    }

    if (aCopy)
    {
      objc_msgSend_receivedTimeToAcceptTime(self, v21, v22, v23);
      if (v54 <= 0.0)
      {
        objc_msgSend_requestReceivedTime(self, v51, v52, v53);
        objc_msgSend_setReceivedTimeToAcceptTime_(self, v56, v57, v58, vabdd_f64(Current, v55));
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v59 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_requestReceivedTime(self, v60, v61, v62);
          v64 = v63;
          objc_msgSend_receivedTimeToAcceptTime(self, v65, v66, v67);
          *buf = 136446979;
          v94 = "[CLEEDRequest updateDurationInformationForCA:]";
          v95 = 2049;
          v96 = v64;
          v97 = 2049;
          v98 = Current;
          v99 = 2049;
          v100 = v68;
          _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestReceivedTime:%{private}f, currentTime:%{private}f,receivedTimeToAcceptTime:%{private}f", buf, 0x2Au);
        }

        v69 = sub_19B87DD40();
        if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v73 = qword_1EAFE4718;
          objc_msgSend_requestReceivedTime(self, v70, v71, v72);
          v75 = v74;
          objc_msgSend_receivedTimeToAcceptTime(self, v76, v77, v78);
          v85 = 136446979;
          v86 = "[CLEEDRequest updateDurationInformationForCA:]";
          v87 = 2049;
          v88 = v75;
          v89 = 2049;
          v90 = Current;
          v91 = 2049;
          v92 = v79;
          v80 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v73, 0, "#EED2FWK,%{public}s,requestReceivedTime:%{private}f, currentTime:%{private}f,receivedTimeToAcceptTime:%{private}f", &v85, 42);
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDRequest updateDurationInformationForCA:]", "CoreLocation: %s\n", v80);
          if (v80 != buf)
          {
            v81 = v80;
LABEL_54:
            free(v81);
          }
        }
      }
    }
  }
}

@end