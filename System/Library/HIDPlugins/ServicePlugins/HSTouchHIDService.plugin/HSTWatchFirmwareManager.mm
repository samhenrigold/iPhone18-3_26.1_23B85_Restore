@interface HSTWatchFirmwareManager
- (BOOL)decodeFromMap:(void *)map;
- (void)_handleGetWaterStateEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_handleWristStateEvent:(id)event;
- (void)_restoreFirmwareState;
- (void)encodeToMap:(void *)map;
- (void)handleConsume:(id)consume;
@end

@implementation HSTWatchFirmwareManager

- (void)_handleWristStateEvent:(id)event
{
  eventCopy = event;
  wristState = [eventCopy wristState];
  v7 = wristState;
  if (*(&self->super._state + 14) != wristState)
  {
    *(&self->super._state + 14) = wristState;
    v8 = MTLoggingPlugin(wristState, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "Unknown";
      if (v7 == 1)
      {
        v9 = "Off";
      }

      if (v7 == 2)
      {
        v9 = "On";
      }

      *buf = 136446210;
      v16 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Setting wrist state: %{public}s", buf, 0xCu);
    }

    deviceObj = self->super._deviceObj;
    v11 = *(&self->super._state + 14);
    if (v11 == 1)
    {
      v12 = 11;
    }

    else
    {
      v12 = 10;
    }

    if (v11 == 2)
    {
      v13 = 12;
    }

    else
    {
      v13 = v12;
    }

    *buf = (v13 << 8) | 0x70;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj, buf);
  }

  v14.receiver = self;
  v14.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v14 handleConsume:eventCopy];
}

- (void)_handleGetWaterStateEvent:(id)event
{
  eventCopy = event;
  if (!self->super._deviceObj)
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"IOReturn getReport(MTDeviceRef, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::WaterState]"];
    [v9 handleFailureInFunction:v10 file:@"HSTFirmwareManager.mm" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"device"}];

    v11 = +[NSAssertionHandler currentHandler];
    v12 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::GetReport(MTDeviceRef _Nonnull, T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::WaterState]"];
    [v11 handleFailureInFunction:v12 file:@"FirmwareUtil.h" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"device"}];
  }

  Report = MTDeviceGetReport();
  v7 = Report;
  if (!Report)
  {
    v7 = -536870169;
  }

  v8 = MTLoggingPlugin(Report, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    mach_error_string(v7);
    [HSTFirmwareManager _handleGetDebugEvent:];
  }
}

- (void)_restoreFirmwareState
{
  v8.receiver = self;
  v8.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v8 _restoreFirmwareState];
  deviceObj = self->super._deviceObj;
  v4 = *(&self->super._state + 14);
  if (v4 == 1)
  {
    v5 = 11;
  }

  else
  {
    v5 = 10;
  }

  if (v4 == 2)
  {
    v6 = 12;
  }

  else
  {
    v6 = v5;
  }

  v7 = (v6 << 8) | 0x70;
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj, &v7);
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (*(eventCopy + 39) < 0 && eventCopy[3] == &dword_1C)
  {
    v6 = eventCopy[2];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = *(v6 + 6);
    v11 = v7 == 0x69746E6F43444948 && v8 == 0x63655273756F756ELL;
    v12 = v11 && v9 == 0x6E45676E6964726FLL;
    if (v12 && v10 == 1701601889)
    {
      v14 = eventCopy[5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v14)
        {
          goto LABEL_14;
        }

        deviceObj = self->super._deviceObj;
        bOOLValue = [v14 BOOLValue];
        v17 = 0x170001025362;
        if (bOOLValue)
        {
          v17 = 0x100170001025362;
        }

        v27 = v17;
        if (!deviceObj)
        {
          v22 = +[NSAssertionHandler currentHandler];
          v23 = [NSString stringWithUTF8String:"void setReport(MTDeviceRef, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::ContinuousRecordingEnableWatch]"];
          [v22 handleFailureInFunction:v23 file:@"HSTFirmwareManager.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"device"}];

          v24 = +[NSAssertionHandler currentHandler];
          v25 = [NSString stringWithUTF8String:"IOReturn HSTPipeline::FirmwareUtil::SetReport(MTDeviceRef _Nonnull, const T &) [T = HSTPipeline::FirmwareInterface::FeatureReport::ContinuousRecordingEnableWatch]"];
          [v24 handleFailureInFunction:v25 file:@"FirmwareUtil.h" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"device"}];
        }

        v18 = MTDeviceSetReport();
        v20 = v18;
        if (v18)
        {
          v21 = MTLoggingPlugin(v18, v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            mach_error_string(v20);
            setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>();
          }
        }
      }

      goto LABEL_14;
    }
  }

  v26.receiver = self;
  v26.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v26 _handleSetPropertyEvent:eventCopy];
LABEL_14:
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTWatchFirmwareManager *)self _handleWristStateEvent:consumeCopy];
  }

  else
  {
    v6 = consumeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTWatchFirmwareManager *)self _handleGetWaterStateEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTWatchFirmwareManager *)self _handleSetPropertyEvent:v8];
      }

      else
      {
        v10.receiver = self;
        v10.super_class = HSTWatchFirmwareManager;
        [(HSTFirmwareManager *)&v10 handleConsume:v8];
      }
    }
  }
}

- (void)encodeToMap:(void *)map
{
  v5.receiver = self;
  v5.super_class = HSTWatchFirmwareManager;
  [(HSTFirmwareManager *)&v5 encodeToMap:?];
  HSUtil::Encoder::encodeUInt(map, HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key, *(&self->super._state + 14));
}

- (BOOL)decodeFromMap:(void *)map
{
  v6.receiver = self;
  v6.super_class = HSTWatchFirmwareManager;
  if (![(HSTFirmwareManager *)&v6 decodeFromMap:?])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTWatchFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  *(&self->super._state + 14) = HSUtil::Decoder::decodeUInt(map, HSUtil::CoderKey::Literal<(char)119,(char)114,(char)105,(char)115,(char)116,(char)83,(char)116,(char)97,(char)116,(char)101>::Key);
  if (*map)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTouchHIDService/HSTFirmwareManager.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTWatchFirmwareManager decodeFromMap:];
    }

    return 0;
  }

  return 1;
}

- (void)decodeFromMap:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)decodeFromMap:.cold.2()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

@end