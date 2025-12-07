@interface PSVR2SenseHIDServicePlugin
+ (BOOL)matchService:(unsigned int)service options:(id)options score:(int64_t *)score;
- (BOOL)isTwoAxisInputIdle:(PSVR2SenseHIDServicePlugin *)self prevInput:(SEL)input noiseBuffer:;
- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client;
- (PSVR2SenseHIDServicePlugin)initWithService:(unsigned int)service;
- (id)createEvent:(unsigned int)event timestamp:(unint64_t)timestamp;
- (id)propertyForKey:(id)key client:(id)client;
- (void)activate;
- (void)applyDeadzone:(float)deadzone axisSnapRadius:(float)radius input:;
- (void)cancel;
- (void)connectToBatteryServiceWithClient:(id)client reply:(id)reply;
- (void)connectToIdleServiceWithClient:(id)client reply:(id)reply;
- (void)dealloc;
- (void)dispatchGameControllerExtendedEventWithState:(id *)state timestamp:(unint64_t)timestamp options:(unsigned int)options children:(id)children;
- (void)dispatchHomeButtonEventWithValue:(BOOL)value timestamp:(unint64_t)timestamp;
- (void)dispatchMenuButtonEventWithValue:(BOOL)value timestamp:(unint64_t)timestamp;
- (void)enableHaptics;
- (void)fetchDeviceRegistryIDWithReply:(id)reply;
- (void)initGameControllerDaemonXPC;
- (void)ping;
- (void)setCancelHandler:(id)handler;
- (void)setDispatchQueue:(id)queue;
- (void)setHapticMotor:(unint64_t)motor frequency:(float)frequency amplitude:(float)amplitude;
- (void)stopHaptics;
@end

@implementation PSVR2SenseHIDServicePlugin

+ (BOOL)matchService:(unsigned int)service options:(id)options score:(int64_t *)score
{
  CFProperty = IORegistryEntryCreateCFProperty(service, @"ProductID", kCFAllocatorDefault, 0);
  v8 = IORegistryEntryCreateCFProperty(service, @"VendorID", kCFAllocatorDefault, 0);
  if ([v8 intValue] == 1356 && (objc_msgSend(CFProperty, "intValue") == 3653 || objc_msgSend(CFProperty, "intValue") == 3654))
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *score = 0;
  }

  return v9;
}

- (PSVR2SenseHIDServicePlugin)initWithService:(unsigned int)service
{
  v30.receiver = self;
  v30.super_class = PSVR2SenseHIDServicePlugin;
  v4 = [(PSVR2SenseHIDServicePlugin *)&v30 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_initially_inactive(0);
    v6 = dispatch_queue_create("PSVR2SenseHIDServicePlugin", v5);
    v7 = *(v4 + 1);
    *(v4 + 1) = v6;

    v8 = IONotificationPortCreate(kIOMainPortDefault);
    *(v4 + 2) = v8;
    IONotificationPortSetDispatchQueue(v8, *(v4 + 1));
    *(v4 + 6) = service;
    IOObjectRetain(service);
    RegistryEntryID = IORegistryEntryGetRegistryEntryID(*(v4 + 6), v4 + 4);
    v10 = RegistryEntryID;
    v11 = sub_1120(RegistryEntryID);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_A96C();
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v4 + 4);
        *buf = 134217984;
        *&buf[4] = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[%#010llx] Init", buf, 0xCu);
      }

      v14 = IOServiceOpen(*(v4 + 6), mach_task_self_, 2u, v4 + 10);
      if (v14)
      {
        v12 = sub_1120(v14);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_A9DC();
        }
      }

      else
      {
        v15 = IOGCFastPathClientCreate();
        *(v4 + 6) = v15;
        if (v15)
        {
          v16 = IOGCFastPathClientOpen();
          if (v16)
          {
            v12 = sub_1120(v16);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_AA4C();
            }
          }

          else
          {
            v17 = IOGCFastPathInputQueueCreateWithDuration();
            *(v4 + 7) = v17;
            if (v17)
            {
              v18 = IOGCFastPathReaderCreate();
              *(v4 + 8) = v18;
              if (v18)
              {
                v19 = IOGCFastPathControlQueueCreate();
                *(v4 + 9) = v19;
                if (v19)
                {
                  v20 = IOGCFastPathControlQueueResetPosition();
                  if (v20)
                  {
                    v12 = sub_1120(v20);
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      sub_AA88();
                    }
                  }

                  else
                  {
                    v12 = IOGCFastPathClientGetProperty();
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      unsignedIntValue = [v12 unsignedIntValue];
                      v22 = unsignedIntValue;
                      v4[104] = unsignedIntValue;
                    }

                    else
                    {
                      v22 = v4[104];
                    }

                    if ((v22 - 3) > 0xFFFFFFFD)
                    {

                      v29 = &off_15108;
                      v24 = sub_A450(v4, &v29);
                      if (v24)
                      {
                        sub_AAC4(v24, &v29, buf);
                        v25 = *buf;
                      }

                      else
                      {
                        v25 = v29;
                        v26 = [v29 objectForKeyedSubscript:@"Power.Disconnect.OnBattery.NotHeldAfterTime"];
                        v27 = [v26 isEqual:&off_150D0];

                        if ((v27 & 1) == 0)
                        {
                          sub_AB84(v25);
                        }
                      }

                      v23 = v4;
                      goto LABEL_21;
                    }

                    sub_AC44((v4 + 104));
                  }
                }

                else
                {
                  v12 = sub_1120(0);
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    sub_ACEC();
                  }
                }
              }

              else
              {
                v12 = sub_1120(0);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  sub_AD28();
                }
              }
            }

            else
            {
              v12 = sub_1120(0);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                sub_AD64();
              }
            }
          }
        }

        else
        {
          v12 = sub_1120(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_ADA0();
          }
        }
      }
    }

    dispatch_activate(*(v4 + 1));
    v23 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v23 = 0;
LABEL_22:

  return v23;
}

- (void)dealloc
{
  v3 = sub_1120(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    registryID = self->_registryID;
    *buf = 134217984;
    v13 = registryID;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%#010llx] Dealloc", buf, 0xCu);
  }

  rumbleQueue = self->_rumbleQueue;
  if (rumbleQueue)
  {
    CFRelease(rumbleQueue);
    self->_rumbleQueue = 0;
  }

  inputQueueReader = self->_inputQueueReader;
  if (inputQueueReader)
  {
    CFRelease(inputQueueReader);
    self->_inputQueueReader = 0;
  }

  inputQueue = self->_inputQueue;
  if (inputQueue)
  {
    CFRelease(inputQueue);
    self->_inputQueue = 0;
  }

  client = self->_client;
  if (client)
  {
    CFRelease(client);
    self->_client = 0;
  }

  connection = self->_connection;
  if (connection)
  {
    IOServiceClose(connection);
    self->_connection = 0;
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  v11.receiver = self;
  v11.super_class = PSVR2SenseHIDServicePlugin;
  [(PSVR2SenseHIDServicePlugin *)&v11 dealloc];
}

- (void)setDispatchQueue:(id)queue
{
  objc_storeStrong(&self->_dispatchQueue, queue);
  queueCopy = queue;
  dispatch_set_target_queue(self->_internalQueue, self->_dispatchQueue);
}

- (void)setCancelHandler:(id)handler
{
  v4 = [handler copy];
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;
}

- (void)activate
{
  v3 = _os_activity_create(&dword_0, "Activate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v5 = sub_1120(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    registryID = self->_registryID;
    *buf = 134217984;
    v13 = registryID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%#010llx] Activate", buf, 0xCu);
  }

  dispatch_activate(self->_internalQueue);
  v7 = IOServiceAddInterestNotification(self->_notificationPort, self->_service, "IOGeneralInterest", sub_6788, self, &self->_interest);
  if (v7 || !self->_interest)
  {
    v10 = sub_1120(v7);
    sub_ADDC(v10);
  }

  IOGCFastPathInputQueueSetDispatchQueue();
  IOGCFastPathInputQueueRegisterDataAvailableCallback();
  IOGCFastPathInputQueueSetCancelHandler();
  v8 = IOGCFastPathInputQueueActivate();
  if (v8)
  {
    v9 = sub_1120(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_AE7C();
    }
  }

  [(PSVR2SenseHIDServicePlugin *)self initGameControllerDaemonXPC];
  os_activity_scope_leave(&state);
}

- (void)cancel
{
  v3 = _os_activity_create(&dword_0, "Cancel", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  v5 = sub_1120(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    registryID = self->_registryID;
    *buf = 134217984;
    v10 = registryID;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%#010llx] Cancel", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_daemonConnection invalidate];
  IOGCFastPathInputQueueCancel();
  interest = self->_interest;
  if (interest)
  {
    IOObjectRelease(interest);
    self->_interest = 0;
  }

  os_activity_scope_leave(&v8);
}

- (id)propertyForKey:(id)key client:(id)client
{
  keyCopy = key;
  if (sub_E60(keyCopy, v6))
  {
    sub_B024(keyCopy);
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  if (!keyCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ([keyCopy isEqualToString:@"ServicePluginDebug"])
  {
    v7 = objc_opt_new();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setObject:v9 forKeyedSubscript:@"PluginName"];

    if (self->_dispatchQueue)
    {
      v10 = &__kCFBooleanTrue;
    }

    else
    {
      v10 = &__kCFBooleanFalse;
    }

    [v7 setObject:v10 forKeyedSubscript:@"dispatchQueue"];
    v11 = [v7 copy];
  }

  else
  {
    v18 = 0;
    v21 = keyCopy;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v14 = sub_A620(self, v13, &v18);

    if (v14)
    {
      v16 = sub_1120(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v20 = v14;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "getProperties failed: %{mach.errno}d", buf, 8u);
      }
    }

    v7 = v18;
    v11 = [v18 objectForKeyedSubscript:keyCopy];
  }

  v12 = v11;

LABEL_16:

  return v12;
}

- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client
{
  propertyCopy = property;
  keyCopy = key;
  if (!sub_E60(keyCopy, v9))
  {
    if (propertyCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    propertyCopy = +[NSNull null];
    if (!keyCopy)
    {
      goto LABEL_4;
    }

LABEL_8:
    v24 = keyCopy;
    v25 = propertyCopy;
    v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v12 = sub_A450(self, &v23);
    if (v12)
    {
      v14 = v12;
      v15 = sub_E60(v12, v13);
      if (!v15)
      {
        v10 = 0;
LABEL_18:

        goto LABEL_5;
      }

      v16 = sub_1120(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "setProperties failed: %{mach.errno}d", buf, 8u);
      }

      goto LABEL_16;
    }

    v16 = [v23 objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      unsignedIntValue = [v16 unsignedIntValue];
      if (!unsignedIntValue)
      {
        v10 = 1;
        goto LABEL_17;
      }

      if (sub_E60(unsignedIntValue, v20))
      {
        sub_B184(v16, buf);
        v21 = *buf;
LABEL_24:
      }
    }

    else
    {
      v22 = sub_E60(isKindOfClass, v18);
      if (v22)
      {
        v21 = sub_1120(v22);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "setProperty failed", buf, 2u);
        }

        goto LABEL_24;
      }
    }

LABEL_16:
    v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  sub_B0C8(propertyCopy);
  if (!propertyCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (keyCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = 0;
LABEL_5:

  return v10;
}

- (void)dispatchHomeButtonEventWithValue:(BOOL)value timestamp:(unint64_t)timestamp
{
  if (self->_buttonHome != value)
  {
    valueCopy = value;
    v7 = [(PSVR2SenseHIDServicePlugin *)self createEvent:3 timestamp:timestamp];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:547 forField:196609];
    [v7 setIntegerValue:valueCopy forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(PSVR2SenseHIDServicePlugin *)self dispatchEvent:v7];
    self->_buttonHome = valueCopy;
  }
}

- (void)dispatchMenuButtonEventWithValue:(BOOL)value timestamp:(unint64_t)timestamp
{
  if (self->_buttonMenu != value)
  {
    valueCopy = value;
    v7 = [(PSVR2SenseHIDServicePlugin *)self createEvent:3 timestamp:timestamp];
    IOHIDEventSetEventFlags();
    [v7 setIntegerValue:12 forField:196608];
    [v7 setIntegerValue:516 forField:196609];
    [v7 setIntegerValue:valueCopy forField:196610];
    [v7 setIntegerValue:1 forField:196612];
    [(PSVR2SenseHIDServicePlugin *)self dispatchEvent:v7];
    self->_buttonMenu = valueCopy;
  }
}

- (void)dispatchGameControllerExtendedEventWithState:(id *)state timestamp:(unint64_t)timestamp options:(unsigned int)options children:(id)children
{
  v6 = *&options;
  childrenCopy = children;
  v11 = vcvtq_f64_f32(*&state->var1[2]);
  v56 = vcvtq_f64_f32(*state->var1);
  v57 = v11;
  v12 = vcvtq_f64_f32(*&state->var1[6]);
  v58 = vcvtq_f64_f32(*&state->var1[4]);
  v59 = v12;
  v13 = vcvtq_f64_f32(*&state->var1[18]);
  v60 = vcvtq_f64_f32(*&state->var1[8]);
  v61 = v13;
  v14.i32[0] = LODWORD(state->var1[10]);
  v14.i32[1] = LODWORD(state->var1[13]);
  v15 = vsub_f32(v14, *&state->var1[11]);
  *v13.f64 = state->var1[14];
  v16 = *&state->var1[15];
  HIDWORD(v13.f64[0]) = LODWORD(state->var1[17]);
  v63 = 0;
  v17 = COERCE_DOUBLE(vrev64_s32(v15));
  *&v62 = v17;
  *(&v62 + 1) = vrev64_s32(vsub_f32(*&v13.f64[0], v16));
  *v13.f64 = state->var1[21];
  LOBYTE(v63) = state->var1[20] != 0.0;
  BYTE1(v63) = *v13.f64 != 0.0;
  *&v17 = self->_leftThumbstickNoiseBuffer;
  v18 = [(PSVR2SenseHIDServicePlugin *)self isTwoAxisInputIdle:&v62 prevInput:self->_anon_f0 noiseBuffer:v17];
  *&v19 = self->_rightThumbstickNoiseBuffer;
  v20 = [(PSVR2SenseHIDServicePlugin *)self isTwoAxisInputIdle:&v62 + 8 prevInput:&self->_anon_f0[8] noiseBuffer:v19];
  if ((v18 & 1) == 0)
  {
    state->var0 |= 0x3C00uLL;
  }

  if ((v20 & 1) == 0)
  {
    state->var0 |= 0x3C000uLL;
  }

  v21 = 0;
  v22 = -10;
  do
  {
    if (v22 >= 8 && state->var1[v21] != self->_gameControllerExtendedState.buttons[v21])
    {
      state->var0 |= 1 << v21;
    }

    ++v21;
    ++v22;
  }

  while (v21 != 47);
  if (state->var0)
  {
    v23 = [(PSVR2SenseHIDServicePlugin *)self createEvent:35 timestamp:timestamp];
    [v23 setOptions:v6];
    [v23 setDoubleValue:2293761 forField:v56.f64[0]];
    [v23 setDoubleValue:2293762 forField:v56.f64[1]];
    [v23 setDoubleValue:2293763 forField:v57.f64[0]];
    [v23 setDoubleValue:2293764 forField:v57.f64[1]];
    [v23 setDoubleValue:2293767 forField:v59.f64[0]];
    [v23 setDoubleValue:2293768 forField:v59.f64[1]];
    [v23 setDoubleValue:2293765 forField:v58.f64[0]];
    [v23 setDoubleValue:2293766 forField:v58.f64[1]];
    [v23 setDoubleValue:2293769 forField:v60.f64[0]];
    [v23 setDoubleValue:2293771 forField:v61.f64[0]];
    [v23 setIntegerValue:v63 forField:2293777];
    [v23 setDoubleValue:2293770 forField:v60.f64[1]];
    [v23 setDoubleValue:2293772 forField:v61.f64[1]];
    [v23 setIntegerValue:BYTE1(v63) forField:2293778];
    [v23 setDoubleValue:2293773 forField:*&v62];
    [v23 setDoubleValue:2293774 forField:*(&v62 + 1)];
    [v23 setDoubleValue:2293775 forField:*(&v62 + 2)];
    [v23 setDoubleValue:2293776 forField:*(&v62 + 3)];
    [v23 setIntegerValue:HIDWORD(v63) forField:2293760];
    v25 = *(&v62 + 8);
    v24 = v62;
    state->var1[10] = fmaxf(*(&v62 + 1), 0.0);
    v26 = vrev64_s32(v25);
    *v27.f32 = vrev64_s32(v24);
    v24.i32[1] = v25.i32[1];
    v28.i64[0] = vnegq_f32(v27).u64[0];
    *&v27.u32[2] = v24;
    v29.i32[0] = vmovn_s32(vcltzq_f32(v27)).u32[0];
    v29.i32[1] = vmovn_s32(vcgtzq_f32(v27)).i32[1];
    v28.u64[1] = v24;
    *&state->var1[11] = vandq_s8(v28, vmovl_s16(v29));
    *&state->var1[15] = vand_s8(vneg_f32(v26), vcltz_f32(v26));
    state->var1[17] = fmaxf(*v25.i32, 0.0);
    mach_absolute_time();
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventAppendEvent();
    if (VendorDefinedEvent)
    {
      CFRelease(VendorDefinedEvent);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v31 = childrenCopy;
    v32 = [v31 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v53;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v53 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [v23 appendEvent:*(*(&v52 + 1) + 8 * i)];
        }

        v33 = [v31 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v33);
    }

    v51.opaque[0] = 0;
    v51.opaque[1] = 0;
    triggerPressActivity = self->_triggerPressActivity;
    v37 = triggerPressActivity;
    v38 = v37;
    if (triggerPressActivity)
    {
      os_activity_scope_enter(v37, &v51);
      [(PSVR2SenseHIDServicePlugin *)self dispatchEvent:v23, v51.opaque[0], v51.opaque[1], v52];
      os_activity_scope_leave(&v51);
    }

    else
    {
      [(PSVR2SenseHIDServicePlugin *)self dispatchEvent:v23, v51.opaque[0], v51.opaque[1], v52];
    }

    v39 = v57;
    *&self->_gameControllerState.directionPadUp = v56;
    *&self->_gameControllerState.directionPadLeft = v39;
    v40 = v59;
    *&self->_gameControllerState.buttonA = v58;
    *&self->_gameControllerState.buttonX = v40;
    *&self->_anon_f0[16] = v63;
    v41 = v62;
    *&self->_gameControllerState.buttonL2 = v61;
    *self->_anon_f0 = v41;
    *&self->_gameControllerState.buttonL1 = v60;
    *&self->_gameControllerExtendedState.mask = *&state->var0;
    v42 = *&state->var1[2];
    v43 = *&state->var1[6];
    v44 = *&state->var1[14];
    *&self->_gameControllerExtendedState.buttons[10] = *&state->var1[10];
    *&self->_gameControllerExtendedState.buttons[14] = v44;
    *&self->_gameControllerExtendedState.buttons[2] = v42;
    *&self->_gameControllerExtendedState.buttons[6] = v43;
    v45 = *&state->var1[18];
    v46 = *&state->var1[22];
    v47 = *&state->var1[30];
    *&self->_gameControllerExtendedState.buttons[26] = *&state->var1[26];
    *&self->_gameControllerExtendedState.buttons[30] = v47;
    *&self->_gameControllerExtendedState.buttons[18] = v45;
    *&self->_gameControllerExtendedState.buttons[22] = v46;
    v48 = *&state->var1[34];
    v49 = *&state->var1[38];
    v50 = *&state->var1[42];
    *&self->_gameControllerExtendedState.buttons[46] = *&state->var1[46];
    *&self->_gameControllerExtendedState.buttons[38] = v49;
    *&self->_gameControllerExtendedState.buttons[42] = v50;
    *&self->_gameControllerExtendedState.buttons[34] = v48;
  }
}

- (void)applyDeadzone:(float)deadzone axisSnapRadius:(float)radius input:
{
  v5.f32[0] = fabsf(COERCE_FLOAT(*v4));
  v6 = vdup_lane_s32(vcgt_f32(*&radius, v5), 0);
  v7.i32[1] = HIDWORD(*v4);
  v7.i32[0] = 0;
  v8 = vbsl_s8(v6, v7, *v4);
  v6.f32[0] = fabsf(*&v8.i32[1]);
  v9 = vbsl_s8(vdup_lane_s32(vcgt_f32(*&radius, v6), 0), v8.u32[0], v8);
  v10 = vmul_f32(v9, v9);
  v11 = sqrtf(vaddv_f32(v10));
  v12 = 0;
  if (v11 > deadzone)
  {
    v13 = vadd_f32(v10, vdup_lane_s32(v10, 1)).u32[0];
    v14 = v11 - deadzone;
    v15 = vrsqrte_f32(v13);
    v16 = vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15)));
    *v17.i32 = 1.0 - deadzone;
    v18 = vdiv_f32(vmul_n_f32(vmul_n_f32(v9, vmul_f32(v16, vrsqrts_f32(v13, vmul_f32(v16, v16))).f32[0]), v14), vdup_lane_s32(v17, 0));
    __asm { FMOV            V1.2S, #1.0 }

    v24 = vminnm_f32(v18, _D1);
    __asm { FMOV            V1.2S, #-1.0 }

    v12 = vmaxnm_f32(v24, _D1);
  }

  *v4 = v12;
}

- (BOOL)isTwoAxisInputIdle:(PSVR2SenseHIDServicePlugin *)self prevInput:(SEL)input noiseBuffer:
{
  v5 = *v2;
  v6 = COERCE_FLOAT(HIDWORD(*v3)) == 0.0;
  if (COERCE_FLOAT(*v3) != 0.0)
  {
    v6 = 0;
  }

  if (COERCE_FLOAT(HIDWORD(*v2)) != 0.0)
  {
    v6 = 1;
  }

  v7 = v5.f32[0] != 0.0 || v6;
  v8 = vsub_f32(v5, *v3);
  return (sqrtf(vaddv_f32(vmul_f32(v8, v8))) < v4) & v7;
}

- (void)setHapticMotor:(unint64_t)motor frequency:(float)frequency amplitude:(float)amplitude
{
  v23 = 0u;
  v24 = 0u;
  if (!motor && self->_hapticsActive)
  {
    hapticSequence = self->_hapticSequence;
    self->_hapticSequence = hapticSequence + 1;
    v7 = sub_1120(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v26 = hapticSequence;
      v27 = 2048;
      frequencyCopy = frequency;
      _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "Set haptic motor sequence=%llu, freq=%f", buf, 0x16u);
    }

    for (i = 1; ; i = 0)
    {
      Sample = IOGCFastPathControlQueueGetSample();
      if (Sample)
      {
        v15 = Sample;
        log = sub_1120(Sample);
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        *buf = 67109120;
        LODWORD(v26) = v15;
        v16 = log;
        v17 = "IOGCFastPathControlQueueGetSample failed: %{mach.errno}d";
        goto LABEL_24;
      }

      v10 = IOGCFastPathSampleSetInteger();
      if (v10)
      {
        break;
      }

      v11 = IOGCFastPathSampleSetInteger();
      if (v11)
      {
        v15 = v11;
        log = sub_1120(v11);
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      v12 = IOGCFastPathSampleSetDouble();
      if (v12)
      {
        v15 = v12;
        log = sub_1120(v12);
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        *buf = 67109120;
        LODWORD(v26) = v15;
        v16 = log;
        v17 = "IOGCFastPathSampleSetDouble failed: %{mach.errno}d";
        goto LABEL_24;
      }

      mach_absolute_time();
      v13 = IOGCFastPathSampleSetTimestamp();
      if (v13)
      {
        v15 = v13;
        log = sub_1120(v13);
        if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        *buf = 67109120;
        LODWORD(v26) = v15;
        v16 = log;
        v17 = "IOGCFastPathSampleSetTimestamp failed: %{mach.errno}d";
        goto LABEL_24;
      }

      v14 = IOGCFastPathSampleCommit();
      if (!v14)
      {
        IOGCFastPathSampleDestory();
        return;
      }

      v15 = v14;
      log = sub_1120(v14);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v26) = v15;
        v16 = log;
        v17 = "IOGCFastPathSampleCommit failed: %{mach.errno}d";
LABEL_24:
        _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, v17, buf, 8u);
      }

LABEL_25:

      IOGCFastPathSampleDestory();
      if (v15 != -536870168 || (i & 1) == 0)
      {
        return;
      }

      v18 = IOGCFastPathControlQueueResetPosition();
      v19 = sub_1120(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_B238(&v21, v22);
      }
    }

    v15 = v10;
    log = sub_1120(v10);
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

LABEL_17:
    *buf = 67109120;
    LODWORD(v26) = v15;
    v16 = log;
    v17 = "IOGCFastPathSampleSetInteger failed: %{mach.errno}d";
    goto LABEL_24;
  }
}

- (void)enableHaptics
{
  if (!self->_hapticsActive)
  {
    self->_hapticsActive = 1;
    self->_hapticSequence = 0;
    v2 = sub_1120(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_B264();
    }

    v3 = IOGCFastPathControlQueueResetPosition();
    if (v3)
    {
      sub_B2A0(v3);
    }
  }
}

- (void)stopHaptics
{
  if (self->_hapticsActive)
  {
    v3 = sub_1120(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_B344();
    }

    [(PSVR2SenseHIDServicePlugin *)self setHapticMotor:0 frequency:0.0 amplitude:0.0];
    self->_hapticsActive = 0;
  }
}

- (id)createEvent:(unsigned int)event timestamp:(unint64_t)timestamp
{
  v4 = [[HIDEvent alloc] initWithType:*&event timestamp:timestamp senderID:self->_registryID];

  return v4;
}

- (void)ping
{
  v2 = sub_1120(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "ping", v3, 2u);
  }
}

- (void)fetchDeviceRegistryIDWithReply:(id)reply
{
  registryID = self->_registryID;
  replyCopy = reply;
  v6 = [NSNumber numberWithUnsignedLongLong:registryID];
  (*(reply + 2))(replyCopy, v6, 0);
}

- (void)connectToIdleServiceWithClient:(id)client reply:(id)reply
{
  objc_storeStrong(&self->_idleClient, client);
  replyCopy = reply;
  replyCopy[2](replyCopy, self, 0);
}

- (void)connectToBatteryServiceWithClient:(id)client reply:(id)reply
{
  objc_storeStrong(&self->_batteryClient, client);
  replyCopy = reply;
  replyCopy[2](replyCopy, self, 0);
}

- (void)initGameControllerDaemonXPC
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_0, "Connect To Daemon", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);
  v4 = self->_dispatchQueue;
  v5 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.GameController.gamecontrollerd.driver" options:4096];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v5;

  objc_initWeak(&location, self->_daemonConnection);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_97DC;
  v17[3] = &unk_14678;
  objc_copyWeak(&v18, &location);
  [(NSXPCConnection *)self->_daemonConnection setInvalidationHandler:v17];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_9874;
  v14 = &unk_14798;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v15 = v7;
  [(NSXPCConnection *)self->_daemonConnection setInterruptionHandler:&v11];
  v8 = sub_9EE0();
  [(NSXPCConnection *)self->_daemonConnection setRemoteObjectInterface:v8, v11, v12, v13, v14];

  v9 = sub_9BCC();
  [(NSXPCConnection *)self->_daemonConnection setExportedInterface:v9];

  [(NSXPCConnection *)self->_daemonConnection setExportedObject:self];
  [(NSXPCConnection *)self->_daemonConnection _setQueue:self->_dispatchQueue];
  [(NSXPCConnection *)self->_daemonConnection resume];
  remoteObjectProxy = [(NSXPCConnection *)self->_daemonConnection remoteObjectProxy];
  [remoteObjectProxy driverCheckIn];

  os_activity_scope_leave(&state);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end