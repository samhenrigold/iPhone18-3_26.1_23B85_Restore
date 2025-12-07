@interface BLSecureOfflineKeyDeliveryRequest
- (BLSecureOfflineKeyDeliveryRequest)init;
- (BLSecureOfflineKeyDeliveryRequest)initWithRequestContext:(id)context;
- (id)_deviceGUID;
- (void)_createSPCData;
- (void)_ksq_fetchCKCDataUsingSPC:(id)c forKeyRequest:(id)request;
- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BLSecureOfflineKeyDeliveryRequest

- (BLSecureOfflineKeyDeliveryRequest)initWithRequestContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_init(self, v6, v7);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 320), context);
  }

  return v9;
}

- (BLSecureOfflineKeyDeliveryRequest)init
{
  v11.receiver = self;
  v11.super_class = BLSecureOfflineKeyDeliveryRequest;
  v2 = [(ICRequestOperation *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.iBooks.HLSKeySession", v3);
    keySessionQueue = v2->_keySessionQueue;
    v2->_keySessionQueue = v4;

    v7 = objc_msgSend_contentKeySessionWithKeySystem_(MEMORY[0x277CE64D8], v6, *MEMORY[0x277CE5D20]);
    keySession = v2->_keySession;
    v2->_keySession = v7;

    objc_msgSend_setDelegate_queue_(v2->_keySession, v9, v2, v2->_keySessionQueue);
  }

  return v2;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_bl_sharedHLSKeyRequestOperationQueue(MEMORY[0x277CCABD8], v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D13498;
  v10[3] = &unk_278D158A0;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_performRequestOnOperationQueue_withCompletionHandler_(self, v9, v7, v10);
}

- (void)execute
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_keyCertificateURL && self->_keyServerURL)
  {
    v3 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_title(self->_mediaItem, v4, v5);
      *buf = 138412290;
      selfCopy = v6;
      _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_DEFAULT, "Fetching key request certificate for '%@'", buf, 0xCu);
    }

    v9 = objc_msgSend_highPrioritySession(MEMORY[0x277D7FC90], v7, v8);
    v10 = objc_alloc(MEMORY[0x277CCAB70]);
    v12 = objc_msgSend_initWithURL_(v10, v11, self->_keyCertificateURL);
    objc_msgSend_setHTTPMethod_(v12, v13, @"GET");
    v14 = objc_alloc(MEMORY[0x277D7FC38]);
    v16 = objc_msgSend_initWithURLRequest_requestContext_(v14, v15, v12, self->_requestContext);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_241D137E0;
    v23[3] = &unk_278D15A38;
    v23[4] = self;
    objc_msgSend_enqueueDataRequest_withCompletionHandler_(v9, v17, v16, v23);
  }

  else
  {
    v18 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      keyCertificateURL = self->_keyCertificateURL;
      keyServerURL = self->_keyServerURL;
      *buf = 138543874;
      selfCopy = self;
      v26 = 2114;
      v27 = keyCertificateURL;
      v28 = 2114;
      v29 = keyServerURL;
      _os_log_impl(&dword_241D0D000, v18, OS_LOG_TYPE_ERROR, "[%{public}@]: Missing certificate URL: %{public}@, key server URL: %{public}@", buf, 0x20u);
    }

    v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v21, *MEMORY[0x277D7F900], -7101, 0);
    objc_msgSend_finishWithError_(self, v22, v9);
  }
}

- (id)_deviceGUID
{
  if (qword_27EC71338 != -1)
  {
    sub_241D182B4();
  }

  v3 = qword_27EC71330;

  return v3;
}

- (void)_createSPCData
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_title(self->_mediaItem, v4, v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_DEFAULT, "Creating SPC data for '%@'", &v8, 0xCu);
  }

  objc_msgSend_processContentKeyRequestWithIdentifier_initializationData_options_(self->_keySession, v7, self->_identity, 0, 0);
}

- (void)_ksq_fetchCKCDataUsingSPC:(id)c forKeyRequest:(id)request
{
  v90[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  if (cCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v10 = objc_msgSend_initWithObjectsAndKeys_(v8, v9, &unk_2853E1F60, @"id", 0);
    v15 = objc_msgSend_identity(self, v11, v12);
    if (v15)
    {
      objc_msgSend_setObject_forKey_(v10, v13, v15, @"uri");
    }

    v76 = v15;
    if (objc_msgSend_length(cCopy, v13, v14))
    {
      v17 = objc_msgSend_base64EncodedStringWithOptions_(cCopy, v16, 0);
      if (objc_msgSend_length(v17, v18, v19))
      {
        objc_msgSend_setObject_forKey_(v10, v20, v17, @"spc");
      }
    }

    objc_msgSend_setObject_forKey_(v10, v16, MEMORY[0x277CBEC38], @"offline");
    v25 = objc_msgSend__deviceGUID(self, v21, v22);
    if (v25)
    {
      objc_msgSend_setObject_forKey_(v10, v23, v25, @"guid");
    }

    v75 = v25;
    v26 = objc_msgSend_deviceInfo(self->_requestContext, v23, v24);
    isWatch = objc_msgSend_isWatch(v26, v27, v28);

    if (isWatch)
    {
      v32 = objc_msgSend_sharedMonitor(MEMORY[0x277D7FBA8], v30, v31);
      v35 = objc_msgSend_pairedDeviceMediaGUID(v32, v33, v34);

      if (objc_msgSend_length(v35, v36, v37))
      {
        objc_msgSend_setObject_forKey_(v10, v38, v35, @"companion-guid");
      }

      else
      {
        v42 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_241D0D000, v42, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain companion guid.", buf, 0xCu);
        }
      }
    }

    v89 = @"fairplay-streaming-request";
    v88[0] = &unk_2853E1F78;
    v87[0] = @"version";
    v87[1] = @"streaming-keys";
    v86 = v10;
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, &v86, 1);
    v88[1] = v43;
    v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v88, v87, 2);
    v90[0] = v45;
    v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v90, &v89, 1);

    v79 = 0;
    v49 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v48, v47, 0, &v79);
    v50 = v79;
    v51 = BLHLSKeyFetchingLog();
    v52 = v51;
    if (!v49 || v50)
    {
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v84 = 2112;
        v85 = v50;
        _os_log_impl(&dword_241D0D000, v52, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to serialize key server request data with error:  %@", buf, 0x16u);
      }

      v70 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CF32E0];
      if (v50)
      {
        v80 = *MEMORY[0x277CCA7E8];
        v81 = v50;
        v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, &v81, &v80, 1);
        v58 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v73, v71, 2, v72);
      }

      else
      {
        v58 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v69, *MEMORY[0x277CF32E0], 2, 0);
      }

      objc_msgSend_finishWithError_(self, v74, v58);
    }

    else
    {
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_msgSend_title(self->_mediaItem, v53, v54);
        *buf = 138412290;
        selfCopy3 = v55;
        _os_log_impl(&dword_241D0D000, v52, OS_LOG_TYPE_DEFAULT, "Performing offline key request for '%@'", buf, 0xCu);
      }

      v56 = objc_alloc(MEMORY[0x277CCAB70]);
      v58 = objc_msgSend_initWithURL_(v56, v57, self->_keyServerURL);
      objc_msgSend_setHTTPBody_(v58, v59, v49);
      objc_msgSend_setHTTPMethod_(v58, v60, @"POST");
      objc_msgSend_setValue_forHTTPHeaderField_(v58, v61, *MEMORY[0x277D7F908], *MEMORY[0x277D7F918]);
      v62 = objc_alloc(MEMORY[0x277D7FC38]);
      v64 = objc_msgSend_initWithURLRequest_requestContext_(v62, v63, v58, self->_requestContext);
      v67 = objc_msgSend_highPrioritySession(MEMORY[0x277D7FC90], v65, v66);
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = sub_241D14114;
      v77[3] = &unk_278D15A88;
      v77[4] = self;
      v78 = requestCopy;
      objc_msgSend_enqueueDataRequest_withCompletionHandler_(v67, v68, v64, v77);
    }
  }

  else
  {
    v39 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_241D0D000, v39, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to generate server playback context data", buf, 0xCu);
    }

    v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v40, *MEMORY[0x277CF32E0], 2, 0);
    objc_msgSend_finishWithError_(self, v41, v10);
  }
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_INFO, "Content key request provided", buf, 2u);
  }

  if (self->_activeKeyRequest)
  {
    v8 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_DEFAULT, "Skipping provided content key request", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_activeKeyRequest, request);
    v13 = 0;
    v10 = objc_msgSend_respondByRequestingPersistableContentKeyRequestAndReturnError_(requestCopy, v9, &v13);
    v8 = v13;
    if ((v10 & 1) == 0)
    {
      v11 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_ERROR, "Request for persistable content key request failed with error:  %@", buf, 0xCu);
      }

      objc_msgSend_finishWithError_(self, v12, v8);
    }
  }
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "Persistable content key request provided", buf, 2u);
  }

  if (self->_activePersistableKeyRequest)
  {
    v8 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_DEFAULT, "Skipping provided persistable content key request", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_activePersistableKeyRequest, request);
    v8 = objc_msgSend_dataUsingEncoding_(self->_identity, v9, 4);
    certificateData = self->_certificateData;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241D14C7C;
    v12[3] = &unk_278D15AB0;
    v12[4] = self;
    v13 = requestCopy;
    objc_msgSend_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler_(v13, v11, certificateData, v8, 0, v12);
  }
}

- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  if (self->_activeKeyRequest == requestCopy || self->_activePersistableKeyRequest == requestCopy)
  {
    v9 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_msgSend_title(self->_mediaItem, v10, v11);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&dword_241D0D000, v9, OS_LOG_TYPE_ERROR, "Content key request failed for '%@' with error:  %@", &v14, 0x16u);
    }

    objc_msgSend_finishWithError_(self, v13, errorCopy);
  }
}

@end