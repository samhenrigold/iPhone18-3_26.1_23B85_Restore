@interface Chip
+ (BOOL)hasHardware:(BOOL *)hardware;
+ (id)bootModeAsString:(int64_t)string;
+ (id)getCentauriBootArgs;
+ (id)stateAsString:(int64_t)string;
- (BOOL)activate:(id *)activate;
- (BOOL)bootInMode:(int64_t)mode lpmData:(id)data powerTablePaths:(id)paths failureReason:(id *)reason;
- (BOOL)collectLogsWithReason:(id)reason fatal:(BOOL)fatal useFWReason:(BOOL)wReason lpm:(BOOL)lpm;
- (BOOL)reset;
- (BOOL)storeFirmwareBootTimestamps:(id)timestamps;
- (Chip)initWithQueue:(id)queue delegate:(id)delegate;
- (id)getCrashlogs;
- (id)getFirmwareBootTimestamps;
- (id)getHostBootTimestamps;
- (id)getPMUFaultInfo;
- (id)getPowerStats:(BOOL)stats;
- (id)getSiKPublicKey;
- (id)ping;
- (id)preflightQuery;
- (id)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid;
- (id)shellCommand:(id)command;
- (int)createController:(id *)controller;
- (int)powerCycle;
- (int)powerOff;
- (int)powerOn:(id *)on;
- (int64_t)getChipState;
- (unint64_t)driverInstance;
- (void)dealloc;
- (void)destroyController;
- (void)handleCrashlogAvailable;
- (void)handleErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg driverInstance:(unint64_t)instance;
- (void)invalidate;
- (void)log;
- (void)setHardwareHealth:(BOOL)health;
@end

@implementation Chip

- (Chip)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = Chip;
  v9 = [(Chip *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(Chip *)v9 setState:0];
    v10->_hasFirmware = CentauriBooterIsFirmwarePresent();
    v10->_hasHardware = [objc_opt_class() hasHardware:&v10->_builtIn];
    objc_storeStrong(&v10->_queue, queue);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc_init(CCHIInterface);
    cchiInterface = v10->_cchiInterface;
    v10->_cchiInterface = v11;

    CentauriControllerSetLogSink();
  }

  return v10;
}

- (void)dealloc
{
  if (self->_active)
  {
    v3 = sub_100025204(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029A78();
    }

    abort_report_np("assertion failure: !_active -- unexpected dealloc");
    __break(1u);
  }

  v4.receiver = self;
  v4.super_class = Chip;
  [(Chip *)&v4 dealloc];
}

- (BOOL)activate:(id *)activate
{
  v15 = 0;
  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  ChipPower = CentauriControllerGetChipPower();
  if (ChipPower)
  {
    chipPower = [NSString stringWithFormat:@"getChipPowerFailure:0x%08x", ChipPower];
    *activate = chipPower;
    v12 = sub_100025204(chipPower);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_opt_class() description];
      v14 = NSStringFromSelector(a2);
      *buf = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 1024;
      v21 = ChipPower;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to get chip power state: 0x%08x", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    self->_state = 5;
    result = 1;
    self->_active = 1;
  }

  return result;
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

  [(CCHIInterface *)self->_cchiInterface stop];
  [(Chip *)self destroyController];
  self->_active = 0;
}

+ (id)getCentauriBootArgs
{
  v3 = &stru_10005D038;
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  v5 = v4;
  if (v4)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v4, @"centauri-boot-args", kCFAllocatorDefault, 0);
    v7 = CFProperty;
    if (CFProperty)
    {
      v8 = CFGetTypeID(CFProperty);
      TypeID = CFDataGetTypeID();
      v10 = v8 == TypeID;
      if (v8 == TypeID)
      {
        v11 = [[NSString alloc] initWithData:v7 encoding:1];
        v15 = sub_100025204(v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [objc_opt_class() description];
          v13 = NSStringFromSelector(a2);
          v17 = 138543874;
          v18 = v12;
          v19 = 2114;
          v20 = v13;
          v21 = 2114;
          v22 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: user-specified Centauri boot-args: '%{public}@'", &v17, 0x20u);
        }

        v3 = v11;
      }

      else
      {
        v15 = sub_100025204(TypeID);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_100029AC0();
          v3 = &stru_10005D038;
        }
      }

      CFRelease(v7);
    }

    else
    {
      v10 = 1;
    }

    IOObjectRelease(v5);
    if (!v10)
    {

      v3 = 0;
    }
  }

  return v3;
}

+ (BOOL)hasHardware:(BOOL *)hardware
{
  parent = 0;
  if (!hardware)
  {
    v23 = sub_100025204(self);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029B98();
    }

    abort_report_np("assertion failure: builtIn -- bad parameter");
    goto LABEL_46;
  }

  v5 = IOServiceNameMatching("centauri");
  if (!v5)
  {
    v24 = sub_100025204(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029B50();
    }

    goto LABEL_36;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  v7 = MatchingService;
  if (MatchingService)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  v11 = IOServiceMatching("AppleCentauriManager");
  if (!v11)
  {
    v24 = sub_100025204(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029B50();
    }

LABEL_36:

    abort_report_np("assertion failure: matchingDict -- failed to create matching dict");
    goto LABEL_46;
  }

  v12 = IOServiceGetMatchingService(kIOMainPortDefault, v11);
  if (v12)
  {
    v9 = v12;
    ParentEntry = IORegistryEntryGetParentEntry(v12, "IOService", &parent);
    if (ParentEntry)
    {
      v14 = 1;
    }

    else
    {
      v14 = parent == 0;
    }

    if (!v14)
    {
      MatchingService = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin", kCFAllocatorDefault, 0);
      v8 = MatchingService;
      if (!MatchingService)
      {
        MatchingService = IORegistryEntryCreateCFProperty(parent, @"centauri-builtin-protium", kCFAllocatorDefault, 0);
        v8 = MatchingService;
      }

      v10 = v8 != 0;
      goto LABEL_14;
    }

    v26 = sub_100025204(parent);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [objc_opt_class() description];
      v28 = NSStringFromSelector(a2);
      *buf = 138543874;
      v31 = v27;
      v32 = 2114;
      v33 = v28;
      v34 = 1024;
      LODWORD(v35) = ParentEntry;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: (kr == kIOReturnSuccess) && bridgeService -- failed to get manager's parent: 0x%08x", buf, 0x1Cu);
    }

    abort_report_np("assertion failure: (kr == kIOReturnSuccess) && bridgeService -- failed to get manager's parent: 0x%08x", ParentEntry);
LABEL_46:
    __break(1u);
  }

  v25 = sub_100025204(v12);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_100029B08();
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v15 = 0;
LABEL_15:
  v16 = sub_100025204(MatchingService);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    v19 = v18;
    v20 = "no";
    *buf = 138544130;
    v32 = 2114;
    if (v15)
    {
      v21 = "yes";
    }

    else
    {
      v21 = "no";
    }

    v31 = v17;
    v33 = v18;
    if (v10)
    {
      v20 = "yes";
    }

    v34 = 2080;
    v35 = v21;
    v36 = 2080;
    v37 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: hasHardware: %s, builtIn: %s", buf, 0x2Au);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (parent)
  {
    IOObjectRelease(parent);
    parent = 0;
  }

  if (v9)
  {
    IOObjectRelease(v9);
  }

  if (v7)
  {
    IOObjectRelease(v7);
  }

  *hardware = v10;
  return v15;
}

+ (id)stateAsString:(int64_t)string
{
  if ((string - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_10005C890[string - 1];
  }
}

+ (id)bootModeAsString:(int64_t)string
{
  v3 = @"Normal";
  if (string == 1)
  {
    v3 = @"LowPower";
  }

  if (string == 2)
  {
    return @"LowPowerDebug";
  }

  else
  {
    return v3;
  }
}

- (BOOL)bootInMode:(int64_t)mode lpmData:(id)data powerTablePaths:(id)paths failureReason:(id *)reason
{
  dataCopy = data;
  pathsCopy = paths;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = sub_100025204(pathsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    v14 = [objc_opt_class() bootModeAsString:mode];
    v15 = v14;
    v16 = "yes";
    *buf = 138544130;
    v64 = 2114;
    v63 = v12;
    if (!dataCopy)
    {
      v16 = "no";
    }

    v65 = v13;
    v66 = 2112;
    v67 = v14;
    v68 = 2080;
    v69 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: mode %@, lpmData %s", buf, 0x2Au);
  }

  v17 = &stru_10005D038;
  if ([(Chip *)self state]!= 1)
  {
    v38 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
    *reason = [NSString stringWithFormat:@"wrongState:%@", v38];

    v40 = sub_100025204(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v43 = [objc_opt_class() description];
      v44 = NSStringFromSelector(a2);
      v45 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v63 = v43;
      v64 = 2114;
      v65 = v44;
      v66 = 2112;
      v67 = v45;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    v21 = 0;
    v17 = &stru_10005D038;
    goto LABEL_38;
  }

  *&v49 = sub_100009CC0;
  LODWORD(v50) = 2;
  *&v54 = self->_controller;
  if (![(Chip *)self builtIn])
  {
    *(&v50 + 1) = "/usr/local/standalone/firmware/Centauri/ftab.bin";
  }

  if (mode == 1)
  {
    DWORD2(v51) = 1;
  }

  getCentauriBootArgs = [objc_opt_class() getCentauriBootArgs];
  v19 = getCentauriBootArgs;
  if (!getCentauriBootArgs)
  {
    v21 = 0;
    *reason = @"bootArgQueryFailure";
    goto LABEL_38;
  }

  if (mode == 2)
  {
    v61[0] = getCentauriBootArgs;
    v61[1] = @"lpm-firmware=1";
    v20 = [NSArray arrayWithObjects:v61 count:2];
    v21 = [v20 componentsJoinedByString:@" "];
  }

  else
  {
    v21 = getCentauriBootArgs;
  }

  if ([v21 length])
  {
    v59 = @"bootargs";
    v60 = v21;
    *&v51 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  }

  if (dataCopy)
  {
    *(&v53 + 1) = dataCopy;
  }

  if (pathsCopy)
  {
    *(&v54 + 1) = pathsCopy;
  }

  v22 = +[NSUserDefaults standardUserDefaults];
  v23 = [v22 BOOLForKey:@"AlwaysDumpBooterDiagnostics"];

  v24 = +[NSUserDefaults standardUserDefaults];
  v25 = [v24 BOOLForKey:@"DumpBooterDiagnosticsOnFailure"];

  if ((v23 | v25))
  {
    BYTE8(v52) = v23;
    v26 = NSTemporaryDirectory();
    v27 = v26;
    *&v53 = [v26 UTF8String];
  }

  self->_booted = 1;
  objc_storeStrong(&self->_activeBootArgs, v21);
  objc_storeStrong(&self->_activePowerTablePaths, paths);
  v28 = objc_autoreleasePoolPush();
  v29 = CentauriBooterCreate();
  if (v29)
  {
    v30 = CentauriBooterBootChip();
    if (v30)
    {
      CFRelease(v29);
      v29 = 0;
      v31 = 1;
      goto LABEL_25;
    }

    *reason = @"bootFailure";
    v42 = sub_100025204(v30);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029BE0();
    }
  }

  else
  {
    *reason = @"booterCreateFailure";
    v42 = sub_100025204(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C28();
    }

    v29 = 0;
  }

  v31 = 0;
LABEL_25:
  v17 = &stru_10005D038;
  objc_autoreleasePoolPop(v28);
  if (!v31)
  {
    goto LABEL_30;
  }

  cchiInterface = self->_cchiInterface;
  v48 = &stru_10005D038;
  v33 = [(CCHIInterface *)cchiInterface start:&v48];
  v17 = v48;
  if (v33)
  {
    v34 = sub_100025204([(Chip *)self setState:3]);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [objc_opt_class() description];
      v36 = NSStringFromSelector(a2);
      *v55 = 138543618;
      v56 = v35;
      v57 = 2114;
      v58 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", v55, 0x16u);
    }

    LOBYTE(v31) = 1;
LABEL_30:
    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  [NSString stringWithFormat:@"interfaceStartFailure:%@", v17];
  *reason = LOBYTE(v31) = 0;
  if (v29)
  {
LABEL_31:
    CFRelease(v29);
  }

LABEL_32:
  if ((v31 & 1) == 0)
  {
LABEL_38:
    [(Chip *)self setState:2];
    v37 = 0;
    goto LABEL_39;
  }

  v37 = 1;
LABEL_39:

  return v37;
}

- (id)ping
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v17, 0x16u);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    v10 = sub_100025204(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }

    goto LABEL_14;
  }

  hello = [(CCHIInterface *)self->_cchiInterface hello];
  v9 = hello;
  if (!hello)
  {
    v10 = sub_100025204(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_7;
  }

  v10 = sub_100025204(hello);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v17, 0x20u);
  }

LABEL_7:

  return v9;
}

- (BOOL)reset
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v17, 0x16u);
  }

  state = [(Chip *)self state];
  if (state == 5)
  {
    v11 = sub_100025204(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }
  }

  else if (self->_controller)
  {
    [(CCHIInterface *)self->_cchiInterface stop];
    v8 = CentauriControllerReset();
    v9 = v8;
    if (!v8)
    {
      [(Chip *)self setState:1];
      return 1;
    }

    v11 = sub_100025204(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_opt_class() description];
      v16 = NSStringFromSelector(a2);
      v17 = 138543874;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      v21 = 1024;
      LODWORD(v22) = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: reset failed: 0x%08x", &v17, 0x1Cu);
    }
  }

  else
  {
    v11 = sub_100025204(state);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }
  }

  return 0;
}

- (BOOL)collectLogsWithReason:(id)reason fatal:(BOOL)fatal useFWReason:(BOOL)wReason lpm:(BOOL)lpm
{
  fatalCopy = fatal;
  reasonCopy = reason;
  v10 = sub_100025204(reasonCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v13 = v12;
    v14 = "nonfatal";
    *buf = 138544130;
    v39 = v11;
    v40 = 2114;
    if (fatalCopy)
    {
      v14 = "fatal";
    }

    v41 = v12;
    v42 = 2080;
    v43 = v14;
    v44 = 2114;
    v45[0] = reasonCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %s: '%{public}@'", buf, 0x2Au);
  }

  state = [(Chip *)self state];
  if (state == 5)
  {
    v21 = sub_100025204(5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [objc_opt_class() description];
      v23 = NSStringFromSelector(a2);
      v24 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v39 = v22;
      v40 = 2114;
      v41 = v23;
      v42 = 2112;
      v43 = v24;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    goto LABEL_22;
  }

  if (!self->_controller)
  {
    v21 = sub_100025204(state);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }

    goto LABEL_22;
  }

  v16 = reasonCopy;
  [reasonCopy UTF8String];
  v17 = CentauriControllerCollectLogsWithOptions();
  v18 = v17;
  if (v17)
  {
    v25 = sub_100025204(v17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v31 = [objc_opt_class() description];
      v32 = NSStringFromSelector(a2);
      v33 = reasonCopy;
      uTF8String = [reasonCopy UTF8String];
      v35 = "nonfatal";
      *buf = 138544386;
      v40 = 2114;
      v39 = v31;
      if (fatalCopy)
      {
        v35 = "fatal";
      }

      v41 = v32;
      v42 = 2080;
      v43 = v35;
      v44 = 1024;
      LODWORD(v45[0]) = v18;
      WORD2(v45[0]) = 2080;
      *(v45 + 6) = uTF8String;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %s log collection failed: 0x%08x: '%s'", buf, 0x30u);
    }

    if (!sub_10002529C())
    {
      goto LABEL_23;
    }

    v26 = reasonCopy;
    uTF8String2 = [reasonCopy UTF8String];
    v28 = "nonfatal";
    if (fatalCopy)
    {
      v28 = "fatal";
    }

    v29 = sub_100030D78("%s log collection failed: 0x%08x: '%s'", v28, v18, uTF8String2);
    v30 = v29;
    if (!v29)
    {
LABEL_23:
      v19 = 0;
      if (!fatalCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v21 = sub_100025204(v29);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v36 = [objc_opt_class() description];
      v37 = NSStringFromSelector(a2);
      *buf = 138543874;
      v39 = v36;
      v40 = 2114;
      v41 = v37;
      v42 = 1024;
      LODWORD(v43) = v30;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to generate simulated crash log: %{darwin.errno}d", buf, 0x1Cu);
    }

LABEL_22:

    goto LABEL_23;
  }

  v19 = 1;
  if (fatalCopy)
  {
LABEL_9:
    [(Chip *)self handleCrashlogAvailable];
  }

LABEL_10:

  return v19;
}

- (int)powerCycle
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_100029D00();
  }

  sub_100029D54(v4, self, &v6, &v7);
  return v7;
}

- (int)powerOff
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v17, 0x16u);
  }

  if ([(Chip *)self state]== 5)
  {
    v10 = sub_100025204(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }

    return -536870212;
  }

  else
  {
    [(CCHIInterface *)self->_cchiInterface stop];
    [(Chip *)self destroyController];
    v7 = CentauriControllerSetChipPower();
    v8 = v7;
    if (v7)
    {
      v11 = sub_100025204(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_opt_class() description];
        v16 = NSStringFromSelector(a2);
        v17 = 138543874;
        v18 = v15;
        v19 = 2114;
        v20 = v16;
        v21 = 1024;
        LODWORD(v22) = v8;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failed: 0x%08x", &v17, 0x1Cu);
      }
    }

    else
    {
      [(Chip *)self setState:5];
      return 0;
    }
  }

  return v8;
}

- (int)powerOn:(id *)on
{
  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  if ([(Chip *)self state]!= 5)
  {
    v12 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
    *on = [NSString stringWithFormat:@"wrongState:%@", v12];

    v14 = sub_100025204(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_opt_class() description];
      v26 = NSStringFromSelector(a2);
      v27 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v34 = v25;
      v35 = 2114;
      v36 = v26;
      v37 = 2112;
      v38 = v27;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    LODWORD(v9) = -536870212;
    goto LABEL_14;
  }

  v9 = CentauriControllerSetChipPower();
  if (v9)
  {
    v15 = [NSString stringWithFormat:@"setChipPowerOnFailure:0x%08x", v9];
    *on = v15;
    v16 = sub_100025204(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_opt_class() description];
      v29 = NSStringFromSelector(a2);
      *buf = 138543874;
      v34 = v28;
      v35 = 2114;
      v36 = v29;
      v37 = 1024;
      LODWORD(v38) = v9;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power on failed: 0x%08x", buf, 0x1Cu);
    }

LABEL_14:
    v10 = &stru_10005D038;
    goto LABEL_7;
  }

  v32 = &stru_10005D038;
  LODWORD(v9) = [(Chip *)self createController:&v32];
  v10 = v32;
  if (v9)
  {
    v17 = [NSString stringWithFormat:@"createControllerFailure:%@", v10];
    *on = v17;
    v18 = sub_100025204(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [objc_opt_class() description];
      v20 = NSStringFromSelector(a2);
      *buf = 138543618;
      v34 = v19;
      v35 = 2114;
      v36 = v20;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: powering off again", buf, 0x16u);
    }

    v22 = CentauriControllerSetChipPower();
    v23 = v22;
    if (v22)
    {
      v24 = sub_100025204(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = [objc_opt_class() description];
        v31 = NSStringFromSelector(a2);
        *buf = 138543874;
        v34 = v30;
        v35 = 2114;
        v36 = v31;
        v37 = 1024;
        LODWORD(v38) = v23;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: power off failed: 0x%08x", buf, 0x1Cu);
      }

      *on = [*on stringByAppendingFormat:@", setChipPowerOffFailure:0x%08x", v23];
    }
  }

  else
  {
    [(Chip *)self setState:1];
    LODWORD(v9) = 0;
  }

LABEL_7:

  return v9;
}

- (id)getCrashlogs
{
  if ([(Chip *)self state]== 5)
  {
    v6 = sub_100025204(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_opt_class() description];
      v13 = NSStringFromSelector(a2);
      v14 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }
  }

  else if (self->_controller)
  {
    Crashlogs = CentauriControllerGetCrashlogs();
    v5 = Crashlogs;
    if (Crashlogs == -536870160)
    {
      v6 = sub_100025204(Crashlogs);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [objc_opt_class() description];
        v8 = NSStringFromSelector(a2);
        *buf = 138543618;
        v16 = v7;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: no crashlogs found", buf, 0x16u);
      }
    }

    else if (Crashlogs)
    {
      v6 = sub_100025204(Crashlogs);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = [objc_opt_class() description];
        v11 = NSStringFromSelector(a2);
        *buf = 138543874;
        v16 = v10;
        v17 = 2114;
        v18 = v11;
        v19 = 1024;
        LODWORD(v20) = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: get crashlogs failed: 0x%08x", buf, 0x1Cu);
      }
    }

    else
    {
      v6 = sub_100025204(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029DC4();
      }
    }
  }

  else
  {
    v6 = sub_100025204(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }
  }

  return 0;
}

- (id)rawCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid
{
  oidCopy = oid;
  gidCopy = gid;
  commandCopy = command;
  v10 = sub_100025204(commandCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v23 = 138544386;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    v27 = 1024;
    *v28 = gidCopy;
    *&v28[4] = 1024;
    *&v28[6] = oidCopy;
    v29 = 2048;
    v30 = [commandCopy length];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: gid %u, oid %u, payload %lu bytes", &v23, 0x2Cu);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    v16 = sub_100025204(state);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      v22 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v23 = 138543874;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2112;
      *v28 = v22;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v23, 0x20u);
    }

    goto LABEL_14;
  }

  v14 = [(CCHIInterface *)self->_cchiInterface raw:commandCopy gid:gidCopy oid:oidCopy];
  v15 = v14;
  if (!v14)
  {
    v16 = sub_100025204(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v15 = 0;
    goto LABEL_7;
  }

  v16 = sub_100025204(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    v23 = 138543874;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    v27 = 2114;
    *v28 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v23, 0x20u);
  }

LABEL_7:

  return v15;
}

- (id)shellCommand:(id)command
{
  commandCopy = command;
  v6 = sub_100025204(commandCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v19 = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    v23 = 2112;
    v24 = commandCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@", &v19, 0x20u);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    v12 = sub_100025204(state);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_opt_class() description];
      v17 = NSStringFromSelector(a2);
      v18 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v19 = 138543874;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v19, 0x20u);
    }

    goto LABEL_14;
  }

  v10 = [(CCHIInterface *)self->_cchiInterface shell:commandCopy];
  v11 = v10;
  if (!v10)
  {
    v12 = sub_100025204(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v11 = 0;
    goto LABEL_7;
  }

  v12 = sub_100025204(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    v19 = 138543874;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v19, 0x20u);
  }

LABEL_7:

  return v11;
}

- (id)getPowerStats:(BOOL)stats
{
  statsCopy = stats;
  v5 = sub_100025204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    *buf = 138543874;
    v61 = v6;
    v62 = 2114;
    v63 = v7;
    v64 = 1024;
    LODWORD(v65) = statsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: reset %u", buf, 0x1Cu);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    log = sub_100025204(state);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v39 = [objc_opt_class() description];
      v40 = NSStringFromSelector(a2);
      v41 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      *buf = 138543874;
      v61 = v39;
      v62 = 2114;
      v63 = v40;
      v64 = 2112;
      v65 = v41;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
    }

    goto LABEL_18;
  }

  v9 = [(CCHIInterface *)self->_cchiInterface getPowerStats:statsCopy];
  v10 = v9;
  if (!v9)
  {
    log = sub_100025204(0);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_18:
    v10 = 0;
    goto LABEL_11;
  }

  v11 = sub_100025204(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    loga = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v52 = [v10 objectForKeyedSubscript:@"AwakeCount"];
    v49 = [v10 objectForKeyedSubscript:@"AwakeDuration"];
    v13 = [v10 objectForKeyedSubscript:@"AwakeL3Count"];
    v14 = [v10 objectForKeyedSubscript:@"AwakeL3Duration"];
    v15 = [v10 objectForKeyedSubscript:@"WarmSleepCount"];
    v16 = [v10 objectForKeyedSubscript:@"WarmSleepDuration"];
    v17 = [v10 objectForKeyedSubscript:@"DeepSleepCount"];
    v18 = [v10 objectForKeyedSubscript:@"DeepSleepDuration"];
    *buf = 138545666;
    v61 = loga;
    v62 = 2114;
    v63 = v12;
    v64 = 2114;
    v65 = v52;
    v66 = 2114;
    v67 = v49;
    v68 = 2114;
    v69 = v13;
    v70 = 2114;
    v71 = v14;
    v72 = 2114;
    v73 = v15;
    v74 = 2114;
    v75 = v16;
    v76 = 2114;
    v77 = v17;
    v78 = 2114;
    v79 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: Awake (%{public}@, %{public}@us), AwakeL3 (%{public}@, %{public}@us), WarmSleep (%{public}@, %{public}@us), DeepSleep (%{public}@, %{public}@us)", buf, 0x66u);
  }

  v20 = sub_100025204(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [objc_opt_class() description];
    logb = NSStringFromSelector(a2);
    v50 = [v10 objectForKeyedSubscript:@"PCIeL0EntryCount"];
    v47 = [v10 objectForKeyedSubscript:@"PCIeL0Duration"];
    v45 = [v10 objectForKeyedSubscript:@"PCIeL1EntryCount"];
    v21 = [v10 objectForKeyedSubscript:@"PCIeL1Duration"];
    v22 = [v10 objectForKeyedSubscript:@"PCIeL1Dot1EntryCount"];
    v23 = [v10 objectForKeyedSubscript:@"PCIeL1Dot1Duration"];
    v24 = [v10 objectForKeyedSubscript:@"PCIeL1Dot2EntryCount"];
    v25 = [v10 objectForKeyedSubscript:@"PCIeL1Dot2Duration"];
    v26 = [v10 objectForKeyedSubscript:@"PCIeL3EntryCount"];
    v27 = [v10 objectForKeyedSubscript:@"PCIeL3Duration"];
    *buf = 138546178;
    v61 = v53;
    v62 = 2114;
    v63 = logb;
    v64 = 2114;
    v65 = v50;
    v66 = 2114;
    v67 = v47;
    v68 = 2114;
    v69 = v45;
    v70 = 2114;
    v71 = v21;
    v72 = 2114;
    v73 = v22;
    v74 = 2114;
    v75 = v23;
    v76 = 2114;
    v77 = v24;
    v78 = 2114;
    v79 = v25;
    v80 = 2114;
    v81 = v26;
    v82 = 2114;
    v83 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: L0 (%{public}@, %{public}@us), L1 (%{public}@, %{public}@us), L1.1 (%{public}@, %{public}@us), L1.2 (%{public}@, %{public}@us), L3 (%{public}@, %{public}@us)", buf, 0x7Au);
  }

  log = sub_100025204(v28);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [objc_opt_class() description];
    aSelectora = NSStringFromSelector(a2);
    v51 = [v10 objectForKeyedSubscript:@"CCPUIdleDuration"];
    v48 = [v10 objectForKeyedSubscript:@"WiFiUMACIdleDuration"];
    v46 = [v10 objectForKeyedSubscript:@"WiFiPHY2GIdleDuration"];
    v44 = [v10 objectForKeyedSubscript:@"WiFiPHY5GIdleDuration"];
    v43 = [v10 objectForKeyedSubscript:@"WiFiTXIdleDuration"];
    v42 = [v10 objectForKeyedSubscript:@"WiFiRXIdleDuration"];
    v29 = [v10 objectForKeyedSubscript:@"WiFiLMACCommonIdleDuration"];
    v30 = [v10 objectForKeyedSubscript:@"WiFiLMAC2GIdleDuration"];
    v31 = [v10 objectForKeyedSubscript:@"WiFiLMAC5GIdleDuration"];
    v32 = [v10 objectForKeyedSubscript:@"WiFiScanIdleDuration"];
    v33 = [v10 objectForKeyedSubscript:@"BTMainIdleDuration"];
    v34 = [v10 objectForKeyedSubscript:@"BTSecondaryIdleDuration"];
    v35 = [v10 objectForKeyedSubscript:@"BTScanIdleDuration"];
    v36 = [v10 objectForKeyedSubscript:@"BTPHY2GIdleDuration"];
    v37 = [v10 objectForKeyedSubscript:@"BTPHY5GIdleDuration"];
    *buf = 138547458;
    v61 = v54;
    v62 = 2114;
    v63 = aSelectora;
    v64 = 2114;
    v65 = v51;
    v66 = 2114;
    v67 = v48;
    v68 = 2114;
    v69 = v46;
    v70 = 2114;
    v71 = v44;
    v72 = 2114;
    v73 = v43;
    v74 = 2114;
    v75 = v42;
    v76 = 2114;
    v77 = v29;
    v78 = 2114;
    v79 = v30;
    v80 = 2114;
    v81 = v31;
    v82 = 2114;
    v83 = v32;
    v84 = 2114;
    v85 = v33;
    v86 = 2114;
    v87 = v34;
    v88 = 2114;
    v89 = v35;
    v90 = 2114;
    v91 = v36;
    v92 = 2114;
    v93 = v37;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: idle: CCPU %{public}@, WiFiUMAC %{public}@, WiFiPHY2G %{public}@, WiFiPHY5G %{public}@, WiFiTX %{public}@, WiFiRX %{public}@, WiFiLMAC %{public}@, LMAC2G %{public}@, WiFiLMAC5G %{public}@, WiFiScan %{public}@, BTMain %{public}@, BTSecondary %{public}@, BTScan %{public}@, BTPHY2G %{public}@, BTPHY5G %{public}@", buf, 0xACu);
  }

LABEL_11:

  return v10;
}

- (id)getPMUFaultInfo
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v17, 0x16u);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    v10 = sub_100025204(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }

    goto LABEL_14;
  }

  getPMUFaultInfo = [(CCHIInterface *)self->_cchiInterface getPMUFaultInfo];
  v9 = getPMUFaultInfo;
  if (!getPMUFaultInfo)
  {
    v10 = sub_100025204(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_7;
  }

  v10 = sub_100025204(getPMUFaultInfo);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v17, 0x20u);
  }

LABEL_7:

  return v9;
}

- (id)getSiKPublicKey
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v17, 0x16u);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    v10 = sub_100025204(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }

    goto LABEL_14;
  }

  getSiKPublicKey = [(CCHIInterface *)self->_cchiInterface getSiKPublicKey];
  v9 = getSiKPublicKey;
  if (!getSiKPublicKey)
  {
    v10 = sub_100025204(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_7;
  }

  v10 = sub_100025204(getSiKPublicKey);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v17 = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: '%{public}@'", &v17, 0x20u);
  }

LABEL_7:

  return v9;
}

- (id)getFirmwareBootTimestamps
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v17, 0x16u);
  }

  state = [(Chip *)self state];
  if (state != 3)
  {
    v10 = sub_100025204(state);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [objc_opt_class() description];
      v15 = NSStringFromSelector(a2);
      v16 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", &v17, 0x20u);
    }

    goto LABEL_14;
  }

  getBootPerformanceStats = [(CCHIInterface *)self->_cchiInterface getBootPerformanceStats];
  v9 = getBootPerformanceStats;
  if (!getBootPerformanceStats)
  {
    v10 = sub_100025204(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029C70();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_7;
  }

  v10 = sub_100025204(getBootPerformanceStats);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", &v17, 0x16u);
  }

LABEL_7:

  return v9;
}

- (BOOL)storeFirmwareBootTimestamps:(id)timestamps
{
  timestampsCopy = timestamps;
  v3 = sub_100025204(timestampsCopy);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    *buf = 138543618;
    v30 = v4;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = timestampsCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:v11];
        longLongValue = [v12 longLongValue];

        v14 = [NSNumber numberWithUnsignedLongLong:1000 * longLongValue];
        [v6 setObject:v14 forKey:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v8);
  }

  v15 = CentauriControllerSendFirmwareBootTimestamps();
  v16 = v15;
  if (v15)
  {
    v17 = sub_100025204(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 1024;
      v34 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed: 0x%08x", buf, 0x1Cu);
    }
  }

  else
  {
    v17 = sub_100025204(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [objc_opt_class() description];
      v19 = NSStringFromSelector(a2);
      *buf = 138543618;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success", buf, 0x16u);
    }
  }

  return v16 == 0;
}

- (id)getHostBootTimestamps
{
  v3 = sub_100025204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    *buf = 138543618;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  BootTimestamps = CentauriControllerGetBootTimestamps();
  v7 = BootTimestamps;
  v8 = sub_100025204(BootTimestamps);
  v9 = v8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 1024;
    v18 = v7;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed: 0x%08x", buf, 0x1Cu);
  }

  return 0;
}

- (id)preflightQuery
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    *buf = 138543618;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  if ([(Chip *)self state]!= 3)
  {
    state = [(Chip *)self state];
    if (state != 1)
    {
      v10 = sub_100025204(state);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_opt_class() description];
        v17 = NSStringFromSelector(a2);
        v18 = [objc_opt_class() stateAsString:{-[Chip state](self, "state")}];
        *buf = 138543874;
        v21 = v16;
        v22 = 2114;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: wrong state %@", buf, 0x20u);
      }

      goto LABEL_20;
    }
  }

  if ([(Chip *)self state]== 3)
  {
    [(CCHIInterface *)self->_cchiInterface stop];
  }

  [(Chip *)self state];
  v8 = CentauriBooterCopyPreflightParameters();
  v9 = v8;
  if (!v8)
  {
    v10 = sub_100025204(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029E0C();
    }

LABEL_20:
    v13 = 0;
    goto LABEL_11;
  }

  v10 = sub_100025204(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: success: %{public}@", buf, 0x20u);
  }

  v13 = v9;
LABEL_11:

  if ([(Chip *)self state]== 3)
  {
    cchiInterface = self->_cchiInterface;
    v19 = &stru_10005D038;
    [(CCHIInterface *)cchiInterface start:&v19];
  }

  return v13;
}

- (void)setHardwareHealth:(BOOL)health
{
  healthCopy = health;
  v5 = sub_100025204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v13 = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 1024;
    v18 = healthCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: status: %d", &v13, 0x1Cu);
  }

  v8 = CentauriControllerSetHardwareHealth();
  v9 = v8;
  if (v8)
  {
    v10 = sub_100025204(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() description];
      v12 = NSStringFromSelector(a2);
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed: 0x%08x", &v13, 0x1Cu);
    }
  }
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = [objc_opt_class() stateAsString:self->_state];
    hasHardware = self->_hasHardware;
    hasFirmware = self->_hasFirmware;
    builtIn = self->_builtIn;
    controller = self->_controller;
    v24 = 138545154;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 1024;
    v31 = hasHardware;
    v32 = 1024;
    v33 = hasFirmware;
    v34 = 1024;
    v35 = builtIn;
    v36 = 1024;
    v37 = controller != 0;
    v38 = 2048;
    driverInstance = [(Chip *)self driverInstance];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: state %@, HW %u, FW %u, builtin %u, controller %u, driver 0x%llx", &v24, 0x42u);
  }

  v13 = sub_100025204(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = v15;
    if (self->_booted)
    {
      activeBootArgs = self->_activeBootArgs;
    }

    else
    {
      activeBootArgs = @"unknown";
    }

    v24 = 138543874;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = activeBootArgs;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: active firmware boot-args: %{public}@", &v24, 0x20u);
  }

  v19 = sub_100025204(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [objc_opt_class() description];
    v21 = NSStringFromSelector(a2);
    v22 = v21;
    if (self->_booted)
    {
      activePowerTablePaths = self->_activePowerTablePaths;
    }

    else
    {
      activePowerTablePaths = @"unknown";
    }

    v24 = 138543874;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    v28 = 2114;
    v29 = activePowerTablePaths;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: active power table paths: %{public}@", &v24, 0x20u);
  }

  [(CCHIInterface *)self->_cchiInterface log];
}

- (int)createController:(id *)controller
{
  v6 = sub_100025204(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    v26 = v7;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", buf, 0x16u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000EA60;
  v24[3] = &unk_10005C848;
  v24[4] = self;
  v9 = objc_retainBlock(v24);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000EA78;
  v23[3] = &unk_10005C870;
  v23[4] = self;
  v10 = objc_retainBlock(v23);
  v11 = v10;
  if (self->_controller)
  {
    *controller = @"alreadyCreated";
    v16 = sub_100025204(v10);
    LODWORD(v12) = -536870212;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029E54();
    }
  }

  else
  {
    v12 = CentauriControllerCreateWithParameters();
    if (v12 || !self->_controller)
    {
      v15 = [NSString stringWithFormat:@"createFailure:0x%08x", v12];
      *controller = v15;
      v16 = sub_100025204(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029E9C();
      }
    }

    else
    {
      v12 = CentauriControllerRegisterUniqueErrorHandlerWithQueue();
      if (v12)
      {
        v17 = [NSString stringWithFormat:@"registerErrorHandlerFailure:0x%08x", v12];
        *controller = v17;
        v16 = sub_100025204(v17);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = [objc_opt_class() description];
          v19 = NSStringFromSelector(a2);
          *buf = 138543874;
          v26 = v18;
          v27 = 2114;
          v28 = v19;
          v29 = 1024;
          v30 = v12;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to register error handler: 0x%08x", buf, 0x1Cu);
        }
      }

      else
      {
        v12 = CentauriControllerRegisterCrashlogHandler();
        if (!v12)
        {
          v13 = 0;
          goto LABEL_9;
        }

        v20 = [NSString stringWithFormat:@"registerCrashlogHandlerFailure:0x%08x", v12];
        *controller = v20;
        v16 = sub_100025204(v20);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_opt_class() description];
          v22 = NSStringFromSelector(a2);
          *buf = 138543874;
          v26 = v21;
          v27 = 2114;
          v28 = v22;
          v29 = 1024;
          v30 = v12;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to register crashlog handler: 0x%08x", buf, 0x1Cu);
        }
      }
    }
  }

  [(Chip *)self destroyController];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = -536870212;
  }

LABEL_9:

  return v13;
}

- (int64_t)getChipState
{
  if ([(Chip *)self state]!= 5)
  {
    if (self->_controller)
    {
      ChipState = CentauriControllerGetChipState();
      v6 = ChipState;
      if (!ChipState)
      {
        v4 = 0;
        v7 = sub_100025204(ChipState);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [objc_opt_class() description];
          v9 = NSStringFromSelector(a2);
          v10 = [objc_opt_class() stateAsString:0];
          *buf = 138544130;
          v15 = v8;
          v16 = 2114;
          v17 = v9;
          v18 = 1024;
          v19 = 7;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %d -> %@", buf, 0x26u);
        }

        goto LABEL_7;
      }

      v7 = sub_100025204(ChipState);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = [objc_opt_class() description];
        v13 = NSStringFromSelector(a2);
        *buf = 138543874;
        v15 = v12;
        v16 = 2114;
        v17 = v13;
        v18 = 1024;
        v19 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: get chip state failed: 0x%08x", buf, 0x1Cu);
      }
    }

    else
    {
      v7 = sub_100025204(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100029CB8();
      }
    }

    v4 = 0;
LABEL_7:

    return v4;
  }

  return 5;
}

- (void)destroyController
{
  if (self->_controller)
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

    CentauriControllerFree();
    self->_controller = 0;
  }
}

- (void)handleErrorFromSource:(unsigned int)source errorCode:(unsigned int)code arg:(unint64_t)arg driverInstance:(unint64_t)instance
{
  v8 = *&code;
  v9 = *&source;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = sub_100025204(WeakRetained);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = 138544642;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v8;
    v24 = 2048;
    argCopy = arg;
    v26 = 2048;
    instanceCopy = instance;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: source %u, code %u, arg %llu, instance 0x%llx", &v16, 0x36u);
  }

  if (!(v8 | v9))
  {
    [(Chip *)self setState:[(Chip *)self getChipState]];
  }

  if (!v9 && v8 <= 0xB && ((1 << v8) & 0x844) != 0)
  {
    [(Chip *)self setState:[(Chip *)self getChipState]];
    if ([(Chip *)self state]!= 3)
    {
      [(CCHIInterface *)self->_cchiInterface stop];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained chip:self didExperienceErrorFromSource:v9 errorCode:v8 arg:arg driverInstance:instance];
  }
}

- (void)handleCrashlogAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = sub_100025204(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained chipHasCrashlogAvailable:self];
  }
}

- (unint64_t)driverInstance
{
  if (!self->_controller)
  {
    v6 = sub_100025204(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100029CB8();
    }

    goto LABEL_8;
  }

  CurrentDriverInstance = CentauriControllerGetCurrentDriverInstance();
  v4 = CurrentDriverInstance;
  if (CurrentDriverInstance)
  {
    v6 = sub_100025204(CurrentDriverInstance);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_opt_class() description];
      v8 = NSStringFromSelector(a2);
      *buf = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 1024;
      v14 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to get driver instance: 0x%08x", buf, 0x1Cu);
    }

LABEL_8:
  }

  return 0;
}

@end