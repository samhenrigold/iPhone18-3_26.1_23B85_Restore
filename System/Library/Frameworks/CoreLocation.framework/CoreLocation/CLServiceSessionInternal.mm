@interface CLServiceSessionInternal
+ (id)sessionWithLocationManager:(id)manager type:(int)type queue:(id)queue handler:(id)handler;
- (CLServiceSessionInternal)initWithLocationManager:(id)manager serviceSessionType:(int)type queue:(id)queue handler:(id)p_info;
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

@implementation CLServiceSessionInternal

+ (id)sessionWithLocationManager:(id)manager type:(int)type queue:(id)queue handler:(id)handler
{
  v8 = *&type;
  v10 = [CLServiceSessionInternal alloc];
  v12 = objc_msgSend_initWithLocationManager_serviceSessionType_queue_handler_(v10, v11, manager, v8, queue, handler);
  objc_msgSend_addIdentifiableClient_(manager, v13, v12, v14);
  return v12;
}

- (CLServiceSessionInternal)initWithLocationManager:(id)manager serviceSessionType:(int)type queue:(id)queue handler:(id)p_info
{
  LODWORD(v8) = type;
  v43 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = CLServiceSessionInternal;
  v11 = [(CLServiceSessionInternal *)&v30 init];
  if (!v11)
  {
    return v11;
  }

  if (!queue)
  {
    p_info = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v8 = CLLocationManagerInternal.info;
    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "queue";
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:queue cannot be nil while creating ExplicitServiceSession, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v28 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "queue cannot be nil while creating ExplicitServiceSession", "{msg%{public}.0s:queue cannot be nil while creating ExplicitServiceSession, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = "assert";
      v37 = 2081;
      v38 = "queue";
      _os_log_impl(&dword_19B873000, &v11->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:queue cannot be nil while creating ExplicitServiceSession, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLServiceSessionInternal.mm", 98, "[CLServiceSessionInternal initWithLocationManager:serviceSessionType:queue:handler:]");
    __break(1u);
    goto LABEL_28;
  }

  v12 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if (qword_1ED519088 != -1)
  {
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 68290050;
    v32 = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2082;
    v36 = "activity";
    v37 = 2114;
    v38 = v17;
    v39 = 2050;
    v40 = v11;
    v41 = 2050;
    managerCopy = manager;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, manager:%{public}p}", buf, 0x3Au);
  }

  if ((objc_msgSend_isMasquerading(manager, v14, v15, v16) & 1) == 0)
  {
    if ((sub_19B8B8818() & 1) == 0)
    {
      NSLog(&cfstr_ErrorClservice.isa);
    }

    if (v8 == 2)
    {
      MainBundle = CFBundleGetMainBundle();
      if (MainBundle)
      {
        if (!CFBundleGetValueForInfoDictionaryKey(MainBundle, @"NSLocationAlwaysAndWhenInUseUsageDescription"))
        {
          NSLog(&cfstr_ErrorPrivilege.isa);
        }
      }
    }
  }

  objc_msgSend_setIsValid_(v11, v18, 1, v19);
  v21 = objc_alloc(MEMORY[0x1E69AD360]);
  v11->_silo = objc_msgSend_initWithUnderlyingQueue_(v21, v22, queue, v23);
  objc_msgSend_setManager_(v11, v24, manager, v25);
  v11->_sessionType = v8;
  if (p_info)
  {
    v11->_clientCallback = _Block_copy(p_info);
  }

  os_activity_scope_leave(&state);
  return v11;
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  silo = self->_silo;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9425E0;
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
  v26 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isValid(self, a2, v2, v3))
  {
    v6 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
    }

    objc_msgSend_setIsValid_(self, v8, 0, v9);
    silo = self->_silo;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B942864;
    v14[3] = &unk_1E753CC90;
    v14[4] = self;
    objc_msgSend_async_(silo, v12, v14, v13);
    os_activity_scope_leave(&state);
  }
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_setIsValid_(self, v6, 0, v7);
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"%p", v11, self);
  silo = self->_silo;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_19B942AB4;
  v20[3] = &unk_1E753CFB0;
  v20[4] = v12;
  v20[5] = locationdConnection;
  objc_msgSend_async_(silo, v14, v20, v15);
  objc_msgSend_tearDown(self, v16, v17, v18);
  v19.receiver = self;
  v19.super_class = CLServiceSessionInternal;
  [(CLServiceSessionInternal *)&v19 dealloc];
  os_activity_scope_leave(&state);
}

- (void)manageConnection
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v16);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
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
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
        _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession destroyUponDisconnection(DIC)", "{msg%{public}.0s:#serviceSession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      }

      sub_19B943C68();
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
      _os_signpost_emit_with_name_impl(&dword_19B873000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession invalidated and destroyed connection", "{msg%{public}.0s:#serviceSession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
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
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
  v31 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self->_silo, a2, diagnostics.var0, diagnostics.var1);
  if (objc_msgSend_isValid(self, v5, v6, v7) && self->_clientCallback)
  {
    v8 = *var0;
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v9, v11, v10, v12, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v8, v13);
    v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"kCLConnectionMessageDiagnosticsKey", v16);
    v21 = objc_msgSend_unsignedLongValue(v17, v18, v19, v20);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2050;
      selfCopy = self;
      v29 = 1026;
      v30 = v21;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession handleMessageDiagnostics, self:%{public}p, diagnosticMask:%{public}d}", buf, 0x22u);
    }

    (*(self->_clientCallback + 2))();
  }
}

@end