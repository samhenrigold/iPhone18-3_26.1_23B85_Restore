@interface CBSliderCommitTelemetry
+ (id)sliderInfoToNSDictionary:(const CBSliderCommitInfo *)dictionary;
- (BOOL)getUserAABParams:(CBAABParams *)params key:(id)key;
- (BOOL)handleAODStateUpdate:(unint64_t)update transitionTime:(float)time context:(id)context;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (CBSliderCommitInfo)addOrUpdateEntryWithTimestamp:(int64_t)timestamp slider:(float)slider apce:(float)apce andTrackedState:(TrackedState)state;
- (CBSliderCommitInfo)getLastFilledEntry;
- (CBSliderCommitInfo)getNextEntryAndAdvanceBufferIndex;
- (CBSliderCommitTelemetry)initWithQueue:(id)queue andDisplayContainer:(id)container;
- (double)timestampFromCurveDistionary:(id)distionary;
- (id)copyPropertyForKey:(id)key;
- (void)cancelDelayedAPCETimer;
- (void)delayedAPCETimerHandler:(CBSliderCommitInfo *)handler;
- (void)fillEntry:(CBSliderCommitInfo *)entry withTimestamp:(int64_t)timestamp andRestoreTimeTarget:(int64_t)target andAABParams:(CBAABParams *)params andAlternativeAABParams:(CBAABParams *)bParams;
- (void)fillEntry:(CBSliderCommitInfo *)entry withTimestamp:(int64_t)timestamp slider:(float)slider apce:(float)apce andTrackedState:(TrackedState)state;
- (void)handleNotificationForKey:(id)key withProperty:(id)property;
- (void)logAfterUserBrightnessCommitWithTimestamp:(int64_t)timestamp slider:(float)slider apce:(float)apce andTrackedState:(TrackedState)state;
- (void)logAllFilledEntries;
- (void)reportCommit:(CBSliderCommitInfo *)commit;
- (void)sendNotificationForKey:(id)key withValue:(id)value;
@end

@implementation CBSliderCommitTelemetry

- (CBSliderCommitTelemetry)initWithQueue:(id)queue andDisplayContainer:(id)container
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v21 = a2;
  queueCopy = queue;
  containerCopy = container;
  v18.receiver = self;
  v18.super_class = CBSliderCommitTelemetry;
  selfCopy = [(CBModule *)&v18 initWithQueue:queue];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v4 = os_log_create("com.apple.CoreBrightness.SliderCommitTelemetry", "default");
  *(selfCopy + 2) = v4;
  v5 = os_log_create("com.apple.CoreBrightness.SliderCommitTelemetry", "LiveOn");
  *(selfCopy + 2920) = v5;
  if (!*(selfCopy + 2) || !*(selfCopy + 2920))
  {
    v12 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v17 = v12;
    v16 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v15, 2u);
    }
  }

  v6 = dispatch_queue_create("com.apple.CoreBrightness.SliderCommitTelemetry", 0);
  *(selfCopy + 6) = v6;
  *(selfCopy + 2922) = 0;
  *(selfCopy + 4) = containerCopy;
  *(selfCopy + 2907) = 0;
  *(selfCopy + 2908) = 0;
  *(selfCopy + 2923) = 0;
  *(selfCopy + 2924) = 0;
  *(selfCopy + 23408) = 0;
  *(selfCopy + 2909) = 5;
  for (i = 0; i < 0x64; *(std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](selfCopy + 56, i++) + 8) = -1)
  {
    *std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](selfCopy + 56, i) = -1;
  }

  MainDisplay = IOMobileFramebufferGetMainDisplay();
  if (!MainDisplay)
  {
    return selfCopy;
  }

  if (*(selfCopy + 2))
  {
    v9 = *(selfCopy + 2);
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

    v9 = inited;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_4_0(v24, MainDisplay);
    _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "SliderCommitTelemetry Initialization | Unable to obtain IOMFB display object | ErrorCode=0x%x", v24, 8u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  return 0;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  selfCopy = self;
  v39 = a2;
  propertyCopy = property;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([keyCopy isEqualToString:@"CBFinalBrightnessCommitDelay"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy->_delayedAPCEDelay = [propertyCopy longLongValue];
        v41 = 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else if ([keyCopy isEqualToString:@"DisplayBrightness"])
    {
      if (selfCopy->_initialFactorUpdateArrived && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v36 = [propertyCopy objectForKey:@"Commit"];
        v35 = [propertyCopy objectForKey:@"Brightness"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v36 BOOLValue])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            Current = CFAbsoluteTimeGetCurrent();
            [v35 floatValue];
            v14 = v4;
            [(CBSliderCommitTelemetry *)selfCopy getAPCE];
            LODWORD(v6) = v5;
            LODWORD(v7) = v14;
            LODWORD(v34) = selfCopy->_state;
            [(CBSliderCommitTelemetry *)selfCopy logAfterUserBrightnessCommitWithTimestamp:Current slider:v34 apce:v7 andTrackedState:v6];
          }
        }

        v41 = 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else if ([keyCopy isEqualToString:@"DisplayBrightnessAuto"])
    {
      bOOLValue = [propertyCopy BOOLValue];
      autobrightnessEnabled = selfCopy->_state.autobrightnessEnabled;
      selfCopy->_state.autobrightnessEnabled = bOOLValue & 1;
      if (selfCopy->_initialFactorUpdateArrived && (bOOLValue & 1) != 0 && autobrightnessEnabled != (bOOLValue & 1))
      {
        loggingQueue = selfCopy->_loggingQueue;
        block = MEMORY[0x1E69E9820];
        v27 = -1073741824;
        v28 = 0;
        v29 = __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke;
        v30 = &unk_1E867B480;
        v31 = selfCopy;
        dispatch_async(loggingQueue, &block);
      }

      v41 = 1;
    }

    else if ([keyCopy isEqualToString:@"EcoMode"])
    {
      selfCopy->_state.ecoModeEnabled = [propertyCopy BOOLValue];
      v41 = 1;
    }

    else if ([keyCopy isEqualToString:@"CBUIUserStyle"])
    {
      selfCopy->_state.darkThemeApplied = [propertyCopy integerValue] == 2;
      v41 = 1;
    }

    else if ([keyCopy isEqualToString:@"CBUIOrientation"])
    {
      v12 = 1;
      if ([propertyCopy integerValue] != 4)
      {
        v12 = [propertyCopy integerValue] == 3;
      }

      selfCopy->_state.landscapeOrientation = v12;
      v41 = 1;
    }

    else if ([keyCopy isEqualToString:@"ALSUserPreference"])
    {
      v22[0] = 0;
      v22[1] = v22;
      v23 = 0x20000000;
      v24 = 32;
      [(CBSliderCommitTelemetry *)selfCopy timestampFromCurveDistionary:propertyCopy];
      v25 = v9;
      v10 = selfCopy->_loggingQueue;
      v15 = MEMORY[0x1E69E9820];
      v16 = -1073741824;
      v17 = 0;
      v18 = __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke_2;
      v19 = &unk_1E867C080;
      v20 = selfCopy;
      v21 = v22;
      dispatch_async(v10, &v15);
      v41 = 1;
      _Block_object_dispose(v22, 8);
    }

    else if (([keyCopy isEqualToString:@"DisplayBrightnessFactorWithFade"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DisplayBrightnessFactorWithFade")) && propertyCopy)
    {
      selfCopy->_initialFactorUpdateArrived = 1;
      v41 = 1;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke(uint64_t a1)
{
  v7 = a1;
  v6 = a1;
  [*(a1 + 32) getUserAABParams:? alternativeAABParams:?];
  v3 = [*(a1 + 32) getNextEntryAndAdvanceBufferIndex];
  [*(a1 + 32) fillEntry:v3 withTimestamp:CFAbsoluteTimeGetCurrent() andAABParams:v5 andAlternativeAABParams:v4];
  return [*(a1 + 32) reportCommit:v3];
}

double __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = [*(*(a1 + 32) + 32) copyPropertyForKey:@"DisplayBrightnessFactor"];
  if (*(*(a1 + 32) + 23408))
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue] & 1) == 0 && *(*(a1 + 32) + 23264))
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

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v9, *(*(*(a1 + 40) + 8) + 24));
          _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Set ALSUserPreference: AAB reset after in-app adjustment (restore time = %f)", v9, 0xCu);
        }

        [*(a1 + 32) getUserAABParams:*(a1 + 32) + 23280 alternativeAABParams:{*(a1 + 32) + 23320, &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets, &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets}];
        v7 = [*(a1 + 32) getNextEntryAndAdvanceBufferIndex];
        [*(a1 + 32) fillEntry:v7 withTimestamp:CFAbsoluteTimeGetCurrent() andRestoreTimeTarget:*(*(*(a1 + 40) + 8) + 24) andAABParams:*(a1 + 32) + *(v2 + 488) andAlternativeAABParams:*(a1 + 32) + *(v3 + 492)];
        [*(a1 + 32) reportCommit:v7];
      }
    }
  }

  *&result = MEMORY[0x1E69E5920](v8).n128_u64[0];
  return result;
}

- (id)copyPropertyForKey:(id)key
{
  if ([key isEqualToString:@"CBFinalBrightnessCommitDelay"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:self->_delayedAPCEDelay];
  }

  if ([key isEqualToString:@"CBSupportsFinalCommit"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  }

  return 0;
}

- (void)handleNotificationForKey:(id)key withProperty:(id)property
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v26 = a2;
  keyCopy = key;
  propertyCopy = property;
  if ([key isEqualToString:@"DisplayOn"])
  {
    if ([propertyCopy BOOLValue])
    {
      if (selfCopy->_displayOffTimestamp > 0.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v16 = Current - selfCopy->_displayOffTimestamp;
        if (v16 > selfCopy->_longestInactivityLength)
        {
          selfCopy->_longestInactivityLength = v16;
          selfCopy->_inactivityStartTimestamp = selfCopy->_displayOffTimestamp;
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
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_2_8_0_8_0(v28, *&selfCopy->_longestInactivityLength, *&selfCopy->_inactivityStartTimestamp);
            _os_log_impl(&dword_1DE8E5000, oslog, type, "Display turns on: Longest inactivity length is %f seconds with start timestamp = %f", v28, 0x16u);
          }
        }
      }

      loggingQueue = selfCopy->_loggingQueue;
      v8 = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke_71;
      v12 = &unk_1E867B480;
      v13 = selfCopy;
      dispatch_async(loggingQueue, &v8);
    }

    else
    {
      selfCopy->_displayOffTimestamp = CFAbsoluteTimeGetCurrent();
      v4 = selfCopy->_loggingQueue;
      block = MEMORY[0x1E69E9820];
      v19 = -1073741824;
      v20 = 0;
      v21 = __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke;
      v22 = &unk_1E867B480;
      v23 = selfCopy;
      dispatch_async(v4, &block);
    }
  }
}

void __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  if (!*(*(a1 + 32) + 23376))
  {
    goto LABEL_21;
  }

  if (*(*(a1 + 32) + 16))
  {
    v8 = *(*(a1 + 32) + 16);
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

    v8 = inited;
  }

  v16 = v8;
  v15 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, "Canceling delayed APCE timer due to display off", v14, 2u);
  }

  [*(a1 + 32) cancelDelayedAPCETimer];
  v13 = [*(a1 + 32) getLastFilledEntry];
  if (v13)
  {
    *(v13 + 48) = 2;
    [*(a1 + 32) reportCommit:v13];
LABEL_21:
    [*(a1 + 32) getUserAABParams:*(a1 + 32) + 23280 alternativeAABParams:*(a1 + 32) + 23320];
    return;
  }

  if (*(*(a1 + 32) + 16))
  {
    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v3 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v3 = init_default_corebrightness_log();
    }

    v4 = v3;
  }

  v12 = v4;
  v11 = 16;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v1 = v12;
    v2 = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_error_impl(&dword_1DE8E5000, v1, v2, "Last entry == nil when canceling delayed APCE timer due to display off", v10, 2u);
  }
}

uint64_t __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke_71(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  result = [*(a1 + 32) getUserAABParams:&v12 alternativeAABParams:&v11];
  if (result)
  {
    if (aabParamsDiffer(&v12, (*(a1 + 32) + 23280)) || (result = aabParamsDiffer(&v11, (*(a1 + 32) + 23320)), (result & 1) != 0))
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

      oslog = v5;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v3 = type;
        __os_log_helper_16_0_0(v8);
        _os_log_impl(&dword_1DE8E5000, log, v3, "Different AAB params on unlock detected", v8, 2u);
      }

      v7 = [*(a1 + 32) getNextEntryAndAdvanceBufferIndex];
      [*(a1 + 32) fillEntry:v7 withTimestamp:CFAbsoluteTimeGetCurrent() andAABParams:&v12 andAlternativeAABParams:&v11];
      return [*(a1 + 32) reportCommit:v7];
    }
  }

  return result;
}

- (BOOL)handleAODStateUpdate:(unint64_t)update transitionTime:(float)time context:(id)context
{
  selfCopy = self;
  v16 = a2;
  updateCopy = update;
  timeCopy = time;
  contextCopy = context;
  if (update == 2)
  {
    loggingQueue = selfCopy->_loggingQueue;
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __71__CBSliderCommitTelemetry_handleAODStateUpdate_transitionTime_context___block_invoke;
    v11 = &unk_1E867B480;
    v12 = selfCopy;
    dispatch_async(loggingQueue, &v7);
  }

  return 1;
}

void __71__CBSliderCommitTelemetry_handleAODStateUpdate_transitionTime_context___block_invoke(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  if (*(*(a1 + 32) + 23376))
  {
    if (*(*(a1 + 32) + 16))
    {
      v8 = *(*(a1 + 32) + 16);
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

      v8 = inited;
    }

    v16 = v8;
    v15 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_1DE8E5000, log, type, "Canceling delayed APCE timer due to transitioning to AOD", v14, 2u);
    }

    [*(a1 + 32) cancelDelayedAPCETimer];
    v13 = [*(a1 + 32) getLastFilledEntry];
    if (v13)
    {
      *(v13 + 48) = 3;
      [*(a1 + 32) reportCommit:v13];
    }

    else
    {
      if (*(*(a1 + 32) + 16))
      {
        v4 = *(*(a1 + 32) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v3 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v3 = init_default_corebrightness_log();
        }

        v4 = v3;
      }

      v12 = v4;
      v11 = 16;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v1 = v12;
        v2 = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_error_impl(&dword_1DE8E5000, v1, v2, "Last entry == nil when canceling delayed APCE timer due to transitioning to AOD", v10, 2u);
      }
    }
  }
}

- (void)sendNotificationForKey:(id)key withValue:(id)value
{
  selfCopy = self;
  v16 = a2;
  keyCopy = key;
  valueCopy = value;
  if (self->super._notificationBlock)
  {
    v13 = _Block_copy(selfCopy->super._notificationBlock);
    if (v13)
    {
      MEMORY[0x1E69E5928](valueCopy);
      MEMORY[0x1E69E5928](keyCopy);
      queue = selfCopy->super._queue;
      v5 = MEMORY[0x1E69E9820];
      v6 = -1073741824;
      v7 = 0;
      v8 = __60__CBSliderCommitTelemetry_sendNotificationForKey_withValue___block_invoke;
      v9 = &unk_1E867C0A8;
      v12 = v13;
      v10 = keyCopy;
      v11 = valueCopy;
      dispatch_async(queue, &v5);
    }
  }
}

double __60__CBSliderCommitTelemetry_sendNotificationForKey_withValue___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  _Block_release(*(a1 + 48));
  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  return result;
}

+ (id)sliderInfoToNSDictionary:(const CBSliderCommitInfo *)dictionary
{
  v37[50] = *MEMORY[0x1E69E9840];
  v36[0] = @"timestamp";
  v37[0] = [MEMORY[0x1E696AD98] numberWithLongLong:dictionary->timestamp];
  v36[1] = @"localTimestamp";
  v37[1] = [MEMORY[0x1E696AD98] numberWithLongLong:dictionary->localTimestamp];
  v36[2] = @"trustedLux";
  v37[2] = [MEMORY[0x1E696AD98] numberWithInt:dictionary->trustedLux];
  v36[3] = @"frontLux";
  *&v3 = dictionary->frontLux;
  v37[3] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v36[4] = @"rearLux";
  *&v4 = dictionary->rearLux;
  v37[4] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v36[5] = @"rearLuxInUse";
  v37[5] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->rearLuxInUse];
  v36[6] = @"nits";
  *&v5 = dictionary->nits;
  v37[6] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v36[7] = @"slider";
  *&v6 = dictionary->slider;
  v37[7] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v36[8] = @"apce";
  *&v7 = dictionary->apce;
  v37[8] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v36[9] = @"delayedAPCE";
  *&v8 = dictionary->delayedAPCE;
  v37[9] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v36[10] = @"delayedAPCEStatus";
  v37[10] = [MEMORY[0x1E696AD98] numberWithInt:dictionary->delayedAPCEStatus];
  v36[11] = @"autobrightnessEnabled";
  v37[11] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->autobrightnessEnabled];
  v36[12] = @"ecoModeEnabled";
  v37[12] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->ecoModeEnabled];
  v36[13] = @"ecoModeFactor";
  *&v9 = dictionary->ecoModeFactor;
  v37[13] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v36[14] = @"e0a";
  *&v10 = dictionary->aabParams.e0a;
  v37[14] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v36[15] = @"e0b";
  *&v11 = dictionary->aabParams.e0b;
  v37[15] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v36[16] = @"e1";
  *&v12 = dictionary->aabParams.e1;
  v37[16] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v36[17] = @"e2";
  *&v13 = dictionary->aabParams.e2;
  v37[17] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v36[18] = @"l0a";
  *&v14 = dictionary->aabParams.l0a;
  v37[18] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v36[19] = @"l0b";
  *&v15 = dictionary->aabParams.l0b;
  v37[19] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v36[20] = @"l1";
  *&v16 = dictionary->aabParams.l1;
  v37[20] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v36[21] = @"l2";
  *&v17 = dictionary->aabParams.l2;
  v37[21] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v36[22] = @"thirdSlope";
  *&v18 = dictionary->aabParams.thirdSlope;
  v37[22] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v36[23] = @"curveType";
  v37[23] = [MEMORY[0x1E696AD98] numberWithInt:dictionary->aabParams.curveType];
  v36[24] = @"alternativeE0a";
  *&v19 = dictionary->aabAlternativeParams.e0a;
  v37[24] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v36[25] = @"alternativeE0b";
  *&v20 = dictionary->aabAlternativeParams.e0b;
  v37[25] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  v36[26] = @"alternativeE1";
  *&v21 = dictionary->aabAlternativeParams.e1;
  v37[26] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v36[27] = @"alternativeE2";
  *&v22 = dictionary->aabAlternativeParams.e2;
  v37[27] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v36[28] = @"alternativeL0a";
  *&v23 = dictionary->aabAlternativeParams.l0a;
  v37[28] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v36[29] = @"alternativeL0b";
  *&v24 = dictionary->aabAlternativeParams.l0b;
  v37[29] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v36[30] = @"alternativeL1";
  *&v25 = dictionary->aabAlternativeParams.l1;
  v37[30] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v36[31] = @"alternativeL2";
  *&v26 = dictionary->aabAlternativeParams.l2;
  v37[31] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v36[32] = @"alternativeThirdSlope";
  *&v27 = dictionary->aabAlternativeParams.thirdSlope;
  v37[32] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v36[33] = @"alternativeCurveType";
  v37[33] = [MEMORY[0x1E696AD98] numberWithInt:dictionary->aabAlternativeParams.curveType];
  v36[34] = @"aabParamsUpdateOnly";
  v37[34] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->aabParamsUpdateOnly];
  v36[35] = @"aabParamsUpdateReason";
  v37[35] = [MEMORY[0x1E696AD98] numberWithInt:dictionary->aabParamsUpdateReason];
  v36[36] = @"nitsDelta";
  *&v28 = dictionary->nitsDelta;
  v37[36] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  v36[37] = @"nitsDeltaAlternative";
  *&v29 = dictionary->nitsDeltaAlternative;
  v37[37] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  v36[38] = @"restoreTimeTarget";
  v37[38] = [MEMORY[0x1E696AD98] numberWithLongLong:dictionary->restoreTimeTarget];
  v36[39] = @"inactiveLength";
  *&v30 = dictionary->inactiveLength;
  v37[39] = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v36[40] = @"inactiveStart";
  v37[40] = [MEMORY[0x1E696AD98] numberWithLongLong:dictionary->inactiveStart];
  v36[41] = @"cpmsMitigationLimitingBrightness";
  v37[41] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->cpmsMitigationLimitingBrightness];
  v36[42] = @"touchMitigationTriggered";
  v37[42] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->touchMitigationTriggered];
  v36[43] = @"proxMitigationTriggered";
  v37[43] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->proxMitigationTriggered];
  v36[44] = @"auroraFactor";
  *&v31 = dictionary->auroraFactor;
  v37[44] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  v36[45] = @"edrHeadroom";
  *&v32 = dictionary->edrHeadroom;
  v37[45] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  v36[46] = @"colorAdaptationStrength";
  *&v33 = dictionary->colorAdaptationStrength;
  v37[46] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
  v36[47] = @"colorAdaptationMode";
  v37[47] = [MEMORY[0x1E696AD98] numberWithInt:dictionary->colorAdaptationMode];
  v36[48] = @"darkThemeApplied";
  v37[48] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->darkThemeApplied];
  v36[49] = @"landscapeOrientation";
  v37[49] = [MEMORY[0x1E696AD98] numberWithBool:dictionary->landscapeOrientation];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:50];
}

- (BOOL)getUserAABParams:(CBAABParams *)params key:(id)key
{
  selfCopy = self;
  v26 = a2;
  paramsCopy = params;
  keyCopy = key;
  context = objc_autoreleasePoolPush();
  v23 = [(CBDisplayContaineriOS *)selfCopy->_displayContainer copyPropertyForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v23 objectForKey:{@"E0a", "floatValue"}];
    paramsCopy->e0a = v4;
    [objc_msgSend(v23 objectForKey:{@"E0b", "floatValue"}];
    paramsCopy->e0b = v5;
    [objc_msgSend(v23 objectForKey:{@"E1", "floatValue"}];
    paramsCopy->e1 = v6;
    [objc_msgSend(v23 objectForKey:{@"E2", "floatValue"}];
    paramsCopy->e2 = v7;
    [objc_msgSend(v23 objectForKey:{@"L0a", "floatValue"}];
    paramsCopy->l0a = v8;
    [objc_msgSend(v23 objectForKey:{@"L0b", "floatValue"}];
    paramsCopy->l0b = v9;
    [objc_msgSend(v23 objectForKey:{@"L1", "floatValue"}];
    paramsCopy->l1 = v10;
    [objc_msgSend(v23 objectForKey:{@"L2", "floatValue"}];
    paramsCopy->l2 = v11;
    [objc_msgSend(objc_msgSend(v23 "objectForKey:{"objectForKey:", @"thirdSlope", "floatValue"}")];
    paramsCopy->thirdSlope = v12;
    paramsCopy->curveType = [objc_msgSend(objc_msgSend(v23 objectForKey:{@"Prefs", "objectForKey:", @"curveType", "intValue"}];
    v19 = 0;
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

    v22 = logHandle;
    v21 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to obtain ALS Curve info", v20, 2u);
    }

    v28 = 0;
    v19 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (!v19)
  {
    v28 = 1;
  }

  return v28 & 1;
}

- (CBSliderCommitInfo)getNextEntryAndAdvanceBufferIndex
{
  selfCopy = self;
  v6 = a2;
  v5 = std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](&self->_entryBuffer, self->_bufferIndex);
  selfCopy->_bufferIndex = nextBufferIndex(selfCopy->_bufferIndex, 1);
  v4 = selfCopy->_bufferEntriesFilled + 1;
  v2 = std::min[abi:de200100]<unsigned long>(&v4, &kCBSliderCommitTelemetryEntryBufferSize);
  selfCopy->_bufferEntriesFilled = *v2;
  return v5;
}

- (CBSliderCommitInfo)getLastFilledEntry
{
  if (!self->_bufferEntriesFilled)
  {
    return 0;
  }

  v2 = previousBufferIndex(self->_bufferIndex);
  return std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](&self->_entryBuffer, v2);
}

- (void)logAllFilledEntries
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v24 = a2;
  if (self->_bufferLogHandle)
  {
    bufferLogHandle = selfCopy->_bufferLogHandle;
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

    bufferLogHandle = inited;
  }

  v23 = bufferLogHandle;
  v22 = 1;
  if (os_log_type_enabled(bufferLogHandle, OS_LOG_TYPE_INFO))
  {
    log = v23;
    type = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_impl(&dword_1DE8E5000, log, type, "======================= Brightness commit =======================", v21, 2u);
  }

  for (i = 100 - selfCopy->_bufferEntriesFilled; i < 0x64; ++i)
  {
    p_entryBuffer = &selfCopy->_entryBuffer;
    BufferIndex = nextBufferIndex(selfCopy->_bufferIndex, i);
    v19 = std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](p_entryBuffer, BufferIndex);
    if (selfCopy->_bufferLogHandle)
    {
      v8 = selfCopy->_bufferLogHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v7 = init_default_corebrightness_log();
      }

      v8 = v7;
    }

    v18 = v8;
    v17 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_0_8_64(v26, *(v19 + 8), [CBSliderCommitTelemetry sliderInfoToNSDictionary:v19]);
      _os_log_impl(&dword_1DE8E5000, v18, v17, "%lld: %@", v26, 0x16u);
    }
  }

  if (selfCopy->_bufferLogHandle)
  {
    v6 = selfCopy->_bufferLogHandle;
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

  v16 = v6;
  v15 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v3 = v16;
    v4 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, v3, v4, "=================================================================", v14, 2u);
  }
}

- (void)cancelDelayedAPCETimer
{
  dispatch_source_cancel(self->_delayedAPCETimer);
  dispatch_release(self->_delayedAPCETimer);
  self->_delayedAPCETimer = 0;
}

- (void)reportCommit:(CBSliderCommitInfo *)commit
{
  self->_longestInactivityLength = 0.0;
  [(CBSliderCommitTelemetry *)self logAllFilledEntries];
  [CBAnalytics userSliderCommit:commit];
  [(CBSliderCommitTelemetry *)self sendNotificationForKey:@"CBFinalBrightnessCommit" withValue:[CBSliderCommitTelemetry sliderInfoToNSDictionary:commit]];
}

- (void)delayedAPCETimerHandler:(CBSliderCommitInfo *)handler
{
  [(CBSliderCommitTelemetry *)self getAPCE];
  handler->delayedAPCE = v3;
  handler->delayedAPCEStatus = 0;
  [(CBSliderCommitTelemetry *)self cancelDelayedAPCETimer];
  [(CBSliderCommitTelemetry *)self reportCommit:handler];
}

- (void)fillEntry:(CBSliderCommitInfo *)entry withTimestamp:(int64_t)timestamp slider:(float)slider apce:(float)apce andTrackedState:(TrackedState)state
{
  context = objc_autoreleasePoolPush();
  entry->timestamp = timestamp;
  entry->localTimestamp = localizeTimestamp(timestamp);
  entry->trustedLux = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"TrustedLux", "intValue"}];
  v26 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"RLuxStats"];
  [objc_msgSend(v26 objectForKey:{@"frontLux", "floatValue"}];
  entry->frontLux = v7;
  [objc_msgSend(v26 objectForKey:{@"rearLux", "floatValue"}];
  entry->rearLux = v8;
  entry->rearLuxInUse = [objc_msgSend(v26 objectForKey:{@"rearLuxInUse", "BOOLValue"}];
  v25 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"DisplayBrightness"];
  [objc_msgSend(v25 objectForKey:{@"NitsPhysical", "floatValue"}];
  entry->nits = v9;
  entry->slider = slider;
  [objc_msgSend(v25 objectForKey:{@"AuroraFactor", "floatValue"}];
  entry->auroraFactor = v10;
  [objc_msgSend(v25 objectForKey:{@"EDRHeadroom", "floatValue"}];
  entry->edrHeadroom = v11;
  [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ColorAdaptationStrength", "floatValue"}];
  entry->colorAdaptationStrength = v12;
  entry->colorAdaptationMode = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ColorAdaptationMode", "intValue"}];
  entry->cpmsMitigationLimitingBrightness = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ThermalMitigationLimitingBrightness", "BOOLValue"}];
  [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"EcoModeFactor", "floatValue"}];
  entry->ecoModeFactor = v13;
  entry->touchMitigationTriggered = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"TouchMitigationTriggered", "BOOLValue"}];
  entry->proxMitigationTriggered = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ProxMitigationTriggered", "BOOLValue"}];
  [(CBSliderCommitTelemetry *)self getUserAABParams:&entry->aabParams alternativeAABParams:&entry->aabAlternativeParams];
  entry->aabParamsUpdateOnly = 0;
  entry->aabParamsUpdateReason = -1;
  v24 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"AABCurveUpdateReason"];
  if (v24)
  {
    entry->aabParamsUpdateReason = [v24 intValue];
  }

  v23 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"AABCurveUpdateNitsDelta", &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets];
  v22 = [*(&self->super.super.isa + *(v19 + 448)) copyPropertyForKey:@"AABCurveUpdateNitsDeltaAlternative"];
  if (v23)
  {
    [v23 floatValue];
    entry->nitsDelta = entry->nitsDelta + v14;
  }

  if (v22)
  {
    [v22 floatValue];
    entry->nitsDeltaAlternative = entry->nitsDeltaAlternative + v15;
  }

  entry->apce = apce;
  entry->delayedAPCE = -1.0;
  entry->delayedAPCEStatus = 1;
  entry->autobrightnessEnabled = state.autobrightnessEnabled;
  entry->ecoModeEnabled = state.ecoModeEnabled;
  entry->darkThemeApplied = state.darkThemeApplied;
  entry->landscapeOrientation = state.landscapeOrientation;
  MEMORY[0x1E69E5920](entry->trialExperimentId);
  v21 = [+[CBTrialSettingsProvider copyExperimentIdentifiers:MEMORY[0x1E69E5920](entry->trialTreatmentId).n128_f64[0]]];
  if (v21)
  {
    experimentId = [v21 experimentId];
    entry->trialExperimentId = MEMORY[0x1E69E5928](experimentId);
    entry->trialDeploymentId = [v21 deploymentId];
    treatmentId = [v21 treatmentId];
    entry->trialTreatmentId = MEMORY[0x1E69E5928](treatmentId);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    entry->trialExperimentId = 0;
    entry->trialDeploymentId = 0;
    entry->trialTreatmentId = 0;
  }

  v18 = round(self->_longestInactivityLength * 10.0 / 3600.0) / 10.0;
  entry->inactiveLength = v18;
  entry->inactiveStart = self->_inactivityStartTimestamp;
  objc_autoreleasePoolPop(context);
}

- (void)fillEntry:(CBSliderCommitInfo *)entry withTimestamp:(int64_t)timestamp andRestoreTimeTarget:(int64_t)target andAABParams:(CBAABParams *)params andAlternativeAABParams:(CBAABParams *)bParams
{
  entry->timestamp = timestamp;
  entry->localTimestamp = localizeTimestamp(timestamp);
  memcpy(&entry->aabParams, params, sizeof(entry->aabParams));
  memcpy(&entry->aabAlternativeParams, bParams, sizeof(entry->aabAlternativeParams));
  entry->aabParamsUpdateOnly = 1;
  entry->autobrightnessEnabled = self->_state.autobrightnessEnabled;
  entry->aabParamsUpdateReason = -1;
  v12 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"AABCurveUpdateReason"];
  if (v12)
  {
    entry->aabParamsUpdateReason = [v12 intValue];
  }

  entry->restoreTimeTarget = target;
  copyExperimentIdentifiers = [+[CBTrialSettingsProvider sharedInstance](CBTrialSettingsProvider copyExperimentIdentifiers];
  MEMORY[0x1E69E5920](entry->trialExperimentId);
  *&v7 = MEMORY[0x1E69E5920](entry->trialTreatmentId).n128_u64[0];
  if (copyExperimentIdentifiers)
  {
    experimentId = [copyExperimentIdentifiers experimentId];
    entry->trialExperimentId = MEMORY[0x1E69E5928](experimentId);
    entry->trialDeploymentId = [copyExperimentIdentifiers deploymentId];
    treatmentId = [copyExperimentIdentifiers treatmentId];
    entry->trialTreatmentId = MEMORY[0x1E69E5928](treatmentId);
    MEMORY[0x1E69E5920](copyExperimentIdentifiers);
  }

  else
  {
    entry->trialExperimentId = 0;
    entry->trialDeploymentId = 0;
    entry->trialTreatmentId = 0;
  }

  v10 = round(self->_longestInactivityLength * 10.0 / 3600.0) / 10.0;
  entry->inactiveLength = v10;
  entry->inactiveStart = self->_inactivityStartTimestamp;
}

- (CBSliderCommitInfo)addOrUpdateEntryWithTimestamp:(int64_t)timestamp slider:(float)slider apce:(float)apce andTrackedState:(TrackedState)state
{
  stateCopy = state;
  selfCopy = self;
  v40 = a2;
  timestampCopy = timestamp;
  sliderCopy = slider;
  apceCopy = apce;
  getLastFilledEntry = 0;
  if (self->_delayedAPCETimer)
  {
    getLastFilledEntry = [(dispatch_queue_t *)selfCopy getLastFilledEntry];
    if (!getLastFilledEntry)
    {
      if (selfCopy[2])
      {
        v20 = selfCopy[2];
      }

      else
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v20 = v19;
      }

      v35 = v20;
      v34 = 16;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        log = v35;
        type = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to get last filled entry while delay APCE timer is active!", v33, 2u);
      }
    }

    [(dispatch_queue_t *)selfCopy cancelDelayedAPCETimer];
  }

  if (!getLastFilledEntry)
  {
    getLastFilledEntry = [(dispatch_queue_t *)selfCopy getNextEntryAndAdvanceBufferIndex];
  }

  *&v6 = sliderCopy;
  *&v7 = apceCopy;
  v32 = stateCopy;
  LODWORD(v31) = stateCopy;
  [(dispatch_queue_t *)selfCopy fillEntry:getLastFilledEntry withTimestamp:timestampCopy slider:v31 apce:v6 andTrackedState:v7];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy[6]);
  selfCopy[2922] = v8;
  if (selfCopy[2922])
  {
    v9 = selfCopy[2922];
    handler = MEMORY[0x1E69E9820];
    v25 = -1073741824;
    v26 = 0;
    v27 = __85__CBSliderCommitTelemetry_addOrUpdateEntryWithTimestamp_slider_apce_andTrackedState___block_invoke;
    v28 = &unk_1E867B9D8;
    v29 = selfCopy;
    v30 = getLastFilledEntry;
    dispatch_source_set_event_handler(v9, &handler);
    source = selfCopy[2922];
    v10 = dispatch_time(0, 1000000000 * selfCopy[2909]);
    dispatch_source_set_timer(source, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(selfCopy[2922]);
  }

  else
  {
    if (selfCopy[2])
    {
      v15 = selfCopy[2];
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

      v15 = inited;
    }

    oslog = v15;
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v12 = oslog;
      v13 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_error_impl(&dword_1DE8E5000, v12, v13, "Failed to create timer, reporting immediately", v21, 2u);
    }

    getLastFilledEntry->delayedAPCEStatus = -1;
    [(dispatch_queue_t *)selfCopy reportCommit:getLastFilledEntry, v12];
  }

  return getLastFilledEntry;
}

- (void)logAfterUserBrightnessCommitWithTimestamp:(int64_t)timestamp slider:(float)slider apce:(float)apce andTrackedState:(TrackedState)state
{
  stateCopy = state;
  selfCopy = self;
  v20 = a2;
  timestampCopy = timestamp;
  sliderCopy = slider;
  apceCopy = apce;
  loggingQueue = self->_loggingQueue;
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __97__CBSliderCommitTelemetry_logAfterUserBrightnessCommitWithTimestamp_slider_apce_andTrackedState___block_invoke;
  v11 = &unk_1E867C0D0;
  v12 = selfCopy;
  timestampCopy2 = timestamp;
  sliderCopy2 = slider;
  apceCopy2 = apce;
  stateCopy2 = state;
  dispatch_async(loggingQueue, &block);
}

uint64_t __97__CBSliderCommitTelemetry_logAfterUserBrightnessCommitWithTimestamp_slider_apce_andTrackedState___block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  LODWORD(v4) = *(a1 + 56);
  return [*(a1 + 32) addOrUpdateEntryWithTimestamp:*(a1 + 40) slider:v4 apce:a2 andTrackedState:{a3, v4}];
}

- (double)timestampFromCurveDistionary:(id)distionary
{
  v7 = 0.0;
  v6 = [distionary objectForKey:@"Prefs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 objectForKey:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      return v3;
    }
  }

  return v7;
}

@end