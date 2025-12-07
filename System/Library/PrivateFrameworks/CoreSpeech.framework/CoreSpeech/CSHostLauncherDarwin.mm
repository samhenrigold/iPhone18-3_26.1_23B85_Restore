@interface CSHostLauncherDarwin
+ (id)propertyDictForDarwin;
+ (id)sharedInstance;
- (BOOL)wakeHostForVoiceTrigger;
- (CSHostLauncherDarwin)init;
- (void)dealloc;
@end

@implementation CSHostLauncherDarwin

- (BOOL)wakeHostForVoiceTrigger
{
  v2 = +[CSUtils deviceIdentifier];
  v3 = [v2 dataUsingEncoding:4];

  if (v3)
  {
    v10 = 1;
    v4 = [NSMutableData dataWithBytes:&v10 length:1];
    [v4 appendBytes:objc_msgSend(v3 length:{"bytes"), 25}];
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 length];
      *buf = 136315650;
      v12 = "[CSHostLauncherDarwin wakeHostForVoiceTrigger]";
      v13 = 2050;
      v14 = v7;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Sending HID report (length = %{public}lu) to host with deviceId info (%{public}@)", buf, 0x20u);
    }

    [v4 bytes];
    [v4 length];
    IOHIDUserDeviceHandleReport();
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[CSHostLauncherDarwin wakeHostForVoiceTrigger]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to fetch local deviceId, abort", buf, 0xCu);
    }
  }

  return v3 != 0;
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    IOHIDUserDeviceCancel(device);
  }

  v4.receiver = self;
  v4.super_class = CSHostLauncherDarwin;
  [(CSHostLauncherDarwin *)&v4 dealloc];
}

- (CSHostLauncherDarwin)init
{
  if (!+[CSUtils isDarwinOS])
  {
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = CSHostLauncherDarwin;
  self = [(CSHostLauncherDarwin *)&v12 init];
  if (self)
  {
    v3 = dispatch_queue_create("HID event callback queue", 0);
    hidCallbackQueue = self->_hidCallbackQueue;
    self->_hidCallbackQueue = v3;

    v5 = +[CSHostLauncherDarwin propertyDictForDarwin];
    v6 = IOHIDUserDeviceCreate();
    self->_device = v6;
    if (v6)
    {
      IOHIDUserDeviceSetDispatchQueue(v6, self->_hidCallbackQueue);
      device = self->_device;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10010882C;
      handler[3] = &unk_100253C20;
      selfCopy = self;
      IOHIDUserDeviceSetCancelHandler(device, handler);
      IOHIDUserDeviceActivate(self->_device);
      NSLog(@"Created HID device successfully");

      goto LABEL_5;
    }

    NSLog(@"Error : Failed in creating device");

LABEL_7:
    selfCopy2 = 0;
    goto LABEL_8;
  }

LABEL_5:
  self = self;
  selfCopy2 = self;
LABEL_8:

  return selfCopy2;
}

+ (id)propertyDictForDarwin
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = CFDataCreate(kCFAllocatorDefault, byte_1001AA288, 25);
  if (v3)
  {
    CFDictionarySetValue(Mutable, @"ReportDescriptor", v3);
  }

  valuePtr = 4000000;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"RequestTimeout", v4);
  }

  CFDictionarySetValue(Mutable, @"HIDRelaySupport", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"HIDRelayUSBInterface", @"SiriHIDDevice");
  v5 = [(__CFDictionary *)Mutable copy];

  return v5;
}

+ (id)sharedInstance
{
  if (qword_10029E398 != -1)
  {
    dispatch_once(&qword_10029E398, &stru_100251A88);
  }

  v3 = qword_10029E390;

  return v3;
}

@end