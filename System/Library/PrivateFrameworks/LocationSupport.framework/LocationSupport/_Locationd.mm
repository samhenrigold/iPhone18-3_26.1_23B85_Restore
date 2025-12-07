@interface _Locationd
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
+ (void)performSyncOnSilo:(id)silo invoker:(id)invoker;
@end

@implementation _Locationd

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v22 = *MEMORY[0x1E69E9840];
  blockedCopy = blocked;
  v8 = blockedCopy;
  if ((byte_1ED5FAD98 & 1) == 0)
  {
    _Exit(0);
  }

  v9 = index + 1;
  if (v9 < objc_msgSend_count(blockedCopy, v6, v7))
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v10 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_FAULT, "_Locationd should come last?!", &v16, 2u);
    }

    v12 = objc_msgSend_objectAtIndexedSubscript_(v8, v11, v9);
    objc_msgSend_becameFatallyBlocked_index_(v12, v13, v8, v9);
  }

  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }

  v14 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
  {
    v16 = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = &unk_1DF8255EF;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:locationd became blocked, non-fatally because internal install, ImplicatedServicesSoFar:%{public, location:escape_only}@}", &v16, 0x1Cu);
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }
  }

  v15 = qword_1ED5FAD48;
  if (os_signpost_enabled(qword_1ED5FAD48))
  {
    v16 = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = &unk_1DF8255EF;
    v20 = 2114;
    v21 = v8;
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "locationd became blocked, non-fatally because internal install", "{msg%{public}.0s:locationd became blocked, non-fatally because internal install, ImplicatedServicesSoFar:%{public, location:escape_only}@}", &v16, 0x1Cu);
  }
}

+ (void)performSyncOnSilo:(id)silo invoker:(id)invoker
{
  v18 = *MEMORY[0x1E69E9840];
  siloCopy = silo;
  invokerCopy = invoker;
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Don't message _Locationd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v8 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "__objc_no";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Don't message _Locationd", "{msg%{public}.0s:Don't message _Locationd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Don't message _Locationd, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", 106, "+[_Locationd performSyncOnSilo:invoker:]");
    __break(1u);
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }
}

@end