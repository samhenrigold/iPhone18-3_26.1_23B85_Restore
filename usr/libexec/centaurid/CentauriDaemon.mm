@interface CentauriDaemon
+ (BOOL)configureTempDirectory;
+ (BOOL)shouldDisableDaemon;
+ (int64_t)powerStatsTaskInterval;
+ (void)handleSignal:(int)signal;
+ (void)setupSignalHandlers;
- (CentauriDaemon)init;
- (void)_run;
- (void)dealloc;
- (void)log;
- (void)run;
- (void)runBackgroundTaskWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CentauriDaemon

- (CentauriDaemon)init
{
  configureTempDirectory = [objc_opt_class() configureTempDirectory];
  v5 = configureTempDirectory;
  v6 = sub_100025204(configureTempDirectory);
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    sub_1000287D4(v6, self, a2);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: Centauri daemon starting", buf, 0x16u);
  }

  v11 = sub_100025204(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    v14 = sub_10002529C();
    v15 = "no";
    *buf = 138543874;
    v29 = v12;
    if (v14)
    {
      v15 = "yes";
    }

    v30 = 2114;
    v31 = v13;
    v32 = 2080;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: internal build: %s", buf, 0x20u);
  }

  v27.receiver = self;
  v27.super_class = CentauriDaemon;
  v16 = [(CentauriDaemon *)&v27 init];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.centaurid", v17);
    dispatchQueue = v16->_dispatchQueue;
    v16->_dispatchQueue = v18;

    v20 = [[ChipManager alloc] initWithQueue:v16->_dispatchQueue];
    chipManager = v16->_chipManager;
    v16->_chipManager = v20;

    v22 = [[XPCServer alloc] initWithChipManager:v16->_chipManager];
    xpcServer = v16->_xpcServer;
    v16->_xpcServer = v22;

    v24 = -[BackgroundTaskScheduler initWithIdentifier:interval:queue:delegate:]([BackgroundTaskScheduler alloc], "initWithIdentifier:interval:queue:delegate:", @"com.apple.centaurid.PowerStats", [objc_opt_class() powerStatsTaskInterval], v16->_dispatchQueue, v16);
    powerStatsTaskScheduler = v16->_powerStatsTaskScheduler;
    v16->_powerStatsTaskScheduler = v24;
  }

  return v16;
}

- (void)run
{
  [objc_opt_class() setupSignalHandlers];
  handler[6] = _NSConcreteStackBlock;
  handler[7] = 3221225472;
  handler[8] = sub_100001834;
  handler[9] = &unk_10005C6B0;
  handler[10] = self;
  os_state_add_handler();
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001864;
  handler[3] = &unk_10005C6D8;
  handler[4] = self;
  handler[5] = a2;
  xpc_set_event_stream_handler("com.apple.iokit.matching", dispatchQueue, handler);
  shouldDisableDaemon = [objc_opt_class() shouldDisableDaemon];
  self->_disabled = shouldDisableDaemon;
  if (shouldDisableDaemon)
  {
    v6 = sub_100025204(shouldDisableDaemon);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v8 = NSStringFromSelector(a2);
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: Bailing due to boot-arg", buf, 0x16u);
    }
  }

  else
  {
    v9 = self->_dispatchQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001970;
    v11[3] = &unk_10005C700;
    v11[4] = self;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v11);
    dispatch_async(v9, v10);
  }
}

- (void)_run
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v11, 0x16u);
  }

  hasHardware = [(ChipManager *)self->_chipManager hasHardware];
  if ((hasHardware & 1) == 0)
  {
    v8 = sub_100025204(hasHardware);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no hardware present, exiting", &v11, 0x16u);
    }

    exit(0);
  }

  [(ChipManager *)self->_chipManager activate];
  [(XPCServer *)self->_xpcServer activate];
  [(BackgroundTaskScheduler *)self->_powerStatsTaskScheduler activate];
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ==================== state dump start ====================", &v15, 0x16u);
  }

  v8 = sub_100025204(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    disabled = self->_disabled;
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 1024;
    v20 = disabled;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: disabled by boot-arg: %u", &v15, 0x1Cu);
  }

  [(ChipManager *)self->_chipManager log];
  v12 = sub_100025204([(BackgroundTaskScheduler *)self->_powerStatsTaskScheduler log]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ==================== state dump end ====================", &v15, 0x16u);
  }
}

- (void)dealloc
{
  v3 = sub_100025204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v10, 0x16u);
  }

  v6 = abort_report_np("assertion failure: NO -- unexpected dealloc");
  [(CentauriDaemon *)v6 runBackgroundTaskWithIdentifier:v7 completion:v8, v9];
}

- (void)runBackgroundTaskWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (identifier == @"com.apple.centaurid.PowerStats")
  {
    chipManager = self->_chipManager;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001EB4;
    v9[3] = &unk_10005C728;
    v10 = completionCopy;
    [(ChipManager *)chipManager getPowerStats:0 completion:v9];
  }
}

+ (BOOL)shouldDisableDaemon
{
  data_np = sysctlbyname_get_data_np();
  v5 = sub_100025204(data_np);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100028880(self, a2);
  }

  return 0;
}

+ (void)setupSignalHandlers
{
  v2.__sigaction_u.__sa_handler = sub_1000021E8;
  *&v2.sa_mask = 0xFFFFFFFFLL;
  sigaction(30, &v2, 0);
  sigaction(31, &v2, 0);
}

+ (void)handleSignal:(int)signal
{
  LODWORD(v3) = signal;
  v5 = sub_100025204(self);
  v6 = v5;
  if (v3 == 31)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [objc_opt_class() description];
      v9 = NSStringFromSelector(a2);
      *buf = 138543618;
      v17 = v3;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: SIGUSR2", buf, 0x16u);
    }

    v6 = sub_100025204(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() description];
      a2 = NSStringFromSelector(a2);
      *buf = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = a2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- SIGUSR2", buf, 0x16u);
    }

    v5 = abort_report_np("assertion failure: NO -- SIGUSR2");
  }

  else if (v3 == 30)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_opt_class() description];
      v8 = NSStringFromSelector(a2);
      *buf = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: SIGUSR1", buf, 0x16u);
    }

    exit(0);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 1024;
    v21 = v3;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected signal %d", buf, 0x1Cu);
  }

  v14 = abort_report_np("assertion failure: NO -- unexpected signal %d", v3);
  +[(CentauriDaemon *)v14];
}

+ (BOOL)configureTempDirectory
{
  v4 = _set_user_dir_suffix();
  if ((v4 & 1) == 0)
  {
    v13 = sub_100025204(v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100028938(self, a2, v13);
    }

    v10 = 0;
    goto LABEL_9;
  }

  v5 = +[NSFileManager defaultManager];
  v25 = NSFilePosixPermissions;
  v26 = &off_10006D8C0;
  v6 = 1;
  v7 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v8 = NSTemporaryDirectory();
  v18 = 0;
  v9 = [v5 setAttributes:v7 ofItemAtPath:v8 error:&v18];
  v10 = v18;

  if ((v9 & 1) == 0)
  {
    v13 = sub_100025204(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [v10 description];
      uTF8String = [v16 UTF8String];
      *buf = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2082;
      v24 = uTF8String;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set temp directory permissions: %{public}s", buf, 0x20u);
    }

LABEL_9:

    v6 = 0;
  }

  return v6;
}

+ (int64_t)powerStatsTaskInterval
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"PowerStatsTaskInterval"];

  v6 = sub_100025204(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v7)
    {
      v4 = 900;
      goto LABEL_8;
    }

    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v4 = 900;
    v17 = 900;
    v10 = "%{public}@::%{public}@: defaulting to %ld seconds";
    goto LABEL_6;
  }

  if (v7)
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = v4;
    v10 = "%{public}@::%{public}@: overriding to %ld seconds";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x20u);
  }

LABEL_8:

  return v4;
}

@end