@interface _BLAcquireSlotRequest
- (_BLAcquireSlotRequest)initWithDeviceGUID:(id)d;
- (void)_acquireSlotWithURL:(id)l;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation _BLAcquireSlotRequest

- (_BLAcquireSlotRequest)initWithDeviceGUID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = _BLAcquireSlotRequest;
  v5 = [(ICRequestOperation *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D7FC30]);
    active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v6, v7, v8);
    requestContext = v5->_requestContext;
    v5->_requestContext = active;

    v13 = objc_msgSend_copy(dCopy, v11, v12);
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v13;
  }

  return v5;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D110CC;
  v7[3] = &unk_278D158A0;
  v7[4] = self;
  v8 = handlerCopy;
  v5 = handlerCopy;
  objc_msgSend_performRequestWithCompletionHandler_(self, v6, v7);
}

- (void)execute
{
  v4 = objc_msgSend_defaultBag(MEMORY[0x277CF3300], a2, v2);
  objc_initWeak(&location, self);
  v7 = objc_msgSend_acquireSlotURL(v4, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D11218;
  v9[3] = &unk_278D158C8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_valueWithCompletion_(v7, v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_acquireSlotWithURL:(id)l
{
  v45 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = v5;
  deviceGUID = self->_deviceGUID;
  if (deviceGUID)
  {
    objc_msgSend_setObject_forKey_(v5, v6, deviceGUID, @"guid");
  }

  v9 = objc_msgSend_deviceInfo(self->_requestContext, v6, deviceGUID);
  isWatch = objc_msgSend_isWatch(v9, v10, v11);

  if (isWatch)
  {
    v15 = objc_msgSend_sharedMonitor(MEMORY[0x277D7FBA8], v13, v14);
    v18 = objc_msgSend_pairedDeviceMediaGUID(v15, v16, v17);

    if (objc_msgSend_length(v18, v19, v20))
    {
      objc_msgSend_setObject_forKey_(v7, v21, v18, @"companion-guid");
    }

    else
    {
      v22 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_241D0D000, v22, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain companion guid.", buf, 0xCu);
      }
    }
  }

  v42 = 0;
  v23 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v13, v7, 100, 0, &v42);
  v24 = v42;
  v25 = v24;
  if (!v23 || v24)
  {
    v26 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = v25;
      _os_log_impl(&dword_241D0D000, v26, OS_LOG_TYPE_ERROR, "Failed to serialize property list for acquireSlot request! %@", buf, 0xCu);
    }
  }

  v27 = objc_alloc(MEMORY[0x277CCAB70]);
  v29 = objc_msgSend_initWithURL_(v27, v28, lCopy);
  objc_msgSend_setHTTPMethod_(v29, v30, @"POST");
  objc_msgSend_setHTTPBody_(v29, v31, v23);
  objc_msgSend_setValue_forHTTPHeaderField_(v29, v32, *MEMORY[0x277D7F910], *MEMORY[0x277D7F918]);
  objc_initWeak(buf, self);
  v33 = objc_alloc(MEMORY[0x277D7FC38]);
  v35 = objc_msgSend_initWithURLRequest_requestContext_(v33, v34, v29, self->_requestContext);
  v38 = objc_msgSend_highPrioritySession(MEMORY[0x277D7FC90], v36, v37);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_241D11644;
  v40[3] = &unk_278D158F0;
  objc_copyWeak(&v41, buf);
  objc_msgSend_enqueueDataRequest_withCompletionHandler_(v38, v39, v35, v40);
  objc_destroyWeak(&v41);

  objc_destroyWeak(buf);
}

@end