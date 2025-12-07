@interface HSTPadFirmwareManager
- (void)_handleVendorEvent:(id)event;
- (void)_restoreFirmwareState;
- (void)_setEnabledInputsReport;
- (void)_setUSBChargingState:(id)state;
- (void)handleConsume:(id)consume;
@end

@implementation HSTPadFirmwareManager

- (void)_setEnabledInputsReport
{
  p_state = &self->super.super._state;
  touchMode = self->super.super._state.touchMode;
  if ((touchMode & 0x1000) != 0)
  {
    touchMode = touchMode | [objc_opt_class() _haveToWake:touchMode];
  }

  [(HSTiOSFirmwareManager *)self setPowerState:touchMode];
  EnabledInputsReport = createEnabledInputsReport(touchMode, p_state->screenOrientation);
  deviceObj = self->super.super._deviceObj;
  v8 = BYTE4(EnabledInputsReport);
  v7 = EnabledInputsReport;
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::EnabledInputs::Awake>(deviceObj, &v7);
}

- (void)_setUSBChargingState:(id)state
{
  stateCopy = state;
  usbChargingState = [stateCopy usbChargingState];
  if (self->super.super._state.usbChargingState != usbChargingState)
  {
    self->super.super._state.usbChargingState = usbChargingState;
    v7 = MTLoggingPlugin(usbChargingState, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->super.super._state.usbChargingState == 1)
      {
        v8 = "Connected";
      }

      else
      {
        v8 = "NotConnected";
      }

      v11 = 136446210;
      v12 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting USB charging state: %{public}s", &v11, 0xCu);
    }

    deviceObj = self->super.super._deviceObj;
    if (self->super.super._state.usbChargingState == 1)
    {
      v10 = 6256;
    }

    else
    {
      v10 = 6512;
    }

    LOWORD(v11) = v10;
    setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(deviceObj, &v11);
  }
}

- (void)_restoreFirmwareState
{
  [(HSTPadFirmwareManager *)self _setEnabledInputsReport];
  deviceObj = self->super.super._deviceObj;
  v7[0] = -99;
  v7[1] = self->super.super._state.screenOrientation;
  memset(&v7[2], 0, 7);
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostNotificationControl>(deviceObj, v7);
  v4 = self->super.super._deviceObj;
  if (self->super.super._state.usbChargingState == 1)
  {
    v5 = 6256;
  }

  else
  {
    v5 = 6512;
  }

  v6 = v5;
  setReport<HSTPipeline::FirmwareInterface::FeatureReport::HostEvent>(v4, &v6);
}

- (void)_handleVendorEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type == 2)
  {
    v7 = MTLoggingPlugin(type, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      touchMode = self->super.super._state.touchMode;
      v12[0] = 67109120;
      v12[1] = touchMode;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "iPad handle device ready in state 0x%x", v12, 8u);
    }

    if ((self->super.super._state.touchMode & 0x10) != 0)
    {
      v11 = MTLoggingPlugin(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Restoring firmware", v12, 2u);
      }

      [(HSTPadFirmwareManager *)self _restoreFirmwareState];
    }
  }
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
    [(HSTPadFirmwareManager *)self _handleVendorEvent:consumeCopy];
  }

  v6.receiver = self;
  v6.super_class = HSTPadFirmwareManager;
  [(HSTFirmwareManager *)&v6 handleConsume:consumeCopy];
}

@end