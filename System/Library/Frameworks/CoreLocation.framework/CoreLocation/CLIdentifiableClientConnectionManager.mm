@interface CLIdentifiableClientConnectionManager
- (CLIdentifiableClientConnectionManager)initWithSilo:(id)silo locationManager:(id)manager startMessageName:(id)name startMessagePayload:(id)payload responseHandler:(id)handler;
- (void)_pauseLocationUpdater;
- (void)_resumeLocationUpdater;
- (void)_start;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleResponseMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)manageConnection;
- (void)pause;
- (void)resume;
- (void)tearDown;
- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken;
@end

@implementation CLIdentifiableClientConnectionManager

- (CLIdentifiableClientConnectionManager)initWithSilo:(id)silo locationManager:(id)manager startMessageName:(id)name startMessagePayload:(id)payload responseHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CLIdentifiableClientConnectionManager;
  v12 = [(CLIdentifiableClientConnectionManager *)&v39 init];
  if (!v12)
  {
    return v12;
  }

  if (silo)
  {
    siloCopy = silo;
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2050;
      v45 = v12;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager has nil silo; Creating locally, self:%{public}p}", buf, 0x1Cu);
    }

    v21 = objc_msgSend_sharedQueue(CLLocationManager, v18, v19, v20);
    v22 = objc_alloc(MEMORY[0x1E69AD360]);
    siloCopy = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v22, v23, v21, 0);
  }

  v12->_silo = siloCopy;
  if (!manager)
  {
    manager = objc_msgSend_weakSharedInstance(CLLocationManager, v14, v15, v16);
  }

  objc_msgSend_setManager_(v12, v14, manager, v16);
  v12->_startMessageName = name;
  if (payload)
  {
    v27 = objc_msgSend_mutableCopy(payload, v24, v25, v26);
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12->_startMessagePayload = v27;
  if (handler)
  {
    v30 = _Block_copy(handler);
    v12->_responseHandler = v30;
    if (v30)
    {
      goto LABEL_16;
    }
  }

  else if (v12->_responseHandler)
  {
LABEL_16:
    objc_msgSend_setIdentityToken_(v12, v28, 0, v29);
    objc_msgSend_setShouldBeRunning_(v12, v31, 0, v32);
    objc_msgSend_setStarted_(v12, v33, 0, v34);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v37 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 2082;
    v45 = "assert";
    v46 = 2081;
    v47 = "_responseHandler != nullptr";
    _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#ficConnectionManager cannnot be created without a response-handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }
  }

  v38 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289539;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 2082;
    v45 = "assert";
    v46 = 2081;
    v47 = "_responseHandler != nullptr";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#ficConnectionManager cannnot be created without a response-handler", "{msg%{public}.0s:#ficConnectionManager cannnot be created without a response-handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }
  }

  v12 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 2082;
    v45 = "assert";
    v46 = 2081;
    v47 = "_responseHandler != nullptr";
    _os_log_impl(&dword_19B873000, &v12->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ficConnectionManager cannnot be created without a response-handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLIdentifiableClientConnectionManager.mm", 107, "[CLIdentifiableClientConnectionManager initWithSilo:locationManager:startMessageName:startMessagePayload:responseHandler:]");
LABEL_32:
  dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
LABEL_17:
  v35 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v41 = 0;
    v42 = 2082;
    v43 = "";
    v44 = 2050;
    v45 = v12;
    _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager init, self:%{public}p}", buf, 0x1Cu);
  }

  return v12;
}

- (void)_start
{
  if ((objc_msgSend_started(self, a2, v2, v3) & 1) == 0)
  {
    objc_msgSend_setStarted_(self, v5, 1, v6);
    v10 = objc_msgSend_manager(self, v7, v8, v9);

    objc_msgSend_addIdentifiableClient_(v10, v11, self, v12);
  }
}

- (void)pause
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager pause, self:%{public}p}", buf, 0x1Cu);
  }

  objc_msgSend_setShouldBeRunning_(self, v4, 0, v5);
  silo = self->_silo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9DA858;
  v9[3] = &unk_1E753CC90;
  v9[4] = self;
  objc_msgSend_async_(silo, v7, v9, v8);
}

- (void)resume
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager resume, self:%{public}p}", buf, 0x1Cu);
  }

  objc_msgSend_setShouldBeRunning_(self, v4, 1, v5);
  objc_msgSend__start(self, v6, v7, v8);
  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9DA9B0;
  v12[3] = &unk_1E753CC90;
  v12[4] = self;
  objc_msgSend_async_(silo, v10, v12, v11);
}

- (void)_pauseLocationUpdater
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 68289282;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager _pauseLocationUpdater, self:%{public}p}", v12, 0x1Cu);
  }

  objc_msgSend_assertInside(self->_silo, v4, v5, v6);
  objc_msgSend_setShouldBeRunning_(self, v7, 0, v8);
  objc_msgSend_manageConnection(self, v9, v10, v11);
}

- (void)_resumeLocationUpdater
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 68289282;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager _resumeLocationUpdater, self:%{public}p}", v15, 0x1Cu);
  }

  objc_msgSend_assertInside(self->_silo, v4, v5, v6);
  objc_msgSend_setShouldBeRunning_(self, v7, 1, v8);
  objc_msgSend__start(self, v9, v10, v11);
  objc_msgSend_manageConnection(self, v12, v13, v14);
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    selfCopy = self;
    v19 = 2082;
    v20 = objc_msgSend_UTF8String(token, v8, v9, v10);
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager updateIdentityToken, self:%{public}p, identityToken:%{public, location:escape_only}s}", buf, 0x26u);
  }

  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9DAD28;
  v12[3] = &unk_1E753D098;
  v12[4] = self;
  v12[5] = token;
  v12[6] = storageToken;
  objc_msgSend_async_(silo, v8, v12, v10);
}

- (void)manageConnection
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_msgSend_identityToken(self, v4, v5, v6);
    v17[0] = 68289538;
    v17[1] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2050;
    selfCopy = self;
    v22 = 2082;
    v23 = objc_msgSend_UTF8String(v7, v8, v9, v10);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager manageConnection, self:%{public}p, identityToken:%{public, location:escape_only}s}", v17, 0x26u);
  }

  objc_msgSend_assertInside(self->_silo, v4, v5, v6);
  if (objc_msgSend_shouldBeRunning(self, v11, v12, v13) && objc_msgSend_identityToken(self, v14, v15, v16))
  {
    objc_msgSend_createConnection(self, v14, v15, v16);
  }

  else
  {
    objc_msgSend_destroyConnection(self, v14, v15, v16);
  }
}

- (void)createConnection
{
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (!self->_locationdConnection)
  {
    operator new();
  }
}

- (void)destroyConnection
{
  v29 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (self->_locationdConnection)
  {
    if (objc_msgSend_identityToken(self, v5, v6, v7) && (objc_msgSend_shouldBeRunning(self, v8, v9, v10) & 1) == 0)
    {
      sub_19B943C68();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v15 = objc_msgSend_identityToken(self, v12, v13, v14);
      v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);
      *buf = 68289538;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = v19;
      v27 = 2050;
      selfCopy = self;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager destroying connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
  }
}

- (void)handleResponseMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  objc_msgSend_assertInside(self->_silo, a2, message.var0, message.var1);
  v5 = *var0;
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v14 = objc_msgSend_setWithObjects_(v6, v12, v7, v13, v8, v9, v10, v11, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v5, v14);
  if (objc_msgSend_shouldBeRunning(self, v16, v17, v18))
  {
    responseHandler = self->_responseHandler;
    if (responseHandler)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = CLConnectionMessage::name(*var0);
      if (*(v21 + 23) >= 0)
      {
        v24 = objc_msgSend_stringWithUTF8String_(v20, v22, v21, v23);
      }

      else
      {
        v24 = objc_msgSend_stringWithUTF8String_(v20, v22, *v21, v23);
      }

      v25 = responseHandler[2];

      v25(responseHandler, v24, DictionaryOfClasses);
    }
  }
}

- (void)tearDown
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v19[0] = 68289282;
    v19[1] = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager tearDown, self:%{public}p}", v19, 0x1Cu);
  }

  v7 = objc_msgSend_manager(self, v4, v5, v6);
  objc_msgSend_removeIdentifiableClient_(v7, v8, self, v9);
  objc_msgSend_setManager_(self, v10, 0, v11);

  self->_startMessageName = 0;
  self->_startMessagePayload = 0;
  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    _Block_release(responseHandler);
  }

  objc_msgSend_setShouldBeRunning_(self, v12, 0, v13);
  objc_msgSend_setIdentityToken_(self, v15, 0, v16);
  objc_msgSend_setStorageToken_(self, v17, 0, v18);

  self->_silo = 0;
}

- (void)dealloc
{
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%p", v2, self);
  silo = self->_silo;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9DB954;
  v13[3] = &unk_1E753CFB0;
  v13[4] = v5;
  v13[5] = locationdConnection;
  objc_msgSend_async_(silo, v7, v13, v8);
  objc_msgSend_tearDown(self, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = CLIdentifiableClientConnectionManager;
  [(CLIdentifiableClientConnectionManager *)&v12 dealloc];
}

@end