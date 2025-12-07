@interface CLEEDHelper
+ (int64_t)validateServerCertificateChallenge:(id)challenge;
- (CLEEDHelper)initWithDelegate:(id)delegate queue:(id)queue;
- (void)cleanup;
- (void)dealloc;
- (void)fetchAdrPreCachingStatusWithCompletion:(id)completion;
- (void)fetchAllPendingRequestsWithCompletion:(id)completion;
- (void)fetchCloakingKeyWithCompletion:(id)completion;
- (void)fetchCurrentMediaUploadRequestWithCompletion:(id)completion;
- (void)fetchCurrentStreamingRequestWithCompletion:(id)completion;
- (void)fetchEmergencyContactNamesWithCompletion:(id)completion;
- (void)fetchMitigationsWithCompletion:(id)completion;
- (void)fetchPreCachedAdrEnablementStatusWithCompletion:(id)completion;
- (void)handleInterruption;
- (void)handleRemoteProxyError:(id)error forProcessIdentifier:(int)identifier;
- (void)handleResponse:(BOOL)response forRequest:(id)request completion:(id)completion;
- (void)mediaUploadList:(id)list forRequestID:(id)d completion:(id)completion;
- (void)notifyHelperInvalidation;
- (void)notifyMitigationNeeded:(id)needed;
- (void)notifyNewRequestAvailable;
- (void)streamingSessionEndedForRequestID:(id)d completion:(id)completion;
@end

@implementation CLEEDHelper

- (CLEEDHelper)initWithDelegate:(id)delegate queue:(id)queue
{
  v88 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v83 = "[CLEEDHelper initWithDelegate:queue:]";
    v84 = 2114;
    delegateCopy = delegate;
    v86 = 2114;
    queueCopy = queue;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[Delegate:%{public}@,Queue:%{public}@]", buf, 0x20u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v76 = 136446722;
    v77 = "[CLEEDHelper initWithDelegate:queue:]";
    v78 = 2114;
    delegateCopy2 = delegate;
    v80 = 2114;
    queueCopy2 = queue;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[Delegate:%{public}@,Queue:%{public}@]", &v76, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v75.receiver = self;
  v75.super_class = CLEEDHelper;
  v10 = [(CLEEDHelper *)&v75 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_helperDelegate, delegate);
    objc_storeWeak(&v11->_fClientQueue, queue);
    v12 = objc_alloc(MEMORY[0x1E696B0B8]);
    v14 = objc_msgSend_initWithMachServiceName_options_(v12, v13, @"com.apple.locationd.eedhelper", 0);
    v11->_fConnection = v14;
    if (v14)
    {
      Weak = objc_loadWeak(&v11->_fClientQueue);
      objc_msgSend__setQueue_(v14, v16, Weak, v17);
      v20 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v18, &unk_1F0EAC808, v19);
      v68 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v21, &unk_1F0E92B20, v22);
      v23 = MEMORY[0x1E695DFD8];
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = objc_opt_class();
      v33 = objc_msgSend_setWithObjects_(v23, v31, v24, v32, v25, v26, v27, v28, v29, v30, 0);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v20, v34, v33, sel_fetchAllPendingRequestsWithCompletion_, 0, 1);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v20, v35, v33, sel_mediaUploadList_forRequestID_completion_, 0, 0);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v20, v36, v33, sel_fetchMitigationsWithCompletion_, 0, 1);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v68, v37, v33, sel_notifyMitigationNeeded_, 0, 0);
      objc_msgSend_setExportedInterface_(v11->_fConnection, v38, v68, v39);
      objc_msgSend_setExportedObject_(v11->_fConnection, v40, v11, v41);
      objc_msgSend_setRemoteObjectInterface_(v11->_fConnection, v42, v20, v43);
      objc_initWeak(&location, v11);
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = sub_19B8BAF90;
      v72[3] = &unk_1E753D310;
      objc_copyWeak(&v73, &location);
      objc_msgSend_setInvalidationHandler_(v11->_fConnection, v44, v72, v45);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = sub_19B8BB1B4;
      v70[3] = &unk_1E753D310;
      objc_copyWeak(&v71, &location);
      objc_msgSend_setInterruptionHandler_(v11->_fConnection, v46, v70, v47);
      objc_msgSend_activate(v11->_fConnection, v48, v49, v50);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v51 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v83 = "[CLEEDHelper initWithDelegate:queue:]";
        _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_INFO, "#EED2FWK,%{public}s, Finished setting-up connection parameters to EEDHelperService", buf, 0xCu);
      }

      v52 = sub_19B87DD40();
      if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v76 = 136446210;
        v77 = "[CLEEDHelper initWithDelegate:queue:]";
        v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 1, "#EED2FWK,%{public}s, Finished setting-up connection parameters to EEDHelperService", &v76, 12);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }
      }

      fConnection = v11->_fConnection;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = sub_19B8BB38C;
      v69[3] = &unk_1E753D138;
      v69[4] = v11;
      v57 = objc_msgSend_remoteObjectProxyWithErrorHandler_(fConnection, v53, v69, v54);
      objc_msgSend_connectToEEDHelper(v57, v58, v59, v60);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v61 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v83 = "[CLEEDHelper initWithDelegate:queue:]";
        _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_INFO, "#EED2FWK,%{public}s, connected to EEDHelperService", buf, 0xCu);
      }

      v62 = sub_19B87DD40();
      if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v76 = 136446210;
        v77 = "[CLEEDHelper initWithDelegate:queue:]";
        v63 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 1, "#EED2FWK,%{public}s, connected to EEDHelperService", &v76, 12);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }

      objc_destroyWeak(&v71);
      objc_destroyWeak(&v73);
      objc_destroyWeak(&location);
    }

    else
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v64 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v83 = "[CLEEDHelper initWithDelegate:queue:]";
        v84 = 2082;
        delegateCopy = "com.apple.locationd.eedhelper";
        _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, connection initialization failure to %{public}s", buf, 0x16u);
      }

      v65 = sub_19B87DD40();
      if ((*(v65 + 160) & 0x80000000) == 0 || (*(v65 + 164) & 0x80000000) == 0 || (*(v65 + 168) & 0x80000000) == 0 || *(v65 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v76 = 136446466;
        v77 = "[CLEEDHelper initWithDelegate:queue:]";
        v78 = 2082;
        delegateCopy2 = "com.apple.locationd.eedhelper";
        v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, connection initialization failure to %{public}s", &v76, 22);
        sub_19B885924("Generic", 1, 0, 0, "[CLEEDHelper initWithDelegate:queue:]", "CoreLocation: %s\n", v66);
        if (v66 != buf)
        {
          free(v66);
        }
      }

      return 0;
    }
  }

  return v11;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v3 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "[CLEEDHelper dealloc]";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v10 = 136446210;
    v11 = "[CLEEDHelper dealloc]";
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s", &v10, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper dealloc]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  objc_msgSend_cleanup(self, v5, v6, v7);
  v9.receiver = self;
  v9.super_class = CLEEDHelper;
  [(CLEEDHelper *)&v9 dealloc];
}

- (void)cleanup
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_helperDelegate(self, a2, v2, v3))
  {
    objc_msgSend_setHelperDelegate_(self, v5, 0, v7);
  }

  if (objc_msgSend_fConnection(self, v5, v6, v7))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = "[CLEEDHelper cleanup]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v18 = 136446210;
      v19 = "[CLEEDHelper cleanup]";
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s", &v18, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper cleanup]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v14 = objc_msgSend_fConnection(self, v10, v11, v12);
    objc_msgSend_invalidate(v14, v15, v16, v17);
  }
}

- (void)handleInterruption
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v3 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v20 = "[CLEEDHelper handleInterruption]";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v17 = 136446210;
    v18 = "[CLEEDHelper handleInterruption]";
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s", &v17, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper handleInterruption]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = objc_msgSend_fConnection(self, v5, v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B8BB9F4;
  v16[3] = &unk_1E753D138;
  v16[4] = self;
  v12 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v9, v10, v16, v11);
  objc_msgSend_connectToEEDHelper(v12, v13, v14, v15);
}

- (void)handleRemoteProxyError:(id)error forProcessIdentifier:(int)identifier
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v35 = "[CLEEDHelper handleRemoteProxyError:forProcessIdentifier:]";
    v36 = 1026;
    identifierCopy = identifier;
    v38 = 2114;
    v39 = objc_msgSend_localizedDescription(error, v8, v9, v10);
    v40 = 2114;
    v41 = objc_msgSend_localizedFailureReason(error, v11, v12, v13);
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s[pid:%{public}d]: %{public}@ %{public}@\n", buf, 0x26u);
  }

  v14 = sub_19B87DD40();
  if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v21 = qword_1EAFE4718;
    v26 = 136446978;
    v27 = "[CLEEDHelper handleRemoteProxyError:forProcessIdentifier:]";
    v28 = 1026;
    identifierCopy2 = identifier;
    v30 = 2114;
    v31 = objc_msgSend_localizedDescription(error, v18, v19, v20);
    v32 = 2114;
    v33 = objc_msgSend_localizedFailureReason(error, v22, v23, v24);
    v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v21, 16, "#EED2FWK,%{public}s[pid:%{public}d]: %{public}@ %{public}@\n", &v26, 38);
    sub_19B885924("Generic", 1, 0, 0, "[CLEEDHelper handleRemoteProxyError:forProcessIdentifier:]", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  objc_msgSend_cleanup(self, v15, v16, v17);
}

- (void)notifyHelperInvalidation
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_helperDelegate(self, a2, v2, v3))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v31 = "[CLEEDHelper notifyHelperInvalidation]";
      v32 = 2114;
      selfCopy = self;
      v34 = 2114;
      v35 = objc_msgSend_helperDelegate(self, v6, v7, v8);
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@]", buf, 0x20u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v16 = qword_1EAFE4718;
      v24 = 136446722;
      v25 = "[CLEEDHelper notifyHelperInvalidation]";
      v26 = 2114;
      selfCopy2 = self;
      v28 = 2114;
      v29 = objc_msgSend_helperDelegate(self, v13, v14, v15);
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 0, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@]", &v24, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper notifyHelperInvalidation]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = objc_msgSend_helperDelegate(self, v10, v11, v12);
    objc_msgSend_notifyHelperInvalidation(v18, v19, v20, v21);
    objc_msgSend_setHelperDelegate_(self, v22, 0, v23);
  }
}

- (void)notifyNewRequestAvailable
{
  v34 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_helperDelegate(self, a2, v2, v3))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v5 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v29 = "[CLEEDHelper notifyNewRequestAvailable]";
      v30 = 2114;
      selfCopy = self;
      v32 = 2114;
      v33 = objc_msgSend_helperDelegate(self, v6, v7, v8);
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@]", buf, 0x20u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v16 = qword_1EAFE4718;
      v22 = 136446722;
      v23 = "[CLEEDHelper notifyNewRequestAvailable]";
      v24 = 2114;
      selfCopy2 = self;
      v26 = 2114;
      v27 = objc_msgSend_helperDelegate(self, v13, v14, v15);
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 0, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@]", &v22, 32);
      sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper notifyNewRequestAvailable]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = objc_msgSend_helperDelegate(self, v10, v11, v12);
    objc_msgSend_notifyNewRequestAvailable(v18, v19, v20, v21);
  }
}

- (void)notifyMitigationNeeded:(id)needed
{
  v41 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_helperDelegate(self, a2, needed, v3))
  {
    objc_msgSend_helperDelegate(self, v6, v7, v8);
    if (objc_opt_respondsToSelector())
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v9 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v34 = "[CLEEDHelper notifyMitigationNeeded:]";
        v35 = 2114;
        selfCopy = self;
        v37 = 2114;
        v38 = objc_msgSend_helperDelegate(self, v10, v11, v12);
        v39 = 2114;
        neededCopy = needed;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@, mitigation:%{public}@]", buf, 0x2Au);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
        }

        v20 = qword_1EAFE4718;
        v25 = 136446978;
        v26 = "[CLEEDHelper notifyMitigationNeeded:]";
        v27 = 2114;
        selfCopy2 = self;
        v29 = 2114;
        v30 = objc_msgSend_helperDelegate(self, v17, v18, v19);
        v31 = 2114;
        neededCopy2 = needed;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v20, 0, "#EED2FWK,%{public}s [self:%{public}@, helperDelegate:%{public}@, mitigation:%{public}@]", &v25, 42);
        sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper notifyMitigationNeeded:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      v22 = objc_msgSend_helperDelegate(self, v14, v15, v16);
      objc_msgSend_notifyMitigationNeeded_(v22, v23, needed, v24);
    }
  }
}

- (void)fetchAllPendingRequestsWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAllPendingRequestsWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BC640;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8BC6B0;
    v25[3] = &unk_1E753D360;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchAllPendingRequestsWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, v24);
  }
}

- (void)fetchCurrentMediaUploadRequestWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentMediaUploadRequestWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BCBF4;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8BCC64;
    v25[3] = &unk_1E753D388;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchCurrentMediaUploadRequestWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, v24);
  }
}

- (void)fetchCurrentStreamingRequestWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCurrentStreamingRequestWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BD1B0;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8BD220;
    v25[3] = &unk_1E753D3B0;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchCurrentStreamingRequestWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, v24);
  }
}

- (void)fetchMitigationsWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchMitigationsWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchMitigationsWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchMitigationsWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BD764;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8BD7D4;
    v25[3] = &unk_1E753D3D8;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchMitigationsWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, v24);
  }
}

- (void)mediaUploadList:(id)list forRequestID:(id)d completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v41 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]";
    v42 = 2114;
    listCopy = list;
    v44 = 2114;
    dCopy = d;
    v46 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[mediaUploadList:%{public}@,requestID:%{public}@,completion:%{public}@]", buf, 0x2Au);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v32 = 136446978;
    v33 = "[CLEEDHelper mediaUploadList:forRequestID:completion:]";
    v34 = 2114;
    listCopy2 = list;
    v36 = 2114;
    dCopy2 = d;
    v38 = 2114;
    completionCopy2 = completion;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[mediaUploadList:%{public}@,requestID:%{public}@,completion:%{public}@]", &v32, 42);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper mediaUploadList:forRequestID:completion:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (objc_msgSend_fConnection(self, v11, v12, v13))
  {
    v18 = objc_msgSend_fConnection(self, v15, v16, v17);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_19B8BDD44;
    v29[3] = &unk_1E753D338;
    v29[4] = self;
    v29[5] = completion;
    v21 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v18, v19, v29, v20);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_19B8BDDB0;
    v28[3] = &unk_1E753D338;
    v28[4] = self;
    v28[5] = completion;
    objc_msgSend_mediaUploadList_forRequestID_completion_(v21, v22, list, d, v28);
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Connection reset, caller needs to re-initialize";
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v31, &v30, 1);
    v27 = objc_msgSend_initWithDomain_code_userInfo_(v23, v26, @"com.apple.CoreLocation.CLEEDHelperService", 8, v25);
    (*(completion + 2))(completion, v27);
  }
}

- (void)streamingSessionEndedForRequestID:(id)d completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v7 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v37 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]";
    v38 = 2114;
    dCopy = d;
    v40 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[request:%{public}@,completion:%{public}@]", buf, 0x20u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v30 = 136446722;
    v31 = "[CLEEDHelper streamingSessionEndedForRequestID:completion:]";
    v32 = 2114;
    dCopy2 = d;
    v34 = 2114;
    completionCopy2 = completion;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[request:%{public}@,completion:%{public}@]", &v30, 32);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper streamingSessionEndedForRequestID:completion:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if (objc_msgSend_fConnection(self, v9, v10, v11))
  {
    v16 = objc_msgSend_fConnection(self, v13, v14, v15);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_19B8BE2F0;
    v27[3] = &unk_1E753D338;
    v27[4] = self;
    v27[5] = completion;
    v19 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v16, v17, v27, v18);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BE35C;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    objc_msgSend_streamingSessionEndedForRequestID_completion_(v19, v20, d, v26);
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E696A578];
    v29 = @"Connection reset, caller needs to re-initialize";
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, &v29, &v28, 1);
    v25 = objc_msgSend_initWithDomain_code_userInfo_(v21, v24, @"com.apple.CoreLocation.CLEEDHelperService", 8, v23);
    (*(completion + 2))(completion, v25);
  }
}

- (void)handleResponse:(BOOL)response forRequest:(id)request completion:(id)completion
{
  responseCopy = response;
  v48 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v41 = "[CLEEDHelper handleResponse:forRequest:completion:]";
    v42 = 1026;
    v43 = responseCopy;
    v44 = 2114;
    requestCopy = request;
    v46 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[response:%{public}u,ID:%{public}@,completion:%{public}@]", buf, 0x26u);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v32 = 136446978;
    v33 = "[CLEEDHelper handleResponse:forRequest:completion:]";
    v34 = 1026;
    v35 = responseCopy;
    v36 = 2114;
    requestCopy2 = request;
    v38 = 2114;
    completionCopy2 = completion;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[response:%{public}u,ID:%{public}@,completion:%{public}@]", &v32, 38);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper handleResponse:forRequest:completion:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  if (objc_msgSend_fConnection(self, v11, v12, v13))
  {
    v18 = objc_msgSend_fConnection(self, v15, v16, v17);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_19B8BE8C8;
    v29[3] = &unk_1E753D338;
    v29[4] = self;
    v29[5] = completion;
    v21 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v18, v19, v29, v20);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_19B8BE938;
    v28[3] = &unk_1E753D400;
    v28[4] = self;
    v28[5] = completion;
    objc_msgSend_handleResponse_forRequest_completion_(v21, v22, responseCopy, request, v28);
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Connection reset, caller needs to re-initialize";
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v31, &v30, 1);
    v27 = objc_msgSend_initWithDomain_code_userInfo_(v23, v26, @"com.apple.CoreLocation.CLEEDHelperService", 8, v25);
    (*(completion + 2))(completion, 0, v27);
  }
}

+ (int64_t)validateServerCertificateChallenge:(id)challenge
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v78 = 2113;
    challengeCopy = challenge;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Challenge:%{private}@", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v70 = 136446467;
    v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v72 = 2113;
    challengeCopy2 = challenge;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, Challenge:%{private}@", &v70, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = objc_msgSend_protectionSpace(challenge, v7, v8, v9);
  v15 = objc_msgSend_authenticationMethod(v11, v12, v13, v14);
  if ((objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x1E696A968], v17) & 1) == 0)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v35 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_INFO))
    {
      v39 = objc_msgSend_protectionSpace(challenge, v36, v37, v38);
      v43 = objc_msgSend_authenticationMethod(v39, v40, v41, v42);
      *buf = 136446466;
      v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v78 = 2114;
      challengeCopy = v43;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_INFO, "#EED2FWK,%{public}s, Unsupported authenticationMethod:%{public}@, proceed with default handling", buf, 0x16u);
    }

    v44 = sub_19B87DD40();
    if (*(v44 + 160) <= 1 && *(v44 + 164) <= 1 && *(v44 + 168) <= 1 && !*(v44 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v48 = qword_1EAFE4718;
    v49 = objc_msgSend_protectionSpace(challenge, v45, v46, v47);
    v53 = objc_msgSend_authenticationMethod(v49, v50, v51, v52);
    v70 = 136446466;
    v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v72 = 2114;
    challengeCopy2 = v53;
    v54 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v48, 1, "#EED2FWK,%{public}s, Unsupported authenticationMethod:%{public}@, proceed with default handling", &v70, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v54);
    if (v54 == buf)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  error = 0;
  v21 = objc_msgSend_protectionSpace(challenge, v18, v19, v20);
  v25 = objc_msgSend_serverTrust(v21, v22, v23, v24);
  if (!SecTrustEvaluateWithError(v25, &error))
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v55 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v78 = 2114;
      challengeCopy = error;
      _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, SecTrustEvaluateWithError returned error:%{public}@", buf, 0x16u);
    }

    v56 = sub_19B87DD40();
    if ((*(v56 + 160) & 0x80000000) != 0 && (*(v56 + 164) & 0x80000000) != 0 && (*(v56 + 168) & 0x80000000) != 0 && !*(v56 + 152))
    {
      goto LABEL_88;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v70 = 136446466;
    v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v72 = 2114;
    challengeCopy2 = error;
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, SecTrustEvaluateWithError returned error:%{public}@", &v70, 22);
    goto LABEL_86;
  }

  v26 = SecTrustCopyCertificateChain(v25);
  if (!v26)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v58 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, SecTrustCopyCertificateChain failed", buf, 0xCu);
    }

    v59 = sub_19B87DD40();
    if ((*(v59 + 160) & 0x80000000) != 0 && (*(v59 + 164) & 0x80000000) != 0 && (*(v59 + 168) & 0x80000000) != 0 && !*(v59 + 152))
    {
      goto LABEL_88;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v70 = 136446210;
    v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, SecTrustCopyCertificateChain failed", &v70, 12);
    goto LABEL_86;
  }

  v30 = v26;
  Object = objc_msgSend_lastObject(v26, v27, v28, v29);
  SecTrustStoreForDomain();
  if (!SecTrustStoreContains())
  {
    v68 = 0;
    v60 = sub_19B8B7C60(@"EEDOverrideServerChallenge", @"com.apple.locationd", &v68);
    if (v68 && v60)
    {
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v61 = qword_1EAFE4718;
      if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446723;
        v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
        v78 = 2113;
        challengeCopy = Object;
        v80 = 2113;
        v81 = v30;
        _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Root:%{private}@ is not system trusted, but EEDOverrideServerChallenge set, overriding. Chain:%{private}@", buf, 0x20u);
      }

      v62 = sub_19B87DD40();
      if (*(v62 + 160) <= 1 && *(v62 + 164) <= 1 && *(v62 + 168) <= 1 && !*(v62 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
      }

      v70 = 136446723;
      v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v72 = 2113;
      challengeCopy2 = Object;
      v74 = 2113;
      v75 = v30;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, Root:%{private}@ is not system trusted, but EEDOverrideServerChallenge set, overriding. Chain:%{private}@", &v70, 32);
      goto LABEL_73;
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v64 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446723;
      v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
      v78 = 2113;
      challengeCopy = Object;
      v80 = 2113;
      v81 = v30;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s, Root:%{private}@ is not system trusted, not contained in SecurityTrustStore with system domain. Chain:%{private}@", buf, 0x20u);
    }

    v65 = sub_19B87DD40();
    if ((*(v65 + 160) & 0x80000000) != 0 && (*(v65 + 164) & 0x80000000) != 0 && (*(v65 + 168) & 0x80000000) != 0 && !*(v65 + 152))
    {
LABEL_88:
      v63 = 2;
      goto LABEL_89;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v70 = 136446723;
    v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    v72 = 2113;
    challengeCopy2 = Object;
    v74 = 2113;
    v75 = v30;
    v57 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s, Root:%{private}@ is not system trusted, not contained in SecurityTrustStore with system domain. Chain:%{private}@", &v70, 32);
LABEL_86:
    v66 = v57;
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v57);
    if (v66 != buf)
    {
      free(v66);
    }

    goto LABEL_88;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v32 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v77 = "+[CLEEDHelper validateServerCertificateChallenge:]";
    _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s, Root is system trusted, proceed with default handling", buf, 0xCu);
  }

  v33 = sub_19B87DD40();
  if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
  {
    goto LABEL_75;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v70 = 136446210;
  v71 = "+[CLEEDHelper validateServerCertificateChallenge:]";
  v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s, Root is system trusted, proceed with default handling", &v70, 12);
LABEL_73:
  v54 = v34;
  sub_19B885924("Generic", 1, 0, 2, "+[CLEEDHelper validateServerCertificateChallenge:]", "CoreLocation: %s\n", v34);
  if (v54 != buf)
  {
LABEL_74:
    free(v54);
  }

LABEL_75:
  v63 = 1;
LABEL_89:
  objc_autoreleasePoolPop(v4);
  return v63;
}

- (void)fetchCloakingKeyWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchCloakingKeyWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchCloakingKeyWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BF8B0;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8BF920;
    v25[3] = &unk_1E753D428;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchCloakingKeyWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, v24);
  }
}

- (void)fetchEmergencyContactNamesWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchEmergencyContactNamesWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8BFE64;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8BFED4;
    v25[3] = &unk_1E753D450;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchEmergencyContactNamesWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, v24);
  }
}

- (void)fetchPreCachedAdrEnablementStatusWithCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v27 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]";
    v28 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v22 = 136446466;
    v23 = "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]";
    v24 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v22, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchPreCachedAdrEnablementStatusWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_19B8C03C0;
    v21[3] = &unk_1E753D338;
    v21[4] = self;
    v21[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v21, v16);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B8C0430;
    v20[3] = &unk_1E753D478;
    v20[4] = self;
    v20[5] = completion;
    objc_msgSend_fetchPreCachedAdrEnablementStatusWithCompletion_(v17, v18, v20, v19);
  }

  else
  {
    (*(completion + 2))(completion, @"Connection reset, caller needs to re-initialize");
  }
}

- (void)fetchAdrPreCachingStatusWithCompletion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
  }

  v5 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]";
    v35 = 2114;
    completionCopy = completion;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#EED2FWK,%{public}s[completion:%{public}@]", buf, 0x16u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6B7E0);
    }

    v29 = 136446466;
    v30 = "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]";
    v31 = 2114;
    completionCopy2 = completion;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 0, "#EED2FWK,%{public}s[completion:%{public}@]", &v29, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLEEDHelper fetchAdrPreCachingStatusWithCompletion:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (objc_msgSend_fConnection(self, v7, v8, v9))
  {
    v14 = objc_msgSend_fConnection(self, v11, v12, v13);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8C0960;
    v26[3] = &unk_1E753D338;
    v26[4] = self;
    v26[5] = completion;
    v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v14, v15, v26, v16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B8C09D4;
    v25[3] = &unk_1E753D4A0;
    v25[4] = self;
    v25[5] = completion;
    objc_msgSend_fetchAdrPreCachingStatusWithCompletion_(v17, v18, v25, v19);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Connection reset, caller needs to re-initialize";
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &v28, &v27, 1);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v20, v23, @"com.apple.CoreLocation.CLEEDHelperService", 8, v22);
    (*(completion + 2))(completion, 0, 0, v24);
  }
}

@end