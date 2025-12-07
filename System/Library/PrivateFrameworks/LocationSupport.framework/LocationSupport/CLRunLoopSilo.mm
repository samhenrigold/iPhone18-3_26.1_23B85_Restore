@interface CLRunLoopSilo
- (BOOL)isSuspended;
- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)identifier;
- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)identifier bePermissive:(BOOL)permissive;
- (CLRunLoopSilo)initWithIdentifier:(id)identifier;
- (CLRunLoopSilo)initWithUnderlyingRunLoop:(__CFRunLoop *)loop;
- (id)debugDescription;
- (id)getTimeCoercibleVariantInstance;
- (id)newTimer;
- (void)afterInterval:(double)interval async:(id)async;
- (void)assertInside;
- (void)assertOutside;
- (void)async:(id)async;
- (void)heartBeat:(id)beat;
- (void)resume;
- (void)suspend;
- (void)sync:(id)sync;
@end

@implementation CLRunLoopSilo

- (CLRunLoopSilo)initWithIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = CLRunLoopSilo;
  v7 = [(CLSilo *)&v27 initWithIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_msgSend_globalConfiguration(CLSilo, v5, v6);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"NameToCohortMap");

    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, identifierCopy);
    if (v12)
    {
      v14 = v12;
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"%@(%@)", identifierCopy, v12);
    }

    else
    {
      v14 = objc_msgSend_objectForKeyedSubscript_(v10, v13, @"default");
      if (!v14)
      {
        v18 = objc_alloc_init(CLRunLoopSiloThread);
        siloThread = v7->_siloThread;
        v7->_siloThread = v18;

        goto LABEL_8;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%@(%@)", identifierCopy, v14);
    }
    v16 = ;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = sub_1DF810454;
    v24 = &unk_1E86C8348;
    v25 = v7;
    v14 = v14;
    v26 = v14;
    if (qword_1ED5FAE68 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      os_unfair_lock_lock(&unk_1ED5FAE58);
      v23(v22, qword_1ED5FAE60);
      os_unfair_lock_unlock(&unk_1ED5FAE58);

      identifierCopy = v16;
LABEL_8:
      if (v7->_siloThread)
      {
        break;
      }

      v20 = sub_1DF80FDC0();
      v14 = &off_1DF825000;
      v16 = &unk_1DF8255EF;
      v10 = "_siloThread";
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v29 = 0;
        v30 = 2082;
        v31 = &unk_1DF8255EF;
        v32 = 2082;
        v33 = "assert";
        v34 = 2081;
        v35 = "_siloThread";
        _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSiloThread failed to init, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v21 = sub_1DF80FDC0();
      if (os_signpost_enabled(v21))
      {
        *buf = 68289539;
        v29 = 0;
        v30 = 2082;
        v31 = &unk_1DF8255EF;
        v32 = 2082;
        v33 = "assert";
        v34 = 2081;
        v35 = "_siloThread";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSiloThread failed to init", "{msg%{public}.0s:CLRunLoopSiloThread failed to init, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v7 = sub_1DF80FDC0();
      if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v29 = 0;
        v30 = 2082;
        v31 = &unk_1DF8255EF;
        v32 = 2082;
        v33 = "assert";
        v34 = 2081;
        v35 = "_siloThread";
        _os_log_impl(&dword_1DF7FE000, &v7->super.super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSiloThread failed to init, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLRunLoopSilo.m", 224, "[CLRunLoopSilo initWithIdentifier:]");
LABEL_19:
      dispatch_once(&qword_1ED5FAE68, &unk_1F5AC6460);
    }
  }

  return v7;
}

- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CLRunLoopSilo;
  v3 = [(CLSilo *)&v11 initWithIdentifier:identifier];
  if (v3 && (v4 = [CLRunLoopSiloThread alloc], v7 = objc_msgSend_initWithCurrentThread(v4, v5, v6), siloThread = v3->_siloThread, v3->_siloThread = v7, siloThread, !v3->_siloThread))
  {
    v9 = 0;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (CLRunLoopSilo)initWithCurrentRunLoopAndIdentifier:(id)identifier bePermissive:(BOOL)permissive
{
  result = objc_msgSend_initWithCurrentRunLoopAndIdentifier_(self, a2, identifier);
  if (result)
  {
    result->_useCLPermissiveTimer = permissive;
  }

  return result;
}

- (CLRunLoopSilo)initWithUnderlyingRunLoop:(__CFRunLoop *)loop
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"RunLoop: %p", loop);
  if (CFRunLoopGetCurrent() == loop)
  {
    v7 = objc_msgSend_initWithCurrentRunLoopAndIdentifier_(self, v6, v5);
LABEL_6:
    v7 = v7;
    v12 = v7;
    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = CLRunLoopSilo;
  v7 = [(CLSilo *)&v14 initWithIdentifier:v5];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [CLRunLoopSiloThread alloc];
  v10 = objc_msgSend_initWithRunLoop_(v8, v9, loop);
  siloThread = v7->_siloThread;
  v7->_siloThread = v10;

  if (v7->_siloThread)
  {
    goto LABEL_6;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)getTimeCoercibleVariantInstance
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support time coercion. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLRunLoopSilo.m", 275, "[CLRunLoopSilo getTimeCoercibleVariantInstance]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (void)assertInside
{
  v7 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], a2, v2);
  v6 = objc_msgSend_underlyingRunLoop(self->_siloThread, v4, v5);
  if (v7 != v6)
  {
    __assert_rtn("[CLRunLoopSilo assertInside]", "CLRunLoopSilo.m", 285, "[NSRunLoop currentRunLoop] == _siloThread.underlyingRunLoop");
  }
}

- (void)assertOutside
{
  v7 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], a2, v2);
  v6 = objc_msgSend_underlyingRunLoop(self->_siloThread, v4, v5);
  if (v7 == v6)
  {
    __assert_rtn("[CLRunLoopSilo assertOutside]", "CLRunLoopSilo.m", 290, "[NSRunLoop currentRunLoop] != _siloThread.underlyingRunLoop");
  }
}

- (void)suspend
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLRunLoopSilo.m", 295, "[CLRunLoopSilo suspend]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support resume. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support resume. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support resume. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support resume. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLRunLoopSilo.m", 300, "[CLRunLoopSilo resume]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (BOOL)isSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444", "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLRunLoopSilo doesn't support suspend or resume yet. See rdar://problem/45973444, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLRunLoopSilo.m", 305, "[CLRunLoopSilo isSuspended]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }
}

- (id)newTimer
{
  v3 = [CLRunLoopTimerScheduler alloc];
  v5 = objc_msgSend_initWithRunLoopSilo_(v3, v4, self);
  if (self->_useCLPermissiveTimer)
  {
    v6 = off_1E86C7FE0;
  }

  else
  {
    v6 = &off_1E86C8008;
  }

  v7 = objc_alloc(*v6);
  v9 = objc_msgSend_initInSilo_withScheduler_(v7, v8, self, v5);

  return v9;
}

- (void)async:(id)async
{
  asyncCopy = async;
  v7 = objc_msgSend_underlyingRunLoop(self->_siloThread, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1DF8111C4;
  v10[3] = &unk_1E86C8370;
  v10[4] = self;
  v11 = asyncCopy;
  v8 = asyncCopy;
  objc_msgSend_performBlock_(v7, v9, v10);
}

- (void)sync:(id)sync
{
  syncCopy = sync;
  v12[0] = 0;
  v12[1] = 0;
  objc_msgSend_threadId(self->_siloThread, v5, v6);
  pthread_dependency_init_np();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DF8112A0;
  v9[3] = &unk_1E86C8398;
  v10 = syncCopy;
  v11 = v12;
  v7 = syncCopy;
  objc_msgSend_async_(self, v8, v9);
  pthread_dependency_wait_np();
}

- (void)afterInterval:(double)interval async:(id)async
{
  siloThread = self->_siloThread;
  asyncCopy = async;
  v11 = objc_msgSend_underlyingRunLoop(siloThread, v7, v8);
  v9 = _Block_copy(asyncCopy);

  objc_msgSend_performSelector_withObject_afterDelay_(v11, v10, sel_async_, v9, interval);
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->super._identifier;
  v5 = objc_msgSend_underlyingRunLoop(self->_siloThread, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"CLRunLoopSilo: %@ - %@", identifier, v5);

  return v7;
}

- (void)heartBeat:(id)beat
{
  beatCopy = beat;
  v7 = objc_msgSend_underlyingRunLoop(self->_siloThread, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1DF8114C8;
  v10[3] = &unk_1E86C83C0;
  v11 = beatCopy;
  selfCopy = self;
  v8 = beatCopy;
  objc_msgSend_performBlock_(v7, v9, v10);
}

@end