@interface VTBiometricMatchMonitor
+ (VTBiometricMatchMonitor)sharedInstance;
- (BOOL)getLastBiometricMatchEvent:(BOOL *)event atTime:(unint64_t *)time;
- (VTBiometricMatchMonitor)init;
- (VTBiometricMatchMonitorDelegate)delegate;
- (void)device:(id)device matchEventOccurred:(id)occurred;
- (void)startObserving;
@end

@implementation VTBiometricMatchMonitor

- (VTBiometricMatchMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)device:(id)device matchEventOccurred:(id)occurred
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  occurredCopy = occurred;
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v13[0] = 67109376;
    v13[1] = [occurredCopy result];
    v14 = 2048;
    timeStamp = [occurredCopy timeStamp];
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "BiometricMatchEventOccurred: result = %u, timeStamp = %llu", v13, 0x12u);
  }

  if (occurredCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 biometricMatchMonitorDidReceiveMatchAttempt:objc_msgSend(occurredCopy atTime:{"result"), objc_msgSend(occurredCopy, "timeStamp")}];
    }
  }
}

- (BOOL)getLastBiometricMatchEvent:(BOOL *)event atTime:(unint64_t *)time
{
  *&v19[5] = *MEMORY[0x277D85DE8];
  biometricDevice = self->_biometricDevice;
  if (!biometricDevice)
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    v14 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      return v14;
    }

    *buf = 0;
    _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "ERR: Biometric device is nil - Bailing out", buf, 2u);
LABEL_15:
    LOBYTE(v14) = 0;
    return v14;
  }

  v17 = 0;
  v7 = [(BKDevice *)biometricDevice lastMatchEventWithError:&v17];
  v8 = v17;
  v9 = VTLogContextFacilityVoiceTrigger;
  v10 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      *buf = 138412290;
      *v19 = v8;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "BiometricMatchEvents unavailable with error %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11 = v9;
    result = [v7 result];
    timeStamp = [v7 timeStamp];
    *buf = 67109376;
    v19[0] = result;
    LOWORD(v19[1]) = 2048;
    *(&v19[1] + 2) = timeStamp;
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "BiometricMatchEvent: result = %u, timeStamp = %llu", buf, 0x12u);
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

- (void)startObserving
{
  biometricDevice = self->_biometricDevice;
  if (biometricDevice)
  {
    [(BKDevice *)biometricDevice setDelegate:self];
  }
}

- (VTBiometricMatchMonitor)init
{
  v35 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = VTBiometricMatchMonitor;
  v2 = [(VTEventMonitor *)&v18 init];
  if (!v2)
  {
    return v2;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v3 = getBKDeviceClass_softClass;
  v27 = getBKDeviceClass_softClass;
  if (!getBKDeviceClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getBKDeviceClass_block_invoke;
    v22 = &unk_2784ED270;
    v23 = &v24;
    v28 = 0;
    if (!BiometricKitLibraryCore_frameworkLibrary)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v30 = __BiometricKitLibraryCore_block_invoke;
      v31 = &__block_descriptor_40_e5_v8__0l;
      v32 = &v28;
      v33 = xmmword_2784ED290;
      v34 = 0;
      BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
      v4 = v28;
      if (!BiometricKitLibraryCore_frameworkLibrary)
      {
        goto LABEL_22;
      }

      if (v28)
      {
        free(v28);
      }
    }

    Class = objc_getClass("BKDevice");
    *(v23[1] + 24) = Class;
    if (!*(v23[1] + 24))
    {
      abort_report_np("Unable to find class %s", "BKDevice");
      goto LABEL_26;
    }

    getBKDeviceClass_softClass = *(v23[1] + 24);
    v3 = v25[3];
  }

  v6 = v3;
  _Block_object_dispose(&v24, 8);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v7 = getBKDeviceManagerClass_softClass;
  v27 = getBKDeviceManagerClass_softClass;
  if (getBKDeviceManagerClass_softClass)
  {
    goto LABEL_16;
  }

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __getBKDeviceManagerClass_block_invoke;
  v22 = &unk_2784ED270;
  v23 = &v24;
  v28 = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v30 = __BiometricKitLibraryCore_block_invoke;
    v31 = &__block_descriptor_40_e5_v8__0l;
    v32 = &v28;
    v33 = xmmword_2784ED290;
    v34 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v4 = v28;
    if (BiometricKitLibraryCore_frameworkLibrary)
    {
      if (v28)
      {
        free(v28);
      }

      goto LABEL_14;
    }

LABEL_22:
    abort_report_np("%s", v4);
    goto LABEL_26;
  }

LABEL_14:
  v8 = objc_getClass("BKDeviceManager");
  *(v23[1] + 24) = v8;
  if (!*(v23[1] + 24))
  {
    abort_report_np("Unable to find class %s", "BKDeviceManager");
LABEL_26:
    __break(1u);
  }

  getBKDeviceManagerClass_softClass = *(v23[1] + 24);
  v7 = v25[3];
LABEL_16:
  v9 = v7;
  _Block_object_dispose(&v24, 8);
  availableDevices = [v7 availableDevices];
  firstObject = [availableDevices firstObject];
  v17 = 0;
  v12 = [v3 deviceWithDescriptor:firstObject error:&v17];
  v13 = v17;
  biometricDevice = v2->_biometricDevice;
  v2->_biometricDevice = v12;

  if (v13 || !v2->_biometricDevice)
  {
    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, "Failed to create biometricdevice with error %@", &buf, 0xCu);
    }
  }

  return v2;
}

+ (VTBiometricMatchMonitor)sharedInstance
{
  if (sharedInstance_onceToken_6745 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6745, &__block_literal_global_6746);
  }

  v3 = sharedInstance_biometricMatchMonitor;

  return v3;
}

uint64_t __41__VTBiometricMatchMonitor_sharedInstance__block_invoke()
{
  sharedInstance_biometricMatchMonitor = objc_alloc_init(VTBiometricMatchMonitor);

  return MEMORY[0x2821F96F8]();
}

@end