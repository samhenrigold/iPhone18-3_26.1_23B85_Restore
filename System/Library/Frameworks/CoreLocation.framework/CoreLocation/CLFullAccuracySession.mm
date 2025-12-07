@interface CLFullAccuracySession
+ (id)fullAccuracySessionWithLocationManager:(id)manager purposeKey:(id)key queue:(id)queue handler:(id)handler;
- (CLFullAccuracySession)initWithLocationManager:(id)manager purposeKey:(id)key queue:(id)queue handler:(id)handler;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)diagnostics;
- (void)invalidate;
- (void)manageConnection;
- (void)tearDown;
- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken;
@end

@implementation CLFullAccuracySession

+ (id)fullAccuracySessionWithLocationManager:(id)manager purposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v10 = [CLFullAccuracySession alloc];
  v12 = objc_msgSend_initWithLocationManager_purposeKey_queue_handler_(v10, v11, manager, key, queue, handler);
  objc_msgSend_addIdentifiableClient_(manager, v13, v12, v14);
  return v12;
}

- (CLFullAccuracySession)initWithLocationManager:(id)manager purposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 68290050;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2082;
    v44 = "activity";
    v45 = 2114;
    v46 = v14;
    v47 = 2050;
    selfCopy = self;
    v49 = 2050;
    managerCopy = manager;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, manager:%{public}p}", buf, 0x3Au);
  }

  v37.receiver = self;
  v37.super_class = CLFullAccuracySession;
  v18 = [(CLFullAccuracySession *)&v37 init];
  if (v18)
  {
    if ((objc_msgSend_isMasquerading(manager, v15, v16, v17) & 1) == 0)
    {
      if ((sub_19B8B8818() & 1) == 0)
      {
        NSLog(&cfstr_ErrorClfullacc.isa);
      }

      MainBundle = CFBundleGetMainBundle();
      if (MainBundle)
      {
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"NSLocationTemporaryUsageDescriptionDictionary");
        if (!ValueForInfoDictionaryKey || !CFDictionaryGetCount(ValueForInfoDictionaryKey))
        {
          NSLog(&cfstr_ErrorNslocatio.isa);
        }
      }
    }

    queueCopy = queue;
    if (!queue)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }

      v22 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v40 = 0;
        v41 = 2082;
        v42 = "";
        v43 = 2050;
        v44 = v18;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession has nil callback queue; Creating locally, self:%{public}p}", buf, 0x1Cu);
      }

      queueCopy = objc_msgSend_sharedQueue(CLLocationManager, v23, v24, v25);
    }

    v26 = objc_alloc(MEMORY[0x1E69AD360]);
    v18->_silo = objc_msgSend_initWithUnderlyingQueue_(v26, v27, queueCopy, v28);
    if (queueCopy != queue)
    {
      dispatch_release(queueCopy);
    }

    objc_msgSend_setIsValid_(v18, v29, 1, v30);
    v18->_purposeKey = objc_msgSend_copy(key, v31, v32, v33);
    objc_msgSend_setManager_(v18, v34, manager, v35);
    if (handler)
    {
      v18->_clientCallback = _Block_copy(handler);
    }
  }

  os_activity_scope_leave(&state);
  return v18;
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v11;
    v23 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B95EA9C;
  v13[3] = &unk_1E753CF38;
  v13[4] = self;
  v13[5] = token;
  objc_msgSend_async_(silo, v9, v13, v10);
  os_activity_scope_leave(&state);
}

- (void)manageConnection
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v16);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v9;
    v25 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_assertInside(self->_silo, v6, v7, v8);
  if (objc_msgSend_identityToken(self, v10, v11, v12) && (objc_msgSend_isValid(self, v13, v14, v15) & 1) != 0)
  {
    objc_msgSend_createConnection(self, v13, v14, v15);
  }

  else
  {
    objc_msgSend_destroyConnection(self, v13, v14, v15);
  }

  os_activity_scope_leave(&v16);
}

- (void)createConnection
{
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (!self->_locationdConnection)
  {
    operator new();
  }
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v33 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = CLConnectionMessage::name(*var0);
    if (*(v9 + 23) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    *buf = 68290050;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2082;
    v26 = "activity";
    v27 = 2114;
    v28 = v8;
    v29 = 2050;
    selfCopy = self;
    v31 = 2082;
    v32 = v10;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, message:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v11 = CLConnectionMessage::name(*var0);
  if (*(v11 + 23) < 0 && *(v11 + 8) == 31)
  {
    v14 = **v11 == 0x656E6E6F434C436BLL && *(*v11 + 8) == 0x73654D6E6F697463;
    v15 = v14 && *(*v11 + 16) == 0x6761694465676173;
    if (v15 && *(*v11 + 23) == 0x73636974736F6E67)
    {
      v17 = *(var0 + 1);
      v18 = *var0;
      v19 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_msgSend_handleMessageDiagnostics_(self, v12, &v18, v13);
      if (v19)
      {
        sub_19B8750F8(v19);
      }
    }
  }

  os_activity_scope_leave(&state);
}

- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)diagnostics
{
  var0 = diagnostics.var0;
  v41 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, diagnostics.var0, diagnostics.var1);
  if (objc_msgSend_isValid(self, v6, v7, v8) && self->_clientCallback)
  {
    v9 = *var0;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v15 = objc_msgSend_setWithObjects_(v10, v13, v11, v14, v12, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v9, v15);
    v17 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v17, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 68290051;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      selfCopy2 = "activity";
      v35 = 2114;
      v36 = v21;
      v37 = 2050;
      selfCopy = self;
      v39 = 2113;
      v40 = DictionaryOfClasses;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v19, @"kCLConnectionMessageDiagnosticsKey", v20);
    v26 = objc_msgSend_unsignedLongValue(v22, v23, v24, v25);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      selfCopy2 = self;
      v35 = 1026;
      LODWORD(v36) = v26;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession handleMessageDiagnostics, self:%{public}p, diagnosticMask:%{public}d}", buf, 0x22u);
    }

    (*(self->_clientCallback + 2))();
    os_activity_scope_leave(&state);
  }
}

- (void)tearDown
{
  v5 = objc_msgSend_manager(self, a2, v2, v3);
  objc_msgSend_removeIdentifiableClient_(v5, v6, self, v7);
  objc_msgSend_setIdentityToken_(self, v8, 0, v9);
  objc_msgSend_setStorageToken_(self, v10, 0, v11);

  self->_purposeKey = 0;
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  objc_msgSend_setManager_(self, v12, 0, v13);

  self->_silo = 0;
}

- (void)destroyConnection
{
  v52 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (self->_locationdConnection)
  {
    if (objc_msgSend_identityToken(self, v5, v6, v7) && (objc_msgSend_isValid(self, v8, v9, v10) & 1) == 0)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }

      v11 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_msgSend_identityToken(self, v12, v13, v14);
        *buf = 68289538;
        *&buf[4] = 0;
        v47[0] = 2082;
        *&v47[1] = "";
        v48 = 2082;
        v49 = objc_msgSend_UTF8String(v15, v16, v17, v18);
        v50 = 2050;
        selfCopy4 = self;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
        }
      }

      v19 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        v23 = objc_msgSend_identityToken(self, v20, v21, v22);
        v27 = objc_msgSend_UTF8String(v23, v24, v25, v26);
        *buf = 68289538;
        *&buf[4] = 0;
        v47[0] = 2082;
        *&v47[1] = "";
        v48 = 2082;
        v49 = v27;
        v50 = 2050;
        selfCopy4 = self;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession destroyUponDisconnection(DIC)", "{msg%{public}.0s:#fullAccuracySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      }

      sub_19B943C68();
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v29 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_msgSend_identityToken(self, v30, v31, v32);
      *buf = 68289538;
      *&buf[4] = 0;
      v47[0] = 2082;
      *&v47[1] = "";
      v48 = 2082;
      v49 = objc_msgSend_UTF8String(v33, v34, v35, v36);
      v50 = 2050;
      selfCopy4 = self;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }
    }

    v37 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v41 = objc_msgSend_identityToken(self, v38, v39, v40);
      v45 = objc_msgSend_UTF8String(v41, v42, v43, v44);
      *buf = 68289538;
      *&buf[4] = 0;
      v47[0] = 2082;
      *&v47[1] = "";
      v48 = 2082;
      v49 = v45;
      v50 = 2050;
      selfCopy4 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession invalidated and destroyed connection", "{msg%{public}.0s:#fullAccuracySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v8;
    v30 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_setIsValid_(self, v6, 0, v7);
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%p", v11, self);
  silo = self->_silo;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_19B95FDB8;
  v20[3] = &unk_1E753CFB0;
  v20[4] = v12;
  v20[5] = locationdConnection;
  objc_msgSend_async_(silo, v14, v20, v15);
  objc_msgSend_tearDown(self, v16, v17, v18);
  v19.receiver = self;
  v19.super_class = CLFullAccuracySession;
  [(CLFullAccuracySession *)&v19 dealloc];
  os_activity_scope_leave(&state);
}

- (void)invalidate
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isValid(self, a2, v2, v3))
  {
    v6 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 68289794;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2114;
      v23 = v10;
      v24 = 2050;
      selfCopy = self;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
    }

    objc_msgSend_setIsValid_(self, v8, 0, v9);
    silo = self->_silo;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B9601B0;
    v14[3] = &unk_1E753CC90;
    v14[4] = self;
    objc_msgSend_async_(silo, v12, v14, v13);
    os_activity_scope_leave(&state);
  }
}

@end