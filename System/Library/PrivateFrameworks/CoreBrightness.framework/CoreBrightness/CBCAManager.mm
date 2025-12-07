@interface CBCAManager
- (CBCAManager)initWithCADisplay:(id)display andQueue:(id)queue;
- (void)colorRampPropertyHandler:(id)handler;
- (void)dealloc;
- (void)displayBrightnessPropertyHandler:(id)handler;
- (void)handleNotificationForKey:(id)key withProperty:(id)property;
- (void)nitsThresholdPLCPropertyHandler:(id)handler;
- (void)sendNotificationForKey:(id)key andValue:(id)value;
- (void)updateDigitalDimmingBrightnessScaler:(id)scaler;
@end

@implementation CBCAManager

- (CBCAManager)initWithCADisplay:(id)display andQueue:(id)queue
{
  selfCopy = self;
  v22 = a2;
  displayCopy = display;
  queueCopy = queue;
  if (display && (v15 = displayCopy, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16.receiver = selfCopy;
    v16.super_class = CBCAManager;
    selfCopy = [(CBModule *)&v16 initWithQueue:queueCopy];
    if (selfCopy)
    {
      selfCopy->_digitalDimmingBrightnessScaler = 1.0;
      v9 = 0x1ECDAF000uLL;
      selfCopy->_currentlySetMatrix[0] = 1.0;
      selfCopy->_currentlySetMatrix[1] = 0.0;
      selfCopy->_currentlySetMatrix[2] = 0.0;
      selfCopy->_currentlySetMatrix[3] = 0.0;
      selfCopy->_currentlySetMatrix[4] = 1.0;
      selfCopy->_currentlySetMatrix[5] = 0.0;
      selfCopy->_currentlySetMatrix[6] = 0.0;
      selfCopy->_currentlySetMatrix[7] = 0.0;
      selfCopy->_currentlySetMatrix[8] = 1.0;
      selfCopy->_currentlySetScaler = 1.0;
      context = objc_autoreleasePoolPush();
      v10 = MEMORY[0x1E696AEC0];
      v4 = os_log_create("com.apple.CoreBrightness.CBCAManager", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(displayCopy, "displayId"), v9), "UTF8String"]);
      v5 = context;
      selfCopy->super._logHandle = v4;
      objc_autoreleasePoolPop(v5);
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      v7 = [v6 initWithObjects:{displayCopy, 0}];
      selfCopy->_displays = v7;
    }

    return selfCopy;
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

    v19 = inited;
    v18 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      *type = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_error_impl(&dword_1DE8E5000, log, type[0], "invalid display", v17, 2u);
    }

    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    return 0;
  }
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_displays).n128_u64[0];
  if (selfCopy->super._logHandle)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->super._logHandle).n128_u64[0];
    selfCopy->super._logHandle = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBCAManager;
  [(CBModule *)&v3 dealloc];
}

- (void)handleNotificationForKey:(id)key withProperty:(id)property
{
  if ([key isEqualToString:@"ColorRamp"])
  {
    [(CBCAManager *)self colorRampPropertyHandler:property];
  }

  else if ([key isEqualToString:@"DisplayBrightness"])
  {
    [(CBCAManager *)self displayBrightnessPropertyHandler:property];
  }

  else if ([key isEqualToString:@"nitsExceedsPLCThreshold"])
  {
    [(CBCAManager *)self nitsThresholdPLCPropertyHandler:property];
  }

  else if ([key isEqualToString:@"UpdateDigitalDimmingBrightnessScaler"])
  {
    [(CBCAManager *)self updateDigitalDimmingBrightnessScaler:property];
  }
}

- (void)sendNotificationForKey:(id)key andValue:(id)value
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (void)updateDigitalDimmingBrightnessScaler:(id)scaler
{
  if (scaler)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [scaler objectForKey:@"Scaler"];
      if (v4)
      {
        [v4 floatValue];
        if (self->_digitalDimmingBrightnessScaler != v3)
        {
          self->_digitalDimmingBrightnessScaler = v3;
          [(NSMutableArray *)self->_displays enumerateObjectsUsingBlock:?];
        }
      }
    }
  }
}

uint64_t __52__CBCAManager_updateDigitalDimmingBrightnessScaler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) != 0 && *(a1 + 32) != -40)
  {
    if (*(*(a1 + 32) + 16))
    {
      v7 = *(*(a1 + 32) + 16);
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

      v7 = inited;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v10, COERCE__INT64(*(*(a1 + 32) + 80)));
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_INFO, "Updating digital dimming brightness scaler to %f", v10, 0xCu);
    }

    v3 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
    v4 = *(a1 + 32);
    *&v5 = *(v4 + 76) * *(v4 + 80);
    return [v3 setColorMatrix:v4 + 40 scale:v5 rampDuration:0.0];
  }

  return result;
}

- (void)colorRampPropertyHandler:(id)handler
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_displays enumerateObjectsUsingBlock:?];
  }
}

void __40__CBCAManager_colorRampPropertyHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = a4;
  v39 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [*(a1 + 32) objectForKey:@"ColorRampTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0;
      v36 = [*(a1 + 32) objectForKey:@"ColorRampPeriod"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v36 doubleValue];
        v37 = v4;
      }

      v35 = 1.0;
      v34 = [*(a1 + 32) objectForKey:@"ColorScaler"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v34 floatValue];
        v35 = v5;
      }

      if ([v38 count] == 9)
      {
        for (i = 0; i < 9; ++i)
        {
          [objc_msgSend(v38 objectAtIndex:{i), "floatValue"}];
          v47[i] = v6;
        }

        if (*(*(a1 + 40) + 16))
        {
          v21 = *(*(a1 + 40) + 16);
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

          v21 = inited;
        }

        v32 = v21;
        v31 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_3_4_0_8_64_8_0(v46, [v42 displayId], v38, v37);
          _os_log_debug_impl(&dword_1DE8E5000, v32, v31, "pushing matrix to display %u CA: %@ with ramp period %f", v46, 0x1Cu);
        }

        __memcpy_chk();
        *(*(a1 + 40) + 76) = v35;
        v7 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
        *&v8 = v35 * *(*(a1 + 40) + 80);
        [v7 setColorMatrix:v47 scale:v8 rampDuration:*&v37];
        v30 = [*(a1 + 32) objectForKey:@"ColorRampWhitePointTarget"];
        if ([v30 count] == 2)
        {
          [v30 objectAtIndexedSubscript:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v30 objectAtIndexedSubscript:1];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (*(*(a1 + 40) + 16))
              {
                v19 = *(*(a1 + 40) + 16);
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v18 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v18 = init_default_corebrightness_log();
                }

                v19 = v18;
              }

              oslog = v19;
              v28 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                [objc_msgSend(v30 objectAtIndex:{0), "floatValue"}];
                *&v17 = v9;
                [objc_msgSend(v30 objectAtIndex:{1), "floatValue"}];
                __os_log_helper_16_0_3_8_0_8_0_8_0(v45, v17, COERCE__INT64(v10), v37);
                _os_log_impl(&dword_1DE8E5000, oslog, v28, "pushing white point [%f, %f] with ramp period %f", v45, 0x20u);
              }
            }
          }
        }
      }

      else
      {
        if (*(*(a1 + 40) + 16))
        {
          v16 = *(*(a1 + 40) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v15 = init_default_corebrightness_log();
          }

          v16 = v15;
        }

        v27 = v16;
        v26 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_8_0(v44, [v38 count]);
          _os_log_error_impl(&dword_1DE8E5000, v27, v26, "Unexpected number or elements in the matrix (%lu)", v44, 0xCu);
        }
      }
    }

    else
    {
      if (*(*(a1 + 40) + 16))
      {
        v14 = *(*(a1 + 40) + 16);
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

      v25 = v14;
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v11 = v25;
        v12 = v24;
        __os_log_helper_16_0_0(v23);
        _os_log_error_impl(&dword_1DE8E5000, v11, v12, "Unexpected color ramp target type", v23, 2u);
      }
    }
  }
}

- (void)displayBrightnessPropertyHandler:(id)handler
{
  selfCopy = self;
  v19 = a2;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displays = selfCopy->_displays;
    v11 = MEMORY[0x1E69E9820];
    v12 = -1073741824;
    v13 = 0;
    v14 = __48__CBCAManager_displayBrightnessPropertyHandler___block_invoke;
    v15 = &unk_1E867BD88;
    v16 = handlerCopy;
    v17 = selfCopy;
    [(NSMutableArray *)displays enumerateObjectsUsingBlock:?];
  }

  else
  {
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

    oslog = logHandle;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, v5, "Unexpected brightness type", v8, 2u);
    }
  }
}

void __48__CBCAManager_displayBrightnessPropertyHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [*(a1 + 32) objectForKeyedSubscript:@"NitsPhysical"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v30 floatValue];
      v29 = v4;
      if (*(*(a1 + 40) + 16))
      {
        v16 = *(*(a1 + 40) + 16);
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

        v16 = inited;
      }

      v28 = v16;
      v27 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_2_4_0_8_0(v38, [v34 displayId], COERCE__INT64(v29));
        _os_log_impl(&dword_1DE8E5000, v28, v27, "pushing nits to CA: display=%u | nits=%f", v38, 0x12u);
      }

      if (*(*(a1 + 40) + 16))
      {
        v14 = *(*(a1 + 40) + 16);
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

      v26 = v14;
      v25 = OS_SIGNPOST_INTERVAL_BEGIN;
      v24 = 0xEEEEB0B5B2B2EEEELL;
      if (os_signpost_enabled(v14))
      {
        __os_log_helper_16_0_2_4_0_8_0(v37, [v34 displayId], COERCE__INT64(v29));
        _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v26, v25, v24, "SetNits", "display=%u | nits=%f", v37, 0x12u);
      }

      v5 = [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
      *&v6 = v29;
      [v5 setNits:v6];
      if (*(*(a1 + 40) + 16))
      {
        v12 = *(*(a1 + 40) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v11 = init_default_corebrightness_log();
        }

        v12 = v11;
      }

      v23 = v12;
      v22 = OS_SIGNPOST_INTERVAL_END;
      v21 = 0xEEEEB0B5B2B2EEEELL;
      if (os_signpost_enabled(v12))
      {
        __os_log_helper_16_0_2_4_0_8_0(v36, [v34 displayId], COERCE__INT64(v29));
        _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v23, v22, v21, "SetNits", "display=%u | nits=%f", v36, 0x12u);
      }

      [*(a1 + 40) sendNotificationForKey:@"CBCACommit" andValue:*(a1 + 32)];
    }

    else
    {
      if (*(*(a1 + 40) + 16))
      {
        v10 = *(*(a1 + 40) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v9 = init_default_corebrightness_log();
        }

        v10 = v9;
      }

      oslog = v10;
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v7 = oslog;
        v8 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_error_impl(&dword_1DE8E5000, v7, v8, "Unexpected nits type", v18, 2u);
      }
    }
  }
}

- (void)nitsThresholdPLCPropertyHandler:(id)handler
{
  selfCopy = self;
  v19 = a2;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displays = selfCopy->_displays;
    v11 = MEMORY[0x1E69E9820];
    v12 = -1073741824;
    v13 = 0;
    v14 = __47__CBCAManager_nitsThresholdPLCPropertyHandler___block_invoke;
    v15 = &unk_1E867BD88;
    v16 = selfCopy;
    v17 = handlerCopy;
    [(NSMutableArray *)displays enumerateObjectsUsingBlock:?];
  }

  else
  {
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

    oslog = logHandle;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, v5, "Unexpected PLC threshold type", v8, 2u);
    }
  }
}

uint64_t __47__CBCAManager_nitsThresholdPLCPropertyHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    if (*(*(a1 + 32) + 16))
    {
      v5 = *(*(a1 + 32) + 16);
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

      v5 = inited;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (([*(a1 + 40) BOOLValue] ^ 1))
      {
        v3 = "ON";
      }

      else
      {
        v3 = "OFF";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_INFO, "pushing update in compositing to CA: %s", v8, 0xCu);
    }

    return [objc_msgSend(objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")];
  }

  return result;
}

@end