@interface HIDBasicTimeSync
- (HIDBasicTimeSync)init;
- (id)dataFromSyncedTime:(unint64_t)time error:(id *)error;
- (unint64_t)syncedTimeFromData:(id)data error:(id *)error;
- (void)handleActivate;
- (void)handleCancel;
- (void)handlePropertyUpdate:(id)update;
@end

@implementation HIDBasicTimeSync

- (HIDBasicTimeSync)init
{
  v6.receiver = self;
  v6.super_class = HIDBasicTimeSync;
  initInternal = [(HIDTimeSync *)&v6 initInternal];
  mEMORY[0x277D714C8] = [MEMORY[0x277D714C8] sharedClockManager];
  tsMgr = initInternal->_tsMgr;
  initInternal->_tsMgr = mEMORY[0x277D714C8];

  return initInternal;
}

- (unint64_t)syncedTimeFromData:(id)data error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  info = 0xAAAAAAAAAAAAAAAALL;
  v7 = mach_absolute_time();
  if ([(HIDTimeSync *)self state]!= 1)
  {
    [HIDBasicTimeSync syncedTimeFromData:buf error:?];
  }

  v8 = 3758097090;
  if (!self->_active)
  {
    v8 = 3758097111;
LABEL_17:
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithIOReturn:v8];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_8;
  }

  if ([dataCopy length] != 8)
  {
    goto LABEL_17;
  }

  tsClock = self->_tsClock;
  if (!tsClock || [(TSUserFilteredClock *)tsClock lockState]!= 2)
  {
    [HIDBasicTimeSync syncedTimeFromData:? error:?];
    v8 = 3758097112;
    goto LABEL_17;
  }

  mach_timebase_info(&info);
  bytes = [dataCopy bytes];
  v11 = *bytes;
  v12 = [(TSUserFilteredClock *)self->_tsClock convertFromDomainToMachAbsoluteTime:*bytes];
  numer = info.numer;
  denom = info.denom;
  v15 = _IOHIDLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = v12 - v7;
    if (v7 > v12)
    {
      v17 = v7 - v12;
    }

    v18 = v17 * numer;
    v19 = "-";
    if (v7 > v12)
    {
      v19 = "+";
    }

    *buf = 134219010;
    v23 = v11;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v12;
    v28 = 2080;
    v29 = v19;
    v30 = 2048;
    v31 = v18 / denom;
    _os_log_debug_impl(&dword_22DF7D000, v15, OS_LOG_TYPE_DEBUG, "W2 btclk(ns):%llu local abs:%llu Synced ts:%llu remote->local latency(ns):%s%llu", buf, 0x34u);
  }

LABEL_8:
  return v12;
}

- (id)dataFromSyncedTime:(unint64_t)time error:(id *)error
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HIDTimeSync *)self state]!= 1)
  {
    [HIDBasicTimeSync syncedTimeFromData:v9 error:?];
  }

  if (error)
  {
    if (self->_active)
    {
      v6 = 3758097095;
    }

    else
    {
      v6 = 3758097111;
    }

    *error = [MEMORY[0x277CCA9B8] errorWithIOReturn:v6];
  }

  return 0;
}

- (void)handleActivate
{
  if (![(HIDTimeSync *)self setProviderProperty:MEMORY[0x277CBEC38] forKey:@"TimeSyncEnabled"])
  {
    v2 = _IOHIDLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(HIDBasicTimeSync *)v2 handleActivate:v3];
    }
  }
}

- (void)handleCancel
{
  if (![(HIDTimeSync *)self setProviderProperty:MEMORY[0x277CBEC28] forKey:@"TimeSyncEnabled"])
  {
    v2 = _IOHIDLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(HIDBasicTimeSync *)v2 handleCancel:v3];
    }
  }
}

- (void)handlePropertyUpdate:(id)update
{
  updateCopy = update;
  v5 = [updateCopy objectForKeyedSubscript:@"Active"];
  v6 = [updateCopy objectForKeyedSubscript:@"TSClockID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  if (self->_active)
  {
LABEL_5:
    if (([v5 isEqual:&unk_284199FE8] & 1) == 0)
    {
      self->_active = 0;
      eventHandler = [(HIDTimeSync *)self eventHandler];
      eventHandler[2](eventHandler, 0, 0);

      tsClock = self->_tsClock;
      self->_tsClock = 0;
    }

    goto LABEL_15;
  }

  if (([v5 isEqual:&unk_284199FE8] & 1) == 0)
  {
    if (!self->_active)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  self->_clockID = unsignedLongLongValue;
  v10 = [(TSClockManager *)self->_tsMgr clockWithClockIdentifier:unsignedLongLongValue];
  v11 = self->_tsClock;
  self->_tsClock = v10;

  if (self->_tsClock)
  {
    self->_active = 1;
    eventHandler2 = [(HIDTimeSync *)self eventHandler];
    (*(eventHandler2 + 16))(eventHandler2, 1, 0);
  }

  else
  {
    eventHandler2 = _IOHIDLog();
    if (os_log_type_enabled(eventHandler2, OS_LOG_TYPE_ERROR))
    {
      [(HIDBasicTimeSync *)eventHandler2 handlePropertyUpdate:v13, v14, v15, v16, v17, v18, v19];
    }
  }

LABEL_15:
}

- (void)syncedTimeFromData:(void *)a1 error:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_0_0(v5, v2, v3, v4, &dword_22DF7D000);
  _os_crash_msg();
  __break(1u);
}

- (void)syncedTimeFromData:(id *)a1 error:.cold.2(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _IOHIDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*a1 clockIdentifier];
    v4 = [*a1 lockState];
    v5 = 134218240;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_error_impl(&dword_22DF7D000, v2, OS_LOG_TYPE_ERROR, "TimeSync: not locked, clockID: 0x%llx state: %d", &v5, 0x12u);
  }
}

@end