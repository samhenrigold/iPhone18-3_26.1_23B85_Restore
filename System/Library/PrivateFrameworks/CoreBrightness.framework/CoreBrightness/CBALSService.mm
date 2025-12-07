@interface CBALSService
- (BOOL)updateEventData;
- (CBALSService)initWithHIDALSServiceClient:(__IOHIDServiceClient *)client;
- (id)copyDataInDictionary;
- (id)description;
- (void)dealloc;
- (void)resetEventData;
- (void)setEvent:(__IOHIDEvent *)event;
@end

@implementation CBALSService

- (void)resetEventData
{
  if (self->super._event)
  {
    CFRelease(self->super._event);
    self->super._event = 0;
  }

  *(&self->super._builtIn + 1) = 0;
  *&self->_colorSupport = 0;
  self->_x = 0.0;
  self->_y = 0.0;
  *&self->_validData = 0;
}

- (id)copyDataInDictionary
{
  selfCopy = self;
  v13 = a2;
  v12 = 0;
  v3[17] = 0x1E696A000uLL;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:self->_desc];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:selfCopy->_location];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:selfCopy->super._builtIn];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(&selfCopy->super._builtIn + 1)];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*&selfCopy->_validData];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:selfCopy->_y];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:*&selfCopy->_colorSupport];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:selfCopy->_x];
  if (v11 && v10 && v9 && v8 && v7 && v6 && v5 && v4)
  {
    v3[16] = v3;
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, @"location", v10, @"placement", v9, @"internal", v8, @"valid", v7, @"lux", v6, @"CCT", v5, @"x", v4, @"y", 0}];
  }

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return v12;
}

- (CBALSService)initWithHIDALSServiceClient:(__IOHIDServiceClient *)client
{
  selfCopy = self;
  v16 = a2;
  clientCopy = client;
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.CBALSService.%lu", objc_msgSend(IOHIDServiceClientGetRegistryID(client), "unsignedIntegerValue")];
  v13.receiver = selfCopy;
  v13.super_class = CBALSService;
  selfCopy = [(CBHIDService *)&v13 initWithHIDServiceClient:clientCopy andIdentifier:v14];
  if (selfCopy)
  {
    v12 = IOHIDServiceClientCopyProperty(selfCopy->super._service, @"SensorLocation");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      selfCopy->_desc = unsignedIntegerValue;
    }

    MEMORY[0x1E69E5920](v12);
    v11 = IOHIDServiceClientCopyProperty(selfCopy->super._service, @"Placement");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [v11 unsignedIntegerValue];
      selfCopy->_location = unsignedIntegerValue2;
    }

    MEMORY[0x1E69E5920](v11);
    v10 = IOHIDServiceClientCopyProperty(selfCopy->super._service, @"Built-In");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v10 BOOLValue];
      selfCopy->super._builtIn = bOOLValue;
    }

    MEMORY[0x1E69E5920](v10);
    v9 = IOHIDServiceClientCopyProperty(selfCopy->super._service, @"ColorSupport");
    if (!v9)
    {
      v9 = IOHIDServiceClientCopyProperty(selfCopy->super._service, @"crgb");
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue2 = [v9 BOOLValue];
      LOBYTE(selfCopy->_lux) = bOOLValue2;
    }

    *&v7 = MEMORY[0x1E69E5920](v9).n128_u64[0];
    [(CBALSService *)selfCopy updateEventData];
  }

  MEMORY[0x1E69E5920](v14);
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](*&self->_CCT).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBALSService;
  [(CBHIDService *)&v3 dealloc];
}

- (void)setEvent:(__IOHIDEvent *)event
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v23 = a2;
  eventCopy = event;
  [(CBALSService *)self resetEventData];
  if (eventCopy)
  {
    selfCopy->super._event = eventCopy;
    CFRetain(selfCopy->super._event);
    IOHIDEventGetDoubleValue();
    *&selfCopy->_validData = v3;
    if (*&selfCopy->_validData < 0.0)
    {
      *&selfCopy->_validData = 0;
    }

    if (IOHIDEventGetIntegerValue() == 1)
    {
      IOHIDEventGetDoubleValue();
      *&selfCopy->_validData = v4;
      IOHIDEventGetDoubleValue();
      selfCopy->_y = v5;
      IOHIDEventGetDoubleValue();
      v18 = v6;
      IOHIDEventGetDoubleValue();
      v17 = v7;
      IOHIDEventGetDoubleValue();
      v16 = *&v8;
      v15 = *&v18 + *&v17 + v8;
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v25, *&v15, v18, v17, v16, *&selfCopy->_validData, *&selfCopy->_y);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "sum:%f tempX=%f tempY=%f tempZ:%f lux=%f CCT=%f", v25, 0x3Eu);
      }

      if (v15 != 0.0)
      {
        *&selfCopy->_colorSupport = *&v18 / v15;
        selfCopy->_x = *&v17 / v15;
      }
    }

    *(&selfCopy->super._builtIn + 1) = 1;
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v14 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v13 = init_default_corebrightness_log();
      }

      v14 = v13;
    }

    v21 = v14;
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_impl(&dword_1DE8E5000, log, type, "nulling event", v19, 2u);
    }
  }
}

- (id)description
{
  selfCopy = self;
  v14 = a2;
  if (*&self->_CCT)
  {
    MEMORY[0x1E69E5920](*&selfCopy->_CCT);
  }

  v13 = 0;
  v12 = 0;
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"id=0x%lX location=%lu internal=%d placement=%lu", selfCopy->super._registryID, selfCopy->_desc, selfCopy->super._builtIn, selfCopy->_location];
  if (*(&selfCopy->super._builtIn + 1))
  {
    if (LOBYTE(selfCopy->_lux))
    {
      v2 = objc_alloc(MEMORY[0x1E696AEC0]);
      y = selfCopy->_y;
      v4 = *&selfCopy->_colorSupport;
      x = selfCopy->_x;
      v10 = *&selfCopy->_validData;
      v13 = [v2 initWithFormat:@"lux=%f CCT=%f xy= %f | %f", v10, *&y, v4, *&x];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = *&selfCopy->_validData;
      v13 = [v6 initWithFormat:@"lux=%f", v10];
    }
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v7 initWithFormat:@"service %@ | data %@", v12, v13];
  v11 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
  *&selfCopy->_CCT = v8;
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v12);
  return *(&selfCopy->super.super.isa + v11[653]);
}

- (BOOL)updateEventData
{
  v6 = 0;
  cf = IOHIDServiceClientCopyEvent();
  if (cf)
  {
    [(CBALSService *)self setEvent:cf];
    CFRelease(cf);
    return 1;
  }

  else
  {
    [(CBALSService *)self resetEventData];
    v4 = [(CBHIDService *)self copyPropertyForKey:@"CurrentLuxValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 doubleValue];
      *&self->_validData = v2;
      *(&self->super._builtIn + 1) = 1;
      v6 = 1;
    }

    MEMORY[0x1E69E5920](v4);
  }

  return v6;
}

@end