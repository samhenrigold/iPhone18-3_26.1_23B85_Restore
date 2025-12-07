@interface ATSACCAClockDevice
- (ATSACCAClockDevice)initWithClockIdentifier:(unint64_t)identifier withPlugin:(id)plugin;
- (ATSACCAClockDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin;
- (BOOL)changeSamplingRate:(double)rate;
- (id).cxx_construct;
- (int)performStartIO;
- (int)performStopIO;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeForClock:(id)clock;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)didEndClockGrandmasterChangeForClock:(id)clock;
- (void)initializeFirstTimestamp:(id)timestamp;
@end

@implementation ATSACCAClockDevice

- (ATSACCAClockDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin
{
  plugin = [NSString stringWithUTF8String:"[ATSACCAClockDevice initWithDeviceUID:withPlugin:]", plugin];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", plugin];

  return 0;
}

- (ATSACCAClockDevice)initWithClockIdentifier:(unint64_t)identifier withPlugin:(id)plugin
{
  pluginCopy = plugin;
  if (TSNullClockIdentifier == identifier)
  {

    v7 = 0;
  }

  else
  {
    v8 = [TSClockManager timeSyncAudioClockDeviceUIDForClockIdentifier:identifier];
    v44.receiver = self;
    v44.super_class = ATSACCAClockDevice;
    v9 = [(ATSACCAClockDevice *)&v44 initWithDeviceUID:v8 withPlugin:pluginCopy];
    v7 = v9;
    if (v9)
    {
      v9->_clockIdentifier = identifier;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [NSString stringWithFormat:@"com.apple.AppleTimeSyncAudioClock.%@.%@.workloop", v11, v8];
      v13 = v12;
      inactive = dispatch_workloop_create_inactive([v12 UTF8String]);

      dispatch_workloop_set_scheduler_priority();
      dispatch_activate(inactive);
      v15 = dispatch_queue_attr_make_initially_inactive(0);
      attr = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INTERACTIVE, 0);

      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [NSString stringWithFormat:@"com.apple.AppleTimeSyncAudioClock.%@.%@.timer", v17, v8];
      v19 = v18;
      v20 = dispatch_queue_create([v18 UTF8String], attr);
      timerQueue = v7->_timerQueue;
      v7->_timerQueue = v20;

      dispatch_set_target_queue(v7->_timerQueue, inactive);
      dispatch_activate(v7->_timerQueue);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [NSString stringWithFormat:@"com.apple.AppleTimeSyncAudioClock.%@.%@.logging", v23, v8];
      v25 = v24;
      v26 = dispatch_queue_create([v24 UTF8String], 0);
      loggingQueue = v7->_loggingQueue;
      v7->_loggingQueue = v26;

      identifier = [NSString stringWithFormat:@"TimeSync Clock 0x%016llx", identifier];
      [(ATSACCAClockDevice *)v7 setDeviceName:identifier];

      [(ATSACCAClockDevice *)v7 setManufacturerName:@"Apple Inc."];
      [(ATSACCAClockDevice *)v7 setModelName:@"TimeSync Audio Clock"];
      [(ATSACCAClockDevice *)v7 setModelUID:@"ATSAC:TimeSyncClockDevice"];
      [(ATSACCAClockDevice *)v7 setCanChangeDeviceName:0];
      [(ATSACCAClockDevice *)v7 setTransportType:1635017059];
      [(ATSACCAClockDevice *)v7 setSamplingRates:&off_C9B8];
      [(ATSACCAClockDevice *)v7 setSamplingRate:48000.0];
      [(ATSACCAClockDevice *)v7 samplingRate];
      [(ATSACCAClockDevice *)v7 setTimestampPeriod:(v29 * 260.0 / 1000.0)];
      v43 = 0;
      v30 = +[TSClockManager sharedClockManager];
      v42 = 0;
      v31 = [v30 addMappingFromClockID:identifier toCoreAudioClockDomain:&v43 error:&v42];
      v32 = v42;

      if (v31)
      {
        v33 = v43;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not create mapping between clock identifier and CoreAudio clock domain\n", buf, 2u);
        }

        v33 = 0;
        v43 = 0;
      }

      [(ATSACCAClockDevice *)v7 setClockDomain:v33];
      v34 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.audio.AppleTimeSyncAudioClock"];
      [v34 registerDefaults:&off_C9D0];
      -[ATSACCAClockDevice setClockIsStable:](v7, "setClockIsStable:", [v34 BOOLForKey:@"ClockIsStable"]);
      if ([v34 BOOLForKey:@"ClockUsesRawAlgorithm"])
      {
        [(ATSACCAClockDevice *)v7 setClockAlgorithm:1918990199];
      }

      v35 = [TSIntervalFilter alloc];
      v36 = +[TSClockManager sharedClockManager];
      v37 = [v35 initWithExpectedInterval:objc_msgSend(v36 multiIntervalCount:"machAbsoluteNanosecondsToTicks:" filterSize:{260000000), 1, 6}];
      intervalFilter = v7->_intervalFilter;
      v7->_intervalFilter = v37;

      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_2BD8;
      v41[3] = &unk_C470;
      v41[4] = &v7->_timestamp;
      [(ATSACCAClockDevice *)v7 setGetZeroTimestampBlock:v41];
      if (os_parse_boot_arg_int() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "timesync_atsac_async boot-arg set to %lld, ignoring", buf, 0xCu);
      }

      v7->_forceOutOfSync = 0;
    }
  }

  return v7;
}

- (int)performStartIO
{
  self->_hasLastTimestamp = 0;
  if (self->_forceOutOfSync)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Starting clock IO, forced out of sync due to boot-arg", buf, 2u);
    }

    v3 = +[TSClockManager sharedClockManager];
    timeSyncClock = [v3 timeSyncClock];
    clock = self->_clock;
    self->_clock = timeSyncClock;
  }

  else
  {
    v6 = +[TSClockManager sharedClockManager];
    v7 = [v6 clockWithClockIdentifier:{-[ATSACCAClockDevice clockIdentifier](self, "clockIdentifier")}];
    v8 = self->_clock;
    self->_clock = v7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier = [(ATSACCAClockDevice *)self clockIdentifier];
    *buf = 134217984;
    v40 = clockIdentifier;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: starting IO\n", buf, 0xCu);
  }

  v10 = self->_clock;
  if (!v10)
  {
    return 1937010544;
  }

  [(TSClock *)v10 addClient:self];
  intervalFilter = self->_intervalFilter;
  v12 = +[TSClockManager sharedClockManager];
  -[TSIntervalFilter resetFilterWithNewExpectedInterval:](intervalFilter, "resetFilterWithNewExpectedInterval:", [v12 machAbsoluteNanosecondsToTicks:260000000]);

  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, self->_timerQueue);
  v14 = +[TSClockManager sharedClockManager];
  v15 = [v14 machAbsoluteNanosecondsToTicks:30000000];

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_3184;
  handler[3] = &unk_C560;
  handler[4] = self;
  v16 = v13;
  v37 = xmmword_83E0;
  v36 = v16;
  v38 = v15;
  dispatch_source_set_event_handler(v16, handler);
  v17 = dispatch_semaphore_create(0);
  startSemaphore = self->_startSemaphore;
  self->_startSemaphore = v17;

  objc_storeStrong(&self->_timerSource, v13);
  timerQueue = self->_timerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_40B4;
  block[3] = &unk_C588;
  block[4] = self;
  v20 = v16;
  v34 = v20;
  dispatch_async(timerQueue, block);
  v21 = self->_startSemaphore;
  v22 = dispatch_time(0, 4000000000);
  if (dispatch_semaphore_wait(v21, v22))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier2 = [(ATSACCAClockDevice *)self clockIdentifier];
      *buf = 134217984;
      v40 = clockIdentifier2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: Failed to start the timer running, took too long to lock the clock.\n", buf, 0xCu);
    }

    [(TSClock *)self->_clock removeClient:self];
    dispatch_source_set_event_handler(self->_timerSource, 0);
    timerSource = self->_timerSource;
    self->_timerSource = 0;

    v25 = self->_timerQueue;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_4138;
    v31[3] = &unk_C5B0;
    v31[4] = self;
    dispatch_sync(v25, v31);
    v26 = self->_clock;
    self->_clock = 0;

    self->_lastLockState = 0;
    dispatch_source_set_event_handler(v20, &stru_C5D0);
    dispatch_resume(v20);
    performStartIO = 2003329396;
  }

  else
  {
    dispatch_resume(v20);
    v32.receiver = self;
    v32.super_class = ATSACCAClockDevice;
    performStartIO = [(ATSACCAClockDevice *)&v32 performStartIO];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      clockIdentifier3 = [(ATSACCAClockDevice *)self clockIdentifier];
      *buf = 134218240;
      v40 = clockIdentifier3;
      v41 = 1024;
      v42 = performStartIO;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: started IO 0x%08x\n", buf, 0x12u);
    }
  }

  v29 = self->_startSemaphore;
  self->_startSemaphore = 0;

  return performStartIO;
}

- (int)performStopIO
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    clockIdentifier = [(ATSACCAClockDevice *)self clockIdentifier];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: stopping IO\n", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = ATSACCAClockDevice;
  performStopIO = [(ATSACCAClockDevice *)&v10 performStopIO];
  [(TSClock *)self->_clock removeClient:self];
  dispatch_source_cancel(self->_timerSource);
  dispatch_source_set_event_handler(self->_timerSource, 0);
  timerSource = self->_timerSource;
  self->_timerSource = 0;

  timerQueue = self->_timerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4410;
  block[3] = &unk_C5B0;
  block[4] = self;
  dispatch_sync(timerQueue, block);
  clock = self->_clock;
  self->_clock = 0;

  self->_lastLockState = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier2 = [(ATSACCAClockDevice *)self clockIdentifier];
    *buf = 134218240;
    clockIdentifier = clockIdentifier2;
    v13 = 1024;
    v14 = performStopIO;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%016llx: stopped IO 0x%08x\n", buf, 0x12u);
  }

  return performStopIO;
}

- (BOOL)changeSamplingRate:(double)rate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_44C4;
  v4[3] = &unk_C5F8;
  v4[4] = self;
  *&v4[5] = rate;
  [(ATSACCAClockDevice *)self requestConfigurationChange:v4];
  return 1;
}

- (void)didChangeClockMasterForClock:(id)clock
{
  clockCopy = clock;
  timerQueue = self->_timerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_45E4;
  v7[3] = &unk_C588;
  v7[4] = self;
  v8 = clockCopy;
  v6 = clockCopy;
  dispatch_async(timerQueue, v7);
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  clockCopy = clock;
  timerQueue = self->_timerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_481C;
  block[3] = &unk_C648;
  toCopy = to;
  block[4] = self;
  v10 = clockCopy;
  v8 = clockCopy;
  dispatch_async(timerQueue, block);
}

- (void)didBeginClockGrandmasterChangeForClock:(id)clock
{
  clockCopy = clock;
  timerQueue = self->_timerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AC8;
  v7[3] = &unk_C588;
  v7[4] = self;
  v8 = clockCopy;
  v6 = clockCopy;
  dispatch_async(timerQueue, v7);
}

- (void)didEndClockGrandmasterChangeForClock:(id)clock
{
  clockCopy = clock;
  timerQueue = self->_timerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4CF4;
  v7[3] = &unk_C588;
  v7[4] = self;
  v8 = clockCopy;
  v6 = clockCopy;
  dispatch_async(timerQueue, v7);
}

- (void)initializeFirstTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = mach_absolute_time();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  clock = self->_clock;
  if (isKindOfClass)
  {
    v8 = [(TSClock *)clock convertFromMachAbsoluteToDomainTime:v5 grandmasterUsed:&self->_lastGrandmasterIdentity portNumber:&self->_lastPortNumber];
  }

  else
  {
    v8 = [(TSClock *)clock convertFromMachAbsoluteToDomainTime:v5];
  }

  if (v8 == TSInvalidTime)
  {
    v9 = self->_clock;
    loggingQueue = self->_loggingQueue;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_59C8;
    v35[3] = &unk_C588;
    v35[4] = self;
    v36 = v9;
    v11 = v9;
    dispatch_async(loggingQueue, v35);
  }

  else
  {
    self->_lastDomainTimestamp = 260000000 * (v8 / 0xF7F4900);
    objc_opt_class();
    v12 = &NSObject__properties;
    if (objc_opt_isKindOfClass())
    {
      v53 = TSNullgPTPClockIdentity;
      v54[0] = TSNullgPTPClockIdentity;
      v52 = -1;
      v51 = -1;
      self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp grandmasterUsed:v54 portNumber:&v52];
      v13 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v53 portNumber:&v51];
      v14 = v54[0];
      if (v54[0] == v53 && v52 == v51)
      {
        290000000 = v13;
      }

      else
      {
        v16 = self->_loggingQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_5584;
        block[3] = &unk_C4B0;
        v49 = v52;
        block[4] = v54[0];
        block[5] = v53;
        v50 = v51;
        dispatch_async(v16, block);
        self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp grandmasterUsed:v54 portNumber:&v52];
        290000000 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v53 portNumber:&v51];
        v14 = v54[0];
        if (v54[0] != v53 || v52 != v51)
        {
          v17 = self->_loggingQueue;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_5650;
          v45[3] = &unk_C4B0;
          v46 = v52;
          v45[4] = v54[0];
          v45[5] = v53;
          v47 = v51;
          dispatch_async(v17, v45);
          v14 = v54[0];
        }
      }

      if (self->_lastGrandmasterIdentity != v14 || self->_lastPortNumber != v52)
      {
        self->_lastDomainTimestamp = 260000000 * ([(TSClock *)self->_clock convertFromMachAbsoluteToDomainTime:v5 grandmasterUsed:&self->_lastGrandmasterIdentity portNumber:&self->_lastPortNumber]/ 0xF7F4900);
        self->_lastMachTimestamp = [TSClock convertFromDomainToMachAbsoluteTime:"convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
        v18 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v53 portNumber:&v51];
        if (v54[0] == v53 && v52 == v51)
        {
          290000000 = v18;
        }

        else
        {
          v19 = self->_loggingQueue;
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_571C;
          v42[3] = &unk_C4B0;
          v43 = v52;
          v42[4] = v54[0];
          v42[5] = v53;
          v44 = v51;
          dispatch_async(v19, v42);
          self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp grandmasterUsed:v54 portNumber:&v52];
          290000000 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000 grandmasterUsed:&v53 portNumber:&v51];
          if (v54[0] != v53 || v52 != v51)
          {
            v20 = self->_loggingQueue;
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_57E8;
            v39[3] = &unk_C4B0;
            v40 = v52;
            v39[4] = v54[0];
            v39[5] = v53;
            v41 = v51;
            dispatch_async(v20, v39);
          }
        }
      }

      v12 = &NSObject__properties;
    }

    else
    {
      self->_lastMachTimestamp = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp];
      290000000 = [(TSClock *)self->_clock convertFromDomainToMachAbsoluteTime:self->_lastDomainTimestamp + 290000000];
    }

    self->_lastSampleTime = 0;
    self->_lastFilteredTimestamp = [(TSIntervalFilter *)self->_intervalFilter addTimestamp:self->_lastMachTimestamp, self->_lastMachTimestamp];
    self->_lastFilteredInterval = 0;
    lastSampleTime = self->_lastSampleTime;
    lastFilteredTimestamp = self->_lastFilteredTimestamp;
    lastSeed = self->_lastSeed;
    v24 = atomic_load(&self->_timestamp.mTimestampIndex.__a_.__a_value);
    v25 = (v24 + 1) % self->_timestamp.mNumberOfSlots;
    v26 = (self->_timestamp.mTimestamps.__begin_ + 24 * v25);
    *v26 = lastSampleTime;
    v26[1] = lastFilteredTimestamp;
    v26[2] = lastSeed;
    atomic_store(v25, &self->_timestamp.mTimestampIndex.__a_.__a_value);
    lastGrandmasterIdentity = self->_lastGrandmasterIdentity;
    LOWORD(lastSampleTime) = self->_lastPortNumber;
    lastMachTimestamp = self->_lastMachTimestamp;
    lastDomainTimestamp = self->_lastDomainTimestamp;
    v30 = self->_lastSampleTime;
    v31 = self->_lastFilteredTimestamp;
    v32 = *&self->ASDClockDevice_opaque[v12[443].entrysize];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_58B4;
    v37[3] = &unk_C670;
    v37[4] = self;
    v37[5] = v30;
    v37[6] = v31;
    v37[7] = lastGrandmasterIdentity;
    v38 = lastSampleTime;
    v37[8] = lastDomainTimestamp;
    v37[9] = lastMachTimestamp;
    dispatch_async(v32, v37);
    [(ATSACCAClockDevice *)self clockIdentifier];
    kdebug_trace();
    self->_hasLastTimestamp = 1;
    v33 = +[TSClockManager sharedClockManager];
    self->_lastMachInterval = [v33 machAbsoluteNanosecondsToTicks:260000000];

    self->_dispatchTime = 290000000;
    dispatch_source_set_timer(timestampCopy, 290000000, 0xFFFFFFFFFFFFFFFFLL, 0);
    startSemaphore = self->_startSemaphore;
    if (startSemaphore)
    {
      dispatch_semaphore_signal(startSemaphore);
    }
  }
}

- (void)dealloc
{
  if ([(ATSACCAClockDevice *)self clockDomain])
  {
    v3 = +[TSClockManager sharedClockManager];
    [v3 removeMappingFromClockIDToCoreAudioClockDomainForClockID:self->_clockIdentifier error:0];
  }

  v4.receiver = self;
  v4.super_class = ATSACCAClockDevice;
  [(ATSACCAClockDevice *)&v4 dealloc];
}

- (id).cxx_construct
{
  p_timestamp = &self->_timestamp;
  self->_timestamp.mNumberOfSlots = 4;
  v5 = 0uLL;
  v6 = 0;
  sub_6088(&self->_timestamp.mTimestamps, 4uLL, &v5);
  p_timestamp->mTimestampIndex.__a_.__a_value = 0;
  return self;
}

@end