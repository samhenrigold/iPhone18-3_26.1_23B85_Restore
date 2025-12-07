@interface TrackpadActuatorStage
- (BOOL)supportsActuationLimits;
- (TrackpadActuatorStage)initWithDevice:(__MTDevice *)device;
- (id)fetchActuatorLimits;
- (int)_openActuatorDevice;
- (unsigned)getActuationOptions:(int)options quietClick:(BOOL)click;
- (void)_handleActuationEvent:(id)event;
- (void)_handleCancelEvent:(id)event;
- (void)_handleGetDebugEvent:(id)event;
- (void)_handleHSTNotificationEvent:(id)event;
- (void)_handleHostStateEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_openActuatorDevice;
- (void)_updateHostClickControl;
- (void)dealloc;
- (void)handleActMatching:(unsigned int)matching;
- (void)handleConsume:(id)consume;
- (void)handleGetPropertyEvent:(id)event;
- (void)handlePointerSettings:(id)settings;
- (void)setActuationOptions:(unsigned int)options;
- (void)setQueue:(id)queue;
@end

@implementation TrackpadActuatorStage

- (void)setActuationOptions:(unsigned int)options
{
  if ([(TrackpadActuatorStage *)self actuationOptions]!= options)
  {
    self->_actuationOptions = options;
    actDevice = self->_actDevice;
    actuationOptions = [(TrackpadActuatorStage *)self actuationOptions];

    _MTActuatorSetFirmwareClicks(actDevice, actuationOptions);
  }
}

- (TrackpadActuatorStage)initWithDevice:(__MTDevice *)device
{
  v17.receiver = self;
  v17.super_class = TrackpadActuatorStage;
  v7 = [(HSStage *)&v17 init:device];
  v8 = v7;
  if (v7)
  {
    v7->_mtDevice = device;
    v7->_actDevice = 0;
    v7->_actuatorEntryID = 0;
    v7->_actuationsEnabled = 0;
    [(TrackpadActuatorStage *)v7 _openActuatorDevice];
    v8->_actuatorMatchedNotifierPortRef = 0;
    v8->_actuatorMatchedIterator = 0;
    v8->_displayState = 0;
    v9 = [[HSTCircularBuffer alloc] initWithMaxItems:50 includeTimestamp:1];
    actuationRequestHistory = v8->_actuationRequestHistory;
    v8->_actuationRequestHistory = v9;

    fetchActuatorLimits = [(TrackpadActuatorStage *)v8 fetchActuatorLimits];
    actuatorLimits = v8->_actuatorLimits;
    v8->_actuatorLimits = fetchActuatorLimits;

    v13 = [[ActuationManager alloc] initWithService:MTActuatorGetService()];
    actuationManager = v8->_actuationManager;
    v8->_actuationManager = v13;

    v8->_actuationOptions = 0;
    v15 = v8;
  }

  return v8;
}

- (void)dealloc
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "~%@", buf, 0xCu);
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  v5 = mach_continuous_time();
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
    [(TrackpadActuatorStage *)self _handleActuationEvent:v6];
  }

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
    v10 = [(TrackpadActuatorStage *)self handlePointerSettings:v8];
  }

  else
  {
    v12 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v10 = [(TrackpadActuatorStage *)self _handleHSTNotificationEvent:v12];
    }

    else
    {
      v14 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v10 = [(TrackpadActuatorStage *)self handleGetPropertyEvent:v14];
      }

      else
      {
        v16 = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v10 = [(TrackpadActuatorStage *)self _handleSetPropertyEvent:v16];
        }

        else
        {
          v18 = HSUtil::DynamicCast<HSTCancelEvent>(v16);

          if (v18)
          {
            v10 = [(TrackpadActuatorStage *)self _handleCancelEvent:v16];
          }

          else
          {
            v19 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v16);

            if (v19)
            {
              v10 = [(TrackpadActuatorStage *)self _handleGetDebugEvent:v16];
            }

            else
            {
              v20 = HSUtil::DynamicCast<HSTHostStateEvent>(v16);

              if (v20)
              {
                v10 = [(TrackpadActuatorStage *)self _handleHostStateEvent:v16];
              }

              else
              {
                v23.receiver = self;
                v23.super_class = TrackpadActuatorStage;
                v10 = [(HSStage *)&v23 handleConsume:v16];
              }
            }
          }
        }
      }
    }
  }

  v21 = MTLoggingPlugin(v10, v11);
  if (os_signpost_enabled(v21))
  {
    ClassName = object_getClassName(v8);
    *buf = 134349314;
    v25 = v5;
    v26 = 2080;
    v27 = ClassName;
    _os_signpost_emit_with_name_impl(&dword_0, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadActuatorStage", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }
}

- (void)_handleCancelEvent:(id)event
{
  eventCopy = event;
  actuatorMatchedIterator = self->_actuatorMatchedIterator;
  if (actuatorMatchedIterator)
  {
    IOObjectRelease(actuatorMatchedIterator);
    self->_actuatorMatchedIterator = 0;
  }

  actuatorMatchedNotifierPortRef = self->_actuatorMatchedNotifierPortRef;
  if (actuatorMatchedNotifierPortRef)
  {
    IONotificationPortDestroy(actuatorMatchedNotifierPortRef);
    self->_actuatorMatchedNotifierPortRef = 0;
  }

  self->_mtDevice = 0;
  self->_actDevice = 0;
  v7.receiver = self;
  v7.super_class = TrackpadActuatorStage;
  [(HSStage *)&v7 handleConsume:eventCopy];
}

- (void)_handleActuationEvent:(id)event
{
  eventCopy = event;
  if (!self->_actuationsEnabled)
  {
    DeviceID = MTDeviceGetDeviceID();
    v25 = MTLoggingPlugin(DeviceID, v28);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v30 = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Actuations disabled - Dropping actuation event (deviceID 0x%llX)", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = MTDeviceGetDeviceID();
  v7 = MTLoggingPlugin(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = eventCopy[2];
    *buf = 67109376;
    *v30 = v8;
    *&v30[4] = 2048;
    *&v30[6] = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Actuation(id=%d) was requested (deviceID 0x%llX)", buf, 0x12u);
  }

  actuationRequestHistory = self->_actuationRequestHistory;
  v31[0] = @"WaveformId";
  v10 = [NSNumber numberWithInt:eventCopy[2]];
  v31[1] = @"Strength";
  v32[0] = v10;
  v11 = [NSNumber numberWithInt:eventCopy[3]];
  v32[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  [(HSTCircularBuffer *)actuationRequestHistory appendItem:v12];

  kdebug_trace();
  actuationManager = [(TrackpadActuatorStage *)self actuationManager];
  v14 = eventCopy[2];
  v15 = eventCopy[4];
  v16 = eventCopy[5];
  actDevice = self->_actDevice;
  actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
  actuationOptions = [(TrackpadActuatorStage *)self actuationOptions];
  LODWORD(v20) = v15;
  LODWORD(v21) = v16;
  v22 = [actuationManager actuateForID:v14 strength:actDevice timeDilation:actuatorLimits device:actuationOptions actuatorLimits:v20 options:v21];

  if (v22)
  {
    v23 = MTDeviceGetDeviceID();
    v25 = MTLoggingPlugin(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = eventCopy[2];
      *buf = 67109632;
      *v30 = v26;
      *&v30[4] = 1024;
      *&v30[6] = v22;
      *&v30[10] = 2048;
      *&v30[12] = 0;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Actuation(id=%d) failed to play with error 0x%08X (deviceID 0x%llX)", buf, 0x18u);
    }

LABEL_10:
  }
}

- (void)handlePointerSettings:(id)settings
{
  settingsCopy = settings;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = settingsCopy[1];
    -[TrackpadActuatorStage setActuationOptions:](self, "setActuationOptions:", -[TrackpadActuatorStage getActuationOptions:quietClick:](self, "getActuationOptions:quietClick:", [v4 clickStrength], objc_msgSend(v4, "quietClick")));
  }
}

- (void)_handleHSTNotificationEvent:(id)event
{
  eventCopy = event;
  notification = [eventCopy notification];
  if (notification <= 10)
  {
    if (notification != 1 && notification != 8)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(TrackpadActuatorStage *)self _updateHostClickControl];
    goto LABEL_9;
  }

  if (notification == 11)
  {
    goto LABEL_8;
  }

  if (notification == 13)
  {
    self->_actuationsEnabled = MTActuatorGetSystemActuationsEnabled();
  }

LABEL_9:
  v6.receiver = self;
  v6.super_class = TrackpadActuatorStage;
  [(HSStage *)&v6 handleConsume:eventCopy];
}

- (void)handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = (eventCopy + 2);
  v7 = *(eventCopy + 39);
  if ((v7 & 0x80000000) == 0)
  {
    if (v7 != 14)
    {
      goto LABEL_43;
    }

    if (*v6 != 0x726F746175746341 || *(eventCopy + 22) != 0x7374696D694C726FLL)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  if (eventCopy[3] == 14 && **v6 == 0x726F746175746341 && *(*v6 + 6) == 0x7374696D694C726FLL)
  {
LABEL_28:
    actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
    actuationManager = v5[5];
    v5[5] = actuatorLimits;
LABEL_42:

    goto LABEL_43;
  }

  v10 = eventCopy[3];
  if (v10 != 25)
  {
    if (v10 != 27)
    {
      goto LABEL_43;
    }

    v11 = *v6;
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = *(v11 + 19);
    v16 = v12 == 0x69746375646F7250 && v13 == 0x7461757463416E6FLL;
    v17 = v16 && v14 == 0x6C79616C506E6F69;
    if (!v17 || v15 != 0x7473696C79616C50)
    {
      goto LABEL_43;
    }

    actuationManager = [(TrackpadActuatorStage *)self actuationManager];
    productionPlaylistPlist = [actuationManager productionPlaylistPlist];
LABEL_41:
    v30 = v5[5];
    v5[5] = productionPlaylistPlist;

    goto LABEL_42;
  }

  v22 = *v6;
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = *(v22 + 24);
  if (v23 == 0x656469727265764FLL && v24 == 0x6F69746175746341 && v25 == 0x73696C79616C506ELL && v26 == 116)
  {
    actuationManager = [(TrackpadActuatorStage *)self actuationManager];
    productionPlaylistPlist = [actuationManager overridePlaylistPlist];
    goto LABEL_41;
  }

LABEL_43:
  v31.receiver = self;
  v31.super_class = TrackpadActuatorStage;
  [(HSStage *)&v31 handleConsume:v5];
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = *(eventCopy + 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v5)
    {
      v6 = has_internal_diagnostics;
    }

    else
    {
      v6 = 0;
    }

    if (v6 != 1)
    {
      goto LABEL_11;
    }

    v7 = (eventCopy + 16);
    v8 = eventCopy[39];
    if ((v8 & 0x80000000) == 0)
    {
      if (v8 != 15)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

    v10 = *(eventCopy + 3);
    if (v10 == 15)
    {
      v7 = *v7;
LABEL_29:
      v19 = *v7;
      v20 = *(v7 + 7);
      if (v19 != 0x5765746175746341 || v20 != 0x6D726F6665766157)
      {
        goto LABEL_11;
      }

      actuationManager = [(TrackpadActuatorStage *)self actuationManager];
      actDevice = self->_actDevice;
      actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
      LODWORD(v24) = 1.0;
      LODWORD(v25) = 1.0;
      [actuationManager actuateForDictionary:v5 strength:actDevice timeDilation:actuatorLimits device:0 actuatorLimits:v24 options:v25];

      goto LABEL_10;
    }

    if (v10 != 25)
    {
      goto LABEL_11;
    }

    v11 = *v7;
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = *(v11 + 24);
    v16 = v12 == 0x656469727265764FLL && v13 == 0x6F69746175746341;
    v17 = v16 && v14 == 0x73696C79616C506ELL;
    if (!v17 || v15 != 116)
    {
      goto LABEL_11;
    }

    actuationManager = [(TrackpadActuatorStage *)self actuationManager];
    [actuationManager setOverridePlaylistPlist:v5];
  }

  else
  {
    actuationManager = v5;
    v5 = 0;
  }

LABEL_10:

LABEL_11:
}

- (void)_handleGetDebugEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[TrackpadActuatorStage _handleGetDebugEvent:]"];
    [v15 handleFailureInFunction:v16 file:@"TrackpadActuatorStage.mm" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  SystemActuationsEnabled = MTActuatorGetSystemActuationsEnabled();
  v20[0] = @"Stage";
  v6 = objc_opt_class();
  v21[0] = NSStringFromClass(v6);
  v20[1] = @"ActuatorLimits";
  v17 = v21[0];
  actuatorLimits = [(TrackpadActuatorStage *)self actuatorLimits];
  dictionary = [actuatorLimits dictionary];
  v21[1] = dictionary;
  v20[2] = @"ActuationOptions";
  v8 = [NSNumber numberWithUnsignedInt:[(TrackpadActuatorStage *)self actuationOptions]];
  v21[2] = v8;
  v20[3] = @"FirmwareHostClickMode";
  v9 = [NSNumber numberWithBool:SystemActuationsEnabled];
  v21[3] = v9;
  v20[4] = @"DisplayState";
  v10 = [NSNumber numberWithUnsignedChar:self->_displayState];
  v21[4] = v10;
  v20[5] = @"ActuationRequests";
  items = [(HSTCircularBuffer *)self->_actuationRequestHistory items];
  v21[5] = items;
  v20[6] = @"ActuationManager";
  actuationManager = [(TrackpadActuatorStage *)self actuationManager];
  debug = [actuationManager debug];
  v21[6] = debug;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];

  *(eventCopy + 16) = 1;
  [*(eventCopy + 3) addObject:v14];
  v19.receiver = self;
  v19.super_class = TrackpadActuatorStage;
  [(HSStage *)&v19 handleConsume:eventCopy];
}

- (void)_handleHostStateEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    if ([eventCopy displayOff])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (self->_displayState != v6)
    {
      self->_displayState = v6;
      [(TrackpadActuatorStage *)self _updateHostClickControl];
    }
  }

  else
  {
    v11 = 0;
    DeviceID = MTDeviceGetDeviceID();
    v9 = MTLoggingPlugin(DeviceID, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Received nil host state event (deviceID 0x%llX)", buf, 0xCu);
    }
  }

  v10.receiver = self;
  v10.super_class = TrackpadActuatorStage;
  [(HSStage *)&v10 handleConsume:v5];
}

- (BOOL)supportsActuationLimits
{
  Service = MTDeviceGetService();
  CFProperty = IORegistryEntryCreateCFProperty(Service, @"SupportsActuationLimits", kCFAllocatorDefault, 0);
  v4 = CFProperty;
  if (CFProperty)
  {
    bOOLValue = [CFProperty BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)_updateHostClickControl
{
  if (self->_displayState == 1)
  {
    DeviceID = MTDeviceGetDeviceID();
    v5 = MTLoggingPlugin(DeviceID, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v15 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Handing off host click control (deviceID 0x%llX)", buf, 0xCu);
    }

    v6 = MTActuatorHandoffHostClickControl();
    if (!v6)
    {
      return;
    }

LABEL_9:
    v10 = MTDeviceGetDeviceID();
    v12 = MTLoggingPlugin(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      displayState = self->_displayState;
      *buf = 16777984;
      LOBYTE(v15[0]) = displayState;
      *(v15 + 1) = 1024;
      *(v15 + 3) = v6;
      *(&v15[1] + 3) = 2048;
      *(&v15[2] + 1) = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to update host click control displayState=%hhu status=0x%08X (deviceID 0x%llX)", buf, 0x15u);
    }

    return;
  }

  v7 = MTDeviceGetDeviceID();
  v9 = MTLoggingPlugin(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v15 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Reclaiming host click control (deviceID 0x%llX)", buf, 0xCu);
  }

  v6 = MTActuatorReclaimHostClickControl();
  if (v6)
  {
    goto LABEL_9;
  }
}

- (int)_openActuatorDevice
{
  self->_actDevice = MTDeviceGetMTActuator();
  Service = MTActuatorGetService();
  IORegistryEntryGetRegistryEntryID(Service, &self->_actuatorEntryID);
  v4 = MTActuatorOpen();
  v6 = v4;
  if (v4)
  {
    v7 = MTLoggingPlugin(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TrackpadActuatorStage *)v6 _openActuatorDevice];
    }
  }

  self->_actuationsEnabled = MTActuatorGetSystemActuationsEnabled();
  [(TrackpadActuatorStage *)self _updateHostClickControl];
  return v6;
}

- (unsigned)getActuationOptions:(int)options quietClick:(BOOL)click
{
  if (options > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_D5170[options];
  }

  if (click)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

- (id)fetchActuatorLimits
{
  v3 = objc_opt_new();
  if ([(TrackpadActuatorStage *)self supportsActuationLimits])
  {
    Report = MTActuatorGetReport();
    DeviceID = MTDeviceGetDeviceID();
    v7 = MTLoggingPlugin(DeviceID, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v10 = Report;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to fetch device published actuation limits with error 0x%08X (deviceID 0x%llX)", buf, 0x12u);
    }
  }

  return v3;
}

- (void)handleActMatching:(unsigned int)matching
{
  v5 = IOIteratorNext(matching);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    do
    {
      *v14 = 0;
      if (!IORegistryEntryGetRegistryEntryID(v7, v14))
      {
        v8 |= *v14 == self->_actuatorEntryID;
      }

      IOObjectRelease(v7);
      v5 = IOIteratorNext(matching);
      v7 = v5;
    }

    while (v5);
    if (v8)
    {
      goto LABEL_15;
    }
  }

  if (!self->_mtDevice)
  {
LABEL_15:
    v11 = MTLoggingPlugin(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(TrackpadActuatorStage *)self handleActMatching:v11];
    }
  }

  else
  {
    if (self->_actDevice)
    {
      MTActuatorClose();
      CFRelease(self->_actDevice);
      self->_mtDevice->var4 = 0;
      self->_actDevice = 0;
    }

    _openActuatorDevice = [(TrackpadActuatorStage *)self _openActuatorDevice];
    v11 = MTLoggingPlugin(_openActuatorDevice, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      actuatorEntryID = self->_actuatorEntryID;
      if (self->_actuationsEnabled)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      *v14 = 134218242;
      *&v14[4] = actuatorEntryID;
      v15 = 2080;
      v16 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Actuator matched - 0x%08llx, actuations enabled : %s", v14, 0x16u);
    }
  }
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    if (MTDeviceSupportsActuation())
    {
      v5 = IONotificationPortCreate(kIOMainPortDefault);
      self->_actuatorMatchedNotifierPortRef = v5;
      if (v5)
      {
        valuePtr = 0;
        MTDeviceGetDeviceID();
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v9 = v8;
        if (v6 && Mutable && v8)
        {
          CFDictionarySetValue(v8, @"Multitouch Actuator ID", v6);
          CFDictionarySetValue(Mutable, @"IOPropertyMatch", v9);
          CFRetain(Mutable);
          v10 = IOServiceAddMatchingNotification(self->_actuatorMatchedNotifierPortRef, "IOServiceFirstMatch", Mutable, actMatchedCallback, self, &self->_actuatorMatchedIterator);
          if (v10)
          {
            v12 = MTLoggingPlugin(v10, v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              [TrackpadActuatorStage setQueue:v12];
            }
          }

          else
          {
            [(TrackpadActuatorStage *)self handleActMatching:self->_actuatorMatchedIterator];
          }
        }

        IONotificationPortSetDispatchQueue(self->_actuatorMatchedNotifierPortRef, queueCopy);
        if (v6)
        {
          CFRelease(v6);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }

  else
  {
    dispatch_assert_queue_not_V2(0);
    actuatorMatchedNotifierPortRef = self->_actuatorMatchedNotifierPortRef;
    if (actuatorMatchedNotifierPortRef)
    {
      IONotificationPortDestroy(actuatorMatchedNotifierPortRef);
      self->_actuatorMatchedNotifierPortRef = 0;
    }
  }

  queue = self->_queue;
  self->_queue = queueCopy;
}

- (void)_openActuatorDevice
{
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to open actuator - 0x%08x", v2, 8u);
}

- (void)handleActMatching:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 136);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Skip actuator setup - 0x%08llx", &v3, 0xCu);
}

@end