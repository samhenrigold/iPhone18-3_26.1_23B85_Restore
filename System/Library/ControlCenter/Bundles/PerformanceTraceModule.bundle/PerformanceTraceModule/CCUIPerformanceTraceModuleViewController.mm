@interface CCUIPerformanceTraceModuleViewController
+ (id)displayNameForState:(unint64_t)state;
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (CCUIPerformanceTraceModuleViewController)init;
- (id)_getFGSceneIdentifiers;
- (id)_localizedString:(id)string;
- (id)_makeTracePlanNameMenuItem:(id)item;
- (id)_passiveTraceConfig;
- (void)_cleanupSessionAndUpdateState:(unint64_t)state;
- (void)_collectPassiveTrace;
- (void)_performanceTraceGlobalStateDidChange;
- (void)_recreateMenu;
- (void)_startRecording;
- (void)_startRecordingPowerMetricsPassiveTrace;
- (void)_startRecordingRegularTrace;
- (void)_stopRecording;
- (void)_stopRecordingPowerMetricsPassiveTrace;
- (void)_stopRecordingRegularTrace;
- (void)_updateGlyph;
- (void)_updatePlanNameConvenienceProperties;
- (void)_updateState:(unint64_t)state;
- (void)_updateSubtitle:(id)subtitle;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)dealloc;
- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error;
- (void)performanceTraceDidStart:(id)start;
- (void)performanceTraceDidStop:(id)stop;
- (void)setSelectedTracePlanName:(id)name;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation CCUIPerformanceTraceModuleViewController

+ (id)displayNameForState:(unint64_t)state
{
  if (state > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_29F33DE08[state];
  }
}

- (void)_updatePlanNameConvenienceProperties
{
  v3 = objc_opt_class();
  self->_selectedTracePlanIsPassive = objc_msgSend_isPassiveTracePlanName_(v3, v4, self->_selectedTracePlanName);
  v5 = objc_opt_class();
  self->_selectedTracePlanIsPassivePowerMetrics = objc_msgSend_isPowerMetricsPassiveTracePlanName_(v5, v6, self->_selectedTracePlanName);
}

- (void)setSelectedTracePlanName:(id)name
{
  nameCopy = name;
  if ((objc_msgSend_isEqualToString_(nameCopy, v5, self->_selectedTracePlanName) & 1) == 0)
  {
    objc_storeStrong(&self->_selectedTracePlanName, name);
    objc_msgSend__updatePlanNameConvenienceProperties(self, v6, v7);
  }
}

- (CCUIPerformanceTraceModuleViewController)init
{
  v30.receiver = self;
  v30.super_class = CCUIPerformanceTraceModuleViewController;
  v2 = [(CCUIPerformanceTraceModuleViewController *)&v30 init];
  v5 = v2;
  if (v2)
  {
    v2->_state = 0;
    v6 = objc_msgSend_availableTracePlanNames(MEMORY[0x29EDC6100], v3, v4);
    supportedTracePlanNames = v5->_supportedTracePlanNames;
    v5->_supportedTracePlanNames = v6;

    v10 = objc_msgSend_userSelectedTracePlanName(MEMORY[0x29EDC6100], v8, v9);
    selectedTracePlanName = v5->_selectedTracePlanName;
    v5->_selectedTracePlanName = v10;

    v12 = dispatch_queue_create("com.apple.MobileControlCenter.PerformanceTraceModule", 0);
    stateChangeQueue = v5->_stateChangeQueue;
    v5->_stateChangeQueue = v12;

    objc_initWeak(&location, v5);
    v14 = objc_alloc(MEMORY[0x29EDC60F0]);
    v17 = objc_msgSend_stateChangeQueue(v5, v15, v16);
    v24 = MEMORY[0x29EDCA5F8];
    v25 = 3221225472;
    v26 = sub_29C9DE3AC;
    v27 = &unk_29F33DD00;
    objc_copyWeak(&v28, &location);
    v19 = objc_msgSend_initWithQueue_stateChangeBlock_(v14, v18, v17, &v24);
    stateChangeMonitor = v5->_stateChangeMonitor;
    v5->_stateChangeMonitor = v19;

    objc_msgSend__updatePlanNameConvenienceProperties(v5, v21, v22, v24, v25, v26, v27);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  if (objc_msgSend_state(self, a2, v2) == 2)
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = sub_29C9DE48C;
    v8 = &unk_29F33DD28;
    selfCopy = self;
    BSDispatchMain();
  }

  v4.receiver = self;
  v4.super_class = CCUIPerformanceTraceModuleViewController;
  [(CCUIPerformanceTraceModuleViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_msgSend__updateGlyph(self, a2, appear);
  v5.receiver = self;
  v5.super_class = CCUIPerformanceTraceModuleViewController;
  [(CCUIMenuModuleViewController *)&v5 viewWillAppear:appearCopy];
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  if (objc_msgSend_state(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_supportedTracePlanNames(self, v4, v5);
  v6 = objc_msgSend_count(v7, v8, v9) > 1;

  return v6;
}

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v7.receiver = self;
  v7.super_class = CCUIPerformanceTraceModuleViewController;
  [(CCUIMenuModuleViewController *)&v7 willTransitionToExpandedContentMode:?];
  if (modeCopy)
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = sub_29C9DE61C;
    v6[3] = &unk_29F33DD28;
    v6[4] = self;
    objc_msgSend_performWithoutAnimation_(MEMORY[0x29EDC7DA0], v5, v6);
  }
}

- (id)_makeTracePlanNameMenuItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x29EDC0CE0]);
  v7 = objc_msgSend_displayNameForTracePlanName_(MEMORY[0x29EDC6100], v6, itemCopy);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_29C9DE764;
  v12[3] = &unk_29F33DD50;
  objc_copyWeak(&v15, &location);
  v8 = itemCopy;
  v13 = v8;
  selfCopy = self;
  v10 = objc_msgSend_initWithTitle_identifier_handler_(v5, v9, v7, v8, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_recreateMenu
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_userSelectedTracePlanName(MEMORY[0x29EDC6100], a2, v2);
  objc_msgSend_setSelectedTracePlanName_(self, v5, v4);

  v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_supportedTracePlanNames(self, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = objc_msgSend__makeTracePlanNameMenuItem_(self, v12, v16);
        v20 = objc_msgSend_selectedTracePlanName(self, v18, v19);
        isEqualToString = objc_msgSend_isEqualToString_(v16, v21, v20);
        objc_msgSend_setSelected_(v17, v23, isEqualToString);

        objc_msgSend_addObject_(v6, v24, v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v26, v30, 16);
    }

    while (v13);
  }

  objc_msgSend_setMenuItems_(self, v25, v6);
}

- (void)_updateGlyph
{
  v4 = objc_msgSend_userSelectedTracePlanName(MEMORY[0x29EDC6100], a2, v2);
  objc_msgSend_setSelectedTracePlanName_(self, v5, v4);

  v7 = sub_29C9DE854(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_29C9DD000, v7, OS_LOG_TYPE_DEFAULT, "Updating button glyph", v27, 2u);
  }

  v10 = objc_msgSend_systemBlueColor(MEMORY[0x29EDC7A00], v8, v9);
  v11 = MEMORY[0x29EDC6100];
  v14 = objc_msgSend_selectedTracePlanName(self, v12, v13);
  v16 = objc_msgSend_displayNameForTracePlanName_(v11, v15, v14);

  if (objc_msgSend_selectedTracePlanIsPassive(self, v17, v18))
  {
    v21 = @"square.and.arrow.down.badge.clock";
  }

  else if (objc_msgSend_selectedTracePlanIsPassivePowerMetrics(self, v19, v20))
  {
    v21 = @"bolt.badge.clock";
  }

  else
  {
    v21 = @"waveform.path.ecg";
  }

  objc_msgSend__updateSubtitle_(self, v19, v16);
  v23 = objc_msgSend_systemImageNamed_(MEMORY[0x29EDC7AC8], v22, v21);
  objc_msgSend_setGlyphImage_(self, v24, v23);

  objc_msgSend_setSelectedGlyphColor_(self, v25, v10);
  objc_msgSend_setIndentation_(self, v26, 2);
}

- (void)_updateSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  objc_msgSend_setValueText_(self, v4, subtitleCopy);
  objc_msgSend_setSelectedValueText_(self, v5, subtitleCopy);
}

- (void)_cleanupSessionAndUpdateState:(unint64_t)state
{
  v3 = sub_29C9DE854(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Updating state and nil'ing Performance Trace delegate and session", buf, 2u);
  }

  BSDispatchMain();
}

- (id)_localizedString:(id)string
{
  v3 = MEMORY[0x29EDB9F48];
  stringCopy = string;
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v3, v6, v5);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, stringCopy, &stru_2A23F0780, 0);

  return v9;
}

- (void)performanceTraceDidStart:(id)start
{
  startCopy = start;
  v5 = sub_29C9DE854(startCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Performance Trace didStart", v18, 2u);
  }

  if (startCopy)
  {
    v8 = sub_29C9DE854(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0B04();
    }

    v10 = objc_msgSend__localizedString_(self, v9, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR");
    v13 = objc_msgSend_contentModuleContext(self, v11, v12);
    v15 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v14, v10, 0);
    objc_msgSend_enqueueStatusUpdate_(v13, v16, v15);

    objc_msgSend__cleanupSessionAndUpdateState_(self, v17, 0);
  }

  else
  {
    objc_msgSend__updateState_(self, v7, 2);
  }
}

- (void)performanceTraceDidStop:(id)stop
{
  stopCopy = stop;
  v5 = sub_29C9DE854(stopCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Performance Trace didStop", v17, 2u);
  }

  if (stopCopy)
  {
    v8 = sub_29C9DE854(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0B6C();
    }

    v10 = objc_msgSend__localizedString_(self, v9, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_STOP_ERROR");
    v13 = objc_msgSend_contentModuleContext(self, v11, v12);
    v15 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v14, v10, 0);
    objc_msgSend_enqueueStatusUpdate_(v13, v16, v15);
  }

  else
  {
    objc_msgSend__updateState_(self, v7, 4);
  }
}

- (void)performanceTraceDidComplete:(id)complete withToken:(id)token withError:(id)error
{
  completeCopy = complete;
  errorCopy = error;
  v9 = sub_29C9DE854(errorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v9, OS_LOG_TYPE_DEFAULT, "Performance Trace didComplete", buf, 2u);
  }

  if (errorCopy)
  {
    v11 = sub_29C9DE854(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0BD4();
    }

    v13 = objc_msgSend__localizedString_(self, v12, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_PROCESSING_ERROR");
    v16 = objc_msgSend_contentModuleContext(self, v14, v15);
    v18 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v17, v13, 0);
    objc_msgSend_enqueueStatusUpdate_(v16, v19, v18);
  }

  if (CCSIsInternalInstall())
  {
    v22 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v20, v21);
    v25 = objc_msgSend_fgSceneIdentifiersAtTraceStart(self, v23, v24);

    if (v25)
    {
      v28 = objc_msgSend_fgSceneIdentifiersAtTraceStart(self, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v29, v28, *MEMORY[0x29EDC6118]);
    }

    v30 = objc_msgSend__getFGSceneIdentifiers(self, v26, v27);
    v32 = v30;
    if (v30)
    {
      v30 = objc_msgSend_setObject_forKeyedSubscript_(v22, v31, v30, *MEMORY[0x29EDC6110]);
    }

    v33 = sub_29C9DE854(v30);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9DD000, v33, OS_LOG_TYPE_DEFAULT, "Requesting alert for completed trace", buf, 2u);
    }

    performanceTraceSession = self->_performanceTraceSession;
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 3221225472;
    v37[2] = sub_29C9DF2D4;
    v37[3] = &unk_29F33DDA0;
    v37[4] = self;
    objc_msgSend_displayTraceCompletedAlertWithTraceFileURL_additionalInfo_notificationTimeoutSecs_completionHandler_(performanceTraceSession, v35, completeCopy, v22, &unk_2A23F0EA8, v37);
  }

  else
  {
    v36[0] = MEMORY[0x29EDCA5F8];
    v36[1] = 3221225472;
    v36[2] = sub_29C9DF3A8;
    v36[3] = &unk_29F33DD28;
    v36[4] = self;
    dispatch_async(MEMORY[0x29EDCA578], v36);
  }
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = sub_29C9DE854(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_state(self, v7, v8);
    v11 = objc_msgSend_displayNameForState_(v6, v10, v9);
    v22 = 138412546;
    v23 = v11;
    v24 = 2048;
    v25 = objc_msgSend_state(self, v12, v13);
    _os_log_impl(&dword_29C9DD000, v5, OS_LOG_TYPE_DEFAULT, "Button tapped (current state is %@ (%lu))", &v22, 0x16u);
  }

  if (objc_msgSend_state(self, v14, v15))
  {
    v18 = objc_msgSend_state(self, v16, v17);
    if (v18 == 2)
    {
      objc_msgSend__stopRecording(self, v19, v20);
    }

    else
    {
      v21 = sub_29C9DE854(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_29C9E0C3C(self, v21);
      }
    }
  }

  else
  {
    objc_msgSend__startRecording(self, v16, v17);
  }
}

- (id)_getFGSceneIdentifiers
{
  v3 = sub_29C9DE854(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_INFO, "Getting FG scene identifiers", v14, 2u);
  }

  v6 = objc_msgSend_contentModuleContext(self, v4, v5);
  v9 = objc_msgSend_displayLayoutContextProvider(v6, v7, v8);
  v12 = objc_msgSend_foregroundApplicationSceneBundleIdentifiers(v9, v10, v11);

  return v12;
}

- (void)_startRecording
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_userSelectedTracePlanName(MEMORY[0x29EDC6100], a2, v2);
  objc_msgSend_setSelectedTracePlanName_(self, v5, v4);

  v7 = sub_29C9DE854(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_selectedTracePlanName(self, v8, v9);
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_29C9DD000, v7, OS_LOG_TYPE_DEFAULT, "Starting recording with plan %{public}@", &v17, 0xCu);
  }

  if (objc_msgSend_selectedTracePlanIsPassive(self, v11, v12))
  {
    objc_msgSend__collectPassiveTrace(self, v13, v14);
  }

  else if (objc_msgSend_selectedTracePlanIsPassivePowerMetrics(self, v13, v14))
  {
    objc_msgSend__startRecordingPowerMetricsPassiveTrace(self, v15, v16);
  }

  else
  {
    objc_msgSend__startRecordingRegularTrace(self, v15, v16);
  }
}

- (void)_stopRecording
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = sub_29C9DE854(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_selectedTracePlanName(self, v4, v5);
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Stopping recording with plan %{public}@", &v18, 0xCu);
  }

  IsPassive = objc_msgSend_selectedTracePlanIsPassive(self, v7, v8);
  if (IsPassive)
  {
    v12 = sub_29C9DE854(IsPassive);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_msgSend_selectedTracePlanName(self, v13, v14);
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_29C9DD000, v12, OS_LOG_TYPE_DEFAULT, "Selected trace plan (%{public}@) does not support stopping recording", &v18, 0xCu);
    }
  }

  else if (objc_msgSend_selectedTracePlanIsPassivePowerMetrics(self, v10, v11))
  {
    objc_msgSend__stopRecordingPowerMetricsPassiveTrace(self, v16, v17);
  }

  else
  {
    objc_msgSend__stopRecordingRegularTrace(self, v16, v17);
  }
}

- (void)_startRecordingRegularTrace
{
  objc_msgSend__updateState_(self, a2, 1);
  v5 = objc_msgSend__getFGSceneIdentifiers(self, v3, v4);
  objc_msgSend_setFgSceneIdentifiersAtTraceStart_(self, v6, v5);

  v7 = MEMORY[0x29EDC6100];
  v10 = objc_msgSend_selectedTracePlanName(self, v8, v9);
  v28 = objc_msgSend_configWithTracePlanName_(v7, v11, v10);

  objc_msgSend_setTraceDurationSecs_(v28, v12, 30);
  objc_msgSend_setSymbolicate_(v28, v13, 0);
  v14 = *MEMORY[0x29EDC6130];
  v17 = objc_msgSend_selectedTracePlanName(self, v15, v16);
  LODWORD(v14) = objc_msgSend_isEqualToString_(v14, v18, v17);

  if (v14)
  {
    v21 = objc_msgSend_userSpecifiedCustomTracePlanArguments(MEMORY[0x29EDC6100], v19, v20);
    objc_msgSend_setTraceRecordArgs_(v28, v22, v21);
  }

  v23 = objc_msgSend_initWithConfig_(MEMORY[0x29EDC6108], v19, v28);
  performanceTraceSession = self->_performanceTraceSession;
  self->_performanceTraceSession = v23;

  objc_msgSend_setDelegate_(self->_performanceTraceSession, v25, self);
  objc_msgSend_startPerformanceTrace(self->_performanceTraceSession, v26, v27);
}

- (void)_stopRecordingRegularTrace
{
  if (self->_performanceTraceSession)
  {
    objc_msgSend__updateState_(self, a2, 3);
    performanceTraceSession = self->_performanceTraceSession;

    MEMORY[0x2A1C70FE8](performanceTraceSession, sel_stopPerformanceTrace, v3);
  }
}

- (id)_passiveTraceConfig
{
  v7 = 0;
  v2 = objc_msgSend_sharedConfig_(MEMORY[0x29EDC60F8], a2, &v7);
  v3 = v7;
  v4 = v3;
  if (v3)
  {
    v5 = sub_29C9DE854(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29C9E0D04();
    }
  }

  return v2;
}

- (void)_startRecordingPowerMetricsPassiveTrace
{
  v3 = MEMORY[0x29EDC0C88];
  v4 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&dword_29C9DD000, v4, OS_LOG_TYPE_DEFAULT, "Starting power metrics passive trace", v29, 2u);
  }

  v7 = objc_msgSend__passiveTraceConfig(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    v11 = objc_msgSend_applySetting_(v7, v8, 1);
    if (v11)
    {
      v12 = *v3;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_29C9E0D6C(v12);
      }

      v14 = objc_msgSend__localizedString_(self, v13, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR");
      v17 = objc_msgSend_contentModuleContext(self, v15, v16);
      v19 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v18, v14, 0);
      objc_msgSend_enqueueStatusUpdate_(v17, v20, v19);

      objc_msgSend__updateState_(self, v21, 0);
    }

    else
    {
      objc_msgSend__updateState_(self, v10, 2);
    }
  }

  else
  {
    v11 = objc_msgSend__localizedString_(self, v8, @"CONTROL_CENTER_STATUS_PERFORMANCE_TRACE_START_ERROR");
    v24 = objc_msgSend_contentModuleContext(self, v22, v23);
    v26 = objc_msgSend_statusUpdateWithMessage_type_(MEMORY[0x29EDC0CF0], v25, v11, 0);
    objc_msgSend_enqueueStatusUpdate_(v24, v27, v26);

    objc_msgSend__updateState_(self, v28, 0);
  }
}

- (void)_stopRecordingPowerMetricsPassiveTrace
{
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Stopping power metrics passive trace", buf, 2u);
  }

  objc_msgSend__updateState_(self, v4, 4);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9DFCF4;
  block[3] = &unk_29F33DD28;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_collectPassiveTrace
{
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_DEFAULT, "Preparing to collect passive trace", buf, 2u);
  }

  objc_msgSend__updateState_(self, v4, 4);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9E00FC;
  block[3] = &unk_29F33DD28;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_performanceTraceGlobalStateDidChange
{
  if (objc_msgSend_selectedTracePlanIsPassivePowerMetrics(self, a2, v2))
  {
    if (objc_msgSend_state(self, v4, v5) == 2)
    {
      v8 = objc_msgSend_globalSettingsAreLocked(MEMORY[0x29EDC6100], v6, v7);
      if ((v8 & 1) == 0)
      {
        v9 = sub_29C9DE854(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_29C9DD000, v9, OS_LOG_TYPE_DEFAULT, "Global locked state transitioned from locked to unlocked, so inferring that Power Profiler recording stopped.", v11, 2u);
        }

        objc_msgSend__updateState_(self, v10, 0);
      }
    }
  }
}

- (void)_updateState:(unint64_t)state
{
  v3 = *MEMORY[0x29EDC0C88];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C88], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29C9DD000, v3, OS_LOG_TYPE_INFO, "Updating state", buf, 2u);
  }

  BSDispatchMain();
}

@end