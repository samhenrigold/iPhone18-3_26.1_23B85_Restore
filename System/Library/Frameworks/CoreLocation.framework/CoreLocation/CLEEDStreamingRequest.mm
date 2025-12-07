@interface CLEEDStreamingRequest
- (CLEEDStreamingRequest)initWithCoder:(id)coder;
- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDStreamingRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1;
- (NSString)streamingURL;
- (id)description;
- (id)getRequestDict;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setStreamingURL:(id)l;
@end

@implementation CLEEDStreamingRequest

- (CLEEDStreamingRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1
{
  v66 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  pathCopy4 = path;
  lCopy4 = l;
  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136448515;
    v47 = "[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:]";
    v48 = 2114;
    dCopy = d;
    v50 = 2114;
    iDCopy = iD;
    v52 = 2114;
    partnerIDCopy = partnerID;
    v54 = 2114;
    geofenceIDCopy = geofenceID;
    v56 = 2114;
    dateCopy = date;
    v58 = 2050;
    stateCopy = state;
    v60 = 2114;
    lCopy2 = l;
    v62 = 2114;
    pathCopy2 = path;
    v64 = 2113;
    tokenCopy = token;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,baseURL:%{public}@,relativePath:%{public}@,token:%{private}@]", buf, 0x66u);
  }

  v20 = sub_19B87DD40();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v26 = 136448515;
    v27 = "[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:]";
    v28 = 2114;
    dCopy2 = d;
    v30 = 2114;
    iDCopy2 = iD;
    v32 = 2114;
    partnerIDCopy2 = partnerID;
    v34 = 2114;
    geofenceIDCopy2 = geofenceID;
    v36 = 2114;
    dateCopy2 = date;
    v38 = 2050;
    stateCopy2 = state;
    v40 = 2114;
    lCopy3 = l;
    v42 = 2114;
    pathCopy3 = path;
    v44 = 2113;
    tokenCopy2 = token;
    v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,baseURL:%{public}@,relativePath:%{public}@,token:%{private}@]", &v26, 102);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:]", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }

    pathCopy4 = path;
    lCopy4 = l;
  }

  v25.receiver = self;
  v25.super_class = CLEEDStreamingRequest;
  v22 = [(CLEEDRequest *)&v25 initWithID:d psapID:iD partnerID:partnerID geofenceID:geofenceID requestDate:date requestType:1 state:state];
  if (v22)
  {
    v22->_baseURL = lCopy4;
    v22->_relativePath = pathCopy4;
    v22->_token = token;
  }

  return v22;
}

- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v105 = *MEMORY[0x1E69E9840];
  *error = 0;
  v9 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", data);
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
    v94 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v95 = 2114;
    v96 = v9;
    v97 = 2114;
    v98 = v12;
    v99 = 2114;
    v100 = v15;
    v101 = 2114;
    v102 = v18;
    v103 = 2050;
    v104 = objc_msgSend_integerValue(v21, v23, v24, v25);
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
    v81 = 136447490;
    v82 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v83 = 2114;
    v84 = v9;
    v85 = 2114;
    v86 = v12;
    v87 = 2114;
    v88 = v15;
    v89 = 2114;
    v90 = v18;
    v91 = 2050;
    v92 = objc_msgSend_integerValue(v21, v29, v30, v31);
    v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v32, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", &v81, 62);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  v34 = v18;
  v35 = objc_msgSend_objectForKey_(data, v27, @"request_type", v28);
  v38 = objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v36, v35, v37);
  v80 = objc_msgSend_objectForKey_(data, v39, @"whip_endpoint_path", v40);
  v43 = objc_msgSend_objectForKey_(data, v41, @"authentication_token", v42);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v44 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v94 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v95 = 2114;
    v96 = v35;
    v97 = 2050;
    v98 = v38;
    v99 = 2113;
    v100 = v80;
    v101 = 2113;
    v102 = v43;
    _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativePath:%{private}@, authenticationToken:%{private}@", buf, 0x34u);
  }

  v45 = sub_19B87DD40();
  if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v81 = 136447235;
    v82 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v83 = 2114;
    v84 = v35;
    v85 = 2050;
    v86 = v38;
    v87 = 2113;
    v88 = v80;
    v89 = 2113;
    v90 = v43;
    v49 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativePath:%{private}@, authenticationToken:%{private}@", &v81, 52);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  if (!v9 || !v12 || !v15 || !v34 || !v21 || !v80 || !v38 || !v43)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v50 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v94 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
    }

    v51 = sub_19B87DD40();
    if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v81 = 136446210;
      v82 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", &v81, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v52);
      if (v52 != buf)
      {
        free(v52);
      }
    }

    *error = 1;
  }

  if (v9)
  {
    v53 = objc_alloc(MEMORY[0x1E696AFB0]);
    v56 = objc_msgSend_initWithUUIDString_(v53, v54, v9, v55);
  }

  else
  {
    v56 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v46, v47, v48);
  }

  v60 = v56;
  v61 = MEMORY[0x1E695DF00];
  if (v21)
  {
    v62 = objc_msgSend_integerValue(v21, v57, v58, v59);
    v66 = objc_msgSend_dateWithTimeIntervalSince1970_(v61, v63, v64, v65, v62);
  }

  else
  {
    v66 = objc_msgSend_date(MEMORY[0x1E695DF00], v57, v58, v59);
  }

  v67 = v66;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v68 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v94 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v95 = 2114;
    v96 = v60;
    v97 = 2114;
    v98 = v67;
    _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v69 = sub_19B87DD40();
  if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v81 = 136446722;
    v82 = "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v83 = 2114;
    v84 = v60;
    v85 = 2114;
    v86 = v67;
    v71 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v81, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v71);
    if (v71 != buf)
    {
      free(v71);
    }
  }

  if (v15)
  {
    v72 = v15;
  }

  else
  {
    v72 = @"UnknownPSAPID";
  }

  if (v12)
  {
    v73 = v12;
  }

  else
  {
    v73 = @"UnknownPartnerID";
  }

  if (v34)
  {
    v74 = v34;
  }

  else
  {
    v74 = @"UnknownGeofenceID";
  }

  if (*error)
  {
    v75 = 7;
  }

  else
  {
    v75 = 3;
  }

  if (v43)
  {
    v76 = v43;
  }

  else
  {
    v76 = @"AuthenticationToken";
  }

  return objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_state_baseURL_relativePath_token_(self, v70, v60, v72, v73, v74, v67, v75, l, v80, v76);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDStreamingRequest;
  [(CLEEDRequest *)&v3 dealloc];
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = CLEEDStreamingRequest;
  v3 = [(CLEEDRequest *)&v16 description];
  v4 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_streamingURL(self, v5, v6, v7);
  v12 = objc_msgSend_token(self, v9, v10, v11);
  return objc_msgSend_stringWithFormat_(v4, v13, @"%@\n <CLEEDStreamingRequest: streamingURL, %@, token, %@>", v14, v3, v8, v12);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_streamingURL(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"streamingURL");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_token, @"token");
  v9.receiver = self;
  v9.super_class = CLEEDStreamingRequest;
  [(CLEEDRequest *)&v9 encodeWithCoder:coder];
}

- (CLEEDStreamingRequest)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = CLEEDStreamingRequest;
  v4 = [(CLEEDRequest *)&v13 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"streamingURL");
    objc_msgSend_setStreamingURL_(v4, v8, v7, v9);
    v10 = objc_opt_class();
    v4->_token = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"token");
  }

  return v4;
}

- (NSString)streamingURL
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_baseURL(self, a2, v2, v3);
  v10 = objc_msgSend_relativePath(self, v7, v8, v9);
  return objc_msgSend_stringWithFormat_(v5, v11, @"https://%@/%@", v12, v6, v10);
}

- (void)setStreamingURL:(id)l
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], a2, l, v3);
  v9 = objc_msgSend_host(v5, v6, v7, v8);
  objc_msgSend_setBaseURL_(self, v10, v9, v11);
  v15 = objc_msgSend_relativePath(v5, v12, v13, v14);
  objc_msgSend_setRelativePath_(self, v16, v15, v17);
  v21 = objc_msgSend_baseURL(self, v18, v19, v20);
  if (objc_msgSend_hasSuffix_(v21, v22, @"/", v23))
  {
    v27 = objc_msgSend_baseURL(self, v24, v25, v26);
    v31 = objc_msgSend_baseURL(self, v28, v29, v30);
    v35 = objc_msgSend_length(v31, v32, v33, v34);
    v38 = objc_msgSend_substringToIndex_(v27, v36, v35 - 2, v37);
    objc_msgSend_setBaseURL_(self, v39, v38, v40);
  }

  v41 = objc_msgSend_relativePath(self, v24, v25, v26);
  if (objc_msgSend_hasPrefix_(v41, v42, @"/", v43))
  {
    v47 = objc_msgSend_relativePath(self, v44, v45, v46);
    v50 = objc_msgSend_substringFromIndex_(v47, v48, 1, v49);
    objc_msgSend_setRelativePath_(self, v51, v50, v52);
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v53 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v76 = "[CLEEDStreamingRequest setStreamingURL:]";
    v77 = 2114;
    v78 = objc_msgSend_baseURL(self, v54, v55, v56);
    v79 = 2114;
    v80 = objc_msgSend_relativePath(self, v57, v58, v59);
    _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s,baseURL:%{public}@,relativePath:%{public}@", buf, 0x20u);
  }

  v60 = sub_19B87DD40();
  if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v64 = qword_1EAFE4718;
    v69 = 136446722;
    v70 = "[CLEEDStreamingRequest setStreamingURL:]";
    v71 = 2114;
    v72 = objc_msgSend_baseURL(self, v61, v62, v63);
    v73 = 2114;
    v74 = objc_msgSend_relativePath(self, v65, v66, v67);
    v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v64, 2, "#EED2FWK,%{public}s,baseURL:%{public}@,relativePath:%{public}@", &v69, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest setStreamingURL:]", "CoreLocation: %s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }
}

- (id)getRequestDict
{
  v28 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CLEEDStreamingRequest;
  getRequestDict = [(CLEEDRequest *)&v23 getRequestDict];
  if (getRequestDict)
  {
    v7 = objc_msgSend_relativePath(self, v3, v4, v5);
    objc_msgSend_setObject_forKey_(getRequestDict, v8, v7, @"whip_endpoint_path");
    v12 = objc_msgSend_token(self, v9, v10, v11);
    objc_msgSend_setObject_forKey_(getRequestDict, v13, v12, @"authentication_token");
    v17 = objc_msgSend_baseURL(self, v14, v15, v16);
    objc_msgSend_setObject_forKey_(getRequestDict, v18, v17, @"EEDRequestBaseURL");
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v19 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v27 = "[CLEEDStreamingRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil streamingRequestDict, early return", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v24 = 136446210;
      v25 = "[CLEEDStreamingRequest getRequestDict]";
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil streamingRequestDict, early return", &v24, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest getRequestDict]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  return getRequestDict;
}

- (CLEEDStreamingRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  errorCopy3 = error;
  v190 = *MEMORY[0x1E69E9840];
  if (!dictionary || !error)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v150 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v150, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil streamingRequestDict or CLEEDHelperError, early return", buf, 0xCu);
    }

    v151 = sub_19B87DD40();
    if ((*(v151 + 160) & 0x80000000) != 0 && (*(v151 + 164) & 0x80000000) != 0 && (*(v151 + 168) & 0x80000000) != 0 && !*(v151 + 152))
    {
      goto LABEL_95;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v166 = 136446210;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v152 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil streamingRequestDict or CLEEDHelperError, early return", &v166, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v152);
    if (v152 == buf)
    {
      goto LABEL_95;
    }

    v153 = v152;
    goto LABEL_94;
  }

  v7 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", error);
  v10 = objc_msgSend_objectForKey_(dictionary, v8, @"partner_ID", v9);
  v13 = objc_msgSend_objectForKey_(dictionary, v11, @"psap_ID", v12);
  v165 = objc_msgSend_objectForKey_(dictionary, v14, @"geofence_ID", v15);
  v18 = objc_msgSend_valueForKey_(dictionary, v16, @"timestamp", v17);
  selfCopy = self;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v19 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v180 = 2114;
    v181 = v7;
    v182 = 2114;
    v183 = v10;
    v184 = 2114;
    v185 = v13;
    v186 = 2114;
    v187 = v165;
    v188 = 2050;
    v189 = objc_msgSend_integerValue(v18, v20, v21, v22);
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
  }

  v23 = sub_19B87DD40();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = qword_1EAFE4718;
    v166 = 136447490;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v168 = 2114;
    v169 = v7;
    v170 = 2114;
    v171 = v10;
    v172 = 2114;
    v173 = v13;
    v174 = 2114;
    v175 = v165;
    v176 = 2050;
    v177 = objc_msgSend_integerValue(v18, v26, v27, v28);
    v30 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", &v166, 62);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  v163 = v13;
  v164 = v10;
  v31 = objc_msgSend_objectForKey_(dictionary, v24, @"request_type", v25);
  v34 = objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v32, v31, v33);
  v37 = objc_msgSend_objectForKey_(dictionary, v35, @"whip_endpoint_path", v36);
  v40 = objc_msgSend_objectForKey_(dictionary, v38, @"authentication_token", v39);
  v43 = objc_msgSend_valueForKey_(dictionary, v41, @"EEDRequestBaseURL", v42);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v44 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447491;
    v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v180 = 2114;
    v181 = v31;
    v182 = 2050;
    v183 = v34;
    v184 = 2113;
    v185 = v37;
    v186 = 2113;
    v187 = v40;
    v188 = 2113;
    v189 = v43;
    _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativePath:%{private}@, authenticationToken:%{private}@, baseURL:%{private}@", buf, 0x3Eu);
  }

  v45 = sub_19B87DD40();
  if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v166 = 136447491;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v168 = 2114;
    v169 = v31;
    v170 = 2050;
    v171 = v34;
    v172 = 2113;
    v173 = v37;
    v174 = 2113;
    v175 = v40;
    v176 = 2113;
    v177 = v43;
    v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativePath:%{private}@, authenticationToken:%{private}@, baseURL:%{private}@", &v166, 62);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  if (!v7 || !v164 || !v163 || !v165 || !v18 || !v37 || !v34 || !v40 || !v43)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    errorCopy3 = error;
    v154 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v154, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", buf, 0xCu);
    }

    v155 = sub_19B87DD40();
    if ((*(v155 + 160) & 0x80000000) != 0 && (*(v155 + 164) & 0x80000000) != 0 && (*(v155 + 168) & 0x80000000) != 0 && !*(v155 + 152))
    {
      goto LABEL_95;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v166 = 136446210;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v156 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid", &v166, 12);
LABEL_92:
    v159 = v156;
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v156);
    if (v159 == buf)
    {
LABEL_95:
      v74 = 0;
      *errorCopy3 = 1;
      return v74;
    }

    v153 = v159;
LABEL_94:
    free(v153);
    goto LABEL_95;
  }

  v47 = objc_alloc(MEMORY[0x1E696AFB0]);
  v50 = objc_msgSend_initWithUUIDString_(v47, v48, v7, v49);
  v51 = MEMORY[0x1E695DF00];
  v55 = objc_msgSend_integerValue(v18, v52, v53, v54);
  v59 = objc_msgSend_dateWithTimeIntervalSince1970_(v51, v56, v57, v58, v55);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v60 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v180 = 2114;
    v181 = v50;
    v182 = 2114;
    v183 = v59;
    _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v61 = sub_19B87DD40();
  if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v166 = 136446722;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v168 = 2114;
    v169 = v50;
    v170 = 2114;
    v171 = v59;
    v64 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v166, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v64);
    if (v64 != buf)
    {
      free(v64);
    }
  }

  v65 = objc_msgSend_valueForKey_(dictionary, v62, @"EEDRequestState", v63);
  v69 = objc_msgSend_intValue(v65, v66, v67, v68);
  v71 = objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_state_baseURL_relativePath_token_(selfCopy, v70, v50, v163, v164, v165, v59, v69, v43, v37, v40);
  if (!v71)
  {
    errorCopy3 = error;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v157 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v157, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil request, early return", buf, 0xCu);
    }

    v158 = sub_19B87DD40();
    if ((*(v158 + 160) & 0x80000000) != 0 && (*(v158 + 164) & 0x80000000) != 0 && (*(v158 + 168) & 0x80000000) != 0 && !*(v158 + 152))
    {
      goto LABEL_95;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v166 = 136446210;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v156 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil request, early return", &v166, 12);
    goto LABEL_92;
  }

  v74 = v71;
  v75 = objc_msgSend_objectForKey_(dictionary, v72, @"EEDRequestStatusAtFirstUserResponse", v73);
  v79 = objc_msgSend_integerValue(v75, v76, v77, v78);
  objc_msgSend_setRequestStatusAtFirstUserResponse_(v74, v80, v79, v81);
  v84 = objc_msgSend_objectForKey_(dictionary, v82, @"EEDRequestTransmissionTime", v83);
  v88 = objc_msgSend_integerValue(v84, v85, v86, v87);
  objc_msgSend_setRequestTransmissionTime_(v74, v89, v88, v90);
  v93 = objc_msgSend_valueForKey_(dictionary, v91, @"EEDRequestReceivedTime", v92);
  objc_msgSend_doubleValue(v93, v94, v95, v96);
  objc_msgSend_setRequestReceivedTime_(v74, v97, v98, v99);
  v102 = objc_msgSend_valueForKey_(dictionary, v100, @"EEDReceivedTimeToFirstUserResponse", v101);
  objc_msgSend_doubleValue(v102, v103, v104, v105);
  objc_msgSend_setReceivedTimeToFirstUserResponse_(v74, v106, v107, v108);
  v111 = objc_msgSend_valueForKey_(dictionary, v109, @"EEDReceivedTimeToAcceptTime", v110);
  objc_msgSend_doubleValue(v111, v112, v113, v114);
  objc_msgSend_setReceivedTimeToAcceptTime_(v74, v115, v116, v117);
  v120 = objc_msgSend_objectForKey_(dictionary, v118, @"EEDNumMediaSelectIterations", v119);
  v124 = objc_msgSend_integerValue(v120, v121, v122, v123);
  objc_msgSend_setNumMediaSelectIterations_(v74, v125, v124, v126);
  v129 = objc_msgSend_objectForKey_(dictionary, v127, @"EEDRequestMetricSubmitted", v128);
  v133 = objc_msgSend_BOOLValue(v129, v130, v131, v132);
  objc_msgSend_setMetricSubmitted_(v74, v134, v133, v135);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v136 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v140 = objc_msgSend_state(v74, v137, v138, v139);
    v141 = *error;
    *buf = 136446979;
    v179 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v180 = 2113;
    v181 = v74;
    v182 = 2050;
    v183 = v140;
    v184 = 2050;
    v185 = v141;
    _os_log_impl(&dword_19B873000, v136, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDStreamingRequest:%{private}@, state:%{public}ld, error:%{public}ld", buf, 0x2Au);
  }

  v142 = sub_19B87DD40();
  if (*(v142 + 160) > 1 || *(v142 + 164) > 1 || *(v142 + 168) > 1 || *(v142 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v146 = qword_1EAFE4718;
    v147 = objc_msgSend_state(v74, v143, v144, v145);
    v148 = *error;
    v166 = 136446979;
    v167 = "[CLEEDStreamingRequest initWithDictionary:error:]";
    v168 = 2113;
    v169 = v74;
    v170 = 2050;
    v171 = v147;
    v172 = 2050;
    v173 = v148;
    v149 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v146, 0, "#EED2FWK,%{public}s, constructed CLEEDStreamingRequest:%{private}@, state:%{public}ld, error:%{public}ld", &v166, 42);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDStreamingRequest initWithDictionary:error:]", "CoreLocation: %s\n", v149);
    if (v149 != buf)
    {
      free(v149);
    }
  }

  return v74;
}

@end