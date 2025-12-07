@interface SSRBiometricMatch
+ (id)sharedInstance;
- (BOOL)_getLastBiometricMatchEvent:(BOOL *)event atTime:(unint64_t *)time;
- (SSRBiometricMatch)init;
- (unint64_t)getLastBiometricMatchForVoiceTriggerTimeStamp:(unint64_t)stamp;
@end

@implementation SSRBiometricMatch

- (BOOL)_getLastBiometricMatchEvent:(BOOL *)event atTime:(unint64_t *)time
{
  *&v21[13] = *MEMORY[0x277D85DE8];
  biometricDevice = self->_biometricDevice;
  if (!biometricDevice)
  {
    v15 = *MEMORY[0x277D01970];
    v14 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      return v14;
    }

    *buf = 136315138;
    v19 = "[SSRBiometricMatch _getLastBiometricMatchEvent:atTime:]";
    _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: Biometric device is nil - Bailing out", buf, 0xCu);
LABEL_15:
    LOBYTE(v14) = 0;
    return v14;
  }

  v17 = 0;
  v7 = [(BKDevice *)biometricDevice lastMatchEventWithError:&v17];
  v8 = v17;
  v9 = *MEMORY[0x277D01970];
  v10 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      *buf = 136315394;
      v19 = "[SSRBiometricMatch _getLastBiometricMatchEvent:atTime:]";
      v20 = 2112;
      *v21 = v8;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEvents unavailable with error %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11 = v9;
    result = [v7 result];
    timeStamp = [v7 timeStamp];
    *buf = 136315650;
    v19 = "[SSRBiometricMatch _getLastBiometricMatchEvent:atTime:]";
    v20 = 1024;
    *v21 = result;
    v21[2] = 2048;
    *&v21[3] = timeStamp;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEvent: result = %u, timeStamp = %llu", buf, 0x1Cu);
  }

  if (event)
  {
    *event = [v7 result];
  }

  if (time)
  {
    *time = [v7 timeStamp];
  }

  LOBYTE(v14) = 1;
  return v14;
}

- (unint64_t)getLastBiometricMatchForVoiceTriggerTimeStamp:(unint64_t)stamp
{
  v21 = *MEMORY[0x277D85DE8];
  if (!stamp)
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s triggerTimeStamp is nil - Bailing out", buf, 0xCu);
    }

    return 0;
  }

  v14 = 0;
  v13 = 0;
  CSMachAbsoluteTimeToMachContinuousTime();
  if (![(SSRBiometricMatch *)self _getLastBiometricMatchEvent:&v14 atTime:&v13])
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s No biometric information available", buf, 0xCu);
    }

    return 0;
  }

  CSMachAbsoluteTimeGetTimeInterval();
  v5 = v4;
  v6 = v14;
  v7 = *MEMORY[0x277D01970];
  v8 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v6 == 1 && v5 < 3.0)
  {
    if (v8)
    {
      *buf = 136315394;
      v16 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Biometric match happened in last %f secs", buf, 0x16u);
    }

    return 1;
  }

  else
  {
    if (v8)
    {
      v12 = @"MIS-MATCH";
      v16 = "[SSRBiometricMatch getLastBiometricMatchForVoiceTriggerTimeStamp:]";
      *buf = 136315650;
      if (v6)
      {
        v12 = @"MATCH";
      }

      v17 = 2112;
      v18 = *&v12;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Biometric match result: %@ happened in last %f secs", buf, 0x20u);
      LOBYTE(v6) = v14;
    }

    if (v6)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

- (SSRBiometricMatch)init
{
  v23 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SSRBiometricMatch;
  v2 = [(SSRBiometricMatch *)&v15 init];
  if (v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = getBKDeviceClass_softClass;
    v19 = getBKDeviceClass_softClass;
    if (!getBKDeviceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBKDeviceClass_block_invoke;
      v21 = &unk_278579720;
      v22 = &v16;
      __getBKDeviceClass_block_invoke(buf);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v5 = getBKDeviceManagerClass_softClass;
    v19 = getBKDeviceManagerClass_softClass;
    if (!getBKDeviceManagerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBKDeviceManagerClass_block_invoke;
      v21 = &unk_278579720;
      v22 = &v16;
      __getBKDeviceManagerClass_block_invoke(buf);
      v5 = v17[3];
    }

    v6 = v5;
    _Block_object_dispose(&v16, 8);
    availableDevices = [v5 availableDevices];
    firstObject = [availableDevices firstObject];
    v14 = 0;
    v9 = [v3 deviceWithDescriptor:firstObject error:&v14];
    v10 = v14;
    biometricDevice = v2->_biometricDevice;
    v2->_biometricDevice = v9;

    if (v10 || !v2->_biometricDevice)
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRBiometricMatch init]";
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Failed to create biometricdevice with error %@", buf, 0x16u);
      }
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (CSIsCommunalDevice() & 1) != 0 || ([MEMORY[0x277D018F8] isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_8498 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_8498, &__block_literal_global_8499);
    }

    v2 = sharedInstance_biometricMatchMonitor;
  }

  return v2;
}

uint64_t __35__SSRBiometricMatch_sharedInstance__block_invoke()
{
  sharedInstance_biometricMatchMonitor = objc_alloc_init(SSRBiometricMatch);

  return MEMORY[0x2821F96F8]();
}

@end