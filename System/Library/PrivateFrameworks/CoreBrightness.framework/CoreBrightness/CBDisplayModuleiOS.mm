@interface CBDisplayModuleiOS
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)edrIsEngaged;
- (BOOL)handleAODStateUpdate:(unint64_t)update transitionTime:(float)time context:(id)context;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from;
- (BOOL)luxHasCrossedBDMThreshold:(float)threshold;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)shouldForceCapRamp;
- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)backlight andContext:(id)context;
- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)backlight queue:(id)queue display:(id)display;
- (const)edrStateToString:(unint64_t)string;
- (const)rtplcStateToString:(unint64_t)string;
- (float)appliedCompensation;
- (float)compensatedSDRNits;
- (float)computeTargetHDRBrightnessForAPCE:(float)e andScale:(float)scale;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)key;
- (void)apceTimerCallback;
- (void)createAPCEMonitorWithFrequency:(float)frequency;
- (void)dealloc;
- (void)deleteAPCEMonitor;
- (void)handleAttachedNotification;
- (void)handleDisplayBrightnessUpdate:(id)update;
- (void)handleEDRHeadroomRequest:(id)request;
- (void)handleFrameInfo:(id *)info;
- (void)handleNotificationForKey:(id)key withProperty:(id)property;
- (void)initialiseAurora;
- (void)initialiseEDR;
- (void)initialiseSDR;
- (void)sendNotificationForKey:(id)key withValue:(id)value;
- (void)stop;
- (void)updateBDMWithLux:(float)lux;
- (void)updateEDRStateForEvent:(unint64_t)event andHeadroom:(float)headroom;
- (void)updatePanelLimit:(id)limit;
- (void)updatePresetState:(BOOL)state;
- (void)updateSDRLimits:(id)limits;
@end

@implementation CBDisplayModuleiOS

- (BOOL)shouldForceCapRamp
{
  v14 = *MEMORY[0x1E69E9840];
  [(CBDisplayModuleiOS *)self compensatedSDRNits];
  v11 = -(self->_dynSliderCap - (v2 * self->_appliedHeadroom));
  [(CBDisplayModuleiOS *)self appliedCompensation];
  v10 = 0;
  if (v3 > 1.0)
  {
    v10 = 0;
    if (self->_edrState == 3)
    {
      v10 = 0;
      if (float_equal(self->_appliedHeadroom, self->_requestedHeadroom))
      {
        v9 = 1;
        if (!float_equal(self->_dynSliderCap, self->_nitsSDR))
        {
          v9 = v11 >= 30.0;
        }

        v10 = v9;
      }
    }
  }

  if (self->_edrState)
  {
    if (self->super.super._logHandle)
    {
      logHandle = self->super.super._logHandle;
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
      v4 = [(CBDisplayModuleiOS *)self edrStateToString:self->_edrState];
      if (v10)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      __os_log_helper_16_2_2_8_32_8_32(v13, v4, v5);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "HDR | _edrState: %s, forceRamp: %s", v13, 0x16u);
    }
  }

  return v10;
}

- (BOOL)edrIsEngaged
{
  v3 = 1;
  if (self->_edrState != 1)
  {
    return self->_edrState == 2;
  }

  return v3;
}

- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)backlight queue:(id)queue display:(id)display
{
  v61 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v57 = a2;
  backlightCopy = backlight;
  queueCopy = queue;
  displayCopy = display;
  if (!queue || !backlightCopy)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v53 = inited;
    v52 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      v32 = v53;
      v33 = v52;
      __os_log_helper_16_0_0(v51);
      _os_log_error_impl(&dword_1DE8E5000, v32, v33, "invalid arguments", v51, 2u);
    }

LABEL_60:
    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    return 0;
  }

  v50.receiver = selfCopy;
  v50.super_class = CBDisplayModuleiOS;
  selfCopy = [(CBModule *)&v50 initWithQueue:queueCopy];
  if (selfCopy)
  {
    *(selfCopy + 305) = 0;
    *(selfCopy + 304) = 0;
    *(selfCopy + 184) = 1;
    *(selfCopy + 202) = 0;
    *(selfCopy + 201) = 0;
    *(selfCopy + 38) = 1067114824;
    if (displayCopy)
    {
      v31 = objc_autoreleasePoolPush();
      v5 = os_log_create("com.apple.CoreBrightness.ARMDisplay", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(displayCopy, "displayId")), "UTF8String"]);
      *(selfCopy + 2) = v5;
      objc_autoreleasePoolPop(v31);
    }

    else
    {
      v6 = os_log_create("com.apple.CoreBrightness.ARMDisplay", "default");
      *(selfCopy + 2) = v6;
    }

    if (!*(selfCopy + 2))
    {
      v30 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v49 = v30;
      v48 = 16;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v49;
        type = v48;
        __os_log_helper_16_0_0(v47);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v47, 2u);
      }
    }

    if (displayCopy)
    {
      if (*(selfCopy + 2))
      {
        v27 = *(selfCopy + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v26 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v26 = init_default_corebrightness_log();
        }

        v27 = v26;
      }

      v46 = v27;
      v45 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v60, [displayCopy displayId]);
        _os_log_impl(&dword_1DE8E5000, v46, v45, "create display with display ID (%u)", v60, 8u);
      }

      v7 = DisplayCreateWithID(*MEMORY[0x1E695E480], backlightCopy, 0, [displayCopy displayId]);
      *(selfCopy + 41) = v7;
    }

    else
    {
      if (*(selfCopy + 2))
      {
        v25 = *(selfCopy + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v24 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v24 = init_default_corebrightness_log();
        }

        v25 = v24;
      }

      v44 = v25;
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v44;
        v23 = v43;
        __os_log_helper_16_0_0(v42);
        _os_log_impl(&dword_1DE8E5000, v22, v23, "create display without display ID", v42, 2u);
      }

      v8 = DisplayCreate(*MEMORY[0x1E695E480], backlightCopy, 0);
      *(selfCopy + 41) = v8;
    }

    if (!*(selfCopy + 41))
    {
      if (*(selfCopy + 2))
      {
        v21 = *(selfCopy + 2);
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

      v41 = v21;
      v40 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v18 = v41;
        v19 = v40;
        __os_log_helper_16_0_0(v39);
        _os_log_error_impl(&dword_1DE8E5000, v18, v19, "failed to create DisplayRef", v39, 2u);
      }

      goto LABEL_60;
    }

    if (!DisplayOpen(*(selfCopy + 41), DisplayRefPropertyChangedCallback, selfCopy))
    {
      if (*(selfCopy + 2))
      {
        v17 = *(selfCopy + 2);
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

      v38 = v17;
      v37 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v14 = v38;
        v15 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&dword_1DE8E5000, v14, v15, "failed to open the DisplayRef", v36, 2u);
      }

      goto LABEL_60;
    }

    DisplaySetProperty(*(selfCopy + 41), @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
    *(selfCopy + 5) = 0;
    v9 = [CBDisplayClockSourceAdapter alloc];
    v35 = [(CBDisplayClockSourceAdapter *)v9 initWithDisplayRef:*(selfCopy + 41)];
    v10 = [[CBRampManager alloc] initWithClockSource:v35];
    *(selfCopy + 35) = v10;
    v11 = [CBAppliedCompensations alloc];
    v12 = [(CBAppliedCompensations *)v11 initWithRampManager:*(selfCopy + 35) maxHarmony:1.29999995 maxBLR:1.79999995];
    *(selfCopy + 24) = v12;
    MEMORY[0x1E69E5920](v35);
  }

  return selfCopy;
}

- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)backlight andContext:(id)context
{
  v115 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v111 = a2;
  backlightCopy = backlight;
  contextCopy = context;
  if (![context displayQueue] || !backlightCopy)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v108 = inited;
    v107 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v108;
      type = v107;
      __os_log_helper_16_0_0(v106);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid arguments", v106, 2u);
    }

LABEL_67:
    MEMORY[0x1E69E5920](*(selfCopy + 17));
    MEMORY[0x1E69E5920](*(selfCopy + 5));
    MEMORY[0x1E69E5920](*(selfCopy + 6));
    MEMORY[0x1E69E5920](*(selfCopy + 7));
    MEMORY[0x1E69E5920](*(selfCopy + 8));
    MEMORY[0x1E69E5920](*(selfCopy + 9));
    MEMORY[0x1E69E5920](*(selfCopy + 10));
    MEMORY[0x1E69E5920](*(selfCopy + 11));
    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    return 0;
  }

  v105.receiver = selfCopy;
  v105.super_class = CBDisplayModuleiOS;
  selfCopy = -[CBModule initWithQueue:](&v105, sel_initWithQueue_, [contextCopy displayQueue]);
  if (selfCopy)
  {
    *(selfCopy + 305) = 0;
    *(selfCopy + 304) = 0;
    *(selfCopy + 184) = 1;
    *(selfCopy + 38) = 1067114824;
    *(selfCopy + 202) = 0;
    *(selfCopy + 201) = 0;
    brtCtl = [contextCopy brtCtl];
    v5 = MEMORY[0x1E69E5928](brtCtl);
    *(selfCopy + 5) = v5;
    *(selfCopy + 31) = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(selfCopy + 32) = v6;
    v56 = objc_alloc(MEMORY[0x1E696AEC0]);
    v55 = [objc_msgSend(selfCopy "className")];
    v104 = [v56 initWithFormat:@"%s.%s.%u", "com.apple.CoreBrightness", v55, objc_msgSend(*(selfCopy + 5), "getDisplayId")];
    v7 = os_log_create([v104 cStringUsingEncoding:1], "default");
    *(selfCopy + 2) = v7;
    if (!*(selfCopy + 2))
    {
      v54 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v103 = v54;
      v102 = 16;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v52 = v103;
        v53 = v102;
        __os_log_helper_16_0_0(v101);
        _os_log_error_impl(&dword_1DE8E5000, v52, v53, "failed to create log handle", v101, 2u);
      }
    }

    MEMORY[0x1E69E5920](v104);
    v8 = DisplayCreate(*MEMORY[0x1E695E480], backlightCopy, 0);
    *(selfCopy + 41) = v8;
    if (!*(selfCopy + 41))
    {
      if (*(selfCopy + 2))
      {
        v51 = *(selfCopy + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v50 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v50 = init_default_corebrightness_log();
        }

        v51 = v50;
      }

      v100 = v51;
      v99 = 16;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v48 = v100;
        v49 = v99;
        __os_log_helper_16_0_0(v98);
        _os_log_error_impl(&dword_1DE8E5000, v48, v49, "failed to create DisplayRef", v98, 2u);
      }

      goto LABEL_67;
    }

    configuration = [contextCopy configuration];
    *(selfCopy + 42) = configuration;
    *(selfCopy + 33) = 0;
    serverIfRunning = [MEMORY[0x1E6979550] serverIfRunning];
    v97 = [serverIfRunning displayWithDisplayId:{objc_msgSend(*(selfCopy + 5), "getDisplayId")}];
    if (v97)
    {
      v10 = [[CBFrameInfoProvider alloc] initWithDisplayServer:v97];
      *(selfCopy + 33) = v10;
    }

    else
    {
      if (*(selfCopy + 2))
      {
        v46 = *(selfCopy + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v45 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v45 = init_default_corebrightness_log();
        }

        v46 = v45;
      }

      v96 = v46;
      v95 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v114, [*(selfCopy + 5) getDisplayId]);
        _os_log_error_impl(&dword_1DE8E5000, v96, v95, "Failed to find WindowServer display #%d, frame information will not work", v114, 8u);
      }
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(selfCopy + 11) = v11;
    v12 = [CBDisplayClockSourceAdapter alloc];
    v94 = [(CBDisplayClockSourceAdapter *)v12 initWithDisplayRef:*(selfCopy + 41)];
    v13 = [[CBRampManager alloc] initWithClockSource:v94];
    *(selfCopy + 35) = v13;
    [*(selfCopy + 35) activate];
    MEMORY[0x1E69E5920](v94);
    v14 = [CBAppliedCompensations alloc];
    v15 = [(CBAppliedCompensations *)v14 initWithRampManager:*(selfCopy + 35) maxHarmony:1.29999995 maxBLR:1.79999995];
    *(selfCopy + 24) = v15;
    twilight = [contextCopy twilight];
    v17 = MEMORY[0x1E69E5928](twilight);
    *(selfCopy + 7) = v17;
    if (*(selfCopy + 7))
    {
      v18 = *(selfCopy + 7);
      v88 = MEMORY[0x1E69E9820];
      v89 = -1073741824;
      v90 = 0;
      v91 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke;
      v92 = &unk_1E867B558;
      v93 = selfCopy;
      [v18 registerNotificationBlock:?];
      [*(selfCopy + 11) addObject:*(selfCopy + 7)];
    }

    ammolite = [contextCopy ammolite];
    v20 = MEMORY[0x1E69E5928](ammolite);
    *(selfCopy + 8) = v20;
    if (*(selfCopy + 8))
    {
      v21 = *(selfCopy + 8);
      v82 = MEMORY[0x1E69E9820];
      v83 = -1073741824;
      v84 = 0;
      v85 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_2;
      v86 = &unk_1E867B558;
      v87 = selfCopy;
      [v21 registerNotificationBlock:?];
      [*(selfCopy + 11) addObject:*(selfCopy + 8)];
    }

    v22 = [contextCopy gcp];
    v23 = MEMORY[0x1E69E5928](v22);
    *(selfCopy + 9) = v23;
    if (*(selfCopy + 9))
    {
      v24 = *(selfCopy + 9);
      v76 = MEMORY[0x1E69E9820];
      v77 = -1073741824;
      v78 = 0;
      v79 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_3;
      v80 = &unk_1E867B558;
      v81 = selfCopy;
      [v24 registerNotificationBlock:?];
      [*(selfCopy + 11) addObject:*(selfCopy + 9)];
      [*(selfCopy + 9) setRampManager:*(selfCopy + 35)];
    }

    [selfCopy initialiseSDR];
    [selfCopy initialiseEDR];
    [selfCopy initialiseAurora];
    v75 = *(selfCopy + 24);
    v74 = DisplayCopyProperty(*(selfCopy + 41), @"DisplayPanelLuminanceMin");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v74 floatValue];
      v75 = v25;
    }

    else
    {
      if (*(selfCopy + 2))
      {
        v44 = *(selfCopy + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v43 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v43 = init_default_corebrightness_log();
        }

        v44 = v43;
      }

      oslog = v44;
      v72 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v41 = oslog;
        v42 = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_error_impl(&dword_1DE8E5000, v41, v42, "Could not fetch the minimum panel nits!", v71, 2u);
      }
    }

    v70 = v75;
    v69 = *(selfCopy + 28);
    v26 = [CBIndicatorBrightnessModule alloc];
    LODWORD(v27) = v70;
    LODWORD(v28) = v69;
    LODWORD(v29) = *(selfCopy + 27);
    v30 = [(CBIndicatorBrightnessModule *)v26 initWithQueue:*(selfCopy + 3) min:*(selfCopy + 33) max:v27 contrastBoostMax:v28 andFrameInfoProvider:v29];
    *(selfCopy + 10) = v30;
    if (*(selfCopy + 10))
    {
      v31 = *(selfCopy + 10);
      v63 = MEMORY[0x1E69E9820];
      v64 = -1073741824;
      v65 = 0;
      v66 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_26;
      v67 = &unk_1E867B558;
      v68 = selfCopy;
      [v31 registerNotificationBlock:?];
      [*(selfCopy + 11) addObject:*(selfCopy + 10)];
    }

    if (!DisplayOpen(*(selfCopy + 41), DisplayRefPropertyChangedCallback, selfCopy))
    {
      if (*(selfCopy + 2))
      {
        v40 = *(selfCopy + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v39 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v39 = init_default_corebrightness_log();
        }

        v40 = v39;
      }

      v62 = v40;
      v61 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v37 = v62;
        v38 = v61;
        __os_log_helper_16_0_0(v60);
        _os_log_error_impl(&dword_1DE8E5000, v37, v38, "failed to open the DisplayRef", v60, 2u);
      }

      goto LABEL_67;
    }

    DisplaySetProperty(*(selfCopy + 41), @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
    DisplaySetProperty(*(selfCopy + 41), @"DisplaySyncBrightnessTransactions", *MEMORY[0x1E695E4D0]);
    v32 = objc_alloc_init(AABCHistograms);
    *(selfCopy + 39) = v32;
    [*(selfCopy + 39) setFirstBrightnessUpdate:1];
    [*(selfCopy + 39) setAutoBrightnessOn:0];
    getDisplayType = [*(selfCopy + 5) getDisplayType];
    v33 = getDisplayType == [*(selfCopy + 5) CBDispTypeIntegrated];
    [*(selfCopy + 39) setBuiltInDisplay:v33];
    v34 = [+[CBAnalyticsScheduler sharedInstance](CBAnalyticsScheduler registerHandler:"registerHandler:"];
    *(selfCopy + 40) = v34;
  }

  return selfCopy;
}

void __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_32(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_2_33;
  v7 = &unk_1E867B480;
  v8 = *(a1 + 32);
  dispatch_async(v2, &block);
}

- (void)updateSDRLimits:(id)limits
{
  if (limits)
  {
    [objc_msgSend(limits objectForKeyedSubscript:{@"MinNits", "floatValue"}];
    self->_minNits = v3;
    [objc_msgSend(limits objectForKeyedSubscript:{@"MaxNits", "floatValue"}];
    self->_maxNits = v4;
  }

  else
  {
    self->_dynSliderCap = 600.0;
    self->_maxNits = 600.0;
    self->_minNits = 2.0;
  }
}

- (void)updatePanelLimit:(id)limit
{
  if (limit)
  {
    [objc_msgSend(limit objectForKeyedSubscript:{@"MaxNitsPanel", "floatValue"}];
    self->_maxNitsPanel = v3;
  }

  else
  {
    self->_maxNitsPanel = 2175.0;
  }
}

- (void)initialiseSDR
{
  v7 = *MEMORY[0x1E69E9840];
  getBrightnessCapabilities = [(CBBrightnessProxy *)self->_brtCtl getBrightnessCapabilities];
  [(CBDisplayModuleiOS *)self updateSDRLimits:getBrightnessCapabilities];
  [(CBDisplayModuleiOS *)self updatePanelLimit:getBrightnessCapabilities];
  self->_nitsSDR = self->_minNits;
  if (self->super.super._logHandle)
  {
    logHandle = self->super.super._logHandle;
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
    __os_log_helper_16_0_3_8_0_8_0_8_0(v6, COERCE__INT64(self->_maxNits), COERCE__INT64(self->_minNits), COERCE__INT64(self->_nitsSDR));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "SDR: max=%f nits | min=%f nits | curent=%f nits", v6, 0x20u);
  }
}

- (void)initialiseEDR
{
  v45 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v42 = a2;
  getBrightnessCapabilities = [(CBBrightnessProxy *)self->_brtCtl getBrightnessCapabilities];
  v40 = 0.0;
  v39 = 0.0;
  v38 = 0.5;
  v37 = 0.75;
  if (getBrightnessCapabilities)
  {
    [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"EDRPotentialHeadroom", "floatValue"}];
    v40 = v2;
    v39 = v2;
    if ([(NSDictionary *)getBrightnessCapabilities objectForKeyedSubscript:@"EDRReferenceHeadroom"])
    {
      [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"EDRReferenceHeadroom", "floatValue"}];
      v39 = v3;
    }

    if ([(NSDictionary *)getBrightnessCapabilities objectForKeyedSubscript:@"EDRSecondsPerStopDefault"])
    {
      [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"EDRSecondsPerStopDefault", "floatValue"}];
      v38 = v4;
    }

    if ([(NSDictionary *)getBrightnessCapabilities objectForKeyedSubscript:@"EDRExitSecondsPerStop"])
    {
      [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"EDRExitSecondsPerStop", "floatValue"}];
      v37 = v5;
    }

    [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"MaxNitsEDR", "floatValue"}];
    selfCopy->_maxNitsEDR = v6;
  }

  else
  {
    v40 = 16.0;
    v39 = 10.0;
    selfCopy->_maxNitsEDR = 1600.0;
  }

  selfCopy->_capToCAIsRamping = 0;
  selfCopy->_currentCapToCA = selfCopy->_maxNitsEDR;
  selfCopy->_edrState = 0;
  selfCopy->_appliedHeadroom = 1.0;
  selfCopy->_requestedHeadroom = 1.0;
  selfCopy->_trustedLux = 300.0;
  selfCopy->_lastEDRHeadroomRequestFromCA = 0;
  selfCopy->_lastBDMLux = 300.0;
  selfCopy->_bdmLux2 = 0.0;
  selfCopy->_bdmLux1 = 0.0;
  selfCopy->_displayRequiresBDM = DisplayRequiresBDM(selfCopy->_displayInternal);
  if (selfCopy->_displayRequiresBDM)
  {
    v36 = DisplayCopyProperty(selfCopy->_displayInternal, @"BrightDotsMitigationParameters");
    if (v36)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_msgSend(v36 objectForKey:{@"brightDotsMitigationLux1", "floatValue"}];
        selfCopy->_bdmLux1 = v7;
        [objc_msgSend(v36 objectForKey:{@"brightDotsMitigationLux2", "floatValue"}];
        selfCopy->_bdmLux2 = v8;
      }

      MEMORY[0x1E69E5920](v36);
    }
  }

  v9 = [CBEDR alloc];
  *&v10 = v40;
  *&v11 = v39;
  selfCopy->_edr = [(CBEDR *)v9 initWithRampPolicy:0 potentialHeadroom:v10 andReferenceHeadroom:v11];
  selfCopy->_sbim = [[CBSBIM alloc] initWithQueue:selfCopy->super.super._queue andDisplayModule:selfCopy andEDRModule:selfCopy->_edr];
  v35 = 1.21;
  [(CBBacklightNode *)selfCopy->_backlightParams loadFloat:@"edr-sbim-threshold" toDestination:&v35];
  selfCopy->_sbimEDRThreshold = clamp(v35, 0.0, 2.0);
  if (selfCopy->_edr)
  {
    *&v12 = selfCopy->_maxNitsEDR;
    [(CBEDR *)selfCopy->_edr setPanelMax:v12];
    *&v13 = selfCopy->_maxNitsEDR;
    [(CBEDR *)selfCopy->_edr setBrightnessCap:v13];
    [(CBDisplayModuleiOS *)selfCopy compensatedSDRNits];
    [(CBEDR *)selfCopy->_edr setSdrBrightness:?];
    *&v14 = v38;
    [(CBEDR *)selfCopy->_edr setSecondsPerStop:v14];
    *&v15 = v37;
    [(CBEDR *)selfCopy->_edr setSecondsPerStopExit:v15];
    context = objc_autoreleasePoolPush();
    v34 = [CBPreferencesHandler copyPreferenceForAllUsersMultiple:&unk_1F59C9468];
    if (v34)
    {
      [v34 objectForKeyedSubscript:@"EDRModulatorNitsConfig"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v34 objectForKeyedSubscript:@"EDRModulatorHeadroomConfig"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = objc_alloc_init(CBEDRModulator);
          -[CBEDRModulator setNitsDataPointsConfig:](v33, "setNitsDataPointsConfig:", [v34 objectForKeyedSubscript:@"EDRModulatorNitsConfig"]);
          -[CBEDRModulator setHeadroomDataPointsConfig:](v33, "setHeadroomDataPointsConfig:", [v34 objectForKeyedSubscript:@"EDRModulatorHeadroomConfig"]);
          [(CBEDRModulator *)v33 setEnabled:selfCopy->_brightnessControlEnabled];
          [(CBEDR *)selfCopy->_edr setHeadroomModulator:v33];
          if (selfCopy->super.super._logHandle)
          {
            logHandle = selfCopy->super.super._logHandle;
          }

          else
          {
            v25 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            logHandle = v25;
          }

          v32 = logHandle;
          v31 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_1_8_64(v44, v33);
            _os_log_impl(&dword_1DE8E5000, v32, v31, "EDR modulator initialised: %@", v44, 0xCu);
          }
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  if (!isBrightnessAdjustmentPossible(getBrightnessCapabilities))
  {
    if (selfCopy->super.super._logHandle)
    {
      v24 = selfCopy->super.super._logHandle;
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

      v24 = inited;
    }

    v30 = v24;
    v29 = 1;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v21 = v30;
      v22 = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_impl(&dword_1DE8E5000, v21, v22, "Presets: staring up already enabled", v28, 2u);
    }

    [(CBDisplayModuleiOS *)selfCopy updatePresetState:1];
  }

  selfCopy->_apceTimer = 0;
  selfCopy->_rtplcState = 0;
  selfCopy->_rtplcCapApplied = 0;
  selfCopy->_currentRTPLCTarget = selfCopy->_maxNitsEDR;
  selfCopy->_rtplcCap = selfCopy->_maxNitsEDR;
  selfCopy->_frameStats = 0;
  if ([(CBBacklightNode *)selfCopy->_backlightParams rtplc])
  {
    v20 = [CBFrameStats alloc];
    queue = selfCopy->super.super._queue;
    frameInfoProvider = selfCopy->_frameInfoProvider;
    serverIfRunning = [MEMORY[0x1E6979550] serverIfRunning];
    v16 = -[CBFrameStats initWithQueue:frameInfoProvider:andWindowServerDisplay:](v20, "initWithQueue:frameInfoProvider:andWindowServerDisplay:", queue, frameInfoProvider, [serverIfRunning displayWithDisplayId:{-[CBBrightnessProxy getDisplayId](selfCopy->_brtCtl, "getDisplayId")}]);
    selfCopy->_frameStats = v16;
    [(CBFrameStats *)selfCopy->_frameStats setMovingAverageDuration:1.0];
    DisplayInitializeRTPLCEDRRamp(selfCopy->_displayInternal);
  }

  DisplayInitializeFastEDR(selfCopy->_displayInternal);
}

- (void)initialiseAurora
{
  selfCopy = self;
  v15 = a2;
  bOOLValue = 0;
  v13 = DisplayCopyProperty(self->_displayInternal, @"AuroraSupported");
  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
    MEMORY[0x1E69E5920](v13);
  }

  if (bOOLValue)
  {
    getBrightnessCapabilities = [(CBBrightnessProxy *)selfCopy->_brtCtl getBrightnessCapabilities];
    [(CBDisplayModuleiOS *)selfCopy updatePanelLimit:getBrightnessCapabilities];
    if (selfCopy->_edr)
    {
      *&v2 = selfCopy->_maxNitsPanel;
      [(CBEDR *)selfCopy->_edr setPanelMax:v2];
    }

    v3 = [CBFrameStats alloc];
    v8 = -[CBFrameStats initWithQueue:frameInfoProvider:andWindowServerDisplay:](v3, "initWithQueue:frameInfoProvider:andWindowServerDisplay:", selfCopy->super.super._queue, selfCopy->_frameInfoProvider, [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")]);
    selfCopy->_aurora = [[CBAurora alloc] initWithQueue:selfCopy->super.super._queue andDisplayModule:selfCopy andBrtCapabilities:getBrightnessCapabilities andFrameStats:v8];
    MEMORY[0x1E69E5920](v8);
  }

  else
  {
    if (selfCopy->super.super._logHandle)
    {
      logHandle = selfCopy->super.super._logHandle;
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

    v12 = logHandle;
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_1DE8E5000, log, type, "Aurora not supported", v10, 2u);
    }
  }
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_displayInternal)
  {
    DisplayClose(selfCopy->_displayInternal);
    CFRelease(selfCopy->_displayInternal);
    selfCopy->_displayInternal = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_edr);
  MEMORY[0x1E69E5920](selfCopy->_sbim);
  MEMORY[0x1E69E5920](selfCopy->_brtCtl);
  MEMORY[0x1E69E5920](selfCopy->_pendingCommitedTransactions);
  MEMORY[0x1E69E5920](selfCopy->_lastEDRHeadroomRequestFromCA);
  if (selfCopy->super.super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super.super._logHandle);
    selfCopy->super.super._logHandle = 0;
  }

  if (selfCopy->_apceTimer)
  {
    dispatch_source_cancel(selfCopy->_apceTimer);
    dispatch_release(selfCopy->_apceTimer);
    selfCopy->_apceTimer = 0;
  }

  if (selfCopy->_appliedCompensations)
  {
    MEMORY[0x1E69E5920](selfCopy->_appliedCompensations);
    selfCopy->_appliedCompensations = 0;
  }

  if (selfCopy->_rampManager)
  {
    MEMORY[0x1E69E5920](selfCopy->_rampManager);
  }

  MEMORY[0x1E69E5920](selfCopy->_frameStats);
  MEMORY[0x1E69E5920](selfCopy->_aurora);
  MEMORY[0x1E69E5920](selfCopy->_twilight);
  MEMORY[0x1E69E5920](selfCopy->_ammolite);
  MEMORY[0x1E69E5920](selfCopy->_indicatorBrightnessModule);
  MEMORY[0x1E69E5920](selfCopy->_subModules);
  MEMORY[0x1E69E5920](selfCopy->_backlightParams);
  MEMORY[0x1E69E5920](selfCopy->_cachedKeys);
  [+[CBAnalyticsScheduler removeHandler:MEMORY[0x1E69E5920](selfCopy->_cachedProperties).n128_f64[0]], "removeHandler:", selfCopy->_analyticsPeriodicSender];
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_analyticsHist).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBDisplayModuleiOS;
  [(CBModule *)&v3 dealloc];
}

- (void)stop
{
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:&__block_literal_global_92];
  if (self->_aurora)
  {
    [(CBAurora *)self->_aurora stop];
  }

  DisplayStop(self->_displayInternal);
}

- (void)updatePresetState:(BOOL)state
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if (self->super.super._logHandle)
  {
    logHandle = self->super.super._logHandle;
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
    __os_log_helper_16_0_1_4_0(v18, state);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Presets: setting status of pro mode to: %d", v18, 8u);
  }

  self->_brightnessControlEnabled = !state;
  self->_referenceModeIsActive = state;
  if (self->_brightnessControlEnabled)
  {
    v11 = 0;
  }

  else
  {
    *&v3 = self->_minNits;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  }

  [(CBDisplayModuleiOS *)self setProperty:v11 forKey:@"kCoreBrightnessDisplayPresetNitsOverride"];
  v10 = 0;
  if (self->_brightnessControlEnabled)
  {
    v10 = !self->_dominoMode;
  }

  -[CBDisplayModuleiOS sendNotificationForKey:withValue:](self, "sendNotificationForKey:withValue:", @"CBBrightnessControlAvailable", [MEMORY[0x1E696AD98] numberWithBool:v10]);
  if (state)
  {
    [(CBSBIM *)self->_sbim disable];
  }

  else
  {
    *&v4 = self->_trustedLux;
    [(CBDisplayModuleiOS *)self updateBDMWithLux:v4];
    [(CBSBIM *)self->_sbim enable];
  }

  if (self->_edr && [(CBEDR *)self->_edr headroomModulator])
  {
    [(CBEDRModulator *)[(CBEDR *)self->_edr headroomModulator] setEnabled:self->_brightnessControlEnabled];
    if (self->super.super._logHandle)
    {
      v9 = self->super.super._logHandle;
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v9 = v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_brightnessControlEnabled)
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      if (self->_brightnessControlEnabled)
      {
        v6 = "enabled";
      }

      else
      {
        v6 = "disabled";
      }

      __os_log_helper_16_2_2_8_32_8_32(v17, v5, v6);
      _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "Presets: Brightness updates are %s; EDR modulator is %s", v17, 0x16u);
    }
  }

  v7 = 0.0;
  if (!state)
  {
    v7 = -1.0;
  }

  DisplaySetCabalFactorOverride(self->_displayInternal, v7);
  [(CBChromaticCorrection *)self->_twilight setReferenceModeActive:state];
  [(CBChromaticCorrection *)self->_ammolite setReferenceModeActive:state];
  [(CBChromaticCorrection *)self->_gcp setReferenceModeActive:state];
  objc_autoreleasePoolPop(context);
}

- (void)handleAttachedNotification
{
  context = objc_autoreleasePoolPush();
  getBrightnessCapabilities = [(CBBrightnessProxy *)self->_brtCtl getBrightnessCapabilities];
  if (getBrightnessCapabilities)
  {
    v6 = isBrightnessAdjustmentPossible(getBrightnessCapabilities);
    [(CBDisplayModuleiOS *)self updateSDRLimits:getBrightnessCapabilities];
    [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"MaxNitsEDR", "floatValue"}];
    self->_maxNitsEDR = v2;
    *&v3 = self->_maxNitsEDR;
    [(CBEDR *)self->_edr setBrightnessCap:v3];
    [-[NSDictionary objectForKeyedSubscript:](getBrightnessCapabilities objectForKeyedSubscript:{@"EDRPotentialHeadroom", "floatValue"}];
    [(CBEDR *)self->_edr setMaxHeadroom:?];
    if (self->_brightnessControlEnabled != v6)
    {
      [(CBDisplayModuleiOS *)self updatePresetState:!v6];
    }

    *&v4 = self->_maxNitsEDR;
    [(CBIndicatorBrightnessModule *)self->_indicatorBrightnessModule updateMaxContrastBoostedBrightness:v4];
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v91 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v74 = a2;
  propertyCopy = property;
  keyCopy = key;
  v71 = 0;
  if (self->super.super._logHandle)
  {
    logHandle = selfCopy->super.super._logHandle;
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

  v70 = logHandle;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v90, keyCopy, propertyCopy);
    _os_log_debug_impl(&dword_1DE8E5000, v70, type, "Set property for key = %@ property = %@", v90, 0x16u);
  }

  [(CBAurora *)selfCopy->_aurora setPropertyForKey:keyCopy withValue:propertyCopy];
  [(CBChromaticCorrection *)selfCopy->_twilight setProperty:propertyCopy forKey:keyCopy];
  [(CBChromaticCorrection *)selfCopy->_ammolite setProperty:propertyCopy forKey:keyCopy];
  [(CBChromaticCorrection *)selfCopy->_gcp setProperty:propertyCopy forKey:keyCopy];
  [(CBIndicatorBrightnessModule *)selfCopy->_indicatorBrightnessModule setProperty:propertyCopy forKey:keyCopy];
  if ([keyCopy isEqualToString:@"EDRHeadroomRequest"])
  {
    if (selfCopy->_nitsSDR > 0.0 || [propertyCopy objectForKeyedSubscript:{-[CBBrightnessProxy brightnessNotificationPowerOff](selfCopy->_brtCtl, "brightnessNotificationPowerOff")}])
    {
      [(CBDisplayModuleiOS *)selfCopy handleEDRHeadroomRequest:propertyCopy];
    }

    else
    {
      if (selfCopy->super.super._logHandle)
      {
        v46 = selfCopy->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v45 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v45 = init_default_corebrightness_log();
        }

        v46 = v45;
      }

      v68 = v46;
      v67 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        [objc_msgSend(propertyCopy objectForKey:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](selfCopy->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
        __os_log_helper_16_0_1_8_0(v89, COERCE__INT64(v4));
        _os_log_impl(&dword_1DE8E5000, v68, v67, "EDR Headroom request received while SDR is 0: EDR: %f, caching request", v89, 0xCu);
      }

      if (!selfCopy->_cachedProperties)
      {
        selfCopy->_cachedProperties = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      if (!selfCopy->_cachedKeys)
      {
        selfCopy->_cachedKeys = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [(NSMutableArray *)selfCopy->_cachedProperties addObject:propertyCopy];
      [(NSMutableArray *)selfCopy->_cachedKeys addObject:keyCopy];
    }

    return v71;
  }

  if (selfCopy->_brtCtl && ([keyCopy isEqualToString:{-[CBBrightnessProxy brightnessNotificationRequestEDR](selfCopy->_brtCtl, "brightnessNotificationRequestEDR")}] & 1) != 0)
  {
    MEMORY[0x1E69E5920](selfCopy->_lastEDRHeadroomRequestFromCA);
    selfCopy->_lastEDRHeadroomRequestFromCA = MEMORY[0x1E69E5928](propertyCopy);
    return v71;
  }

  if ([keyCopy isEqualToString:@"EDRSecondsPerStop"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [propertyCopy floatValue];
      v66 = LODWORD(v5);
      [(CBEDR *)selfCopy->_edr setSecondsPerStop:v5];
    }

    return v71;
  }

  if ([keyCopy isEqualToString:@"EDRExitSecondsPerStop"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [propertyCopy floatValue];
      v65 = LODWORD(v6);
      [(CBEDR *)selfCopy->_edr setSecondsPerStopExit:v6];
    }

    return v71;
  }

  if (selfCopy->_brtCtl && ([keyCopy isEqualToString:{-[CBBrightnessProxy brightnessNotificationAttached](selfCopy->_brtCtl, "brightnessNotificationAttached")}] & 1) != 0)
  {
    [(CBDisplayModuleiOS *)selfCopy handleAttachedNotification];
    return 1;
  }

  else if (selfCopy->_brtCtl && ([keyCopy isEqualToString:{-[CBBrightnessProxy brightnessNotificationPowerOff](selfCopy->_brtCtl, "brightnessNotificationPowerOff")}] & 1) != 0)
  {
    if (!selfCopy->_referenceModeIsActive)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v8) = 1.0;
      v64 = [v7 initWithFloat:v8];
      if (v64)
      {
        v44 = objc_alloc(MEMORY[0x1E695DF20]);
        brightnessRequestEDRHeadroom = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
        v63 = [v44 initWithObjectsAndKeys:{v64, brightnessRequestEDRHeadroom, *MEMORY[0x1E695E4D0], -[CBBrightnessProxy brightnessNotificationPowerOff](selfCopy->_brtCtl, "brightnessNotificationPowerOff"), 0}];
        *&v9 = MEMORY[0x1E69E5920](v64).n128_u64[0];
        if (v63)
        {
          [(CBDisplayModuleiOS *)selfCopy setProperty:v63 forKey:@"EDRHeadroomRequest", v9];
          MEMORY[0x1E69E5920](v63);
        }
      }
    }

    selfCopy->_autoDimActive = 0;
    if (selfCopy->_indicatorBrightnessModule)
    {
      [(CBIndicatorBrightnessModule *)selfCopy->_indicatorBrightnessModule setProperty:0 forKey:@"DisplayPowerOff"];
    }

    DisplaySetProperty(selfCopy->_displayInternal, @"DisplayPowerOff", *MEMORY[0x1E695E4D0]);
    return 1;
  }

  else if (selfCopy->_brtCtl && (([keyCopy isEqualToString:{-[CBBrightnessProxy brightnessNotificationSecureIndicatorOn](selfCopy->_brtCtl, "brightnessNotificationSecureIndicatorOn")}] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", -[CBBrightnessProxy brightnessNotificationSecureIndicatorOff](selfCopy->_brtCtl, "brightnessNotificationSecureIndicatorOff")) & 1) != 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return v71;
    }

    v62 = [propertyCopy objectForKeyedSubscript:{-[CBBrightnessProxy brightnessSecureIndicatorActiveCount](selfCopy->_brtCtl, "brightnessSecureIndicatorActiveCount")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v62 unsignedIntValue])
      {
        [(CBSBIM *)selfCopy->_sbim disable];
      }

      else
      {
        [(CBSBIM *)selfCopy->_sbim enable];
      }

      [(CBDisplayModuleiOS *)selfCopy setProperty:v62 forKey:@"SecureIndicatorActiveCount"];
    }

    return 1;
  }

  else
  {
    if ([keyCopy isEqualToString:@"SecureIndicatorState"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"IndicatorUpdateRampAOD") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"IndicatorRampFinishedAOD"))
    {
      [(CBDisplayModuleiOS *)selfCopy sendNotificationForKey:keyCopy withValue:propertyCopy];
      return v71;
    }

    if (([keyCopy isEqualToString:@"DisplayBrightness"] & 1) == 0 || selfCopy->_brightnessControlEnabled)
    {
      if ([keyCopy isEqualToString:@"SBIMEnabled"])
      {
        if (CFBooleanGetValue(propertyCopy))
        {
          [(CBSBIM *)selfCopy->_sbim enable];
        }

        else
        {
          [(CBSBIM *)selfCopy->_sbim disable];
        }

        return 1;
      }

      else if ([keyCopy isEqualToString:@"FrameInfoLoggingEnabled"])
      {
        [(CBFrameStats *)selfCopy->_frameStats enableFrameInfoLogging:CFBooleanGetValue(propertyCopy) != 0];
        return 1;
      }

      else
      {
        if (([keyCopy isEqualToString:@"AuroraFactorWithFade"] & 1) == 0)
        {
          if ([keyCopy isEqualToString:@"TwilightStrength"])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CBDisplayModuleiOS *)selfCopy sendNotificationForKey:@"TwilightStrength" withValue:propertyCopy];
            }
          }

          else
          {
            if (CFEqual(keyCopy, @"DominoStateUpdate"))
            {
              TypeID = CFBooleanGetTypeID();
              if (TypeID == CFGetTypeID(propertyCopy))
              {
                Value = CFBooleanGetValue(propertyCopy);
                if (selfCopy->_dominoMode != Value)
                {
                  selfCopy->_dominoMode = Value != 0;
                  if (selfCopy->_dominoMode)
                  {
                    if ([(CBDisplayModuleiOS *)selfCopy edrIsEngaged])
                    {
                      context = objc_autoreleasePoolPush();
                      if (selfCopy->super.super._logHandle)
                      {
                        v38 = selfCopy->super.super._logHandle;
                      }

                      else
                      {
                        if (_COREBRIGHTNESS_LOG_DEFAULT)
                        {
                          v37 = _COREBRIGHTNESS_LOG_DEFAULT;
                        }

                        else
                        {
                          v37 = init_default_corebrightness_log();
                        }

                        v38 = v37;
                      }

                      v60 = v38;
                      v59 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        __os_log_helper_16_0_1_8_0(v88, 0x3FF0000000000000);
                        _os_log_error_impl(&dword_1DE8E5000, v60, v59, "Domino EDR | Entering Domino, reducing EDR headroom to %f", v88, 0xCu);
                      }

                      v86[0] = @"DominoHeadroomRequest";
                      v87[0] = MEMORY[0x1E695E118];
                      v86[1] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
                      v87[1] = &unk_1F59C9678;
                      -[CBDisplayModuleiOS setProperty:forKey:](selfCopy, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2], @"EDRHeadroomRequest");
                      objc_autoreleasePoolPop(context);
                    }
                  }

                  else if (selfCopy->_lastEDRHeadroomRequestFromCA)
                  {
                    v36 = objc_autoreleasePoolPush();
                    v58 = [selfCopy->_lastEDRHeadroomRequestFromCA mutableCopy];
                    [v58 setValue:MEMORY[0x1E695E118] forKey:@"DominoHeadroomRequest"];
                    if (selfCopy->super.super._logHandle)
                    {
                      v35 = selfCopy->super.super._logHandle;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v34 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v34 = init_default_corebrightness_log();
                      }

                      v35 = v34;
                    }

                    oslog = v35;
                    v56 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      [objc_msgSend(v58 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](selfCopy->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
                      __os_log_helper_16_0_1_8_0(v85, COERCE__INT64(v12));
                      _os_log_impl(&dword_1DE8E5000, oslog, v56, "Domino EDR | Domino is exiting Restoring EDR headroom after exiting to %f", v85, 0xCu);
                    }

                    [(CBDisplayModuleiOS *)selfCopy setProperty:v58 forKey:@"EDRHeadroomRequest"];
                    objc_autoreleasePoolPop(v36);
                  }

                  v33 = 0;
                  if (selfCopy->_brightnessControlEnabled)
                  {
                    v33 = !selfCopy->_dominoMode;
                  }

                  -[CBDisplayModuleiOS sendNotificationForKey:withValue:](selfCopy, "sendNotificationForKey:withValue:", @"CBBrightnessControlAvailable", [MEMORY[0x1E696AD98] numberWithBool:v33]);
                }
              }
            }

            else
            {
              if (CFEqual(keyCopy, @"AmbientAdaptiveDimming"))
              {
                if (propertyCopy)
                {
                  v32 = CFDictionaryGetTypeID();
                  if (v32 == CFGetTypeID(propertyCopy))
                  {
                    valuePtr = 0;
                    cf = CFDictionaryGetValue(propertyCopy, @"AmbientAdaptiveDimmingEnable");
                    if (cf)
                    {
                      v31 = CFNumberGetTypeID();
                      if (v31 == CFGetTypeID(cf))
                      {
                        CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
                      }
                    }

                    v53 = 0;
                    v52 = CFDictionaryGetValue(propertyCopy, @"AmbientAdaptiveDimmingPeriod");
                    if (v52)
                    {
                      v30 = CFNumberGetTypeID();
                      if (v30 == CFGetTypeID(v52))
                      {
                        CFNumberGetValue(v52, kCFNumberFloatType, &v53);
                      }
                    }

                    if (selfCopy->_autoDimActive != valuePtr)
                    {
                      selfCopy->_autoDimActive = valuePtr != 0;
                      if (selfCopy->_autoDimActive)
                      {
                        if ([(CBDisplayModuleiOS *)selfCopy edrIsEngaged])
                        {
                          v29 = objc_autoreleasePoolPush();
                          if (selfCopy->super.super._logHandle)
                          {
                            v28 = selfCopy->super.super._logHandle;
                          }

                          else
                          {
                            if (_COREBRIGHTNESS_LOG_DEFAULT)
                            {
                              v27 = _COREBRIGHTNESS_LOG_DEFAULT;
                            }

                            else
                            {
                              v27 = init_default_corebrightness_log();
                            }

                            v28 = v27;
                          }

                          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                          {
                            __os_log_helper_16_0_1_8_0(v84, COERCE__INT64(selfCopy->_appliedHeadroom));
                            _os_log_impl(&dword_1DE8E5000, v28, OS_LOG_TYPE_DEFAULT, "AutoDim EDR | Entering AutoDim, freezing EDR headroom to %f", v84, 0xCu);
                          }

                          v26 = selfCopy;
                          v82[0] = @"AutoDimHeadroomRequest";
                          v83[0] = MEMORY[0x1E695E118];
                          v82[1] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
                          *&v13 = selfCopy->_appliedHeadroom;
                          v83[1] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
                          -[CBDisplayModuleiOS setProperty:forKey:](v26, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2], @"EDRHeadroomRequest");
                          objc_autoreleasePoolPop(v29);
                        }
                      }

                      else if (selfCopy->_lastEDRHeadroomRequestFromCA)
                      {
                        v25 = objc_autoreleasePoolPush();
                        v51 = [selfCopy->_lastEDRHeadroomRequestFromCA mutableCopy];
                        [v51 setValue:MEMORY[0x1E695E118] forKey:@"AutoDimHeadroomRequest"];
                        if (selfCopy->super.super._logHandle)
                        {
                          v24 = selfCopy->super.super._logHandle;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v23 = init_default_corebrightness_log();
                          }

                          v24 = v23;
                        }

                        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                        {
                          [objc_msgSend(v51 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](selfCopy->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
                          __os_log_helper_16_0_1_8_0(v81, COERCE__INT64(v14));
                          _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEFAULT, "AutoDim EDR | AutoDim is exiting, restoring EDR headroom to %f", v81, 0xCu);
                        }

                        [(CBDisplayModuleiOS *)selfCopy setProperty:v51 forKey:@"EDRHeadroomRequest"];
                        objc_autoreleasePoolPop(v25);
                      }
                    }

                    return DisplaySetProperty(selfCopy->_displayInternal, keyCopy, propertyCopy) != 0;
                  }
                }

                return v71;
              }

              if (selfCopy->_brtCtl)
              {
                if ([keyCopy isEqualToString:@"EcoMode"])
                {
                  bOOLValue = [propertyCopy BOOLValue];
                  if (selfCopy->_ecoMode != bOOLValue)
                  {
                    selfCopy->_ecoMode = bOOLValue != 0;
                    [(AABCHistograms *)selfCopy->_analyticsHist setEcoModeOn:bOOLValue != 0];
                    if (selfCopy->_ecoMode)
                    {
                      if ([(CBDisplayModuleiOS *)selfCopy edrIsEngaged])
                      {
                        v22 = objc_autoreleasePoolPush();
                        if (selfCopy->super.super._logHandle)
                        {
                          v21 = selfCopy->super.super._logHandle;
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

                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v80, 0x3FF0000000000000);
                          _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "EcoMode EDR | Entering EcoMode Reducing EDR headroom to %f", v80, 0xCu);
                        }

                        v78[0] = @"EcoModeHeadroomRequest";
                        v79[0] = MEMORY[0x1E695E118];
                        v78[1] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
                        v79[1] = &unk_1F59C9678;
                        -[CBDisplayModuleiOS setProperty:forKey:](selfCopy, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2], @"EDRHeadroomRequest");
                        objc_autoreleasePoolPop(v22);
                      }
                    }

                    else if (selfCopy->_lastEDRHeadroomRequestFromCA)
                    {
                      v19 = objc_autoreleasePoolPush();
                      v49 = [selfCopy->_lastEDRHeadroomRequestFromCA mutableCopy];
                      [v49 setValue:MEMORY[0x1E695E118] forKey:@"EcoModeHeadroomRequest"];
                      if (selfCopy->super.super._logHandle)
                      {
                        v18 = selfCopy->super.super._logHandle;
                      }

                      else
                      {
                        if (_COREBRIGHTNESS_LOG_DEFAULT)
                        {
                          v17 = _COREBRIGHTNESS_LOG_DEFAULT;
                        }

                        else
                        {
                          v17 = init_default_corebrightness_log();
                        }

                        v18 = v17;
                      }

                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        [objc_msgSend(selfCopy->_lastEDRHeadroomRequestFromCA objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](selfCopy->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
                        __os_log_helper_16_0_1_8_0(v77, COERCE__INT64(v15));
                        _os_log_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEFAULT, "EcoMode EDR | EcoMode is exiting Restoring EDR headroom after exiting to %f", v77, 0xCu);
                      }

                      [(CBDisplayModuleiOS *)selfCopy setProperty:v49 forKey:@"EDRHeadroomRequest"];
                      objc_autoreleasePoolPop(v19);
                    }
                  }
                }
              }
            }

            return DisplaySetProperty(selfCopy->_displayInternal, keyCopy, propertyCopy) != 0;
          }

          return v71;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return v71;
        }

        [propertyCopy objectForKeyedSubscript:@"AuroraFactor"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return v71;
        }

        [propertyCopy objectForKeyedSubscript:@"AuroraFadePeriod"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return v71;
        }

        displayInternal = selfCopy->_displayInternal;
        [objc_msgSend(propertyCopy objectForKeyedSubscript:{@"AuroraFactor", "floatValue"}];
        v42 = v10;
        [objc_msgSend(propertyCopy objectForKeyedSubscript:{@"AuroraFadePeriod", "floatValue"}];
        DisplaySetAuroraFactorWithFade(displayInternal, v42, v11);
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }
}

- (void)handleNotificationForKey:(id)key withProperty:(id)property
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v33 = a2;
  keyCopy = key;
  propertyCopy = property;
  if (self->super.super._logHandle)
  {
    logHandle = selfCopy->super.super._logHandle;
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

  v30 = logHandle;
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v39, keyCopy, propertyCopy);
    _os_log_debug_impl(&dword_1DE8E5000, v30, v29, "Handle notification for key = %@ and property = %@", v39, 0x16u);
  }

  isBoostingBrightness = [(CBAurora *)selfCopy->_aurora isBoostingBrightness];
  [(CBAurora *)selfCopy->_aurora setPropertyForKey:keyCopy withValue:propertyCopy];
  [(CBChromaticCorrection *)selfCopy->_twilight handleNotificationForKey:keyCopy withProperty:propertyCopy];
  [(CBChromaticCorrection *)selfCopy->_ammolite handleNotificationForKey:keyCopy withProperty:propertyCopy];
  [(CBChromaticCorrection *)selfCopy->_gcp handleNotificationForKey:keyCopy withProperty:propertyCopy];
  [(CBIndicatorBrightnessModule *)selfCopy->_indicatorBrightnessModule handleNotificationForKey:keyCopy withProperty:propertyCopy];
  if ([keyCopy isEqualToString:@"CBTargetWhitePoint"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [propertyCopy objectForKey:@"YWP"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v27 floatValue];
        v26 = 1.0 / v4;
        DisplaySetEDRForTargetYcompensation(selfCopy->_displayInternal, 1.0 / v4);
      }
    }
  }

  else if ([keyCopy isEqualToString:@"BlueReductionEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_blrEnabled = [propertyCopy BOOLValue];
      if (selfCopy->super.super._logHandle)
      {
        v16 = selfCopy->super.super._logHandle;
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

      v25 = v16;
      v24 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v38, propertyCopy);
        _os_log_impl(&dword_1DE8E5000, v25, v24, "Set BLR enabled = %{public}@", v38, 0xCu);
      }

      DisplaySetBLREnabled(selfCopy->_displayInternal, selfCopy->_blrEnabled);
      if (CBU_IsSyncBrightnessTransactionsSupported())
      {
        [(CBAppliedCompensations *)selfCopy->_appliedCompensations setBlrEnabled:selfCopy->_blrEnabled];
      }
    }
  }

  else if ([keyCopy isEqualToString:@"ColorAdaptationActive"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_harmonyEnabled = [propertyCopy BOOLValue];
      if (selfCopy->super.super._logHandle)
      {
        v14 = selfCopy->super.super._logHandle;
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

      v23 = v14;
      v22 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v37, propertyCopy);
        _os_log_impl(&dword_1DE8E5000, v23, v22, "Set Harmony enabled = %{public}@", v37, 0xCu);
      }

      DisplaySetHarmonyEnabled(selfCopy->_displayInternal, selfCopy->_harmonyEnabled);
      if (CBU_IsSyncBrightnessTransactionsSupported())
      {
        [(CBAppliedCompensations *)selfCopy->_appliedCompensations setHarmonyEnabled:selfCopy->_harmonyEnabled];
      }
    }
  }

  else if ([keyCopy isEqualToString:@"TrustedLux"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [propertyCopy floatValue];
      v21 = *&v5;
      [(CBDisplayModuleiOS *)selfCopy updateBDMWithLux:v5];
      selfCopy->_trustedLux = v21;
      if (selfCopy->_brtCtl)
      {
        if (![+[CBAODState isAODActive] sharedInstance]
        {
          *&v6 = selfCopy->_trustedLux;
          [(CBBrightnessProxy *)selfCopy->_brtCtl setAmbient:v6];
          v20 = 0;
          if (([(CBBrightnessProxy *)selfCopy->_brtCtl commitBrightness:&v20]& 1) == 0)
          {
            if (selfCopy->super.super._logHandle)
            {
              v12 = selfCopy->super.super._logHandle;
            }

            else
            {
              v11 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v12 = v11;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v36, v20);
              _os_log_error_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_ERROR, "ERROR COMMITING LUX FROM CA!!!!!!! (%@)", v36, 0xCu);
            }
          }

          if (selfCopy->super.super._logHandle)
          {
            v10 = selfCopy->super.super._logHandle;
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

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_1_8_0(v35, COERCE__INT64(selfCopy->_trustedLux));
            _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_INFO, "Set trusted lux = %f", v35, 0xCu);
          }
        }
      }
    }
  }

  else if ([keyCopy isEqualToString:@"FrameSynchronizedBrightnessTransaction"])
  {
    [(CBDisplayModuleiOS *)selfCopy handleDisplayBrightnessUpdate:propertyCopy];
  }

  else if ([keyCopy isEqualToString:@"CPMS.CLTM.Cap"] & 1) != 0 && !isBoostingBrightness && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [propertyCopy floatValue];
    if (*&v7 < selfCopy->_nitsSDR)
    {
      *&v8 = selfCopy->_nitsSDR;
      [CBAnalytics cltmBudgetUpdated:v7 currentSDRBrightness:v8];
    }
  }

  else if ([keyCopy isEqualToString:@"AliasingMitigationActive"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_aliasingMitigationActive = [propertyCopy BOOLValue];
    }
  }

  else if ([keyCopy isEqualToString:@"DisplayBrightnessAuto"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [propertyCopy BOOLValue];
      if ([(AABCHistograms *)selfCopy->_analyticsHist autoBrightnessOn]!= (bOOLValue & 1))
      {
        [(AABCHistograms *)selfCopy->_analyticsHist setAutoBrightnessOn:bOOLValue & 1];
      }
    }
  }
}

- (void)sendNotificationForKey:(id)key withValue:(id)value
{
  if (self->super.super._notificationBlock)
  {
    (*(self->super.super._notificationBlock + 2))();
  }
}

- (id)copyPropertyInternalForKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v32 = a2;
  keyCopy = key;
  if (self->super.super._logHandle)
  {
    logHandle = selfCopy->super.super._logHandle;
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

  v30 = logHandle;
  v29 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    log = v30;
    *type = v29;
    buf = v36;
    __os_log_helper_16_2_1_8_64(v36, keyCopy);
    _os_log_impl(&dword_1DE8E5000, v30, v29, "Copy property for key = %@", v36, 0xCu);
  }

  v28 = 0;
  if ([keyCopy isEqualToString:@"StatusInfo"])
  {
    v27 = [CBStatusInfoHelper copyStatusInfoFor:selfCopy];
    if (v27)
    {
      v28 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v27, @"CBDisplayModuleiOS", 0}];
    }

    MEMORY[0x1E69E5920](v27);
    goto LABEL_43;
  }

  if (([keyCopy isEqualToString:@"CBBrightnessControlAvailable"] & 1) == 0)
  {
    if ([keyCopy isEqualToString:@"CBBrightnessIsUnderAutoDimThreshold"])
    {
      return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:selfCopy->_brightnessIsUnderAutoDimThresholdCurrentValue];
    }

    if ([keyCopy isEqualToString:@"EDRState"])
    {
      return [(CBEDR *)selfCopy->_edr copyStatusInfo];
    }

    if ([keyCopy isEqualToString:kCBBrightnessCapToCA])
    {
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v5 = selfCopy->_currentCapToCA;
      return [v4 initWithFloat:v5];
    }

    if ([keyCopy isEqualToString:@"DisplayNitsMaxSDR"])
    {
      if (selfCopy->_brtCtl)
      {
        v6 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v7 = selfCopy->_maxNits;
        v28 = [v6 initWithFloat:v7];
LABEL_43:
        if (selfCopy->super.super._logHandle)
        {
          v17 = selfCopy->super.super._logHandle;
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

        oslog = v17;
        v25 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v13 = oslog;
          *v14 = v25;
          v15 = v35;
          __os_log_helper_16_2_2_8_64_8_64(v35, keyCopy, v28);
          _os_log_debug_impl(&dword_1DE8E5000, v13, v14[0], "key=%@ result=%@", v15, 0x16u);
        }

        return v28;
      }
    }

    else if ([keyCopy isEqualToString:@"DisplayNitsMaxEDR"])
    {
      if (selfCopy->_brtCtl)
      {
        v8 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v9 = selfCopy->_maxNitsEDR;
        v28 = [v8 initWithFloat:v9];
        goto LABEL_43;
      }
    }

    else
    {
      if (([keyCopy isEqualToString:@"DisplayNitsMaxPanel"] & 1) == 0)
      {
        if ([keyCopy isEqualToString:@"DisplayNitsMaxAurora"])
        {
          if (selfCopy->_aurora)
          {
            v28 = [(CBAurora *)selfCopy->_aurora copyPropertyForKey:keyCopy];
          }
        }

        else if ([keyCopy isEqualToString:@"IndicatorModule"])
        {
          v28 = MEMORY[0x1E69E5928](selfCopy->_indicatorBrightnessModule);
        }

        else
        {
          v28 = [(CBIndicatorBrightnessModule *)selfCopy->_indicatorBrightnessModule copyPropertyForKey:keyCopy];
          if (!v28)
          {
            v28 = DisplayCopyProperty(selfCopy->_displayInternal, keyCopy);
          }
        }

        goto LABEL_43;
      }

      if (selfCopy->_brtCtl)
      {
        v10 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v11 = selfCopy->_maxNitsPanel;
        v28 = [v10 initWithFloat:v11];
        goto LABEL_43;
      }
    }

    v28 = DisplayCopyProperty(selfCopy->_displayInternal, @"DisplayPanelLuminanceMax");
    goto LABEL_43;
  }

  v18 = objc_alloc(MEMORY[0x1E696AD98]);
  brightnessControlEnabled = selfCopy->_brightnessControlEnabled;
  v19 = 0;
  if (brightnessControlEnabled)
  {
    v19 = !selfCopy->_dominoMode;
  }

  return [v18 initWithBool:v19 & 1];
}

- (void)handleEDRHeadroomRequest:(id)request
{
  v122 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v114 = a2;
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(requestCopy objectForKey:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](selfCopy->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
    v112 = *&v3;
    [(CBEDR *)selfCopy->_edr clampHeadroom:v3];
    v112 = *&v4;
    [(CBSBIM *)selfCopy->_sbim setCurrentHeadroomRequest:v4];
    if (selfCopy->_sbim)
    {
      [(CBSBIM *)selfCopy->_sbim cap];
      if (v112 > v5)
      {
        if (selfCopy->super.super._logHandle)
        {
          logHandle = selfCopy->super.super._logHandle;
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

        v111 = logHandle;
        v110 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          [(CBSBIM *)selfCopy->_sbim cap];
          __os_log_helper_16_0_2_8_0_8_0(v121, COERCE__INT64(v112), COERCE__INT64(v6));
          _os_log_impl(&dword_1DE8E5000, v111, v110, "EDR headroom is being capped by SBIM: request=%f cap=%f", v121, 0x16u);
        }

        [(CBSBIM *)selfCopy->_sbim cap];
        v112 = v7;
      }
    }

    v63 = [requestCopy objectForKeyedSubscript:@"AuroraEDRHeadroomRequest"];
    if (v63 != *MEMORY[0x1E695E4D0] && ((*&v8 = v112, [(CBAurora *)selfCopy->_aurora setCurrentEDRHeadroomRequest:v8], [(CBAurora *)selfCopy->_aurora isActive]) || [(CBAurora *)selfCopy->_aurora isBoostingBrightness]))
    {
      if (selfCopy->super.super._logHandle)
      {
        v62 = selfCopy->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v61 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v61 = init_default_corebrightness_log();
        }

        v62 = v61;
      }

      v109 = v62;
      v108 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v109;
        v60 = v108;
        __os_log_helper_16_0_0(v107);
        _os_log_impl(&dword_1DE8E5000, v59, v60, "Discarding EDR headroom request, Aurora is active", v107, 2u);
      }
    }

    else
    {
      [requestCopy objectForKeyedSubscript:@"AODEDRHeadroomRequest"];
      objc_opt_class();
      v58 = 0;
      if (objc_opt_isKindOfClass())
      {
        v58 = [objc_msgSend(requestCopy objectForKeyedSubscript:{@"AODEDRHeadroomRequest", "BOOLValue"}];
      }

      v106 = v58 & 1;
      if (![+[CBAODState isAODActive]|| (v106 & 1) != 0 sharedInstance]
      {
        v102 = float_equal(v112, 1.0);
        v53 = 0;
        if (v112 > 1.0)
        {
          v53 = float_equal(selfCopy->_requestedHeadroom, 1.0);
        }

        v101 = v53;
        v100 = !float_equal(selfCopy->_requestedHeadroom, v112);
        v52 = 0;
        if (v100)
        {
          v52 = v112 < selfCopy->_appliedHeadroom;
        }

        v99 = v52;
        [requestCopy objectForKeyedSubscript:@"EcoModeHeadroomRequest"];
        objc_opt_class();
        v51 = 0;
        if (objc_opt_isKindOfClass())
        {
          v51 = [objc_msgSend(requestCopy objectForKeyedSubscript:{@"EcoModeHeadroomRequest", "BOOLValue"}];
        }

        v98 = v51 & 1;
        if (!selfCopy->_ecoMode || selfCopy->_referenceModeIsActive || (v98 & 1) != 0 || v102)
        {
          [requestCopy objectForKeyedSubscript:@"DominoHeadroomRequest"];
          objc_opt_class();
          v46 = 0;
          if (objc_opt_isKindOfClass())
          {
            v46 = [objc_msgSend(requestCopy objectForKeyedSubscript:{@"DominoHeadroomRequest", "BOOLValue"}];
          }

          v94 = v46 & 1;
          if (!selfCopy->_dominoMode || (v94 & 1) != 0)
          {
            [requestCopy objectForKeyedSubscript:@"AutoDimHeadroomRequest"];
            objc_opt_class();
            v41 = 0;
            if (objc_opt_isKindOfClass())
            {
              v41 = [objc_msgSend(requestCopy objectForKeyedSubscript:{@"AutoDimHeadroomRequest", "BOOLValue"}];
            }

            v90 = v41 & 1;
            if (!selfCopy->_autoDimActive || (v90 & 1) != 0 || v102)
            {
              if (v101)
              {
                if ([(CBBacklightNode *)selfCopy->_backlightParams rtplc])
                {
                  v81[0] = 0;
                  v81[1] = v81;
                  v82 = 1375731712;
                  v83 = 48;
                  v84 = __Block_byref_object_copy_;
                  v85 = __Block_byref_object_dispose_;
                  v86 = selfCopy;
                  v73 = MEMORY[0x1E69E9820];
                  v74 = -1073741824;
                  v75 = 0;
                  v76 = __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke;
                  v77 = &unk_1E867B5F0;
                  v79 = v81;
                  v78 = selfCopy;
                  v80 = &v73;
                  [(CBFrameStats *)selfCopy->_frameStats startMonitoring:&v73];
                  if (selfCopy->_rtplcState == 2 || selfCopy->_rtplcState == 1)
                  {
                    LODWORD(v10) = 0.5;
                    [(CBDisplayModuleiOS *)selfCopy createAPCEMonitorWithFrequency:v10];
                  }

                  _Block_object_dispose(v81, 8);
                }

                *&v9 = v112;
                [(CBDisplayModuleiOS *)selfCopy updateEDRStateForEvent:2 andHeadroom:v9];
              }

              if (v100)
              {
                if (v112 <= selfCopy->_sbimEDRThreshold)
                {
                  [(CBSBIM *)selfCopy->_sbim exitEDR];
                }

                else
                {
                  [(CBSBIM *)selfCopy->_sbim enterEDR];
                }
              }

              if (v102)
              {
                if ([(CBBacklightNode *)selfCopy->_backlightParams rtplc])
                {
                  [(CBFrameStats *)selfCopy->_frameStats stopMonitoring];
                  [(CBDisplayModuleiOS *)selfCopy deleteAPCEMonitor];
                }

                *&v11 = v112;
                [(CBDisplayModuleiOS *)selfCopy updateEDRStateForEvent:3 andHeadroom:v11];
              }

              edrIsEngaged = [(CBDisplayModuleiOS *)selfCopy edrIsEngaged];
              displayInternal = selfCopy->_displayInternal;
              if (edrIsEngaged)
              {
                DisplaySetProperty(displayInternal, @"DisplayFasterEDREngaged", *MEMORY[0x1E695E4D0]);
              }

              else
              {
                DisplaySetProperty(displayInternal, @"DisplayFasterEDREngaged", *MEMORY[0x1E695E4C0]);
              }

              selfCopy->_requestedHeadroom = v112;
              v71 = 1.0;
              v70 = 0.0;
              [requestCopy objectForKeyedSubscript:@"EDRSecondsPerStop"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [objc_msgSend(requestCopy objectForKeyedSubscript:{@"EDRSecondsPerStop", "floatValue"}];
                v68 = v12;
                if (selfCopy->super.super._logHandle)
                {
                  v35 = selfCopy->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v34 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v34 = init_default_corebrightness_log();
                  }

                  v35 = v34;
                }

                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_0_1_8_0(v120, COERCE__INT64(v68));
                  _os_log_impl(&dword_1DE8E5000, v35, OS_LOG_TYPE_DEFAULT, "HDR | Transition is using the seconds per stop specified in request = %f", v120, 0xCu);
                }

                *&v13 = selfCopy->_requestedHeadroom;
                *&v14 = v68;
                v69 = [(CBEDR *)selfCopy->_edr shouldUpdateEDRForRequestedHeadroom:&v71 targetHeadroom:&v70 rampTime:v13 durationPerStop:v14];
              }

              else if (v102 || v99)
              {
                if (selfCopy->super.super._logHandle)
                {
                  v33 = selfCopy->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v32 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v32 = init_default_corebrightness_log();
                  }

                  v33 = v32;
                }

                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = @"Exit transition";
                  if (!v102)
                  {
                    v15 = @"Transition to lower headroom";
                  }

                  v31 = v15;
                  [(CBEDR *)selfCopy->_edr secondsPerStopExit];
                  __os_log_helper_16_2_2_8_64_8_0(v119, v31, COERCE__INT64(v16));
                  _os_log_impl(&dword_1DE8E5000, v33, OS_LOG_TYPE_DEFAULT, "HDR | %@ is using the exit duration per stop = %f", v119, 0x16u);
                }

                edr = selfCopy->_edr;
                requestedHeadroom = selfCopy->_requestedHeadroom;
                [(CBEDR *)edr secondsPerStopExit];
                LODWORD(v18) = v17;
                *&v19 = requestedHeadroom;
                v69 = [(CBEDR *)edr shouldUpdateEDRForRequestedHeadroom:&v71 targetHeadroom:&v70 rampTime:v19 durationPerStop:v18];
              }

              else
              {
                if (selfCopy->super.super._logHandle)
                {
                  v28 = selfCopy->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v27 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v27 = init_default_corebrightness_log();
                  }

                  v28 = v27;
                }

                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  [(CBEDR *)selfCopy->_edr secondsPerStop];
                  __os_log_helper_16_0_1_8_0(v118, COERCE__INT64(v21));
                  _os_log_impl(&dword_1DE8E5000, v28, OS_LOG_TYPE_DEFAULT, "HDR | Transition is using the default duration per stop = %f", v118, 0xCu);
                }

                *&v20 = selfCopy->_requestedHeadroom;
                v69 = [(CBEDR *)selfCopy->_edr shouldUpdateEDRForRequestedHeadroom:&v71 targetHeadroom:&v70 rampTime:v20];
              }

              if ([requestCopy objectForKeyedSubscript:{-[CBBrightnessProxy brightnessNotificationPowerOff](selfCopy->_brtCtl, "brightnessNotificationPowerOff")}])
              {
                v69 = 1;
                [(CBEDR *)selfCopy->_edr resetRequestedHeadroom];
              }

              v67 = [requestCopy objectForKey:{-[CBBrightnessProxy brightnessRequestRampDuration](selfCopy->_brtCtl, "brightnessRequestRampDuration")}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v67 floatValue];
                v66 = v22;
                if (selfCopy->super.super._logHandle)
                {
                  v26 = selfCopy->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v25 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v25 = init_default_corebrightness_log();
                  }

                  v26 = v25;
                }

                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_0_3_8_0_8_0_8_0(v117, COERCE__INT64(selfCopy->_requestedHeadroom), COERCE__INT64(selfCopy->_appliedHeadroom), COERCE__INT64(v66));
                  _os_log_impl(&dword_1DE8E5000, v26, OS_LOG_TYPE_DEFAULT, "HDR | CA request for headroom: %f, currrent headroom: %f, transitionTime: %f", v117, 0x20u);
                }

                DisplayStartFastEDRRamp(selfCopy->_displayInternal, selfCopy->_requestedHeadroom, v66);
              }

              else if (v69)
              {
                if (selfCopy->super.super._logHandle)
                {
                  v24 = selfCopy->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v23 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v23 = init_default_corebrightness_log();
                  }

                  v24 = v23;
                }

                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_0_3_8_0_8_0_8_0(v116, COERCE__INT64(selfCopy->_requestedHeadroom), *&v70, COERCE__INT64(v71));
                  _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEFAULT, "HDR | Received EDRHeadroomRequest: %f, evaluated ramp time: %f, targetHeadroom: %f", v116, 0x20u);
                }

                DisplayStartFastEDRRamp(selfCopy->_displayInternal, v71, v70);
              }
            }

            else
            {
              if (selfCopy->super.super._logHandle)
              {
                v40 = selfCopy->super.super._logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v39 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v39 = init_default_corebrightness_log();
                }

                v40 = v39;
              }

              v89 = v40;
              v88 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v37 = v89;
                v38 = v88;
                __os_log_helper_16_0_0(v87);
                _os_log_impl(&dword_1DE8E5000, v37, v38, "AutoDim EDR | Discarding AutoDim EDR headroom request, AutoDim is on", v87, 2u);
              }
            }
          }

          else
          {
            if (selfCopy->super.super._logHandle)
            {
              v45 = selfCopy->super.super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v44 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v44 = init_default_corebrightness_log();
              }

              v45 = v44;
            }

            v93 = v45;
            v92 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v93;
              v43 = v92;
              __os_log_helper_16_0_0(v91);
              _os_log_impl(&dword_1DE8E5000, v42, v43, "Domino EDR | Discarding Domino EDR headroom request, Domino is on", v91, 2u);
            }
          }
        }

        else
        {
          if (selfCopy->super.super._logHandle)
          {
            v50 = selfCopy->super.super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v49 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v49 = init_default_corebrightness_log();
            }

            v50 = v49;
          }

          v97 = v50;
          v96 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v97;
            v48 = v96;
            __os_log_helper_16_0_0(v95);
            _os_log_impl(&dword_1DE8E5000, v47, v48, "EcoMode EDR | Discarding EDR headroom request, EcoMode is on", v95, 2u);
          }
        }
      }

      else
      {
        if (selfCopy->super.super._logHandle)
        {
          v57 = selfCopy->super.super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v56 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v56 = init_default_corebrightness_log();
          }

          v57 = v56;
        }

        v105 = v57;
        v104 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v105;
          v55 = v104;
          __os_log_helper_16_0_0(v103);
          _os_log_impl(&dword_1DE8E5000, v54, v55, "AOD EDR | Discarding EDR headroom request, AOD is on", v103, 2u);
        }
      }
    }
  }
}

void __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke(uint64_t a1, _OWORD *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = *(*(*(*(a1 + 40) + 8) + 40) + 24);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke_2;
  v8 = &unk_1E867B5C8;
  v10 = *(a1 + 40);
  v11 = *a2;
  v12 = a2[1];
  v9 = *(a1 + 32);
  dispatch_async(v3, &block);
}

uint64_t __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke_2(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = *(a1 + 48);
  v7[1] = *(a1 + 64);
  [v2 handleFrameInfo:v7];
  v3 = *(*(a1 + 32) + 272);
  v6[0] = *(a1 + 48);
  v6[1] = *(a1 + 64);
  return [v3 processFrameInfo:v6];
}

- (void)handleDisplayBrightnessUpdate:(id)update
{
  v342 = v365;
  v343 = "Brightness Cap";
  v395 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v380 = a2;
  updateCopy = update;
  updateCopy2 = update;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(*(v342 + 32) objectForKey:{@"NitsPhysical", "floatValue"}];
    v3 = v342;
    *(v342 + 63) = v4;
    [objc_msgSend(*(v3 + 32) objectForKey:{@"EDRHeadroom", "floatValue"}];
    v5 = v342;
    *(v342 + 62) = v6;
    [objc_msgSend(*(v5 + 32) objectForKey:{@"NitsCap", "floatValue"}];
    v7 = v342;
    *(v342 + 61) = v8;
    [objc_msgSend(*(v7 + 32) objectForKey:{@"DynSliderCap", "floatValue"}];
    v9 = v342;
    *(*(v342 + 34) + 120) = v10;
    if (*(v9 + 63) < 0.0)
    {
      if (*(*(v342 + 34) + 16))
      {
        v217 = *(*(v342 + 34) + 16);
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

        v217 = inited;
      }

      v346 = v217;
      v345 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
      {
        v214[15] = v346;
        *v215 = v345;
        __os_log_helper_16_0_1_8_0(v382, COERCE__INT64(*(v342 + 63)));
        _os_log_impl(&dword_1DE8E5000, v346, v345, "Unexpected SDR brightness: %f, ignore", v382, 0xCu);
      }
    }

    else
    {
      v340 = *(*(v342 + 34) + 280);
      [v340 updateRampsForTimestamp:mach_time_now_in_seconds()];
      v11 = v342;
      *(*(v342 + 34) + 116) = *(v342 + 63);
      [*(v11 + 34) compensatedSDRNits];
      v12 = *(v342 + 34);
      v341 = 0x1ECDAF000uLL;
      [*(v12 + 136) setSdrBrightness:?];
      LODWORD(v13) = *(v342 + 61);
      [*(*(v342 + 34) + 136) setBrightnessCap:v13];
      LODWORD(v14) = *(v342 + 63);
      [*(*(v342 + 34) + 144) setSdrBrightness:v14];
      if ([*(*(v342 + 34) + 336) rtplc])
      {
        if (*(*(v342 + 34) + 240) == 2 || *(*(v342 + 34) + 240) == 1 || *(*(v342 + 34) + 240) == 3)
        {
          *&v15 = DisplayGetCurrentRTPLCHeadroomCap(*(*(v342 + 34) + 328));
          v16 = v342;
          *(v342 + 60) = LODWORD(v15);
          *(*(v16 + 34) + 232) = fminf(*(v16 + 60), *(*(v16 + 34) + 108));
        }

        *&v15 = fminf(*(*(v342 + 34) + 232), *(v342 + 61));
        [*(*(v342 + 34) + 136) setBrightnessCap:v15];
        if (*(*(v342 + 34) + 16))
        {
          v339 = *(*(v342 + 34) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v338 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v338 = init_default_corebrightness_log();
          }

          v339 = v338;
        }

        v17 = v342;
        *(v342 + 29) = v339;
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(*(v17 + 29), OS_LOG_TYPE_INFO))
        {
          log = *(v342 + 29);
          *v336 = type;
          v18 = [*(v342 + 34) rtplcStateToString:*(*(v342 + 34) + 240)];
          *&v19 = *(*(v342 + 34) + 232);
          *&v20 = *(v342 + 61);
          *&v21 = *(*(v342 + 34) + 120);
          *&v22 = *(*(v342 + 34) + 116);
          buf = v394;
          __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v394, v18, v19, v20, v21, v22);
          _os_log_impl(&dword_1DE8E5000, log, v336[0], "HDR CAPS | RTPLC: [%s] %f, currentNitCap: %f, dynSliderCap: %f, Nits: %f", v394, 0x34u);
        }
      }

      copyStatusInfo = [*(*(v342 + 34) + 136) copyStatusInfo];
      v24 = v342;
      *(v342 + 27) = copyStatusInfo;
      if (*(v24 + 27))
      {
        v334 = *(v342 + 27);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (*(*(v342 + 34) + 16))
          {
            v333 = *(*(v342 + 34) + 16);
          }

          else
          {
            v332 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v333 = v332;
          }

          v25 = v342;
          *(v342 + 26) = v333;
          v377 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v25 + 26), OS_LOG_TYPE_DEBUG))
          {
            v318 = *(v342 + 26);
            *v319 = v377;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"AvailableHeadroom", "floatValue"}];
            *&v320 = v26;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"BrightnessCap", "floatValue"}];
            *&v321 = v27;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"HDRMax", "floatValue"}];
            *&v322 = v28;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"Headroom", "floatValue"}];
            *&v323 = v29;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"MaxHeadroom", "floatValue"}];
            *&v324 = v30;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"PanelMax", "floatValue"}];
            *&v325 = v31;
            v326 = [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"RampPolicy", "unsignedLongValue"}];
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"ReferenceHeadroom", "floatValue"}];
            *&v327 = v32;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"RequestedHeadroom", "floatValue"}];
            *&v328 = v33;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"SDR", "floatValue"}];
            *&v329 = v34;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"SecPerStop", "floatValue"}];
            *&v330 = v35;
            [objc_msgSend(*(v342 + 27) objectForKeyedSubscript:{@"SecPerStopExit", "floatValue"}];
            *&v331 = v36;
            if ([*(*(v342 + 34) + 136) headroomModulator])
            {
              v317 = [objc_msgSend(*(*(v342 + 34) + 136) "headroomModulator")];
            }

            else
            {
              v317 = 0;
            }

            v316 = v393;
            __os_log_helper_16_0_13_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v393, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v317 & 1);
            _os_log_debug_impl(&dword_1DE8E5000, v318, v319[0], "CBEDR statusInfo | AvailableHeadroom=%.3f | BrightnessCap=%.3f | HDRMax=%.3f | Headroom=%.3f | MaxHeadroom=%.3f | PanelMax=%.3f | RampPolicy=%lu | ReferenceHeadroom=%.3f | RequestedHeadroom=%.3f | Compensated.SDR=%.3f | SecPerStop=%.3f | SecPerStopExit=%.3f | ModulatorEnabled=%d", v393, 0x80u);
          }
        }
      }

      v37 = MEMORY[0x1E69E5920](*(v342 + 27));
      v37.n128_u32[0] = *(v342 + 62);
      [*(*(v342 + 34) + 136) cappedHeadroomFromUncapped:v37.n128_f64[0]];
      v38 = v342;
      *(*(v342 + 34) + 156) = v39;
      *(v38 + 50) = *(*(v38 + 34) + 108);
      if ([*(*(v38 + 34) + 48) isBoostingBrightness])
      {
        *(v342 + 50) = *(*(v342 + 34) + 112);
      }

      LODWORD(v40) = *(v342 + 63);
      v41 = *(v342 + 34);
      v315 = 0x1ECDAF000uLL;
      [*(v41 + 48) setCurrentNits:v40];
      LODWORD(v42) = *(*(v342 + 34) + 156);
      [*(*(v342 + 34) + 48) setCurrentEDRHeadroom:v42];
      if (![+[CBAODState isAODActive] sharedInstance]
      {
        LODWORD(v43) = *(v342 + 63);
        v44 = *(v342 + 34);
        v312 = 0x1ECDAF000uLL;
        [*(v44 + 56) setNits:v43];
        LODWORD(v45) = *(v342 + 63);
        v46 = *(v342 + 34);
        v313 = 0x1ECDAF000uLL;
        [*(v46 + 64) setNits:v45];
        LODWORD(v47) = *(v342 + 63);
        v48 = *(v342 + 34);
        v314 = 0x1ECDAF000uLL;
        [*(v48 + 72) setNits:v47];
        [*(*(v342 + 34) + 56) updateRamp];
        [*(*(v342 + 34) + 64) updateRamp];
        [*(*(v342 + 34) + 72) updateRamp];
      }

      if (![+[CBAODState isAODActive] sharedInstance]
      {
        v50 = *(v342 + 34);
        v311 = 0x1ECDAF000uLL;
        LODWORD(v49) = *(*(v342 + 34) + 116);
        [*(v50 + 80) setSDRBrightness:v49];
        LODWORD(v51) = *(*(v342 + 34) + 156);
        [*(*(v342 + 34) + 80) setAppliedHeadroom:v51];
        [*(*(v342 + 34) + 80) updateRamp];
      }

      LODWORD(v49) = *(*(v342 + 34) + 156);
      [*(*(v342 + 34) + 144) setCurrentHeadroom:v49];
      v52 = v342;
      *(v342 + 49) = 0;
      if (*(*(v52 + 34) + 164))
      {
        *(v342 + 49) = *(v342 + 61);
      }

      else if ([*(v342 + 34) shouldForceCapRamp])
      {
        [*(v342 + 34) compensatedSDRNits];
        v53 = v342;
        *(v342 + 49) = fminf(v54 * *(*(v342 + 34) + 156), *(v342 + 50));
        if (*(*(v53 + 34) + 16))
        {
          v310 = *(*(v342 + 34) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v309 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v309 = init_default_corebrightness_log();
          }

          v310 = v309;
        }

        v55 = v342;
        *(v342 + 23) = v310;
        v376 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(*(v55 + 23), OS_LOG_TYPE_DEFAULT))
        {
          v306 = *(v342 + 23);
          *v307 = v376;
          *&v56 = *(*(v342 + 34) + 124);
          *&v57 = *(v342 + 49);
          *&v58 = *(*(v342 + 34) + 120);
          v308 = v392;
          __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v392, v343, v56, v57, v58);
          _os_log_impl(&dword_1DE8E5000, v306, v307[0], "[BRT update: %s]: currentCap: %f targetCap: %f dynSliderCap: %f", v392, 0x2Au);
        }

        v59 = v342;
        *(*(v342 + 34) + 124) = *(v342 + 49);
        DisplayClockCapRamp(*(*(v59 + 34) + 328));
        *(*(v342 + 34) + 128) = 1;
      }

      else if (*(*(v342 + 34) + 128))
      {
        if ((*(*(v342 + 34) + 124) - 10.0) <= *(*(v342 + 34) + 120) || *(*(v342 + 34) + 176) == 1)
        {
          DisplayStopCapRamp(*(*(v342 + 34) + 328));
          v60 = v342;
          *(v342 + 49) = fmaxf(*(*(v342 + 34) + 120), *(*(v342 + 34) + 124) - 10.0);
          *(*(v60 + 34) + 128) = 0;
        }

        else
        {
          v61 = v342;
          *(v342 + 49) = *(*(v342 + 34) + 124) - 10.0;
          *(*(v61 + 34) + 124) = *(*(v61 + 34) + 124) - 10.0;
        }
      }

      else
      {
        v305 = *(v342 + 61);
        v304 = *(*(v342 + 34) + 120);
        [*(v342 + 34) compensatedSDRNits];
        v62 = v342;
        *(v342 + 49) = fminf(v305, fmaxf(v304, fminf(v63 * *(*(v342 + 34) + 156), *(v342 + 50))));
        *(*(v62 + 34) + 124) = *(v62 + 49);
      }

      if ([*(*(v342 + 34) + 336) rtplc])
      {
        [*(v342 + 34) compensatedSDRNits];
        v65 = v342;
        *(v342 + 44) = v66 * *(*(v342 + 34) + 156);
        *(v65 + 43) = *(v65 + 44) / *(*(v65 + 34) + 116);
        if (*(*(v65 + 34) + 240) == 2)
        {
          if (*(*(v342 + 34) + 16))
          {
            v303 = *(*(v342 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v302 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v302 = init_default_corebrightness_log();
            }

            v303 = v302;
          }

          v67 = v342;
          *(v342 + 20) = v303;
          v375 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v67 + 20), OS_LOG_TYPE_DEBUG))
          {
            v299 = *(v342 + 20);
            *v300 = v375;
            *&v68 = *(v342 + 44);
            *&v69 = *(v342 + 43);
            *&v70 = *(v342 + 62);
            *&v71 = *(*(v342 + 34) + 160);
            *&v72 = *(*(v342 + 34) + 232);
            v301 = v391;
            __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v391, v68, v69, v70, v71, v72);
            _os_log_debug_impl(&dword_1DE8E5000, v299, v300[0], "HDR RTPLC RECOVERY: hdrBrightness = %f, hdrHeadroom = %f, currentHeadroom = %f, _requestedHeadroom = %f, rtplcCap = %f", v391, 0x34u);
          }

          if (*(v342 + 44) < *(*(v342 + 34) + 108))
          {
            if (*(v342 + 43) >= *(*(v342 + 34) + 160) && *(v342 + 44) < *(*(v342 + 34) + 232) && *(v342 + 62) <= *(v342 + 43))
            {
              if (*(*(v342 + 34) + 16))
              {
                v293 = *(*(v342 + 34) + 16);
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v292 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v292 = init_default_corebrightness_log();
                }

                v293 = v292;
              }

              v75 = v342;
              *(v342 + 16) = v293;
              v372 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(*(v75 + 16), OS_LOG_TYPE_DEFAULT))
              {
                v289 = *(v342 + 16);
                *v290 = v372;
                *&v76 = *(*(v342 + 34) + 232);
                *&v77 = *(*(v342 + 34) + 108);
                v291 = v390;
                __os_log_helper_16_0_2_8_0_8_0(v390, v76, v77);
                _os_log_impl(&dword_1DE8E5000, v289, v290[0], "HDR RTPLC RECOVERY COMPLETE -> EXITING RTPLC: ramp cap: %f --> %f", v390, 0x16u);
              }

              [*(v342 + 34) deleteAPCEMonitor];
              v78 = v342;
              *(*(v342 + 34) + 240) = 3;
              DisplayStartRTPLCEDRCapRamp(*(*(v78 + 34) + 328), 0, *(*(v78 + 34) + 232), *(*(v78 + 34) + 108), 4.0);
            }
          }

          else
          {
            v73 = v342;
            *(*(v342 + 34) + 232) = *(*(v342 + 34) + 108);
            *(*(v73 + 34) + 240) = 0;
            if (*(*(v73 + 34) + 16))
            {
              v298 = *(*(v342 + 34) + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v297 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v297 = init_default_corebrightness_log();
              }

              v298 = v297;
            }

            v74 = v342;
            *(v342 + 18) = v298;
            v374 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(*(v74 + 18), OS_LOG_TYPE_DEFAULT))
            {
              v294 = *(v342 + 18);
              *v295 = v374;
              v296 = v373;
              __os_log_helper_16_0_0(v373);
              _os_log_impl(&dword_1DE8E5000, v294, v295[0], "HDR RTPLC RECOVERY COMPLETE!!", v373, 2u);
            }

            [*(v342 + 34) deleteAPCEMonitor];
          }
        }

        else if (*(*(v342 + 34) + 240) == 1)
        {
          if (*(*(v342 + 34) + 16))
          {
            v288 = *(*(v342 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v287 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v287 = init_default_corebrightness_log();
            }

            v288 = v287;
          }

          v79 = v342;
          *(v342 + 14) = v288;
          v371 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v79 + 14), OS_LOG_TYPE_DEBUG))
          {
            v284 = *(v342 + 14);
            *v285 = v371;
            *&v80 = *(v342 + 44);
            *&v81 = *(*(v342 + 34) + 232);
            *&v82 = *(v342 + 43);
            *&v83 = *(v342 + 62);
            *&v84 = *(*(v342 + 34) + 160);
            v286 = v389;
            __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v389, v80, v81, v82, v83, v84);
            _os_log_debug_impl(&dword_1DE8E5000, v284, v285[0], "HDR RTPLC ACTION: hdrBrightness = %f, rtplcCap = %f, hdrHeadroom = %f, currentHeadroom = %f, _requestedHeadroom = %f", v389, 0x34u);
          }

          if (float_equal(*(*(v342 + 34) + 160), 1.0) && *(v342 + 44) < *(*(v342 + 34) + 232))
          {
            v85 = v342;
            *(*(v342 + 34) + 224) = 0;
            if (*(*(v85 + 34) + 16))
            {
              v283 = *(*(v342 + 34) + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v282 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v282 = init_default_corebrightness_log();
              }

              v283 = v282;
            }

            v86 = v342;
            *(v342 + 12) = v283;
            v370 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(*(v86 + 12), OS_LOG_TYPE_DEFAULT))
            {
              v279 = *(v342 + 12);
              *v280 = v370;
              *&v87 = *(*(v342 + 34) + 232);
              *&v88 = *(*(v342 + 34) + 108);
              v281 = v388;
              __os_log_helper_16_0_2_8_0_8_0(v388, v87, v88);
              _os_log_impl(&dword_1DE8E5000, v279, v280[0], "HDR RTPLC RELEASED AND RECOVERY COMPLETE -> EXITING RTPLC: ramp cap: %f --> %f", v388, 0x16u);
            }

            [*(v342 + 34) deleteAPCEMonitor];
            v89 = v342;
            *(*(v342 + 34) + 240) = 3;
            DisplayStartRTPLCEDRCapRamp(*(*(v89 + 34) + 328), 0, *(*(v89 + 34) + 232), *(*(v89 + 34) + 108), 4.0);
          }
        }

        else if (*(*(v342 + 34) + 240) == 3)
        {
          if (*(*(v342 + 34) + 16))
          {
            v278 = *(*(v342 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v277 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v277 = init_default_corebrightness_log();
            }

            v278 = v277;
          }

          v90 = v342;
          *(v342 + 10) = v278;
          v369 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v90 + 10), OS_LOG_TYPE_DEBUG))
          {
            v274 = *(v342 + 10);
            *v275 = v369;
            *&v91 = *(*(v342 + 34) + 232);
            *&v92 = *(*(v342 + 34) + 108);
            v276 = v387;
            __os_log_helper_16_0_2_8_0_8_0(v387, v91, v92);
            _os_log_debug_impl(&dword_1DE8E5000, v274, v275[0], "HDR RTPLC EXIT: _rtplcCap = %f (_maxNitsEDR = %f)", v387, 0x16u);
          }

          if (float_equal(*(*(v342 + 34) + 232), *(*(v342 + 34) + 108)))
          {
            if (*(*(v342 + 34) + 16))
            {
              v273 = *(*(v342 + 34) + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v272 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v272 = init_default_corebrightness_log();
              }

              v273 = v272;
            }

            v93 = v342;
            *(v342 + 8) = v273;
            v368 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(*(v93 + 8), OS_LOG_TYPE_DEFAULT))
            {
              v269 = *(v342 + 8);
              *v270 = v368;
              v271 = v367;
              __os_log_helper_16_0_0(v367);
              _os_log_impl(&dword_1DE8E5000, v269, v270[0], "RTPLC EXIT COMPLETE!!", v367, 2u);
            }

            *(*(v342 + 34) + 240) = 0;
          }
        }

        if (float_equal(*(*(v342 + 34) + 156), 1.0))
        {
          v94 = v342;
          *(*(v342 + 34) + 232) = *(*(v342 + 34) + 108);
          *(*(v94 + 34) + 240) = 0;
        }
      }

      LODWORD(v64) = *(v342 + 62);
      [*(v342 + 34) updateEDRStateForEvent:4 andHeadroom:v64];
      if (![+[CBAODState isAODActive] sharedInstance]
      {
        v95 = v342;
        v96 = (*(v342 + 34) + 248);
        v97 = (*v96)++;
        *(v95 + 6) = v97;
        *(v95 + 11) = 2143289344;
        v268 = [*(v95 + 32) objectForKey:@"ContrastEnhancerStrength"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(*(v342 + 32) objectForKey:{@"ContrastEnhancerStrength", "floatValue"}];
          *(v342 + 11) = v98;
        }

        v99 = v342;
        *(v342 + 10) = 2143289344;
        if (*(*(v99 + 34) + 56))
        {
          [*(*(v342 + 34) + 56) currentStrength];
          *(v342 + 10) = v100;
        }

        v101 = v342;
        *(v342 + 9) = 2143289344;
        if (*(*(v101 + 34) + 64))
        {
          [*(*(v342 + 34) + 64) currentStrength];
          *(v342 + 9) = v102;
        }

        if (*(*(v342 + 34) + 72))
        {
          [*(*(v342 + 34) + 72) currentStrength];
          v267 = v103;
        }

        else
        {
          v267 = 2143289344;
        }

        v104 = v342;
        *(v342 + 8) = v267;
        *(v104 + 7) = 2143289344;
        if (*(*(v104 + 34) + 80) && (CBU_IsSecureIndicatorSupported() & 1) != 0 && [+[CBSILState isSILActive] sharedInstance]
        {
          [*(*(v342 + 34) + 80) currentIndicatorBrightness];
          *(v342 + 7) = v105;
        }

        v106 = v342;
        *(v342 + 6) = fmaxf(*(v342 + 7), *(v342 + 49));
        if (*(*(v106 + 34) + 16))
        {
          v266 = *(*(v342 + 34) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v265 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v265 = init_default_corebrightness_log();
          }

          v266 = v265;
        }

        v107 = v342;
        *(v342 + 2) = v266;
        v366 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(*(v107 + 2), OS_LOG_TYPE_DEFAULT))
        {
          v262 = *(v342 + 2);
          *v263 = v366;
          v254 = *(v342 + 6);
          *&v255 = *(v342 + 63);
          [*(v342 + 34) appliedCompensation];
          *&v256 = v109;
          *&v257 = *(v342 + 61);
          *&v258 = *(*(v342 + 34) + 120);
          *&v259 = *(v342 + 49);
          *&v260 = *(*(v342 + 34) + 32);
          v110 = *(v342 + 34);
          v111 = *(v110 + 116);
          v242 = 0x1ECDAF000uLL;
          *&v246 = (v111 * *(v110 + 156));
          v247 = [*(v342 + 34) edrStateToString:*(*(v342 + 34) + 176)];
          *&v248 = *(*(v342 + 34) + 156);
          v112 = *(v342 + 34);
          v243 = 0x1ECDAF000uLL;
          [*(v112 + 48) currentScaler];
          *&v249 = v113;
          rampInProgress = [*(*(v342 + 34) + 48) rampInProgress];
          v244 = "NO";
          v115 = "YES";
          v245 = "YES";
          if ((rampInProgress & 1) == 0)
          {
            v115 = "NO";
          }

          v250 = v115;
          v116 = [*(v342 + 34) rtplcStateToString:*(*(v342 + 34) + 240)];
          v117 = v245;
          v251 = v116;
          *&v252 = *(*(v342 + 34) + 232);
          if ((*(*(v342 + 34) + 224) & 1) == 0)
          {
            v117 = v244;
          }

          v253 = v117;
          [*(*(v342 + 34) + 272) getPeakAPCE];
          *&v118 = *(v342 + 7);
          *&v119 = *(v342 + 6);
          *&v120 = *(v342 + 10);
          *&v121 = *(v342 + 9);
          *&v122 = *(v342 + 8);
          *&v123 = *(v342 + 11);
          v261 = v214;
          v264 = v386;
          __os_log_helper_16_2_22_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_0_8_0_8_32_8_32_8_0_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v386, v254, v255, v256, v257, v258, v259, v260, v246, v247, v248, v249, v250, v251, v252, v253, COERCE__INT64(v124), v118, v119, v120, v121, v122, v123);
          _os_log_impl(&dword_1DE8E5000, v262, v263[0], "SyncDBV Transaction | ID=%llu | SDR.Nits=%.3f | Applied.Compensation=%.3f | Nits.Cap=%0.3f | DynamicSlider.Cap=%0.3f | Brightness.Limit=%0.3f | Trusted.Lux=%.3f | HDR.Nits=%.3f | HDR.State=%s | Capped.Headroom.Current=%0.3f  | Aurora.Factor=%0.3f | Aurora.RampInProgress=%s | RTPLC.State=%s | RTPLC.Cap=%.3f | RTPLC.CapApplied=%s | PeakAPCE.Cap=%0.3f | IndicatorBrightness.Nits=%.3f | IndicatorBrightness.Cap=%.3f | Twilight.Strength=%0.3f | Ammolite.Strength=%0.3f | GCP.Strength=%0.3f | ContrastEnhancer.Strength=%.3f |", v264, 0xDEu);
        }

        v125 = *(v342 + 34);
        v241 = 0x1ECDAF000uLL;
        LODWORD(v108) = *(v342 + 63);
        [*(v125 + 40) setSDRBrightness:v108];
        v240 = *(*(v342 + 34) + *(v241 + 2392));
        [*(*(v342 + 34) + 136) maxHeadroom];
        [v240 setPotentialHeadroom:?];
        LODWORD(v126) = *(*(v342 + 34) + 156);
        [*(*(v342 + 34) + *(v241 + 2392)) setHeadroom:v126];
        LODWORD(v127) = *(*(v342 + 34) + 32);
        [*(*(v342 + 34) + *(v241 + 2392)) setAmbient:v127];
        LODWORD(v128) = *(v342 + 49);
        [*(*(v342 + 34) + *(v241 + 2392)) setBrightnessLimit:v128];
        if (!std::__math::isnan[abi:de200100](*(v342 + 11)))
        {
          LODWORD(v129) = *(v342 + 11);
          [*(*(v342 + 34) + 40) setContrastEnhancer:v129];
        }

        if (!std::__math::isnan[abi:de200100](*(v342 + 10)))
        {
          LODWORD(v130) = *(v342 + 10);
          [*(*(v342 + 34) + 40) setLowAmbientAdaptation:v130];
        }

        if (!std::__math::isnan[abi:de200100](*(v342 + 9)))
        {
          LODWORD(v131) = *(v342 + 9);
          [*(*(v342 + 34) + 40) setHighAmbientAdaptation:v131];
        }

        if (!std::__math::isnan[abi:de200100](*(v342 + 8)))
        {
          LODWORD(v132) = *(v342 + 8);
          [*(*(v342 + 34) + 40) setContrastPreservation:v132];
        }

        if (std::__math::isnan[abi:de200100](*(v342 + 7)))
        {
          LODWORD(v133) = *(v342 + 7);
          [*(*(v342 + 34) + 40) setIndicatorBrightness:v133];
        }

        else
        {
          v134 = v342;
          *(v342 + 2) = *(v342 + 7);
          if (([*(*(v134 + 34) + 80) indicatorBrightnessFollowsMIB] & 1) == 0)
          {
            *&v135 = std::__math::fmax[abi:de200100](*(v342 + 2), *(v342 + 63));
            *(v342 + 2) = LODWORD(v135);
          }

          LODWORD(v135) = *(v342 + 2);
          [*(*(v342 + 34) + 40) setIndicatorBrightness:v135];
        }

        v137 = *(v342 + 34);
        v231 = 0x1ECDAF000uLL;
        LODWORD(v136) = *(v342 + 6);
        [*(v137 + 40) setIndicatorBrightnessLimit:v136];
        v232 = v365;
        *v342 = 0;
        context = objc_autoreleasePoolPush();
        v229 = *(*(v342 + 34) + 256);
        v235 = 0x1E696A000uLL;
        v227 = MEMORY[0x1E696AD98];
        *&v138 = mach_time_now_in_milliseconds();
        v228 = [v227 numberWithFloat:v138];
        v139 = [*(v235 + 3480) numberWithUnsignedLongLong:*(v342 + 6)];
        [v229 setObject:v228 forKey:v139];
        objc_autoreleasePoolPop(context);
        v140 = *(*(v342 + 34) + *(v231 + 2392));
        v357 = MEMORY[0x1E69E9820];
        v358 = -1073741824;
        v359 = 0;
        v360 = __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke;
        v361 = &unk_1E867B640;
        v362 = *(v342 + 34);
        v363 = *(v342 + 6);
        v364 = [v140 commitBrightness:v232 withBlock:?];
        v141 = objc_autoreleasePoolPush();
        v142 = v235;
        v143 = v342;
        v239 = v141;
        v237 = &v384;
        *(v342 + 39) = @"SDR.Nits";
        LODWORD(v144) = *(v143 + 63);
        v145 = [*(v142 + 3480) numberWithFloat:v144];
        v146 = v235;
        v147 = v342;
        v236 = &v385;
        *(v342 + 53) = v145;
        *(v147 + 40) = @"HDR.Nits";
        v148 = *(v146 + 3480);
        v149 = *(*(v147 + 34) + 116);
        v150 = *(v147 + 34);
        v233 = 0x1ECDAF000uLL;
        *&v151 = v149 * *(v150 + 156);
        v152 = [v148 numberWithFloat:v151];
        v153 = v233;
        v154 = v235;
        v155 = v342;
        *(v342 + 54) = v152;
        *(v155 + 41) = @"HDR.Headroom";
        LODWORD(v156) = *(*(v155 + 34) + *(v153 + 2492));
        v157 = [*(v154 + 3480) numberWithFloat:v156];
        v158 = v235;
        v159 = v342;
        *(v342 + 55) = v157;
        *(v159 + 42) = @"BrightnessLimit";
        LODWORD(v160) = *(v159 + 49);
        v161 = [*(v158 + 3480) numberWithFloat:v160];
        v162 = v235;
        v163 = v342;
        *(v342 + 56) = v161;
        *(v163 + 43) = @"Lux";
        LODWORD(v164) = *(*(v163 + 34) + 32);
        v165 = [*(v162 + 3480) numberWithFloat:v164];
        v166 = v235;
        v167 = v342;
        *(v342 + 57) = v165;
        *(v167 + 44) = @"Twilight.Strength";
        LODWORD(v168) = *(v167 + 10);
        v169 = [*(v166 + 3480) numberWithFloat:v168];
        v170 = v235;
        v171 = v342;
        *(v342 + 58) = v169;
        *(v171 + 45) = @"Ammolite.Strength";
        LODWORD(v172) = *(v171 + 9);
        v173 = [*(v170 + 3480) numberWithFloat:v172];
        v174 = v235;
        v175 = v342;
        *(v342 + 59) = v173;
        *(v175 + 46) = @"GCP.Gamma";
        LODWORD(v176) = *(v175 + 8);
        v177 = [*(v174 + 3480) numberWithFloat:v176];
        v178 = v235;
        v179 = v342;
        *(v342 + 60) = v177;
        *(v179 + 47) = @"IndicatorBrightness.Nits";
        LODWORD(v180) = *(v179 + 7);
        v181 = [*(v178 + 3480) numberWithFloat:v180];
        v182 = v235;
        v183 = v342;
        *(v342 + 61) = v181;
        *(v183 + 48) = @"IndicatorBrightness.Cap";
        LODWORD(v184) = *(v183 + 6);
        v185 = [*(v182 + 3480) numberWithFloat:v184];
        v186 = v235;
        v187 = v342;
        *(v342 + 62) = v185;
        *(v187 + 49) = @"ContrastEnhancer.Strength";
        LODWORD(v188) = *(v187 + 11);
        v189 = [*(v186 + 3480) numberWithFloat:v188];
        v190 = v235;
        v191 = v342;
        *(v342 + 63) = v189;
        *(v191 + 50) = @"Aurora.Factor";
        v234 = *(v190 + 3480);
        [*(*(v191 + 34) + 48) currentScaler];
        v192 = [v234 numberWithFloat:?];
        v193 = v235;
        v194 = v342;
        *(v342 + 64) = v192;
        *(v194 + 51) = @"AliasingMitigation.Active";
        v195 = [*(v193 + 3480) numberWithBool:*(*(v194 + 34) + 305) & 1];
        v196 = v236;
        v197 = v237;
        v198 = v342;
        *(v342 + 65) = v195;
        *(v198 + 52) = @"Result";
        v199 = @"Success";
        if ((v364 & 1) == 0)
        {
          v199 = @"Error";
        }

        *(v198 + 66) = v199;
        v356 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v196 forKeys:v197 count:14];
        v200 = *(*(v342 + 34) + 328);
        v238 = @"BrightnessTransaction";
        _DisplaySetInternalDictionaryProperty(v200, @"BrightnessTransaction", v356);
        [*(v342 + 34) sendNotificationForKey:v238 withValue:v356];
        objc_autoreleasePoolPop(v239);
        v201 = *(v342 + 63) < 100.0;
        v355 = v201;
        if ((*(*(v342 + 34) + 304) & 1) != v201)
        {
          v202 = v342;
          *(*(v342 + 34) + 304) = v355;
          v226 = *(v202 + 34);
          v203 = [MEMORY[0x1E696AD98] numberWithBool:*(*(v202 + 34) + 304) & 1];
          [v226 sendNotificationForKey:@"CBBrightnessIsUnderAutoDimThreshold" withValue:v203];
        }

        if (v364)
        {
          [*(v342 + 34) sendNotificationForKey:@"CBCACommit" withValue:*(v342 + 32)];
          v205 = *(v342 + 34);
          LODWORD(v206) = *(v205 + 116);
          *&v207 = *&v206 * *(v205 + 156);
          [*(v205 + 312) luminanceHistLogNitsSDR:v206 andNitsEDR:v207];
        }

        else
        {
          if (*(*(v342 + 34) + 16))
          {
            v225 = *(*(v342 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v224 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v224 = init_default_corebrightness_log();
            }

            v225 = v224;
          }

          oslog = v225;
          v353 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
          {
            v221 = oslog;
            *v222 = v353;
            v204 = *v342;
            v223 = v383;
            __os_log_helper_16_2_1_8_64(v383, v204);
            _os_log_error_impl(&dword_1DE8E5000, v221, v222[0], "ERROR COMMITING BRIGHTNESS FROM CA!!!!!!! (%@)", v223, 0xCu);
          }
        }
      }

      if (*(*(v342 + 34) + 116) > 0.0)
      {
        v208 = *(v342 + 34);
        v218 = 0x1ECDAF000uLL;
        v209 = *(v208 + 296);
        v347 = MEMORY[0x1E69E9820];
        v348 = -1073741824;
        v349 = 0;
        v350 = __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_371;
        v351 = &unk_1E867B668;
        v352 = *(v342 + 34);
        [v209 enumerateObjectsUsingBlock:?];
        MEMORY[0x1E69E5920](*(*(v342 + 34) + *(v218 + 2552)));
        v210 = v342;
        v211 = *(v342 + 34);
        v212 = *(v218 + 2552);
        v220 = 0;
        *(v211 + v212) = 0;
        v213 = *(v210 + 34);
        v219 = 0x1ECDAF000uLL;
        MEMORY[0x1E69E5920](*(v213 + 288));
        *(*(v342 + 34) + *(v219 + 2556)) = v220;
      }
    }
  }
}

void __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  context = objc_autoreleasePoolPush();
  MEMORY[0x1E69E5928](v14);
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_2;
  v9 = &unk_1E867B618;
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  v11 = v14;
  dispatch_async(v2, &block);
  objc_autoreleasePoolPop(context);
}

double __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = [*(*(a1 + 32) + 256) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 48))}];
  v8 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E6979628]];
  if (*(*(a1 + 32) + 16))
  {
    v6 = *(*(a1 + 32) + 16);
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

    v6 = inited;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 48);
    v4 = mach_time_to_milliseconds([v8 unsignedLongLongValue]);
    [v9 floatValue];
    __os_log_helper_16_0_2_8_0_8_0(v10, v3, COERCE__INT64((v4 - v1)));
    _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "SyncDBV Telemetry | Transaction.ID=%llu Latency=%.0fms", v10, 0x16u);
  }

  [*(*(a1 + 32) + 256) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 48))}];
  *&result = MEMORY[0x1E69E5920](*(a1 + 40)).n128_u64[0];
  return result;
}

void __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_371(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [*(*(a1 + 32) + 288) objectAtIndex:a3];
  [*(a1 + 32) setProperty:v6 forKey:a2];
  if (*(*(a1 + 32) + 16))
  {
    v4 = *(*(a1 + 32) + 16);
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

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v8, v6);
    _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "Restoring cached %@ property", v8, 0xCu);
  }
}

- (void)handleFrameInfo:(id *)info
{
  v39 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v35 = a2;
  infoCopy = info;
  v33 = 1.0;
  *&v3 = info->var5 - 1.0;
  v32 = *&v3;
  var3 = 0;
  if (!self->_rtplcCapApplied)
  {
    var3 = info->var3;
  }

  v31 = var3;
  v16 = 0;
  if (selfCopy->_rtplcCapApplied)
  {
    v16 = 0;
    if (info->var3)
    {
      *&v3 = v32;
      v16 = v32 != selfCopy->_currentRTPLCTarget;
    }
  }

  v30 = v16;
  v15 = 0;
  if (selfCopy->_rtplcCapApplied)
  {
    v15 = !info->var3;
  }

  v29 = v15;
  v14 = 1;
  if (!info->var2)
  {
    v14 = info->var3;
  }

  v28 = v14;
  selfCopy->_rtplcCapApplied = info->var3;
  if (v31 || v30)
  {
    [(CBDisplayModuleiOS *)selfCopy deleteAPCEMonitor];
    selfCopy->_rtplcState = 1;
    selfCopy->_currentRTPLCTarget = v32;
    v27 = selfCopy->_currentRTPLCTarget / selfCopy->_nitsSDR;
    if (selfCopy->super.super._logHandle)
    {
      logHandle = selfCopy->super.super._logHandle;
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

    v26 = logHandle;
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v38, COERCE__INT64(selfCopy->_currentRTPLCTarget), COERCE__INT64(v27), COERCE__INT64(selfCopy->_appliedHeadroom), COERCE__INT64(selfCopy->_nitsSDR), COERCE__INT64(selfCopy->_currentCapToCA));
      _os_log_impl(&dword_1DE8E5000, v26, v25, "RTPLC TRIGGER!! RTPLCBrightness: %f, reducedHeadroom: %f, current(_applied): %f, _nitsSDR: %f, _currentCapToCA = %f", v38, 0x34u);
    }

    [(CBDisplayModuleiOS *)selfCopy compensatedSDRNits];
    v24 = *&v3 * selfCopy->_appliedHeadroom;
    currentRTPLCTarget = selfCopy->_currentRTPLCTarget;
    *&v3 = currentRTPLCTarget;
    if (currentRTPLCTarget < v24)
    {
      if (selfCopy->super.super._logHandle)
      {
        v11 = selfCopy->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v22 = v11;
      v21 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_2_8_0_8_0(v37, COERCE__INT64(v24), COERCE__INT64(currentRTPLCTarget));
        _os_log_impl(&dword_1DE8E5000, v22, v21, "RTPLC ACTION: StartRTPLCRamp, ramp Cap: %f--->%f", v37, 0x16u);
      }

      DisplayStartRTPLCEDRCapRamp(selfCopy->_displayInternal, 0, v24, currentRTPLCTarget, 4.0);
    }
  }

  else if (v29)
  {
    if (selfCopy->super.super._logHandle)
    {
      v9 = selfCopy->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v8 = init_default_corebrightness_log();
      }

      v9 = v8;
    }

    v20 = v9;
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v20;
      v7 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_1DE8E5000, v6, v7, "RTPLC RELEASED!", v18, 2u);
    }

    LODWORD(v4) = 0.5;
    [(CBDisplayModuleiOS *)selfCopy createAPCEMonitorWithFrequency:v4];
  }

  if ([(CBFrameStats *)selfCopy->_frameStats tripLength]&& !v28)
  {
    mach_time_now_in_seconds();
    [(CBFrameStats *)selfCopy->_frameStats currentTripStartTime];
    tripLength = [(CBFrameStats *)selfCopy->_frameStats tripLength];
    [(CBFrameStats *)selfCopy->_frameStats tripMaxAPCE];
    [CBAnalytics rtplcTriggeredWithLength:"rtplcTriggeredWithLength:maxAPCE:durationInSeconds:sdrBrightness:referenceModeEnabled:" maxAPCE:tripLength durationInSeconds:selfCopy->_referenceModeIsActive sdrBrightness:? referenceModeEnabled:?];
    selfCopy->_rtplcTripMaxBrightness = 0.0;
  }

  if (![(CBFrameStats *)selfCopy->_frameStats tripLength]&& v28)
  {
    selfCopy->_rtplcTripMaxBrightness = selfCopy->_nitsSDR;
  }

  if (v28)
  {
    selfCopy->_rtplcTripMaxBrightness = fmaxf(selfCopy->_nitsSDR, selfCopy->_rtplcTripMaxBrightness);
  }
}

- (const)rtplcStateToString:(unint64_t)string
{
  switch(string)
  {
    case 0uLL:
      return "None";
    case 1uLL:
      return "Action";
    case 2uLL:
      return "Recovery";
    case 3uLL:
      return "Exit";
  }

  return "Unknown";
}

- (void)createAPCEMonitorWithFrequency:(float)frequency
{
  selfCopy = self;
  v13 = a2;
  frequencyCopy = frequency;
  v11 = ((1.0 / frequency) * 1000000000.0);
  if (self->_apceTimer)
  {
    dispatch_source_set_timer(selfCopy->_apceTimer, 0, v11, 0);
  }

  else
  {
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super.super._queue);
    if (v10)
    {
      dispatch_source_set_timer(v10, 0, v11, 0);
      block = MEMORY[0x1E69E9820];
      v4 = -1073741824;
      v5 = 0;
      v6 = __53__CBDisplayModuleiOS_createAPCEMonitorWithFrequency___block_invoke;
      v7 = &unk_1E867B480;
      v8 = selfCopy;
      handler = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, &block);
      if (handler)
      {
        dispatch_source_set_event_handler(v10, handler);
        _Block_release(handler);
      }

      selfCopy->_apceTimer = v10;
      dispatch_activate(v10);
    }
  }
}

- (void)deleteAPCEMonitor
{
  if (self->_apceTimer)
  {
    dispatch_source_cancel(self->_apceTimer);
    dispatch_release(self->_apceTimer);
    self->_apceTimer = 0;
  }
}

- (void)apceTimerCallback
{
  v21 = *MEMORY[0x1E69E9840];
  [(CBFrameStats *)self->_frameStats getMovingAverage];
  v14 = v2;
  [(CBFrameStats *)self->_frameStats getPeakAPCECap];
  v13 = v3;
  [(CBFrameStats *)self->_frameStats scaleFactor];
  v15 = v4;
  *&v5 = v14;
  *&v6 = v15;
  [(CBDisplayModuleiOS *)self computeTargetHDRBrightnessForAPCE:v5 andScale:v6];
  v16 = v7;
  if (self->super.super._logHandle)
  {
    logHandle = self->super.super._logHandle;
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
    __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v20, COERCE__INT64(v16), COERCE__INT64(v14), COERCE__INT64(self->_currentRTPLCTarget), COERCE__INT64(v15), COERCE__INT64(v13));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "RTPLC RECOVERY: target HDR Brightness= %f for APCE = %f, current RTPLC target: %f, scaleFactor: %f, peakAPCECap: %f", v20, 0x34u);
  }

  v17 = fminf(v16, v13);
  if (v17 > self->_currentRTPLCTarget)
  {
    self->_rtplcState = 2;
    rtplcCap = self->_rtplcCap;
    if (self->super.super._logHandle)
    {
      v9 = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v8 = init_default_corebrightness_log();
      }

      v9 = v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v19, COERCE__INT64(rtplcCap), COERCE__INT64(v17), COERCE__INT64(self->_currentCapToCA));
      _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "RTPLC RECOVERY RAMP! ramp Cap: %f ---> %f (currentCapToCA = %f)", v19, 0x20u);
    }

    DisplayStartRTPLCEDRCapRamp(self->_displayInternal, 0, rtplcCap, v17, 16.0);
  }
}

- (float)computeTargetHDRBrightnessForAPCE:(float)e andScale:(float)scale
{
  selfCopy = self;
  v31 = a2;
  eCopy = e;
  scaleCopy = scale;
  if ([(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)self->_backlightParams rtplc] recoveryCurve] nits] count])
  {
    [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] nits] get:0];
    v25 = v4;
    for (i = 0; i < [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] count]; ++i)
    {
      if (i + 1 >= [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] count])
      {
        [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] nits] get:i];
        v25 = v15;
        return v25 / scaleCopy;
      }

      [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] get:i];
      if (eCopy > v5)
      {
        [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] get:i + 1];
        v6 = *&v7;
        *&v7 = eCopy;
        if (eCopy < v6)
        {
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] get:i];
          v23 = v8;
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] get:i + 1];
          v22 = v9;
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] nits] get:i];
          v21 = v10;
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] nits] get:i + 1];
          v25 = linear_interpolation(eCopy, v23, v21, v22, v11);
          return v25 / scaleCopy;
        }
      }

      [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] apce] get:i];
      v12 = *&v13;
      *&v13 = eCopy;
      if (eCopy <= v12)
      {
        [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)selfCopy->_backlightParams rtplc] recoveryCurve] nits] get:i];
        v25 = v14;
        return v25 / scaleCopy;
      }
    }

    return v25 / scaleCopy;
  }

  else
  {
    if (selfCopy->super.super._logHandle)
    {
      logHandle = selfCopy->super.super._logHandle;
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

    v28 = logHandle;
    v27 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "RTPLC | Empty Table", v26, 2u);
    }

    return selfCopy->_maxNitsEDR;
  }
}

- (void)updateBDMWithLux:(float)lux
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_displayRequiresBDM && !self->_referenceModeIsActive && [(CBDisplayModuleiOS *)self luxHasCrossedBDMThreshold:*&lux])
  {
    DisplaySetCurrentEDRHeadroom(self->_displayInternal, self->_appliedHeadroom);
    [(CBEDR *)self->_edr secondsPerStop];
    v11 = v3;
    *&v4 = self->_appliedHeadroom;
    *&v5 = self->_requestedHeadroom;
    LODWORD(v6) = v11;
    [CBEDR overallRampDuration:v4 target:v5 durationPerStop:v6];
    v10 = v7;
    if (self->super.super._logHandle)
    {
      logHandle = self->super.super._logHandle;
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v13, COERCE__INT64(v10));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Starting SBD (BDM) EDR ramp over %f seconds", v13, 0xCu);
    }

    DisplayStartFastEDRRamp(self->_displayInternal, self->_requestedHeadroom, v10);
  }
}

- (BOOL)luxHasCrossedBDMThreshold:(float)threshold
{
  v8 = 0;
  if (self->_bdmLux1 <= threshold)
  {
    v8 = threshold <= self->_bdmLux2;
  }

  v7 = 0;
  if (self->_lastBDMLux > self->_bdmLux1)
  {
    v7 = threshold < self->_bdmLux1;
  }

  v6 = 0;
  if (self->_lastBDMLux < self->_bdmLux2)
  {
    v6 = threshold > self->_bdmLux2;
  }

  v5 = 0;
  if (threshold != self->_lastBDMLux)
  {
    v4 = 1;
    if (!v8)
    {
      v4 = 1;
      if (!v7)
      {
        v4 = v6;
      }
    }

    v5 = v4;
  }

  self->_lastBDMLux = threshold;
  return v5 & 1;
}

- (void)updateEDRStateForEvent:(unint64_t)event andHeadroom:(float)headroom
{
  if (event)
  {
    switch(event)
    {
      case 2uLL:
        self->_edrState = 1;
        break;
      case 3uLL:
        if (self->_edrState == 1 || self->_edrState == 2)
        {
          self->_edrState = 3;
        }

        break;
      case 4uLL:
        if (self->_edrState == 1 && float_equal(headroom, self->_requestedHeadroom))
        {
          self->_edrState = 2;
        }

        else if (self->_edrState == 3 && float_equal(headroom, self->_requestedHeadroom))
        {
          self->_edrState = 0;
        }

        break;
    }
  }
}

- (const)edrStateToString:(unint64_t)string
{
  switch(string)
  {
    case 0uLL:
      return "Off";
    case 1uLL:
      return "Entering";
    case 2uLL:
      return "Engaged";
    case 3uLL:
      return "Exiting";
  }

  return "Unknown";
}

- (id)copyIdentifiers
{
  selfCopy = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"DisplayBrightnessAuto", @"DisplayBrightnessFactor", @"DisplayBrightnessFactorWithFade", @"PreStrobeBrightnessRatio", @"EventTimestampDisplayOn", @"EventTimestampDisplayOff", @"DisplayBrightness", @"BrightnessGlobalScalar", @"DisplayPanelLuminanceMin", @"DisplayPanelLuminanceMid", @"DisplayPanelLuminanceMax", @"DisplayProductLuminanceMin", @"DisplayProductLuminanceMid", @"DisplayProductLuminanceMax", @"BrightnessRestrictions", @"DisplayBackLightArchitecture", @"FreezeBrightness", @"UserInteractedWithUI", @"EcoModeFactorUpdate", @"DominoStateUpdate", @"AmbientAdaptiveDimming", @"DisplayBrightnessFadePeriod", @"DisplayBrightnessFadePeriodOverride", @"MaxBrightness", @"BrightnessWeakCap", @"BrightnessMinPhysicalWithFade", @"DisplayBrightnessFactorRamp", @"PreStrobeConfig", @"PreStrobe", @"CoreBrightnessFeaturesDisabled", @"DisableWPShift", @"ReenablementRampPeriod", @"DisablementRampPeriod", @"AABConstraints", @"AABCurveCap", @"PreStrobeDimPeriod", @"BrightDotsMitigationParameters", @"VirtualBrightnessLimits", @"CPMSCurrentPower", @"CPMSPowerAccumulatorValue", 0}];
}

- (float)compensatedSDRNits
{
  nitsSDR = self->_nitsSDR;
  [(CBDisplayModuleiOS *)self appliedCompensation];
  return nitsSDR * v2;
}

- (float)appliedCompensation
{
  if (self->_referenceModeIsActive)
  {
    return 1.0;
  }

  nitsSDR = self->_nitsSDR;
  if ([(CBAurora *)self->_aurora isBoostingBrightness])
  {
    [(CBAurora *)self->_aurora currentPreAuroraNits];
    nitsSDR = v2;
  }

  [(CBAppliedCompensations *)self->_appliedCompensations compensationFor:nitsSDR andMax:self->_dynSliderCap];
  *&v3 = v3;
  return *&v3;
}

- (BOOL)handleAODStateUpdate:(unint64_t)update transitionTime:(float)time context:(id)context
{
  v66 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v53 = a2;
  updateCopy = update;
  timeCopy = time;
  contextCopy = context;
  [(CBChromaticCorrection *)self->_twilight handleAODStateUpdate:update transitionTime:context context:*&time];
  *&v5 = timeCopy;
  [(CBChromaticCorrection *)selfCopy->_ammolite handleAODStateUpdate:updateCopy transitionTime:contextCopy context:v5];
  *&v6 = timeCopy;
  [(CBChromaticCorrection *)selfCopy->_gcp handleAODStateUpdate:updateCopy transitionTime:contextCopy context:v6];
  *&v7 = timeCopy;
  [(CBIndicatorBrightnessModule *)selfCopy->_indicatorBrightnessModule handleAODStateUpdate:updateCopy transitionTime:contextCopy context:v7];
  v35 = objc_autoreleasePoolPush();
  if (updateCopy)
  {
    if (updateCopy == 3)
    {
      if (selfCopy->_aurora)
      {
        if (selfCopy->super.super._logHandle)
        {
          logHandle = selfCopy->super.super._logHandle;
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
          log = oslog;
          v32 = type;
          __os_log_helper_16_0_0(v47);
          _os_log_impl(&dword_1DE8E5000, log, v32, "Let Aurora know about AOD state = ON", v47, 2u);
        }

        [(CBAurora *)selfCopy->_aurora setAODIsOn:1];
      }

      if ([(CBDisplayModuleiOS *)selfCopy edrIsEngaged])
      {
        context = objc_autoreleasePoolPush();
        if (selfCopy->super.super._logHandle)
        {
          v29 = selfCopy->super.super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v28 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v28 = init_default_corebrightness_log();
          }

          v29 = v28;
        }

        v46 = v29;
        v45 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v65, 0x3FF0000000000000);
          _os_log_impl(&dword_1DE8E5000, v46, v45, "AOD EDR | Entering AOD, reducing EDR headroom to %f", v65, 0xCu);
        }

        v27 = selfCopy;
        v63[0] = @"AODEDRHeadroomRequest";
        v64[0] = MEMORY[0x1E695E118];
        v63[1] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
        v64[1] = &unk_1F59C9678;
        v63[2] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestRampDuration];
        v64[2] = &unk_1F59C9688;
        -[CBDisplayModuleiOS setProperty:forKey:](v27, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3], @"EDRHeadroomRequest");
        objc_autoreleasePoolPop(context);
      }
    }

    else if (updateCopy == 4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [contextCopy objectForKey:@"EDRHeadroom"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_autoreleasePoolPush();
          if (selfCopy->super.super._logHandle)
          {
            v25 = selfCopy->super.super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v24 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v24 = init_default_corebrightness_log();
            }

            v25 = v24;
          }

          v44 = v25;
          v43 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            [objc_msgSend(contextCopy objectForKey:{@"EDRHeadroom", "floatValue"}];
            __os_log_helper_16_0_1_8_0(v62, COERCE__INT64(v8));
            _os_log_impl(&dword_1DE8E5000, v44, v43, "AOD EDR | AOD is exiting, restoring EDR headroom to %f", v62, 0xCu);
          }

          v60[0] = @"AODEDRHeadroomRequest";
          v61[0] = MEMORY[0x1E695E118];
          v60[1] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
          v61[1] = [contextCopy objectForKey:@"EDRHeadroom"];
          v60[2] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestRampDuration];
          v61[2] = &unk_1F59C9688;
          -[CBDisplayModuleiOS setProperty:forKey:](selfCopy, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3], @"EDRHeadroomRequest");
          objc_autoreleasePoolPop(v26);
        }
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [contextCopy objectForKey:@"EDRHeadroom"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = objc_autoreleasePoolPush();
        if (selfCopy->super.super._logHandle)
        {
          v22 = selfCopy->super.super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v21 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v21 = init_default_corebrightness_log();
          }

          v22 = v21;
        }

        v42 = v22;
        v41 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          [objc_msgSend(contextCopy objectForKey:{@"EDRHeadroom", "floatValue"}];
          __os_log_helper_16_0_1_8_0(v59, COERCE__INT64(v9));
          _os_log_impl(&dword_1DE8E5000, v42, v41, "AOD EDR | AOD is Off, instantaneously restoring EDR headroom to %f", v59, 0xCu);
        }

        v57[0] = @"AODEDRHeadroomRequest";
        v58[0] = MEMORY[0x1E695E118];
        v57[1] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestEDRHeadroom];
        v58[1] = [contextCopy objectForKey:@"EDRHeadroom"];
        v57[2] = [(CBBrightnessProxy *)selfCopy->_brtCtl brightnessRequestRampDuration];
        v58[2] = &unk_1F59C9688;
        -[CBDisplayModuleiOS setProperty:forKey:](selfCopy, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3], @"EDRHeadroomRequest");
        objc_autoreleasePoolPop(v23);
      }
    }

    [(CBGammaContrastPreservation *)selfCopy->_gcp setRampManager:selfCopy->_rampManager];
    if (selfCopy->_aurora)
    {
      if (selfCopy->super.super._logHandle)
      {
        v20 = selfCopy->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v19 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v19 = init_default_corebrightness_log();
        }

        v20 = v19;
      }

      v40 = v20;
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v40;
        v18 = v39;
        __os_log_helper_16_0_0(v38);
        _os_log_impl(&dword_1DE8E5000, v17, v18, "Let Aurora know about AOD state = OFF", v38, 2u);
      }

      [(CBAurora *)selfCopy->_aurora setAODIsOn:0];
    }

    v37 = [(CBDisplayModuleiOS *)selfCopy copyPropertyForKey:@"TrustedLux"];
    if (selfCopy->super.super._logHandle)
    {
      v16 = selfCopy->super.super._logHandle;
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

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v56, v37);
      _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "Kick in Aurora with trusted lux %@", v56, 0xCu);
    }

    [(CBDisplayModuleiOS *)selfCopy handleNotificationForKey:@"TrustedLux" withProperty:v37];
    MEMORY[0x1E69E5920](v37);
    if (selfCopy->_lastEDRHeadroomRequestFromCA)
    {
      v14 = objc_autoreleasePoolPush();
      v36 = [selfCopy->_lastEDRHeadroomRequestFromCA mutableCopy];
      [v36 setValue:MEMORY[0x1E695E118] forKey:@"AODEDRHeadroomRequest"];
      if (selfCopy->super.super._logHandle)
      {
        v13 = selfCopy->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v12 = init_default_corebrightness_log();
        }

        v13 = v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(v36 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](selfCopy->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
        __os_log_helper_16_0_1_8_0(v55, COERCE__INT64(v10));
        _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "AOD EDR | Restoring EDR headroom after AOD exit to %f", v55, 0xCu);
      }

      [(CBDisplayModuleiOS *)selfCopy setProperty:v36 forKey:@"EDRHeadroomRequest"];
      objc_autoreleasePoolPop(v14);
    }
  }

  objc_autoreleasePoolPop(v35);
  return 1;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client
{
  selfCopy = self;
  v11 = a2;
  clientCopy = client;
  v5 = 0;
  v6 = &v5;
  v7 = 0x20000000;
  v8 = 32;
  v9 = 0;
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:?];
  v4 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v4 & 1;
}

void *__42__CBDisplayModuleiOS_addHIDServiceClient___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    result = [a2 addHIDServiceClient:*(a1 + 40)];
    *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from
{
  selfCopy = self;
  v13 = a2;
  eventCopy = event;
  fromCopy = from;
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:?];
  v5 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v5 & 1;
}

void *__42__CBDisplayModuleiOS_handleHIDEvent_from___block_invoke(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    result = [a2 handleHIDEvent:a1[5] from:a1[6]];
    *(*(a1[4] + 8) + 24) = (*(*(a1[4] + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client
{
  selfCopy = self;
  v11 = a2;
  clientCopy = client;
  v5 = 0;
  v6 = &v5;
  v7 = 0x20000000;
  v8 = 32;
  v9 = 0;
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:?];
  v4 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v4 & 1;
}

void *__45__CBDisplayModuleiOS_removeHIDServiceClient___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    result = [a2 removeHIDServiceClient:*(a1 + 40)];
    *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

@end