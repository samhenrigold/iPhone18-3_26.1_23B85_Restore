@interface _PFRunningBoardBackgroundRuntimeVoucher
+ (id)_beginPowerAssertionNamed:(id)named;
+ (void)_deferredInitialization;
+ (void)_endPowerAssertionWithVoucher:(id)voucher;
- (_PFRunningBoardBackgroundRuntimeVoucher)initWithTask:(id)task;
- (void)dealloc;
@end

@implementation _PFRunningBoardBackgroundRuntimeVoucher

+ (void)_deferredInitialization
{
  objc_opt_self();
  if (_VoucherRunningBoardOnceToken != -1)
  {

    dispatch_once(&_VoucherRunningBoardOnceToken, &__block_literal_global_181);
  }
}

- (_PFRunningBoardBackgroundRuntimeVoucher)initWithTask:(id)task
{
  v21[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _PFRunningBoardBackgroundRuntimeVoucher;
  v4 = [(_PFBackgroundRuntimeVoucher *)&v18 initWithTask:?];
  if (!v4)
  {
    return v4;
  }

  +[_PFRunningBoardBackgroundRuntimeVoucher _deferredInitialization];
  if (byte_1ED4BEB4D)
  {
    v5 = objc_alloc(getRunningBoardServicesRBSAssertionClass());
    v6 = qword_1ED4BEB88;
    v21[0] = [objc_opt_class() domainAttribute];
    v7 = [v5 initWithExplanation:task target:v6 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 1)}];
    v4->_assertion = v7;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (getRunningBoardServicesRBSAssertionClass() && getRunningBoardServicesRBSTargetClass() && getRunningBoardServicesRBSDomainAttributeClass() && qword_1ED4BEB88 != 0)
    {
      return v4;
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v12 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          *buf = 0;
LABEL_31:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: RBSAssertion returned nil initialization\n", buf, 2u);
        }
      }

      else if (v14)
      {
        *buf = 0;
        goto LABEL_31;
      }
    }

    _NSCoreDataLog_console(1, "RBSAssertion returned nil initialization");
    objc_autoreleasePoolPop(v11);
    byte_1ED4BEB4D = 0;
    return v4;
  }

  if (!v4->_assertion)
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = objc_autoreleasePoolPush();
  _pflogInitialize(9);
  if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        taskCopy2 = task;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: Initialized RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }

    else
    {
      v15 = _PFLogGetLogStream(9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        taskCopy2 = task;
        _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_INFO, "CoreData: debug: Initialized RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v16 = 1;
  }

  else
  {
    v16 = 9;
  }

  _NSCoreDataLog_console(v16, "Initialized RunningBoard assertion for %@", task);
  objc_autoreleasePoolPop(v8);
  return v4;
}

+ (id)_beginPowerAssertionNamed:(id)named
{
  v21 = *MEMORY[0x1E69E9840];
  +[_PFRunningBoardBackgroundRuntimeVoucher _deferredInitialization];
  if (byte_1ED4BEB4D != 1)
  {
    return [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:named];
  }

  v4 = [[_PFRunningBoardBackgroundRuntimeVoucher alloc] initWithTask:named];
  v16 = 0;
  objc_initWeak(&location, v4);
  assertion = [(_PFRunningBoardBackgroundRuntimeVoucher *)v4 assertion];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___PFRunningBoardBackgroundRuntimeVoucher__beginPowerAssertionNamed___block_invoke;
  v13[3] = &unk_1E6EC5500;
  objc_copyWeak(&v14, &location);
  [(RBSAssertion *)assertion setInvalidationHandler:v13];
  v6 = [(RBSAssertion *)[(_PFRunningBoardBackgroundRuntimeVoucher *)v4 assertion] acquireWithError:&v16];
  v7 = objc_autoreleasePoolPush();
  if ((v6 & 1) == 0)
  {
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          *buf = 138412546;
          namedCopy3 = named;
          v19 = 2112;
          v20 = v16;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to acquire RunningBoard assertion for task '%@' error: %@\n", buf, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Failed to acquire RunningBoard assertion for task '%@' error: %@", named, v16);
    objc_autoreleasePoolPop(v7);
    [(_PFRunningBoardBackgroundRuntimeVoucher *)v4 setAssertion:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    return [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:named];
  }

  _pflogInitialize(9);
  if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v8 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        namedCopy3 = named;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: Successfully acquired RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }

    else
    {
      v10 = _PFLogGetLogStream(9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        namedCopy3 = named;
        _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: debug: Successfully acquired RunningBoard assertion for %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v11 = 1;
  }

  else
  {
    v11 = 9;
  }

  _NSCoreDataLog_console(v11, "Successfully acquired RunningBoard assertion for %@", named);
  objc_autoreleasePoolPop(v7);
  [(_PFBackgroundRuntimeVoucher *)v4 setStatus:2];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return v4;
}

+ (void)_endPowerAssertionWithVoucher:(id)voucher
{
  v22 = *MEMORY[0x1E69E9840];
  if (voucher)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (byte_1ED4BEB4D == 1)
      {
        v17 = 0;
        v4 = [objc_msgSend(voucher "assertion")];
        v5 = objc_autoreleasePoolPush();
        if (v4)
        {
          _pflogInitialize(9);
          if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                v7 = *(voucher + 1);
                *buf = 138412290;
                v19 = v7;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Invalidated RunningBoard assertion for %@\n", buf, 0xCu);
              }
            }

            else
            {
              v13 = _PFLogGetLogStream(9);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v14 = *(voucher + 1);
                *buf = 138412290;
                v19 = v14;
                _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_INFO, "CoreData: debug: Invalidated RunningBoard assertion for %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v15 = 1;
          }

          else
          {
            v15 = 9;
          }

          _NSCoreDataLog_console(v15, "Invalidated RunningBoard assertion for %@", *(voucher + 1));
          objc_autoreleasePoolPop(v5);
          [voucher setStatus:4];
          goto LABEL_30;
        }

        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v10 = _pflogging_catastrophic_mode;
          v11 = _PFLogGetLogStream(1);
          v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          if (v10)
          {
            if (v12)
            {
              goto LABEL_32;
            }
          }

          else if (v12)
          {
LABEL_32:
            v16 = *(voucher + 1);
            *buf = 138412546;
            v19 = v16;
            v20 = 2112;
            v21 = v17;
            _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to invalidate RunningBoard assertion for task '%@' error: %@\n", buf, 0x16u);
          }
        }

        _NSCoreDataLog_console(1, "Failed to invalidate RunningBoard assertion for task '%@' error: %@", *(voucher + 1), v17);
        objc_autoreleasePoolPop(v5);
LABEL_30:
        [voucher setAssertion:0];
        [(_PFBackgroundRuntimeVoucher *)voucher _notifyEndAssertion];

        return;
      }

      if ([voucher assertion])
      {
        v8 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal state trying to invalidate an RBSAssertion while RunningBoard services are disabled\n", buf, 2u);
        }

        v9 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal state trying to invalidate an RBSAssertion while RunningBoard services are disabled", buf, 2u);
        }
      }
    }

    else
    {

      [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:voucher];
    }
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  assertion = self->_assertion;
  if (assertion)
  {
    v10 = 0;
    if (([(RBSAssertion *)assertion invalidateWithError:&v10]& 1) != 0)
    {
LABEL_10:
      v8 = self->_assertion;
      goto LABEL_11;
    }

    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 138412290;
          v12 = v10;
LABEL_13:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to invalidate RunningBoard assertion during dealloc: %@\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 138412290;
        v12 = v10;
        goto LABEL_13;
      }
    }

    _NSCoreDataLog_console(1, "Failed to invalidate RunningBoard assertion during dealloc: %@", v10);
    objc_autoreleasePoolPop(v4);
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  self->_assertion = 0;
  v9.receiver = self;
  v9.super_class = _PFRunningBoardBackgroundRuntimeVoucher;
  [(_PFBackgroundRuntimeVoucher *)&v9 dealloc];
}

@end