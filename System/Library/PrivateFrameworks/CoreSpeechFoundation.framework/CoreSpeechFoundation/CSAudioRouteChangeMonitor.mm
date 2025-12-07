@interface CSAudioRouteChangeMonitor
+ (id)sharedInstance;
- (BOOL)isHearstHijackable;
- (CSAudioRouteChangeMonitor)init;
- (void)_invalidateSystemStateMonitorIfNeeded;
- (void)_setupAudioAccessorySystemStateMonitoring;
- (void)_updateAndBroadcastHearstHijackability:(BOOL)hijackability forReason:(int64_t)reason;
- (void)dealloc;
- (void)routeIsDoAPSupportedWithRouteUID:(id)d withCompletion:(id)completion;
- (void)startMonitoringHearstHijackEligibility;
- (void)stopMonitoringHearstHijackEligibility;
@end

@implementation CSAudioRouteChangeMonitor

- (BOOL)isHearstHijackable
{
  v17 = *MEMORY[0x1E69E9840];
  if (+[CSUtils supportsHearstSmartRoutingImprovements])
  {
    v3 = +[CSFPreferences sharedPreferences];
    forceHearstHijackEligibility = [v3 forceHearstHijackEligibility];

    if (forceHearstHijackEligibility)
    {
      v5 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[CSAudioRouteChangeMonitor isHearstHijackable]";
        _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Forcing hearst hijack eligibility", &buf, 0xCu);
      }

      v6 = 1;
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v15 = 0x2020000000;
      v16 = 0;
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      queue = self->_queue;
      v13 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__CSAudioRouteChangeMonitor_isHearstHijackable__block_invoke;
      block[3] = &unk_1E865C080;
      block[4] = self;
      block[5] = &buf;
      block[6] = &v10;
      dispatch_sync(queue, block);
      v6 = 0;
      if (*(*(&buf + 1) + 24) == 1)
      {
        v6 = *(v11 + 24);
      }

      _Block_object_dispose(&v10, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *__47__CSAudioRouteChangeMonitor_isHearstHijackable__block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 41);
  *(*(result[6] + 8) + 24) = *(result[4] + 40);
  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11458 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_11458, &__block_literal_global_11459);
  }

  v3 = sharedInstance_sharedInstance_11460;

  return v3;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    v4 = kCSAudioRouteChangeMonitorQueueKey;
    if (dispatch_get_specific(kCSAudioRouteChangeMonitorQueueKey) == v4)
    {
      [(CSAudioRouteChangeMonitor *)self _invalidateSystemStateMonitorIfNeeded];
    }

    else
    {
      dispatch_assert_queue_not_V2(queue);
      v5 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__CSAudioRouteChangeMonitor_dealloc__block_invoke;
      block[3] = &unk_1E865CB68;
      block[4] = self;
      dispatch_sync(v5, block);
    }
  }

  v6.receiver = self;
  v6.super_class = CSAudioRouteChangeMonitor;
  [(CSEventMonitor *)&v6 dealloc];
}

- (void)_updateAndBroadcastHearstHijackability:(BOOL)hijackability forReason:(int64_t)reason
{
  hijackabilityCopy = hijackability;
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  isHearstHijackable = self->_isHearstHijackable;
  v8 = CSLogContextFacilityCoreSpeech;
  v9 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (isHearstHijackable == hijackabilityCopy)
  {
    if (v9)
    {
      v10 = v8;
      if ((reason - 1) > 5)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = off_1E865C178[reason - 1];
      }

      v14 = v11;
      v16 = 136315650;
      v17 = "[CSAudioRouteChangeMonitor _updateAndBroadcastHearstHijackability:forReason:]";
      v18 = 1024;
      v19 = hijackabilityCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Maintaining isHearstHijackable: %d forReason: %@", &v16, 0x1Cu);
    }
  }

  else
  {
    if (v9)
    {
      v12 = v8;
      if ((reason - 1) > 5)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_1E865C178[reason - 1];
      }

      v15 = v13;
      v16 = 136315650;
      v17 = "[CSAudioRouteChangeMonitor _updateAndBroadcastHearstHijackability:forReason:]";
      v18 = 1024;
      v19 = hijackabilityCopy;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Updating isHearstHijackable: %d forReason: %@", &v16, 0x1Cu);
    }

    self->_isHearstHijackable = hijackabilityCopy;
    [(CSAudioRouteChangeMonitor *)self hearstHijackEligibilityUpdated];
  }
}

- (void)_invalidateSystemStateMonitorIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSAudioRouteChangeMonitor _invalidateSystemStateMonitorIfNeeded]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Invalidating system state monitor", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  aaSystemStateMonitor = self->_aaSystemStateMonitor;
  if (aaSystemStateMonitor)
  {
    [(AASystemStateMonitor *)aaSystemStateMonitor setInterruptionHandler:0];
    [(AASystemStateMonitor *)self->_aaSystemStateMonitor setInvalidationHandler:0];
    [(AASystemStateMonitor *)self->_aaSystemStateMonitor setSiriHijackEligibilityUpdatedHandler:0];
    [(AASystemStateMonitor *)self->_aaSystemStateMonitor invalidate];
    v5 = self->_aaSystemStateMonitor;
    self->_aaSystemStateMonitor = 0;
  }
}

- (void)_setupAudioAccessorySystemStateMonitoring
{
  v32 = *MEMORY[0x1E69E9840];
  shouldMonitorHearstHijackability = self->_shouldMonitorHearstHijackability;
  v4 = CSLogContextFacilityCoreSpeech;
  v5 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (shouldMonitorHearstHijackability)
  {
    if (v5)
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CSAudioRouteChangeMonitor _setupAudioAccessorySystemStateMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Smart routing improvements enabled, setting up AASystemStateMonitor", &buf, 0xCu);
    }

    [(CSAudioRouteChangeMonitor *)self _invalidateSystemStateMonitorIfNeeded];
    [(CSAudioRouteChangeMonitor *)self _updateAndBroadcastHearstHijackability:0 forReason:6];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v6 = getAASystemStateMonitorClass_softClass;
    v27 = getAASystemStateMonitorClass_softClass;
    if (!getAASystemStateMonitorClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v29 = __getAASystemStateMonitorClass_block_invoke;
      v30 = &unk_1E865C120;
      v31 = &v24;
      __getAASystemStateMonitorClass_block_invoke(&buf);
      v6 = v25[3];
    }

    v7 = v6;
    _Block_object_dispose(&v24, 8);
    v8 = objc_alloc_init(v6);
    aaSystemStateMonitor = self->_aaSystemStateMonitor;
    self->_aaSystemStateMonitor = v8;

    [(AASystemStateMonitor *)self->_aaSystemStateMonitor setDispatchQueue:self->_queue];
    objc_initWeak(&buf, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke;
    v22[3] = &unk_1E865CA40;
    objc_copyWeak(&v23, &buf);
    v10 = MEMORY[0x1E12BA300](v22);
    v11 = self->_aaSystemStateMonitor;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke_2;
    v19[3] = &unk_1E865C0F8;
    objc_copyWeak(&v21, &buf);
    v12 = v10;
    v20 = v12;
    [(AASystemStateMonitor *)v11 activateWithCompletion:v19];
    v13 = self->_aaSystemStateMonitor;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke_13;
    v17[3] = &unk_1E865CA40;
    objc_copyWeak(&v18, &buf);
    [(AASystemStateMonitor *)v13 setInterruptionHandler:v17];
    v14 = self->_aaSystemStateMonitor;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke_2_14;
    v15[3] = &unk_1E865CA40;
    objc_copyWeak(&v16, &buf);
    [(AASystemStateMonitor *)v14 setInvalidationHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&buf);
  }

  else if (v5)
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSAudioRouteChangeMonitor _setupAudioAccessorySystemStateMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s shouldMonitorHearstHijackability: NO, skipping AASystemStateMonitor setup", &buf, 0xCu);
  }
}

void __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAndBroadcastHearstHijackability:objc_msgSend(WeakRetained[4] forReason:{"isSystemEligibleForSiriHijack"), 1}];
    WeakRetained = v2;
  }
}

void __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CSLogContextFacilityCoreSpeech;
  if (v3)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[CSAudioRouteChangeMonitor _setupAudioAccessorySystemStateMonitoring]_block_invoke_2";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s Failed to activate AASystemStateMonitor: %@", &v8, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[CSAudioRouteChangeMonitor _setupAudioAccessorySystemStateMonitoring]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s AASystemStateMonitoring activated successfully", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[4] setSiriHijackEligibilityUpdatedHandler:*(a1 + 32)];
      [v6 _updateAndBroadcastHearstHijackability:objc_msgSend(v6[4] forReason:{"isSystemEligibleForSiriHijack"), 2}];
      v7 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[CSAudioRouteChangeMonitor _setupAudioAccessorySystemStateMonitoring]_block_invoke";
        _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Started hearst hijackability monitoring", &v8, 0xCu);
      }
    }
  }
}

void __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAndBroadcastHearstHijackability:0 forReason:4];
    WeakRetained = v2;
  }
}

void __70__CSAudioRouteChangeMonitor__setupAudioAccessorySystemStateMonitoring__block_invoke_2_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAndBroadcastHearstHijackability:0 forReason:3];
    WeakRetained = v2;
  }
}

- (void)routeIsDoAPSupportedWithRouteUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [d componentsSeparatedByString:@"-"];
  firstObject = [v6 firstObject];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CSAudioRouteChangeMonitor_routeIsDoAPSupportedWithRouteUID_withCompletion___block_invoke;
  v14[3] = &unk_1E865C0A8;
  v8 = completionCopy;
  v15 = v8;
  v9 = MEMORY[0x1E12BA300](v14);
  v10 = v9;
  if (firstObject)
  {
    v11 = +[CSBluetoothManager sharedInstance];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__CSAudioRouteChangeMonitor_routeIsDoAPSupportedWithRouteUID_withCompletion___block_invoke_2;
    v12[3] = &unk_1E865C0D0;
    v13 = v10;
    [v11 getBTDeviceInfoWithBTAddressString:firstObject withCompletion:v12];
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }
}

uint64_t __77__CSAudioRouteChangeMonitor_routeIsDoAPSupportedWithRouteUID_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __77__CSAudioRouteChangeMonitor_routeIsDoAPSupportedWithRouteUID_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 supportDoAP];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)stopMonitoringHearstHijackEligibility
{
  if (+[CSUtils supportsHearstSmartRoutingImprovements])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__CSAudioRouteChangeMonitor_stopMonitoringHearstHijackEligibility__block_invoke;
    v4[3] = &unk_1E865CA40;
    objc_copyWeak(&v5, &location);
    dispatch_async(queue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __66__CSAudioRouteChangeMonitor_stopMonitoringHearstHijackEligibility__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[41] == 1)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSAudioRouteChangeMonitor stopMonitoringHearstHijackEligibility]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s The device is NOT connected to a pair of non-routed DoAP headphones, stopping hijack eligibility monitoring", &v4, 0xCu);
    }

    v2[41] = 0;
    [v2 _invalidateSystemStateMonitorIfNeeded];
    [v2 _updateAndBroadcastHearstHijackability:0 forReason:5];
  }
}

- (void)startMonitoringHearstHijackEligibility
{
  if (+[CSUtils supportsHearstSmartRoutingImprovements])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __67__CSAudioRouteChangeMonitor_startMonitoringHearstHijackEligibility__block_invoke;
    v4[3] = &unk_1E865CA40;
    objc_copyWeak(&v5, &location);
    dispatch_async(queue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __67__CSAudioRouteChangeMonitor_startMonitoringHearstHijackEligibility__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[41] & 1) == 0)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSAudioRouteChangeMonitor startMonitoringHearstHijackEligibility]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s The device is connected to a pair of non-routed DoAP headphones, starting hijack eligibility monitoring", &v4, 0xCu);
    }

    v2[41] = 1;
    [v2 _setupAudioAccessorySystemStateMonitoring];
  }
}

- (CSAudioRouteChangeMonitor)init
{
  v12.receiver = self;
  v12.super_class = CSAudioRouteChangeMonitor;
  v2 = [(CSEventMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAudioRouteChangeMonitor queue", 0);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    dispatch_queue_set_specific(*(v2 + 3), kCSAudioRouteChangeMonitorQueueKey, kCSAudioRouteChangeMonitorQueueKey, 0);
    v5 = +[CSFPreferences sharedPreferences];
    if ([v5 forceHearstHijackEligibility])
    {
    }

    else
    {
      v6 = +[CSUtils supportsHearstSmartRoutingImprovements];

      if (v6)
      {
        objc_initWeak(&location, v2);
        v7 = *(v2 + 3);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __33__CSAudioRouteChangeMonitor_init__block_invoke;
        v9[3] = &unk_1E865C058;
        objc_copyWeak(&v10, &location);
        notify_register_dispatch("com.apple.AudioAccessory.daemonStarted", &kAudioAccessoryToken, v7, v9);
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }

  return v2;
}

void __33__CSAudioRouteChangeMonitor_init__block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSAudioRouteChangeMonitor init]_block_invoke";
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s AudioAccessory daemon started, token: %d", &v7, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setupAudioAccessorySystemStateMonitoring];
  }
}

uint64_t __43__CSAudioRouteChangeMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAudioRouteChangeMonitorImpl);
  v1 = sharedInstance_sharedInstance_11460;
  sharedInstance_sharedInstance_11460 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end