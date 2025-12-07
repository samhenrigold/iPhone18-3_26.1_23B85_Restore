@interface PencilData
- (PencilData)initWithQueue:(id)queue;
- (void)connectedDevicesDidChange:(id)change;
- (void)dealloc;
- (void)handleAuthPassed;
- (void)logAttachSoC;
@end

@implementation PencilData

- (PencilData)initWithQueue:(id)queue
{
  queueCopy = queue;
  v6 = LoggingAWCSF(queueCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[PencilData initWithQueue:]";
    v23 = 1024;
    v24 = 68;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s line %d []", buf, 0x12u);
  }

  v7 = dlopen([@"/System/Library/PrivateFrameworks/BatteryCenter.framework/BatteryCenter" UTF8String], 1);
  if (!v7)
  {
    v17 = LoggingAWCSF(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_3828();
    }

    goto LABEL_18;
  }

  v8 = v7;
  Class = objc_getClass("BCBatteryDeviceController");
  if (!Class)
  {
    v18 = LoggingAWCSF(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_37AC();
    }

    dlclose(v8);
LABEL_18:

    v12 = 0;
    goto LABEL_19;
  }

  v10 = Class;
  v20.receiver = self;
  v20.super_class = PencilData;
  v11 = [(PencilData *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_batteryQueue, queue);
    v13 = objc_alloc_init(v10);
    batteryController = v12->_batteryController;
    v12->_batteryController = v13;

    v15 = v12->_batteryController;
    if (v15)
    {
      v15 = [(BCBatteryDeviceController *)v15 addBatteryDeviceObserver:v12 queue:v12->_batteryQueue];
    }

    v12->_batteryPercentage = 0;
    *&v12->_batteryPercentageInitialized = 0;
    v12->_attachSoCLogged = 0;
    v16 = LoggingAWCSF(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[PencilData initWithQueue:]";
      v23 = 1024;
      v24 = 105;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%s line %d [Initiation succeeded]", buf, 0x12u);
    }
  }

  dlclose(v8);
LABEL_19:

  return v12;
}

- (void)dealloc
{
  v3 = LoggingAWCSF(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[PencilData dealloc]";
    v9 = 1024;
    v10 = 113;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s line %d []", buf, 0x12u);
  }

  batteryController = self->_batteryController;
  if (batteryController)
  {
    [(BCBatteryDeviceController *)batteryController removeBatteryDeviceObserver:self];
  }

  batteryQueue = self->_batteryQueue;
  self->_batteryQueue = 0;

  v6.receiver = self;
  v6.super_class = PencilData;
  [(PencilData *)&v6 dealloc];
}

- (void)connectedDevicesDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_batteryQueue);
  v6 = LoggingAWCSF(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[PencilData connectedDevicesDidChange:]";
    v24 = 1024;
    v25 = 127;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s line %d []", buf, 0x12u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = changeCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    *&v9 = 136315650;
    v17 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 vendor] == &dword_0 + 1 && (objc_msgSend(v13, "productIdentifier") == &stru_108.reserved1 || objc_msgSend(v13, "productIdentifier") == &stru_420.offset + 2) && objc_msgSend(v13, "accessoryCategory") == &dword_4 + 3)
        {
          percentCharge = [v13 percentCharge];
          v15 = percentCharge;
          if (self->_batteryPercentage != percentCharge)
          {
            v16 = LoggingAWCSF(percentCharge);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = "[PencilData connectedDevicesDidChange:]";
              v24 = 1024;
              v25 = 139;
              v26 = 2048;
              v27 = v15;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%s line %d [percentCharge = %ld]", buf, 0x1Cu);
            }
          }

          self->_batteryPercentage = v15;
          if (!self->_batteryPercentageInitialized)
          {
            self->_batteryPercentageInitialized = 1;
          }

          if (!self->_attachSoCLogged && self->_authPassed)
          {
            [(PencilData *)self logAttachSoC];
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)logAttachSoC
{
  self->_attachSoCLogged = 1;
  v3 = LoggingAWCSF(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    batteryPercentage = self->_batteryPercentage;
    *buf = 136315650;
    v10 = "[PencilData logAttachSoC]";
    v11 = 1024;
    v12 = 157;
    v13 = 2048;
    v14 = batteryPercentage;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s line %d [CAData prepared: attached = YES, SoC = %ld]", buf, 0x1Cu);
  }

  v5 = [NSNumber numberWithInteger:self->_batteryPercentage, @"Attached", @"SOC", &__kCFBooleanTrue];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:&v7 count:2];
  AnalyticsSendEvent();
}

- (void)handleAuthPassed
{
  dispatch_assert_queue_V2(self->_batteryQueue);
  batteryQueue = self->_batteryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1468;
  block[3] = &unk_8278;
  block[4] = self;
  dispatch_async(batteryQueue, block);
}

@end