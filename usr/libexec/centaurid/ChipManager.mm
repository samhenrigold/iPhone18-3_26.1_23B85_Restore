@interface ChipManager
+ (BOOL)isErrorFatalFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg;
+ (BOOL)shouldHaltForError:(id)error;
+ (BOOL)shouldPanicForError:(id)error;
+ (BOOL)shouldUseFWReasonForErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg;
+ (id)centauriDebugErrorCodeAsString:(int)string;
+ (id)controllerErrorCodeAsString:(int)string;
+ (id)errorDescriptionForSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg;
+ (id)errorSourceAsString:(int)string;
+ (id)linkTrainingTimeoutArgAsString:(int)string;
+ (id)subsystemIDAsString:(int)string;
+ (void)panicWithMessage:(id)message;
- (BOOL)bootChip;
- (BOOL)bootChipInMode:(int64_t)mode withLPMData:(id)data bootAttempts:(unint64_t)attempts failureReason:(id *)reason;
- (BOOL)handleChipBooted;
- (BOOL)handleFatalError:(id)error useFWReason:(BOOL)reason driverInstance:(unint64_t)instance collectLogsAndReset:(BOOL)reset;
- (BOOL)readyForNewPowerTableValidationWithReason:(id *)reason;
- (BOOL)validateNewPowerTables:(id *)tables;
- (ChipManager)initWithQueue:(id)queue;
- (id)bootPerformanceDataForHostTimestamps:(id)timestamps firmwareTimestamps:(id)firmwareTimestamps;
- (id)contextForAnalytics;
- (void)activate;
- (void)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote completion:(id)completion;
- (void)checkForNewPowerTables:(id)tables;
- (void)chip:(id)chip didExperienceErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg driverInstance:(unint64_t)instance;
- (void)chipHasCrashlogAvailable:(id)available;
- (void)chipStateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)collectLogs:(id)logs fatal:(BOOL)fatal completion:(id)completion;
- (void)createPowerAssertion;
- (void)createTransaction;
- (void)dealloc;
- (void)getPMUFaultInfo:(id)info;
- (void)getPowerStats:(BOOL)stats completion:(id)completion;
- (void)getSiKPublicKey:(id)key;
- (void)handleFatalError:(id)error;
- (void)handleFatalError:(id)error useFWReason:(BOOL)reason;
- (void)helloCommand:(id)command;
- (void)invalidate;
- (void)log;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preflightQuery:(id)query;
- (void)processBootPerformanceStats;
- (void)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid completion:(id)completion;
- (void)rebootIntoLowPowerMode:(id)mode debugMode:(BOOL)debugMode completion:(id)completion;
- (void)releasePowerAssertion;
- (void)releaseTransaction;
- (void)reloadPowerTables;
- (void)resetChip;
- (void)setActivateRetryCount:(unint64_t)count;
- (void)setBootRetryCount:(unint64_t)count;
- (void)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready completion:(id)completion;
- (void)shellCommand:(id)command completion:(id)completion;
@end

@implementation ChipManager

- (ChipManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v61.receiver = self;
  v61.super_class = ChipManager;
  v7 = [(ChipManager *)&v61 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_30;
  }

  objc_storeStrong(&v7->_dispatchQueue, queue);
  v9 = [[Chip alloc] initWithQueue:queueCopy delegate:v8];
  chip = v8->_chip;
  v8->_chip = v9;

  v8->_hasHardware = [(Chip *)v8->_chip hasHardware];
  v11 = +[NSFileManager defaultManager];
  v12 = NSTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"lpm.token"];
  v14 = [v11 fileExistsAtPath:v13];

  if (v14)
  {
    v16 = sub_100025204(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [objc_opt_class() description];
      v18 = NSStringFromSelector(a2);
      *buf = 138543618;
      v63 = v17;
      v64 = 2114;
      v65 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: starting up in low power mode", buf, 0x16u);
    }

    v8->_lowPowerMode = 1;
  }

  if ([(Chip *)v8->_chip builtIn])
  {
    v19 = [[PowerTableManager alloc] initWithQueue:queueCopy delegate:v8];
    powerTableManager = v8->_powerTableManager;
    v8->_powerTableManager = v19;
  }

  v21 = [[AnalyticsReporter alloc] initWithDelegate:v8];
  analyticsReporter = v8->_analyticsReporter;
  v8->_analyticsReporter = v21;

  v23 = _os_feature_enabled_impl();
  if (v23)
  {
    v25 = sub_100025D88(v23, v24);
    v26 = +[NSUserDefaults standardUserDefaults];
    v27 = v26;
    if (v25)
    {
      [v26 removeObjectForKey:@"ActivateRetryCount"];

      v28 = +[NSUserDefaults standardUserDefaults];
      [v28 removeObjectForKey:@"ActivateRetryTimestamp"];

      v29 = +[NSUserDefaults standardUserDefaults];
      [v29 removeObjectForKey:@"BootRetryCount"];

      v30 = +[NSUserDefaults standardUserDefaults];
      [v30 removeObjectForKey:@"BootRetryTimestamp"];
    }

    else
    {
      v8->_activateRetryCount = [v26 integerForKey:@"ActivateRetryCount"];

      if (v8->_activateRetryCount)
      {
        v37 = +[NSUserDefaults standardUserDefaults];
        [v37 doubleForKey:@"ActivateRetryTimestamp"];
        v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        previousActivateRetryDate = v8->_previousActivateRetryDate;
        v8->_previousActivateRetryDate = v38;
      }

      v40 = +[NSUserDefaults standardUserDefaults];
      v8->_bootRetryCount = [v40 integerForKey:@"BootRetryCount"];

      if (!v8->_bootRetryCount)
      {
        goto LABEL_18;
      }

      v30 = +[NSUserDefaults standardUserDefaults];
      [v30 doubleForKey:@"BootRetryTimestamp"];
      v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      previousBootRetryDate = v8->_previousBootRetryDate;
      v8->_previousBootRetryDate = v42;
    }

LABEL_18:
    v44 = sub_100025204(v41);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [objc_opt_class() description];
      v46 = NSStringFromSelector(a2);
      activateRetryCount = v8->_activateRetryCount;
      v48 = v8->_previousActivateRetryDate;
      *buf = 138544130;
      v63 = v45;
      v64 = 2114;
      v65 = v46;
      v66 = 2048;
      v67 = activateRetryCount;
      v68 = 2112;
      v69 = v48;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: activate retry count %lu, previous date %@", buf, 0x2Au);
    }

    v31 = sub_100025204(v49);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v32 = [objc_opt_class() description];
    v33 = NSStringFromSelector(a2);
    bootRetryCount = v8->_bootRetryCount;
    v51 = v8->_previousBootRetryDate;
    *buf = 138544130;
    v63 = v32;
    v64 = 2114;
    v65 = v33;
    v66 = 2048;
    v67 = bootRetryCount;
    v68 = 2112;
    v69 = v51;
    v34 = "%{public}@::%{public}@: boot retry count %lu, previous date %@";
    v35 = v31;
    v36 = 42;
    goto LABEL_22;
  }

  v31 = sub_100025204(v23);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [objc_opt_class() description];
    v33 = NSStringFromSelector(a2);
    *buf = 138543618;
    v63 = v32;
    v64 = 2114;
    v65 = v33;
    v34 = "%{public}@::%{public}@: boot retry persistence disabled";
    v35 = v31;
    v36 = 22;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
  }

LABEL_23:

  if (sub_100025BB0(v52, v53))
  {
    builtIn = [(Chip *)v8->_chip builtIn];
    if (builtIn)
    {
      v55 = sub_100025204(builtIn);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [objc_opt_class() description];
        v57 = NSStringFromSelector(a2);
        hasFirmware = [(Chip *)v8->_chip hasFirmware];
        v59 = "failure";
        *buf = 138543874;
        v63 = v56;
        if (hasFirmware)
        {
          v59 = "success";
        }

        v64 = 2114;
        v65 = v57;
        v66 = 2080;
        v67 = v59;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: reporting software update %s", buf, 0x20u);
      }

      [(AnalyticsReporter *)v8->_analyticsReporter reportSoftwareUpdateSuccess:[(Chip *)v8->_chip hasFirmware] failureReason:&stru_10005D038];
    }
  }

LABEL_30:

  return v8;
}

- (void)dealloc
{
  v3 = sub_100025204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v9, 0x16u);
  }

  v6 = abort_report_np("assertion failure: NO -- unexpected dealloc");
  [(ChipManager *)v6 setActivateRetryCount:v7, v8];
}

- (void)setActivateRetryCount:(unint64_t)count
{
  self->_activateRetryCount = count;
  if (_os_feature_enabled_impl())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = v4;
    if (count)
    {
      [v4 setInteger:count forKey:@"ActivateRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      v6 = +[NSDate now];
      [v6 timeIntervalSinceReferenceDate];
      [v7 setDouble:@"ActivateRetryTimestamp" forKey:?];
    }

    else
    {
      [v4 removeObjectForKey:@"ActivateRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      [v7 removeObjectForKey:@"ActivateRetryTimestamp"];
    }
  }
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = sub_100025204(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    activateRetryCount = self->_activateRetryCount;
    *buf = 138543874;
    v78 = v5;
    v79 = 2114;
    v80 = v6;
    v81 = 2048;
    v82 = activateRetryCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: deferred retry count %lu", buf, 0x20u);
  }

  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    if (self->_activateRetryCount >= 0x13)
    {
      v9 = sub_100025204(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002F030();
      }

      if (!sub_10002529C())
      {
        goto LABEL_62;
      }

      v10 = sub_100030D78("retry limit previously reached");
      if (!v10)
      {
        goto LABEL_62;
      }

      v11 = v10;
      v12 = sub_100025204(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_opt_class() description];
        v14 = NSStringFromSelector(a2);
        *buf = 138543874;
        v78 = v13;
        v79 = 2114;
        v80 = v14;
        v81 = 1024;
        LODWORD(v82) = v11;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_61:

LABEL_62:
      v19 = &stru_10005D038;
      goto LABEL_89;
    }

    v12 = [(NSDate *)self->_previousActivateRetryDate dateByAddingTimeInterval:600.0];
    timeIntervalSinceNow = [v12 timeIntervalSinceNow];
    if (v16 > 0.0)
    {
      v52 = v16;
      v53 = sub_100025204(timeIntervalSinceNow);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [objc_opt_class() description];
        v55 = NSStringFromSelector(a2);
        *buf = 138543874;
        v78 = v54;
        v79 = 2114;
        v80 = v55;
        v81 = 2112;
        v82 = v12;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: deferring until %@", buf, 0x20u);
      }

      v56 = dispatch_time(0, (v52 * 1000000000.0));
      dispatchQueue = self->_dispatchQueue;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_10001E484;
      v76[3] = &unk_10005C700;
      v76[4] = self;
      dispatch_after(v56, dispatchQueue, v76);
      goto LABEL_61;
    }
  }

  [(ChipManager *)self createPowerAssertion];
  createTransaction = [(ChipManager *)self createTransaction];
  v18 = 1;
  v19 = &stru_10005D038;
  while (1)
  {
    v20 = sub_100025204(createTransaction);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      *buf = 138544130;
      v78 = v21;
      v79 = 2114;
      v80 = v22;
      v81 = 2048;
      v82 = v18;
      v83 = 2048;
      v84 = 3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: attempt %lu of %lu", buf, 0x2Au);
    }

    chip = self->_chip;
    v75 = v19;
    v24 = [(Chip *)chip activate:&v75];
    v25 = v75;

    if (!v24)
    {
      v19 = v25;
      goto LABEL_21;
    }

    if ([(Chip *)self->_chip state]!= 5)
    {
      break;
    }

    v26 = self->_chip;
    v74 = &stru_10005D038;
    v27 = [(Chip *)v26 powerOn:&v74];
    v28 = v74;
    if (!v27)
    {
      goto LABEL_32;
    }

    v19 = [NSString stringWithFormat:@"powerOnFailure:%@", v28];

LABEL_21:
    createTransaction = [(Chip *)self->_chip collectLogsWithReason:@"ActivateFailure" fatal:1 useFWReason:0 lpm:0];
    if ((createTransaction & 1) == 0)
    {
      v29 = sub_100025204(createTransaction);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = [objc_opt_class() description];
        v33 = NSStringFromSelector(a2);
        *buf = 138543618;
        v78 = v32;
        v79 = 2114;
        v80 = v33;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: activate failure", buf, 0x16u);
      }

      createTransaction = sub_10002529C();
      if (createTransaction)
      {
        createTransaction = sub_100030D78("activate failure");
        if (createTransaction)
        {
          v30 = createTransaction;
          v31 = sub_100025204(createTransaction);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v71 = [objc_opt_class() description];
            v34 = NSStringFromSelector(a2);
            *buf = 138543874;
            v78 = v71;
            v79 = 2114;
            v80 = v34;
            v35 = v34;
            v81 = 1024;
            LODWORD(v82) = v30;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
          }
        }
      }
    }

    if (++v18 == 4)
    {
      goto LABEL_33;
    }
  }

  v28 = &stru_10005D038;
LABEL_32:
  [(AnalyticsReporter *)self->_analyticsReporter reportActivateSuccess:1 afterAttempts:3 * self->_activateRetryCount + v18 failureReason:&stru_10005D038];
  [(ChipManager *)self setActivateRetryCount:0];
  self->_activated = 1;

  v19 = v25;
LABEL_33:
  if (!self->_activated)
  {
    v41 = [(ChipManager *)self setActivateRetryCount:self->_activateRetryCount + 1];
    if (self->_activateRetryCount > 0x12)
    {
      v44 = sub_100025204(v41);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10002EEE0();
      }

      [(AnalyticsReporter *)self->_analyticsReporter reportActivateSuccess:0 afterAttempts:54 failureReason:v19];
    }

    else
    {
      if ([(Chip *)self->_chip builtIn]&& self->_activateRetryCount == 2)
      {
        [(Chip *)self->_chip setHardwareHealth:0];
      }

      v42 = dispatch_time(0, 600000000000);
      v43 = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E48C;
      block[3] = &unk_10005C700;
      block[4] = self;
      dispatch_after(v42, v43, block);
    }

    if (self->_lowPowerMode)
    {
      goto LABEL_88;
    }

    if ([(Chip *)self->_chip state]== 5)
    {
      goto LABEL_88;
    }

    powerOff = [(Chip *)self->_chip powerOff];
    if (!powerOff)
    {
      goto LABEL_88;
    }

    v46 = powerOff;
    v47 = sub_100025204(powerOff);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v67 = [objc_opt_class() description];
      v68 = NSStringFromSelector(a2);
      *buf = 138543874;
      v78 = v67;
      v79 = 2114;
      v80 = v68;
      v81 = 1024;
      LODWORD(v82) = v46;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failure: 0x%08x, power off reason: activate failure", buf, 0x1Cu);
    }

    if (!sub_10002529C())
    {
      goto LABEL_88;
    }

    v48 = sub_100030D78("power off failure: 0x%08x, power off reason: activate failure", v46);
    if (!v48)
    {
      goto LABEL_88;
    }

    v49 = v48;
    v38 = sub_100025204(v48);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    v50 = [objc_opt_class() description];
    v51 = NSStringFromSelector(a2);
    *buf = 138543874;
    v78 = v50;
    v79 = 2114;
    v80 = v51;
    v81 = 1024;
    LODWORD(v82) = v49;
LABEL_57:
    _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);

    goto LABEL_39;
  }

  [(PowerTableManager *)self->_powerTableManager activate];
  if ([(Chip *)self->_chip builtIn])
  {
    hasFirmware = [(Chip *)self->_chip hasFirmware];
    if ((hasFirmware & 1) == 0)
    {
      v60 = sub_100025204(hasFirmware);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_10002EF88();
      }

      [(Chip *)self->_chip setHardwareHealth:0];
      if ([(Chip *)self->_chip state]== 5)
      {
        goto LABEL_88;
      }

      if (self->_lowPowerMode)
      {
        goto LABEL_88;
      }

      powerOff2 = [(Chip *)self->_chip powerOff];
      if (!powerOff2)
      {
        goto LABEL_88;
      }

      v62 = powerOff2;
      v63 = sub_100025204(powerOff2);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v69 = [objc_opt_class() description];
        v70 = NSStringFromSelector(a2);
        *buf = 138543874;
        v78 = v69;
        v79 = 2114;
        v80 = v70;
        v81 = 1024;
        LODWORD(v82) = v62;
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failure: 0x%08x, power off reason: no firmware", buf, 0x1Cu);
      }

      if (!sub_10002529C())
      {
        goto LABEL_88;
      }

      v64 = sub_100030D78("power off failure: 0x%08x, power off reason: no firmware", v62);
      if (!v64)
      {
        goto LABEL_88;
      }

      v65 = v64;
      v38 = sub_100025204(v64);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v50 = [objc_opt_class() description];
      v51 = NSStringFromSelector(a2);
      *buf = 138543874;
      v78 = v50;
      v79 = 2114;
      v80 = v51;
      v81 = 1024;
      LODWORD(v82) = v65;
      goto LABEL_57;
    }
  }

  v37 = [(Chip *)self->_chip addObserver:self forKeyPath:@"state" options:7 context:objc_opt_class()];
  if (!self->_lowPowerMode)
  {
    state = [(Chip *)self->_chip state];
    if (state > 2)
    {
      if (state == 3)
      {
        ping = [(Chip *)self->_chip ping];

        if (ping)
        {
          goto LABEL_88;
        }

        v59 = @"InitialPingFailed";
        goto LABEL_86;
      }

      if (state == 4)
      {
        [(ChipManager *)self handleFatalError:@"CCPUFWCrash" useFWReason:1];
        goto LABEL_88;
      }

      if (state != 5)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (!state)
      {
        v59 = @"UnknownInitialState";
LABEL_86:
        [(ChipManager *)self handleFatalError:v59];
        goto LABEL_88;
      }

      if (state != 1)
      {
        if (state != 2)
        {
          goto LABEL_88;
        }

        v59 = @"PartiallyBooted";
        goto LABEL_86;
      }
    }

    [(ChipManager *)self bootChip];
    goto LABEL_88;
  }

  v38 = sub_100025204(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [objc_opt_class() description];
    v40 = NSStringFromSelector(a2);
    *buf = 138543618;
    v78 = v39;
    v79 = 2114;
    v80 = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: skipping recovery because low power mode", buf, 0x16u);
  }

LABEL_39:

LABEL_88:
  [(ChipManager *)self releaseTransaction];
  [(ChipManager *)self releasePowerAssertion];
LABEL_89:
}

- (void)invalidate
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(Chip *)self->_chip removeObserver:self forKeyPath:@"state"];
  [(Chip *)self->_chip invalidate];
}

- (void)helloCommand:(id)command
{
  commandCopy = command;
  inited = objc_initWeak(&location, self);
  v7 = sub_100025204(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E758;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  block[4] = self;
  v13 = commandCopy;
  v11 = commandCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v14 = sub_100025204(inited);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    *buf = 138543618;
    v28 = v15;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EA00;
  block[3] = &unk_10005CB90;
  objc_copyWeak(v23, &location);
  block[4] = self;
  v21 = commandCopy;
  gidCopy = gid;
  oidCopy = oid;
  v23[1] = a2;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = commandCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)shellCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v10 = sub_100025204(inited);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543618;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001EC9C;
  v16[3] = &unk_10005CBB8;
  objc_copyWeak(v19, &location);
  v16[4] = self;
  v17 = commandCopy;
  v19[1] = a2;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = commandCopy;
  dispatch_async(dispatchQueue, v16);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

- (void)getPowerStats:(BOOL)stats completion:(id)completion
{
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v9 = sub_100025204(inited);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001EF14;
  v14[3] = &unk_10005CBE0;
  objc_copyWeak(v16, &location);
  v16[1] = a2;
  statsCopy = stats;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  dispatch_async(dispatchQueue, v14);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)getPMUFaultInfo:(id)info
{
  infoCopy = info;
  inited = objc_initWeak(&location, self);
  v7 = sub_100025204(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F17C;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  block[4] = self;
  v13 = infoCopy;
  v11 = infoCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)collectLogs:(id)logs fatal:(BOOL)fatal completion:(id)completion
{
  logsCopy = logs;
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v12 = sub_100025204(inited);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    *buf = 138543618;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  logsCopy = [NSString stringWithFormat:@"ClientRequested-%@", logsCopy];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F43C;
  block[3] = &unk_10005CC08;
  objc_copyWeak(v22, &location);
  fatalCopy = fatal;
  block[4] = self;
  v20 = logsCopy;
  v22[1] = a2;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = logsCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)preflightQuery:(id)query
{
  queryCopy = query;
  inited = objc_initWeak(&location, self);
  v7 = sub_100025204(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F6C0;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  block[4] = self;
  v13 = queryCopy;
  v11 = queryCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)rebootIntoLowPowerMode:(id)mode debugMode:(BOOL)debugMode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v12 = sub_100025204(inited);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    *buf = 138543618;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FBAC;
  block[3] = &unk_10005CC08;
  objc_copyWeak(v21, &location);
  debugModeCopy = debugMode;
  block[4] = self;
  v19 = modeCopy;
  v21[1] = a2;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = modeCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

- (void)getSiKPublicKey:(id)key
{
  keyCopy = key;
  inited = objc_initWeak(&location, self);
  v7 = sub_100025204(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FF9C;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  block[4] = self;
  v13 = keyCopy;
  v11 = keyCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)checkForNewPowerTables:(id)tables
{
  tablesCopy = tables;
  inited = objc_initWeak(&location, self);
  v7 = sub_100025204(inited);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020218;
  block[3] = &unk_10005CB68;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  block[4] = self;
  v13 = tablesCopy;
  v11 = tablesCopy;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)setPowerTableEvaluationReadinessForSession:(id)session client:(int64_t)client ready:(BOOL)ready completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v14 = sub_100025204(inited);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    *buf = 138543618;
    v27 = v15;
    v28 = 2114;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100020648;
  v20[3] = &unk_10005CC30;
  objc_copyWeak(v23, &location);
  v20[4] = self;
  v21 = sessionCopy;
  v23[1] = a2;
  v23[2] = client;
  readyCopy = ready;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = sessionCopy;
  dispatch_async(dispatchQueue, v20);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)castPowerTableVoteForSession:(id)session client:(int64_t)client vote:(BOOL)vote completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  inited = objc_initWeak(&location, self);
  v14 = sub_100025204(inited);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [objc_opt_class() description];
    v16 = NSStringFromSelector(a2);
    *buf = 138543618;
    v27 = v15;
    v28 = 2114;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100020924;
  v20[3] = &unk_10005CC30;
  objc_copyWeak(v23, &location);
  v20[4] = self;
  v21 = sessionCopy;
  v23[1] = a2;
  v23[2] = client;
  voteCopy = vote;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = sessionCopy;
  dispatch_async(dispatchQueue, v20);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)handleFatalError:(id)error
{
  chip = self->_chip;
  errorCopy = error;
  [(ChipManager *)self handleFatalError:errorCopy useFWReason:0 driverInstance:[(Chip *)chip driverInstance] collectLogsAndReset:1];
}

- (void)handleFatalError:(id)error useFWReason:(BOOL)reason
{
  reasonCopy = reason;
  chip = self->_chip;
  errorCopy = error;
  [(ChipManager *)self handleFatalError:errorCopy useFWReason:reasonCopy driverInstance:[(Chip *)chip driverInstance] collectLogsAndReset:1];
}

- (BOOL)handleFatalError:(id)error useFWReason:(BOOL)reason driverInstance:(unint64_t)instance collectLogsAndReset:(BOOL)reset
{
  reasonCopy = reason;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v13 = sub_100025204(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_opt_class() description];
    v25 = NSStringFromSelector(a2);
    v30 = 138544130;
    v31 = v24;
    v32 = 2114;
    v33 = v25;
    v34 = 2048;
    instanceCopy = instance;
    v36 = 2114;
    v37 = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: instance 0x%llx: '%{public}@'", &v30, 0x2Au);
  }

  if (self->_halted)
  {
    v15 = sub_100025204(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = [objc_opt_class() description];
      v27 = NSStringFromSelector(a2);
      v30 = 138543874;
      v31 = v26;
      v32 = 2114;
      v33 = v27;
      v34 = 2114;
      instanceCopy = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: halted, ignoring error: '%{public}@'", &v30, 0x20u);
    }

LABEL_7:
    v16 = 0;
    goto LABEL_20;
  }

  if ([objc_opt_class() shouldPanicForError:errorCopy])
  {
    [objc_opt_class() panicWithMessage:errorCopy];
  }

  if ([objc_opt_class() shouldHaltForError:errorCopy])
  {
    v16 = 0;
    self->_halted = 1;
    goto LABEL_20;
  }

  driverInstance = [(Chip *)self->_chip driverInstance];
  if (driverInstance == instance)
  {
    [(ChipManager *)self createPowerAssertion];
    [(ChipManager *)self createTransaction];
    [(AnalyticsReporter *)self->_analyticsReporter reportFatalError:errorCopy];
    if (reset)
    {
      v18 = +[NSDate now];
      [(Chip *)self->_chip collectLogsWithReason:errorCopy fatal:1 useFWReason:reasonCopy lpm:0];
      [(ChipManager *)self resetChip];
      if ([(ChipManager *)self bootChip]&& v18)
      {
        v19 = +[NSDate now];
        [v19 timeIntervalSinceDate:v18];
        v21 = v20;

        [(AnalyticsReporter *)self->_analyticsReporter reportEndToEndRecoveryTime:(v21 * 1000.0)];
      }
    }

    else
    {
      [(ChipManager *)self bootChip];
      v18 = 0;
    }

    [(ChipManager *)self releaseTransaction];
    [(ChipManager *)self releasePowerAssertion];

    goto LABEL_7;
  }

  v22 = sub_100025204(driverInstance);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_opt_class() description];
    v29 = NSStringFromSelector(a2);
    v30 = 138543874;
    v31 = v28;
    v32 = 2114;
    v33 = v29;
    v34 = 2114;
    instanceCopy = errorCopy;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: squashing error: '%{public}@'", &v30, 0x20u);
  }

  v16 = 1;
LABEL_20:

  return v16;
}

- (void)setBootRetryCount:(unint64_t)count
{
  self->_bootRetryCount = count;
  if (_os_feature_enabled_impl())
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = v4;
    if (count)
    {
      [v4 setInteger:count forKey:@"BootRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      v6 = +[NSDate now];
      [v6 timeIntervalSinceReferenceDate];
      [v7 setDouble:@"BootRetryTimestamp" forKey:?];
    }

    else
    {
      [v4 removeObjectForKey:@"BootRetryCount"];

      v7 = +[NSUserDefaults standardUserDefaults];
      [v7 removeObjectForKey:@"BootRetryTimestamp"];
    }
  }
}

- (BOOL)bootChip
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    bootRetryCount = self->_bootRetryCount;
    *buf = 138543874;
    v64 = v5;
    v65 = 2114;
    v66 = v6;
    v67 = 2048;
    v68 = bootRetryCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: retry count %lu", buf, 0x20u);
  }

  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    if (self->_bootRetryCount >= 0x13)
    {
      v9 = sub_100025204(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002F030();
      }

      if (!sub_10002529C())
      {
        goto LABEL_24;
      }

      v10 = sub_100030D78("retry limit previously reached");
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = v10;
      v12 = sub_100025204(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_opt_class() description];
        v14 = NSStringFromSelector(a2);
        *buf = 138543874;
        v64 = v13;
        v65 = 2114;
        v66 = v14;
        v67 = 1024;
        LODWORD(v68) = v11;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
      }

LABEL_23:

LABEL_24:
      v24 = 0;
      v22 = &stru_10005D038;
      goto LABEL_25;
    }

    v12 = [(NSDate *)self->_previousBootRetryDate dateByAddingTimeInterval:600.0];
    timeIntervalSinceNow = [v12 timeIntervalSinceNow];
    if (v16 > 0.0)
    {
      v25 = v16;
      v26 = sub_100025204(timeIntervalSinceNow);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [objc_opt_class() description];
        v28 = NSStringFromSelector(a2);
        *buf = 138543874;
        v64 = v27;
        v65 = 2114;
        v66 = v28;
        v67 = 2112;
        v68 = v12;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: deferring until %@", buf, 0x20u);
      }

      v29 = dispatch_time(0, (v25 * 1000000000.0));
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000217D4;
      block[3] = &unk_10005C700;
      block[4] = self;
      dispatch_after(v29, dispatchQueue, block);
      goto LABEL_23;
    }
  }

  if ([(Chip *)self->_chip state]== 5)
  {
    chip = self->_chip;
    v61 = &stru_10005D038;
    v18 = [(Chip *)chip powerOn:&v61];
    v19 = v61;
    v20 = v19;
    if (v18)
    {
      v32 = v18;
      v22 = [NSString stringWithFormat:@"powerOnFailure:%@", v19];
      v33 = sub_100025204(v22);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v52 = [objc_opt_class() description];
        v53 = NSStringFromSelector(a2);
        *buf = 138543874;
        v64 = v52;
        v65 = 2114;
        v66 = v53;
        v67 = 1024;
        LODWORD(v68) = v32;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power on failure: 0x%08x, power on reason: boot", buf, 0x1Cu);
      }

      if (sub_10002529C())
      {
        v34 = sub_100030D78("power on failure: 0x%08x, power on reason: boot", v32);
        if (v34)
        {
          v35 = v34;
          v36 = sub_100025204(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v56 = [objc_opt_class() description];
            v57 = NSStringFromSelector(a2);
            *buf = 138543874;
            v64 = v56;
            v65 = 2114;
            v66 = v57;
            v67 = 1024;
            LODWORD(v68) = v35;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
          }
        }
      }

      goto LABEL_34;
    }
  }

  v60 = &stru_10005D038;
  v21 = [(ChipManager *)self bootChipInMode:0 withLPMData:0 bootAttempts:3 failureReason:&v60];
  v22 = v60;
  if (v21)
  {
    if ([(Chip *)self->_chip builtIn])
    {
      v23 = self->_chip;
      v24 = 1;
      [(Chip *)v23 setHardwareHealth:1];
    }

    else
    {
      v24 = 1;
    }

    goto LABEL_25;
  }

LABEL_34:
  v37 = [(ChipManager *)self setBootRetryCount:self->_bootRetryCount + 1];
  if (self->_bootRetryCount > 0x12)
  {
    v40 = sub_100025204(v37);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_10002EEE0();
    }

    analyticsReporter = self->_analyticsReporter;
    v42 = 3 * self->_bootRetryCount;
    v43 = [Chip bootModeAsString:0];
    [(AnalyticsReporter *)analyticsReporter reportBootSuccess:0 afterAttempts:v42 mode:v43 failureReason:v22];
  }

  else
  {
    if ([(Chip *)self->_chip builtIn]&& self->_bootRetryCount == 2)
    {
      [(Chip *)self->_chip setHardwareHealth:0];
    }

    objc_initWeak(buf, self);
    v38 = dispatch_time(0, 600000000000);
    v39 = self->_dispatchQueue;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10002EC10;
    v58[3] = &unk_10005CC58;
    objc_copyWeak(v59, buf);
    v58[4] = self;
    v59[1] = a2;
    dispatch_after(v38, v39, v58);
    objc_destroyWeak(v59);
    objc_destroyWeak(buf);
  }

  powerOff = [(Chip *)self->_chip powerOff];
  if (powerOff)
  {
    v45 = powerOff;
    v46 = sub_100025204(powerOff);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v50 = [objc_opt_class() description];
      v51 = NSStringFromSelector(a2);
      *buf = 138543874;
      v64 = v50;
      v65 = 2114;
      v66 = v51;
      v67 = 1024;
      LODWORD(v68) = v45;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failure: 0x%08x, power off reason: boot failures", buf, 0x1Cu);
    }

    if (sub_10002529C())
    {
      v47 = sub_100030D78("power off failure: 0x%08x, power off reason: boot failures", v45);
      if (v47)
      {
        v48 = v47;
        v49 = sub_100025204(v47);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v54 = [objc_opt_class() description];
          v55 = NSStringFromSelector(a2);
          *buf = 138543874;
          v64 = v54;
          v65 = 2114;
          v66 = v55;
          v67 = 1024;
          LODWORD(v68) = v48;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
        }
      }
    }
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (BOOL)bootChipInMode:(int64_t)mode withLPMData:(id)data bootAttempts:(unint64_t)attempts failureReason:(id *)reason
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_bootMode = mode;
  if (attempts)
  {
    if (mode)
    {
      v12 = @"LPMBootFailure";
    }

    else
    {
      v12 = @"BootFailure";
    }

    v13 = 1;
    while (1)
    {
      v14 = sub_100025204(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [objc_opt_class() description];
        v16 = NSStringFromSelector(a2);
        *buf = 138544130;
        v28 = v15;
        v29 = 2114;
        v30 = v16;
        v31 = 2048;
        v32 = v13;
        v33 = 2048;
        attemptsCopy = attempts;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: attempt %lu of %lu", buf, 0x2Au);
      }

      chip = self->_chip;
      pathsToUse = [(PowerTableManager *)self->_powerTableManager pathsToUse];
      if ([(Chip *)chip bootInMode:mode lpmData:dataCopy powerTablePaths:pathsToUse failureReason:reason])
      {
        handleChipBooted = [(ChipManager *)self handleChipBooted];

        if (handleChipBooted)
        {
          analyticsReporter = self->_analyticsReporter;
          v23 = v13 + self->_bootRetryCount * attempts;
          v24 = [Chip bootModeAsString:mode];
          v25 = 1;
          [(AnalyticsReporter *)analyticsReporter reportBootSuccess:1 afterAttempts:v23 mode:v24 failureReason:&stru_10005D038];

          [(ChipManager *)self setBootRetryCount:0];
          goto LABEL_19;
        }
      }

      else
      {
      }

      v20 = v12;
      if ([objc_opt_class() shouldPanicForError:v20])
      {
        [objc_opt_class() panicWithMessage:v20];
      }

      if ([objc_opt_class() shouldHaltForError:v20])
      {
        break;
      }

      [(Chip *)self->_chip collectLogsWithReason:v20 fatal:1 useFWReason:1 lpm:mode == 1];
      [(ChipManager *)self resetChip];

      if (++v13 > attempts)
      {
        goto LABEL_18;
      }
    }

    self->_halted = 1;
  }

LABEL_18:
  v25 = 0;
LABEL_19:

  return v25;
}

- (id)bootPerformanceDataForHostTimestamps:(id)timestamps firmwareTimestamps:(id)firmwareTimestamps
{
  timestampsCopy = timestamps;
  firmwareTimestampsCopy = firmwareTimestamps;
  v160[0] = @"prepareChipForResetDuration";
  obja = [NSString stringWithUTF8String:"prepareChipForResetStart"];
  v160[1] = obja;
  v118 = [NSString stringWithUTF8String:"prepareChipForResetEnd"];
  v160[2] = v118;
  v115 = [NSArray arrayWithObjects:v160 count:3];
  v161[0] = v115;
  v159[0] = @"crashlogCollectionDuration";
  v112 = [NSString stringWithUTF8String:"crashlogStart"];
  v159[1] = v112;
  v109 = [NSString stringWithUTF8String:"crashlogEnd"];
  v159[2] = v109;
  v106 = [NSArray arrayWithObjects:v159 count:3];
  v161[1] = v106;
  v158[0] = @"coreDumpCollectionDuration";
  v104 = [NSString stringWithUTF8String:"coredumpStart"];
  v158[1] = v104;
  v102 = [NSString stringWithUTF8String:"coredumpEnd"];
  v158[2] = v102;
  v100 = [NSArray arrayWithObjects:v158 count:3];
  v161[2] = v100;
  v157[0] = @"prepareForResetDuration";
  v98 = [NSString stringWithUTF8String:"resetStart"];
  v157[1] = v98;
  v97 = [NSString stringWithUTF8String:"prepareForResetEnd"];
  v157[2] = v97;
  v96 = [NSArray arrayWithObjects:v157 count:3];
  v161[3] = v96;
  v156[0] = @"resetPortDisableDuration";
  v95 = [NSString stringWithUTF8String:"resetPortDisableStart"];
  v156[1] = v95;
  v94 = [NSString stringWithUTF8String:"resetPortDisableEnd"];
  v156[2] = v94;
  v93 = [NSArray arrayWithObjects:v156 count:3];
  v161[4] = v93;
  v155[0] = @"resetDuration";
  v92 = [NSString stringWithUTF8String:"resetPortDisableEnd"];
  v155[1] = v92;
  v91 = [NSString stringWithUTF8String:"resetEnd"];
  v155[2] = v91;
  v90 = [NSArray arrayWithObjects:v155 count:3];
  v161[5] = v90;
  v154[0] = @"romPortEnableDuration";
  v89 = [NSString stringWithUTF8String:"firstPortEnableStart"];
  v154[1] = v89;
  v88 = [NSString stringWithUTF8String:"firstPortEnableEnd"];
  v154[2] = v88;
  v87 = [NSArray arrayWithObjects:v154 count:3];
  v161[6] = v87;
  v153[0] = @"romSendImageDuration";
  v86 = [NSString stringWithUTF8String:"firstSendImageStart"];
  v153[1] = v86;
  v84 = [NSString stringWithUTF8String:"firstSendImageEnd"];
  v153[2] = v84;
  v83 = [NSArray arrayWithObjects:v153 count:3];
  v161[7] = v83;
  v152[0] = @"reenumerationPortDisableDuration";
  v82 = [NSString stringWithUTF8String:"reenumerationPortDisableStart"];
  v152[1] = v82;
  v81 = [NSString stringWithUTF8String:"reenumerationPortDisableEnd"];
  v152[2] = v81;
  v80 = [NSArray arrayWithObjects:v152 count:3];
  v161[8] = v80;
  v151[0] = @"reenumerationPortEnableDuration";
  v79 = [NSString stringWithUTF8String:"reenumerationPortEnableStart"];
  v151[1] = v79;
  v78 = [NSString stringWithUTF8String:"reenumerationPortEnableEnd"];
  v151[2] = v78;
  v77 = [NSArray arrayWithObjects:v151 count:3];
  v161[9] = v77;
  v150[0] = @"secondarySendImageDuration";
  v76 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v150[1] = v76;
  v75 = [NSString stringWithUTF8String:"secondSendImageEnd"];
  v150[2] = v75;
  v74 = [NSArray arrayWithObjects:v150 count:3];
  v161[10] = v74;
  v149[0] = @"memswapHandoffDuration";
  v73 = [NSString stringWithUTF8String:"memswapHandOffStart"];
  v149[1] = v73;
  v72 = [NSString stringWithUTF8String:"memswapHandOffEnd"];
  v149[2] = v72;
  v71 = [NSArray arrayWithObjects:v149 count:3];
  v161[11] = v71;
  v148[0] = @"romInterfaceOpenDuration";
  v70 = [NSString stringWithUTF8String:"openROMStart"];
  v148[1] = v70;
  v69 = [NSString stringWithUTF8String:"openROMEnd"];
  v148[2] = v69;
  v68 = [NSArray arrayWithObjects:v148 count:3];
  v161[12] = v68;
  v147[0] = @"secondaryInterfaceOpenDuration";
  v67 = [NSString stringWithUTF8String:"openSecondStageStart"];
  v147[1] = v67;
  v66 = [NSString stringWithUTF8String:"openSecondStageEnd"];
  v147[2] = v66;
  v65 = [NSArray arrayWithObjects:v147 count:3];
  v161[13] = v65;
  v146[0] = @"osInterfaceOpenDuration";
  v64 = [NSString stringWithUTF8String:"openCCHIStart"];
  v146[1] = v64;
  v63 = [NSString stringWithUTF8String:"openCCHIEnd"];
  v146[2] = v63;
  v62 = [NSArray arrayWithObjects:v146 count:3];
  v161[14] = v62;
  v145[0] = @"pingDuration";
  v61 = [NSString stringWithUTF8String:"ccpuPingStart"];
  v145[1] = v61;
  v60 = [NSString stringWithUTF8String:"ccpuPingEnd"];
  v145[2] = v60;
  v59 = [NSArray arrayWithObjects:v145 count:3];
  v161[15] = v59;
  v144[0] = @"bootStageOSDuration0";
  v58 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v144[1] = v58;
  v5 = [NSString stringWithUTF8String:"bootStageOSControl"];
  v144[2] = v5;
  v6 = [NSArray arrayWithObjects:v144 count:3];
  v161[16] = v6;
  v143[0] = @"bootStageOSDuration1";
  v7 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v143[1] = v7;
  v8 = [NSString stringWithUTF8String:"bootStageOSAlpha"];
  v143[2] = v8;
  v9 = [NSArray arrayWithObjects:v143 count:3];
  v161[17] = v9;
  v142[0] = @"bootStageOSDuration2";
  v10 = [NSString stringWithUTF8String:"secondSendImageStart"];
  v142[1] = v10;
  v11 = [NSString stringWithUTF8String:"bootStageOSBeta"];
  v142[2] = v11;
  v12 = [NSArray arrayWithObjects:v142 count:3];
  v161[18] = v12;
  v85 = [NSArray arrayWithObjects:v161 count:19];

  v140[0] = @"firmwareROMDuration";
  objb = +[NSNull null];
  v140[1] = objb;
  v119 = [NSString stringWithUTF8String:"bootFromROM"];
  v140[2] = v119;
  v116 = [NSArray arrayWithObjects:v140 count:3];
  v141[0] = v116;
  v139[0] = @"firmwarePTMDuration";
  v113 = [NSString stringWithUTF8String:"beforePTM"];
  v139[1] = v113;
  v110 = [NSString stringWithUTF8String:"ptmDone"];
  v139[2] = v110;
  v105 = [NSArray arrayWithObjects:v139 count:3];
  v141[1] = v105;
  v138[0] = @"firmwareFDRCalDuration";
  v103 = [NSString stringWithUTF8String:"fdrCalBegin"];
  v138[1] = v103;
  v101 = [NSString stringWithUTF8String:"fdrCalDone"];
  v138[2] = v101;
  v99 = [NSArray arrayWithObjects:v138 count:3];
  v141[2] = v99;
  v137[0] = @"firmwareBTTotalDuration";
  v13 = [NSString stringWithUTF8String:"iopLoadStart"];
  v137[1] = v13;
  v14 = [NSString stringWithUTF8String:"bt5GFetchValidateDone"];
  v137[2] = v14;
  v15 = [NSArray arrayWithObjects:v137 count:3];
  v141[3] = v15;
  v136[0] = @"firmwareWiFiTotalDuration";
  v16 = [NSString stringWithUTF8String:"wifiMainFetchValidateBegin"];
  v136[1] = v16;
  v17 = [NSString stringWithUTF8String:"wifiP2GFetchValidateDone"];
  v136[2] = v17;
  v18 = [NSArray arrayWithObjects:v136 count:3];
  v141[4] = v18;
  v135[0] = @"firmwareFLRSetupDuration";
  v19 = [NSString stringWithUTF8String:"wifiP2GFetchValidateDone"];
  v135[1] = v19;
  v20 = [NSString stringWithUTF8String:"iopLoadDone"];
  v135[2] = v20;
  v21 = [NSArray arrayWithObjects:v135 count:3];
  v141[5] = v21;
  v107 = [NSArray arrayWithObjects:v141 count:6];

  v22 = timestampsCopy;
  v114 = objc_alloc_init(NSMutableDictionary);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = v85;
  v23 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v130;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v130 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v129 + 1) + 8 * i);
        v28 = [v27 objectAtIndexedSubscript:1];
        v29 = [v22 objectForKeyedSubscript:v28];
        if (!v29)
        {
          goto LABEL_10;
        }

        v30 = v29;
        v31 = [v27 objectAtIndexedSubscript:2];
        v17 = [v22 objectForKeyedSubscript:v31];

        if (v17)
        {
          v32 = [v27 objectAtIndexedSubscript:2];
          v33 = [v22 objectForKeyedSubscript:v32];
          longLongValue = [v33 longLongValue];
          v17 = [v27 objectAtIndexedSubscript:1];
          [v22 objectForKeyedSubscript:v17];
          v36 = v35 = v22;
          v37 = longLongValue - [v36 longLongValue];

          v22 = v35;
          if (v37 >= 1)
          {
            v28 = [NSNumber numberWithDouble:v37 / 1000000.0];
            v38 = [v27 objectAtIndexedSubscript:0];
            [v114 setObject:v28 forKey:v38];

LABEL_10:
            continue;
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
    }

    while (v24);
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_33;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v111 = v107;
  v120 = [v111 countByEnumeratingWithState:&v125 objects:v133 count:16];
  if (!v120)
  {
    goto LABEL_32;
  }

  v117 = *v126;
  do
  {
    for (j = 0; j != v120; j = j + 1)
    {
      if (*v126 != v117)
      {
        objc_enumerationMutation(v111);
      }

      v40 = *(*(&v125 + 1) + 8 * j);
      v41 = [v40 objectAtIndexedSubscript:1];
      v42 = +[NSNull null];
      v43 = [v41 isEqual:v42];
      if ((v43 & 1) != 0 || ([v40 objectAtIndexedSubscript:1], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(firmwareTimestampsCopy, "objectForKeyedSubscript:", v17), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v44 = [v40 objectAtIndexedSubscript:2];
        v45 = [firmwareTimestampsCopy objectForKeyedSubscript:v44];
        v46 = v45 != 0;

        if (v43)
        {

          if (!v45)
          {
            continue;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v46 = 0;
      }

      if (!v46)
      {
        continue;
      }

LABEL_26:
      v47 = [v40 objectAtIndexedSubscript:2];
      v48 = [firmwareTimestampsCopy objectForKeyedSubscript:v47];
      longLongValue2 = [v48 longLongValue];

      v50 = [v40 objectAtIndexedSubscript:1];
      v51 = +[NSNull null];
      v52 = [v50 isEqual:v51];

      if ((v52 & 1) == 0)
      {
        v53 = [v40 objectAtIndexedSubscript:1];
        v54 = [firmwareTimestampsCopy objectForKeyedSubscript:v53];
        longLongValue2 -= [v54 longLongValue];
      }

      if (longLongValue2 >= 1)
      {
        v55 = [NSNumber numberWithDouble:longLongValue2 / 1000.0];
        v56 = [v40 objectAtIndexedSubscript:0];
        [v114 setObject:v55 forKey:v56];
      }
    }

    v120 = [v111 countByEnumeratingWithState:&v125 objects:v133 count:16];
  }

  while (v120);
LABEL_32:

  v22 = timestampsCopy;
LABEL_33:

  return v114;
}

- (void)processBootPerformanceStats
{
  if (_os_feature_enabled_impl())
  {
    getFirmwareBootTimestamps = [(Chip *)self->_chip getFirmwareBootTimestamps];
    if (getFirmwareBootTimestamps)
    {
      [(Chip *)self->_chip storeFirmwareBootTimestamps:getFirmwareBootTimestamps];
    }
  }

  else
  {
    getFirmwareBootTimestamps = 0;
  }

  getHostBootTimestamps = [(Chip *)self->_chip getHostBootTimestamps];
  v4 = [(ChipManager *)self bootPerformanceDataForHostTimestamps:getHostBootTimestamps firmwareTimestamps:getFirmwareBootTimestamps];
  analyticsReporter = self->_analyticsReporter;
  v6 = [Chip bootModeAsString:self->_bootMode];
  [(AnalyticsReporter *)analyticsReporter reportBootPerformanceStats:v4 mode:v6];
}

- (void)resetChip
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  reset = [(Chip *)self->_chip reset];
  if (reset)
  {
    analyticsReporter = self->_analyticsReporter;

    [(AnalyticsReporter *)analyticsReporter reportChipResetSuccess:1 afterPowerCycle:0 errorCode:0];
  }

  else
  {
    v6 = sub_100025204(reset);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100030044();
    }

    powerCycle = [(Chip *)self->_chip powerCycle];
    v8 = [(AnalyticsReporter *)self->_analyticsReporter reportChipResetSuccess:powerCycle == 0 afterPowerCycle:1 errorCode:powerCycle];
    if (powerCycle)
    {
      v9 = sub_100025204(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_opt_class() description];
        v14 = NSStringFromSelector(a2);
        *buf = 138543874;
        v18 = v13;
        v19 = 2114;
        v20 = v14;
        v21 = 1024;
        v22 = powerCycle;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power cycle failure: 0x%08x, power cycle reason: reset failure", buf, 0x1Cu);
      }

      if (sub_10002529C())
      {
        v10 = sub_100030D78("power cycle failure: 0x%08x, power cycle reason: reset failure", powerCycle);
        if (v10)
        {
          v11 = v10;
          v12 = sub_100025204(v10);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = [objc_opt_class() description];
            v16 = NSStringFromSelector(a2);
            *buf = 138543874;
            v18 = v15;
            v19 = 2114;
            v20 = v16;
            v21 = 1024;
            v22 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
          }
        }
      }
    }
  }
}

- (void)createTransaction
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_transaction)
  {
    v5 = sub_100025204(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v7 = NSStringFromSelector(a2);
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
    }

    v8 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v8;

    if (!self->_transaction)
    {
      sub_1000300EC();
    }
  }
}

- (void)releaseTransaction
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_transaction)
  {
    v5 = sub_100025204(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v7 = NSStringFromSelector(a2);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v9, 0x16u);
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)createPowerAssertion
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_powerAssertion)
  {
    v5 = sub_100025204(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v7 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
    }

    v8 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.centaurid.boot", &self->_powerAssertion);
    v9 = v8;
    if (v8 || !self->_powerAssertion)
    {
      v10 = sub_100025204(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_opt_class() description];
        v12 = NSStringFromSelector(a2);
        v15 = 138543874;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        v19 = 1024;
        v20 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to create power assertion: 0x%08x", &v15, 0x1Cu);
      }

      v14 = sub_100025204(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003021C();
      }

      abort_report_np("assertion failure: success -- power assertion create failure");
    }
  }
}

- (void)releasePowerAssertion
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_powerAssertion)
  {
    v5 = sub_100025204(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v7 = NSStringFromSelector(a2);
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v15, 0x16u);
    }

    v8 = IOPMAssertionRelease(self->_powerAssertion);
    self->_powerAssertion = 0;
    if (v8)
    {
      v9 = v8;
      v10 = sub_100025204(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [objc_opt_class() description];
        v12 = NSStringFromSelector(a2);
        v15 = 138543874;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        v19 = 1024;
        v20 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to release power assertion: 0x%08x", &v15, 0x1Cu);
      }

      v14 = sub_100025204(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000302C4();
      }

      abort_report_np("assertion failure: success -- power assertion release failure");
    }
  }
}

- (void)chipStateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  v7 = sub_100025204(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    v10 = [Chip stateAsString:from];
    v11 = [Chip stateAsString:to];
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@ -> %@", &v12, 0x2Au);
  }
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    hasHardware = self->_hasHardware;
    v8 = self->_transaction != 0;
    v9 = self->_powerAssertion != 0;
    activated = self->_activated;
    lowPowerMode = self->_lowPowerMode;
    halted = self->_halted;
    pmuErrorDetected = self->_pmuErrorDetected;
    activateRetryCount = self->_activateRetryCount;
    bootRetryCount = self->_bootRetryCount;
    v16 = 138545922;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    v20 = 1024;
    v21 = hasHardware;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = activated;
    v28 = 1024;
    v29 = lowPowerMode;
    v30 = 1024;
    v31 = halted;
    v32 = 1024;
    v33 = pmuErrorDetected;
    v34 = 2048;
    v35 = activateRetryCount;
    v36 = 2048;
    v37 = bootRetryCount;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: HW %u, transaction %u, power assertion %u, activated %u, LPM %u, halted %u, PMU error %u, activate retries %lu, boot retries %lu", &v16, 0x54u);
  }

  [(Chip *)self->_chip log];
  [(PowerTableManager *)self->_powerTableManager log];
}

+ (id)subsystemIDAsString:(int)string
{
  if (string > 1)
  {
    if (string == 2)
    {
      return @"BT";
    }

    if (string == 3)
    {
      v4 = sub_100025204(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!string)
    {
      return @"Control";
    }

    if (string == 1)
    {
      return @"WiFi";
    }
  }

  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_12:
    sub_10003036C();
  }

LABEL_13:

  v5 = abort_report_np("assertion failure: NO -- invalid subsystem id");
  return [(ChipManager *)v5 errorSourceAsString:v6, v7];
}

+ (id)errorSourceAsString:(int)string
{
  if (string <= 1)
  {
    if (string)
    {
      if (string != 1)
      {
        goto LABEL_13;
      }

      return @"Airship";
    }

    else
    {
      return @"Centauri";
    }
  }

  else
  {
    if (string != 2)
    {
      if (string == 1000)
      {
        return @"Controller";
      }

      if (string == 1001)
      {
        v4 = sub_100025204(self);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_13:
      v4 = sub_100025204(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_100030414();
      }

LABEL_15:

      abort_report_np("assertion failure: NO -- invalid error source");
      JUMPOUT(0x100023958);
    }

    return @"CentauriDebug";
  }
}

+ (id)centauriDebugErrorCodeAsString:(int)string
{
  switch(string)
  {
    case 0:
      return @"CRStateChangeFailed";
    case 1:
      return @"TRStateChangeFailed";
    case 2:
      v4 = sub_100025204(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      break;
    default:
      v4 = sub_100025204(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        sub_10003060C();
      }

      break;
  }

  v5 = abort_report_np("assertion failure: NO -- invalid centauri debug error code");
  return [(ChipManager *)v5 controllerErrorCodeAsString:v6, v7];
}

+ (id)controllerErrorCodeAsString:(int)string
{
  if (string > 2)
  {
    switch(string)
    {
      case 3:
        return @"S2REntry";
      case 4:
        return @"S2RExit";
      case 5:
        v4 = sub_100025204(self);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        goto LABEL_17;
    }
  }

  else
  {
    switch(string)
    {
      case 0:
        return @"DextTerminated";
      case 1:
        return @"DextRegisterFailed";
      case 2:
        return @"DextOpenFailed";
    }
  }

  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    sub_1000306B4();
  }

LABEL_17:

  v5 = abort_report_np("assertion failure: NO -- invalid controller error code");
  return [(ChipManager *)v5 linkTrainingTimeoutArgAsString:v6, v7];
}

+ (id)linkTrainingTimeoutArgAsString:(int)string
{
  if (string <= 1)
  {
    if (!string)
    {
      return @"None";
    }

    if (string == 1)
    {
      return @"ROM";
    }
  }

  else
  {
    switch(string)
    {
      case 2:
        return @"Hibernation";
      case 3:
        return @"Other";
      case 4:
        v4 = sub_100025204(self);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        goto LABEL_15;
    }
  }

  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    sub_10003075C();
  }

LABEL_15:

  v5 = abort_report_np("assertion failure: NO -- invalid centauri link timeout arg");
  return [(ChipManager *)v5 errorDescriptionForSource:v6 errorCode:v7 arg:v8, v9];
}

+ (id)errorDescriptionForSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg
{
  if (!(code | source))
  {
    v14 = @"CCPUFWCrash";
    goto LABEL_15;
  }

  v6 = *&code;
  v9 = [self errorSourceAsString:?];
  v10 = [NSString stringWithFormat:@"0x%llx", arg];
  if (source == 1000)
  {
    v15 = [self controllerErrorCodeAsString:v6];
    goto LABEL_13;
  }

  if (source == 2)
  {
    v15 = [self centauriDebugErrorCodeAsString:v6];
LABEL_13:
    v11 = v15;
    goto LABEL_14;
  }

  if (source)
  {
    v15 = [NSString stringWithFormat:@"%08x", v6];
    goto LABEL_13;
  }

  v11 = [self centauriErrorCodeAsString:v6];
  if (v6 > 0x10)
  {
LABEL_20:
    if (v6 != 8 || !arg)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (((1 << v6) & 0x1080A) == 0)
  {
    if (v6 == 6)
    {
      v12 = [self linkTrainingTimeoutArgAsString:arg];
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_7:
  v12 = [self subsystemIDAsString:arg];
LABEL_8:
  v13 = v12;

  v10 = v13;
LABEL_14:
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v9, v11, v10];

LABEL_15:

  return v14;
}

+ (BOOL)shouldUseFWReasonForErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg
{
  v5 = (code >> 3) & 1;
  if (source != 1)
  {
    LOBYTE(v5) = 0;
  }

  if (code | source)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)isErrorFatalFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg
{
  v5 = code == 3;
  if ((code & 0xFFFFFFFB) == 0)
  {
    v5 = 1;
  }

  if (source == 1000 && v5 || (code != 16 ? (v6 = code - 9 >= 2) : (v6 = 0), v6 ? (v7 = 0) : (v7 = 1), (result = 1, !source) && v7))
  {
    result = 0;
  }

  if (!source && (code & 0xFFFFFFFB) == 2 || !source && code == 11 && !arg)
  {
    return 0;
  }

  return result;
}

+ (BOOL)shouldHaltForError:(id)error
{
  errorCopy = error;
  if (!sub_10002529C())
  {
    goto LABEL_10;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"HaltOnAnyFailure"];

  if (v6)
  {
    v8 = sub_100025204(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v17 = 138544130;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2080;
      uTF8String = [@"HaltOnAnyFailure" UTF8String];
      v23 = 2080;
      uTF8String2 = [errorCopy UTF8String];
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: halting due to %s preference: %s", &v17, 0x2Au);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 stringArrayForKey:@"HaltOnSpecificFailures"];
  v13 = [v12 containsObject:errorCopy];

  if (!v13)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v8 = sub_100025204(v14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v17 = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2080;
    uTF8String = [@"HaltOnSpecificFailures" UTF8String];
    v23 = 2080;
    uTF8String2 = [errorCopy UTF8String];
    goto LABEL_8;
  }

LABEL_9:

  v15 = 1;
LABEL_11:

  return v15;
}

+ (BOOL)shouldPanicForError:(id)error
{
  errorCopy = error;
  if (!sub_10002529C())
  {
    goto LABEL_10;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"PanicOnAnyFailure"];

  if (v6)
  {
    v8 = sub_100025204(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v17 = 138544130;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2080;
      uTF8String = [@"PanicOnAnyFailure" UTF8String];
      v23 = 2080;
      uTF8String2 = [errorCopy UTF8String];
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: panicking due to %s preference: %s", &v17, 0x2Au);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 stringArrayForKey:@"PanicOnSpecificFailures"];
  v13 = [v12 containsObject:errorCopy];

  if (!v13)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v8 = sub_100025204(v14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() description];
    v10 = NSStringFromSelector(a2);
    v17 = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2080;
    uTF8String = [@"PanicOnSpecificFailures" UTF8String];
    v23 = 2080;
    uTF8String2 = [errorCopy UTF8String];
    goto LABEL_8;
  }

LABEL_9:

  v15 = 1;
LABEL_11:

  return v15;
}

+ (void)panicWithMessage:(id)message
{
  messageCopy = message;
  v6 = sub_100025204(messageCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 2114;
    v18 = messageCopy;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  messageCopy = [NSString stringWithFormat:@"Centauri fatal error: %@", messageCopy];
  v8 = reboot_np(3072, [messageCopy UTF8String]);

  if (v8)
  {
    v10 = sub_100025204(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100030804(self, a2);
    }
  }
}

- (id)contextForAnalytics
{
  v16[0] = @"chipset";
  v3 = sub_1000257CC(self);
  v4 = v3;
  v5 = v3;
  if (!v3)
  {
    v3 = +[NSNull null];
    v5 = v3;
  }

  v17[0] = v5;
  v16[1] = @"chipsetRevision";
  v6 = sub_100025918(v3);
  v7 = v6;
  v8 = v6;
  if (!v6)
  {
    v6 = +[NSNull null];
    v8 = v6;
  }

  v17[1] = v8;
  v16[2] = @"wsku";
  v9 = sub_100025608(v6);
  v10 = v9;
  if (!v9)
  {
    v10 = +[NSNull null];
  }

  v17[2] = v10;
  v16[3] = @"builtIn";
  v11 = [NSNumber numberWithBool:[(Chip *)self->_chip builtIn]];
  v17[3] = v11;
  v17[4] = &__kCFBooleanFalse;
  v16[4] = @"bootArgsPresent";
  v16[5] = @"chipsetFusing";
  v17[5] = &stru_10005D038;
  v16[6] = @"wifiOTAPowerTableVersion";
  wifiAssetVersion = [(PowerTableManager *)self->_powerTableManager wifiAssetVersion];
  v17[6] = wifiAssetVersion;
  v16[7] = @"btOTAPowerTableVersion";
  btAssetVersion = [(PowerTableManager *)self->_powerTableManager btAssetVersion];
  v17[7] = btAssetVersion;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:8];

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v4)
  {
  }

  return v14;
}

- (void)chip:(id)chip didExperienceErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg driverInstance:(unint64_t)instance
{
  v9 = *&code;
  v10 = *&source;
  v13 = [objc_opt_class() isErrorFatalFromSource:*&source errorCode:*&code arg:arg];
  v14 = [objc_opt_class() shouldUseFWReasonForErrorFromSource:v10 errorCode:v9 arg:arg];
  v15 = [objc_opt_class() errorDescriptionForSource:v10 errorCode:v9 arg:arg];
  v16 = sub_100025204(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_opt_class() description];
    v20 = NSStringFromSelector(a2);
    v22 = v20;
    *buf = 138544386;
    v21 = "non-fatal";
    v25 = v23;
    if (v13)
    {
      v21 = "fatal";
    }

    v26 = 2114;
    v27 = v20;
    v28 = 2114;
    v29 = v15;
    v30 = 2080;
    v31 = v21;
    v32 = 1024;
    v33 = v14;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@ (%s) (useFWReason=%u)", buf, 0x30u);
  }

  if (self->_lowPowerMode)
  {
    sub_1000308F0(self);
    goto LABEL_28;
  }

  if (!v10 && v9 == 5)
  {
    self->_pmuErrorDetected = 1;
  }

  if (!v13)
  {
    if (v10)
    {
      goto LABEL_28;
    }

    if (v9 > 10)
    {
      if (v9 == 16)
      {
        analyticsReporter = self->_analyticsReporter;
        v18 = [objc_opt_class() subsystemIDAsString:arg];
        v19 = @"Success";
        goto LABEL_27;
      }

      if (v9 != 11)
      {
        goto LABEL_28;
      }
    }

    else if (v9 != 2 && v9 != 6)
    {
      goto LABEL_28;
    }

    [(ChipManager *)self handleFatalError:v15 useFWReason:0 driverInstance:instance collectLogsAndReset:[(Chip *)self->_chip state]!= 1];
    goto LABEL_28;
  }

  if ([(ChipManager *)self handleFatalError:v15 useFWReason:v14 driverInstance:instance collectLogsAndReset:1])
  {
    self->_pmuErrorDetected = 0;
    goto LABEL_28;
  }

  if (!v10 && v9 == 1)
  {
    analyticsReporter = self->_analyticsReporter;
    v18 = [objc_opt_class() subsystemIDAsString:arg];
    v19 = @"Fail";
LABEL_27:
    [(AnalyticsReporter *)analyticsReporter reportFLROutcome:v19 forSubsystem:v18, v22];

    goto LABEL_28;
  }

  if (!v10 && v9 == 3)
  {
    analyticsReporter = self->_analyticsReporter;
    v18 = [objc_opt_class() subsystemIDAsString:arg];
    v19 = @"Limit";
    goto LABEL_27;
  }

LABEL_28:
}

- (void)chipHasCrashlogAvailable:(id)available
{
  availableCopy = available;
  v7 = os_transaction_create();
  if (!v7)
  {
    v10 = sub_100030A60(self);
    goto LABEL_9;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = nullsub_1;
  v13[3] = &unk_10005C700;
  v3 = v7;
  v14 = v3;
  v4 = objc_retainBlock(v13);
  if (!self->_crashReporter)
  {
    v8 = [[CrashReporter alloc] initWithBuiltIn:[(Chip *)self->_chip builtIn] analyticsReporter:self->_analyticsReporter];
    crashReporter = self->_crashReporter;
    self->_crashReporter = v8;

    if (!self->_crashReporter)
    {
LABEL_9:
      v12 = sub_100025204(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000309B8();
      }

      goto LABEL_6;
    }
  }

  getCrashlogs = [availableCopy getCrashlogs];
  if (getCrashlogs)
  {
    v12 = getCrashlogs;
    [(CrashReporter *)self->_crashReporter processCrashes:getCrashlogs completion:v4];
LABEL_6:
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (objc_opt_class() != context)
  {
    v22.receiver = self;
    v22.super_class = ChipManager;
    [(ChipManager *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_7:

    return;
  }

  v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeKindKey];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  if (([pathCopy isEqualToString:@"state"] & 1) == 0)
  {
    sub_100030B18(self, a2, pathCopy);
    goto LABEL_9;
  }

  if (self->_chip != objectCopy)
  {
LABEL_9:
    sub_100030BF8(self);
    goto LABEL_10;
  }

  if (unsignedIntegerValue == 1)
  {
    v16 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
    integerValue = [v16 integerValue];
    v18 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    -[ChipManager chipStateDidChangeFrom:to:](self, "chipStateDidChangeFrom:to:", integerValue, [v18 integerValue]);

    goto LABEL_7;
  }

LABEL_10:
  v19 = sub_100030CB0(self, a2, unsignedIntegerValue);
  [(ChipManager *)v19 readyForNewPowerTableValidationWithReason:v20, v21];
}

- (BOOL)readyForNewPowerTableValidationWithReason:(id *)reason
{
  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    activated = self->_activated;
    bootRetryCount = self->_bootRetryCount;
    v13 = 138544130;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = activated;
    v19 = 2048;
    v20 = bootRetryCount;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: activated %u, boot retry count %lu", &v13, 0x26u);
  }

  if (self->_activated)
  {
    if (!self->_bootRetryCount)
    {
      return 1;
    }

    v11 = @"notBooted";
  }

  else
  {
    v11 = @"notActivated";
  }

  result = 0;
  *reason = v11;
  return result;
}

- (BOOL)validateNewPowerTables:(id *)tables
{
  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  [(ChipManager *)self resetChip];
  return [(ChipManager *)self bootChipInMode:0 withLPMData:0 bootAttempts:1 failureReason:tables];
}

- (void)reloadPowerTables
{
  [(ChipManager *)self setBootRetryCount:0];
  [(ChipManager *)self resetChip];

  [(ChipManager *)self bootChip];
}

- (BOOL)handleChipBooted
{
  ping = [(Chip *)self->_chip ping];

  if (ping)
  {
    if (!self->_pmuErrorDetected)
    {
LABEL_5:
      [(ChipManager *)self processBootPerformanceStats];
      LOBYTE(getPMUFaultInfo) = 1;
      return getPMUFaultInfo;
    }

    getPMUFaultInfo = [(Chip *)self->_chip getPMUFaultInfo];
    if (getPMUFaultInfo)
    {
      v5 = getPMUFaultInfo;
      [(AnalyticsReporter *)self->_analyticsReporter reportPMUError:getPMUFaultInfo];
      v6 = [NSString stringWithFormat:@"ErrorDetectGPIO-%@", v5];
      [(Chip *)self->_chip collectLogsWithReason:v6 fatal:0 useFWReason:0 lpm:0];
      self->_pmuErrorDetected = 0;

      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(getPMUFaultInfo) = 0;
  }

  return getPMUFaultInfo;
}

@end