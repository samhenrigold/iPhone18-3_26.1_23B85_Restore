@interface _PFBackgroundRuntimeVoucher
+ (id)_beginPowerAssertionNamed:(id)named;
+ (void)_endPowerAssertionWithVoucher:(id)voucher;
+ (void)initialize;
- (NSString)name;
- (_PFBackgroundRuntimeVoucher)init;
- (_PFBackgroundRuntimeVoucher)initWithTask:(id)task;
- (__CFString)statusName;
- (id)createPayload;
- (void)_notifyEndAssertion;
- (void)assertionWillCancel;
- (void)dealloc;
@end

@implementation _PFBackgroundRuntimeVoucher

- (void)_notifyEndAssertion
{
  if (qword_1ED4BEB70)
  {
    v1 = result;
    objc_opt_self();
    result = [qword_1ED4BEB70 registerName("backgroundTimeRemaining")];
    v1[7] = v2;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _PFBackgroundRuntimeVoucher;
  [(_PFBackgroundRuntimeVoucher *)&v3 dealloc];
}

+ (void)initialize
{
  v26 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (objc_opt_class() != self)
  {
    return;
  }

  _MergedGlobals_88 = [_PFRoutines integerValueForOverride:?];
  v3 = getprogname();
  qword_1ED4BEB58 = v3;
  if (!strcmp("chronod", v3) || !strcmp("SpringBoard", v3) || !strcmp("Carousel", v3))
  {
    return;
  }

  qword_1ED4BEB60 = objc_getClass("UIApplication");
  if (qword_1ED4BEB60)
  {
    if (objc_opt_respondsToSelector())
    {
      sharedApplication = [qword_1ED4BEB60 sharedApplication];
    }

    else
    {
      sharedApplication = 0;
    }

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *str = 0u;
    v20 = 0u;
    __strlcpy_chk();
    qword_1ED4BEB68 = sel_registerName(str);
    v5 = objc_opt_respondsToSelector();
    if (!_MergedGlobals_88)
    {
LABEL_27:
      if (v5)
      {
        qword_1ED4BEB70 = sharedApplication;
        if (byte_1ED4BEECF == 1)
        {
          byte_1ED4BEB49 = 1;
        }
      }

      goto LABEL_30;
    }

    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (v5)
          {
            v8 = @"sucess";
          }

          else
          {
            v8 = @"failure";
          }

          *buf = 134218498;
          v14 = qword_1ED4BEB60;
          v15 = 2048;
          v16 = sharedApplication;
          v17 = 2112;
          v18 = v8;
          v9 = "CoreData: error: Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@\n";
LABEL_37:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v9, buf, 0x20u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (v5)
          {
            v12 = @"sucess";
          }

          else
          {
            v12 = @"failure";
          }

          *buf = 134218498;
          v14 = qword_1ED4BEB60;
          v15 = 2048;
          v16 = sharedApplication;
          v17 = 2112;
          v18 = v12;
          v9 = "CoreData: warning: Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@\n";
          goto LABEL_37;
        }
      }
    }

    if (v5)
    {
      v10 = @"sucess";
    }

    else
    {
      v10 = @"failure";
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    _NSCoreDataLog_console(v11, "Registration for _beginPowerAssertionNamed completed with class %p on app %p and result %@", qword_1ED4BEB60, sharedApplication, v10);
    objc_autoreleasePoolPop(v6);
    goto LABEL_27;
  }

LABEL_30:
  if (!qword_1ED4BEB70 && !strcmp("Podcasts", qword_1ED4BEB58))
  {
    byte_1ED4BEB4C = 1;
  }
}

- (_PFBackgroundRuntimeVoucher)init
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (_PFBackgroundRuntimeVoucher)initWithTask:(id)task
{
  v7.receiver = self;
  v7.super_class = _PFBackgroundRuntimeVoucher;
  v4 = [(_PFBackgroundRuntimeVoucher *)&v7 init];
  if (v4)
  {
    v4->_taskName = [task copy];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4->_beginTime = v5;
    v4->_status = 0;
  }

  return v4;
}

+ (id)_beginPowerAssertionNamed:(id)named
{
  if (byte_1ED4BEB49)
  {
    v3 = &off_1E6EC0C70;
  }

  else
  {
    v3 = off_1E6EC0C50;
  }

  return [(__objc2_class *)*v3 _beginPowerAssertionNamed:named];
}

+ (void)_endPowerAssertionWithVoucher:(id)voucher
{
  if (voucher)
  {
    v4 = objc_opt_class();

    [v4 _endPowerAssertionWithVoucher:voucher];
  }
}

- (__CFString)statusName
{
  if (result)
  {
    status = [(__CFString *)result status];
    if ((status - 1) > 4)
    {
      return @"_PFBackgroundRuntimeVoucherStatusUninitialized";
    }

    else
    {
      return off_1E6EC5520[status - 1];
    }
  }

  return result;
}

- (NSString)name
{
  v10 = *MEMORY[0x1E69E9840];
  status = [(_PFBackgroundRuntimeVoucher *)self status];
  switch(status)
  {
    case 1uLL:
      return @"com.apple.coredata.assertions.uikit.denied";
    case 4uLL:
      return @"com.apple.coredata.assertions.uikit.success";
    case 3uLL:
      return @"com.apple.coredata.assertions.uikit.cancelled";
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    statusName = [(_PFBackgroundRuntimeVoucher *)self statusName];
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Voucher status %@ does not correspond to one of the expected CoreAnalytics event names. Was a new event type added?\n", &v8, 0xCu);
  }

  v6 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    statusName2 = [(_PFBackgroundRuntimeVoucher *)self statusName];
    v8 = 138412290;
    statusName = statusName2;
    _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Voucher status %@ does not correspond to one of the expected CoreAnalytics event names. Was a new event type added?", &v8, 0xCu);
  }

  return @"invalid-name";
}

- (id)createPayload
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v9[0] = @"process_name";
  objc_opt_self();
  v10[0] = [MEMORY[0x1E696AEC0] stringWithCString:qword_1ED4BEB58 encoding:4];
  v9[1] = @"assertion_label";
  if (self)
  {
    taskName = self->_taskName;
  }

  else
  {
    taskName = 0;
  }

  v10[1] = taskName;
  v9[2] = @"background_time_remaining";
  v10[2] = [MEMORY[0x1E696AD98] numberWithDouble:self->_backgroundTimeRemaining];
  v5 = [v3 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 3)}];
  status = [(_PFBackgroundRuntimeVoucher *)self status];
  if (status == 3)
  {
    v7 = 48;
    goto LABEL_7;
  }

  if (status == 4)
  {
    v7 = 40;
LABEL_7:
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *(&self->super.isa + v7) - self->_beginTime), @"duration_seconds"}];
  }

  return v5;
}

- (void)assertionWillCancel
{
  if (result)
  {
    v1 = result;
    result[3] = 3;
    result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v1[6] = v2;
    if (qword_1ED4BEB70)
    {
      objc_opt_self();
      result = [qword_1ED4BEB70 registerName("backgroundTimeRemaining")];
      v1[7] = v3;
    }
  }

  return result;
}

@end