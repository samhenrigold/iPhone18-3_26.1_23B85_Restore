@interface CLIntersiloServiceMock
- (id)getPayloadForKey:(id)key;
- (id)getPayloadForSelector:(SEL)selector;
- (id)syncgetPayloadForSelector:(SEL)selector;
- (void)beginService;
- (void)removePayloadForKey:(id)key;
- (void)removePayloadForSelector:(SEL)selector;
- (void)setPayload:(id)payload forKey:(id)key;
- (void)setPayload:(id)payload forSelector:(SEL)selector;
@end

@implementation CLIntersiloServiceMock

- (void)beginService
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setKeyedPayloads_(self, v3, v4);
}

- (void)setPayload:(id)payload forKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  keyCopy = key;
  v9 = objc_msgSend_keyedPayloads(self, v7, v8);

  if (!v9)
  {
    v20 = sub_1DF814218();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = &unk_1DF8255EF;
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "self.keyedPayloads";
      _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Overrider didn't call up to super for beginService?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = sub_1DF814218();
    if (os_signpost_enabled(v21))
    {
      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = &unk_1DF8255EF;
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "self.keyedPayloads";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Overrider didn't call up to super for beginService?", "{msg%{public}.0s:Overrider didn't call up to super for beginService?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v22 = sub_1DF814218();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = &unk_1DF8255EF;
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "self.keyedPayloads";
      _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overrider didn't call up to super for beginService?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 149, "[CLIntersiloServiceMock setPayload:forKey:]");
LABEL_20:
    __asm { BL              ___stack_chk_fail }
  }

  v12 = objc_msgSend_keyedPayloads(self, v10, v11);
  v14 = objc_msgSend_objectForKey_(v12, v13, keyCopy);

  if (v14)
  {
    v23 = sub_1DF814218();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = &unk_1DF8255EF;
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "![self.keyedPayloads objectForKey:key]";
      _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Only one payload per key at at time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v24 = sub_1DF814218();
    if (os_signpost_enabled(v24))
    {
      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = &unk_1DF8255EF;
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "![self.keyedPayloads objectForKey:key]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only one payload per key at at time", "{msg%{public}.0s:Only one payload per key at at time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v25 = sub_1DF814218();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v28 = 0;
      v29 = 2082;
      v30 = &unk_1DF8255EF;
      v31 = 2082;
      v32 = "assert";
      v33 = 2081;
      v34 = "![self.keyedPayloads objectForKey:key]";
      _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Only one payload per key at at time, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 150, "[CLIntersiloServiceMock setPayload:forKey:]");
    goto LABEL_20;
  }

  v17 = objc_msgSend_keyedPayloads(self, v15, v16);
  objc_msgSend_setObject_forKey_(v17, v18, payloadCopy, keyCopy);

  objc_msgSend_setInUse_(payloadCopy, v19, 1);
}

- (id)getPayloadForKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_msgSend_keyedPayloads(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, keyCopy);

  if (!v9)
  {
    v11 = sub_1DF814218();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "payload";
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:A payload must be ready for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v12 = sub_1DF814218();
    if (os_signpost_enabled(v12))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "payload";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "A payload must be ready for this key", "{msg%{public}.0s:A payload must be ready for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v13 = sub_1DF814218();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1DF8255EF;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "payload";
      _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:A payload must be ready for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 161, "[CLIntersiloServiceMock getPayloadForKey:]");
  }

  return v9;
}

- (void)removePayloadForKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v6 = objc_msgSend_keyedPayloads(self, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, keyCopy);

  if (!v8)
  {
    v13 = sub_1DF814218();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = &unk_1DF8255EF;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "payload";
      _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:A payload must be around to remove for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = sub_1DF814218();
    if (os_signpost_enabled(v14))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = &unk_1DF8255EF;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "payload";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "A payload must be around to remove for this key", "{msg%{public}.0s:A payload must be around to remove for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v15 = sub_1DF814218();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = &unk_1DF8255EF;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "payload";
      _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:A payload must be around to remove for this key, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloService.m", 167, "[CLIntersiloServiceMock removePayloadForKey:]");
  }

  v11 = objc_msgSend_keyedPayloads(self, v9, v10);
  objc_msgSend_removeObjectForKey_(v11, v12, keyCopy);
}

- (void)setPayload:(id)payload forSelector:(SEL)selector
{
  payloadCopy = payload;
  v8 = NSStringFromSelector(selector);
  objc_msgSend_setPayload_forKey_(self, v7, payloadCopy, v8);
}

- (id)syncgetPayloadForSelector:(SEL)selector
{
  v4 = NSStringFromSelector(selector);
  v6 = objc_msgSend_getPayloadForKey_(self, v5, v4);

  return v6;
}

- (id)getPayloadForSelector:(SEL)selector
{
  v4 = NSStringFromSelector(selector);
  v6 = objc_msgSend_getPayloadForKey_(self, v5, v4);

  return v6;
}

- (void)removePayloadForSelector:(SEL)selector
{
  v5 = NSStringFromSelector(selector);
  objc_msgSend_removePayloadForKey_(self, v4, v5);
}

@end