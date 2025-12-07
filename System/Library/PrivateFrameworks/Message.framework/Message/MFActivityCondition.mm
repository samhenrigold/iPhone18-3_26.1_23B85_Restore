@interface MFActivityCondition
+ (MFActivityCondition)alwaysSatisfiedCondition;
- (BOOL)_isValidConfiguration;
- (BOOL)isSatisfied;
- (EFObservable)conditionsObservable;
- (MFActivityCondition)initWithBuilder:(id)builder;
- (void)dealloc;
@end

@implementation MFActivityCondition

+ (MFActivityCondition)alwaysSatisfiedCondition
{
  v2 = objc_alloc_init(_MFSatisfiedActivityCondition);

  return v2;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancellationToken cancel];
  v3.receiver = self;
  v3.super_class = MFActivityCondition;
  [(MFActivityCondition *)&v3 dealloc];
}

- (MFActivityCondition)initWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFActivityCondition.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v20.receiver = self;
  v20.super_class = MFActivityCondition;
  v6 = [(MFActivityCondition *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v6->_requireLowPowerModeDisabled = 1;
    v6->_maxThermalPressureLevel = 3;
    builderCopy[2](builderCopy, v6);
    if ([(MFActivityCondition *)v7 _isValidConfiguration])
    {
      v8 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.mail.MFActivityCondition" qualityOfService:17];
      scheduler = v7->_scheduler;
      v7->_scheduler = v8;

      v10 = objc_alloc_init(MEMORY[0x1E699B7F8]);
      cancellationToken = v7->_cancellationToken;
      v7->_cancellationToken = v10;

      objc_initWeak(&location, v7);
      v12 = v7->_cancellationToken;
      conditionsObservable = [(MFActivityCondition *)v7 conditionsObservable];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __39__MFActivityCondition_initWithBuilder___block_invoke;
      v17[3] = &unk_1E7AA4AF0;
      objc_copyWeak(&v18, &location);
      v14 = [conditionsObservable subscribeWithResultBlock:v17];
      [(EFManualCancelationToken *)v12 addCancelable:v14];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

void __39__MFActivityCondition_initWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSatisfied:{objc_msgSend(v4, "BOOLValue")}];
}

- (BOOL)isSatisfied
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  scheduler = [(MFActivityCondition *)self scheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MFActivityCondition_isSatisfied__block_invoke;
  v5[3] = &unk_1E7AA4B18;
  v5[4] = self;
  v5[5] = &v6;
  [scheduler performSyncBlock:v5];

  LOBYTE(scheduler) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return scheduler;
}

- (EFObservable)conditionsObservable
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = +[MFPowerController sharedInstance];
  lowPowerModeObservable = [v3 lowPowerModeObservable];
  pluggedInObservable = [v3 pluggedInObservable];
  batteryLevelObservable = [v3 batteryLevelObservable];
  v5 = +[MFNetworkController sharedInstance];
  wifiObservable = [v5 wifiObservable];

  v7 = +[MFLockStateMonitor sharedInstance];
  lockStateObservable = [v7 lockStateObservable];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  mf_thermalStateObservable = [processInfo mf_thermalStateObservable];

  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E699B830];
  v24[0] = lowPowerModeObservable;
  v24[1] = lockStateObservable;
  v24[2] = wifiObservable;
  v24[3] = pluggedInObservable;
  v24[4] = mf_thermalStateObservable;
  v24[5] = batteryLevelObservable;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];
  v13 = [v11 combineLatest:v12];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __43__MFActivityCondition_conditionsObservable__block_invoke;
  v21[3] = &unk_1E7AA4B40;
  objc_copyWeak(&v22, &location);
  v14 = [v13 map:v21];

  distinctUntilChanged = [v14 distinctUntilChanged];
  v16 = [distinctUntilChanged doOnError:&__block_literal_global_78];
  v17 = [v16 observeOn:self->_scheduler];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v17;
}

uint64_t __43__MFActivityCondition_conditionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectAtIndexedSubscript:0];
  v6 = [v5 BOOLValue];

  v7 = [v3 objectAtIndexedSubscript:1];
  v8 = [v7 BOOLValue];

  v9 = [v3 objectAtIndexedSubscript:2];
  v10 = [v9 BOOLValue];

  v11 = [v3 objectAtIndexedSubscript:3];
  v12 = [v11 BOOLValue];

  v13 = [v3 objectAtIndexedSubscript:4];
  v14 = [v13 integerValue];

  v15 = [v3 objectAtIndexedSubscript:5];
  [v15 floatValue];
  v17 = v16;

  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67110400;
    v24[1] = v6;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v12;
    v31 = 2048;
    v32 = v14;
    v33 = 2048;
    v34 = v17;
    _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "lpm:%d locked:%d wifi:%d onpower:%d thermals:%lu battery:%.2f", v24, 0x2Eu);
  }

  if (v12 & 1 | (([WeakRetained requireExternalPower] & 1) == 0) && ((objc_msgSend(WeakRetained, "minBatteryLevel"), v19 <= 0.0) || (objc_msgSend(WeakRetained, "minBatteryLevel"), v17 >= v20)) && (objc_msgSend(WeakRetained, "requireLowPowerModeDisabled") & v6 & 1) == 0 && v10 & 1 | ((objc_msgSend(WeakRetained, "requireWiFi") & 1) == 0))
  {
    v21 = [WeakRetained requireScreenLocked];
    v22 = MEMORY[0x1E695E110];
    if (v8 & 1 | ((v21 & 1) == 0) && v14 <= [WeakRetained maxThermalPressureLevel])
    {
      v22 = MEMORY[0x1E695E118];
    }
  }

  else
  {
    v22 = MEMORY[0x1E695E110];
  }

  return v22;
}

void __43__MFActivityCondition_conditionsObservable__block_invoke_75(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 ef_publicDescription];
    __43__MFActivityCondition_conditionsObservable__block_invoke_75_cold_1(v4, v5, v3);
  }
}

- (BOOL)_isValidConfiguration
{
  v10 = *MEMORY[0x1E69E9840];
  [(MFActivityCondition *)self minBatteryLevel];
  if (v3 >= 0.0)
  {
    [(MFActivityCondition *)self minBatteryLevel];
    if (v4 <= 1.0)
    {
      return 1;
    }
  }

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [(MFActivityCondition *)self minBatteryLevel];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "invalid battery-level value (%f)", &v8, 0xCu);
  }

  return 0;
}

void __43__MFActivityCondition_conditionsObservable__block_invoke_75_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "error occurred while observing conditions: %{public}@", buf, 0xCu);
}

@end