@interface CLCondition
- (BOOL)isAuthorized;
- (CLCondition)initWithCoder:(id)coder;
- (NSString)monitoredIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initCondition;
- (void)dealloc;
- (void)setCallbackHandler:(id)handler;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation CLCondition

- (id)initCondition
{
  objc_msgSend_setIsMonitoring_(self, a2, 0, v2);
  v5.receiver = self;
  v5.super_class = CLCondition;
  return [(CLCondition *)&v5 init];
}

- (void)dealloc
{
  self->_refinement = 0;

  self->_authorizationContext = 0;
  objc_msgSend_setCkp_(self, v3, 0, v4);
  objc_msgSend_setOnConditionUpdateCallbackHandler_(self, v5, 0, v6);

  self->_identifier = 0;
  self->_universe = 0;
  v7.receiver = self;
  v7.super_class = CLCondition;
  [(CLCondition *)&v7 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CLCondition;
  return [(CLCondition *)&v4 copy];
}

- (CLCondition)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CLCondition;
  return [(CLCondition *)&v4 init];
}

- (void)setCallbackHandler:(id)handler
{
  objc_msgSend_setOnConditionUpdateCallbackHandler_(self, a2, handler, v3);
  if (objc_msgSend_onConditionUpdateCallbackHandler(self, v5, v6, v7))
  {
    updated = objc_msgSend_onConditionUpdateCallbackHandler(self, v8, v9, v10);
    v15 = objc_msgSend_monitoredIdentifier(self, v12, v13, v14);
    MonitoringState = objc_msgSend_lastMonitoringState(self, v16, v17, v18);
    v23 = objc_msgSend_refinement(self, v20, v21, v22);
    v24 = *(updated + 16);

    v24(updated, v15, self, MonitoringState, v23);
  }
}

- (BOOL)isAuthorized
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call base isAuthorized directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v3 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call base isAuthorized directly", "{msg%{public}.0s:Cannot call base isAuthorized directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v4 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call base isAuthorized directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLCondition.mm", 118, "[CLCondition isAuthorized]");
LABEL_11:
    dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
  }
}

- (void)startMonitoring
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call base startMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v3 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call base startMonitoring directly", "{msg%{public}.0s:Cannot call base startMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v4 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call base startMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLCondition.mm", 124, "[CLCondition startMonitoring]");
LABEL_11:
    dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
  }
}

- (void)stopMonitoring
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call base stopMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v3 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call base stopMonitoring directly", "{msg%{public}.0s:Cannot call base stopMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v4 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "false";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call base stopMonitoring directly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLCondition.mm", 129, "[CLCondition stopMonitoring]");
LABEL_11:
    dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
  }
}

- (NSString)monitoredIdentifier
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_identifier(self, a2, v2, v3);
  v8 = objc_msgSend_rangeOfString_(v5, v6, @"@", v7);
  v12 = objc_msgSend_identifier(self, v9, v10, v11);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v12;
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
    }

    v17 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      v30 = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = objc_msgSend_identifier(self, v18, v19, v20);
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor ill formatted identifier name, fenceName:%{public, location:escape_only}@}", &v30, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EE10);
      }
    }

    v21 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      v25 = objc_msgSend_identifier(self, v22, v23, v24);
      v30 = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v25;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor ill formatted identifier name", "{msg%{public}.0s:#monitor ill formatted identifier name, fenceName:%{public, location:escape_only}@}", &v30, 0x1Cu);
    }

    return v16;
  }

  else
  {
    v27 = objc_msgSend_identifier(self, v13, v14, v15);

    return objc_msgSend_substringFromIndex_(v27, v28, v8 + 1, v29);
  }
}

@end