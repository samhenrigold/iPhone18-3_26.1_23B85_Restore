@interface CLServiceSession
+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization;
+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key;
+ (id)sessionRequiringAuthorization:(int64_t)authorization;
+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key;
+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler;
+ (id)sessionRequiringAuthorization:(int64_t)authorization queue:(id)queue handler:(id)handler;
+ (id)sessionWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler;
- (CLServiceSession)initWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler;
- (id)initDisconnectedSessionWithAuthorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key;
- (void)dealloc;
- (void)handleDiagnosticUpdate;
- (void)invalidate;
- (void)setHandler:(id)handler;
- (void)setupSessionInternalWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue;
@end

@implementation CLServiceSession

+ (id)sessionRequiringAuthorization:(int64_t)authorization
{
  v4 = [CLServiceSession alloc];
  v8 = objc_msgSend_weakSharedInstance(CLLocationManager, v5, v6, v7);
  v12 = objc_msgSend_sharedQueue(CLLocationManager, v9, v10, v11);
  v14 = objc_msgSend_initWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_(v4, v13, v8, authorization, 0, v12, 0);

  return v14;
}

+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization
{
  v4 = [CLServiceSession alloc];
  inited = objc_msgSend_initDisconnectedSessionWithAuthorizationRequirement_fullAccuracyPurposeKey_(v4, v5, authorization, 0);

  return inited;
}

+ (id)sessionRequiringAuthorization:(int64_t)authorization queue:(id)queue handler:(id)handler
{
  v8 = [CLServiceSession alloc];
  v12 = objc_msgSend_weakSharedInstance(CLLocationManager, v9, v10, v11);
  v14 = objc_msgSend_initWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_(v8, v13, v12, authorization, 0, queue, handler);

  return v14;
}

+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key
{
  v6 = [CLServiceSession alloc];
  v10 = objc_msgSend_weakSharedInstance(CLLocationManager, v7, v8, v9);
  v14 = objc_msgSend_sharedQueue(CLLocationManager, v11, v12, v13);
  v16 = objc_msgSend_initWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_(v6, v15, v10, authorization, key, v14, 0);

  return v16;
}

+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key
{
  v6 = [CLServiceSession alloc];
  inited = objc_msgSend_initDisconnectedSessionWithAuthorizationRequirement_fullAccuracyPurposeKey_(v6, v7, authorization, key);

  return inited;
}

+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v10 = [CLServiceSession alloc];
  v14 = objc_msgSend_weakSharedInstance(CLLocationManager, v11, v12, v13);
  v16 = objc_msgSend_initWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_(v10, v15, v14, authorization, key, queue, handler);

  return v16;
}

+ (id)sessionWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v12 = [CLServiceSession alloc];
  v14 = objc_msgSend_initWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_(v12, v13, manager, requirement, key, queue, handler);

  return v14;
}

- (void)setupSessionInternalWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue
{
  queueCopy = queue;
  managerCopy = manager;
  v29 = *MEMORY[0x1E69E9840];
  if (manager)
  {
    if (queue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    managerCopy = objc_msgSend_weakSharedInstance(CLLocationManager, a2, 0, requirement);
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  queueCopy = objc_msgSend_sharedQueue(CLLocationManager, a2, manager, requirement);
LABEL_3:
  switch(requirement)
  {
    case 2:
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_19B995AC0;
      v21[3] = &unk_1E753E1D0;
      v21[4] = self;
      v11 = objc_msgSend_alwaysSessionWithLocationManager_queue_handler_(CLServiceSessionInternal, a2, managerCopy, queueCopy, v21);
      goto LABEL_11;
    case 1:
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_19B995AB0;
      v22[3] = &unk_1E753E1D0;
      v22[4] = self;
      v11 = objc_msgSend_whenInUseSessionWithLocationManager_queue_handler_(CLServiceSessionInternal, a2, managerCopy, queueCopy, v22);
      goto LABEL_11;
    case 0:
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B995AA0;
      v23[3] = &unk_1E753E1D0;
      v23[4] = self;
      v11 = objc_msgSend_passiveSessionWithLocationManager_queue_handler_(CLServiceSessionInternal, a2, managerCopy, queueCopy, v23);
LABEL_11:
      self->_serviceSessionInternal = v11;
      goto LABEL_12;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
  }

  v18 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    buf = 68289282;
    v25 = 2082;
    v26 = "";
    v27 = 1026;
    requirementCopy2 = requirement;
    _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid AuthorizationRequirementType for CLServiceSession, authorizationRequirement:%{public}d}", &buf, 0x18u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }
  }

  v19 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    buf = 68289282;
    v25 = 2082;
    v26 = "";
    v27 = 1026;
    requirementCopy2 = requirement;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid AuthorizationRequirementType for CLServiceSession", "{msg%{public}.0s:Invalid AuthorizationRequirementType for CLServiceSession, authorizationRequirement:%{public}d}", &buf, 0x18u);
  }

LABEL_12:
  if (objc_msgSend_length(key, v12, v13, v14))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B995AD0;
    v20[3] = &unk_1E753E1D0;
    v20[4] = self;
    self->_fullAccuracySession = objc_msgSend_fullAccuracySessionWithLocationManager_purposeKey_queue_handler_(CLFullAccuracySession, v15, managerCopy, key, queueCopy, v20);
  }

  v16 = self->_serviceSessionInternal;
  v17 = self->_fullAccuracySession;
}

- (id)initDisconnectedSessionWithAuthorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key
{
  v9.receiver = self;
  v9.super_class = CLServiceSession;
  v6 = [(CLServiceSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_aggregatedDiagnosticMask = -1;
    v6->_authorizationRequirement = requirement;
    v6->_fullAccuracyPurposeKey = key;
  }

  return v7;
}

- (CLServiceSession)initWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v16.receiver = self;
  v16.super_class = CLServiceSession;
  v12 = [(CLServiceSession *)&v16 init];
  v14 = v12;
  if (v12)
  {
    v12->_aggregatedDiagnosticMask = -1;
    if (handler)
    {
      v12->_clientCallback = _Block_copy(handler);
    }

    objc_msgSend_setupSessionInternalWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_(v14, v13, manager, requirement, key, queue);
  }

  return v14;
}

- (void)setHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      selfCopy6 = self;
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#serviceSession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      selfCopy6 = self;
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "_clientCallback == nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession should initially be nil", "{msg%{public}.0s:#serviceSession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      selfCopy6 = self;
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#serviceSession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLServiceSession.mm", 225, "[CLServiceSession setHandler:]");
LABEL_28:
    __asm { BL              ___stack_chk_fail }
  }

  if (!handler)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      selfCopy6 = self;
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#serviceSession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      selfCopy6 = self;
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "handler != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession can't set a nil handler", "{msg%{public}.0s:#serviceSession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v20 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      selfCopy6 = self;
      v27 = 2082;
      v28 = "assert";
      v29 = 2081;
      v30 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#serviceSession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLServiceSession.mm", 226, "[CLServiceSession setHandler:]");
    goto LABEL_28;
  }

  self->_clientCallback = _Block_copy(handler);
  v7 = objc_msgSend_weakSharedInstance(CLLocationManager, v4, v5, v6);
  authorizationRequirement = self->_authorizationRequirement;
  fullAccuracyPurposeKey = self->_fullAccuracyPurposeKey;
  v14 = objc_msgSend_sharedQueue(CLLocationManager, v10, v11, v12);

  objc_msgSend_setupSessionInternalWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_(self, v13, v7, authorizationRequirement, fullAccuracyPurposeKey, v14);
}

- (void)handleDiagnosticUpdate
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = self->_fullAccuracySessionDiagnosticMask | self->_serviceSessionDiagnosticMask;
  if (self->_aggregatedDiagnosticMask == v3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      aggregatedDiagnosticMask = self->_aggregatedDiagnosticMask;
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2050;
      selfCopy2 = self;
      v20 = 1026;
      v21 = aggregatedDiagnosticMask;
      v6 = "{msg%{public}.0s:#serviceSession skip diagnosticUpdate delivery - new and old aggregatedMask are same, self:%{public}p, aggregatedDiagnosticMask:%{public}d}";
      v7 = v4;
      v8 = 34;
LABEL_14:
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else
  {
    self->_aggregatedDiagnosticMask = v3;
    if (self->_clientCallback)
    {
      v9 = [CLServiceSessionDiagnostic alloc];
      v13 = objc_msgSend_initWithDiagnostics_(v9, v10, v3, v11);
      (*(self->_clientCallback + 2))();
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }

      v12 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 2050;
        selfCopy2 = self;
        v6 = "{msg%{public}.0s:#serviceSession skip diagnosticUpdate delivery - no callback handler, self:%{public}p}";
        v7 = v12;
        v8 = 28;
        goto LABEL_14;
      }
    }
  }
}

- (void)invalidate
{
  objc_msgSend_invalidate(self->_serviceSessionInternal, a2, v2, v3);
  fullAccuracySession = self->_fullAccuracySession;

  objc_msgSend_invalidate(fullAccuracySession, v5, v6, v7);
}

- (void)dealloc
{
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  v3.receiver = self;
  v3.super_class = CLServiceSession;
  [(CLServiceSession *)&v3 dealloc];
}

@end