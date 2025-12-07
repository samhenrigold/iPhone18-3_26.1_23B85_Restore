@interface CLIntersiloInterface
+ (id)sharedInterface;
- (BOOL)hasInfoForSelector:(SEL)selector;
- (id)getInfoForSelector:(SEL)selector;
- (void)extendSelectorInfoWithProtocol:(id)protocol bases:(id)bases;
@end

@implementation CLIntersiloInterface

+ (id)sharedInterface
{
  if (qword_1ED5FAE20 != -1)
  {
    dispatch_once(&qword_1ED5FAE20, &unk_1F5AC6340);
  }

  v3 = qword_1ED5FAE18;

  return v3;
}

- (void)extendSelectorInfoWithProtocol:(id)protocol bases:(id)bases
{
  v21 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  basesCopy = bases;
  if ((sub_1DF807F18(protocolCopy, basesCopy) & 1) == 0)
  {
    v6 = sub_1DF80C018();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290051;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2114;
      v14 = protocolCopy;
      v15 = 2114;
      v16 = basesCopy;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Selector extension failed!, proto:%{public, location:escape_only}@, bases:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v7 = sub_1DF80C018();
    if (os_signpost_enabled(v7))
    {
      *buf = 68290051;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2114;
      v14 = protocolCopy;
      v15 = 2114;
      v16 = basesCopy;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "__objc_no";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Selector extension failed!", "{msg%{public}.0s:Selector extension failed!, proto:%{public, location:escape_only}@, bases:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v8 = sub_1DF80C018();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68290051;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = &unk_1DF8255EF;
      v13 = 2114;
      v14 = protocolCopy;
      v15 = 2114;
      v16 = basesCopy;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Selector extension failed!, proto:%{public, location:escape_only}@, bases:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloInterface.mm", 330, "[CLIntersiloInterface extendSelectorInfoWithProtocol:bases:]");
    __break(1u);
  }
}

- (id)getInfoForSelector:(SEL)selector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1DF8090BC;
  v10 = sub_1DF8090FC;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1DF80C4A8;
  v5[3] = &unk_1E86C82A8;
  v5[4] = &v6;
  v5[5] = selector;
  sub_1DF7FF4D8(v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasInfoForSelector:(SEL)selector
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1DF8090BC;
  v10 = sub_1DF8090FC;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1DF80C7C0;
  v5[3] = &unk_1E86C82A8;
  v5[4] = &v6;
  v5[5] = selector;
  sub_1DF7FF4D8(v5);
  v3 = v7[5] != 0;
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end