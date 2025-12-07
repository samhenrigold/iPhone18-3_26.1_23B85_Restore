@interface CLEEDUploadRequest
- (CLEEDUploadRequest)initWithCoder:(id)coder;
- (CLEEDUploadRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error;
- (CLEEDUploadRequest)initWithDictionary:(id)dictionary error:(int64_t *)error;
- (CLEEDUploadRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1 sessionID:(id)self2 combinedSecret:(id)self3 mediaList:(id)self4;
- (NSString)uploadURL;
- (id)description;
- (id)getRequestDict;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setUploadURL:(id)l;
- (void)updateRequestWithMediaItemList:(id)list;
@end

@implementation CLEEDUploadRequest

- (CLEEDUploadRequest)initWithID:(id)d psapID:(id)iD partnerID:(id)partnerID geofenceID:(id)geofenceID requestDate:(id)date state:(int64_t)state baseURL:(id)l relativePath:(id)self0 token:(id)self1 sessionID:(id)self2 combinedSecret:(id)self3 mediaList:(id)self4
{
  v81 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v20 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136449283;
    v56 = "[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:]";
    v57 = 2114;
    dCopy = d;
    v59 = 2114;
    iDCopy = iD;
    v61 = 2114;
    partnerIDCopy = partnerID;
    v63 = 2114;
    geofenceIDCopy = geofenceID;
    v65 = 2114;
    dateCopy = date;
    v67 = 2050;
    stateCopy = state;
    v69 = 2114;
    lCopy = l;
    v71 = 2114;
    pathCopy = path;
    v73 = 2113;
    tokenCopy = token;
    v75 = 2113;
    sessionIDCopy = sessionID;
    v77 = 2113;
    secretCopy = secret;
    v79 = 2114;
    listCopy = list;
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEBUG, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,baseURL:%{public}@,relativePath:%{public}@,token:%{private}@,sessionID:%{private}@,combinedSecret:%{private}@,mediaList:%{public}@]", buf, 0x84u);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136449283;
    v30 = "[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:]";
    v31 = 2114;
    dCopy2 = d;
    v33 = 2114;
    iDCopy2 = iD;
    v35 = 2114;
    partnerIDCopy2 = partnerID;
    v37 = 2114;
    geofenceIDCopy2 = geofenceID;
    v39 = 2114;
    dateCopy2 = date;
    v41 = 2050;
    stateCopy2 = state;
    v43 = 2114;
    lCopy2 = l;
    v45 = 2114;
    pathCopy2 = path;
    v47 = 2113;
    tokenCopy2 = token;
    v49 = 2113;
    sessionIDCopy2 = sessionID;
    v51 = 2113;
    secretCopy2 = secret;
    v53 = 2114;
    listCopy2 = list;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 2, "#EED2FWK,%{public}s[ID:%{public}@,psapID:%{public}@,partnerID:%{public}@,geofenceID:%{public}@,requestDate:%{public}@,state:%{public}lu,baseURL:%{public}@,relativePath:%{public}@,token:%{private}@,sessionID:%{private}@,combinedSecret:%{private}@,mediaList:%{public}@]", &v29, 132);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithID:psapID:partnerID:geofenceID:requestDate:state:baseURL:relativePath:token:sessionID:combinedSecret:mediaList:]", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v28.receiver = self;
  v28.super_class = CLEEDUploadRequest;
  v23 = [(CLEEDRequest *)&v28 initWithID:d psapID:iD partnerID:partnerID geofenceID:geofenceID requestDate:date requestType:2 state:state];
  if (v23)
  {
    v23->_baseURL = l;
    v23->_relativePath = path;
    v23->_token = token;
    v23->_sessionID = sessionID;
    v23->_combinedSecret = secret;
    v23->_mediaList = objc_msgSend_setWithSet_(MEMORY[0x1E695DFA8], v24, list, v25);
    v23->_numDuplicateMediaSelections = 0;
  }

  return v23;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLEEDUploadRequest;
  [(CLEEDRequest *)&v3 dealloc];
}

- (id)description
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CLEEDUploadRequest;
  v3 = [(CLEEDRequest *)&v31 description];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = objc_msgSend_mediaList(self, v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v32, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v28;
    v15 = @"MediaList";
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = objc_msgSend_description(*(*(&v27 + 1) + 8 * i), v10, v11, v12);
        v15 = objc_msgSend_stringByAppendingString_(v15, v18, v17, v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v32, 16);
    }

    while (v13);
  }

  else
  {
    v15 = @"MediaList";
  }

  baseURL = self->_baseURL;
  v21 = MEMORY[0x1E696AEC0];
  relativePath = self->_relativePath;
  v23 = objc_msgSend_count(self->_mediaList, v10, v11, v12);
  return objc_msgSend_stringWithFormat_(v21, v24, @"%@\n <CLEEDUploadRequest: baseURL:%@, relativePath:%@, mediaListCount:%lu>\n %@", v25, v3, baseURL, relativePath, v23, v15);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_uploadURL(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"uploadURL");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_token, @"token");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_sessionID, @"sessionID");
  objc_msgSend_encodeObject_forKey_(coder, v10, self->_combinedSecret, @"combinedSecret");
  objc_msgSend_encodeObject_forKey_(coder, v11, self->_mediaList, @"mediaList");
  v12.receiver = self;
  v12.super_class = CLEEDUploadRequest;
  [(CLEEDRequest *)&v12 encodeWithCoder:coder];
}

- (CLEEDUploadRequest)initWithCoder:(id)coder
{
  v24.receiver = self;
  v24.super_class = CLEEDUploadRequest;
  v4 = [(CLEEDRequest *)&v24 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"uploadURL");
    objc_msgSend_setUploadURL_(v4, v8, v7, v9);
    v10 = objc_opt_class();
    v4->_token = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"token");
    v12 = objc_opt_class();
    v4->_sessionID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"sessionID");
    v14 = objc_opt_class();
    v4->_combinedSecret = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"combinedSecret");
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v21 = objc_msgSend_setWithObjects_(v16, v19, v17, v20, v18, 0);
    v4->_mediaList = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v22, v21, @"mediaList");
  }

  return v4;
}

- (CLEEDUploadRequest)initWithDictionary:(id)dictionary decryptedRequestData:(id)data baseURL:(id)l error:(int64_t *)error
{
  v147 = *MEMORY[0x1E69E9840];
  *error = 0;
  v9 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", data);
  v110 = objc_msgSend_objectForKey_(dictionary, v10, @"partner_ID", v11);
  v109 = objc_msgSend_objectForKey_(dictionary, v12, @"psap_ID", v13);
  v108 = objc_msgSend_objectForKey_(dictionary, v14, @"geofence_ID", v15);
  v18 = objc_msgSend_valueForKey_(dictionary, v16, @"timestamp", v17);
  SessionStartTimeFromDict = objc_msgSend_getSessionStartTimeFromDict_(CLEEDRequest, v19, dictionary, v20);
  v24 = objc_msgSend_getCallIDFromDict_(CLEEDRequest, v22, dictionary, v23);
  SessionIDWithPhoneNumber_sessionStartTime = objc_msgSend_getSessionIDWithPhoneNumber_sessionStartTime_(CLEEDCryptoUtilities, v25, v24, SessionStartTimeFromDict);
  errorCopy = error;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v26 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_msgSend_integerValue(v18, v27, v28, v29);
    v34 = objc_msgSend_UTF8String(v24, v31, v32, v33);
    v37 = objc_msgSend_base64EncodedStringWithOptions_(SessionIDWithPhoneNumber_sessionStartTime, v35, 0, v36);
    *buf = 136448259;
    v130 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v131 = 2114;
    v132 = v9;
    v133 = 2114;
    v134 = v110;
    v135 = 2114;
    v136 = v109;
    v137 = 2114;
    v138 = v108;
    v139 = 2050;
    v140 = v30;
    v141 = 2050;
    v142 = SessionStartTimeFromDict;
    v143 = 2081;
    v144 = v34;
    v145 = 2081;
    v146 = objc_msgSend_UTF8String(v37, v38, v39, v40);
    _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld, sessionStartTime:%{public}lld, receivedCallID:%{private}s, sessionID:%{private}s", buf, 0x5Cu);
  }

  v41 = sub_19B87DD40();
  if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v47 = qword_1EAFE4718;
    v48 = objc_msgSend_integerValue(v18, v44, v45, v46);
    v52 = objc_msgSend_UTF8String(v24, v49, v50, v51);
    v55 = objc_msgSend_base64EncodedStringWithOptions_(SessionIDWithPhoneNumber_sessionStartTime, v53, 0, v54);
    v111 = 136448259;
    v112 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v113 = 2114;
    v114 = v9;
    v115 = 2114;
    v116 = v110;
    v117 = 2114;
    v118 = v109;
    v119 = 2114;
    v120 = v108;
    v121 = 2050;
    v122 = v48;
    v123 = 2050;
    v124 = SessionStartTimeFromDict;
    v125 = 2081;
    v126 = v52;
    v127 = 2081;
    v128 = objc_msgSend_UTF8String(v55, v56, v57, v58);
    v59 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v47, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld, sessionStartTime:%{public}lld, receivedCallID:%{private}s, sessionID:%{private}s", &v111, 92);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v59);
    if (v59 != buf)
    {
      free(v59);
    }
  }

  v60 = objc_msgSend_objectForKey_(data, v42, @"request_type", v43);
  v63 = objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v61, v60, v62);
  v66 = objc_msgSend_objectForKey_(data, v64, @"media_upload_path", v65);
  v106 = objc_msgSend_objectForKey_(data, v67, @"authentication_token", v68);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v69 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447235;
    v130 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v131 = 2114;
    v132 = v60;
    v133 = 2050;
    v134 = v63;
    v135 = 2113;
    v136 = v66;
    v137 = 2113;
    v138 = v106;
    _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativeURL:%{private}@, authenticationToken:%{private}@", buf, 0x34u);
  }

  v70 = sub_19B87DD40();
  if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v111 = 136447235;
    v112 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v113 = 2114;
    v114 = v60;
    v115 = 2050;
    v116 = v63;
    v117 = 2113;
    v118 = v66;
    v119 = 2113;
    v120 = v106;
    v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativeURL:%{private}@, authenticationToken:%{private}@", &v111, 52);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v74);
    if (v74 != buf)
    {
      free(v74);
    }
  }

  if (!v9 || !v110 || !v109 || !v108 || !v24 || !SessionIDWithPhoneNumber_sessionStartTime || !v18 || !v66 || !v63 || !v106)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v75 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v130 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid,early return", buf, 0xCu);
    }

    v76 = sub_19B87DD40();
    if ((*(v76 + 160) & 0x80000000) == 0 || (*(v76 + 164) & 0x80000000) == 0 || (*(v76 + 168) & 0x80000000) == 0 || *(v76 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v111 = 136446210;
      v112 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
      v77 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of the expected parameters is not received or valid,early return", &v111, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v77);
      if (v77 != buf)
      {
        free(v77);
      }
    }

    *errorCopy = 1;
  }

  if (v9)
  {
    v78 = objc_alloc(MEMORY[0x1E696AFB0]);
    v81 = objc_msgSend_initWithUUIDString_(v78, v79, v9, v80);
  }

  else
  {
    v81 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v71, v72, v73);
  }

  v85 = v81;
  v86 = MEMORY[0x1E695DF00];
  if (v18)
  {
    v87 = objc_msgSend_integerValue(v18, v82, v83, v84);
    v91 = objc_msgSend_dateWithTimeIntervalSince1970_(v86, v88, v89, v90, v87);
  }

  else
  {
    v91 = objc_msgSend_date(MEMORY[0x1E695DF00], v82, v83, v84);
  }

  v92 = v91;
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v93 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v130 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v131 = 2114;
    v132 = v85;
    v133 = 2114;
    v134 = v92;
    _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
  }

  v94 = sub_19B87DD40();
  if (*(v94 + 160) > 1 || *(v94 + 164) > 1 || *(v94 + 168) > 1 || *(v94 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v111 = 136446722;
    v112 = "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]";
    v113 = 2114;
    v114 = v85;
    v115 = 2114;
    v116 = v92;
    v96 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v111, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:decryptedRequestData:baseURL:error:]", "CoreLocation: %s\n", v96);
    if (v96 != buf)
    {
      free(v96);
    }
  }

  if (v109)
  {
    v97 = v109;
  }

  else
  {
    v97 = @"UnknownPSAPID";
  }

  if (v110)
  {
    v98 = v110;
  }

  else
  {
    v98 = @"UnknownPartnerID";
  }

  if (v108)
  {
    v99 = v108;
  }

  else
  {
    v99 = @"UnknownGeofenceID";
  }

  if (*errorCopy)
  {
    v100 = 7;
  }

  else
  {
    v100 = 3;
  }

  v101 = @"AuthenticationToken";
  if (v106)
  {
    v101 = v106;
  }

  return objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_state_baseURL_relativePath_token_sessionID_combinedSecret_mediaList_(self, v95, v85, v97, v98, v99, v92, v100, l, v66, v101, SessionIDWithPhoneNumber_sessionStartTime, 0, 0);
}

- (NSString)uploadURL
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_baseURL(self, a2, v2, v3);
  v10 = objc_msgSend_relativePath(self, v7, v8, v9);
  return objc_msgSend_stringWithFormat_(v5, v11, @"https://%@/%@", v12, v6, v10);
}

- (void)setUploadURL:(id)l
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
    v76 = "[CLEEDUploadRequest setUploadURL:]";
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
    v70 = "[CLEEDUploadRequest setUploadURL:]";
    v71 = 2114;
    v72 = objc_msgSend_baseURL(self, v61, v62, v63);
    v73 = 2114;
    v74 = objc_msgSend_relativePath(self, v65, v66, v67);
    v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v64, 2, "#EED2FWK,%{public}s,baseURL:%{public}@,relativePath:%{public}@", &v69, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest setUploadURL:]", "CoreLocation: %s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }
}

- (id)getRequestDict
{
  v84 = *MEMORY[0x1E69E9840];
  v78.receiver = self;
  v78.super_class = CLEEDUploadRequest;
  getRequestDict = [(CLEEDRequest *)&v78 getRequestDict];
  if (!getRequestDict)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v66 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v83 = "[CLEEDUploadRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil uploadRequestDict, early return", buf, 0xCu);
    }

    v67 = sub_19B87DD40();
    if ((*(v67 + 160) & 0x80000000) != 0 && (*(v67 + 164) & 0x80000000) != 0 && (*(v67 + 168) & 0x80000000) != 0 && !*(v67 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v80 = 136446210;
    v81 = "[CLEEDUploadRequest getRequestDict]";
    v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil uploadRequestDict, early return", &v80, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest getRequestDict]", "CoreLocation: %s\n", v68);
    if (v68 == buf)
    {
      return 0;
    }

    v69 = v68;
    goto LABEL_36;
  }

  v7 = getRequestDict;
  if (!objc_msgSend_sessionID(self, v4, v5, v6))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v70 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v83 = "[CLEEDUploadRequest getRequestDict]";
      _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil sessionID, early return", buf, 0xCu);
    }

    v71 = sub_19B87DD40();
    if ((*(v71 + 160) & 0x80000000) != 0 && (*(v71 + 164) & 0x80000000) != 0 && (*(v71 + 168) & 0x80000000) != 0 && !*(v71 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v80 = 136446210;
    v81 = "[CLEEDUploadRequest getRequestDict]";
    v72 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil sessionID, early return", &v80, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest getRequestDict]", "CoreLocation: %s\n", v72);
    if (v72 == buf)
    {
      return 0;
    }

    v69 = v72;
LABEL_36:
    free(v69);
    return 0;
  }

  v11 = objc_msgSend_sessionID(self, v8, v9, v10);
  objc_msgSend_setObject_forKey_(v7, v12, v11, @"EEDSessionID");
  v16 = objc_msgSend_relativePath(self, v13, v14, v15);
  objc_msgSend_setObject_forKey_(v7, v17, v16, @"media_upload_path");
  v21 = objc_msgSend_token(self, v18, v19, v20);
  objc_msgSend_setObject_forKey_(v7, v22, v21, @"authentication_token");
  v26 = objc_msgSend_baseURL(self, v23, v24, v25);
  objc_msgSend_setObject_forKey_(v7, v27, v26, @"EEDRequestBaseURL");
  v28 = MEMORY[0x1E696AD98];
  v32 = objc_msgSend_numDuplicateMediaSelections(self, v29, v30, v31);
  v35 = objc_msgSend_numberWithInteger_(v28, v33, v32, v34);
  objc_msgSend_setObject_forKey_(v7, v36, v35, @"EEDNumDuplicateMediaSelections");
  if (objc_msgSend_combinedSecret(self, v37, v38, v39))
  {
    v43 = objc_msgSend_combinedSecret(self, v40, v41, v42);
    objc_msgSend_setObject_forKey_(v7, v44, v43, @"EEDCombinedSecret");
  }

  v45 = objc_msgSend_mediaList(self, v40, v41, v42);
  if (objc_msgSend_count(v45, v46, v47, v48))
  {
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v53 = objc_msgSend_mediaList(self, v50, v51, v52);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v74, v79, 16);
    if (v55)
    {
      v59 = v55;
      v60 = *v75;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v75 != v60)
          {
            objc_enumerationMutation(v53);
          }

          MediaItemDict = objc_msgSend_createMediaItemDict(*(*(&v74 + 1) + 8 * i), v56, v57, v58);
          v63 = MediaItemDict;
          objc_msgSend_addObject_(v49, v64, MediaItemDict, v65);
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v74, v79, 16);
      }

      while (v59);
    }

    objc_msgSend_setValue_forKey_(v7, v56, v49, @"EEDMediaItemSet");
  }

  return v7;
}

- (CLEEDUploadRequest)initWithDictionary:(id)dictionary error:(int64_t *)error
{
  v274 = *MEMORY[0x1E69E9840];
  if (dictionary && error)
  {
    *error = 0;
    v7 = objc_msgSend_objectForKey_(dictionary, a2, @"request_ID", error);
    v244 = objc_msgSend_objectForKey_(dictionary, v8, @"partner_ID", v9);
    v243 = objc_msgSend_objectForKey_(dictionary, v10, @"psap_ID", v11);
    v242 = objc_msgSend_objectForKey_(dictionary, v12, @"geofence_ID", v13);
    v16 = objc_msgSend_objectForKey_(dictionary, v14, @"timestamp", v15);
    selfCopy = self;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v17 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447490;
      v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v264 = 2114;
      v265 = v7;
      v266 = 2114;
      v267 = v244;
      v268 = 2114;
      v269 = v243;
      v270 = 2114;
      v271 = v242;
      v272 = 2050;
      v273 = objc_msgSend_integerValue(v16, v18, v19, v20);
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", buf, 0x3Eu);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v27 = qword_1EAFE4718;
      v250 = 136447490;
      v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v252 = 2114;
      v253 = v7;
      v254 = 2114;
      v255 = v244;
      v256 = 2114;
      v257 = v243;
      v258 = 2114;
      v259 = v242;
      v260 = 2050;
      v261 = objc_msgSend_integerValue(v16, v24, v25, v26);
      v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v27, 0, "#EED2FWK,%{public}s,requestID:%{public}@, partnerID:%{public}@, psapID:%{public}@, geofenceID:%{public}@, timestamp:%{public}ld", &v250, 62);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v29 = objc_msgSend_objectForKey_(dictionary, v22, @"request_type", v23);
    v32 = objc_msgSend_toCLEEDRequestType_(CLEEDRequest, v30, v29, v31);
    v241 = objc_msgSend_objectForKey_(dictionary, v33, @"media_upload_path", v34);
    v240 = objc_msgSend_objectForKey_(dictionary, v35, @"authentication_token", v36);
    errorCopy = error;
    v239 = objc_msgSend_objectForKey_(dictionary, v37, @"EEDRequestBaseURL", v38);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v39 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447491;
      v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v264 = 2114;
      v265 = v29;
      v266 = 2050;
      v267 = v32;
      v268 = 2113;
      v269 = v241;
      v270 = 2113;
      v271 = v240;
      v272 = 2113;
      v273 = v239;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativeURL:%{private}@, authenticationToken:%{private}@, baseURL:%{private}@", buf, 0x3Eu);
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v250 = 136447491;
      v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v252 = 2114;
      v253 = v29;
      v254 = 2050;
      v255 = v32;
      v256 = 2113;
      v257 = v241;
      v258 = 2113;
      v259 = v240;
      v260 = 2113;
      v261 = v239;
      v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestTypeString:%{public}@, requestType:%{public}ld, relativeURL:%{private}@, authenticationToken:%{private}@, baseURL:%{private}@", &v250, 62);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    v44 = objc_msgSend_objectForKey_(dictionary, v41, @"EEDSessionID", v42);
    v47 = objc_msgSend_objectForKey_(dictionary, v45, @"EEDCombinedSecret", v46);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v48 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v51 = objc_msgSend_base64EncodedStringWithOptions_(v44, v49, 0, v50);
      v55 = objc_msgSend_UTF8String(v51, v52, v53, v54);
      v58 = objc_msgSend_base64EncodedStringWithOptions_(v47, v56, 0, v57);
      v62 = objc_msgSend_UTF8String(v58, v59, v60, v61);
      *buf = 136446723;
      v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v264 = 2081;
      v265 = v55;
      v266 = 2081;
      v267 = v62;
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,sessionID:%{private}s, combinedSecret:%{private}s", buf, 0x20u);
    }

    v63 = sub_19B87DD40();
    if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v66 = qword_1EAFE4718;
      v67 = objc_msgSend_base64EncodedStringWithOptions_(v44, v64, 0, v65);
      v71 = objc_msgSend_UTF8String(v67, v68, v69, v70);
      v74 = objc_msgSend_base64EncodedStringWithOptions_(v47, v72, 0, v73);
      v78 = objc_msgSend_UTF8String(v74, v75, v76, v77);
      v250 = 136446723;
      v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v252 = 2081;
      v253 = v71;
      v254 = 2081;
      v255 = v78;
      v79 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v66, 0, "#EED2FWK,%{public}s,sessionID:%{private}s, combinedSecret:%{private}s", &v250, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v79);
      if (v79 != buf)
      {
        free(v79);
      }
    }

    if (v7 && v244 && v243 && v242 && v16 && v241 && v32 && v240 && v239 && v44)
    {
      v80 = objc_alloc(MEMORY[0x1E696AFB0]);
      v83 = objc_msgSend_initWithUUIDString_(v80, v81, v7, v82);
      v84 = MEMORY[0x1E695DF00];
      v88 = objc_msgSend_integerValue(v16, v85, v86, v87);
      v92 = objc_msgSend_dateWithTimeIntervalSince1970_(v84, v89, v90, v91, v88);
      v93 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v94 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
        v264 = 2114;
        v265 = v83;
        v266 = 2114;
        v267 = v92;
        _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", buf, 0x20u);
      }

      v95 = sub_19B87DD40();
      if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v250 = 136446722;
        v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
        v252 = 2114;
        v253 = v83;
        v254 = 2114;
        v255 = v92;
        v98 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s,requestUUID:%{public}@, requestDate:%{public}@", &v250, 32);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v98);
        if (v98 != buf)
        {
          free(v98);
        }
      }

      v236 = v92;
      v99 = objc_msgSend_valueForKey_(dictionary, v96, @"EEDMediaItemSet", v97);
      if (objc_msgSend_count(v99, v100, v101, v102))
      {
        v106 = objc_msgSend_set(MEMORY[0x1E695DFA8], v103, v104, v105);
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v107, &v245, v249, 16);
        if (v108)
        {
          v109 = v108;
          v235 = v44;
          v110 = *v246;
          do
          {
            for (i = 0; i != v109; ++i)
            {
              if (*v246 != v110)
              {
                objc_enumerationMutation(v99);
              }

              MediaItemFromDict = objc_msgSend_createMediaItemFromDict_(CLEEDMediaItem, v103, *(*(&v245 + 1) + 8 * i), v105);
              v113 = MediaItemFromDict;
              if (MediaItemFromDict)
              {
                objc_msgSend_addObject_(v106, v103, MediaItemFromDict, v105);
              }
            }

            v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v103, &v245, v249, 16);
          }

          while (v109);
          v93 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
          v44 = v235;
        }
      }

      else
      {
        v106 = 0;
      }

      v121 = objc_msgSend_valueForKey_(dictionary, v103, @"EEDRequestState", v105);
      v125 = objc_msgSend_intValue(v121, v122, v123, v124);
      v127 = objc_msgSend_initWithID_psapID_partnerID_geofenceID_requestDate_state_baseURL_relativePath_token_sessionID_combinedSecret_mediaList_(selfCopy, v126, v83, v243, v244, v242, v236, v125, v239, v241, v240, v44, v47, v106);
      if (v127)
      {
        v117 = v127;
        v130 = objc_msgSend_valueForKey_(dictionary, v128, @"EEDRequestStatusAtFirstUserResponse", v129);
        v134 = objc_msgSend_intValue(v130, v131, v132, v133);
        objc_msgSend_setRequestStatusAtFirstUserResponse_(v117, v135, v134, v136);
        v139 = objc_msgSend_objectForKey_(dictionary, v137, @"EEDRequestTransmissionTime", v138);
        v143 = objc_msgSend_integerValue(v139, v140, v141, v142);
        objc_msgSend_setRequestTransmissionTime_(v117, v144, v143, v145);
        v148 = objc_msgSend_valueForKey_(dictionary, v146, @"EEDRequestReceivedTime", v147);
        objc_msgSend_doubleValue(v148, v149, v150, v151);
        objc_msgSend_setRequestReceivedTime_(v117, v152, v153, v154);
        v157 = objc_msgSend_valueForKey_(dictionary, v155, @"EEDReceivedTimeToFirstUserResponse", v156);
        objc_msgSend_doubleValue(v157, v158, v159, v160);
        objc_msgSend_setReceivedTimeToFirstUserResponse_(v117, v161, v162, v163);
        v166 = objc_msgSend_valueForKey_(dictionary, v164, @"EEDReceivedTimeToAcceptTime", v165);
        objc_msgSend_doubleValue(v166, v167, v168, v169);
        objc_msgSend_setReceivedTimeToAcceptTime_(v117, v170, v171, v172);
        v175 = objc_msgSend_objectForKey_(dictionary, v173, @"EEDNumMediaSelectIterations", v174);
        v179 = objc_msgSend_integerValue(v175, v176, v177, v178);
        objc_msgSend_setNumMediaSelectIterations_(v117, v180, v179, v181);
        v184 = objc_msgSend_objectForKey_(dictionary, v182, @"EEDNumDuplicateMediaSelections", v183);
        v188 = objc_msgSend_integerValue(v184, v185, v186, v187);
        objc_msgSend_setNumDuplicateMediaSelections_(v117, v189, v188, v190);
        v193 = objc_msgSend_objectForKey_(dictionary, v191, @"EEDRequestMetricSubmitted", v192);
        v197 = objc_msgSend_BOOLValue(v193, v194, v195, v196);
        objc_msgSend_setMetricSubmitted_(v117, v198, v197, v199);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v200 = *(v93 + 227);
        if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
        {
          v204 = objc_msgSend_state(v117, v201, v202, v203);
          v208 = objc_msgSend_mediaList(v117, v205, v206, v207);
          v212 = objc_msgSend_count(v208, v209, v210, v211);
          v213 = *errorCopy;
          *buf = 136447235;
          v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
          v264 = 2113;
          v265 = v117;
          v266 = 2050;
          v267 = v204;
          v268 = 2050;
          v269 = v212;
          v270 = 2050;
          v271 = v213;
          _os_log_impl(&dword_19B873000, v200, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, constructed CLEEDUploadRequest:%{private}@, state:%{public}ld, mediaListCount:%{public}lu, error:%{public}ld", buf, 0x34u);
        }

        v214 = sub_19B87DD40();
        if (*(v214 + 160) > 1 || *(v214 + 164) > 1 || *(v214 + 168) > 1 || *(v214 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v218 = *(v93 + 227);
          v219 = objc_msgSend_state(v117, v215, v216, v217);
          v223 = objc_msgSend_mediaList(v117, v220, v221, v222);
          v227 = objc_msgSend_count(v223, v224, v225, v226);
          v228 = *errorCopy;
          v250 = 136447235;
          v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
          v252 = 2113;
          v253 = v117;
          v254 = 2050;
          v255 = v219;
          v256 = 2050;
          v257 = v227;
          v258 = 2050;
          v259 = v228;
          v229 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v218, 0, "#EED2FWK,%{public}s, constructed CLEEDUploadRequest:%{private}@, state:%{public}ld, mediaListCount:%{public}lu, error:%{public}ld", &v250, 52);
          sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v229);
          if (v229 != buf)
          {
            free(v229);
          }
        }
      }

      else
      {
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v230 = *(v93 + 227);
        if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
          _os_log_impl(&dword_19B873000, v230, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil request, early return", buf, 0xCu);
        }

        v231 = sub_19B87DD40();
        if ((*(v231 + 160) & 0x80000000) == 0 || (*(v231 + 164) & 0x80000000) == 0 || (*(v231 + 168) & 0x80000000) == 0 || *(v231 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
          }

          v232 = *(v93 + 227);
          v250 = 136446210;
          v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
          v233 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v232, 16, "#EED2FWK,%{public}s,nil request, early return", &v250, 12);
          sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v233);
          if (v233 != buf)
          {
            free(v233);
          }
        }

        v117 = 0;
        *errorCopy = 1;
      }
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v118 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
        _os_log_impl(&dword_19B873000, v118, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more of the expected parameters is not available", buf, 0xCu);
      }

      v119 = sub_19B87DD40();
      if ((*(v119 + 160) & 0x80000000) == 0 || (*(v119 + 164) & 0x80000000) == 0 || (*(v119 + 168) & 0x80000000) == 0 || *(v119 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v250 = 136446210;
        v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
        v120 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more of the expected parameters is not available", &v250, 12);
        sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v120);
        if (v120 != buf)
        {
          free(v120);
        }
      }

      v117 = 0;
      *errorCopy = 1;
    }
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v114 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v263 = "[CLEEDUploadRequest initWithDictionary:error:]";
      _os_log_impl(&dword_19B873000, v114, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil uploadRequestDict or CLEEDHelperError, early return", buf, 0xCu);
    }

    v115 = sub_19B87DD40();
    if ((*(v115 + 160) & 0x80000000) == 0 || (*(v115 + 164) & 0x80000000) == 0 || (*(v115 + 168) & 0x80000000) == 0 || *(v115 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v250 = 136446210;
      v251 = "[CLEEDUploadRequest initWithDictionary:error:]";
      v116 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil uploadRequestDict or CLEEDHelperError, early return", &v250, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest initWithDictionary:error:]", "CoreLocation: %s\n", v116);
      if (v116 != buf)
      {
        free(v116);
      }
    }

    v117 = 0;
    *error = 1;
  }

  return v117;
}

- (void)updateRequestWithMediaItemList:(id)list
{
  v101 = *MEMORY[0x1E69E9840];
  if (list)
  {
    v6 = objc_msgSend_numMediaSelectIterations(self, a2, list, v3);
    objc_msgSend_setNumMediaSelectIterations_(self, v7, v6 + 1, v8);
    v12 = objc_msgSend_count(list, v9, v10, v11);
    v16 = objc_msgSend_mediaList(self, v13, v14, v15);
    objc_msgSend_minusSet_(list, v17, v16, v18);
    v22 = v12 - objc_msgSend_count(list, v19, v20, v21);
    v26 = objc_msgSend_mediaList(self, v23, v24, v25);
    objc_msgSend_unionSet_(v26, v27, list, v28);
    v32 = objc_msgSend_numDuplicateMediaSelections(self, v29, v30, v31);
    objc_msgSend_setNumDuplicateMediaSelections_(self, v33, v22 + v32, v34);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v35 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_msgSend_count(list, v36, v37, v38);
      v43 = objc_msgSend_numDuplicateMediaSelections(self, v40, v41, v42);
      v47 = objc_msgSend_mediaList(self, v44, v45, v46);
      *buf = 136447490;
      v90 = "[CLEEDUploadRequest updateRequestWithMediaItemList:]";
      v91 = 2048;
      v92 = v12;
      v93 = 2048;
      v94 = v39;
      v95 = 1024;
      v96 = v43;
      v97 = 2048;
      v98 = objc_msgSend_count(v47, v48, v49, v50);
      v99 = 1024;
      v100 = objc_msgSend_numMediaSelectIterations(self, v51, v52, v53);
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s,itemsBeforeRemovingDuplicates:%lu, mediaItemList.count:%lu, numDuplicateMediaSelections:%d, totalItems:%ld, numMediaSelectIterations:%d", buf, 0x36u);
    }

    v54 = sub_19B87DD40();
    if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = qword_1EAFE4718;
    v59 = objc_msgSend_count(list, v55, v56, v57);
    v63 = objc_msgSend_numDuplicateMediaSelections(self, v60, v61, v62);
    v67 = objc_msgSend_mediaList(self, v64, v65, v66);
    v77 = 136447490;
    v78 = "[CLEEDUploadRequest updateRequestWithMediaItemList:]";
    v79 = 2048;
    v80 = v12;
    v81 = 2048;
    v82 = v59;
    v83 = 1024;
    v84 = v63;
    v85 = 2048;
    v86 = objc_msgSend_count(v67, v68, v69, v70);
    v87 = 1024;
    v88 = objc_msgSend_numMediaSelectIterations(self, v71, v72, v73);
    v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v58, 0, "#EED2FWK,%{public}s,itemsBeforeRemovingDuplicates:%lu, mediaItemList.count:%lu, numDuplicateMediaSelections:%d, totalItems:%ld, numMediaSelectIterations:%d", &v77, 54);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDUploadRequest updateRequestWithMediaItemList:]", "CoreLocation: %s\n", v74);
    if (v74 == buf)
    {
      return;
    }

LABEL_24:
    free(v74);
    return;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v75 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v90 = "[CLEEDUploadRequest updateRequestWithMediaItemList:]";
    _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil input parameter(s), early return", buf, 0xCu);
  }

  v76 = sub_19B87DD40();
  if ((*(v76 + 160) & 0x80000000) == 0 || (*(v76 + 164) & 0x80000000) == 0 || (*(v76 + 168) & 0x80000000) == 0 || *(v76 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v77 = 136446210;
    v78 = "[CLEEDUploadRequest updateRequestWithMediaItemList:]";
    v74 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil input parameter(s), early return", &v77, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDUploadRequest updateRequestWithMediaItemList:]", "CoreLocation: %s\n", v74);
    if (v74 != buf)
    {
      goto LABEL_24;
    }
  }
}

@end