@interface CLBackgroundActivitySession
+ (CLBackgroundActivitySession)backgroundActivitySession;
+ (CLBackgroundActivitySession)backgroundActivitySessionWithQueue:(id)queue handler:(id)handler;
+ (CLBackgroundActivitySession)sessionWithLocationManager:(id)manager queue:(id)queue handler:(id)handler;
- (CLBackgroundActivitySession)initWithLocationManager:(id)manager queue:(id)queue handler:(id)handler;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)diagnostics;
- (void)invalidate;
- (void)manageConnection;
- (void)setHandler:(id)handler;
- (void)tearDown;
- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken;
@end

@implementation CLBackgroundActivitySession

+ (CLBackgroundActivitySession)sessionWithLocationManager:(id)manager queue:(id)queue handler:(id)handler
{
  v8 = [CLBackgroundActivitySession alloc];
  v10 = objc_msgSend_initWithLocationManager_queue_handler_(v8, v9, manager, queue, handler);
  objc_msgSend_addIdentifiableClient_(manager, v11, v10, v12);
  return v10;
}

+ (CLBackgroundActivitySession)backgroundActivitySession
{
  v4 = objc_msgSend_weakSharedInstance(CLLocationManager, a2, v2, v3);

  return MEMORY[0x1EEE66B58](CLBackgroundActivitySession, sel_backgroundActivitySessionWithLocationManager_, v4, v5);
}

+ (CLBackgroundActivitySession)backgroundActivitySessionWithQueue:(id)queue handler:(id)handler
{
  v4 = objc_msgSend_weakSharedInstance(CLLocationManager, a2, queue, handler);

  return MEMORY[0x1EEE66B58](CLBackgroundActivitySession, sel_sessionWithLocationManager_requestPrivilege_queue_handler_, v4, 0);
}

- (CLBackgroundActivitySession)initWithLocationManager:(id)manager queue:(id)queue handler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CLBackgroundActivitySession;
  v9 = [(CLBackgroundActivitySession *)&v29 init];
  if (v9)
  {
    v10 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &v28);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 68290050;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = "activity";
      v36 = 2114;
      v37 = v15;
      v38 = 2050;
      v39 = v9;
      v40 = 2050;
      managerCopy = manager;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, manager:%{public}p}", buf, 0x3Au);
    }

    if ((objc_msgSend_isMasquerading(manager, v12, v13, v14) & 1) == 0 && (sub_19B8B8818() & 1) == 0)
    {
      NSLog(&cfstr_ErrorClbackgro.isa);
    }

    objc_msgSend_setShouldBeRunning_(v9, v16, 1, v17);
    if (!queue)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }

      v18 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2050;
        v35 = v9;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession, nil callback queue creating locally, self:%{public}p}", buf, 0x1Cu);
      }

      queue = objc_msgSend_sharedQueue(CLLocationManager, v19, v20, v21);
    }

    v22 = objc_alloc(MEMORY[0x1E69AD360]);
    v9->_silo = objc_msgSend_initWithUnderlyingQueue_(v22, v23, queue, v24);
    objc_msgSend_setManager_(v9, v25, manager, v26);
    if (handler)
    {
      v9->_clientCallback = _Block_copy(handler);
    }

    os_activity_scope_leave(&v28);
  }

  return v9;
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  silo = self->_silo;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9511F0;
  v5[3] = &unk_1E753CF38;
  v5[4] = self;
  v5[5] = token;
  objc_msgSend_async_(silo, a2, v5, storageToken);
}

- (void)tearDown
{
  v5 = objc_msgSend_manager(self, a2, v2, v3);
  objc_msgSend_removeIdentifiableClient_(v5, v6, self, v7);
  objc_msgSend_setIdentityToken_(self, v8, 0, v9);
  objc_msgSend_setStorageToken_(self, v10, 0, v11);
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  objc_msgSend_setManager_(self, v12, 0, v13);

  self->_silo = 0;
}

- (void)invalidate
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_setShouldBeRunning_(self, v6, 0, v7);
  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B95146C;
  v12[3] = &unk_1E753CC90;
  v12[4] = self;
  objc_msgSend_async_(silo, v10, v12, v11);
  os_activity_scope_leave(&state);
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_setShouldBeRunning_(self, v6, 0, v7);
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%p", v11, self);
  silo = self->_silo;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_19B9516BC;
  v20[3] = &unk_1E753CFB0;
  v20[4] = v12;
  v20[5] = locationdConnection;
  objc_msgSend_async_(silo, v14, v20, v15);
  objc_msgSend_tearDown(self, v16, v17, v18);
  v19.receiver = self;
  v19.super_class = CLBackgroundActivitySession;
  [(CLBackgroundActivitySession *)&v19 dealloc];
  os_activity_scope_leave(&state);
}

- (void)manageConnection
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v16);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_assertInside(self->_silo, v6, v7, v8);
  if (objc_msgSend_identityToken(self, v10, v11, v12) && (objc_msgSend_shouldBeRunning(self, v13, v14, v15) & 1) != 0)
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

- (void)destroyConnection
{
  v52 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, v2, v3);
  if (self->_locationdConnection)
  {
    if (objc_msgSend_identityToken(self, v5, v6, v7) && (objc_msgSend_shouldBeRunning(self, v8, v9, v10) & 1) == 0)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
        _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession destroyUponDisconnection(DIC)", "{msg%{public}.0s:#backgroundActivitySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      }

      sub_19B943C68();
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
      _os_signpost_emit_with_name_impl(&dword_19B873000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession invalidated and destroyed connection", "{msg%{public}.0s:#backgroundActivitySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v33 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, message:%{public, location:escape_only}s}", buf, 0x3Au);
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
  v44 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, diagnostics.var0, diagnostics.var1);
  if (objc_msgSend_shouldBeRunning(self, v6, v7, v8) && self->_clientCallback)
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
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 68290051;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2082;
      v37 = "activity";
      v38 = 2114;
      v39 = v21;
      v40 = 2050;
      selfCopy = self;
      v42 = 2113;
      v43 = DictionaryOfClasses;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v19, @"kCLConnectionMessageDiagnosticsKey", v20);
    v26 = objc_msgSend_unsignedLongValue(v22, v23, v24, v25);
    v27 = [CLBackgroundActivitySessionDiagnostic alloc];
    v30 = objc_msgSend_initWithDiagnostics_(v27, v28, v26, v29);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&state);
  }
}

- (void)setHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy6 = self;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#backgroundActivitySession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v5 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy6 = self;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "_clientCallback == nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession should initially be nil", "{msg%{public}.0s:#backgroundActivitySession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy6 = self;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#backgroundActivitySession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLBackgroundActivitySession.mm", 283, "[CLBackgroundActivitySession setHandler:]");
LABEL_26:
    __asm { BL              ___stack_chk_fail }
  }

  if (!handler)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy6 = self;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#backgroundActivitySession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy6 = self;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "handler != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession can't set a nil handler", "{msg%{public}.0s:#backgroundActivitySession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy6 = self;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#backgroundActivitySession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLBackgroundActivitySession.mm", 284, "[CLBackgroundActivitySession setHandler:]");
    goto LABEL_26;
  }

  self->_clientCallback = _Block_copy(handler);
}

@end