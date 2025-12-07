@interface CLStateTracker
+ (const)trackerStateTypeName;
+ (unint64_t)trackerStateSize;
- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints;
- (CLStateTracker)initWithQueue:(id)queue;
- (void)dealloc;
- (void)identifier;
@end

@implementation CLStateTracker

- (void)dealloc
{
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = CLStateTracker;
  [(CLStateTracker *)&v3 dealloc];
}

- (CLStateTracker)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = CLStateTracker;
  v3 = [(CLStateTracker *)&v7 init];
  if (v3)
  {
    objc_initWeak(&location, v3);
    objc_copyWeak(&v5, &location);
    v3->_handle = os_state_add_handler();
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
  }

  v7 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v12 = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    ClassName = object_getClassName(self);
    v18 = 2082;
    Name = sel_getName(a2);
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v12, 0x26u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
    }
  }

  v8 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v9 = object_getClassName(self);
    v10 = sel_getName(a2);
    v12 = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    ClassName = v9;
    v18 = 2082;
    Name = v10;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Subclass should have overriden this", "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v12, 0x26u);
  }

  return 0;
}

+ (unint64_t)trackerStateSize
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
  }

  v4 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v9 = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    ClassName = object_getClassName(self);
    v15 = 2082;
    Name = sel_getName(a2);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v9, 0x26u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
    }
  }

  v5 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v6 = object_getClassName(self);
    v7 = sel_getName(a2);
    v9 = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    ClassName = v6;
    v15 = 2082;
    Name = v7;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Subclass should have overriden this", "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v9, 0x26u);
  }

  return 0;
}

+ (const)trackerStateTypeName
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
  }

  v4 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v9 = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    ClassName = object_getClassName(self);
    v15 = 2082;
    Name = sel_getName(a2);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v9, 0x26u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
    }
  }

  v5 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v6 = object_getClassName(self);
    v7 = sel_getName(a2);
    v9 = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    ClassName = v6;
    v15 = 2082;
    Name = v7;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Subclass should have overriden this", "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v9, 0x26u);
  }

  return "UnknownStateTracker";
}

- (void)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
  }

  v4 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v9 = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    ClassName = object_getClassName(self);
    v15 = 2082;
    Name = sel_getName(a2);
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v9, 0x26u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E9D0);
    }
  }

  v5 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v6 = object_getClassName(self);
    v7 = sel_getName(a2);
    v9 = 68289538;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    ClassName = v6;
    v15 = 2082;
    Name = v7;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Subclass should have overriden this", "{msg%{public}.0s:Subclass should have overriden this, class:%{public, location:escape_only}s, SEL:%{public, location:escape_only}s}", &v9, 0x26u);
  }

  return self;
}

@end