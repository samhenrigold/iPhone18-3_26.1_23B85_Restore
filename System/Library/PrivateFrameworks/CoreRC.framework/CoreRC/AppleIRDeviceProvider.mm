@interface AppleIRDeviceProvider
- (AppleIRDeviceProvider)initWithBus:(id)bus deviceUID:(unsigned __int8)d;
- (BOOL)_dispatchAppleVendorEventPage:(unsigned int)page usage:(unsigned int)usage timestamp:(unint64_t)timestamp toDevice:(id)device;
- (BOOL)_dispatchEventWithCommand:(unint64_t)command timestamp:(unint64_t)timestamp toDevice:(id)device;
- (BOOL)dispatchEventsForCommand:(id)command toDevice:(id)device;
- (BOOL)pairAppleRemote:(id *)remote;
- (BOOL)unpairAppleRemote:(id *)remote;
- (void)_schedulePressAndHoldTimer;
- (void)_synthesizeButtonReleaseWithTimestamp:(unint64_t)timestamp;
- (void)dealloc;
@end

@implementation AppleIRDeviceProvider

- (AppleIRDeviceProvider)initWithBus:(id)bus deviceUID:(unsigned __int8)d
{
  v6.receiver = self;
  v6.super_class = AppleIRDeviceProvider;
  result = [(CoreIRDeviceProvider *)&v6 initWithBus:bus local:0 deviceType:1];
  if (result)
  {
    result->_deviceUID = d;
    result->_lastAppleIRCommand = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AppleIRDeviceProvider;
  [(CoreIRDeviceProvider *)&v3 dealloc];
}

- (BOOL)pairAppleRemote:(id *)remote
{
  busProvider = [(AppleIRDeviceProvider *)self busProvider];

  return [busProvider setPairedAppleRemote:self error:remote];
}

- (BOOL)unpairAppleRemote:(id *)remote
{
  v5 = 0;
  result = [-[AppleIRDeviceProvider busProvider](self "busProvider")];
  if (remote)
  {
    *remote = v5;
  }

  return result;
}

- (BOOL)dispatchEventsForCommand:(id)command toDevice:(id)device
{
  v27 = 0;
  v7 = [-[AppleIRDeviceProvider busProvider](self "busProvider")];
  timestamp = [command timestamp];
  lastCommandTimestamp = self->_lastCommandTimestamp;
  v26 = 0;
  v25 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AppleIRDeviceProvider dispatchEventsForCommand:&v28 toDevice:?];
    v15 = v28;
    goto LABEL_71;
  }

  v10 = timestamp - lastCommandTimestamp;
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
    }

    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:command toDevice:v10];
    }
  }

  isRepeat = [command isRepeat];
  if (isRepeat)
  {
    if (self->_lastCoreRCCommand)
    {
      v14 = v10 > _maxRepeatIntervalTicks;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice != -1 || (isRepeat = _LogCategory_Initialize(), isRepeat))
        {
          [(AppleIRDeviceProvider *)isRepeat dispatchEventsForCommand:v12 toDevice:v13];
        }
      }

      -[AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:](self, "_dispatchEventWithCommand:timestamp:toDevice:", self->_lastCoreRCCommand, timestamp, [-[AppleIRDeviceProvider busProvider](self "busProvider")]);
      self->_lastCommandTimestamp = timestamp;
      goto LABEL_70;
    }

    if (gLogCategory_CoreRCDevice <= 50)
    {
      if (gLogCategory_CoreRCDevice != -1 || (isRepeat = _LogCategory_Initialize(), isRepeat))
      {
        [(AppleIRDeviceProvider *)isRepeat dispatchEventsForCommand:v12 toDevice:v13];
      }
    }

    v15 = 0;
LABEL_71:
    v16 = v27;
    if (v27)
    {
      goto LABEL_72;
    }

LABEL_87:

    self->_lastAppleIRCommand = command;
    self->_lastCommandTimestamp = timestamp;
    return v15;
  }

  if ([command vendorID] != kAppleIRVendorIDApple)
  {
    [(AppleIRDeviceProvider *)&v27 dispatchEventsForCommand:command toDevice:&v28];
    goto LABEL_86;
  }

  if (v7 && v7 != self && ([command isUnpairingRequest] & 1) == 0 && (objc_msgSend(command, "isBTLEDiscoveryModeRequest") & 1) == 0)
  {
    [(AppleIRDeviceProvider *)&v27 dispatchEventsForCommand:&v28 toDevice:?];
LABEL_86:
    v15 = 0;
    v16 = v28;
    if (v28)
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

  if (!self->_isB39 && [command isB39Command])
  {
    self->_isB39 = 1;
  }

  if ([command isA39PlayPauseSelect])
  {
    if (self->_isB39)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:command toDevice:?];
      }

LABEL_41:
      [(AppleIRDeviceProvider *)self _cancelPressAndHoldTimer];
      [(AppleIRDeviceProvider *)self _schedulePressAndHoldTimer];
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6757 userInfo:0];
      v27 = v16;
      goto LABEL_42;
    }

    if ([self->_lastAppleIRCommand isB39PlayPauseOrSelect]&& v10 <= _maxRepeatIntervalTicks)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:command toDevice:?];
      }

      goto LABEL_41;
    }
  }

  isPairingRequest = [command isPairingRequest];
  if (isPairingRequest)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (isPairingRequest = _LogCategory_Initialize(), isPairingRequest))
      {
        [(AppleIRDeviceProvider *)isPairingRequest dispatchEventsForCommand:v18 toDevice:v19];
      }
    }

    [(AppleIRDeviceProvider *)self pairAppleRemote:&v27];
    goto LABEL_70;
  }

  isUnpairingRequest = [command isUnpairingRequest];
  if (isUnpairingRequest)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (isUnpairingRequest = _LogCategory_Initialize(), isUnpairingRequest))
      {
        [(AppleIRDeviceProvider *)isUnpairingRequest dispatchEventsForCommand:v21 toDevice:v22];
      }
    }

    [(AppleIRDeviceProvider *)self unpairAppleRemote:&v27];
    goto LABEL_70;
  }

  if ([command getVendorSpecificHIDUsagePage:&v26 + 4 usageID:&v26 ignoreRepeats:&v25])
  {
    if (v25 == 1 && [command isEqual:self->_lastAppleIRCommand] && v10 <= _maxRepeatIntervalTicks)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:command toDevice:?];
      }
    }

    else
    {
      if ([command isStackshotRequest] && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
      }

      [(AppleIRDeviceProvider *)self _dispatchAppleVendorEventPage:HIDWORD(v26) usage:v26 timestamp:timestamp toDevice:device];
    }

    goto LABEL_70;
  }

  command = [command command];
  if (command)
  {
    -[AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:](self, "_dispatchEventWithCommand:timestamp:toDevice:", command, timestamp, [-[AppleIRDeviceProvider busProvider](self "busProvider")]);
LABEL_70:
    v15 = 1;
    goto LABEL_71;
  }

  [(AppleIRDeviceProvider *)&v27 dispatchEventsForCommand:command toDevice:&v28];
  v16 = v28;
LABEL_42:
  v15 = 1;
  if (!v16)
  {
    goto LABEL_87;
  }

LABEL_72:
  if ([v16 code] != -6757 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [AppleIRDeviceProvider dispatchEventsForCommand:? toDevice:?];
  }

  return v15;
}

- (BOOL)_dispatchEventWithCommand:(unint64_t)command timestamp:(unint64_t)timestamp toDevice:(id)device
{
  [(AppleIRDeviceProvider *)self _cancelPressAndHoldTimer];
  if (!command)
  {
    [AppleIRDeviceProvider _dispatchEventWithCommand:&v13 timestamp:? toDevice:?];
    return v13;
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [AppleIRDeviceProvider _dispatchEventWithCommand:command timestamp:? toDevice:?];
  }

  lastCoreRCCommand = self->_lastCoreRCCommand;
  if (!lastCoreRCCommand)
  {
    goto LABEL_9;
  }

  if (lastCoreRCCommand != command)
  {
    [(AppleIRDeviceProvider *)self _synthesizeButtonReleaseWithTimestamp:timestamp];
LABEL_9:
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider _dispatchEventWithCommand:command timestamp:? toDevice:?];
    }

    if (![(CoreIRDeviceProvider *)self dispatchButtonEventWithCommand:command pressed:1 timestamp:timestamp toDevice:device])
    {
      [AppleIRDeviceProvider _dispatchEventWithCommand:? timestamp:? toDevice:?];
      return v12;
    }

    self->_lastCoreRCCommand = command;
    v10 = 1;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  [(AppleIRDeviceProvider *)self _schedulePressAndHoldTimer];
  return v10;
}

- (BOOL)_dispatchAppleVendorEventPage:(unsigned int)page usage:(unsigned int)usage timestamp:(unint64_t)timestamp toDevice:(id)device
{
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v11 = VendorDefinedEvent;
    v14 = [[CoreRCHIDEvent alloc] initWithIOHIDEvent:VendorDefinedEvent];
    v15 = v14 != 0;
    if (v14)
    {
      [device receivedHIDEvent:v14 fromDevice:self];
    }

    else
    {
      [AppleIRDeviceProvider _dispatchAppleVendorEventPage:v12 usage:v13 timestamp:? toDevice:?];
    }

    CFRelease(v11);
  }

  else
  {
    if (gLogCategory_CoreRCDevice <= 90)
    {
      if (gLogCategory_CoreRCDevice != -1 || (VendorDefinedEvent = _LogCategory_Initialize(), VendorDefinedEvent))
      {
        [AppleIRDeviceProvider _dispatchAppleVendorEventPage:v9 usage:v10 timestamp:? toDevice:?];
      }
    }

    v14 = 0;
    v15 = 0;
  }

  return v15;
}

- (void)_synthesizeButtonReleaseWithTimestamp:(unint64_t)timestamp
{
  lastCoreRCCommand = self->_lastCoreRCCommand;
  if (lastCoreRCCommand)
  {
    selfCopy = self;
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (v7 = _LogCategory_Initialize(), lastCoreRCCommand = selfCopy->_lastCoreRCCommand, v7))
      {
        v6 = CoreRCCommandString(lastCoreRCCommand);
        LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider _synthesizeButtonReleaseWithTimestamp:]", 40, "Posting Button Up  %d (%@)\n", lastCoreRCCommand, v6);
        lastCoreRCCommand = selfCopy->_lastCoreRCCommand;
      }
    }

    -[CoreIRDeviceProvider dispatchButtonEventWithCommand:pressed:timestamp:toDevice:](selfCopy, "dispatchButtonEventWithCommand:pressed:timestamp:toDevice:", lastCoreRCCommand, 0, timestamp, [-[AppleIRDeviceProvider busProvider](selfCopy "busProvider")]);
    selfCopy->_lastCoreRCCommand = 0;
  }

  else if (gLogCategory_CoreRCDevice <= 90)
  {
    if (gLogCategory_CoreRCDevice != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(AppleIRDeviceProvider *)self _synthesizeButtonReleaseWithTimestamp:a2, timestamp];
    }
  }
}

- (void)_schedulePressAndHoldTimer
{
  pressAndHoldTimeoutGenerationCount = self->_pressAndHoldTimeoutGenerationCount;
  v4 = dispatch_time(0, 140000000);
  v5 = [-[CoreRCDevice bus](self "bus")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke;
  v6[3] = &unk_278EA2AA0;
  v6[4] = self;
  v6[5] = pressAndHoldTimeoutGenerationCount;
  dispatch_after(v4, v5, v6);
}

void *__51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke(void *result)
{
  v1 = result;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke_cold_1(v1);
    }
  }

  v3 = v1 + 4;
  v2 = v1[4];
  if (v3[1] == v2[127])
  {
    v4 = mach_absolute_time();

    return [v2 _synthesizeButtonReleaseWithTimestamp:v4];
  }

  return result;
}

- (uint64_t)dispatchEventsForCommand:(uint64_t)result toDevice:(_BYTE *)a2 .cold.1(uint64_t result, _BYTE *a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider dispatchEventsForCommand:toDevice:]", 90, "command must be an AppleIRCommand\n");
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)dispatchEventsForCommand:(void *)a1 toDevice:(uint64_t)a2 .cold.3(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = [a1 payload];
  v4 = [v2 vendorID];
  v5 = [v2 deviceUID];
  v6 = [v2 commandPage];
  LODWORD(v2) = [v2 commandID];
  v7 = UpTicksToMilliseconds();
  return LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider dispatchEventsForCommand:toDevice:]", 40, "Apple IR: Raw %04llx  Vendor 0x%04x  Device 0x%02x  Page 0x%02x  Cmd 0x%02x + %f ms\n", v3, v4, v5, v6, v2, *&v7);
}

- (void)dispatchEventsForCommand:(void *)a3 toDevice:.cold.4(void *a1, uint64_t a2, void *a3)
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider dispatchEventsForCommand:toDevice:]", 60, "Incorrect vendor ID in Apple IR Command: %@\n", a2);
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6707 userInfo:0];
  *a3 = result;
  *a1 = result;
  return result;
}

- (void)dispatchEventsForCommand:(void *)a3 toDevice:.cold.5(void *a1, uint64_t a2, void *a3)
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider dispatchEventsForCommand:toDevice:]", 50, "Ignoring Apple IR command from unpaired remote: %@\n", a2);
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6707 userInfo:0];
  *a3 = result;
  *a1 = result;
  return result;
}

- (void)dispatchEventsForCommand:(void *)a3 toDevice:.cold.6(void *a1, uint64_t a2, void *a3)
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider dispatchEventsForCommand:toDevice:]", 60, "Unknown Apple IR command %@\n", a2);
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:0];
  *a3 = result;
  *a1 = result;
  return result;
}

- (_BYTE)_dispatchEventWithCommand:(_BYTE *)result timestamp:toDevice:.cold.3(_BYTE *result)
{
  v1 = result;
  if (gLogCategory_CoreRCDevice <= 90)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:]", 90, "failed to dispatch HID event!\n");
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_dispatchEventWithCommand:(uint64_t)result timestamp:(_BYTE *)a2 toDevice:.cold.4(uint64_t result, _BYTE *a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:]", 90, "matched button has no associated command!\n");
    }
  }

  *a2 = 0;
  return result;
}

- (void)_dispatchAppleVendorEventPage:(uint64_t)a3 usage:timestamp:toDevice:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_0(&gLogCategory_CoreRCDevice, "[AppleIRDeviceProvider _dispatchAppleVendorEventPage:usage:timestamp:toDevice:]", a3, "failed to allocate CoreRCHIDEvent!\n");
  }
}

@end