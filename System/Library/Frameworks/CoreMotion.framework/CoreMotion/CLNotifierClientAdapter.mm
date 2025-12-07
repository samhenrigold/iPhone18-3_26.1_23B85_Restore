@interface CLNotifierClientAdapter
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLNotifierClientAdapter)init;
- (CLNotifierClientAdapter)initWithClient:(CLNotifierClientBase *)client;
- (NSString)debugDescription;
- (void)onNotification:(int)notification withData:(id)data;
@end

@implementation CLNotifierClientAdapter

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < objc_msgSend_count(blocked, a2, blocked))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(blocked, v6, v5);
    objc_msgSend_becameFatallyBlocked_index_(v7, v8, blocked, v5);
  }
}

- (CLNotifierClientAdapter)init
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27F8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v3 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v4 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLNotifierClientAdapter.mm", 25, "[CLNotifierClientAdapter init]");
LABEL_11:
    dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
  }
}

- (CLNotifierClientAdapter)initWithClient:(CLNotifierClientBase *)client
{
  v8.receiver = self;
  v8.super_class = CLNotifierClientAdapter;
  v4 = [(CLNotifierClientAdapter *)&v8 init];
  v6 = v4;
  if (v4)
  {
    v4->_client = client;
  }

  objc_msgSend_setValid_(v4, v5, 1);
  return v6;
}

- (void)onNotification:(int)notification withData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  client = self->_client;
  if (!client)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
    }

    v6 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "_client";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v7 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "_client";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v8 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "_client";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLNotifierClientAdapter.mm", 48, "[CLNotifierClientAdapter onNotification:withData:]");
  }

  v5 = *(client->var0 + 2);

  v5();
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CLNotifierClientAdapter;
  v4 = [(CLNotifierClientAdapter *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\nCLNotifierClientBase: %p", v4, self->_client);
}

@end