@interface MBCellularDataSubscriptionMonitor
- (BOOL)_startDelegateTimerWithTimeout:(unint64_t)timeout;
- (MBCellularDataSubscriptionMonitor)initWithQueue:(id)queue timeout:(unint64_t)timeout;
- (MBCellularDataSubscriptionMonitor)initWithTimeout:(unint64_t)timeout;
- (unint64_t)_backupOnCellularSupportWithError:(id *)error;
- (void)_cancelDelegateTimer;
- (void)_refreshBackupOnCellularSupportWithTimeout:(unint64_t)timeout;
- (void)cancel;
- (void)currentDataSimChanged:(id)changed;
- (void)dataSettingsChanged:(id)changed;
- (void)internetDataStatus:(id)status;
- (void)start;
@end

@implementation MBCellularDataSubscriptionMonitor

- (MBCellularDataSubscriptionMonitor)initWithQueue:(id)queue timeout:(unint64_t)timeout
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = MBCellularDataSubscriptionMonitor;
  v7 = [(MBCellularDataSubscriptionMonitor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MBCellularDataSubscriptionMonitor *)v7 setQueue:queueCopy];
    [(MBCellularDataSubscriptionMonitor *)v8 setTimeout:timeout];
  }

  return v8;
}

- (MBCellularDataSubscriptionMonitor)initWithTimeout:(unint64_t)timeout
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

  v7 = objc_opt_class();
  Name = class_getName(v7);
  v9 = dispatch_queue_create(Name, v6);
  v10 = [(MBCellularDataSubscriptionMonitor *)self initWithQueue:v9 timeout:timeout];
  v11 = v10;
  if (v10)
  {
    [(MBCellularDataSubscriptionMonitor *)v10 setBackupOnCellularSupport:0];
    [(MBCellularDataSubscriptionMonitor *)v11 setCellularRadioType:0];
  }

  return v11;
}

- (unint64_t)_backupOnCellularSupportWithError:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    [MBCellularDataSubscriptionMonitor _backupOnCellularSupportWithError:];
  }

  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  *error = 0;
  telephonyClient = [(MBCellularDataSubscriptionMonitor *)self telephonyClient];
  v7 = telephonyClient;
  if (telephonyClient)
  {
    v52 = 0;
    v8 = [telephonyClient getCurrentDataSubscriptionContextSync:&v52];
    v9 = v52;
    v10 = MBGetDefaultLog(v9);
    v11 = v10;
    if (!v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v9;
        _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the data subscription context: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to fetch the data subscription context: %@", v9);
      }

      v25 = v9;
      v24 = 0;
      *error = v9;
      goto LABEL_66;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = v8;
      _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_INFO, "Fetched the data subscription context: %@", buf, 0xCu);
      _MBLog(@"I ", "Fetched the data subscription context: %@", v8);
    }

    v51 = v9;
    v12 = [v7 getSupports5G:v8 error:&v51];
    v13 = v51;

    if (v12)
    {
      v15 = MBGetDefaultLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v54 = v12;
        _os_log_impl(&dword_1DEB5D000, v15, OS_LOG_TYPE_DEBUG, "Fetched device&carrier 5G support: %{public}@", buf, 0xCu);
        _MBLog(@"Db", "Fetched device&carrier 5G support: %{public}@", v12);
      }

      if (![(__CFString *)v12 BOOLValue])
      {
        v24 = 0;
        goto LABEL_54;
      }

      v16 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];

      v50 = 0;
      v17 = [v7 copyCarrierBundleValueWithDefault:v8 key:@"EnableBackupOnCellular" bundleType:v16 error:&v50];
      v18 = v50;
      v19 = v18;
      if (v17)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v21 = isKindOfClass;
        v22 = MBGetDefaultLog(isKindOfClass);
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v54 = @"EnableBackupOnCellular";
            v55 = 2114;
            *v56 = v17;
            _os_log_impl(&dword_1DEB5D000, v23, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
            _MBLog(@"Df", "Fetched %{public}@ carrier bundle key: %{public}@", @"EnableBackupOnCellular", v17);
          }

          if (([v17 BOOLValue]& 1) == 0)
          {
            v24 = 0;
            goto LABEL_38;
          }

LABEL_37:
          v24 = 2;
LABEL_38:

          v49 = 0;
          v32 = [v7 copyCarrierBundleValueWithDefault:v8 key:@"EnableRestoreOnCellular" bundleType:v16 error:&v49];
          v13 = v49;

          if (v32)
          {
            objc_opt_class();
            v34 = objc_opt_isKindOfClass();
            v35 = v34;
            v36 = MBGetDefaultLog(v34);
            v37 = v36;
            if (v35)
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v54 = @"EnableRestoreOnCellular";
                v55 = 2114;
                *v56 = v32;
                _os_log_impl(&dword_1DEB5D000, v37, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
                _MBLog(@"Df", "Fetched %{public}@ carrier bundle key: %{public}@", @"EnableRestoreOnCellular", v32);
              }

              if (([v32 BOOLValue]& 1) == 0)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v54 = @"EnableRestoreOnCellular";
              v55 = 2114;
              *v56 = v32;
              _os_log_impl(&dword_1DEB5D000, v37, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
              _MBLog(@"E ", "Invalid value for %{public}@ carrier bundle key: %{public}@", @"EnableRestoreOnCellular", v32);
            }
          }

          else
          {
            if (!v13)
            {
LABEL_51:
              v32 = 0;
LABEL_52:
              v24 |= 4uLL;
LABEL_53:

LABEL_54:
              v38 = v13;
              v48 = v13;
              v39 = [v7 getDataStatus:v8 error:&v48];
              v13 = v48;

              if (!v39)
              {
                v45 = MBGetDefaultLog(v40);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v54 = v13;
                  _os_log_impl(&dword_1DEB5D000, v45, OS_LOG_TYPE_ERROR, "Failed to fetch data status: %@", buf, 0xCu);
                  _MBLog(@"E ", "Failed to fetch data status: %@", v13, v47);
                }

                goto LABEL_64;
              }

              newRadioCoverage = [v39 newRadioCoverage];
              radioTechnology = [v39 radioTechnology];
              v43 = radioTechnology;
              if (newRadioCoverage)
              {
                v44 = 2;
              }

              else
              {
                if (radioTechnology != 7)
                {
                  goto LABEL_62;
                }

                v44 = 1;
              }

              radioTechnology = [(MBCellularDataSubscriptionMonitor *)self setCellularRadioType:v44];
              v24 |= 1uLL;
LABEL_62:
              v45 = MBGetDefaultLog(radioTechnology);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                *buf = 138544130;
                v54 = v12;
                v55 = 1024;
                *v56 = newRadioCoverage;
                *&v56[4] = 1024;
                *&v56[6] = v43;
                v57 = 2048;
                v58 = v24;
                _os_log_impl(&dword_1DEB5D000, v45, OS_LOG_TYPE_INFO, "Fetched data status, supports5G:%{public}@, newRadioCoverage:%d, radioTechnology:%d, result:0x%lx", buf, 0x22u);
                _MBLog(@"I ", "Fetched data status, supports5G:%{public}@, newRadioCoverage:%d, radioTechnology:%d, result:0x%lx", v12, newRadioCoverage, v43, v24);
              }

LABEL_64:

              goto LABEL_65;
            }

            v32 = MBGetDefaultLog(v33);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v54 = @"EnableRestoreOnCellular";
              v55 = 2112;
              *v56 = v13;
              _os_log_impl(&dword_1DEB5D000, v32, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ carrier bundle key: %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to fetch %{public}@ carrier bundle key: %@", @"EnableRestoreOnCellular", v13);
            }
          }

          goto LABEL_51;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v54 = @"EnableBackupOnCellular";
          v55 = 2114;
          *v56 = v17;
          _os_log_impl(&dword_1DEB5D000, v23, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
          _MBLog(@"E ", "Invalid value for %{public}@ carrier bundle key: %{public}@", @"EnableBackupOnCellular", v17);
        }
      }

      else
      {
        if (!v18)
        {
LABEL_36:
          v17 = 0;
          goto LABEL_37;
        }

        v17 = MBGetDefaultLog(v18);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v54 = @"EnableBackupOnCellular";
          v55 = 2112;
          *v56 = v19;
          _os_log_impl(&dword_1DEB5D000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ carrier bundle key: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to fetch %{public}@ carrier bundle key: %@", @"EnableBackupOnCellular", v19);
        }
      }

      goto LABEL_36;
    }

    code = [(__CFString *)v13 code];
    if (code == 45 && (-[__CFString domain](v13, "domain"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEqualToString:*MEMORY[0x1E696A798]], v27, v28))
    {
      v29 = MBGetDefaultLog(code);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v54 = v13;
        _os_log_impl(&dword_1DEB5D000, v29, OS_LOG_TYPE_INFO, "Failed to check for device&carrier 5G support: %@", buf, 0xCu);
        v30 = @"I ";
LABEL_27:
        _MBLog(v30, "Failed to check for device&carrier 5G support: %@", v13);
      }
    }

    else
    {
      v29 = MBGetDefaultLog(code);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v13;
        _os_log_impl(&dword_1DEB5D000, v29, OS_LOG_TYPE_ERROR, "Failed to check for device&carrier 5G support: %@", buf, 0xCu);
        v30 = @"E ";
        goto LABEL_27;
      }
    }

    v31 = v13;
    v24 = 0;
    *error = v13;
LABEL_65:

    v9 = v13;
LABEL_66:

    goto LABEL_67;
  }

  [MBError errorWithCode:1 format:@"nil CoreTelephonyClient"];
  *error = v24 = 0;
LABEL_67:

  return v24;
}

- (BOOL)_startDelegateTimerWithTimeout:(unint64_t)timeout
{
  v18 = *MEMORY[0x1E69E9840];
  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MBCellularDataSubscriptionMonitor *)self _cancelDelegateTimer];
  if (timeout)
  {
    objc_initWeak(&location, self);
    queue2 = [(MBCellularDataSubscriptionMonitor *)self queue];
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue2);

    v8 = dispatch_walltime(0, 1000000000 * timeout);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__MBCellularDataSubscriptionMonitor__startDelegateTimerWithTimeout___block_invoke;
    handler[3] = &unk_1E86844D0;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v7, handler);
    v9 = MBGetDefaultLog([(MBCellularDataSubscriptionMonitor *)self setDelegateTimer:v7]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      timeoutCopy = timeout;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_DEBUG, "Starting CoreTelephonyClientDataDelegate timer (%llds): %p", buf, 0x16u);
      _MBLog(@"Db", "Starting CoreTelephonyClientDataDelegate timer (%llds): %p", timeout, v7);
    }

    dispatch_resume(v7);
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  return timeout != 0;
}

void __68__MBCellularDataSubscriptionMonitor__startDelegateTimerWithTimeout___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MBGetDefaultLog(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fired", buf, 0xCu);
      v4 = objc_opt_class();
      _MBLog(@"Df", "%{public}@ timer fired", v4);
    }

    [v2 _cancelDelegateTimer];
    [v2 _refreshBackupOnCellularSupportWithTimeout:0];
  }
}

- (void)_cancelDelegateTimer
{
  v8 = *MEMORY[0x1E69E9840];
  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  delegateTimer = [(MBCellularDataSubscriptionMonitor *)self delegateTimer];
  if (delegateTimer)
  {
    v5 = MBGetDefaultLog([(MBCellularDataSubscriptionMonitor *)self setDelegateTimer:0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v7 = delegateTimer;
      _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_DEBUG, "Canceling CoreTelephonyClientDataDelegate timer: %p", buf, 0xCu);
      _MBLog(@"Db", "Canceling CoreTelephonyClientDataDelegate timer: %p", delegateTimer);
    }

    dispatch_source_cancel(delegateTimer);
  }
}

- (void)_refreshBackupOnCellularSupportWithTimeout:(unint64_t)timeout
{
  v22 = *MEMORY[0x1E69E9840];
  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0;
  v6 = [(MBCellularDataSubscriptionMonitor *)self _backupOnCellularSupportWithError:&v17];
  v7 = v17;
  code = [v7 code];
  if (code == 35 && ([v7 domain], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E696A798]), v9, v10))
  {
    if (![(MBCellularDataSubscriptionMonitor *)self _startDelegateTimerWithTimeout:timeout])
    {
      self->_backupOnCellularSupportChanged = 0;
      backupOnCellularSupportHandler = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];

      if (backupOnCellularSupportHandler)
      {
        backupOnCellularSupportHandler2 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];
        v13 = [MBError errorWithCode:17 format:@"Failed to fetch backupOnCellularSupport"];
        (backupOnCellularSupportHandler2)[2](backupOnCellularSupportHandler2, v6, v13);

LABEL_12:
      }
    }
  }

  else if (!self->_backupOnCellularSupportChanged || (code = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport], v6 != code))
  {
    v14 = MBGetDefaultLog(code);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      backupOnCellularSupport = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport];
      *buf = 134218240;
      v19 = v6;
      v20 = 2048;
      v21 = backupOnCellularSupport;
      _os_log_impl(&dword_1DEB5D000, v14, OS_LOG_TYPE_DEFAULT, "backupOnCellularSupport changed: %ld(%ld)", buf, 0x16u);
      _MBLog(@"Df", "backupOnCellularSupport changed: %ld(%ld)", v6, [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport]);
    }

    self->_backupOnCellularSupportChanged = 1;
    [(MBCellularDataSubscriptionMonitor *)self setBackupOnCellularSupport:v6];
    backupOnCellularSupportHandler3 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];

    if (backupOnCellularSupportHandler3)
    {
      backupOnCellularSupportHandler2 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];
      backupOnCellularSupportHandler2[2](backupOnCellularSupportHandler2, v6, 0);
      goto LABEL_12;
    }
  }
}

- (void)start
{
  if ([(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport])
  {
    [MBCellularDataSubscriptionMonitor start];
  }

  [(MBCellularDataSubscriptionMonitor *)self telephonyClient];
  if (objc_claimAutoreleasedReturnValue())
  {
    [MBCellularDataSubscriptionMonitor start];
  }

  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MBCellularDataSubscriptionMonitor_start__block_invoke;
  block[3] = &unk_1E8684358;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__MBCellularDataSubscriptionMonitor_start__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69650A0]);
  v3 = [*(a1 + 32) queue];
  v4 = [v2 initWithQueue:v3];
  [*(a1 + 32) setTelephonyClient:v4];

  v5 = *(a1 + 32);
  v6 = [v5 telephonyClient];
  [v6 setDelegate:v5];

  v7 = *(a1 + 32);
  v8 = [v7 timeout];

  return [v7 _refreshBackupOnCellularSupportWithTimeout:v8];
}

- (void)cancel
{
  [(MBCellularDataSubscriptionMonitor *)self setTelephonyClient:0];
  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MBCellularDataSubscriptionMonitor_cancel__block_invoke;
  block[3] = &unk_1E8684358;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__MBCellularDataSubscriptionMonitor_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelDelegateTimer];
  v2 = [*(a1 + 32) backupOnCellularSupportHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) backupOnCellularSupportHandler];
    v4 = [MBError errorWithCode:202 format:@"Cancelled"];
    (v3)[2](v3, 0, v4);

    v5 = *(a1 + 32);

    [v5 setBackupOnCellularSupportHandler:0];
  }
}

- (void)currentDataSimChanged:(id)changed
{
  v10 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MBGetDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = changedCopy;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "currentDataSimChanged: %@", buf, 0xCu);
    _MBLog(@"Df", "currentDataSimChanged: %@", changedCopy);
  }

  [(MBCellularDataSubscriptionMonitor *)self _refreshBackupOnCellularSupportWithTimeout:0];
}

- (void)dataSettingsChanged:(id)changed
{
  v7 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v4 = MBGetDefaultLog(changedCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = changedCopy;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "dataSettingsChanged: %@", buf, 0xCu);
    _MBLog(@"Df", "dataSettingsChanged: %@", changedCopy);
  }
}

- (void)internetDataStatus:(id)status
{
  v10 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  queue = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MBGetDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = statusCopy;
    _os_log_impl(&dword_1DEB5D000, v7, OS_LOG_TYPE_DEFAULT, "internetDataStatus: %@", buf, 0xCu);
    _MBLog(@"Df", "internetDataStatus: %@", statusCopy);
  }

  [(MBCellularDataSubscriptionMonitor *)self _refreshBackupOnCellularSupportWithTimeout:0];
}

@end