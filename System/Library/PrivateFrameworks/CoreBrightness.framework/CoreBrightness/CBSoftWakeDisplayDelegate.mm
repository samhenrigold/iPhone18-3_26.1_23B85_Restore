@interface CBSoftWakeDisplayDelegate
- (CBSoftWakeDisplayDelegate)init;
- (int64_t)action:(int64_t)action;
- (int64_t)setFactor:(float)factor withFade:(float)fade;
- (void)dealloc;
@end

@implementation CBSoftWakeDisplayDelegate

- (CBSoftWakeDisplayDelegate)init
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBSoftWakeDisplayDelegate;
  selfCopy = [(CBSoftWakeDisplayDelegate *)&v4 init];
  if (selfCopy)
  {
    selfCopy->_state = 0;
    v2 = os_log_create("com.apple.CoreBrightness.Display.SoftWake", "default");
    selfCopy->_logHandle = v2;
    selfCopy->_fade.rampDoneCallback = 0;
    selfCopy->_fade.refcon = 0;
    selfCopy->_fade.coeff[0] = 0.0;
    selfCopy->_fade.coeff[1] = 1.0;
    selfCopy->_fade.coeff[2] = 0.0;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_logHandle).n128_u64[0];
  selfCopy->_logHandle = 0;
  v3.receiver = selfCopy;
  v3.super_class = CBSoftWakeDisplayDelegate;
  [(CBSoftWakeDisplayDelegate *)&v3 dealloc];
}

- (int64_t)action:(int64_t)action
{
  v14 = *MEMORY[0x1E69E9840];
  if (canTransition(self->_state, action))
  {
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
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
      if (action == 1)
      {
        v3 = "activated";
      }

      else
      {
        v3 = "deactivated";
      }

      __os_log_helper_16_2_1_8_32(v13, v3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Soft wake %s", v13, 0xCu);
    }

    self->_fade.Fstart = 0.0;
    self->_fade.Fcurrent = 0.0;
    self->_fade.Ftarget = 0.0;
    self->_fade.period = 0.0;
    self->_state = action;
    return 0;
  }

  else
  {
    if (self->_logHandle)
    {
      v6 = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_2_8_0_8_0(v12, self->_state, action);
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "Cannot transition from %ld to %ld", v12, 0x16u);
    }

    return 1;
  }
}

- (int64_t)setFactor:(float)factor withFade:(float)fade
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  factorCopy = factor;
  fadeCopy = fade;
  if (factor <= 1.0 && (factor = fadeCopy, fadeCopy >= 0.0))
  {
    if ([(CBSoftWakeDisplayDelegate *)selfCopy isActive])
    {
      selfCopy->_fade.period = fadeCopy;
      selfCopy->_fade.startTime = CFAbsoluteTimeGetCurrent();
      selfCopy->_fade.Fstart = selfCopy->_fade.Fcurrent;
      selfCopy->_fade.Ftarget = factorCopy;
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v23, "Soft Wake", COERCE__INT64(selfCopy->_fade.Fstart), COERCE__INT64(selfCopy->_fade.Ftarget), *&selfCopy->_fade.period);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[BRT update: %s]: Ramping up factor %f -> %f in %f", v23, 0x2Au);
      }

      return 0;
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v10 = selfCopy->_logHandle;
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

      v15 = v10;
      v14 = 16;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v7 = v15;
        v8 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, v7, v8, "Trying to start ramp up when not active", v13, 2u);
      }

      return 1;
    }
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v12 = selfCopy->_logHandle;
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

    v17 = v12;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_2_8_0_8_0(v24, COERCE__INT64(factorCopy), COERCE__INT64(fadeCopy));
      _os_log_error_impl(&dword_1DE8E5000, v17, v16, "Out of range factor %f or fade %f", v24, 0x16u);
    }

    return 1;
  }
}

@end