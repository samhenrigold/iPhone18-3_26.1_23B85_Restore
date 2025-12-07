@interface RadioCC
- (RadioCC)initWithRunLoopAndParams:(__CFRunLoop *)params withMitigationType:(int)type withParams:(__CFDictionary *)withParams;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)numberOfFields;
- (void)addRadioMitigations;
- (void)calculateAdditionalRadioMitigations;
- (void)calculateMitigation;
- (void)createConnectionToCT;
- (void)createServerConnection;
- (void)dealloc;
- (void)defaultAction;
- (void)defaultCPMSAction;
- (void)sendRadioNotification;
- (void)setAdditionalRadioMitigations;
- (void)setCPMSMitigationState:(BOOL)state;
- (void)setMaxTransmitPower;
@end

@implementation RadioCC

- (RadioCC)initWithRunLoopAndParams:(__CFRunLoop *)params withMitigationType:(int)type withParams:(__CFDictionary *)withParams
{
  v6 = *&type;
  v15.receiver = self;
  v15.super_class = RadioCC;
  v8 = [(ComponentControl *)&v15 initWithCC:*&type];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  *(v8 + 45) = -1;
  *(v8 + 148) = dispatch_queue_create("com.apple.ThermalMonitor.radio", 0);
  *(v9 + 164) = params;
  if (withParams && CFDictionaryContainsKey(withParams, @"componentNameDetail"))
  {
    Value = CFDictionaryGetValue(withParams, @"componentNameDetail");
    if (!Value)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053650();
      }

      goto LABEL_8;
    }

    v11 = CFStringCreateWithFormat(0, 0, @"%d Radio%@", v6, Value);
  }

  else
  {
    v11 = CFStringCreateWithFormat(0, 0, @"%d Radio", v6);
  }

  *(v9 + 6) = v11;
LABEL_8:
  *(v9 + 140) = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = *(v9 + 148);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024E44;
  block[3] = &unk_100085260;
  block[4] = v9;
  dispatch_async(v12, block);
  if (notify_register_check("com.apple.cltm.radioNotification", v9 + 44))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053684();
    }
  }

  else
  {
    [v9 sendRadioNotification];
  }

  [v9 updatePowerParameters:withParams];
  if (sub_100031D64(withParams, @"expectsCPMSSupport", 0))
  {
    [v9 setCPMSMitigationState:1];
  }

  return v9;
}

- (void)dealloc
{
  v3 = *(&self->super.currentPower + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4.receiver = self;
  v4.super_class = RadioCC;
  [(PidComponent *)&v4 dealloc];
}

- (void)defaultAction
{
  if (dword_1000A21D8 != self->super.previousValue)
  {
    [(RadioCC *)self calculateMitigation];
    [(RadioCC *)self setMaxTransmitPower];
    previousValue = self->super.previousValue;
    if (previousValue - 100 <= 0xFFFFFF9C)
    {
      [(RadioCC *)self sendRadioNotification];
      previousValue = self->super.previousValue;
    }

    dword_1000A21D8 = previousValue;
  }
}

- (void)defaultCPMSAction
{
  if (self->radioNotificationToken != self->super.previousValue)
  {
    v4.receiver = self;
    v4.super_class = RadioCC;
    [(ComponentControl *)&v4 defaultCPMSAction];
    previousValue = self->super.previousValue;
    if (previousValue - 100 <= 0xFFFFFF9C)
    {
      [(RadioCC *)self sendRadioNotification];
      previousValue = self->super.previousValue;
    }

    self->radioNotificationToken = previousValue;
  }
}

- (void)sendRadioNotification
{
  previousValue = self->super.previousValue;
  if (previousValue <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = previousValue;
  }

  if (notify_set_state(self->txPowerLimit, v3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000536B8();
  }

  if (notify_post("com.apple.cltm.radioNotification"))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000536EC();
    }
  }
}

- (void)calculateMitigation
{
  v2 = *(&self->radioPowerConfiguration + 4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000250EC;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(v2, block);
}

- (void)createServerConnection
{
  v3 = *(&self->radioQueue + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = _CTServerConnectionCreateWithIdentifier();
  *(&self->radioQueue + 4) = v4;
  if (v4)
  {
    if (byte_1000AB2F8 == 1)
    {
      v5 = v4;
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> CT connection %p", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053720();
  }

  _CTServerConnectionAddToRunLoop();
  v7 = kCTDaemonReadyNotification;
  if (_CTServerConnectionRegisterForNotification())
  {
    v8 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053754(v7, v8);
    }
  }
}

- (void)createConnectionToCT
{
  if (![(ComponentControl *)self isCPMSControlEnabled])
  {
    [(RadioCC *)self createServerConnection];

    [(RadioCC *)self initializeRadio];
  }
}

- (void)setMaxTransmitPower
{
  v2 = *(&self->radioPowerConfiguration + 4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025484;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(v2, block);
}

- (void)addRadioMitigations
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000538E8();
  }
}

- (void)calculateAdditionalRadioMitigations
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000538E8();
  }
}

- (void)setAdditionalRadioMitigations
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000538E8();
  }
}

- (void)setCPMSMitigationState:(BOOL)state
{
  v4.receiver = self;
  v4.super_class = RadioCC;
  [(ComponentControl *)&v4 setCPMSMitigationState:state];
  [(RadioCC *)self createConnectionToCT];
}

- (int)numberOfFields
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = RadioCC;
    return [(ComponentControl *)&v5 numberOfFields];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = RadioCC;
    return [(ComponentControl *)&v4 numberOfFields]+ 1;
  }
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = RadioCC;
  if ([(ComponentControl *)&v8 numberOfFields]> index || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7.receiver = self;
    v7.super_class = RadioCC;
    return [(ComponentControl *)&v7 copyHeaderForIndex:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RadioCC;
    if ([(ComponentControl *)&v6 numberOfFields]== v3)
    {
      return @"Radio - txPowerLimit/10";
    }

    else
    {
      return 0;
    }
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = RadioCC;
  if ([(ComponentControl *)&v8 numberOfFields]> index || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7.receiver = self;
    v7.super_class = RadioCC;
    return [(ComponentControl *)&v7 copyFieldCurrentValueForIndex:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RadioCC;
    if ([(ComponentControl *)&v6 numberOfFields]== v3)
    {
      return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", (SHIDWORD(self->runLoop) / 10));
    }

    else
    {
      return 0;
    }
  }
}

@end