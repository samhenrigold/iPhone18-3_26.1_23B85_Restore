@interface RPHIDDaemon
- (BOOL)_setupHIDGCDeviceWithOptions:(id)options andReturnError:(id *)error;
- (BOOL)_setupHIDTouchDeviceAndReturnError:(id *)error;
- (BOOL)activateAndReturnError:(id *)error;
- (void)_activateScreenSaverWithResponseHandler:(id)handler;
- (void)_handleCommand:(id)command responseHandler:(id)handler;
- (void)_handleGameControllerAuxEvent:(int64_t)event pressed:(int64_t)pressed;
- (void)_handleGameControllerEvent:(id)event;
- (void)_handleGameControllerStart:(id)start responseHandler:(id)handler;
- (void)_handleGameControllerStop:(id)stop responseHandler:(id)handler;
- (void)_handleSelectWithButtonState:(int)state;
- (void)_handleTouchEvent:(id)event;
- (void)_handleTouchStart:(id)start responseHandler:(id)handler;
- (void)_handleTouchStop:(id)stop responseHandler:(id)handler;
- (void)_injectKeyboardEventUsagePage:(unsigned int)page usageCode:(unsigned int)code buttonState:(int)state;
- (void)_setupHIDGCSenderIDIfNeeded;
- (void)_setupHIDSenderIDIfNeeded;
- (void)_sleepSystemWithResponseHandler:(id)handler;
- (void)_wakeSystemWithResponseHandler:(id)handler;
- (void)invalidate;
@end

@implementation RPHIDDaemon

- (BOOL)activateAndReturnError:(id *)error
{
  v5 = self->_messenger;
  v13 = v5;
  if (!v5)
  {
    v30 = RPErrorF(4294960591, "No messenger provided", v7, v8, v9, v10, v11, v12, v33[0]);
    if (dword_1001D3948 > 90 || dword_1001D3948 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (dword_1001D3948 <= 30)
  {
    if (dword_1001D3948 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_10011796C(v5, v6, v7);
    }
  }

  self->_epochResetTicks = SecondsToUpTicksF();
  if (!self->_hidClient)
  {
    v14 = IOHIDEventSystemClientCreate();
    self->_hidClient = v14;
    if (!v14)
    {
      v30 = RPErrorF(4294960591, "Create HID client failed", v15, v16, v17, v18, v19, v20, v33[0]);
      if (dword_1001D3948 > 90 || dword_1001D3948 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  if (self->_hidGCClient || (v21 = IOHIDEventSystemClientCreate(), (self->_hidGCClient = v21) != 0))
  {
    v40 = @"statusFlags";
    v41 = &off_1001B7E58;
    v28 = 1;
    v29 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000558F0;
    v39[3] = &unk_1001AB798;
    v39[4] = self;
    [(RPMessageable *)v13 registerRequestID:@"_hidC" options:v29 handler:v39];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000558FC;
    v38[3] = &unk_1001AB798;
    v38[4] = self;
    [(RPMessageable *)v13 registerRequestID:@"_touchStart" options:v29 handler:v38];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100055908;
    v37[3] = &unk_1001AB798;
    v37[4] = self;
    [(RPMessageable *)v13 registerRequestID:@"_touchStop" options:v29 handler:v37];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100055914;
    v36[3] = &unk_1001AC870;
    v36[4] = self;
    [(RPMessageable *)v13 registerEventID:@"_hidT" options:v29 handler:v36];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100055920;
    v35[3] = &unk_1001AB798;
    v35[4] = self;
    [(RPMessageable *)v13 registerRequestID:@"_gcStart" options:v29 handler:v35];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10005592C;
    v34[3] = &unk_1001AB798;
    v34[4] = self;
    [(RPMessageable *)v13 registerRequestID:@"_gcStop" options:v29 handler:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100055938;
    v33[3] = &unk_1001AC870;
    v33[4] = self;
    [(RPMessageable *)v13 registerEventID:@"_hidGC" options:v29 handler:v33];

    goto LABEL_16;
  }

  v30 = RPErrorF(4294960591, "Create HID GC client failed", v22, v23, v24, v25, v26, v27, v33[0]);
  if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
LABEL_20:
    sub_100117988(v30);
  }

LABEL_13:
  if (error)
  {
    v31 = v30;
    *error = v30;
  }

  v28 = 0;
LABEL_16:

  return v28;
}

- (void)invalidate
{
  selfCopy = self;
  if (dword_1001D3948 <= 30)
  {
    if (dword_1001D3948 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001179C8(self, a2, v2);
    }
  }

  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_hidC"];
  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_touchStart"];
  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_touchStop"];
  [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_hidT"];
  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_gcStart"];
  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_gcStop"];
  [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_hidGC"];
  messenger = selfCopy->_messenger;
  selfCopy->_messenger = 0;

  hidClient = selfCopy->_hidClient;
  if (hidClient)
  {
    CFRelease(hidClient);
    selfCopy->_hidClient = 0;
  }

  hidGCClient = selfCopy->_hidGCClient;
  if (hidGCClient)
  {
    CFRelease(hidGCClient);
    selfCopy->_hidGCClient = 0;
  }
}

- (void)_handleCommand:(id)command responseHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v14 = CFDictionaryGetInt64Ranged();
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    if (Int64Ranged > 0x13)
    {
      v15 = "?";
    }

    else
    {
      v15 = (&off_1001AC8B8)[Int64Ranged & 0x1F];
    }

    if (v14 > 2)
    {
      v16 = "?";
    }

    else
    {
      v16 = (&off_1001AC958)[v14 & 3];
    }

    LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleCommand:responseHandler:]", 30, "Command <%s>, Button %s, %##.16@\n", v15, v16, commandCopy);
  }

  switch(Int64Ranged)
  {
    case 1:
      selfCopy15 = self;
      v18 = 1;
      v19 = 140;
      goto LABEL_33;
    case 2:
      selfCopy15 = self;
      v18 = 1;
      goto LABEL_25;
    case 3:
      selfCopy15 = self;
      v18 = 1;
      v19 = 139;
      goto LABEL_33;
    case 4:
      selfCopy15 = self;
      v18 = 1;
      v19 = 138;
      goto LABEL_33;
    case 5:
      selfCopy15 = self;
      v18 = 1;
      v19 = 134;
      goto LABEL_33;
    case 6:
      [(RPHIDDaemon *)self _handleSelectWithButtonState:v14];
      goto LABEL_34;
    case 7:
      selfCopy15 = self;
      v18 = 12;
      v19 = 96;
      goto LABEL_33;
    case 8:
      selfCopy15 = self;
      v18 = 12;
      v19 = 233;
      goto LABEL_33;
    case 9:
      selfCopy15 = self;
      v18 = 12;
      v19 = 234;
      goto LABEL_33;
    case 10:
      selfCopy15 = self;
      v18 = 12;
      v19 = 4;
      goto LABEL_33;
    case 11:
      [(RPHIDDaemon *)self _activateScreenSaverWithResponseHandler:handlerCopy];
      break;
    case 12:
      [(RPHIDDaemon *)self _sleepSystemWithResponseHandler:handlerCopy];
      break;
    case 13:
      [(RPHIDDaemon *)self _wakeSystemWithResponseHandler:handlerCopy];
      break;
    case 14:
      selfCopy15 = self;
      v18 = 12;
      v19 = 205;
      goto LABEL_33;
    case 15:
      selfCopy15 = self;
      v18 = 7;
      v19 = 75;
      goto LABEL_33;
    case 16:
      selfCopy15 = self;
      v18 = 7;
      v19 = 78;
      goto LABEL_33;
    case 17:
      selfCopy15 = self;
      v18 = 12;
LABEL_25:
      v19 = 141;
      goto LABEL_33;
    case 18:
      selfCopy15 = self;
      v18 = 12;
      v19 = 226;
      goto LABEL_33;
    case 19:
      selfCopy15 = self;
      v18 = 12;
      v19 = 48;
LABEL_33:
      [(RPHIDDaemon *)selfCopy15 _injectKeyboardEventUsagePage:v18 usageCode:v19 buttonState:v14];
LABEL_34:
      (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
      break;
    default:
      v20 = RPErrorF(4294960582, "Unsupported command: %d", v8, v9, v10, v11, v12, v13, Int64Ranged);
      if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
      {
        sub_1001179E4(v20);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);

      break;
  }
}

- (void)_activateScreenSaverWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v9 = RPErrorF(4294960561, "ScreenSaver not supported", v3, v4, v5, v6, v7, v8, v10);
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117A24(v9);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
}

- (void)_injectKeyboardEventUsagePage:(unsigned int)page usageCode:(unsigned int)code buttonState:(int)state
{
  v5 = *&state;
  if (!self->_hidClient)
  {
    goto LABEL_15;
  }

  [(RPHIDDaemon *)self _setupHIDSenderIDIfNeeded];
  mach_absolute_time();
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  if (!KeyboardEvent)
  {
    goto LABEL_15;
  }

  v10 = KeyboardEvent;
  if (self->_hidSenderID)
  {
    IOHIDEventSetSenderID();
  }

  IOHIDEventGetTimeStamp();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v12 = VendorDefinedEvent;
    IOHIDEventAppendEvent();
    CFRelease(v12);
  }

  IOHIDEventSystemClientDispatchEvent();
  CFRelease(v10);
  if (!v5)
  {
    mach_absolute_time();
    v13 = IOHIDEventCreateKeyboardEvent();
    if (v13)
    {
      v14 = v13;
      if (self->_hidSenderID)
      {
        IOHIDEventSetSenderID();
      }

      IOHIDEventGetTimeStamp();
      v15 = IOHIDEventCreateVendorDefinedEvent();
      if (v15)
      {
        v16 = v15;
        IOHIDEventAppendEvent();
        CFRelease(v16);
      }

      IOHIDEventSystemClientDispatchEvent();
      CFRelease(v14);
      return;
    }

LABEL_15:
    sub_100117A64(v5, page, code);
  }
}

- (void)_sleepSystemWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v9 = RPErrorF(4294960561, "SleepSystem not supported", v3, v4, v5, v6, v7, v8, v10);
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117B20(v9);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
}

- (void)_wakeSystemWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v9 = RPErrorF(4294960561, "WakeSystem not supported", v3, v4, v5, v6, v7, v8, v10);
  if (dword_1001D3948 <= 60 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117B60(v9);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
}

- (void)_handleGameControllerStart:(id)start responseHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  [(RPHIDDaemon *)self _setupHIDGCDeviceWithOptions:start andReturnError:&v8];
  v7 = v8;
  if (v7)
  {
    if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_100117BA0(v7);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
  }
}

- (void)_handleGameControllerStop:(id)stop responseHandler:(id)handler
{
  handlerCopy = handler;
  hidGCDevice = self->_hidGCDevice;
  if (hidGCDevice)
  {
    CFRelease(hidGCDevice);
    self->_hidGCDevice = 0;
  }

  self->_hidGCSenderID = 0;
  self->_hidGCSenderIDInitialized = 0;
  (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleGameControllerAuxEvent:(int64_t)event pressed:(int64_t)pressed
{
  mach_absolute_time();
  v4 = IOHIDEventCreate();
  if (v4)
  {
    v5 = v4;
    IOHIDEventSetEventFlags();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetSenderID();
    IOHIDEventSystemClientDispatchEvent();

    CFRelease(v5);
  }

  else
  {
    sub_100117BE0();
  }
}

- (void)_handleGameControllerEvent:(id)event
{
  eventCopy = event;
  v11 = eventCopy;
  if (!self->_hidGCClient)
  {
    goto LABEL_14;
  }

  if (!eventCopy)
  {
    v10 = 4294960559;
    goto LABEL_17;
  }

  [(RPHIDDaemon *)self _setupHIDGCSenderIDIfNeeded];
  if (!self->_hidGCSenderID)
  {
LABEL_14:
    v10 = 4294960551;
LABEL_17:
    sub_100117C54(v10);
    goto LABEL_11;
  }

  mach_absolute_time();
  v5 = IOHIDEventCreate();
  if (!v5)
  {
    v10 = 4294960568;
    goto LABEL_17;
  }

  v6 = v5;
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetInt64Ranged();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  CFDictionaryGetDouble();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetDoubleValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetSenderID();
  IOHIDEventSystemClientDispatchEvent();
  CFRelease(v6);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v8 = CFDictionaryGetInt64Ranged();
  v9 = CFDictionaryGetInt64Ranged();
  if ((Int64Ranged & 0xFFFFFF00) != 0)
  {
    [(RPHIDDaemon *)self _handleGameControllerAuxEvent:547 pressed:Int64Ranged & 1];
  }

  if ((v8 & 0xFFFFFF00) != 0)
  {
    [(RPHIDDaemon *)self _handleGameControllerAuxEvent:516 pressed:v8 & 1];
  }

  if ((v9 & 0xFFFFFF00) != 0)
  {
    [(RPHIDDaemon *)self _handleGameControllerAuxEvent:521 pressed:v9 & 1];
  }

LABEL_11:
}

- (BOOL)_setupHIDGCDeviceWithOptions:(id)options andReturnError:(id *)error
{
  if (self->_hidGCDevice)
  {
    return 1;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v28 = xmmword_1001485E8;
  v29[0] = unk_1001485F8;
  *(v29 + 9) = unk_100148601;
  v24 = xmmword_1001485A8;
  v25 = unk_1001485B8;
  v26 = xmmword_1001485C8;
  v27 = unk_1001485D8;
  v22 = xmmword_100148588;
  v23 = unk_100148598;
  v8 = [[NSData alloc] initWithBytes:&v22 length:137];
  [v7 setObject:v8 forKeyedSubscript:{@"ReportDescriptor", v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1]}];

  [v7 setObject:&off_1001B7E70 forKeyedSubscript:@"VendorID"];
  [v7 setObject:&off_1001B7E88 forKeyedSubscript:@"ProductID"];
  [v7 setObject:@"Rapport" forKeyedSubscript:@"Transport"];
  [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:@"DisplayIntegrated"];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Authenticated"];
  v9 = objc_alloc_init(NSUUID);
  uUIDString = [v9 UUIDString];
  [v7 setObject:uUIDString forKeyedSubscript:@"PhysicalDeviceUniqueID"];

  [v7 setObject:@"Generic Extended Controller" forKeyedSubscript:@"Product"];
  [v7 setObject:&off_1001B7EA0 forKeyedSubscript:@"DeviceUsagePage"];
  [v7 setObject:&off_1001B7EB8 forKeyedSubscript:@"DeviceUsage"];
  v11 = IOHIDUserDeviceCreate();
  self->_hidGCDevice = v11;
  v4 = v11 != 0;
  if (v11)
  {
    v19 = v11;
    v20 = CUMainQueue();
    IOHIDUserDeviceSetDispatchQueue(v19, v20);

    IOHIDUserDeviceActivate(self->_hidGCDevice);
  }

  else
  {
    sub_100117CD0(error, v12, v13, v14, v15, v16, v17, v18);
  }

  return v4;
}

- (void)_setupHIDGCSenderIDIfNeeded
{
  if (!self->_hidGCSenderIDInitialized && self->_hidGCDevice)
  {
    self->_hidGCSenderID = 0;
    v3 = IOHIDUserDeviceCopyService();
    if (v3)
    {
      v6 = v3;
      child = 0;
      ChildEntry = IORegistryEntryGetChildEntry(v3, "IOService", &child);
      IOObjectRelease(v6);
      if (ChildEntry)
      {
        if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
        {
          sub_100117D14(ChildEntry);
        }
      }

      else
      {
        entry = 0;
        v8 = IORegistryEntryGetChildEntry(child, "IOService", &entry);
        IOObjectRelease(child);
        if (v8)
        {
          if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_100117D54(v8);
          }
        }

        else
        {
          RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, &self->_hidGCSenderID);
          self->_hidGCSenderIDInitialized = 1;
          IOObjectRelease(entry);
          if (RegistryEntryID && dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_100117D94(RegistryEntryID);
          }
        }
      }
    }

    else if (dword_1001D3948 <= 90)
    {
      if (dword_1001D3948 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100117DD4(v3, v4, v5);
      }
    }
  }
}

- (void)_handleTouchStart:(id)start responseHandler:(id)handler
{
  startCopy = start;
  handlerCopy = handler;
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117DF0(startCopy);
  }

  v10 = 0;
  [(RPHIDDaemon *)self _setupHIDTouchDeviceAndReturnError:&v10];
  v8 = v10;
  if (v8)
  {
    if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      sub_100117E30(v8);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  }

  else
  {
    v11 = @"_i";
    v12 = &off_1001B7EA0;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    (*(handlerCopy + 2))(handlerCopy, v9, 0, 0);
  }
}

- (void)_handleTouchStop:(id)stop responseHandler:(id)handler
{
  stopCopy = stop;
  handlerCopy = handler;
  if (dword_1001D3948 <= 30 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117E70(stopCopy);
  }

  activeTouchEventMap = self->_activeTouchEventMap;
  self->_activeTouchEventMap = 0;

  self->_lastEventTicks = 0;
  hidTouchDevice = self->_hidTouchDevice;
  if (hidTouchDevice)
  {
    CFRelease(hidTouchDevice);
    self->_hidTouchDevice = 0;
  }

  self->_hidSenderID = 0;
  self->_hidSenderIDInitialized = 0;
  (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleTouchEvent:(id)event
{
  eventCopy = event;
  v7 = eventCopy;
  if (!self->_hidTouchDevice)
  {
    if (dword_1001D3948 <= 30)
    {
      if (dword_1001D3948 != -1 || (eventCopy = _LogCategory_Initialize(), eventCopy))
      {
        sub_100117EB0(eventCopy, v5, v6);
      }
    }

    v42 = 0;
    [(RPHIDDaemon *)self _setupHIDTouchDeviceAndReturnError:&v42];
    v8 = v42;
    if (!self->_hidTouchDevice)
    {
      sub_100117FA4(v8);
      goto LABEL_41;
    }
  }

  v9 = mach_absolute_time();
  if (dword_1001D3948 <= 50 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117ECC(v7);
  }

  v40 = 0;
  v41 = 0;
  v10 = NSDictionaryGetNSNumber();
  v11 = v10;
  v12 = &off_1001B7ED0;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  LODWORD(v40) = [v13 intValue];
  LODWORD(v41) = CFDictionaryGetInt64Ranged();
  WORD2(v40) = CFDictionaryGetInt64Ranged();
  HIWORD(v40) = CFDictionaryGetInt64Ranged();
  CFDictionaryGetInt64();
  if (!self->_activeTouchEventMap)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    activeTouchEventMap = self->_activeTouchEventMap;
    self->_activeTouchEventMap = v14;
  }

  v16 = [[NSValue alloc] initWithBytes:&v40 objCType:"{?=iSSiB}"];
  [(NSMutableDictionary *)self->_activeTouchEventMap setObject:v16 forKeyedSubscript:v13];

  if (v41 == 1)
  {
    self->_remoteTouchBeganTicks = NanosecondsToUpTicks();
    self->_localTouchBeganTicks = v9;
    self->_lastEventTicks = v9;
    if (dword_1001D3948 <= 10 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      UpTicksToSecondsF();
      v18 = v17;
      UpTicksToSecondsF();
      LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleTouchEvent:]", 10, "remoteTouchBegan: %f, _localTouchBeganTicks: %f", v18, v19);
    }
  }

  v20 = NanosecondsToUpTicks();
  v21 = v20;
  v22 = v9 - self->_lastEventTicks;
  localTouchBeganTicks = self->_localTouchBeganTicks;
  if (v22 >= self->_epochResetTicks)
  {
    v24 = v9 - localTouchBeganTicks;
  }

  else
  {
    v24 = v20 - self->_remoteTouchBeganTicks;
  }

  v25 = localTouchBeganTicks + v24;
  if (v25 >= v9)
  {
    v26 = v9;
  }

  else
  {
    v26 = v25;
  }

  if (dword_1001D3948 <= 10 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    sub_100117F0C(v21, v9, v24, v22);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3010000000;
  v38 = &unk_10017AC26;
  v39[0] = 0;
  *(v39 + 5) = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v27 = self->_activeTouchEventMap;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100057324;
  v32[3] = &unk_1001AC898;
  v32[4] = &v35;
  v32[5] = v33;
  [(NSMutableDictionary *)v27 enumerateKeysAndObjectsUsingBlock:v32];
  v28 = v41;
  v29 = v36;
  *(v36 + 44) = v41 == 5;
  if ((v28 - 1) >= 3)
  {
    [(NSMutableDictionary *)self->_activeTouchEventMap setObject:0 forKeyedSubscript:v13];
    v29 = v36;
  }

  v30 = IOHIDUserDeviceHandleReportWithTimeStamp(self->_hidTouchDevice, v26, v29 + 32, 13);
  if (v30)
  {
    if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleTouchEvent:]", 90, "### Touch event report failed: %#m\n", v30);
    }
  }

  else if (dword_1001D3948 <= 50 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
  {
    UpTicksToSecondsF();
    LogPrintF(&dword_1001D3948, "[RPHIDDaemon _handleTouchEvent:]", 50, "Sent report with timestamp: %f", v31);
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

LABEL_41:
}

- (void)_handleSelectWithButtonState:(int)state
{
  v3 = *&state;
  mach_absolute_time();
  v5 = UpTicksToMilliseconds();
  if (v3 >= 2)
  {
    if (v5 - self->_lastSelectButtonDown <= 0x14)
    {
      v6 = dispatch_time(0, 20000000);
      v7 = CUMainQueue();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000574E4;
      v8[3] = &unk_1001AB2A0;
      v8[4] = self;
      v9 = v3;
      dispatch_after(v6, v7, v8);

      return;
    }
  }

  else
  {
    mach_absolute_time();
    self->_lastSelectButtonDown = UpTicksToMilliseconds();
  }

  [(RPHIDDaemon *)self _injectKeyboardEventUsagePage:12 usageCode:128 buttonState:v3];
}

- (BOOL)_setupHIDTouchDeviceAndReturnError:(id *)error
{
  if (self->_hidTouchDevice)
  {
    return 1;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:&off_1001B7EE8 forKeyedSubscript:@"VendorID"];
  [v6 setObject:&off_1001B7F00 forKeyedSubscript:@"ProductID"];
  [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"DisplayIntegrated"];
  [v6 setObject:@"Rapport" forKeyedSubscript:@"Transport"];
  *v19 = xmmword_100148631;
  *&v19[16] = unk_100148641;
  v22 = xmmword_100148671;
  v23 = unk_100148681;
  v24 = xmmword_100148691;
  v20 = xmmword_100148651;
  v21 = unk_100148661;
  v17 = xmmword_100148611;
  v18 = unk_100148621;
  LODWORD(v25) = -1073638137;
  *&v19[15] = 1000;
  HIWORD(v22) = 1000;
  *&v19[28] = 1000;
  *(&v23 + 11) = 1000;
  v7 = [[NSData alloc] initWithBytes:&v17 length:148];
  [v6 setObject:v7 forKeyedSubscript:{@"ReportDescriptor", v17, v18, *v19, *&v19[16], v20, v21, v22, v23, v24, v25}];

  v8 = IOHIDUserDeviceCreate();
  self->_hidTouchDevice = v8;
  v3 = v8 != 0;
  if (!v8)
  {
    sub_100117CD0(error, v9, v10, v11, v12, v13, v14, v15);
  }

  return v3;
}

- (void)_setupHIDSenderIDIfNeeded
{
  if (!self->_hidSenderIDInitialized && self->_hidTouchDevice)
  {
    self->_hidSenderID = 0;
    p_hidSenderID = &self->_hidSenderID;
    self->_hidSenderIDInitialized = 1;
    v3 = IOHIDUserDeviceCopyService();
    if (v3)
    {
      v6 = v3;
      child = 0;
      ChildEntry = IORegistryEntryGetChildEntry(v3, "IOService", &child);
      IOObjectRelease(v6);
      if (ChildEntry)
      {
        if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
        {
          sub_100118038(ChildEntry);
        }
      }

      else
      {
        entry = 0;
        v8 = IORegistryEntryGetChildEntry(child, "IOService", &entry);
        IOObjectRelease(child);
        if (v8)
        {
          if (dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_100118078(v8);
          }
        }

        else
        {
          RegistryEntryID = IORegistryEntryGetRegistryEntryID(entry, p_hidSenderID);
          IOObjectRelease(entry);
          if (RegistryEntryID && dword_1001D3948 <= 90 && (dword_1001D3948 != -1 || _LogCategory_Initialize()))
          {
            sub_1001180B8(RegistryEntryID);
          }
        }
      }
    }

    else if (dword_1001D3948 <= 90)
    {
      if (dword_1001D3948 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001180F8(v3, v4, v5);
      }
    }
  }
}

@end