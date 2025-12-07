@interface CBALSTelemetry
- (BOOL)setALSService:(__IOHIDServiceClient *)service;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (CBALSTelemetry)initWithQueue:(id)queue;
- (id)copyALSSampleHistoryWithLength:(int)length frequency:(float)frequency lastTimestamp:(unint64_t *)timestamp;
- (id)copyPropertyForKey:(id)key;
- (unint64_t)getBootTimeInMicroSeconds;
- (void)dealloc;
- (void)sendNotificationForKey:(id)key andValue:(id)value;
- (void)start;
- (void)stop;
- (void)timerFired;
- (void)updateLastTimestampInDefaults;
@end

@implementation CBALSTelemetry

- (void)timerFired
{
  if (self->_alsLiveOnTelemetryEnabled)
  {
    LODWORD(v2) = 0.5;
    v3 = [(CBALSTelemetry *)self copyALSSampleHistoryWithLength:20 frequency:&self->_lastTimestampInMicroseconds lastTimestamp:v2];
    if (v3)
    {
      [(CBALSTelemetry *)self sendNotificationForKey:@"CBAmbientLightTelemetry" andValue:v3];
      MEMORY[0x1E69E5920](v3);
    }

    [(CBALSTelemetry *)self updateLastTimestampInDefaults];
  }
}

- (CBALSTelemetry)initWithQueue:(id)queue
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CBALSTelemetry;
  selfCopy = [(CBModule *)&v16 initWithQueue:queue];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBALSTelemetry", "Default");
    selfCopy->super._logHandle = v3;
    mach_timebase_info(&info);
    LODWORD(v4) = info.numer;
    LODWORD(v5) = info.denom;
    selfCopy->_timeFactor = v4 / v5 * 0.000000001;
    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
    selfCopy->_defaults = v6;
    v7 = [(NSUserDefaults *)selfCopy->_defaults BOOLForKey:@"CBAmbientLightTelemetry"];
    selfCopy->_alsLiveOnTelemetryEnabled = v7;
    if (selfCopy->_alsLiveOnTelemetryEnabled)
    {
      getBootTimeInMicroSeconds = [(CBALSTelemetry *)selfCopy getBootTimeInMicroSeconds];
      if (getBootTimeInMicroSeconds == [-[NSUserDefaults objectForKey:](selfCopy->_defaults objectForKey:{@"CBAmbientLightTelemetryBootTime", "unsignedLongLongValue"}])
      {
        v13 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"CBAmbientLightTelemetryLastTimestamp"];
        if (v13)
        {
          unsignedLongLongValue = [v13 unsignedLongLongValue];
          selfCopy->_lastTimestampInMicroseconds = unsignedLongLongValue;
        }
      }

      else
      {
        [(NSUserDefaults *)selfCopy->_defaults removeObjectForKey:@"CBAmbientLightTelemetryLastTimestamp"];
      }

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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v21, getBootTimeInMicroSeconds, selfCopy->_lastTimestampInMicroseconds);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "bootTime=%llu _lastTimestampInMicroseconds=%llu", v21, 0x16u);
      }

      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:getBootTimeInMicroSeconds];
      [(NSUserDefaults *)selfCopy->_defaults setObject:v12 forKey:@"CBAmbientLightTelemetryBootTime"];
      MEMORY[0x1E69E5920](v12);
    }

    return selfCopy;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    return 0;
  }
}

- (void)start
{
  selfCopy = self;
  v9 = a2;
  if (self->_alsService && !selfCopy->_timer && selfCopy->_alsLiveOnTelemetryEnabled)
  {
    selfCopy->_timer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super._queue);
    if (selfCopy->_timer)
    {
      dispatch_source_set_timer(selfCopy->_timer, 0, 0x29E8D60800uLL, 0x77359400uLL);
      timer = selfCopy->_timer;
      handler = MEMORY[0x1E69E9820];
      v4 = -1073741824;
      v5 = 0;
      v6 = __23__CBALSTelemetry_start__block_invoke;
      v7 = &unk_1E867B480;
      v8 = selfCopy;
      dispatch_source_set_event_handler(timer, &handler);
      dispatch_activate(selfCopy->_timer);
    }
  }
}

- (void)stop
{
  if (self->_timer)
  {
    dispatch_source_cancel(self->_timer);
    dispatch_release(self->_timer);
    self->_timer = 0;
  }
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(CBALSTelemetry *)self stop];
  if (selfCopy->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
    selfCopy->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_defaults).n128_u64[0];
  selfCopy->_defaults = 0;
  v3.receiver = selfCopy;
  v3.super_class = CBALSTelemetry;
  [(CBModule *)&v3 dealloc];
}

- (id)copyPropertyForKey:(id)key
{
  selfCopy = self;
  v8 = a2;
  keyCopy = key;
  v6 = 0;
  if ([key isEqualToString:@"CBAmbientLightTelemetry"])
  {
    v5 = 0;
    LODWORD(v3) = 1.0;
    return [(CBALSTelemetry *)selfCopy copyALSSampleHistoryWithLength:30 frequency:&v5 lastTimestamp:v3];
  }

  return v6;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v5 = 0;
  if ([key isEqualToString:@"CBSystemDidWakeFromSleep"])
  {
    [(CBALSTelemetry *)self handleSystemDidWakeFromSleepPropertyHandler:property];
    return 1;
  }

  else if ([key isEqualToString:@"CBSystemPrepareForSleep"])
  {
    [(CBALSTelemetry *)self handleSystemPrepareForSleepPropertyHandler:property];
    return 1;
  }

  return v5;
}

- (unint64_t)getBootTimeInMicroSeconds
{
  v8 = *MEMORY[0x1E69E9840];
  v5[2] = self;
  v5[1] = a2;
  *v7 = 0x1500000001;
  v5[0] = 16;
  if (sysctl(v7, 2u, &v3, v5, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return (v4 + v3 * 1000000.0);
  }
}

- (BOOL)setALSService:(__IOHIDServiceClient *)service
{
  if (self->_alsService)
  {
    return 0;
  }

  v4 = IOHIDServiceClientCopyProperty(service, @"ALSSensorType");
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 intValue] == 8 || objc_msgSend(v4, "intValue") == 9))
    {
      self->_alsService = service;
    }

    MEMORY[0x1E69E5920](v4);
  }

  return self->_alsService != 0;
}

- (id)copyALSSampleHistoryWithLength:(int)length frequency:(float)frequency lastTimestamp:(unint64_t *)timestamp
{
  v70 = &v89;
  v103 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v99 = a2;
  lengthCopy = length;
  frequencyCopy = frequency;
  timestampCopy = timestamp;
  v95 = 0;
  v6 = std::__math::fmin[abi:de200100]<float,unsigned int,0>(2, frequency, v5);
  *&v6 = v6;
  frequencyCopy = *&v6;
  LODWORD(v7) = 1232348160;
  *&v6 = ((1.0 / *&v6) * 1000000.0) + -50000.0;
  v94 = *&v6;
  lengthCopy = std::__math::fmin[abi:de200100]<int,unsigned int,0>(lengthCopy, 20, v6, v7);
  if (selfCopy->_alsService)
  {
    context = objc_autoreleasePoolPush();
    *(v70 + 23) = 0;
    v8 = mach_continuous_time();
    v9 = v70;
    *(v70 + 10) = v8;
    *(v70 + 9) = IOHIDServiceClientCopyProperty(*(*(v9 + 17) + 32), @"CBALSHistory");
    v10 = mach_continuous_time();
    v11 = v70;
    *(v70 + 8) = (v10 - *(v70 + 10)) * *(*(v70 + 17) + 56);
    if (*(v11 + 9))
    {
      if ([*(v70 + 9) length] == 684)
      {
        *v70 = mach_continuous_time() * *(*(v70 + 17) + 56);
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceReferenceDate];
        v87 = v16;
        v58 = 0x1E695D000uLL;
        v86 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v70 + 31)];
        v85 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v70 + 31)];
        v84 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v70 + 31)];
        v83 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v70 + 31)];
        bytes = [*(v70 + 9) bytes];
        for (i = 0; i < 0x14; ++i)
        {
          v80 = (*(bytes + 680) - (i + 1)) % 20;
          v57 = v80 < 0 ? v80 + 20 : v80;
          v19 = std::__math::fmin[abi:de200100]<int,unsigned int,0>(v57, 19, v17, v18);
          v17 = std::__math::fmax[abi:de200100]<int,int,0>(v19, 0);
          v80 = v17;
          if ((!**(v70 + 14) || *(bytes + 34 * v80 + 4) < **(v70 + 14) - *(v70 + 12)) && ((*(bytes + 34 * v80 + 28) & 1) == 0 || *(bytes + 34 * v80 + 31) != 65))
          {
            v55 = 34;
            v79 = *(bytes + 34 * v80 + 4) / 1000000.0;
            v78 = v87 + v79 - *v70;
            v51 = v86;
            v54 = 0x1E696A000uLL;
            [v86 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v78)}];
            v52 = v85;
            LODWORD(v20) = *(bytes + 34 * v80 + 12);
            [v85 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v20)}];
            v53 = v84;
            LODWORD(v21) = *(bytes + 34 * v80 + 20);
            [v84 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v21)}];
            v56 = v83;
            LODWORD(v22) = *(bytes + 34 * v80 + 24);
            [v83 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v22)}];
            if (*(*(v70 + 17) + 16))
            {
              v50 = *(*(v70 + 17) + 16);
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

              v50 = inited;
            }

            oslog = v50;
            v76 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              v46 = oslog;
              *v47 = v76;
              *&v23 = *(bytes + 34 * v80 + 12);
              v48 = v102;
              __os_log_helper_16_0_4_4_0_8_0_4_0_8_0(v102, i, v23, v80, *&v78);
              _os_log_debug_impl(&dword_1DE8E5000, oslog, v76, "ALS samples history [%d]: lux = %f, index = %d, timestamp = %f", v102, 0x22u);
            }

            v24 = v70;
            ++*(v70 + 23);
            **(v24 + 14) = *(bytes + 34 * v80 + 4);
            if ([v86 count] >= *(v70 + 31))
            {
              break;
            }
          }
        }

        v45 = MEMORY[0x1E696AD98];
        v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v86, "count")}];
        if ([v75 unsignedIntValue])
        {
          v43 = objc_alloc(MEMORY[0x1E695DF20]);
          v42 = v75;
          v39 = [objc_msgSend(v86 "reverseObjectEnumerator")];
          v40 = [objc_msgSend(v85 "reverseObjectEnumerator")];
          v41 = [objc_msgSend(v84 "reverseObjectEnumerator")];
          v44 = &v32;
          v25 = [v43 initWithObjectsAndKeys:{v75, @"count", v39, @"timestamp", v40, @"lux", v41, @"color_x", objc_msgSend(objc_msgSend(v83, "reverseObjectEnumerator"), "allObjects"), @"color_y", 0}];
          *(v70 + 13) = v25;
        }

        v26 = (mach_continuous_time() - *(v70 + 10));
        v27 = *(v70 + 17);
        v38 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
        v74 = v26 * *(v27 + 56);
        v73 = (mach_continuous_time() - *(v70 + 10)) * *(*(v70 + 17) + 56);
        if (*(*(v70 + 17) + 16))
        {
          v37 = *(*(v70 + 17) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v36 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v36 = init_default_corebrightness_log();
          }

          v37 = v36;
        }

        v72 = v37;
        v71 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v72;
          *v34 = v71;
          v28 = *(v70 + 23);
          v29 = *(*(v70 + 17) + 64);
          v30 = *(v70 + 8);
          v35 = v101;
          __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(v101, v28, v29, v30, *&v74, *&v73);
          _os_log_impl(&dword_1DE8E5000, v33, v34[0], "ALS samples history: itemsProcessed=%u newLastTimestamp=%lluus durations=(dataRetrieval=%fs partial=%fs overall=%fs)", v35, 0x30u);
        }

        *(v70 + 9) = 0;
      }

      else
      {
        if (*(*(v70 + 17) + 16))
        {
          v63 = *(*(v70 + 17) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v62 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v62 = init_default_corebrightness_log();
          }

          v63 = v62;
        }

        v14 = v70;
        *(v70 + 3) = v63;
        v91 = 16;
        if (os_log_type_enabled(v14[3], OS_LOG_TYPE_ERROR))
        {
          v59 = *(v70 + 3);
          *v60 = v91;
          v61 = v90;
          __os_log_helper_16_0_0(v90);
          _os_log_error_impl(&dword_1DE8E5000, v59, v60[0], "Unexpected size!", v90, 2u);
        }

        v15 = v70;
        *(v70 + 18) = 0;
        *(v15 + 9) = 1;
      }
    }

    else
    {
      if (*(*(v70 + 17) + 16))
      {
        v68 = *(*(v70 + 17) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v67 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v67 = init_default_corebrightness_log();
        }

        v68 = v67;
      }

      v12 = v70;
      *(v70 + 7) = v68;
      v93 = 16;
      if (os_log_type_enabled(v12[7], OS_LOG_TYPE_ERROR))
      {
        log = *(v70 + 7);
        *type = v93;
        buf = v92;
        __os_log_helper_16_0_0(v92);
        _os_log_error_impl(&dword_1DE8E5000, log, type[0], "Unable to retrieve history from ALS!", v92, 2u);
      }

      v13 = v70;
      *(v70 + 18) = 0;
      *(v13 + 9) = 1;
    }

    objc_autoreleasePoolPop(context);
    if (!*(v70 + 9))
    {
      *(v70 + 18) = *(v70 + 13);
    }
  }

  else
  {
    *(v70 + 18) = 0;
  }

  return *(v70 + 18);
}

- (void)updateLastTimestampInDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:self->_lastTimestampInMicroseconds];
  [(NSUserDefaults *)self->_defaults setObject:v2 forKey:@"CBAmbientLightTelemetryLastTimestamp"];
  [(NSUserDefaults *)self->_defaults synchronize];
  MEMORY[0x1E69E5920](v2);
}

- (void)sendNotificationForKey:(id)key andValue:(id)value
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

@end