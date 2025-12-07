@interface CBALSEvent
+ (void)replaceLuxWithFilteredLux:(__IOHIDEvent *)lux;
- (CBALSEvent)initWithHIDEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service;
- (ColorSensorVendorEventData)copyVendorDataFromEvent:(SEL)event;
- (int)getServiceOrientation:(__IOHIDServiceClient *)orientation;
- (int64_t)compare:(id)compare;
- (void)dealloc;
@end

@implementation CBALSEvent

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_event)
  {
    CFRelease(selfCopy->_event);
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_node).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBALSEvent;
  [(CBHIDEvent *)&v3 dealloc];
}

- (CBALSEvent)initWithHIDEvent:(__IOHIDEvent *)event andService:(__IOHIDServiceClient *)service
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v40 = a2;
  eventCopy = event;
  serviceCopy = service;
  v37.receiver = self;
  v37.super_class = CBALSEvent;
  selfCopy = [(CBHIDEvent *)&v37 initWithHIDEvent:event andService:service];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v4 = os_log_create("com.apple.CoreBrightness.CBALSEvent", "default");
  selfCopy->_logHandle = v4;
  if (eventCopy && IOHIDEventGetType() == 12)
  {
    CFRetain(eventCopy);
    selfCopy->_event = eventCopy;
    if (selfCopy->_node && [(CBALSNode *)selfCopy->_node supportsFloatLux])
    {
      IOHIDEventGetDoubleValue();
      IntegerValue = v5;
    }

    else
    {
      IntegerValue = IOHIDEventGetIntegerValue();
    }

    selfCopy->_illuminance = IntegerValue;
    v6 = [(CBALSEvent *)selfCopy getServiceOrientation:serviceCopy];
    selfCopy->_orientation = v6;
    if (IOHIDEventGetIntegerValue() == 1)
    {
      IOHIDEventGetDoubleValue();
      *&v7 = v7 / 3.14159265;
      selfCopy->_colorSample.XYZ[0] = *&v7;
      IOHIDEventGetDoubleValue();
      *&v8 = v8 / 3.14159265;
      selfCopy->_colorSample.XYZ[1] = *&v8;
      IOHIDEventGetDoubleValue();
      *&v9 = v9 / 3.14159265;
      selfCopy->_colorSample.XYZ[2] = *&v9;
      IOHIDEventGetFloatValue();
      *&v10 = v10;
      selfCopy->_colorSample.CCT1 = *&v10;
      if (selfCopy->_colorSample.XYZ[0] == 0.0 || selfCopy->_colorSample.XYZ[1] == 0.0)
      {
        v11 = 0.0;
        selfCopy->_colorSample.xy.y = 0.0;
        selfCopy->_colorSample.xy.x = 0.0;
      }

      else
      {
        *&v11 = CFXTristimulus2Chromaticity(selfCopy->_colorSample.XYZ, &selfCopy->_colorSample.xy);
      }

      __dst = &selfCopy->_vendorData;
      if (selfCopy)
      {
        objc_msgSend_copyVendorDataFromEvent_(selfCopy, v27, eventCopy, v11);
      }

      else
      {
        memset(__b, 0, sizeof(__b));
      }

      memcpy(__dst, __b, 0x89uLL);
      selfCopy->_integrationTime = selfCopy->_vendorData.integrationTime / 1000000.0;
      illuminance = selfCopy->_illuminance;
      selfCopy->_colorSample.extra.brightness = illuminance;
      if (serviceCopy)
      {
        orientation = selfCopy->_orientation;
      }

      else
      {
        orientation = selfCopy->_vendorData.orientation;
      }

      selfCopy->_colorSample.extra.orientation = orientation;
      selfCopy->_colorSample.extra.nChannels = selfCopy->_vendorData.nChannels;
      __memcpy_chk();
      selfCopy->_supportColor = 1;
      if (selfCopy->_logHandle)
      {
        logHandle = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      oslog = logHandle;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v43, COERCE__INT64(selfCopy->_colorSample.XYZ[0]), COERCE__INT64(selfCopy->_colorSample.XYZ[1]), COERCE__INT64(selfCopy->_colorSample.XYZ[2]), COERCE__INT64(selfCopy->_colorSample.CCT1));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Tristimulus values: XYZ[0]=%f, XYZ[1]=%f, XYZ[2]=%f | CCT1=%f", v43, 0x2Au);
      }
    }

    else
    {
      selfCopy->_supportColor = 0;
      if (selfCopy->_logHandle)
      {
        v21 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v20 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v20 = init_default_corebrightness_log();
        }

        v21 = v20;
      }

      v33 = v21;
      v32 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v18 = v33;
        v19 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_debug_impl(&dword_1DE8E5000, v18, v19, "error: invalid Color space, can't load harmony data", v31, 2u);
      }
    }

    selfCopy->_obstructed = 0;
    selfCopy->_firstALSSample = 0;
    selfCopy->_colorMitigationTriggered = 0;
    return selfCopy;
  }

  if (selfCopy->_logHandle)
  {
    v17 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v16 = init_default_corebrightness_log();
    }

    v17 = v16;
  }

  v30 = v17;
  v29 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v14 = v30;
    v15 = v29;
    __os_log_helper_16_0_0(v28);
    _os_log_error_impl(&dword_1DE8E5000, v14, v15, "HID Event type is not ALS", v28, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  return 0;
}

- (int64_t)compare:(id)compare
{
  illuminance = self->_illuminance;
  [compare illuminance];
  if (illuminance > v3 && !self->_obstructed)
  {
    return -1;
  }

  v6 = self->_illuminance;
  [compare illuminance];
  return v6 < v4 || self->_obstructed;
}

- (ColorSensorVendorEventData)copyVendorDataFromEvent:(SEL)event
{
  memset(retstr, 0, 0x89uLL);
  result = IOHIDEventGetChildren();
  if (result)
  {
    result = CFArrayGetValueAtIndex(result, 0);
    if (result)
    {
      result = IOHIDEventGetDataValue();
      if (result)
      {
        IOHIDEventGetIntegerValue();
        return __memcpy_chk();
      }
    }
  }

  return result;
}

- (int)getServiceOrientation:(__IOHIDServiceClient *)orientation
{
  intValue = 0;
  if (self->_node)
  {
    return [(CBALSNode *)self->_node orientation];
  }

  if (orientation)
  {
    cf = IOHIDServiceClientCopyProperty(orientation, @"Orientation");
    if (cf)
    {
      intValue = [cf intValue];
      CFRelease(cf);
    }
  }

  return intValue;
}

+ (void)replaceLuxWithFilteredLux:(__IOHIDEvent *)lux
{
  theArray = IOHIDEventGetChildren();
  if (theArray)
  {
    if (CFArrayGetValueAtIndex(theArray, 0))
    {
      if (IOHIDEventGetIntegerValue() == 137)
      {
        DataValue = IOHIDEventGetDataValue();
        if (DataValue)
        {
          if (*(DataValue + 136))
          {
            IOHIDEventSetDoubleValue();
            IOHIDEventSetIntegerValue();
            IOHIDEventGetDoubleValue();
            IOHIDEventGetDoubleValue();
            v6 = v3;
            IOHIDEventGetDoubleValue();
            if (v6 > 0.0)
            {
              IOHIDEventSetDoubleValue();
              IOHIDEventSetDoubleValue();
              IOHIDEventSetDoubleValue();
            }
          }
        }
      }
    }
  }
}

@end