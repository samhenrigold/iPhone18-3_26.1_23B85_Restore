@interface CLIntersiloService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
+ (void)performSyncOnSilo:(id)silo invoker:(id)invoker;
- (CLIntersiloService)init;
- (CLIntersiloService)initWithInboundProtocol:(id)protocol outboundProtocol:(id)outboundProtocol;
- (NSString)debugDescription;
- (void)setSilo:(id)silo;
- (void)setVendor:(id)vendor;
@end

@implementation CLIntersiloService

+ (id)getSilo
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
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
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
      v12 = "((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
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
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 31, "+[CLIntersiloService getSilo]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }
}

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  blockedCopy = blocked;
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }

  v6 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
  {
    v7 = v6;
    v19 = 68289282;
    *v20 = 2082;
    *&v20[2] = &unk_1DF8255EF;
    *&v20[10] = 2114;
    *&v20[12] = objc_opt_class();
    v8 = *&v20[12];
    _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:-becameFatallyBlocked:index: was not overriden, class:%{public, location:escape_only}@}", &v19, 0x1Cu);

    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
    }
  }

  v9 = qword_1ED5FAD48;
  if (os_signpost_enabled(qword_1ED5FAD48))
  {
    v12 = v9;
    v13 = objc_opt_class();
    v19 = 68289282;
    *v20 = 2082;
    *&v20[2] = &unk_1DF8255EF;
    *&v20[10] = 2114;
    *&v20[12] = v13;
    v14 = v13;
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "-becameFatallyBlocked:index: was not overriden", "{msg%{public}.0s:-becameFatallyBlocked:index: was not overriden, class:%{public, location:escape_only}@}", &v19, 0x1Cu);
  }

  v15 = index + 1;
  if (v15 < objc_msgSend_count(blockedCopy, v10, v11, v19, *v20, *&v20[8]))
  {
    v17 = objc_msgSend_objectAtIndexedSubscript_(blockedCopy, v16, v15);
    objc_msgSend_becameFatallyBlocked_index_(v17, v18, blockedCopy, v15);
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
      v17 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
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
      v17 = "((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
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
      v17 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 51, "+[CLIntersiloService performSyncOnSilo:invoker:]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }
}

- (CLIntersiloService)init
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
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
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
      v12 = "((void *)0)";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
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
      v12 = "((void *)0)";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 56, "[CLIntersiloService init]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }
}

- (CLIntersiloService)initWithInboundProtocol:(id)protocol outboundProtocol:(id)outboundProtocol
{
  v25[2] = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  outboundProtocolCopy = outboundProtocol;
  v23.receiver = self;
  v23.super_class = CLIntersiloService;
  v8 = [(CLIntersiloService *)&v23 init];
  v11 = v8;
  if (v8)
  {
    if (protocolCopy && outboundProtocolCopy)
    {
      v12 = objc_msgSend_sharedInterface(CLIntersiloInterface, v9, v10);
      v25[0] = &unk_1F5ACAE18;
      v25[1] = &unk_1F5ACA788;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v25, 2);
      objc_msgSend_extendSelectorInfoWithProtocol_bases_(v12, v15, protocolCopy, v14);

      v18 = objc_msgSend_sharedInterface(CLIntersiloInterface, v16, v17);
      v24 = &unk_1F5ACA788;
      v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, &v24, 1);
      objc_msgSend_extendSelectorInfoWithProtocol_bases_(v18, v21, outboundProtocolCopy, v20);
    }

    else
    {
      v18 = v8;
      v11 = 0;
    }
  }

  return v11;
}

- (void)setSilo:(id)silo
{
  v16 = *MEMORY[0x1E69E9840];
  siloCopy = silo;
  if (self->_silo)
  {
    v5 = sub_1DF814218();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "!_silo";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The silo associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_1DF814218();
    if (os_signpost_enabled(v6))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "!_silo";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The silo associated with a CLIntersiloService may not be changed once set", "{msg%{public}.0s:The silo associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF814218();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "!_silo";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The silo associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 79, "[CLIntersiloService setSilo:]");
  }

  self->_silo = siloCopy;
}

- (void)setVendor:(id)vendor
{
  v16 = *MEMORY[0x1E69E9840];
  vendorCopy = vendor;
  if (self->_vendor)
  {
    v5 = sub_1DF814218();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "!_vendor";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The vendor associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_1DF814218();
    if (os_signpost_enabled(v6))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "!_vendor";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The vendor associated with a CLIntersiloService may not be changed once set", "{msg%{public}.0s:The vendor associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF814218();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "!_vendor";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The vendor associated with a CLIntersiloService may not be changed once set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 84, "[CLIntersiloService setVendor:]");
  }

  self->_vendor = vendorCopy;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = CLIntersiloService;
  v4 = [(CLIntersiloService *)&v14 debugDescription];
  v7 = objc_msgSend_universe(self, v5, v6);
  v10 = objc_msgSend_silo(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v3, v11, @"%@\nSilo: %@", v4, v10);

  return v12;
}

@end